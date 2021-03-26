Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB70349E16
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AE9840208;
	Fri, 26 Mar 2021 00:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ku7Zb-U3Bfvo; Fri, 26 Mar 2021 00:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7148440204;
	Fri, 26 Mar 2021 00:39:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2411C119B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C5A384B75
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V5rQDdRLogPD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0595684B76
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
IronPort-SDR: 9aaoUWuRSNOfmYQDqSF461q1olV+9P+LBbSv/PjUYozHmXhA+uwRSq1J2w7rw7MkQKXj/4v9rJ
 hF4WjIAltRiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762083"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762083"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:44 -0700
IronPort-SDR: sQvKLpJKpxhIENc/aHuXwTnhzbmZOVqRDG8DlHQVtzUmYw+dSESSs28rZi4J1s6EzKz6X56ZEl
 /eYjdH6ChZPw==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276263"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:31 -0700
Message-Id: <20210326003834.3886241-9-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 08/11] intel: call csum
 functions with well formatted arguments
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The sparse build (C=2) found that there were two drivers
who had not been convered to call the csum_replace_by_diff() function
with sparse clean arguments.  Most if not all drivers force the cast
like this patch does. So these drivers are now joining the party
(a bit late), but with no functional change.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Warning Detail:
.../igbvf/netdev.c:2059:46: warning: incorrect type in argument 2 (different base types)
.../igbvf/netdev.c:2059:46:    expected restricted __wsum [usertype] diff
.../igbvf/netdev.c:2059:46:    got restricted __be32 [usertype]
.../ixgbevf/ixgbevf_main.c:3817:46: warning: incorrect type in argument 2 (different base types)
.../ixgbevf/ixgbevf_main.c:3817:46:    expected restricted __wsum [usertype] diff
.../ixgbevf/ixgbevf_main.c:3817:46:    got restricted __be32 [usertype]
---
 drivers/net/ethernet/intel/igbvf/netdev.c         | 2 +-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 630c1155f196..1bbe9862a758 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2056,7 +2056,7 @@ static int igbvf_tso(struct igbvf_ring *tx_ring,
 
 	/* remove payload length from inner checksum */
 	paylen = skb->len - l4_offset;
-	csum_replace_by_diff(&l4.tcp->check, htonl(paylen));
+	csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
 
 	/* MSS L4LEN IDX */
 	mss_l4len_idx = (*hdr_len - l4_offset) << E1000_ADVTXD_L4LEN_SHIFT;
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index ba2ed8a43d2d..588c3aa50d94 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -3814,7 +3814,7 @@ static int ixgbevf_tso(struct ixgbevf_ring *tx_ring,
 
 	/* remove payload length from inner checksum */
 	paylen = skb->len - l4_offset;
-	csum_replace_by_diff(&l4.tcp->check, htonl(paylen));
+	csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
 
 	/* update gso size and bytecount with header size */
 	first->gso_segs = skb_shinfo(skb)->gso_segs;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
