Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63EECF2A4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 08:17:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E25787E68;
	Tue,  8 Oct 2019 06:17:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TblaSutMYmJ; Tue,  8 Oct 2019 06:17:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55C9287E63;
	Tue,  8 Oct 2019 06:17:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97D0D1BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 06:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8ED1F22268
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 06:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EBjM48-mb4hD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 06:16:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 13B2F22270
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 06:16:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 23:16:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="187206757"
Received: from arch-p28.jf.intel.com ([10.166.187.31])
 by orsmga008.jf.intel.com with ESMTP; 07 Oct 2019 23:16:55 -0700
From: Sridhar Samudrala <sridhar.samudrala@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, sridhar.samudrala@intel.com,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
Date: Mon,  7 Oct 2019 23:16:55 -0700
Message-Id: <1570515415-45593-5-git-send-email-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
Subject: [Intel-wired-lan] [PATCH bpf-next 4/4] xdpsock: add an option to
 create AF_XDP sockets in XDP_DIRECT mode
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This option enables an AF_XDP socket to bind with a XDP_DIRECT flag
that allows packets received on the associated queue to be received
directly when an XDP program is not attached.

Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 samples/bpf/xdpsock_user.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index 405c4e091f8b..6f4633769968 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -129,6 +129,9 @@ static void print_benchmark(bool running)
 	if (opt_poll)
 		printf("poll() ");
 
+	if (opt_xdp_bind_flags & XDP_DIRECT)
+		printf("direct-xsk ");
+
 	if (running) {
 		printf("running...");
 		fflush(stdout);
@@ -202,7 +205,8 @@ static void int_exit(int sig)
 	dump_stats();
 	xsk_socket__delete(xsks[0]->xsk);
 	(void)xsk_umem__delete(umem);
-	remove_xdp_program();
+	if (!(opt_xdp_bind_flags & XDP_DIRECT))
+		remove_xdp_program();
 
 	exit(EXIT_SUCCESS);
 }
@@ -213,7 +217,8 @@ static void __exit_with_error(int error, const char *file, const char *func,
 	fprintf(stderr, "%s:%s:%i: errno: %d/\"%s\"\n", file, func,
 		line, error, strerror(error));
 	dump_stats();
-	remove_xdp_program();
+	if (!(opt_xdp_bind_flags & XDP_DIRECT))
+		remove_xdp_program();
 	exit(EXIT_FAILURE);
 }
 
@@ -363,6 +368,7 @@ static struct option long_options[] = {
 	{"frame-size", required_argument, 0, 'f'},
 	{"no-need-wakeup", no_argument, 0, 'm'},
 	{"unaligned", no_argument, 0, 'u'},
+	{"direct-xsk", no_argument, 0, 'd'},
 	{0, 0, 0, 0}
 };
 
@@ -386,6 +392,7 @@ static void usage(const char *prog)
 		"  -m, --no-need-wakeup Turn off use of driver need wakeup flag.\n"
 		"  -f, --frame-size=n   Set the frame size (must be a power of two in aligned mode, default is %d).\n"
 		"  -u, --unaligned	Enable unaligned chunk placement\n"
+		"  -d, --direct-xsk	Direct packets to XDP socket.\n"
 		"\n";
 	fprintf(stderr, str, prog, XSK_UMEM__DEFAULT_FRAME_SIZE);
 	exit(EXIT_FAILURE);
@@ -398,7 +405,7 @@ static void parse_command_line(int argc, char **argv)
 	opterr = 0;
 
 	for (;;) {
-		c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:mu",
+		c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:mud",
 				long_options, &option_index);
 		if (c == -1)
 			break;
@@ -452,7 +459,9 @@ static void parse_command_line(int argc, char **argv)
 			opt_need_wakeup = false;
 			opt_xdp_bind_flags &= ~XDP_USE_NEED_WAKEUP;
 			break;
-
+		case 'd':
+			opt_xdp_bind_flags |= XDP_DIRECT;
+			break;
 		default:
 			usage(basename(argv[0]));
 		}
-- 
2.14.5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
