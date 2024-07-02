Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 521AA923F4C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 15:45:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C204781D18;
	Tue,  2 Jul 2024 13:45:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kmQHTW-4fTsl; Tue,  2 Jul 2024 13:45:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0936F8176F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719927906;
	bh=KXPQYu7qZ5K21ETQQsELeuuXr9GtBgyw4Y9dlo9iRaM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aJADWy3+LoQfDVXO5XVinWROYNxX19bWg/F7sAub7IWV+FRRV6//y1tpqVUTc5+72
	 CLTeezYvqP9iqniUoRiqyMPqpf2pC40NeXy7tXqWrMXA1lWwtTRQQmXeZVEYBDxVOa
	 RwQd4UzeaDTtNjrgx8TEk0PXP0TMzdz3NOIysuiW/OHoXEcpcXwH4LzEsfWPA6taSA
	 VW/MlqdQCpUpJLJQWsyGTRWkX3vbkbK4IGhTi3/Jh/jsi/djG/N0KEXdEdVr1O+aDU
	 IvbcgWa8CuJzVPSrU0H92ioXHQmfVibjap8bFmsL65QEcew2ox5fDuaA6Mspzxrag6
	 +GzcgSmkSBzOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0936F8176F;
	Tue,  2 Jul 2024 13:45:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0512B1BF313
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F2827410E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mIPtWPqz_7Jc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 13:45:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3069D410E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3069D410E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3069D410E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:45:01 +0000 (UTC)
X-CSE-ConnectionGUID: oaqSZ8lTQQ+F1J8Qc47jwg==
X-CSE-MsgGUID: YTD5vXRpREqp3nf0lCuDZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="16826406"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="16826406"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 06:45:01 -0700
X-CSE-ConnectionGUID: RMd3SVy+SjKZ3rnfDiU2FQ==
X-CSE-MsgGUID: /MhW94SjQqGuI49TpXZCMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="83460512"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by orviesa001.jf.intel.com with ESMTP; 02 Jul 2024 06:44:59 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 15:41:31 +0200
Message-ID: <20240702134448.132374-11-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702134448.132374-9-karol.kolacinski@intel.com>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719927901; x=1751463901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TksVP2DYBRUrQNbmSt8x5N5u/CVzkVSpIvGDTb+oyQ8=;
 b=FH0feRO671lLZn7jc6vG9/1ybRnJgTiH31u0YR7zqv8bLJy9x/BAp5Nx
 hRFrXx84j6FhEbCvp3p+JN83fqYyBGPZLgKMYE3eL0XYklBQ9ic1lALvS
 7dz4xMoq4dF6AQY9VpjkrpwbA5uZcL7wPcFAxVc4hOObn7cqlO6nZTgZ6
 CuB/n3dhLoeqndvX+vOZAKvsH48mEH0uD0EMW48f9fVMh/DI+S3ltywXV
 D/nZ+wItj0A0Q1Pbh/kLSW7VvrlQTrJYNcEXNDxeurLPT+hZxV3epipO0
 6s31jDSXPbUbn2yMgJUmuVKgdTbSOclSJw4g/tVX1fwphr6l+cpIYFWEA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FH0feRO6
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 2/7] ice: Add SDPs support for
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
index 030e55a39ef5..392b0d2fa61f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -20,6 +20,16 @@ static const struct ice_ptp_pin_desc ice_pin_desc_e82x[] = {
 	{  ONE_PPS,   {  5, -1 }},
 };
 
+static const struct ice_ptp_pin_desc ice_pin_desc_e825c[] = {
+	/* name,      gpio */
+	{  SDP0,      {  0,  0 }},
+	{  SDP1,      {  1,  1 }},
+	{  SDP2,      {  2,  2 }},
+	{  SDP3,      {  3,  3 }},
+	{  TIME_SYNC, { -1,  4 }},
+	{  ONE_PPS,   {  5, -1 }},
+};
+
 static const struct ice_ptp_pin_desc ice_pin_desc_e810[] = {
 	/* name,      gpio */
 	{  SDP0,      { 0,  0 }},
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
2.45.2

