Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6635D34794B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Mar 2021 14:15:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDEC1849AE;
	Wed, 24 Mar 2021 13:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r9YbFN_LV65L; Wed, 24 Mar 2021 13:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B7BD84961;
	Wed, 24 Mar 2021 13:15:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4C9B1BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 13:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9124160702
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 13:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KhmyCRkazmj8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Mar 2021 13:15:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3AFB60ACF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 13:15:30 +0000 (UTC)
IronPort-SDR: SLKgaYoPwGrCWS+WY2RsyqKW9x6a0WZ4NuhE93i/x4hUP5z7emQ8v89JnCrIaXo53Tr83Ax7gE
 N/u4LUmzQyRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="210807371"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="210807371"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 06:15:30 -0700
IronPort-SDR: 4gdmBV4veyxXLhexjldGAuWU6mVhOf0OJvqqvXCMQdUXleI3ZPCCEFlDEbb9dO3VArSiJqniYe
 dtpD65otRRnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="604687267"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2021 06:15:29 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, anna.kostyukovsky@intel.com,
 dvorax.fuxbrumer@linux.intel.com
Date: Wed, 24 Mar 2021 15:15:25 +0200
Message-Id: <20210324131525.2196955-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Expose LPI counters
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Expose EEE tx and rx low power idle counters via ethtool
A EEE TX or RX LPI event occurs when the transmitter or the receiver
enters EEE (IEEE802.3az) LPI state.
ethtool --statistics <iface>

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 8722294ab90c..9722449d7633 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -65,6 +65,8 @@ static const struct igc_stats igc_gstrings_stats[] = {
 	IGC_STAT("tx_hwtstamp_timeouts", tx_hwtstamp_timeouts),
 	IGC_STAT("tx_hwtstamp_skipped", tx_hwtstamp_skipped),
 	IGC_STAT("rx_hwtstamp_cleared", rx_hwtstamp_cleared),
+	IGC_STAT("tx_lpi_counter", stats.tlpic),
+	IGC_STAT("rx_lpi_counter", stats.rlpic),
 };
 
 #define IGC_NETDEV_STAT(_net_stat) { \
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
