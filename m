Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5199973288
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 17:12:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CBCE121539;
	Wed, 24 Jul 2019 15:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gb8+wM4dgjZz; Wed, 24 Jul 2019 15:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 65F1A2150F;
	Wed, 24 Jul 2019 15:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 140521BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:16:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1059387CD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZwVG4Bg1jsWi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 06:16:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 357AB87CD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:16:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 23:16:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="193346009"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jul 2019 23:16:09 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.234]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.166]) with mapi id 14.03.0439.000;
 Wed, 24 Jul 2019 07:16:08 +0100
From: "Formela, Marcin" <marcin.formela@intel.com>
To: "Michael, Alice" <alice.michael@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next PATCH S8 12/12] i40e: fix retrying in
 i40e_aq_get_phy_capabilities
Thread-Index: AQHVQYPoOZK3rig3aUm2lE/JlY391KbZS4CA
Date: Wed, 24 Jul 2019 06:16:07 +0000
Message-ID: <5820F02C2ABDA54685910F8970C642582A39EEB5@IRSMSX106.ger.corp.intel.com>
References: <20190723100345.57522-1-alice.michael@intel.com>
 <20190723100345.57522-12-alice.michael@intel.com>
In-Reply-To: <20190723100345.57522-12-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGIxY2E0MTMtMGIyNy00ZmQ2LTk4NjItYmFjZmE5NDBjYTk5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMXN3M3lnZEtBNzBQRHJSKzd2bHZDQVVtc2JjYmF1VCtXSkFsV2ZnUEx4TG51VzMwZTcyWTlPekU3WkhSak5OTyJ9
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 24 Jul 2019 15:11:08 +0000
Subject: Re: [Intel-wired-lan] [next PATCH S8 12/12] i40e: fix retrying in
 i40e_aq_get_phy_capabilities
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

Ack. Thx Alice.

--Marcin

-----Original Message-----
From: Michael, Alice 
Sent: Tuesday, July 23, 2019 12:04 PM
To: Michael, Alice <alice.michael@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Formela, Marcin <marcin.formela@intel.com>
Subject: [next PATCH S8 12/12] i40e: fix retrying in i40e_aq_get_phy_capabilities

From: Marcin Formela <marcin.formela@intel.com>

Fixed a bug where driver was breaking out of the loop and reporting an error without retrying first.

Signed-off-by: Marcin Formela <marcin.formela@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index de996a80013e..46e649c09f72 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1577,19 +1577,22 @@ i40e_status i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 		status = i40e_asq_send_command(hw, &desc, abilities,
 					       abilities_size, cmd_details);
 
-		if (status)
-			break;
-
-		if (hw->aq.asq_last_status == I40E_AQ_RC_EIO) {
+		switch (hw->aq.asq_last_status) {
+		case I40E_AQ_RC_EIO:
 			status = I40E_ERR_UNKNOWN_PHY;
 			break;
-		} else if (hw->aq.asq_last_status == I40E_AQ_RC_EAGAIN) {
+		case I40E_AQ_RC_EAGAIN:
 			usleep_range(1000, 2000);
 			total_delay++;
 			status = I40E_ERR_TIMEOUT;
+			break;
+		/* also covers I40E_AQ_RC_OK */
+		default:
+			break;
 		}
-	} while ((hw->aq.asq_last_status != I40E_AQ_RC_OK) &&
-		 (total_delay < max_delay));
+
+	} while ((hw->aq.asq_last_status == I40E_AQ_RC_EAGAIN) &&
+		(total_delay < max_delay));
 
 	if (status)
 		return status;
--
2.21.0

--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by
others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
