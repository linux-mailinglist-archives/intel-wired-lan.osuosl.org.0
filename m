Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B63A3205C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 08:57:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79A3040DBF;
	Wed, 12 Feb 2025 07:57:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zFWeIdXLh_Kt; Wed, 12 Feb 2025 07:57:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9237A40B3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739347061;
	bh=qd85eSnzc9Mhgj5TOS7eE760kty13iDafK8txKEgm5k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n0lcgjwLfsX1ojy5KvLMUyTRhVW2cRX/BvocHsA5DGejKj516AyoICj+WBfMwtyiH
	 jwjcLtxOPIwSABbyxpUlqaHCGx0ZvHJMGNVzjzY2MB/wenvpckteyKIQoKrV2ojbuW
	 DhprlmR3sJYvMkYrC7wu+sKQhzsVrsqkJiCM3rgm8VnUEk7wjgrWP/54r0ASmKYAlX
	 nxIBe5yrFBul7rlhRM2GeRA9rBZfjGym9B88CYsgja7Z1tmEryJLaPR01SrNHOjUKB
	 e2QS70Zs0cUFZjVdynzIu1sKm85wI99mbrcgLf+DXZg5z1ga2Yj4okZ0VD+PQGVgD6
	 kAvVGoq2DcQog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9237A40B3D;
	Wed, 12 Feb 2025 07:57:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C0CB6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6AFE560FFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8SVC9a8kXj8w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 07:57:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A189B60FFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A189B60FFE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A189B60FFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:57:37 +0000 (UTC)
X-CSE-ConnectionGUID: mqioNJDiQNeYEOIC4h/2Hg==
X-CSE-MsgGUID: /h74ovhNROG8rP9YhGqsvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50212358"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50212358"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:57:38 -0800
X-CSE-ConnectionGUID: N6yLGbAJQHWEIEEsfRd2yQ==
X-CSE-MsgGUID: aTB90o7JQmSDzVUk6C9R4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="112579853"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 11 Feb 2025 23:57:35 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com, horms@kernel.org
Date: Wed, 12 Feb 2025 08:57:24 +0100
Message-ID: <20250212075724.3352715-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250212075724.3352715-1-michal.swiatkowski@linux.intel.com>
References: <20250212075724.3352715-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347058; x=1770883058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nJCkytmPtDyYoEpk7Y2B0AQ4HJ0hsEDOqc+k3dFC+kY=;
 b=AlgVyh6KyYqojjbejsPi0DcRwW318twdctHspQUKpNALNWk4N42OAzkD
 9QZjU833hCPDD4hGfh27Gmd4X3jGFAGoU5PGFtRbIyiTVEZBkIQ/Iwwmi
 AVbYiSdsm74Q+qJN8yrqMKUxCGH54oGZD8t6StNKD6DV5vSyTtaLdbM4a
 OYoDkGK7g9IX+nBDPVCVlo1eEAnILkJ6Eon8lo7htieg735vnKI/hXIqQ
 BqmsEmEJzMV72whYnd+3oTcyNNeGK0rdbQoxVxu6Bt0c/Oe86VK60/ayC
 EdgO3DMNJDhDIttieSjZ2DEakLsLn5hmZZamk3LC1biumrmHPmyEqUSo8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AlgVyh6K
Subject: [Intel-wired-lan] [iwl-next v2 4/4] ixgbe: turn off MDD while
 modifying SRRCTL
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

From: Radoslaw Tyl <radoslawx.tyl@intel.com>

Modifying SRRCTL register can generate MDD event.

Turn MDD off during SRRCTL register write to prevent generating MDD.

Fix RCT in ixgbe_set_rx_drop_en().

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 22148e65e596..873b46d21042 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -4099,8 +4099,12 @@ void ixgbe_set_rx_drop_en(struct ixgbe_adapter *adapter)
 static void ixgbe_set_rx_drop_en(struct ixgbe_adapter *adapter)
 #endif
 {
-	int i;
 	bool pfc_en = adapter->dcb_cfg.pfc_mode_enable;
+	struct ixgbe_hw *hw = &adapter->hw;
+	int i;
+
+	if (hw->mac.ops.disable_mdd)
+		hw->mac.ops.disable_mdd(hw);
 
 	if (adapter->ixgbe_ieee_pfc)
 		pfc_en |= !!(adapter->ixgbe_ieee_pfc->pfc_en);
@@ -4122,6 +4126,9 @@ static void ixgbe_set_rx_drop_en(struct ixgbe_adapter *adapter)
 		for (i = 0; i < adapter->num_rx_queues; i++)
 			ixgbe_disable_rx_drop(adapter, adapter->rx_ring[i]);
 	}
+
+	if (hw->mac.ops.enable_mdd)
+		hw->mac.ops.enable_mdd(hw);
 }
 
 #define IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT 2
-- 
2.42.0

