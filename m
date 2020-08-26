Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4514252F62
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Aug 2020 15:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5D063203A2;
	Wed, 26 Aug 2020 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EelB9x3dkobX; Wed, 26 Aug 2020 13:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB46520416;
	Wed, 26 Aug 2020 13:12:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D828B1BF41A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 13:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC5F58691B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 13:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q--cLEmLJL6U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 13:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 06B898695B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 13:12:25 +0000 (UTC)
IronPort-SDR: gytHWadH+6obS7iKPbXcHxZK274qezPdPzV0vJgfMs8wU5XW9t2Z9ikfcUpXN7u7w0gHkdmRmd
 8nZxgiRBcQTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="174334114"
X-IronPort-AV: E=Sophos;i="5.76,355,1592895600"; d="scan'208";a="174334114"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 06:12:24 -0700
IronPort-SDR: g1eZoDcwyPSCd3VMzo/ZR1MCRwgv9tCm5xZ+t7yIODSsEIdJn7RdyAEit0bbDW+RHWt6O0q++R
 dKgjMq6/bQAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,355,1592895600"; d="scan'208";a="323185021"
Received: from pkwapuli-mobl.ger.corp.intel.com (HELO
 pkwapuli-vbox.igk.intel.com) ([10.213.21.65])
 by fmsmga004.fm.intel.com with ESMTP; 26 Aug 2020 06:12:23 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Aug 2020 15:12:21 +0200
Message-Id: <20200826131221.20270-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] i40e: fix type discrepancy when handling
 PTP related LEDs
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

Fix data types when handling LEDs for PTP external clock synchronization.
Interface of i40e_ptp_set_led_hw() updated.
Detected by sparse tool.

Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 26f583f..98b5315 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -980,7 +980,7 @@ static void i40e_ptp_set_pin_hw(struct i40e_hw *hw,
  **/
 static void i40e_ptp_set_led_hw(struct i40e_hw *hw,
 				unsigned int led,
-				enum i40e_ptp_gpio_pin_state state)
+				enum i40e_ptp_led_pin_state state)
 {
 	switch (state) {
 	case low:
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
