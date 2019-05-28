Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 114ED2D8B5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 11:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB8E386BF9;
	Wed, 29 May 2019 09:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EisOhRFplUgV; Wed, 29 May 2019 09:10:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAFC086C11;
	Wed, 29 May 2019 09:10:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2AE61BF873
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 19:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AEC8E87CDA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 19:42:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tmS62FSPrDUp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 19:42:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E810E87CC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 19:42:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 12:42:13 -0700
X-ExtLoop1: 1
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by orsmga007.jf.intel.com with ESMTP; 28 May 2019 12:42:12 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.93]) by
 IRSMSX107.ger.corp.intel.com ([169.254.10.142]) with mapi id 14.03.0415.000;
 Tue, 28 May 2019 20:42:11 +0100
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Michael, Alice" <alice.michael@intel.com>, "alice.micheal@intel.com"
 <alice.micheal@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next PATCH S6 4/7] i40e: Add log entry while creating or
 deleting TC0
Thread-Index: AQHVFX8rM/zy6ZvbaUm2xaHNppKZiKaA79aA
Date: Tue, 28 May 2019 19:42:10 +0000
Message-ID: <D4D6338F2E4CB34CB91C5312C72AAC81088F73@IRSMSX104.ger.corp.intel.com>
References: <20190528175921.30534-1-alice.michael@intel.com>
 <20190528175921.30534-4-alice.michael@intel.com>
In-Reply-To: <20190528175921.30534-4-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjE1MGFlNWYtM2E1YS00YmY1LTk4N2UtM2YwZDhjNjEzYTA5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaXd2bk1zS0g5dWNJakRYMDJaSkNzQ2s3UnVGMEMzdW03Z2w5TmxiNEtTaUMxVEo0UkdyU3h5QmdyNFJaOFwvd1wvIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 May 2019 09:10:28 +0000
Subject: Re: [Intel-wired-lan] [next PATCH S6 4/7] i40e: Add log entry while
 creating or deleting TC0
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

ACK

-----Original Message-----
From: Michael, Alice 
Sent: Tuesday, May 28, 2019 7:59 PM
To: alice.micheal@intel.com; intel-wired-lan@lists.osuosl.org
Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
Subject: [next PATCH S6 4/7] i40e: Add log entry while creating or deleting TC0

From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Generate log entry when TC0 is created or deleted.
Log entry is generated during main VSI setup.
Before there was no log info about adding or deleting TC0.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 931862c0f39d..7c93f28b7b1d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7432,6 +7432,10 @@ static int i40e_setup_tc(struct net_device *netdev, void *type_data)
 			    vsi->seid);
 		need_reset = true;
 		goto exit;
+	} else {
+		dev_info(&vsi->back->pdev->dev,
+			 "Setup channel (id:%u) utilizing num_queues %d\n",
+			 vsi->seid, vsi->tc_config.tc_info[0].qcount);
 	}
 
 	if (pf->flags & I40E_FLAG_TC_MQPRIO) {
-- 
2.19.2

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
