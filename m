Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 886922701C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Sep 2020 18:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E23B8787B;
	Fri, 18 Sep 2020 16:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJgrNMivxMte; Fri, 18 Sep 2020 16:14:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C570287885;
	Fri, 18 Sep 2020 16:14:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 656D51BF396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Sep 2020 16:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 60C4087A11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Sep 2020 16:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6guF-QxFbp87 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Sep 2020 16:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 046B287955
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Sep 2020 16:14:43 +0000 (UTC)
IronPort-SDR: +jMQgBVF46/YieLNeKfZivW2JWeNWcyybg7mWHjw3zCuUaBWfEJ2rqatPAcqRKoSAhO1B/Jth4
 M5dgZvyuWCfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9748"; a="147727338"
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="147727338"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 09:14:41 -0700
IronPort-SDR: MJDQHHhurlQFFeneXdUgBaj0vaIbRucneVTO44kUST3Upis9HfZmX+ytxa9tEMlsqPZIKW+D0G
 NVTtZQBrQu8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="452808905"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga004.jf.intel.com with ESMTP; 18 Sep 2020 09:14:40 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Sep 2020 16:09:27 +0000
Message-Id: <20200918160927.11265-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Add info trace at loading xdp
 program
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

New trace indicates that the XDP program was loaded.
The trace has a note that in case of using XDP_REDIRECT,
number of queues on both interfaces shall be the same.
This is required for optimal performance of XDP_REDIRECT,
if interface used for TX has lower number of queues than
a RX interface, the packets may be dropped (depending on
RSS queue assignment).

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 05c6d3e..85eac48 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12643,11 +12643,14 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
 	/* Kick start the NAPI context if there is an AF_XDP socket open
 	 * on that queue id. This so that receiving will start.
 	 */
-	if (need_reset && prog)
+	if (need_reset && prog) {
+		dev_info(&pf->pdev->dev,
+			 "Loading XDP program, please note: XDP_REDIRECT action requires the same number of queues on both interfaces\n");
 		for (i = 0; i < vsi->num_queue_pairs; i++)
 			if (vsi->xdp_rings[i]->xsk_pool)
 				(void)i40e_xsk_wakeup(vsi->netdev, i,
 						      XDP_WAKEUP_RX);
+	}
 
 	return 0;
 }
-- 
2.26.0

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
