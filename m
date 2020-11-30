Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2281A2C80DC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Nov 2020 10:24:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC1EE85B0D;
	Mon, 30 Nov 2020 09:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oDX3tAAzNU0e; Mon, 30 Nov 2020 09:24:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2334885B12;
	Mon, 30 Nov 2020 09:24:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1105B1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 09:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 03BE12281C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 09:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DO0vm8ZQz8AX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Nov 2020 09:24:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D04D227CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 09:24:11 +0000 (UTC)
IronPort-SDR: opHSkWoqDXjpiMVBqtrt5kY+wkhQ7vndiZCzC9cK4Zrht+Q70pL8AkFg7TCO4FcvXpGMKaHySs
 lOQM8j9TMsvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="151857538"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="151857538"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 01:24:08 -0800
IronPort-SDR: H+iHAwAPNKP2S2tAsnJu+Fj/uFgbP1Wb8I2DINqkzO1RQt6vORm0g3jT6kO1aFhZIn7+hkllWA
 GHe9Vm/IYxvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="315170853"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2020 01:24:07 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Nov 2020 11:24:04 +0200
Message-Id: <20201130092404.2694347-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up nvm_operations
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

valid_led_default function pointer not in use and can
be removed from a nvm_operations structure

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 9da5f83ce456..4461f8b9a864 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -113,7 +113,6 @@ struct igc_nvm_operations {
 	s32 (*write)(struct igc_hw *hw, u16 offset, u16 i, u16 *data);
 	s32 (*update)(struct igc_hw *hw);
 	s32 (*validate)(struct igc_hw *hw);
-	s32 (*valid_led_default)(struct igc_hw *hw, u16 *data);
 };
 
 struct igc_phy_operations {
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
