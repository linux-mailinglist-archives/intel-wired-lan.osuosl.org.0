Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA192D8E41
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Dec 2020 16:25:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C186286D03;
	Sun, 13 Dec 2020 15:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MAbYcZUM-77S; Sun, 13 Dec 2020 15:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2DA386D10;
	Sun, 13 Dec 2020 15:25:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52BE81BF29E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Dec 2020 15:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DBB78727D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Dec 2020 15:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OznzmbpDTrFH for <intel-wired-lan@lists.osuosl.org>;
 Sun, 13 Dec 2020 15:25:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7C7308725E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Dec 2020 15:25:30 +0000 (UTC)
IronPort-SDR: jsSVP6kIYYe91d+RZgNydsQ74gggKUiV8vwh7DwxuHV7j8p9APCAw9d/B9q9UjAAmzvCFLLHaX
 KwxNzESR9v8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9833"; a="259338182"
X-IronPort-AV: E=Sophos;i="5.78,416,1599548400"; d="scan'208";a="259338182"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2020 07:25:29 -0800
IronPort-SDR: gc6QMJ8JgE6zPcBl4C+qtcNKgnq6q27cCkeXX/5L2wTHLw3D7r7c1mT9vtB+QSw1rUl59P8l7E
 Iva/xCIzyXcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,416,1599548400"; d="scan'208";a="379543308"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2020 07:25:28 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 13 Dec 2020 17:25:26 +0200
Message-Id: <20201213152526.1386104-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused local receiver
 mask
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

Local receiver mask SR_1000T_LOCAL_RX_STATUS not in use in i225 device
and could be removed

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 882e1e272953..84355a5f79e8 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -129,7 +129,6 @@
 
 /* 1000BASE-T Status Register */
 #define SR_1000T_REMOTE_RX_STATUS	0x1000 /* Remote receiver OK */
-#define SR_1000T_LOCAL_RX_STATUS	0x2000 /* Local receiver OK */
 
 /* PHY GPY 211 registers */
 #define STANDARD_AN_REG_MASK	0x0007 /* MMD */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
