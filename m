Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B025AD4EB3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 10:46:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 146EB81991;
	Wed, 11 Jun 2025 08:46:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id slN0zdlTPLTW; Wed, 11 Jun 2025 08:46:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D31D817FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749631577;
	bh=EFPF7vGD+Lz/B0b5X7iXAoqPp7gBvN0ZdLLULJmS+IQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eIM1tmUDhXykn2ZuZ36fFLSMmGrtU8heKBX3t3EDQVMeRhlRIi4nfVqW/8G2IbLXp
	 cumBJfRD4Xm0Q46XMoNtdP3QDwy5lhgGmerJSAgGCjx0BWHw+gQlT24e7uCtik66/K
	 NlbMAwx9fenfGyTyPYY0+lQUvQLt5RmYESUI2EpiMYiZc8V8EmJ6Cm/MT7AEFzk1nG
	 1yIX3Sy49MpHBYBzo60iy5gEVRF4gxugNbs3Kh3i0wmbsV+AmvasqMoM68STZv7pC+
	 R3BT7eV6EsyQll8Sd5327QD/mud+ITl/WK5+YkGMAE/TrRz8bSiYTjpEnZjmXLo8Up
	 5qxYjHTLpkFbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D31D817FF;
	Wed, 11 Jun 2025 08:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0419D1F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEEEB403CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V5K4Qpq-7r1P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 08:46:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 45841403BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45841403BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45841403BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:15 +0000 (UTC)
X-CSE-ConnectionGUID: UbG2O3pLRvCL/44TiHcPzQ==
X-CSE-MsgGUID: DJZzH13FTDSQr+qfNfxGtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="62046157"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="62046157"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 01:46:15 -0700
X-CSE-ConnectionGUID: thoy8T2+QNuP2iXRkgkIYA==
X-CSE-MsgGUID: rJ7Q8BrsRTKPLsI8iR4i6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="152298386"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 01:46:14 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EAF52332AE;
 Wed, 11 Jun 2025 09:46:12 +0100 (IST)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Wed, 11 Jun 2025 11:01:21 +0200
Message-Id: <20250611090122.4312-3-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250611090122.4312-1-konrad.knitter@intel.com>
References: <20250611090122.4312-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749631575; x=1781167575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+EJID00wMU0CMhNgIlxGBSLKn9EwUE2jNBcMpJETq5Q=;
 b=GlXwsjXpsY5akWqSrYJrZJGm9BpZvNsRf+OW4jw15WCvRL1qC+3V2xVs
 tgkFpm6FK1efabHQ0nrLrj9TUKjEWwFfPW1DldmrrpxDVJ+/DzKWvDJp7
 6Sqt5sFySuzYRbHOpnaXpQWDPtfJM0Crt2SeZlR5fwbvnIHLwn3sYF0hB
 5vn+fL3GMjYDKYQKARpy8VywUqMC3CAsSD1Xq4S9t7nvJrhRiU2xa/zel
 4+yegMcXU8Hz1MH2wK0qchGyUtDk18hQTzqRw0ro+A2Tes9sOw+sU4ClC
 lGspnlWv4y+yMfT3jdTO6oY9AbGx9dqB0XfWlPqbe2AixiFBrBQEG2LLt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GlXwsjXp
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: add overwrite mask
 from factory settings
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

Support for restoring settings and identifiers from factory settings
instead of using those found in the image.

Restoring data from factory settings requires restoring both settings
and identifiers simultaneously. Other combinations are not supported.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
---
 Documentation/networking/devlink/ice.rst       | 6 ++++++
 drivers/net/ethernet/intel/ice/ice_fw_update.c | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 792e9f8c846a..c11c7bc1362c 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -222,6 +222,12 @@ combined flash image that contains the ``fw.mgmt``, ``fw.undi``, and
        identifying fields such as the MAC address, VPD area, and device
        serial number. It is expected that this combination be used with an
        image customized for the specific device.
+   * - ``DEVLINK_FLASH_OVERWRITE_SETTINGS``, ``DEVLINK_FLASH_OVERWRITE_IDENTIFIERS``
+       and ``DEVLINK_FLASH_OVERWRITE_FROM_FACTORY_SETTINGS``
+     - Do not preserve either settings or identifiers. Overwrite everything
+       in the flash with contents of the factory settings section instead of
+       provided image.
+
 
 The ice hardware does not support overwriting only identifiers while
 preserving settings, and thus ``DEVLINK_FLASH_OVERWRITE_IDENTIFIERS`` on its
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index d86db081579f..f869648939bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -1008,6 +1008,10 @@ int ice_devlink_flash_update(struct devlink *devlink,
 					      DEVLINK_FLASH_OVERWRITE_IDENTIFIERS)) {
 		/* overwrite both settings and identifiers, preserve nothing */
 		preservation = ICE_AQC_NVM_NO_PRESERVATION;
+	} else if (params->overwrite_mask == (DEVLINK_FLASH_OVERWRITE_SETTINGS |
+					      DEVLINK_FLASH_OVERWRITE_IDENTIFIERS |
+					      DEVLINK_FLASH_OVERWRITE_FROM_FACTORY_SETTINGS)) {
+		preservation = ICE_AQC_NVM_FACTORY_DEFAULT;
 	} else {
 		NL_SET_ERR_MSG_MOD(extack, "Requested overwrite mask is not supported");
 		return -EOPNOTSUPP;
-- 
2.38.1

