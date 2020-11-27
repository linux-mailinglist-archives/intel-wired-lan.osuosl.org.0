Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D322C63DB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Nov 2020 12:23:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2589879B7;
	Fri, 27 Nov 2020 11:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A1MMzmfsWSzY; Fri, 27 Nov 2020 11:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDACD879AD;
	Fri, 27 Nov 2020 11:23:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 022AC1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Nov 2020 11:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F210C87BD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Nov 2020 11:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oKauptGeWnQo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Nov 2020 11:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03935876DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Nov 2020 11:23:15 +0000 (UTC)
IronPort-SDR: TVQUpze2BlsUJYQLSYonKL20j7/XbxL7I7sTKpC8uBWg55oDFT5ZCBevINW7zZg3QaOy8SKcnE
 XSU8JW4Sxaig==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="233988753"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="233988753"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 03:23:14 -0800
IronPort-SDR: 2ughSk73XNBATfGi+FVOBEVNwTmsS4H99Y7TWkmG5ZIQpAF+Rvj7ckuYw0+piRPXz0FxKAtxL8
 8BKZpHo/gG6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="328627580"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga003.jf.intel.com with ESMTP; 27 Nov 2020 03:23:13 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 27 Nov 2020 11:23:01 +0000
Message-Id: <20201127112301.32478-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix VFs not created
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

When creating VFs they were sometimes not getting resources.
It was caused by not executing i40e_reset_all_vfs due to
flag __I40E_VF_DISABLE being set on PF. Because of this
IAVF was never able to finish setup sequence never
getting reset indication from PF.
Changed test_and_set_bit __I40E_VF_DISABLE in
i40e_sync_filters_subtask to test_bit and removed clear_bit.
This function should not set this bit it should only check
if it hasn't been already set.

Fixes: a7542b876075 ("i40e: check __I40E_VF_DISABLE bit in i40e_sync_filters_subtask")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5bee1de..a926331 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2623,7 +2623,7 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
 		return;
 	if (!test_and_clear_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state))
 		return;
-	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state)) {
+	if (test_bit(__I40E_VF_DISABLE, pf->state)) {
 		set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
 		return;
 	}
@@ -2641,7 +2641,6 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
 			}
 		}
 	}
-	clear_bit(__I40E_VF_DISABLE, pf->state);
 }
 
 /**
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
