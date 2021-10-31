Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC609440DDC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Oct 2021 11:46:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11D8D607BC;
	Sun, 31 Oct 2021 10:46:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2AxfF3GA04F; Sun, 31 Oct 2021 10:46:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A6986079F;
	Sun, 31 Oct 2021 10:46:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE0ED1BF31A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Oct 2021 10:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C889940129
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Oct 2021 10:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uprRv_DATu-q for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Oct 2021 10:46:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BF97400C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Oct 2021 10:46:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10153"; a="229602786"
X-IronPort-AV: E=Sophos;i="5.87,197,1631602800"; d="scan'208";a="229602786"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2021 03:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,197,1631602800"; d="scan'208";a="558117603"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.56])
 by fmsmga004.fm.intel.com with ESMTP; 31 Oct 2021 03:46:10 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 31 Oct 2021 12:45:56 +0200
Message-Id: <20211031104556.2312804-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove obsolete nvm type
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

i225 devices use only spi nvm type. This patch comes to tidy up
obsolete nvm types.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h   | 2 --
 drivers/net/ethernet/intel/igc/igc_i225.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 76832e55cbbb..b1e72ec5f131 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -67,8 +67,6 @@ enum igc_media_type {
 enum igc_nvm_type {
 	igc_nvm_unknown = 0,
 	igc_nvm_eeprom_spi,
-	igc_nvm_flash_hw,
-	igc_nvm_invm,
 };
 
 struct igc_info {
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index b2ef9fde97b3..6e3e6097af60 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -473,13 +473,11 @@ s32 igc_init_nvm_params_i225(struct igc_hw *hw)
 
 	/* NVM Function Pointers */
 	if (igc_get_flash_presence_i225(hw)) {
-		hw->nvm.type = igc_nvm_flash_hw;
 		nvm->ops.read = igc_read_nvm_srrd_i225;
 		nvm->ops.write = igc_write_nvm_srwr_i225;
 		nvm->ops.validate = igc_validate_nvm_checksum_i225;
 		nvm->ops.update = igc_update_nvm_checksum_i225;
 	} else {
-		hw->nvm.type = igc_nvm_invm;
 		nvm->ops.read = igc_read_nvm_eerd;
 		nvm->ops.write = NULL;
 		nvm->ops.validate = NULL;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
