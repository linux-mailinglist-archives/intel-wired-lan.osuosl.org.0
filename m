Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F289E3F3B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 17:08:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5510660E93;
	Wed,  4 Dec 2024 16:08:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8SSvlYTRpeUt; Wed,  4 Dec 2024 16:08:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6524607A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733328515;
	bh=mdMxgXQcFqkO7CCpWXQBZ29LckmV5B6FZuSWqT0xfcA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vvB8T4TGCVKjNYhWejP6ufV2L1qb6IDlx3L1eRYUcU7HSv0XXPBG1rLNaMdZZXTZt
	 7ttu3lBIo8V8CWwr56T7AiJ4cT/nfk02SuA1sM7OUri6su12rf/Q5Ek+RyXf+XeuPV
	 u7G0IcaWCwL09vltekp3ia4ZbIxPbJlbJC9nnplA8S6jTITTjpJQJ3TNyfcLL3s+9d
	 sHFnaANHYWMLreWr1dzbpHHNPhin3adz9I+rK+xlD/ypgdTR1g3O5Kay0oryPRAcWd
	 2bY7RTi/U4UeWyZiWryr6yO/JCB0Wn6sFReiHaSEyciaa2k4w8oAo6B4BYEPwIByQe
	 OHB2ZcnmkL13w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6524607A0;
	Wed,  4 Dec 2024 16:08:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 36C581DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22898400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tcdhCPEAA33Z for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 12:09:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 36EC34004A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36EC34004A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 36EC34004A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:19 +0000 (UTC)
X-CSE-ConnectionGUID: Vf17Et7gTSSnaBxaCz+Pvg==
X-CSE-MsgGUID: gv+CZUZjQL62/6ZFyyaS9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="32918445"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="32918445"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 04:09:19 -0800
X-CSE-ConnectionGUID: q4EKv2yWTM+7PA4jgPPG8Q==
X-CSE-MsgGUID: svlFj3bjR3WOHS41NozASQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="116994599"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa002.fm.intel.com with ESMTP; 04 Dec 2024 04:09:17 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Wed,  4 Dec 2024 13:03:47 -0500
Message-ID: <20241204180709.307607-5-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241204180709.307607-1-anton.nadezhdin@intel.com>
References: <20241204180709.307607-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 04 Dec 2024 16:08:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733314159; x=1764850159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lT+Ayyo1NsfkzOHaNIvpQd02/Q4fftifKNcdVE3ZQZs=;
 b=hGYjKMGq2wQpfUG5ze3SvawfiimetrNMZ3NxmoXedQ+y3yTFov0xPsdu
 knVLSqgAz+bmf62K7JQJmLGiKhEHMUwdTl3mnvtj1wzuke7W3L8w21Fcu
 TwvkFYvP01K5MghuMX6H9i9c4W078icZe9nmsco7WBxpm4EqfPskKtLvj
 pLo3HWnWkXtcTHWZ2klYlb/lEWpbbHYEf+JXQ9Pvnz0p4cVI3T1thb3vb
 DGT0hUyAABCvd8N3hw8a6oX7h/HBSNZDI1t7ndt0xylaqh6ZOvFT0jWWS
 Q+aHTSc58vqxh+e9SbwYAhW0rM5vG0vXMTDhd7cjDZeW7NyKAfKhIGofk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hGYjKMGq
Subject: [Intel-wired-lan] [PATCH iwl-next 4/5] ice: check low latency PHY
 timer update firmware capability
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

From: Jacob Keller <jacob.e.keller@intel.com>

Newer versions of firmware support programming the PHY timer via the low
latency interface exposed over REG_LL_PROXY_L and REG_LL_PROXY_H. Add
support for checking the device capabilities for this feature.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 3 +++
 drivers/net/ethernet/intel/ice/ice_type.h   | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index faba09b9d880..d23f413740c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2507,6 +2507,7 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 
 	info->ts_ll_read = ((number & ICE_TS_LL_TX_TS_READ_M) != 0);
 	info->ts_ll_int_read = ((number & ICE_TS_LL_TX_TS_INT_READ_M) != 0);
+	info->ll_phy_tmr_update = ((number & ICE_TS_LL_PHY_TMR_UPDATE_M) != 0);
 
 	info->ena_ports = logical_id;
 	info->tmr_own_map = phys_id;
@@ -2529,6 +2530,8 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		  info->ts_ll_read);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ts_ll_int_read = %u\n",
 		  info->ts_ll_int_read);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: ll_phy_tmr_update = %u\n",
+		  info->ll_phy_tmr_update);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: ieee_1588 ena_ports = %u\n",
 		  info->ena_ports);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr_own_map = %u\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 5f3af5f3d2cb..25d6dad1852b 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -369,6 +369,7 @@ struct ice_ts_func_info {
 #define ICE_TS_TMR1_ENA_M		BIT(26)
 #define ICE_TS_LL_TX_TS_READ_M		BIT(28)
 #define ICE_TS_LL_TX_TS_INT_READ_M	BIT(29)
+#define ICE_TS_LL_PHY_TMR_UPDATE_M	BIT(30)
 
 struct ice_ts_dev_info {
 	/* Device specific info */
@@ -383,6 +384,7 @@ struct ice_ts_dev_info {
 	u8 tmr1_ena;
 	u8 ts_ll_read;
 	u8 ts_ll_int_read;
+	u8 ll_phy_tmr_update;
 };
 
 #define ICE_NAC_TOPO_PRIMARY_M	BIT(0)
-- 
2.42.0

