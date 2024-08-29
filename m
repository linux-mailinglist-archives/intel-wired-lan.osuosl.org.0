Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6646396431C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 13:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A31BA6115C;
	Thu, 29 Aug 2024 11:33:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S6QmzGEq7DHB; Thu, 29 Aug 2024 11:33:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7D2F61142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724931194;
	bh=x1n/6BjKyhiN/9Z34T315k7ne3WkIvLxZ5HxOxT4bi4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yo3ZRV01x5U2li1FbYYxY/3+pznHMGjpcQaItpeh4nxH8UGqhmHewzrhioPxRAeRS
	 m1dDOktXW8Eaq47C6D3mo5oGSyv9oQwrfA7xkNtGe2KgAlPm1lHKzwQOQct1D5/2YS
	 x38PlPmwiJdjXR4ajWNJEAzafh3mkXasnn1tMmanrn5nFsSUC3+xGzsbxXdfoehYFF
	 L/yxKDZAQl1pdYhOI9sWriSo8PDoJ/r7jt1pvM5cHBen8yqC23+2xvscbSlD9lyyfT
	 WDBpSTu+hUYg2pol/fTTL7HWw4pHCe3QC3PinMY/n7jl4Fl+bECS1hmfNvJwPs+g/Q
	 tYtv9jhAYUupQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7D2F61142;
	Thu, 29 Aug 2024 11:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 137991BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D863401F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wmfeILEI6jGv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 11:33:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2F0440FC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2F0440FC6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2F0440FC6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 11:33:09 +0000 (UTC)
X-CSE-ConnectionGUID: 5TvkB8nlTy2Dwo4ywXCTUQ==
X-CSE-MsgGUID: r0jhJ/qbSCK0mG7ZbD2+bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23677866"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23677866"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:33:09 -0700
X-CSE-ConnectionGUID: ux8s74g/QomTlF0xF9Hb6w==
X-CSE-MsgGUID: f+IAcxfDQYC5guOZ5Di9rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63230590"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa007.fm.intel.com with ESMTP; 29 Aug 2024 04:33:08 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Aug 2024 13:28:09 +0200
Message-ID: <20240829113257.1023835-11-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240829113257.1023835-9-karol.kolacinski@intel.com>
References: <20240829113257.1023835-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724931189; x=1756467189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=If+Z7mrgpTFgl4Ce+4n6Qlb4wefvbL9BNglcNr4a2j0=;
 b=SFq6xNRBhWW07waRKdaG49XCrLwPcOzU4OLWBxmxhw5mH5HKOJACuu0H
 4zKrkpTK4/qCPrzQPHZoQW7jNHrG9rxIp22V5/2wb3182iFyALOEE/uA0
 KMhyJ0OJ7U+UGCkvnhzgtCjgoYt9aDD17PKCX81fMIC3z9LFVMnpm9b8j
 UwEGavIrbspt5DVKzz2Ht5730zpOv6T+wtkFqEZGPOiSNhmDMeXjOQbtu
 tICRxHmDuiEsPLzWWnuwHFHVZ6ujNq2XZmqc47eMlcxAs+koGvoJSYyZp
 NnUflNVEvneaxCoHsllxHqlfr1SNvAbDruhkXVcxK2G3wuMDW34KnZN8Q
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SFq6xNRB
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 2/7] ice: Add SDPs support for
 E825C
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support of PTP SDPs (Software Definable Pins) for E825C products.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: Removed redundant n_pins assignment and enable and verify move

 drivers/net/ethernet/intel/ice/ice_ptp.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0afea1d87f1a..f5b9b2d30880 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -20,6 +20,16 @@ static const struct ice_ptp_pin_desc ice_pin_desc_e82x[] = {
 	{  ONE_PPS,   { -1,  5 }},
 };
 
+static const struct ice_ptp_pin_desc ice_pin_desc_e825c[] = {
+	/* name,        gpio */
+	{  SDP0,      {  0,  0 }},
+	{  SDP1,      {  1,  1 }},
+	{  SDP2,      {  2,  2 }},
+	{  SDP3,      {  3,  3 }},
+	{  TIME_SYNC, {  4, -1 }},
+	{  ONE_PPS,   { -1,  5 }},
+};
+
 static const struct ice_ptp_pin_desc ice_pin_desc_e810[] = {
 	/* name,      gpio */
 	{  SDP0,    {  0, 0 }},
@@ -2624,8 +2634,14 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 #endif /* CONFIG_ICE_HWTS */
 	pf->ptp.info.enable = ice_ptp_gpio_enable;
 	pf->ptp.info.verify = ice_verify_pin;
-	pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
-	pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
+
+	if (ice_is_e825c(&pf->hw)) {
+		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
+		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
+	} else {
+		pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
+		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
+	}
 	ice_ptp_setup_pin_cfg(pf);
 }
 
-- 
2.46.0

