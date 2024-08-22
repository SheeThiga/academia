import 'package:academia/exports/barrel.dart';
import 'package:get/get.dart';
import '../controllers/chirp_controller.dart';
import '../widgets/widgets.dart';

class PostViewPage extends StatefulWidget {
  const PostViewPage({
    super.key,
    required this.post,
  });
  final Post post;
  @override
  State<PostViewPage> createState() => _PostViewPageState();
}

class _PostViewPageState extends State<PostViewPage> {
  final controller = Get.find<ChirpController>();
  final userController = Get.find<UserController>();
  final TextEditingController replyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            title: Text("@${widget.post.user?.username ?? 'anon'}"),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                widget.post.title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          SliverVisibility(
            visible: widget.post.postAttachmentMedia.isNotEmpty,
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data = widget.post.postAttachmentMedia[index];
                    return CachedNetworkImage(
                      imageUrl: data.image ?? "",
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    );
                  },
                  itemCount: widget.post.postAttachmentMedia.length,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 12),
            sliver: SliverToBoxAdapter(
              child: Text(
                widget.post.content,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Row(
                    children: [
                      const Icon(
                        Ionicons.arrow_up_circle_outline,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        widget.post.upvotes.toString(),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 2),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Ionicons.arrow_down_circle_outline),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              child: const Text(
                "Swipe a comment to reply to it 😉",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            fillOverscroll: true,
            child: Stack(
              children: [
                FutureBuilder(
                    future: controller.fetchPostComments(widget.post),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState != ConnectionState.done) {
                        return const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(height: 12),
                            Text("Fetching awesome comments"),
                          ],
                        );
                      }
                      return snapshot.data!.fold((l) {
                        return Text(l);
                      }, (r) {
                        return ListView.separated(
                            itemBuilder: (context, index) {
                              final data = r[index];
                              return CommentWidget(comment: data);
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(),
                            itemCount: r.length);
                      });
                    }),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      controller: replyController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () async {
                            final result = await controller.postComment(
                              userController.user.value!.id!,
                              widget.post.id,
                              null,
                              replyController.text,
                            );
                            result.fold((l) {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: const Text("Error"),
                                        content: Text(l),
                                      ));
                            }, (r) {
                              setState(() {
                                replyController.clear();
                              });
                            });
                          },
                          icon: const Icon(Ionicons.send),
                        ),
                        hintText: "Send a reply",
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
