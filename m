Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C1F8AEA94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 17:17:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 709FE81F7B;
	Tue, 23 Apr 2024 15:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LNGwMYx4pCZJ; Tue, 23 Apr 2024 15:17:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45F8A81F81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713885429;
	bh=mJWg1YY69LAOTpXjNlTVn6/Zflw/uBJW6Fr5/CtkIJA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oyTWul0umjoyN5hPBHPpPoEa0a/NqDTogQNxqlz5UHmBUj2ZVm6ld2SEe9G7qpuw7
	 AlG8VJJm7tRKn8ZAWPOV9U5UrkePOFAsanlcMDNJOqrb5UdVjKKogTy3bFzTGzW90g
	 k5PxejbUBNke4MnYdmtV3uOAw1GUMmTuLZHM5J4k9c625njGhtfmng7j/JZkASdHoG
	 67nlNkxCNChksQc7KXY+riHVoJSAVWV0Qlm/si6ki11efVG+Usoxy17VbT76JC1tMv
	 ub4+DhcZienIhPXfQR9YWvzsErdRq8tCjdVep1b+SRoxqlak5Vej2ZT9AFCPlfN2Tl
	 Ku6oUvO9lmyUQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45F8A81F81;
	Tue, 23 Apr 2024 15:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 313531BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 03:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 124F040594
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 03:35:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q8SVjFEJy4oK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 03:35:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7CA1C40590
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CA1C40590
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CA1C40590
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 03:35:45 +0000 (UTC)
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43N3WYu9004390; Tue, 23 Apr 2024 03:35:40 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xp55u803k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Apr 2024 03:35:39 +0000
Received: from m0353726.ppops.net (m0353726.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43N3Zdt6010538;
 Tue, 23 Apr 2024 03:35:39 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xp55u803f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Apr 2024 03:35:39 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 43N3KT0f021021; Tue, 23 Apr 2024 03:35:38 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xmrdyugfs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Apr 2024 03:35:37 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com
 [10.241.53.102])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 43N3ZYwp48300530
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Apr 2024 03:35:37 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DE78A58056;
 Tue, 23 Apr 2024 03:35:34 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C8B225805A;
 Tue, 23 Apr 2024 03:35:33 +0000 (GMT)
Received: from linux.vnet.ibm.com (unknown [9.67.140.7])
 by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 23 Apr 2024 03:35:33 +0000 (GMT)
From: Thinh Tran <thinhtr@linux.ibm.com>
To: netdev@vger.kernel.org, kuba@kernel.org
Date: Mon, 22 Apr 2024 22:34:59 -0500
Message-Id: <20240423033459.375-1-thinhtr@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 8J1XINCSbU2yE1A0jbw6vsq_obOefjhu
X-Proofpoint-GUID: chalIONgVCMK_JL0VEtpmeDLyMY_nAd1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-23_02,2024-04-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1011
 priorityscore=1501 impostorscore=0 mlxscore=0 suspectscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404230009
X-Mailman-Approved-At: Tue, 23 Apr 2024 15:17:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=mJWg1YY69LAOTpXjNlTVn6/Zflw/uBJW6Fr5/CtkIJA=;
 b=Fwxn7bYbBBsxnPGQx9OOb8k3Zlvx+bqQePbnCQFEsm8q4nuQCBlf/9u/IFf8huFmFxSe
 83/2GkUYznANXYbCaSJEvpVjkTBvGYj3crlI4a61Yr+yJ7VOxM2XWqFPDJdO5Y+UvFfQ
 SoN2xJ1281+UhQ+4hD7kRn6DpkxRZKDQ7Llppr86BnJU3GTwWH5LijUK9rbmx79SYauk
 xay+UDaGwN4nQapOinQSJ5IZOLoQ5kf33WBOX43HwVAf4Eafwxjvd0A7VDwS689TGmji
 /zU3rVkhuFcPTi7whE7lMRszgHnreyMGWcL9IiMbT650HGzUT/vSJlciFIP7ZSqClvzP Mg== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=Fwxn7bYb
Subject: [Intel-wired-lan] [PATCH] net/i40e: Fix repeated EEH reports in MSI
 domain
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
Cc: Robert Thomas <rob.thomas@ibm.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, Thinh Tran <thinhtr@linux.ibm.com>,
 anthony.l.nguyen@intel.com, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The patch fixes an issue when repeated EEH reports with a single error
on the bus of Intel X710 4-port 10G Base-T adapter, in the MSI domain
causing the devices to be permanently disabled.  It fully resets and
restart the devices when handling the PCI EEH error.

Two new functions, i40e_io_suspend() and i40e_io_resume(), have been
introduced.  These functions were refactor from the existing
i40e_suspend() and i40e_resume() respectively.  This refactoring was
done due to concerns about the logic of the I40E_SUSPENSED state, which
caused the device not able to recover.  The functios are now used in the
EEH handling for device suspend/resume callbacks.

- In the PCI error detected callback, replaced i40e_prep_for_reset()
  with i40e_io_suspend(). The chance is to fully suspend all I/O
  operations
- In the PCI error slot reset callback, replaced pci_enable_device_mem()
  with pci_enable_device(). This change enables both I/O and memory of 
  the device.

- In the PCI error resume callback, replace i40e_handle_reset_warning()
  with i40e_io_resume(). This change allows the system to resume I/O 
  operations


Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>
Tested-by: Robert Thomas <rob.thomas@ibm.com>

---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 29 ++++++++++++++++-----
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 48b9ddb2b1b3..58418aa9231e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -54,6 +54,9 @@ static int i40e_get_capabilities(struct i40e_pf *pf,
 				 enum i40e_admin_queue_opc list_type);
 static bool i40e_is_total_port_shutdown_enabled(struct i40e_pf *pf);
 
+static int i40e_io_suspend(struct i40e_pf *pf);
+static int i40e_io_resume(struct i40e_pf *pf);
+
 /* i40e_pci_tbl - PCI Device ID Table
  *
  * Last entry must be all 0s
@@ -11138,6 +11141,8 @@ static void i40e_reset_and_rebuild(struct i40e_pf *pf, bool reinit,
 	ret = i40e_reset(pf);
 	if (!ret)
 		i40e_rebuild(pf, reinit, lock_acquired);
+	else
+		dev_err(&pf->pdev->dev, "%s: i40e_reset() FAILED", __func__);
 }
 
 /**
@@ -16327,7 +16332,7 @@ static pci_ers_result_t i40e_pci_error_detected(struct pci_dev *pdev,
 
 	/* shutdown all operations */
 	if (!test_bit(__I40E_SUSPENDED, pf->state))
-		i40e_prep_for_reset(pf);
+		i40e_io_suspend(pf);
 
 	/* Request a slot reset */
 	return PCI_ERS_RESULT_NEED_RESET;
@@ -16349,7 +16354,8 @@ static pci_ers_result_t i40e_pci_error_slot_reset(struct pci_dev *pdev)
 	u32 reg;
 
 	dev_dbg(&pdev->dev, "%s\n", __func__);
-	if (pci_enable_device_mem(pdev)) {
+	/* enable I/O and memory of the device  */
+	if (pci_enable_device(pdev)) {
 		dev_info(&pdev->dev,
 			 "Cannot re-enable PCI device after reset.\n");
 		result = PCI_ERS_RESULT_DISCONNECT;
@@ -16411,8 +16417,7 @@ static void i40e_pci_error_resume(struct pci_dev *pdev)
 	dev_dbg(&pdev->dev, "%s\n", __func__);
 	if (test_bit(__I40E_SUSPENDED, pf->state))
 		return;
-
-	i40e_handle_reset_warning(pf, false);
+	i40e_io_resume(pf);
 }
 
 /**
@@ -16521,11 +16526,16 @@ static void i40e_shutdown(struct pci_dev *pdev)
 static int __maybe_unused i40e_suspend(struct device *dev)
 {
 	struct i40e_pf *pf = dev_get_drvdata(dev);
-	struct i40e_hw *hw = &pf->hw;
 
 	/* If we're already suspended, then there is nothing to do */
 	if (test_and_set_bit(__I40E_SUSPENDED, pf->state))
 		return 0;
+	return i40e_io_suspend(pf);
+}
+
+static int i40e_io_suspend(struct i40e_pf *pf)
+{
+	struct i40e_hw *hw = &pf->hw;
 
 	set_bit(__I40E_DOWN, pf->state);
 
@@ -16572,11 +16582,16 @@ static int __maybe_unused i40e_suspend(struct device *dev)
 static int __maybe_unused i40e_resume(struct device *dev)
 {
 	struct i40e_pf *pf = dev_get_drvdata(dev);
-	int err;
 
 	/* If we're not suspended, then there is nothing to do */
 	if (!test_bit(__I40E_SUSPENDED, pf->state))
 		return 0;
+	return i40e_io_resume(pf);
+}
+
+static int i40e_io_resume(struct i40e_pf *pf)
+{
+	int err;
 
 	/* We need to hold the RTNL lock prior to restoring interrupt schemes,
 	 * since we're going to be restoring queues
@@ -16588,7 +16603,7 @@ static int __maybe_unused i40e_resume(struct device *dev)
 	 */
 	err = i40e_restore_interrupt_scheme(pf);
 	if (err) {
-		dev_err(dev, "Cannot restore interrupt scheme: %d\n",
+		dev_err(&pf->pdev->dev, "Cannot restore interrupt scheme: %d\n",
 			err);
 	}
 
-- 
2.39.3

