Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A28216A745
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 13:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52B598602D;
	Tue, 16 Jul 2019 11:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VAMhAqk98KTw; Tue, 16 Jul 2019 11:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A17386008;
	Tue, 16 Jul 2019 11:22:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C5D4E1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C31F385FF3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bdJ8Ir9k3MPg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 11:22:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F98385CA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:22:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 04:22:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="366631625"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.10])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jul 2019 04:22:08 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jakub.kicinski@netronome.com, jonathan.lemon@gmail.com
Date: Tue, 16 Jul 2019 03:06:36 +0000
Message-Id: <20190716030637.5634-10-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190716030637.5634-1-kevin.laatz@intel.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190716030637.5634-1-kevin.laatz@intel.com>
Subject: [Intel-wired-lan] [PATCH v2 09/10] samples/bpf: use hugepages in
 xdpsock app
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

This patch modifies xdpsock to use mmap instead of posix_memalign. With
this change, we can use hugepages when running the application in unaligned
chunks mode. Using hugepages makes it more likely that we have physically
contiguous memory, which supports the unaligned chunk mode better.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
---
 samples/bpf/xdpsock_user.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index 8f220afd549a..958a27193582 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -69,6 +69,7 @@ static int opt_poll;
 static int opt_interval = 1;
 static u32 opt_umem_flags;
 static int opt_unaligned_chunks;
+static int opt_mmap_flags;
 static u32 opt_xdp_bind_flags;
 static int opt_xsk_frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
 static __u32 prog_id;
@@ -434,6 +435,7 @@ static void parse_command_line(int argc, char **argv)
 		case 'u':
 			opt_umem_flags |= XDP_UMEM_UNALIGNED_CHUNKS;
 			opt_unaligned_chunks = 1;
+			opt_mmap_flags = MAP_HUGETLB;
 			break;
 		case 'F':
 			opt_xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
@@ -696,11 +698,14 @@ int main(int argc, char **argv)
 		exit(EXIT_FAILURE);
 	}
 
-	ret = posix_memalign(&bufs, getpagesize(), /* PAGE_SIZE aligned */
-			     NUM_FRAMES * opt_xsk_frame_size);
-	if (ret)
-		exit_with_error(ret);
-
+	/* Reserve memory for the umem. Use hugepages if unaligned chunk mode */
+	bufs = mmap(NULL, NUM_FRAMES * opt_xsk_frame_size,
+		    PROT_READ | PROT_WRITE,
+		    MAP_PRIVATE | MAP_ANONYMOUS | opt_mmap_flags, -1, 0);
+	if (bufs == MAP_FAILED) {
+		printf("ERROR: mmap failed\n");
+		exit(EXIT_FAILURE);
+	}
        /* Create sockets... */
 	umem = xsk_configure_umem(bufs, NUM_FRAMES * opt_xsk_frame_size);
 	xsks[num_socks++] = xsk_configure_socket(umem);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
