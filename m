Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 440741F20D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2019 14:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBEE586CD7;
	Wed, 15 May 2019 12:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhSv8xJ55gaL; Wed, 15 May 2019 12:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD16286C0E;
	Wed, 15 May 2019 12:00:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 250161BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2019 12:00:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 210288629C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2019 12:00:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YgLPsLJZZ8IO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2019 12:00:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7352986149
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2019 12:00:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 05:00:47 -0700
X-ExtLoop1: 1
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by orsmga004.jf.intel.com with ESMTP; 15 May 2019 05:00:46 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.155]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.162]) with mapi id 14.03.0415.000;
 Wed, 15 May 2019 13:00:29 +0100
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Michael, Alice" <alice.michael@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next PATCH S5 iavf 04/11] iavf: Change GFP_KERNEL to
 GFP_ATOMIC in kzalloc()
Thread-Index: AQHVCnu2tCSgoX5vmkaHTlCfXEqoL6ZsFpUA
Date: Wed, 15 May 2019 12:00:28 +0000
Message-ID: <0EF347314CF65544BA015993979A29CD631F6C66@irsmsx105.ger.corp.intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
 <20190514173709.62431-4-alice.michael@intel.com>
In-Reply-To: <20190514173709.62431-4-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmY0NThiYzYtMTQxMy00NGYzLWJiMjgtNmQzYjY2OGJhOWI2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRlwvK0JcL1JUUm5WeGphMjk5QWdEbCswaGlaeGVRYWE0ak4zaFpMU3ptd2psU3pGMVdtbVd3UmVXNXdhRkpIMlB2In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 iavf 04/11] iavf: Change
 GFP_KERNEL to GFP_ATOMIC in kzalloc()
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
Sent: Tuesday, May 14, 2019 7:37 PM
To: Michael, Alice <alice.michael@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Subject: [next PATCH S5 iavf 04/11] iavf: Change GFP_KERNEL to GFP_ATOMIC in kzalloc()

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

iavf_add_vlan() is being called in atomic context so kzalloc() needs GFP_ATOMIC. This patch fixes it.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 9ce04a8c0d0f..8a37b9f604e2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -659,7 +659,7 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter, u16 vlan)
 
 	f = iavf_find_vlan(adapter, vlan);
 	if (!f) {
-		f = kzalloc(sizeof(*f), GFP_KERNEL);
+		f = kzalloc(sizeof(*f), GFP_ATOMIC);
 		if (!f)
 			goto clearout;
 
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
