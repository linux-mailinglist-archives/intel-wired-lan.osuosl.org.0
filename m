Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1266B2B4369
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 13:14:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 258DB20503;
	Mon, 16 Nov 2020 12:14:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jc81ooorDRGZ; Mon, 16 Nov 2020 12:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FAE0204E0;
	Mon, 16 Nov 2020 12:14:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D5D01BF41C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0394185E40
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRaLykNjwFFo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 12:14:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6064985DDC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 12:14:27 +0000 (UTC)
IronPort-SDR: iHLJ8psUqd0ymynCaqI4JLMxWRLFP94ewfPljdqV4w53x+/m/zbS9PsmCluiD+jAv4ucZp8Swf
 yUaNG36y/p1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="170905918"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="170905918"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 04:14:17 -0800
IronPort-SDR: 18QPz1KH3TwfIQ6gK/lWHPoNzyAmqY+eImBYUrYR4zyu8o7ihkOGRgOmzX08xyLJzG5WBbANAQ
 nki7bZHPx7cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="324781278"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga003.jf.intel.com with ESMTP; 16 Nov 2020 04:14:16 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Nov 2020 12:14:02 +0000
Message-Id: <20201116121402.11318-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Add rx errors aggregation
 feature
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

Extend calculation of receive errors by aggregating them in the
existing netstat receive error counter.

Error counters added for:
rx_csum_bad, rx_length_errors, rx_undersize_, rx_fragments,
rx_oversize and rx_jabber.

The above were added in order to align statistics with other products.

Without this change only rx_crc_errors and illegal_bytes were
collected by netstat receive error counter.


Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 672dc2c..0799476 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -859,7 +859,14 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 	/* pull in a couple PF stats if this is the main vsi */
 	if (vsi == pf->vsi[pf->lan_vsi]) {
 		ns->rx_crc_errors = pf->stats.crc_errors;
-		ns->rx_errors = pf->stats.crc_errors + pf->stats.illegal_bytes;
+		ns->rx_errors = pf->stats.crc_errors +
+				pf->stats.illegal_bytes +
+				pf->hw_csum_rx_error +
+				pf->stats.rx_length_errors +
+				pf->stats.rx_undersize +
+				pf->stats.rx_fragments +
+				pf->stats.rx_oversize +
+				pf->stats.rx_jabber;
 		ns->rx_length_errors = pf->stats.rx_length_errors;
 	}
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
