Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20A8974670
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 01:34:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E8524024E;
	Tue, 10 Sep 2024 23:34:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wbZCT3gl9G9F; Tue, 10 Sep 2024 23:34:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F26840361
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726011245;
	bh=qR7b1sqwSUrpvhp6SzYdF51NZMnEUIE4Fw0jof/zrOk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=O1nnQABrDEBP/7/ANF4DGC6ms51VAPajrE9T2U5j4QdLRPhXu8iMCzr77b9gE/2/5
	 /1rjNOkhFdpDI+sJLnpzU69dlMRwulVv++4XePylh6bWcRcdh4m8BrUb+ix1Vs9jnQ
	 JhbWZ9daYS0eCDhtmxTVaqSJpRyF6e8QuAyuMmchRo4j0ivp7ftekOXCge17EgLR5V
	 +3ikU+v1eUdQ8bOZlVvlhQuEq4Pg5mPPZphpTRvQg6dnUXiQ1fidshiadhMsy/WUzp
	 i5AbhZI92xoElLAc4uAfZAXGMlKdxStTwVSA8IuB/TJkDpdGnlXrZaqvhMnkI8W5XJ
	 9/GOfm43Xr9ZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F26840361;
	Tue, 10 Sep 2024 23:34:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A53A1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 23:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 356D4406A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 23:34:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YTzeMqFI0lbX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 23:34:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0B799403B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B799403B1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B799403B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 23:34:01 +0000 (UTC)
X-CSE-ConnectionGUID: A53JRA5oQ3aQIWQw7p329A==
X-CSE-MsgGUID: r/cS21W6RT+DTwQIpHP0zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24282824"
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="24282824"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 16:33:55 -0700
X-CSE-ConnectionGUID: r5eztuACQXqNpW2ayHtuTA==
X-CSE-MsgGUID: S9dhEpLsRIGBGsvTya8lvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="71561899"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa005.fm.intel.com with ESMTP; 10 Sep 2024 16:33:54 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Sep 2024 01:29:34 +0200
Message-Id: <20240910232934.675274-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726011242; x=1757547242;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qy4D81spVDANBEzNRRwoyGxb1+QRBApUjhQLsF90H1s=;
 b=jeGJTJrG8V+UGyraV8hNMb/6vkcJ0KCvPqORDYZ8XgCL6Xrs7OvNdnKC
 x4+uq1emwlYvWreNLojG0uioj73bi6IjzF2omSpVr287EUZYoCuGfLYjJ
 IjNCFVtwerM5enjRJ9UB6yUoGOJHYVGk7kDga4wv/vXKkYPkR4WaPLhGU
 UBPgC2M/a00XXmaXzJglBqsQ07BO9WN8NrNq/BXo91iEeP+TVteUSBpJb
 sEqEXGJKVmlQeVEOtWZaQCX5TO02mXpGM/SUiurTzRyu1pH6hXPj0ADy4
 /Va5AWvZZTvDfF5JOb3L4pauCevhPJhpWm0bS5I1zy1lV9qRvb/fyJVGJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jeGJTJrG
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll's pins frequencies
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dpll's pins frequencies were hardcoded in the driver to the 1Hz/10MHz.
Fix it be allowing users to set full range of supported frequencies
which is a range 1Hz-25MHz.

Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3a33e6b9b313..496bd588525b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -9,8 +9,7 @@
 #include "ice_cgu_regs.h"
 
 static struct dpll_pin_frequency ice_cgu_pin_freq_common[] = {
-	DPLL_PIN_FREQUENCY_1PPS,
-	DPLL_PIN_FREQUENCY_10MHZ,
+	DPLL_PIN_FREQUENCY_RANGE(1, 25000000),
 };
 
 static struct dpll_pin_frequency ice_cgu_pin_freq_1_hz[] = {
@@ -63,9 +62,9 @@ static const struct ice_cgu_pin_desc ice_e810t_sfp_cgu_outputs[] = {
 	{ "PHY-CLK",	    ZL_OUT2, DPLL_PIN_TYPE_SYNCE_ETH_PORT, },
 	{ "MAC-CLK",	    ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT, },
 	{ "CVL-SDP21",	    ZL_OUT4, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
 	{ "CVL-SDP23",	    ZL_OUT5, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
 };
 
 static const struct ice_cgu_pin_desc ice_e810t_qsfp_cgu_outputs[] = {
@@ -77,9 +76,9 @@ static const struct ice_cgu_pin_desc ice_e810t_qsfp_cgu_outputs[] = {
 	{ "PHY2-CLK",	    ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
 	{ "MAC-CLK",	    ZL_OUT4, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
 	{ "CVL-SDP21",	    ZL_OUT5, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
 	{ "CVL-SDP23",	    ZL_OUT6, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
 };
 
 static const struct ice_cgu_pin_desc ice_e823_si_cgu_inputs[] = {
-- 
2.38.1

