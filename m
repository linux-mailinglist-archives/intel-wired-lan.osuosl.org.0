Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABAE75F2B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 08:41:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB3F48919E;
	Fri, 26 Jul 2019 06:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4eu3-L2N+Q8E; Fri, 26 Jul 2019 06:41:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A82FF891AD;
	Fri, 26 Jul 2019 06:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8A61BF36C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 06:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 00232891A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 06:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3RTyoSO8G4y4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 06:41:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EA2B2891AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 06:41:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 23:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,309,1559545200"; d="scan'208";a="189547248"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2019 23:41:41 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.40]) by
 irsmsx105.ger.corp.intel.com ([169.254.7.164]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 07:41:40 +0100
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Michael, Alice" <alice.michael@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next PATCH S8 10/12] i40e: allow reset in recovery mode
Thread-Index: AQHVQYPD+h8o/7UjLUWq8ZEpCvdT26bcdy5Q
Date: Fri, 26 Jul 2019 06:41:40 +0000
Message-ID: <D4D6338F2E4CB34CB91C5312C72AAC810D6E99@IRSMSX104.ger.corp.intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
 <20190723100144.57435-10-alice.michael@intel.com>
In-Reply-To: <20190723100144.57435-10-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWYxMjQ2MmMtZjA0Yy00NWM1LTg5YmEtYmI2ZTg3OGRlMDZiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRm1xQUJYT3gxc1lONXdSVGJCSjJHQmhhbnlcLzlMVmFTem9ycXgyajFTdFo3dCtMZzNNXC9IczVta2lIRWJ2enVRIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S8 10/12] i40e: allow reset in
 recovery mode
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
Subject: [next PATCH S8 10/12] i40e: allow reset in recovery mode

From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Driver waits after issuing a reset. When a reset takes too long a driver gives up. Implemented by invoking PF reset in a loop. After defined number of unsuccessful PF reset trials it returns error.
Without this patch PF reset fails when NIC is in recovery mode.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 67 ++++++++++++++++++---
 1 file changed, 60 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8d6b9515b595..fdf43d87e983 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14564,6 +14564,51 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
 	return false;
 }
 
+/**
+ * i40e_pf_loop_reset - perform reset in a loop.
+ * @pf: board private structure
+ *
+ * This function is useful when a NIC is about to enter recovery mode.
+ * When a NIC's internal data structures are corrupted the NIC's
+ * firmware is going to enter recovery mode.
+ * Right after a POR it takes about 7 minutes for firmware to enter
+ * recovery mode. Until that time a NIC is in some kind of intermediate
+ * state. After that time period the NIC almost surely enters
+ * recovery mode. The only way for a driver to detect intermediate
+ * state is to issue a series of pf-resets and check a return value.
+ * If a PF reset returns success then the firmware could be in recovery
+ * mode so the caller of this code needs to check for recovery mode
+ * if this function returns success. There is a little chance that
+ * firmware will hang in intermediate state forever.
+ * Since waiting 7 minutes is quite a lot of time this function waits
+ * 10 seconds and then gives up by returning an error.
+ *
+ * Return 0 on success, negative on failure.
+ **/
+static i40e_status i40e_pf_loop_reset(struct i40e_pf *pf) {
+	const unsigned short MAX_CNT = 1000;
+	const unsigned short MSECS = 10;
+	struct i40e_hw *hw = &pf->hw;
+	i40e_status ret;
+	int cnt;
+
+	for (cnt = 0; cnt < MAX_CNT; ++cnt) {
+		ret = i40e_pf_reset(hw);
+		if (!ret)
+			break;
+		msleep(MSECS);
+	}
+
+	if (cnt == MAX_CNT) {
+		dev_info(&pf->pdev->dev, "PF reset failed: %d\n", ret);
+		return ret;
+	}
+
+	pf->pfr_count++;
+	return ret;
+}
+
 /**
  * i40e_init_recovery_mode - initialize subsystems needed in recovery mode
  * @pf: board private structure
@@ -14792,14 +14837,22 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	/* Reset here to make sure all is clean and to define PF 'n' */
 	i40e_clear_hw(hw);
-	if (!i40e_check_recovery_mode(pf)) {
-		err = i40e_pf_reset(hw);
-		if (err) {
-			dev_info(&pdev->dev, "Initial pf_reset failed: %d\n", err);
-			goto err_pf_reset;
-		}
-		pf->pfr_count++;
+
+	err = i40e_set_mac_type(hw);
+	if (err) {
+		dev_warn(&pdev->dev, "unidentified MAC or BLANK NVM: %d\n",
+			 err);
+		goto err_pf_reset;
 	}
+
+	err = i40e_pf_loop_reset(pf);
+	if (err) {
+		dev_info(&pdev->dev, "Initial pf_reset failed: %d\n", err);
+		goto err_pf_reset;
+	}
+
+	i40e_check_recovery_mode(pf);
+
 	hw->aq.num_arq_entries = I40E_AQ_LEN;
 	hw->aq.num_asq_entries = I40E_AQ_LEN;
 	hw->aq.arq_buf_size = I40E_MAX_AQ_BUF_SIZE;
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
