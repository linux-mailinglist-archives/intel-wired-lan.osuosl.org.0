Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C06A78E347
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 05:46:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7743786969;
	Thu, 15 Aug 2019 03:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxdpG3aKrM75; Thu, 15 Aug 2019 03:46:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7CCAE86932;
	Thu, 15 Aug 2019 03:46:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E9731BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 29619203F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8itxSy0cK7M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 03:46:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 14AAE20483
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 20:46:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,387,1559545200"; d="scan'208";a="352124063"
Received: from arch-p28.jf.intel.com ([10.166.187.31])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 20:46:23 -0700
From: Sridhar Samudrala <sridhar.samudrala@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, sridhar.samudrala@intel.com,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
Date: Wed, 14 Aug 2019 20:46:23 -0700
Message-Id: <1565840783-8269-6-git-send-email-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
Subject: [Intel-wired-lan] [PATCH bpf-next 5/5] xdpsock_user: Add skip_bpf
 option
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

Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 samples/bpf/xdpsock_user.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index 93eaaf7239b2..509fc6a18af9 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -123,6 +123,9 @@ static void print_benchmark(bool running)
 	if (opt_poll)
 		printf("poll() ");
 
+	if (opt_xdp_bind_flags & XDP_SKIP_BPF)
+		printf("skip-bpf ");
+
 	if (running) {
 		printf("running...");
 		fflush(stdout);
@@ -352,6 +355,7 @@ static struct option long_options[] = {
 	{"zero-copy", no_argument, 0, 'z'},
 	{"copy", no_argument, 0, 'c'},
 	{"frame-size", required_argument, 0, 'f'},
+	{"skip-bpf", no_argument, 0, 's'},
 	{0, 0, 0, 0}
 };
 
@@ -372,6 +376,7 @@ static void usage(const char *prog)
 		"  -z, --zero-copy      Force zero-copy mode.\n"
 		"  -c, --copy           Force copy mode.\n"
 		"  -f, --frame-size=n   Set the frame size (must be a power of two, default is %d).\n"
+		"  -s, --skip-bpf       Skip running bpf program.\n"
 		"\n";
 	fprintf(stderr, str, prog, XSK_UMEM__DEFAULT_FRAME_SIZE);
 	exit(EXIT_FAILURE);
@@ -430,6 +435,9 @@ static void parse_command_line(int argc, char **argv)
 		case 'f':
 			opt_xsk_frame_size = atoi(optarg);
 			break;
+		case 's':
+			opt_xdp_bind_flags |= XDP_SKIP_BPF;
+			break;
 		default:
 			usage(basename(argv[0]));
 		}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
