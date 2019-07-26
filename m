Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A03F975F32
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 08:45:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6024488391;
	Fri, 26 Jul 2019 06:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gKerKmmYGWhs; Fri, 26 Jul 2019 06:45:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CD9488393;
	Fri, 26 Jul 2019 06:45:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 494A31BF36C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 06:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41DD92E2BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 06:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nvm-S+Qe4bbT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 06:45:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A1CC2E2B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 06:45:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 23:45:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,309,1559545200"; d="scan'208";a="198202090"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2019 23:45:16 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.40]) by
 IRSMSX107.ger.corp.intel.com ([169.254.10.251]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 07:41:03 +0100
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Michael, Alice" <alice.michael@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next PATCH S8 09/12] i40e: make i40e_set_mac_type() public
Thread-Index: AQHVQYOxhwwXqTlAu0y8BfPsYesQ+6bcdx4Q
Date: Fri, 26 Jul 2019 06:41:02 +0000
Message-ID: <D4D6338F2E4CB34CB91C5312C72AAC810D6E86@IRSMSX104.ger.corp.intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
 <20190723100144.57435-9-alice.michael@intel.com>
In-Reply-To: <20190723100144.57435-9-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWM0OTAwOTctZjllNi00MzE3LTg4YmYtNDEyZjIzZThkZDJiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNFFIUTRsODNvalJJUERjK2x1emd5bGpcLytZWFdKUXdzVTArK3E3QUduazMyUW8wcEJPZXJZN3hmUVFxb2lFN3UifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S8 09/12] i40e: make
 i40e_set_mac_type() public
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
Sent: Tuesday, July 23, 2019 12:02 PM
To: Michael, Alice <alice.michael@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
Subject: [next PATCH S8 09/12] i40e: make i40e_set_mac_type() public

From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Make i40e_set_mac_type() public. i40e driver requires i40e_set_mac_type() to be public. It is required for recovery mode handling. Without this patch recovery mode could not be detected in i40e_probe().

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c    | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_prototype.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 7af1b7477140..de996a80013e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -13,7 +13,7 @@
  * This function sets the mac type of the adapter based on the
  * vendor ID and device ID stored in the hw structure.
  **/
-static i40e_status i40e_set_mac_type(struct i40e_hw *hw)
+i40e_status i40e_set_mac_type(struct i40e_hw *hw)
 {
 	i40e_status status = 0;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index eac88bcc6c06..9c810d54df1c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -326,6 +326,8 @@ void i40e_nvmupd_check_wait_event(struct i40e_hw *hw, u16 opcode,  void i40e_nvmupd_clear_wait_state(struct i40e_hw *hw);  void i40e_set_pci_config_data(struct i40e_hw *hw, u16 link_status);
 
+i40e_status i40e_set_mac_type(struct i40e_hw *hw);
+
 extern struct i40e_rx_ptype_decoded i40e_ptype_lookup[];
 
 static inline struct i40e_rx_ptype_decoded decode_rx_desc_ptype(u8 ptype)
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
