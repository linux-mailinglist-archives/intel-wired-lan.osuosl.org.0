Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EFC949971
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 22:46:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F94140222;
	Tue,  6 Aug 2024 20:46:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ChQmQVl2FTRl; Tue,  6 Aug 2024 20:46:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 970E24050A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722977211;
	bh=VtZ843wBTKmEZH0vl3oRMSj715ZXtw+OeywZmKIGzWE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ONweSBa9AEjAFL50E569wCzBS4guINc7ZYCRAclcRd2AQrgaMQB1hrmEHMaxDshIX
	 70fl8O8Xyfmsk1StNRTET/mFQ/DKLud4Dqh/2b5CcIOGDuo9Lb2GibI/mY7X0P5kXP
	 d0XJhOukI/z20tu7UeZuHL2hSph0KZkJlYFsI1n7ShDUJy1wz904HgbH+ekFmZirKe
	 g0OpSM6NY6CtRYxBosrLkZEo3qFur9JKwv86VXWpBt+FGLFjnR0hTQ40BCOnu9JxQh
	 0CH1PdxXUUkYEEpS/ZH9yqvhbbukkrPKmqcU1/fY0oVSqtyQCM7mQcq9e/ySFpIzPM
	 avkKAJTkFce3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 970E24050A;
	Tue,  6 Aug 2024 20:46:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C64C1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AF8D40283
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O7LA6jr9ew1S for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94F2C4010F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94F2C4010F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94F2C4010F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 20:46:40 +0000 (UTC)
X-CSE-ConnectionGUID: nuz+THfRQxGf75yuwaSiyg==
X-CSE-MsgGUID: pESA9mKhRNuS5IM+leJQew==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20835929"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20835929"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
X-CSE-ConnectionGUID: mrwWbO/CTfujrzOh2qb6Ww==
X-CSE-MsgGUID: OMpCnJdDRXesFctyrZ8sgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56331595"
Received: from jekeller-desk.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.166.241.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 13:46:38 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 06 Aug 2024 13:46:27 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-e810-live-migration-rd32-poll-timeout-v1-7-b5ada29ce703@intel.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722977201; x=1754513201;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Yxiys/SX09VX8g2NtcH9vKUz5aA7EqLljg/GeKCEwko=;
 b=l75jFwMrhz35GiHUFSN5VRF5nds+rGoHwJYIQV/AELIjHRbawMy9KeJE
 r+WH7h5xUbgFmdXMRwyF1r0iNmsIcu7mbP0TJlQCzCrp65xEtjzZJg1UW
 q5CG7Cf9MpIxg7SHGv35cirYo2ffOsr4s+XoQhzl4uVhpHMovehzvZs5T
 D+FL3Ju7biOqzSAXrUSUGSTobx9jU/EFdXnoWNgtTteXtZPLS7p7WVSTR
 hEI6ABGbzC6kuz0hib5NIqeHR7CbfS9fjG8OBEuYiNet24osc0T1+YJ3Y
 jqwg4QMr2SmglduxGFPrsuBKE60ZXafZHdp9rxZ1e2UYVj51/N7GjBmho
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l75jFwMr
Subject: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Report NVM version
 numbers on mismatch during load
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacek Wierzbicki <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Report NVM version numbers (both detected and expected) when a mismatch b/w
driver and firmware is detected. This provides more useful information
about which NVM version the driver expects, rather than requiring manual
code inspection.

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index b5774035e6f9..e3959ad442a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -488,7 +488,7 @@ static int ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 }
 
 /**
- * ice_aq_ver_check - Check the reported AQ API version.
+ * ice_aq_ver_check - Check the reported AQ API version
  * @hw: pointer to the hardware structure
  *
  * Checks if the driver should load on a given AQ API version.
@@ -508,14 +508,20 @@ static bool ice_aq_ver_check(struct ice_hw *hw)
 	} else if (hw->api_maj_ver == exp_fw_api_ver_major) {
 		if (hw->api_min_ver > (exp_fw_api_ver_minor + 2))
 			dev_info(ice_hw_to_dev(hw),
-				 "The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.\n");
+				 "The driver for the device detected a newer version (%u.%u) of the NVM image than expected (%u.%u). Please install the most recent version of the network driver.\n",
+				 hw->api_maj_ver, hw->api_min_ver,
+				 exp_fw_api_ver_major, exp_fw_api_ver_minor);
 		else if ((hw->api_min_ver + 2) < exp_fw_api_ver_minor)
 			dev_info(ice_hw_to_dev(hw),
-				 "The driver for the device detected an older version of the NVM image than expected. Please update the NVM image.\n");
+				 "The driver for the device detected an older version (%u.%u) of the NVM image than expected (%u.%u). Please update the NVM image.\n",
+				 hw->api_maj_ver, hw->api_min_ver,
+				 exp_fw_api_ver_major, exp_fw_api_ver_minor);
 	} else {
 		/* Major API version is older than expected, log a warning */
 		dev_info(ice_hw_to_dev(hw),
-			 "The driver for the device detected an older version of the NVM image than expected. Please update the NVM image.\n");
+			 "The driver for the device detected an older version (%u.%u) of the NVM image than expected (%u.%u). Please update the NVM image.\n",
+			 hw->api_maj_ver, hw->api_min_ver,
+			 exp_fw_api_ver_major, exp_fw_api_ver_minor);
 	}
 	return true;
 }

-- 
2.46.0.124.g2dc1a81c8933

