Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AB046BA0C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 12:23:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD29480C99;
	Tue,  7 Dec 2021 11:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9_IEeLE-nDs6; Tue,  7 Dec 2021 11:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D11FB80C89;
	Tue,  7 Dec 2021 11:23:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 856BC1BF489
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7510180C89
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b7l8jwurvETh for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Dec 2021 11:23:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2FE580C86
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 11:23:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="237784261"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="237784261"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 03:23:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515239724"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.56])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2021 03:23:47 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Dec 2021 13:23:42 +0200
Message-Id: <20211207112342.1290154-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 2/2] e1000e: Handshake with CSME starts
 from ADL platforms
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

Update the handshake with CSME flow to works starts from the ADL
platform.

Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support S0ix")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 2cfd03c6b37e..c063128ed1df 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6346,7 +6346,8 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 	u32 mac_data;
 	u16 phy_data;
 
-	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
+	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
+	    hw->mac.type >= e1000_pch_adp) {
 		/* Request ME configure the device for S0ix */
 		mac_data = er32(H2ME);
 		mac_data |= E1000_H2ME_START_DPG;
@@ -6495,7 +6496,8 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	u16 phy_data;
 	u32 i = 0;
 
-	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
+	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
+	    hw->mac.type >= e1000_pch_adp) {
 		/* Request ME unconfigure the device from S0ix */
 		mac_data = er32(H2ME);
 		mac_data &= ~E1000_H2ME_START_DPG;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
