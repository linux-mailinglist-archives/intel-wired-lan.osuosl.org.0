Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F8A7327D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 17:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4320E85F0F;
	Wed, 24 Jul 2019 15:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJhBG_7FU2Ez; Wed, 24 Jul 2019 15:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D64985EEF;
	Wed, 24 Jul 2019 15:11:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5F071BF357
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFAEF8683C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5lkJpQNoISLZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 13:26:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CB6E84977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 06:26:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="369295191"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.140])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jul 2019 06:26:35 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jakub.kicinski@netronome.com, jonathan.lemon@gmail.com,
 saeedm@mellanox.com, maximmi@mellanox.com, stephen@networkplumber.org
Date: Wed, 24 Jul 2019 05:10:40 +0000
Message-Id: <20190724051043.14348-9-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190724051043.14348-1-kevin.laatz@intel.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Wed, 24 Jul 2019 15:10:50 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v3 08/11] samples/bpf: add
 unaligned chunks mode support to xdpsock
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
Cc: bruce.richardson@intel.com, ciara.loftus@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Kevin Laatz <kevin.laatz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds support for the unaligned chunks mode. The addition of the
unaligned chunks option will allow users to run the application with more
relaxed chunk placement in the XDP umem.

Unaligned chunks mode can be used with the '-u' or '--unaligned' command
line options.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 samples/bpf/xdpsock_user.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index 93eaaf7239b2..26ba1a1fd582 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -67,6 +67,8 @@ static int opt_ifindex;
 static int opt_queue;
 static int opt_poll;
 static int opt_interval = 1;
+static u32 opt_umem_flags;
+static int opt_unaligned_chunks;
 static u32 opt_xdp_bind_flags;
 static int opt_xsk_frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
 static __u32 prog_id;
@@ -282,7 +284,9 @@ static struct xsk_umem_info *xsk_configure_umem(void *buffer, u64 size)
 		.comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS,
 		.frame_size = opt_xsk_frame_size,
 		.frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM,
+		.flags = opt_umem_flags
 	};
+
 	int ret;
 
 	umem = calloc(1, sizeof(*umem));
@@ -291,6 +295,7 @@ static struct xsk_umem_info *xsk_configure_umem(void *buffer, u64 size)
 
 	ret = xsk_umem__create(&umem->umem, buffer, size, &umem->fq, &umem->cq,
 			       &cfg);
+
 	if (ret)
 		exit_with_error(-ret);
 
@@ -352,6 +357,7 @@ static struct option long_options[] = {
 	{"zero-copy", no_argument, 0, 'z'},
 	{"copy", no_argument, 0, 'c'},
 	{"frame-size", required_argument, 0, 'f'},
+	{"unaligned", no_argument, 0, 'u'},
 	{0, 0, 0, 0}
 };
 
@@ -372,6 +378,7 @@ static void usage(const char *prog)
 		"  -z, --zero-copy      Force zero-copy mode.\n"
 		"  -c, --copy           Force copy mode.\n"
 		"  -f, --frame-size=n   Set the frame size (must be a power of two, default is %d).\n"
+		"  -u, --unaligned	Enable unaligned chunk placement\n"
 		"\n";
 	fprintf(stderr, str, prog, XSK_UMEM__DEFAULT_FRAME_SIZE);
 	exit(EXIT_FAILURE);
@@ -384,7 +391,7 @@ static void parse_command_line(int argc, char **argv)
 	opterr = 0;
 
 	for (;;) {
-		c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:", long_options,
+		c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:u", long_options,
 				&option_index);
 		if (c == -1)
 			break;
@@ -424,12 +431,17 @@ static void parse_command_line(int argc, char **argv)
 		case 'c':
 			opt_xdp_bind_flags |= XDP_COPY;
 			break;
+		case 'u':
+			opt_umem_flags |= XDP_UMEM_UNALIGNED_CHUNKS;
+			opt_unaligned_chunks = 1;
+			break;
 		case 'F':
 			opt_xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
 			break;
 		case 'f':
 			opt_xsk_frame_size = atoi(optarg);
 			break;
+
 		default:
 			usage(basename(argv[0]));
 		}
@@ -442,7 +454,8 @@ static void parse_command_line(int argc, char **argv)
 		usage(basename(argv[0]));
 	}
 
-	if (opt_xsk_frame_size & (opt_xsk_frame_size - 1)) {
+	if ((opt_xsk_frame_size & (opt_xsk_frame_size - 1)) &&
+			!opt_unaligned_chunks) {
 		fprintf(stderr, "--frame-size=%d is not a power of two\n",
 			opt_xsk_frame_size);
 		usage(basename(argv[0]));
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
