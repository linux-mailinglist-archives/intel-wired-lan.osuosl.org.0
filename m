Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA284DD81
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 633A386D39;
	Thu, 20 Jun 2019 22:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g1a2H18PnBGe; Thu, 20 Jun 2019 22:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 957808697D;
	Thu, 20 Jun 2019 22:52:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3B761BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB11922026
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRfLp1y4-I8o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 16:54:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 164C620770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:54:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="183135173"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 09:54:01 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 08:39:21 +0000
Message-Id: <20190620083924.1996-9-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620083924.1996-1-kevin.laatz@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 08/11] samples/bpf: add unaligned chunks
 mode support to xdpsock
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
 Kevin Laatz <kevin.laatz@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.com
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
 samples/bpf/xdpsock_user.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index d08ee1ab7bb4..e26f43382d01 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -67,6 +67,8 @@ static int opt_ifindex;
 static int opt_queue;
 static int opt_poll;
 static int opt_interval = 1;
+static u32 opt_umem_flags;
+static int opt_unaligned_chunks;
 static u32 opt_xdp_bind_flags;
 static __u32 prog_id;
 
@@ -276,14 +278,21 @@ static size_t gen_eth_frame(struct xsk_umem_info *umem, u64 addr)
 static struct xsk_umem_info *xsk_configure_umem(void *buffer, u64 size)
 {
 	struct xsk_umem_info *umem;
+	struct xsk_umem_config umem_cfg;
 	int ret;
 
 	umem = calloc(1, sizeof(*umem));
 	if (!umem)
 		exit_with_error(errno);
 
+	umem_cfg.fill_size = XSK_RING_PROD__DEFAULT_NUM_DESCS;
+	umem_cfg.comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS;
+	umem_cfg.frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
+	umem_cfg.frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM;
+	umem_cfg.flags = opt_umem_flags;
+
 	ret = xsk_umem__create(&umem->umem, buffer, size, &umem->fq, &umem->cq,
-			       NULL);
+			       &umem_cfg);
 	if (ret)
 		exit_with_error(-ret);
 
@@ -346,6 +355,7 @@ static struct option long_options[] = {
 	{"interval", required_argument, 0, 'n'},
 	{"zero-copy", no_argument, 0, 'z'},
 	{"copy", no_argument, 0, 'c'},
+	{"unaligned", no_argument, 0, 'u'},
 	{0, 0, 0, 0}
 };
 
@@ -365,6 +375,7 @@ static void usage(const char *prog)
 		"  -n, --interval=n	Specify statistics update interval (default 1 sec).\n"
 		"  -z, --zero-copy      Force zero-copy mode.\n"
 		"  -c, --copy           Force copy mode.\n"
+		"  -u, --unaligned	Enable unaligned chunk placement\n"
 		"\n";
 	fprintf(stderr, str, prog);
 	exit(EXIT_FAILURE);
@@ -377,7 +388,7 @@ static void parse_command_line(int argc, char **argv)
 	opterr = 0;
 
 	for (;;) {
-		c = getopt_long(argc, argv, "Frtli:q:psSNn:cz", long_options,
+		c = getopt_long(argc, argv, "Frtli:q:psSNn:czu", long_options,
 				&option_index);
 		if (c == -1)
 			break;
@@ -417,9 +428,14 @@ static void parse_command_line(int argc, char **argv)
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
+
 		default:
 			usage(basename(argv[0]));
 		}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
