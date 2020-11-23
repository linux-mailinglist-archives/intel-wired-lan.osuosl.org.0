Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6652C0E04
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Nov 2020 15:45:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D876B87092;
	Mon, 23 Nov 2020 14:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mUvk5JgwK3w2; Mon, 23 Nov 2020 14:45:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56ABF87064;
	Mon, 23 Nov 2020 14:45:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 109F31BF966
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 14:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C64886665
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 14:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2a8iei+Iorix for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Nov 2020 14:45:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 29CAB86365
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 14:45:30 +0000 (UTC)
IronPort-SDR: GmDy/Grp0ZZcldQphdH9CPYpsKomHssYSm6XOdKfhMWNccjUVDsrf4wkipKkn+GO3Gv3kecYTr
 BoenFelFtkmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="159543268"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="159543268"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 06:45:28 -0800
IronPort-SDR: g+6PuZDyiC72/D3P8GvAYqTKLZaObnqrv6E1TrBhhkGTyYuW27JVWHGuRgXz/PCadwrJiN2Irr
 Dk7JyW9aDMhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="370057574"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Nov 2020 06:45:27 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Nov 2020 14:45:17 +0000
Message-Id: <20201123144517.15180-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix check for PF state (vf
 disable)
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Slawomir Laba <slawomirx.laba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adding missing comments to previously applied patch.

When PF state bit for __I40e_VF_DISABLE is set,
it doesn't mean necessary that the VF called in
i40e_reset_vf is disabled. It is rather impossible to
call a reset on a disabled VF, so return false and
repeat the request after a while.

Fixes: 8d38e0cd5211("i40e: Fix removing driver while bare-metal VFs pass traffic")
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 8951740..d30a57f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1423,6 +1423,8 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
 
 	/* If the VFs have been disabled, this means something else is
 	 * resetting the VF, so we shouldn't continue.
+	 * This is a global state of a PF, so it is possible that
+	 * a different VF is in reset.
 	 */
 	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
 		return false;
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
