Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA4CC83FF7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 09:35:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 058C94058B;
	Tue, 25 Nov 2025 08:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id huVt76aKENGh; Tue, 25 Nov 2025 08:35:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 713A240590
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764059705;
	bh=1uP1nlBVmh4QbxyvMw5IV7NBVWMu7XpvpTe1ut1dkPM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MtBFwAB1ryyUDDtnq68itLm0zBV2ZNNu5QWiIZzRZgtkXG/iWNJfGzhHAguRyGxSH
	 edLVRVM1TvywW7YNbKg7+3hzmLt6MblBuUWl5EjAULsQ/NX+qLdYX4oflXkPXi0UgG
	 kntEXKZgOm9x1e52shbx7tKq8KphOYxJ/E+YTmlUWw9QXV51PxvxLR+yCQcI8bAiR7
	 ybT14Arb+zkN8bYNnrSdGecqaSjShPtjcKLIDgQmxLpxv9fjpEHQzo3OIzv4grkNUu
	 +wpP9qhvkIDAYW0S7swtjYUM/bsCnMXmw3msrfQ/r03IXUNsf1S0fyb7/kWa3AfHgy
	 a8ZIqQnhUV+gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 713A240590;
	Tue, 25 Nov 2025 08:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 372B235C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29F874051A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dO9LItxlebaJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 08:35:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 34CBE40583
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34CBE40583
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34CBE40583
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:02 +0000 (UTC)
X-CSE-ConnectionGUID: 6X0EqS9URYaZwznPKF03oA==
X-CSE-MsgGUID: AAxCQOnuSIG4x5/fUYcSLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76694426"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="76694426"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:35:02 -0800
X-CSE-ConnectionGUID: Z6EnwLaTTHuXHK9utNrn6g==
X-CSE-MsgGUID: CANhbQb6SiGAIHx+HW7l3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="196749753"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa003.jf.intel.com with ESMTP; 25 Nov 2025 00:35:00 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 25 Nov 2025 09:34:49 +0100
Message-ID: <20251125083456.28822-2-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125083456.28822-1-jakub.slepecki@intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764059702; x=1795595702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r5EaSDWS/NmPpI6YZYT8Fc7qlBaoieqrFHyUugOu9/o=;
 b=iYJYVRXlHYOht90gx/Iz4OeZJznCe/oYcW6TyQYjh3a0dUWJ7zWdmqNw
 EYOq1+g1loRsfHeyRYevS06GpVR668P6B1DdNzugeuTrB6FdFOIBrAGgn
 MQnFG++ALCjIDOnDHpUp5MD9h7m9u3KpPyAAy3EyjGhqjQiHl5GeBaFaC
 +ztKIwBcZ5AQ/CDWlz3GTxzJa2pkTgeIntn3eE+kgs39xB+4tjUTmWM9g
 N97LBg2BwBDIE5u5Zz2bdoXU0Yyga1RnbtzARb78zccANwtm3+GT1Fmih
 XCuMEYd8NlAVFcZ8yJwYYEQ5Z4TZVlzaSiODXEvNwsK78PeUGdJcLYL6w
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iYJYVRXl
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/8] ice: in dvm,
 use outer VLAN in MAC, VLAN lookup
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In double VLAN mode (DVM), outer VLAN is located a word earlier in
the field vector compared to the single VLAN mode.  We already modify
ICE_SW_LKUP_VLAN to use it but ICE_SW_LKUP_MAC_VLAN was left untouched,
causing the lookup to match any packet with one or no layer of Dot1q.
This change enables to fix cross-vlan loopback traffic using MAC,VLAN
lookups.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
No changes in v2.
---
 drivers/net/ethernet/intel/ice/ice_vlan_mode.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
index fb526cb84776..68a7b05de44e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
+++ b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
@@ -198,6 +198,7 @@ static bool ice_is_dvm_supported(struct ice_hw *hw)
 #define ICE_SW_LKUP_VLAN_LOC_LKUP_IDX			1
 #define ICE_SW_LKUP_VLAN_PKT_FLAGS_LKUP_IDX		2
 #define ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX		2
+#define ICE_SW_LKUP_MAC_VLAN_LOC_LKUP_IDX		4
 #define ICE_PKT_FLAGS_0_TO_15_FV_IDX			1
 static struct ice_update_recipe_lkup_idx_params ice_dvm_dflt_recipes[] = {
 	{
@@ -234,6 +235,17 @@ static struct ice_update_recipe_lkup_idx_params ice_dvm_dflt_recipes[] = {
 		.mask_valid = false,  /* use pre-existing mask */
 		.lkup_idx = ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX,
 	},
+	{
+		/* Similarly to ICE_SW_LKUP_VLAN, change to outer/single VLAN in
+		 * DVM
+		 */
+		.rid = ICE_SW_LKUP_MAC_VLAN,
+		.fv_idx = ICE_EXTERNAL_VLAN_ID_FV_IDX,
+		.ignore_valid = true,
+		.mask = 0,
+		.mask_valid = false,
+		.lkup_idx = ICE_SW_LKUP_MAC_VLAN_LOC_LKUP_IDX,
+	},
 };
 
 /**
-- 
2.43.0

