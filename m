Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2A3636645
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 17:57:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1757D81EDD;
	Wed, 23 Nov 2022 16:57:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1757D81EDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669222656;
	bh=dckxdAcSeXLqE5aFDPX2HipUVlwRqVGiIOWUDA1ZWac=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ps9I2xP9nkpixapFeYNMG5rQmwiWa+vTYsWfs21csKgwjh414GfnEmZMtU8MR7Bxp
	 PgZJ4B5NWa/DpLBrOFAMiJ/ylzfxDqjaz2bgJkT9efMS4BVvnWlLarV3A15xf6ubNN
	 elJnvkv7SMXotIls8R8eSTRMrvC/OriX2Wz2hzchpbQ4tR7b7ShpfRtTeOjGy0mRqY
	 xpFYRUAi3d+A8sZU7z0Mk6feOpq1LCzMwI1JTjIY5oom7EE6weiwa8L8DS8XGWEN2/
	 r8BzbTt0m2d0KjfHKx96xH08e1IQIBDza8bGgpQf8u2dGeEHbLoa5SZsQImC1xDhWX
	 fQIGNbG+UYdlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZ4x331XHyoM; Wed, 23 Nov 2022 16:57:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09BD681EDB;
	Wed, 23 Nov 2022 16:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09BD681EDB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B69371BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:57:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90A0C4032E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90A0C4032E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JEOzTgV9QPiB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 16:57:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C18C0401A0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C18C0401A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:57:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="378370105"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="378370105"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:57:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="730843694"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="730843694"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:57:28 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Nov 2022 08:56:27 -0800
Message-Id: <20221123165627.61263-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669222649; x=1700758649;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5Jqeh3krymPMOscfeinThCoE5SNdxqcdCi9eLsxThv4=;
 b=U/3jberdm/7TVKx4jPE3Bl5E+mWupB+U/OFVPjMjHeOsVHs4/tXLqlzu
 cvIX/VQ4u0tPNSsMd8DXpKJPF9U+EyOebQ66sWf6kT1/1JKUpFwLbM5WQ
 gqz5d3uG+R22M9cbNBFMDfbzDlbfLe1cPh61XQtkr/D1OTl5gSC91GgNW
 PzCUG4MAZgDg27Ewx89mLY83qSUqaRRMlvHorZuzPzdm7aZGyrkGyc0Vq
 zdm8q7cI465euxxVB9xVj2+dTRIrGSHcaLdCbe4fSnIP1buLlZdMrtxrM
 5gATHfVSsVEiy+RjnU3f4HGaE7ja4MGPd6McHXeEHsiFEANQFmo++uPji
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U/3jberd
Subject: [Intel-wired-lan] [PATCH net-next] ice: Remove cppcheck suppressions
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

The use of suppressions for cppcheck in the kernel does not look to be
standard as the ice driver is the only one doing it. Remove the
comments/suppressions.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 3 ---
 drivers/net/ethernet/intel/ice/ice_nvm.c       | 1 -
 drivers/net/ethernet/intel/ice/ice_sched.c     | 1 -
 drivers/net/ethernet/intel/ice/ice_txrx.c      | 3 ---
 4 files changed, 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index aa2c8ec5b7f4..140d80644b95 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -416,7 +416,6 @@ ice_boost_tcam_handler(u32 sect_type, void *section, u32 index, u32 *offset)
 	if (sect_type != ICE_SID_RXPARSER_BOOST_TCAM)
 		return NULL;
 
-	/* cppcheck-suppress nullPointer */
 	if (index > ICE_MAX_BST_TCAMS_IN_BUF)
 		return NULL;
 
@@ -487,7 +486,6 @@ ice_label_enum_handler(u32 __always_unused sect_type, void *section, u32 index,
 	if (!section)
 		return NULL;
 
-	/* cppcheck-suppress nullPointer */
 	if (index > ICE_MAX_LABELS_IN_BUF)
 		return NULL;
 
@@ -2957,7 +2955,6 @@ ice_match_prop_lst(struct list_head *list1, struct list_head *list2)
 		count++;
 	list_for_each_entry(tmp2, list2, list)
 		chk_count++;
-	/* cppcheck-suppress knownConditionTrueFalse */
 	if (!count || count != chk_count)
 		return false;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 928e0e9eca47..745f2459943f 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -662,7 +662,6 @@ ice_get_orom_civd_data(struct ice_hw *hw, enum ice_bank_select bank,
 
 		/* Verify that the simple checksum is zero */
 		for (i = 0; i < sizeof(*tmp); i++)
-			/* cppcheck-suppress objectIndex */
 			sum += ((u8 *)tmp)[i];
 
 		if (sum) {
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index f303e5b286bf..e5f0b02b1a3d 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1063,7 +1063,6 @@ ice_sched_add_nodes_to_layer(struct ice_port_info *pi,
 	*num_nodes_added = 0;
 	while (*num_nodes_added < num_nodes) {
 		u16 max_child_nodes, num_added = 0;
-		/* cppcheck-suppress unusedVariable */
 		u32 temp;
 
 		status = ice_sched_add_nodes_to_hw_layer(pi, tc_node, parent,
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 086f0b3ab68d..ccf09c957a1c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1996,7 +1996,6 @@ int ice_tso(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 	if (err < 0)
 		return err;
 
-	/* cppcheck-suppress unreadVariable */
 	protocol = vlan_get_protocol(skb);
 
 	if (eth_p_mpls(protocol))
@@ -2033,8 +2032,6 @@ int ice_tso(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 		}
 
 		/* reset pointers to inner headers */
-
-		/* cppcheck-suppress unreadVariable */
 		ip.hdr = skb_inner_network_header(skb);
 		l4.hdr = skb_inner_transport_header(skb);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
