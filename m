Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3FE1E2020
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 12:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E1C3722B6D;
	Tue, 26 May 2020 10:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1JuLQp7iw7H5; Tue, 26 May 2020 10:51:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 762D9227FA;
	Tue, 26 May 2020 10:51:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4F951BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 10:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D1F08693D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 10:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2KE9bPiksHTM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 10:51:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9EFAB8682A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 10:51:20 +0000 (UTC)
IronPort-SDR: CMSfwc5ZY7tdXkkaBvb9hvouh153hp7mBg+6UnmEqpk/uLeudTQzchcA0vYL8xlrS7Md9DDw2g
 +3NXcaUvc5HQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 03:51:20 -0700
IronPort-SDR: Oq3/09AwdqiTD2DXlMPsfMiI3w0jjhy/HBxarLaOcl0ci77EC+25WJA9t9ArIqs22jOTef1HQd
 Z4kWUmHBgNGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="468250765"
Received: from pkwapuli-mobl.ger.corp.intel.com (HELO
 pkwapuli-vbox.igk.intel.com) ([10.213.10.179])
 by fmsmga005.fm.intel.com with ESMTP; 26 May 2020 03:51:19 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 May 2020 12:51:12 +0200
Message-Id: <20200526105112.3228-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] i40e: make PF wait reset loop reliable
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use jiffies to limit max waiting time for PF reset to succeed.
Previous wait loop was unreliable. It required unreasonably long time
to wait for PF reset after reboot when NIC was about to enter
recovery mode

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2a037ec..4b12a54 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14606,25 +14606,23 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
  **/
 static i40e_status i40e_pf_loop_reset(struct i40e_pf *pf)
 {
-	const unsigned short MAX_CNT = 1000;
-	const unsigned short MSECS = 10;
+	/* wait max 10 seconds for PF reset to succeed */
+	const unsigned long time_end = jiffies + 10 * HZ;
+
 	struct i40e_hw *hw = &pf->hw;
 	i40e_status ret;
-	int cnt;
 
-	for (cnt = 0; cnt < MAX_CNT; ++cnt) {
+	ret = i40e_pf_reset(hw);
+	while (ret != I40E_SUCCESS && time_before(jiffies, time_end)) {
+		usleep_range(10000, 20000);
 		ret = i40e_pf_reset(hw);
-		if (!ret)
-			break;
-		msleep(MSECS);
 	}
 
-	if (cnt == MAX_CNT) {
+	if (ret == I40E_SUCCESS)
+		pf->pfr_count++;
+	else
 		dev_info(&pf->pdev->dev, "PF reset failed: %d\n", ret);
-		return ret;
-	}
 
-	pf->pfr_count++;
 	return ret;
 }
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
