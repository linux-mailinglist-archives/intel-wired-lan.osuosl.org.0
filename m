Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5184DD80
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 66D81220DD;
	Thu, 20 Jun 2019 22:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GAscwUx0kS2G; Thu, 20 Jun 2019 22:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4BF7B22098;
	Thu, 20 Jun 2019 22:52:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90DE41BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D56220389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MH7Wc691tpe9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 16:54:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id B143521FA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:54:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="183135189"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 09:54:06 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 08:39:23 +0000
Message-Id: <20190620083924.1996-11-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620083924.1996-1-kevin.laatz@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 10/11] samples/bpf: use hugepages in
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
 Kevin Laatz <kevin.laatz@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.com
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
 samples/bpf/xdpsock_user.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index 7b4ce047deb2..8ed63ad68428 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -74,6 +74,7 @@ static int opt_interval = 1;
 static u64 opt_buffer_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
 static u32 opt_umem_flags;
 static int opt_unaligned_chunks;
+static int opt_mmap_flags;
 static u32 opt_xdp_bind_flags;
 static __u32 prog_id;
 
@@ -438,6 +439,7 @@ static void parse_command_line(int argc, char **argv)
 		case 'u':
 			opt_umem_flags |= XDP_UMEM_UNALIGNED_CHUNKS;
 			opt_unaligned_chunks = 1;
+			opt_mmap_flags = MAP_HUGETLB;
 			break;
 		case 'b':
 			opt_buffer_size = atoi(optarg);
@@ -707,11 +709,13 @@ int main(int argc, char **argv)
 		exit(EXIT_FAILURE);
 	}
 
-	ret = posix_memalign(&bufs, getpagesize(), /* PAGE_SIZE aligned */
-			     NUM_FRAMES * opt_buffer_size);
-	if (ret)
-		exit_with_error(ret);
-
+	/* Reserve memory for the umem. Use hugepages if unaligned chunk mode */
+	bufs = mmap(NULL, NUM_FRAMES * opt_buffer_size, PROT_READ|PROT_WRITE,
+			MAP_PRIVATE|MAP_ANONYMOUS|opt_mmap_flags, -1, 0);
+	if (bufs == MAP_FAILED) {
+		printf("ERROR: mmap failed\n");
+		exit(EXIT_FAILURE);
+	}
        /* Create sockets... */
 	umem = xsk_configure_umem(bufs,
 				  NUM_FRAMES * opt_buffer_size);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
