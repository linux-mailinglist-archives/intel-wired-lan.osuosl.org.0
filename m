Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63395216B01
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jul 2020 13:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DA1488F50;
	Tue,  7 Jul 2020 11:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jzbw4u1uA1Kl; Tue,  7 Jul 2020 11:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3276D88F17;
	Tue,  7 Jul 2020 11:05:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA5ED1BF853
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 11:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A622588F0A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 11:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5225eFu5kGPf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2020 11:05:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A99E88831B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 11:05:18 +0000 (UTC)
IronPort-SDR: /Yhkf18s/u/1IKhZ8RlP/F/x6o5xJH3xNT2AiEP5mOKN4R6duN6QhLtDWppCzSrsUDD2G3iprQ
 d8uzqCs5OWnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="146648830"
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="146648830"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 04:05:04 -0700
IronPort-SDR: UuQ2wqqO8xWgpWq49lYTZ1yx9DqZu5hQXPcPUFEimHJa/AcXmHF3PPEdl0QCtfB8FGjAMK8xib
 HKesNxhN1Njg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="483476276"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2020 04:05:03 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Jul 2020 14:05:03 +0300
Message-Id: <20200707110503.32407-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up the _mac_info
 structure
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

collision_delta, tx_packet_delta, txcw, adaptive_ifs and
fwsm fields not in use.
This patch come to clean up the driver code.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 8066749a55d0..24412a6c2289 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -82,10 +82,7 @@ struct igc_mac_info {
 
 	enum igc_mac_type type;
 
-	u32 collision_delta;
 	u32 mc_filter_type;
-	u32 tx_packet_delta;
-	u32 txcw;
 
 	u16 mta_reg_count;
 	u16 uta_reg_count;
@@ -95,8 +92,6 @@ struct igc_mac_info {
 
 	u8 forced_speed_duplex;
 
-	bool adaptive_ifs;
-	bool has_fwsm;
 	bool asf_firmware_present;
 	bool arc_subsystem_valid;
 
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
