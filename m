Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EFE349E17
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4934760BA0;
	Fri, 26 Mar 2021 00:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id elap69KhOBPH; Fri, 26 Mar 2021 00:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20C1B60B82;
	Fri, 26 Mar 2021 00:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 789851C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D593860B9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UVE40n8CqDPA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E4FF6001B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
IronPort-SDR: m4oPShV1fNI3ld3SRTgBhSAtuGAhhUnHy3lTMxoiBTvw0w7Kj5avxTqydb8IyMEC8XVMEyaBy8
 OD9D7ndvunNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762084"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762084"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:44 -0700
IronPort-SDR: wQl1BQHFUUUfvYuwiqUrifpZ5C1OVk490iv5slPl0WNFdwRUHnL7MEMQ6sAO5shzfXs7PPOIg5
 Ft3Qf0vNGU1g==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276267"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:32 -0700
Message-Id: <20210326003834.3886241-10-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 09/11] igbvf: convert to
 strongly typed descriptors
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

The igbvf driver for some reason never strongly typed it's descriptor
formats. Make this driver like the rest of the Intel drivers and use
__le* for our little endian descriptors.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Warning Detail
.../igbvf/netdev.c:203:48: warning: incorrect type in assignment (different base types)
.../igbvf/netdev.c:203:48:    expected unsigned long long [usertype] pkt_addr
.../igbvf/netdev.c:203:48:    got restricted __le64 [usertype]
.../igbvf/netdev.c:205:48: warning: incorrect type in assignment (different base types)
.../igbvf/netdev.c:205:48:    expected unsigned long long [usertype] hdr_addr
.../igbvf/netdev.c:205:48:    got restricted __le64 [usertype]
.../igbvf/netdev.c:207:48: warning: incorrect type in assignment (different base types)
.../igbvf/netdev.c:207:48:    expected unsigned long long [usertype] pkt_addr
.../igbvf/netdev.c:207:48:    got restricted __le64 [usertype]
.../igbvf/netdev.c:261:19: warning: cast to restricted __le32
.../igbvf/netdev.c:276:25: warning: cast to restricted __le16
.../igbvf/netdev.c:282:26: warning: cast to restricted __le16
.../igbvf/netdev.c:356:52: warning: incorrect type in argument 5 (different base types)
.../igbvf/netdev.c:356:52:    expected restricted __le16 [usertype] vlan
.../igbvf/netdev.c:356:52:    got unsigned short [usertype] vlan
.../igbvf/netdev.c:371:27: warning: cast to restricted __le32
.../igbvf/netdev.c:797:45: warning: restricted __le32 degrades to integer
.../igbvf/netdev.c:1992:41: warning: incorrect type in assignment (different base types)
.../igbvf/netdev.c:1992:41:    expected unsigned int [usertype] vlan_macip_lens
.../igbvf/netdev.c:1992:41:    got restricted __le32 [usertype]
.../igbvf/netdev.c:1994:41: warning: incorrect type in assignment (different base types)
.../igbvf/netdev.c:1994:41:    expected unsigned int [usertype] type_tucmd_mlhl
.../igbvf/netdev.c:1994:41:    got restricted __le32 [usertype]
.../igbvf/netdev.c:1995:41: warning: incorrect type in assignment (different base types)
.../igbvf/netdev.c:1995:41:    expected unsigned int [usertype] mss_l4len_idx
.../igbvf/netdev.c:1995:41:    got restricted __le32 [usertype]
---
 drivers/net/ethernet/intel/igbvf/vf.h | 42 +++++++++++++--------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/vf.h b/drivers/net/ethernet/intel/igbvf/vf.h
index c71b0d7dbcee..ba9bb3132d5d 100644
--- a/drivers/net/ethernet/intel/igbvf/vf.h
+++ b/drivers/net/ethernet/intel/igbvf/vf.h
@@ -35,31 +35,31 @@ struct e1000_hw;
 /* Receive Descriptor - Advanced */
 union e1000_adv_rx_desc {
 	struct {
-		u64 pkt_addr; /* Packet buffer address */
-		u64 hdr_addr; /* Header buffer address */
+		__le64 pkt_addr; /* Packet buffer address */
+		__le64 hdr_addr; /* Header buffer address */
 	} read;
 	struct {
 		struct {
 			union {
-				u32 data;
+				__le32 data;
 				struct {
-					u16 pkt_info; /* RSS/Packet type */
+					__le16 pkt_info; /* RSS/Packet type */
 					/* Split Header, hdr buffer length */
-					u16 hdr_info;
+					__le16 hdr_info;
 				} hs_rss;
 			} lo_dword;
 			union {
-				u32 rss; /* RSS Hash */
+				__le32 rss; /* RSS Hash */
 				struct {
-					u16 ip_id; /* IP id */
-					u16 csum;  /* Packet Checksum */
+					__le16 ip_id; /* IP id */
+					__le16 csum;  /* Packet Checksum */
 				} csum_ip;
 			} hi_dword;
 		} lower;
 		struct {
-			u32 status_error; /* ext status/error */
-			u16 length; /* Packet length */
-			u16 vlan;   /* VLAN tag */
+			__le32 status_error; /* ext status/error */
+			__le16 length; /* Packet length */
+			__le16 vlan; /* VLAN tag */
 		} upper;
 	} wb;  /* writeback */
 };
@@ -70,14 +70,14 @@ union e1000_adv_rx_desc {
 /* Transmit Descriptor - Advanced */
 union e1000_adv_tx_desc {
 	struct {
-		u64 buffer_addr; /* Address of descriptor's data buf */
-		u32 cmd_type_len;
-		u32 olinfo_status;
+		__le64 buffer_addr; /* Address of descriptor's data buf */
+		__le32 cmd_type_len;
+		__le32 olinfo_status;
 	} read;
 	struct {
-		u64 rsvd; /* Reserved */
-		u32 nxtseq_seed;
-		u32 status;
+		__le64 rsvd; /* Reserved */
+		__le32 nxtseq_seed;
+		__le32 status;
 	} wb;
 };
 
@@ -94,10 +94,10 @@ union e1000_adv_tx_desc {
 
 /* Context descriptors */
 struct e1000_adv_tx_context_desc {
-	u32 vlan_macip_lens;
-	u32 seqnum_seed;
-	u32 type_tucmd_mlhl;
-	u32 mss_l4len_idx;
+	__le32 vlan_macip_lens;
+	__le32 seqnum_seed;
+	__le32 type_tucmd_mlhl;
+	__le32 mss_l4len_idx;
 };
 
 #define E1000_ADVTXD_MACLEN_SHIFT	9  /* Adv ctxt desc mac len shift */
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
