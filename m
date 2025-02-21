Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E643A3F0B2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 10:43:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3A0B83B07;
	Fri, 21 Feb 2025 09:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FWyMJnYyn2zD; Fri, 21 Feb 2025 09:43:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F2558386F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740131014;
	bh=BaGzCCZJqrTm5b+bqODxCVMQSwkDPtN73zbv0oYAAnM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tZ8h/vqjesCxI4SC9k43GcnprFHcXbqGAlA2iQc1b21uHchUliCGc3b2czsz8rO6D
	 MCeXG0US4Xw+38FEVYeK/rvsMxqHvlpOY5ajXQ5+oXzRtIOHotPybP0T7EWRvDFy+y
	 nfxN6kYSaRGr/6E5SiYCAR8XgazZq33I8tYN7rS8iSFMqT1IO9HflMKEP6uEB9fwaR
	 OSK6Vs7EZurHjmBU+c6qlmlDwmW1w6qAeAd9fJ5BVkmobVMXKH0XVbHSi8zeGg4WPi
	 bskVAHFrxP/agZZQEFxEnVBph5fQCLnVi9M2r9PewBAF3x8BB73h3A3h78JRSWKy9q
	 69Y2CSy8tlqFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F2558386F;
	Fri, 21 Feb 2025 09:43:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B8A44D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A898C8386F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yhr9xdFedYaZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 09:43:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ECA988114C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECA988114C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECA988114C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:43:29 +0000 (UTC)
X-CSE-ConnectionGUID: H9obJ30aR0+DEGiT+QzNmQ==
X-CSE-MsgGUID: lDqqlvqSS8OJmm03z6q8dQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51588303"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="51588303"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 01:43:30 -0800
X-CSE-ConnectionGUID: UZ8654HgQxyk8hBCbgBuUg==
X-CSE-MsgGUID: gWQjtqNiRPG6ZbGjteWRzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="146214739"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by fmviesa001.fm.intel.com with ESMTP; 21 Feb 2025 01:43:28 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Feb 2025 10:39:49 +0100
Message-Id: <20250221093949.2436728-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740131011; x=1771667011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=522MooTYpYrtzHnLXBjlkvV0sFdSBCEqCsgZPGxH6BI=;
 b=ep9BfnbFI5sPX85jftMpn/TwXUe0MpPNh0Ba+8kcP9/0dRmrUYeA1kBX
 3JD6KLUQAhvG5wlveksGSfg51nWjvPUwIGckV1Z5E8Zjlv/h9VSQqiYVK
 mi4e4DF9TuKXOqjTeej/Sa9k2Umj0pxbvRTEioDxgD+eEOOId2nK3XMhO
 fsgBtp8MTNX0HyCC2MZwyM64NOolT1tITXmNcuYOwd9EZrUP5RHmuS5+2
 XB21aE0MY1/VNBRDEySLT5Z08f4M2hiP+xcGFlpNoAjZItQdfjukB0RfZ
 F5/Q8M0SpaJhrM1Eg8x6/W7llb8YLPf1woAhitaBeN8Bp+2ja2I6Ek/AC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ep9BfnbF
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix lane number
 calculation
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E82X adapters do not have sequential IDs, lane number is PF ID.

Add check for ICE_MAC_GENERIC and skip checking port options.

Also, adjust logical port number for specific E825 device with external
PHY support (PCI device id 0x579F). For this particular device,
with 2x25G (PHY0) and 2x10G (PHY1) port configuration, modification of
pf_id -> lane_number mapping is required. PF IDs on the 2nd PHY start
from 4 in such scenario. Otherwise, the lane number cannot be
determined correctly, leading to PTP init errors during PF initialization.

Fixes: 258f5f9058159 ("ice: Add correct PHY lane assignment")
Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 7a2a2e8da8fa..83b72414760a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4171,6 +4171,15 @@ int ice_get_phy_lane_number(struct ice_hw *hw)
 	unsigned int lane;
 	int err;
 
+	/* E82X does not have sequential IDs, lane number is PF ID.
+	 * For E825 device, the exception is the variant with external
+	 * PHY (0x579F), in which there is also 1:1 pf_id -> lane_number
+	 * mapping.
+	 */
+	if (hw->mac_type == ICE_MAC_GENERIC ||
+	    hw->device_id == ICE_DEV_ID_E825C_SGMII)
+		return hw->pf_id;
+
 	options = kcalloc(ICE_AQC_PORT_OPT_MAX, sizeof(*options), GFP_KERNEL);
 	if (!options)
 		return -ENOMEM;

base-commit: c4813820042d447c687cf4f1d5e240740638e586
-- 
2.39.3

