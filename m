Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E652AE861
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 06:48:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85368864D0;
	Wed, 11 Nov 2020 05:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aRmfGcSj-ugp; Wed, 11 Nov 2020 05:48:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6266D863E0;
	Wed, 11 Nov 2020 05:48:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 997591BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:48:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 942DE8747F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmYxRijrOLjf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 05:48:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 019568747A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:48:38 +0000 (UTC)
IronPort-SDR: Ftu+MS54Ihz78TZ36lbWwIAxec83xX/OqLiGavpPaltkRJO4EKkSBbhNlcRxPrBOypPZsgKtQ4
 sq5ox2niSYIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="149947752"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="149947752"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:48:37 -0800
IronPort-SDR: GQAn2AxdTbUNCmGj5XIbdbjeNUiJ+V1YnGDXRmBndF6GCSgxDLp4gIKWrZXO9h2G5Bw3LUXsoP
 FNlzG0sMSO0A==
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="308336271"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:48:34 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Nov 2020 13:51:00 +0800
Message-Id: <7e68b2f6a9b0a6e03f6eeba8433bc532a3256830.1605073208.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1605073208.git.yu.c.chen@intel.com>
References: <cover.1605073208.git.yu.c.chen@intel.com>
Subject: [Intel-wired-lan] [PATCH 1/4][RFC] e1000e: save the return value of
 e1000e_reset()
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
Cc: Len Brown <len.brown@intel.com>, Chen Yu <yu.c.chen@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org, "Brandt,
 Todd E" <todd.e.brandt@intel.com>, Zhang Rui <rui.zhang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sometimes e1000e_reset() might fail during reume from S3 due to
hardware/firmware issues. Actually the return value from e1000e_reset()
can be used by the caller to verify if the NIC succeed to initialize or
not.

Introduce a static function _e1000e_reset() which is derived
from e1000e_reset(), except that the former returns the result
of this reset.

No functional change expected.

Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b30f00891c03..f7c08426c0d7 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3998,7 +3998,7 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
  * set/changed during runtime. After reset the device needs to be
  * properly configured for Rx, Tx etc.
  */
-void e1000e_reset(struct e1000_adapter *adapter)
+static int _e1000e_reset(struct e1000_adapter *adapter)
 {
 	struct e1000_mac_info *mac = &adapter->hw.mac;
 	struct e1000_fc_info *fc = &adapter->hw.fc;
@@ -4191,14 +4191,14 @@ void e1000e_reset(struct e1000_adapter *adapter)
 		default:
 			dev_err(&adapter->pdev->dev,
 				"Invalid PHY type setting EEE advertisement\n");
-			return;
+			return -EINVAL;
 		}
 
 		ret_val = hw->phy.ops.acquire(hw);
 		if (ret_val) {
 			dev_err(&adapter->pdev->dev,
 				"EEE advertisement - unable to acquire PHY\n");
-			return;
+			return -EBUSY;
 		}
 
 		e1000_write_emi_reg_locked(hw, adv_addr,
@@ -4239,6 +4239,12 @@ void e1000e_reset(struct e1000_adapter *adapter)
 		ew32(FEXTNVM9, reg);
 	}
 
+	return 0;
+}
+
+void e1000e_reset(struct e1000_adapter *adapter)
+{
+	_e1000e_reset(adapter);
 }
 
 /**
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
