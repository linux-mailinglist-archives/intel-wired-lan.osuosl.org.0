Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1C7A37DD6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 10:06:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2238060DDF;
	Mon, 17 Feb 2025 09:06:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5c6T-_Mrk4MW; Mon, 17 Feb 2025 09:06:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7429860DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739783213;
	bh=qd85eSnzc9Mhgj5TOS7eE760kty13iDafK8txKEgm5k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KwqsIuw5Kzwg+pu3HnETqCGouOfvN1MeDb9B/RbtrBvmHThNm0cQtOGDFDyTneLV+
	 bCL5KilhKTF0HtZBFLkAgIVenSXmUtIzYYRILLJidZGZzWFSc0orqqn6ejZhs1qziN
	 YLpXMGBj6xyu6GIVtzuScuRMDiGTd9VJV4RXccl9XOK+mRAxhexN3uA2Pd27owVDTq
	 Am8PS/aXMTiSQJszndCIOjp1bnuTybehby+eku7cteqBj4OHGyQZwe9xGPKWiSeukU
	 YweyYqqFqeANkyGaah/S1N+zX48wcQI8nv+QqwCLzhdroFbNU/4/ZEMXtTd8PkCiv6
	 dN0VUObZq+9zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7429860DF9;
	Mon, 17 Feb 2025 09:06:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A1EFFDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BC2140116
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TO3knHAozHjo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 09:06:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 949B54027C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 949B54027C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 949B54027C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:49 +0000 (UTC)
X-CSE-ConnectionGUID: 1T6gS+VdQE2mCAKqCP1ZMg==
X-CSE-MsgGUID: Ni0tPxqDS1ST3rcUGdtKxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="51078514"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="51078514"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 01:06:49 -0800
X-CSE-ConnectionGUID: 6cIaYjYMR3SucZqcu8CbZg==
X-CSE-MsgGUID: 2YPdZIDPTdKjw092Rjbk6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="113937627"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 17 Feb 2025 01:06:47 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com, horms@kernel.org, pmenzel@molgen.mpg.de
Date: Mon, 17 Feb 2025 10:06:36 +0100
Message-ID: <20250217090636.25113-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739783209; x=1771319209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nJCkytmPtDyYoEpk7Y2B0AQ4HJ0hsEDOqc+k3dFC+kY=;
 b=V6CzhRh1Hq8YdbDl+3HZN7Yx9hDmKF0Qq9ndwbOGqzz/yhZh/eujOLWi
 Fg10XpDnWOImBodjbNE/KMvDkhBhAei0GLMv2/ClaKupAVIPL7Xhao/u8
 Xrk1y6YNkwbQBq6Bb4qeHLQFi6ZPsa8h6AHQCLdBL/AnC/InyNVCCFKMB
 XAyufCb4/rgwLyvFXV62F7bbbtAHqaQjTFGlAOUBCQ705cic9xMY4QfVm
 6H2FAzGqMnuADJ6Hs3/nwcQKrW6TZ/bjcMwg+iGuKe7LN4zzaacU2+ggf
 aKDdblSQrilqv8XSVkptl3nbS7g07GTUDSTASCH8Da4nP9oF4yMsXTA8N
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V6CzhRh1
Subject: [Intel-wired-lan] [iwl-next v3 4/4] ixgbe: turn off MDD while
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

