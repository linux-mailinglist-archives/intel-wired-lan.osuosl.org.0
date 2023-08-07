Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D60771E3C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 12:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBF8760792;
	Mon,  7 Aug 2023 10:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBF8760792
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691404634;
	bh=3ZKPLtaO/Dz/cLWX16guj4cOEahsmmfix37rCpPQVGA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8RPf0W88q5llIZy3hpWXxQnNASUHGz2DAyur4Jg9PRYDxH77Fdvz/ht+DIGEd4amX
	 px2XF24/U/IwsVjDXLyhUTu0zNEKvAganNQJUYkY/6RKH6tPh/4MZQaq/JtLR/60rd
	 VX702cPTzsIL4v8NGK78pZH0Pa0KKCajkyjjNBwcBgm23WUfbcR4ZpFSvrTiOYuJam
	 jFj4kpfBHshUaJ6RCFU3A6cdd+p+SGwyvJ6MUKijZ2nQdOkDqirQ4AzKW379ctHfKc
	 LckZL63KFHCgOMg7UqkXzZaElKWEa+b++FJDYf2SnS22plapzVx5vZCa5SBAhasd3z
	 FG4Kvto6s9XUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AU2asm4caaJ1; Mon,  7 Aug 2023 10:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4DDC60DDF;
	Mon,  7 Aug 2023 10:37:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4DDC60DDF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 709641BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B9904057C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B9904057C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YsWvJtbxBO-1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 10:36:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFE6E401A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 10:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFE6E401A4
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="401482314"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="401482314"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 03:36:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874262845"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2023 03:36:39 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 12:36:22 +0200
Message-Id: <20230807103624.468230-8-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230807103624.468230-1-karol.kolacinski@intel.com>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691404597; x=1722940597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PdSBmejk5IYVIgi7xHfPXlcVehHqfRb3rwkl18omYXU=;
 b=PUguUJX6WzzTF8OABTiaCFLLwtUlu7dkGggEnsX+yZVviSzeHgg4F7Om
 u8VezNRvMkn/Sf+MXGbw5jtO1Or0mGoSrUf1SobkKWnETLKtLy1eb/aYQ
 eZycmAHaIVYja+3Y6Qedo2REh2NbcAYd6oxo401Vl6/zRlWAZIIbe27Zd
 smn+fUILSmOamYF+s1WJG7uDuUyGWn2p/IUYzOgfN/BlJ6O38XgNr5UNN
 fPOv/EO1XQRVu7BWXVBat9ZWJDAYanCj6a5zdRfQRTurm5IjEcGtjR7oj
 qG0Ax1RmWepu2Nyc0UsKqEJSy+PLf/tv/26viwn259ubzkU2ITE9jWgZL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PUguUJX6
Subject: [Intel-wired-lan] [PATCH 7/9] ice: modify tstamp_config only during
 TS mode set
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver stores the current Tx and Rx timestamping configuration in
pf->ptp.tstamp_config. This structure is supposed to represent the
currently requested configuration from userspace that we've applied to
the device.

The values of this structure are modified within the low level
ice_set_tx_tstamp() and ice_set_rx_tstamp() functions. These functions
*are* called by ice_ptp_set_timestamp_mode. However, they are also
called during the driver reset and rebuild flow. Because of this, the
driver overwrites user configuration during reset, preventing itself
from being able to properly restore the configuration after a reset.

Instead, stop modifying this saved configuration state outside of
ice_ptp_set_timestamp_mode. Instead, set the values directly within this
function. This avoids losing the configuration data.

A following change will refactor the rebuild flow to properly restore
the configuration after a PF reset.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 726ea2c5010b..34a271e657d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -307,8 +307,6 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 {
 	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
 		ice_ptp_cfg_tx_interrupt(pf, on);
-
-	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
 }
 
 /**
@@ -331,9 +329,6 @@ static void ice_set_rx_tstamp(struct ice_pf *pf, bool on)
 			continue;
 		vsi->rx_rings[i]->ptp_rx = on;
 	}
-
-	pf->ptp.tstamp_config.rx_filter = on ? HWTSTAMP_FILTER_ALL :
-					       HWTSTAMP_FILTER_NONE;
 }
 
 /**
@@ -2070,9 +2065,11 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
 		ice_set_tx_tstamp(pf, false);
+		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_OFF;
 		break;
 	case HWTSTAMP_TX_ON:
 		ice_set_tx_tstamp(pf, true);
+		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_ON;
 		break;
 	default:
 		return -ERANGE;
@@ -2081,6 +2078,7 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 	switch (config->rx_filter) {
 	case HWTSTAMP_FILTER_NONE:
 		ice_set_rx_tstamp(pf, false);
+		pf->ptp.tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
 	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
@@ -2097,6 +2095,7 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 	case HWTSTAMP_FILTER_NTP_ALL:
 	case HWTSTAMP_FILTER_ALL:
 		ice_set_rx_tstamp(pf, true);
+		pf->ptp.tstamp_config.rx_filter = HWTSTAMP_FILTER_ALL;
 		break;
 	default:
 		return -ERANGE;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
