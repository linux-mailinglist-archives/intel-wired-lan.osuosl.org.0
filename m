Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F78B2C0A8F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Nov 2020 14:47:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EDEB85A1E;
	Mon, 23 Nov 2020 13:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WI03Aux0PmaS; Mon, 23 Nov 2020 13:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C74885A60;
	Mon, 23 Nov 2020 13:47:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B73F1BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 13:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7FCF586FCF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 13:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jFtGxZ15ZLS8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Nov 2020 13:47:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ADCAE86FF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 13:47:22 +0000 (UTC)
IronPort-SDR: t4Cf+V9vaV8XC/lQcvJImZWe+sbUy8HM0bm1J9HT+H/dNTH93ZnK2q6xUd6FaW0AjFHGbCrT2M
 8WnFFvaL/Kug==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="159531194"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="159531194"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 05:47:17 -0800
IronPort-SDR: EmnuLwPzV15WrVjRTMnTe1g2LIbU+Ypi2nEzrGmrCqwV/TVs7oNe2fg9Y8diwm0Ss8d3Wo3D5L
 FQq72nuw3mTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="546418662"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga005.jf.intel.com with ESMTP; 23 Nov 2020 05:47:16 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Nov 2020 13:46:56 +0000
Message-Id: <20201123134656.14911-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: allow controlling PTP
 external clock features
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

From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Provide information what functions are supported by PTP pins and allow
controlling them.
Implemented in i40e_ptp_verify() and i40e_pps_configure().
Previously it was not possible to control PTP external clock features.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 26f583f..6182d42 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -241,7 +241,15 @@ static void i40_ptp_reset_timing_events(struct i40e_pf *pf)
 static int i40e_ptp_verify(struct ptp_clock_info *ptp, unsigned int pin,
 			   enum ptp_pin_function func, unsigned int chan)
 {
-	/* TODO: implement pin checking */
+	switch (func) {
+	case PTP_PF_NONE:
+	case PTP_PF_EXTTS:
+	case PTP_PF_PEROUT:
+		break;
+	case PTP_PF_PHYSYNC:
+		return -EOPNOTSUPP;
+	}
+
 	return 0;
 }
 
@@ -486,7 +494,11 @@ static int i40e_pps_configure(struct ptp_clock_info *ptp,
 			      struct ptp_clock_request *rq,
 			      int on)
 {
-	/* TODO: implement PPS events */
+	struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
+
+	if (!!on)
+		i40e_ptp_set_1pps_signal_hw(pf);
+
 	return 0;
 }
 
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
