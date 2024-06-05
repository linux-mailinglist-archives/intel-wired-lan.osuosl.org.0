Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B338FD099
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 16:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00E0E610FA;
	Wed,  5 Jun 2024 14:15:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cedwm0RACNV; Wed,  5 Jun 2024 14:15:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 470A6610FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717596957;
	bh=UWGILxHigLUFmKycJwtDRjY4irgf/oAJBi97/+KqI7g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4xnqeXUY9R1yuQGezqYw5vCXTL5I8Nftuvh6UCB2rWg0mI4BCtUkFxQH1vsFKvS86
	 OBr/dpiuT3YZd23YPF0ooxrM9GYmD1OcqBmkq52TFC1bINPIoY4FO0mNN9+qNqCGMx
	 l9yrbDVTzMZAWQkj2Ml6eN5reGn0HYqFiLOpGUXyDMGpzkTzZ6OUe+bIFKKzguUMW3
	 3vx4r8sVPiORp9Hv+DPdkEU3MdJEKlZ9BNzxq9w28n+mDjylNXeWmMXuVKT/iZHuCP
	 MkcK1WcfvUjwxHF9yExUK97/xIRijFexDbY3e+xmUG7+sJLYLsE/2JqzwXc72zmP2a
	 NCNJHb5z36X7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 470A6610FE;
	Wed,  5 Jun 2024 14:15:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C9CA1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 14:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6526C40B83
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 14:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2SJsFYVo5Evf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 14:15:54 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 080B540AF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 080B540AF9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 080B540AF9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 14:15:53 +0000 (UTC)
X-CSE-ConnectionGUID: LxqCkLmyRxiHjtvKAUFLYQ==
X-CSE-MsgGUID: uy4u1XQ2QSmqhnO0htE2fA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14052654"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14052654"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 07:15:53 -0700
X-CSE-ConnectionGUID: NdV6qpahS1yE7X3L5n8ZlQ==
X-CSE-MsgGUID: w6mSOVe0RnWzAhH1SkiS1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="38177138"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 05 Jun 2024 07:15:51 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CDB0F33BC3;
 Wed,  5 Jun 2024 15:15:49 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Jun 2024 16:17:45 +0200
Message-ID: <20240605141744.601582-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717596955; x=1749132955;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qNGcKSHzMUHaoXNNVdVj1QrqBWKJMJw+NEabirszjXc=;
 b=Qk20v7fTas3R2FednNJLXg1tsq6HULvCVmXlTnxaomMt1ANTNUM9Mcoe
 3despyuDJvNZ+oE5ioaCNLJ3IdnLyjH72KMOkP4ESwFz35kw0QFYGQTHx
 PO7pJm8Wxe5dKDBLWMYiCgLabY0zb7kMJ8ck3ALzD1lxUFQ6mCyF+eqz6
 cNUgShowPbVsBx1bTreewcsFGe1fhswWBqUyoHYQad7O2EoIcVQwOlMuL
 M3r/xVWtjjQ2465obQiPnwBHVtKoaOIfLGPWHLYfveak2KqAEkpoBmrvX
 1LqTrey8ajMw+VyCTPtk0qFzxw6NqlJVEC7qqA+etO1Hg+FRphtC9R6zZ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qk20v7fT
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VSI list rule with
 ICE_SW_LKUP_LAST type
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adding/updating VSI list rule, as well as allocating/freeing VSI list
resource are called several times with type ICE_SW_LKUP_LAST, which fails
because ice_update_vsi_list_rule() and ice_aq_alloc_free_vsi_list()
consider it invalid. Allow calling these functions with ICE_SW_LKUP_LAST.

This fixes at least one issue in switchdev mode, where the same rule with
different action cannot be added, e.g.:

  tc filter add dev $PF1 ingress protocol arp prio 0 flower skip_sw \
    dst_mac ff:ff:ff:ff:ff:ff action mirred egress redirect dev $VF1_PR
  tc filter add dev $PF1 ingress protocol arp prio 0 flower skip_sw \
    dst_mac ff:ff:ff:ff:ff:ff action mirred egress redirect dev $VF2_PR

Fixes: 0f94570d0cae ("ice: allow adding advanced rules")
Suggested-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 94d6670d0901..1191031b2a43 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1899,7 +1899,8 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 	    lkup_type == ICE_SW_LKUP_ETHERTYPE_MAC ||
 	    lkup_type == ICE_SW_LKUP_PROMISC ||
 	    lkup_type == ICE_SW_LKUP_PROMISC_VLAN ||
-	    lkup_type == ICE_SW_LKUP_DFLT) {
+	    lkup_type == ICE_SW_LKUP_DFLT ||
+	    lkup_type == ICE_SW_LKUP_LAST) {
 		sw_buf->res_type = cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_REP);
 	} else if (lkup_type == ICE_SW_LKUP_VLAN) {
 		if (opc == ice_aqc_opc_alloc_res)
@@ -2922,7 +2923,8 @@ ice_update_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
 	    lkup_type == ICE_SW_LKUP_ETHERTYPE_MAC ||
 	    lkup_type == ICE_SW_LKUP_PROMISC ||
 	    lkup_type == ICE_SW_LKUP_PROMISC_VLAN ||
-	    lkup_type == ICE_SW_LKUP_DFLT)
+	    lkup_type == ICE_SW_LKUP_DFLT ||
+	    lkup_type == ICE_SW_LKUP_LAST)
 		rule_type = remove ? ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR :
 			ICE_AQC_SW_RULES_T_VSI_LIST_SET;
 	else if (lkup_type == ICE_SW_LKUP_VLAN)
-- 
2.45.0

