import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';

/// Floating "Ask MicroX" pill (bottom right on the website).
class AskMicroxButton extends StatelessWidget {
  const AskMicroxButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: 'ask_microx',
      backgroundColor: const Color(0xFF1E1E1E),
      elevation: 2,
      shape: StadiumBorder(side: BorderSide(color: Colors.white.withOpacity(0.12))),
      icon: const Icon(Icons.auto_awesome_rounded, color: Colors.white, size: 18),
      label: Text('Ask MicroX', style: AppText.button(context)),
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        backgroundColor: AppColors.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) => const _AskSheet(),
      ),
    );
  }
}

class _AskSheet extends StatefulWidget {
  const _AskSheet();

  @override
  State<_AskSheet> createState() => _AskSheetState();
}

class _AskSheetState extends State<_AskSheet> {
  final TextEditingController _controller = TextEditingController();
  String? _error;
  bool _sent = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _send() {
    if (_controller.text.trim().isEmpty) {
      setState(() => _error = 'Please type your question first.');
      return;
    }
    setState(() {
      _error = null;
      _sent = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pad = Responsive.hPad(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        pad,
        Responsive.gap(context, 24),
        pad,
        MediaQuery.viewInsetsOf(context).bottom + Responsive.gap(context, 24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ask MicroX', style: AppText.h3(context)),
          SizedBox(height: Responsive.gap(context, 6)),
          Text(
            _sent
                ? 'Thanks! Our assistant is coming to the app soon. For now, tap "Let’s talk" to reach the team.'
                : 'Ask anything about our services or projects.',
            style: AppText.small(context),
          ),
          SizedBox(height: Responsive.gap(context, 16)),
          TextField(
            controller: _controller,
            minLines: 1,
            maxLines: 3,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Type your question',
              errorText: _error,
              filled: true,
              fillColor: AppColors.background,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.border),
              ),
            ),
          ),
          SizedBox(height: Responsive.gap(context, 12)),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              style: FilledButton.styleFrom(backgroundColor: AppColors.red),
              onPressed: _send,
              child: const Text('Send'),
            ),
          ),
        ],
      ),
    );
  }
}
