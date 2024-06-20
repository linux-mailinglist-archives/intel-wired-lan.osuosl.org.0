Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F55910437
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 14:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F07B2846F0;
	Thu, 20 Jun 2024 12:32:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CoxtdW9FEzpe; Thu, 20 Jun 2024 12:32:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39808846CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718886728;
	bh=0tpLerE3zEa+vp0YhEIry5+3JH3KbEEi5bOFEIWNK8c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dp9EchNVvTAjLTks4EisVZ98ilAcoPHiL2r93D4Bl/yTQ7cFm1Jimf6qiKLX/R1Ha
	 DcZCOl9kXWynPwj3zCgOBcekY8wjxzTTfY5Fiv2tXAdK7R2IeZqHZCdam8hFZnyPSa
	 gUcfp9NpoNV3q7SQbo6cbvkdagKTYpaH6usWrwyqGKA4OKgzDoGqvHGOByBHZicAEN
	 TMFAi09hCrp022FKRQkGe6YRrPtj1vDkk8lLdLJ7ZtOS3Zt1TqZ50H3s5TZ61w4wQo
	 NogF/BLEzh3WWDzmjRsSy/3cU3uRFXpIwTLX1RpAMXMJ1WlO7iQXXVfG8eWogKDwdy
	 jPvdkk8Ml3oJQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39808846CD;
	Thu, 20 Jun 2024 12:32:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 53FAD1BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D4A242EC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:32:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fbDnJAOvSuT9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 12:32:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 49A5042EC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49A5042EC1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49A5042EC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:32:01 +0000 (UTC)
X-CSE-ConnectionGUID: TbV7bvL8T/21/hS8vkzsAQ==
X-CSE-MsgGUID: e3tT9ILcTrC0XgmXpuzTng==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="41262888"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="41262888"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 05:32:01 -0700
X-CSE-ConnectionGUID: WwrAAiU+Sn6erMW+RB5PHA==
X-CSE-MsgGUID: Kf4xHDCCS0qOJqkYll4eQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="79712953"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 20 Jun 2024 05:31:59 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 14:27:09 +0200
Message-ID: <20240620123141.1582255-3-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240620123141.1582255-1-karol.kolacinski@intel.com>
References: <20240620123141.1582255-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718886721; x=1750422721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PMLnNOEM3hY2pdDZ57EQrF3YgMbUMNWJSiQ68f2BKxo=;
 b=OdA5MB2CZEdlHMC1WDbH0Qii/7dIK5x5RAsO7boxhzEbLfM2Iup6+mn/
 adlc5qpaiR+JtUaRFt/I38wnP/+oL4K3LeLNWU+qrD87OM1vL34Bv/Rnq
 BNilZDceGViPNVfk79nhm8YFq7GbI9xGLydHgEIkc60ltsPmx9wuBPKBR
 CY0+4nt3ML4Neam4IySMEY7zbad9UaXIJNd8rq84ETCK0k0Atb4aurnjO
 zEPoX0iM8G3EyUHZtUo/hhckgA9ecg2APBDrxrBwgG7HbTHgTzWKGyuRH
 x1FBS4qLUWTlIpdm/s58sx6vDgqXUr416JSe473yYgFR1NHoYTpxRvbHO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OdA5MB2C
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 2/3] ice: Don't process extts
 if PTP is disabled
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_ptp_extts_event() function can race with ice_ptp_release() and
result in a NULL pointer dereference which leads to a kernel panic.

Panic occurs because the ice_ptp_extts_event() function calls
ptp_clock_event() with a NULL pointer. The ice driver has already
released the PTP clock by the time the interrupt for the next external
timestamp event occurs.

To fix this, modify the ice_ptp_extts_event() function to check the
PTP state and bail early if PTP is not ready.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: removed unnecessary hunk of code and adjusted commit message

 drivers/net/ethernet/intel/ice/ice_ptp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d8ff9f26010c..0500ced1adf8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1559,6 +1559,10 @@ void ice_ptp_extts_event(struct ice_pf *pf)
 	u8 chan, tmr_idx;
 	u32 hi, lo;
 
+	/* Don't process timestamp events if PTP is not ready */
+	if (pf->ptp.state != ICE_PTP_READY)
+		return;
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	/* Event time is captured by one of the two matched registers
 	 *      GLTSYN_EVNT_L: 32 LSB of sampled time event
-- 
2.43.0

