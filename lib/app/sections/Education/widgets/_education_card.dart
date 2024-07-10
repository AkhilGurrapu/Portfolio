part of '../education.dart';

class _EducationCard extends StatefulWidget {
  final EducationUtils education;

  const _EducationCard({Key? key, required this.education}) : super(key: key);

  @override
  _EducationCardState createState() => _EducationCardState();
}

class _EducationCardState extends State<_EducationCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          onHover: (isHovering) {
            if (isHovering) {
              setState(() => isHover = true);
            } else {
              setState(() => isHover = false);
            }
          },
          child: Container(
            width: Responsive.isTablet(context) ? 800 : 1000,
            // height: AppDimensions.normalize(100),
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            decoration: BoxDecoration(
              // gradient: isHover ? pinkpurple : grayBack,
              gradient: isHover ? pinkpurple : theme.serviceCard,
              borderRadius: BorderRadius.circular(15),
              boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                Image.asset(
                  widget.education.icon,
                  height: 100,
                  // width: 500,
                  fit: BoxFit.contain,
                ),
                Space.y(1.w)!,
                Text(
                  widget.education.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isHover ? whiteColor : theme.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                Space.y(1.w)!,
                Text(widget.education.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isHover ? whiteColor : theme.textColor,
                      fontWeight: FontWeight.w600,
                    )),
                Space.y(1.w)!,
                Text(
                  widget.education.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isHover ? whiteColor.withOpacity(0.8) : theme.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                Space.y(2.w)!,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.education.tool
                      .map((e) => Row(
                            children: [
                              const Text('🛠   '),
                              Text(e,
                                  style: TextStyle(
                                    color:
                                        isHover ? whiteColor : theme.textColor,
                                  )),
                            ],
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
