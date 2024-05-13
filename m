Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 767A18C468B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 19:56:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2139160871;
	Mon, 13 May 2024 17:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1T2wfymxumHV; Mon, 13 May 2024 17:56:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BF87606D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715622990;
	bh=fHLB4P3LLR8Athf1lF9bxA98BS+kC6druE+VuZ9Ddak=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3ysvuFNSmVJAfKOizuGg0RkmB1LLspJyYtVIUClnQjMVjoUeN08Q6+gC2RoXJ0n7m
	 2VzBhpOIlCarO7OJNzO6WIJaQR63lj/s/ow2Hf4QUrwfczK6NZiXB5oadocwdmjvq2
	 YAAI3fXtYi6/9AKZWX9wMAph5S0pDzH1yG6Dpd5BSsUrmrJjhq379whe61oKh4WCLZ
	 k5ECJ6E3udSIPBolXtGKETmkiBCuZDUS5XBSwqZNlsLCOqeMgzbJ9N5yNCEF91rvrG
	 txDFS5emC+GBmRBsJYSyEInUea6dZku62apjpNiIZ/d2s6Exk3cmPE4AVgbrck7RWJ
	 VORTOT+Twe2Rg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BF87606D3;
	Mon, 13 May 2024 17:56:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F0831BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16D934079F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JfLHW8cpHT93 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 17:56:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F21D740795
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F21D740795
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F21D740795
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:26 +0000 (UTC)
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44DHLLLb003625; Mon, 13 May 2024 17:56:15 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y3p7ur7qx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:14 +0000
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44DHuDFB024858;
 Mon, 13 May 2024 17:56:14 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y3p7ur7qt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:13 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 44DGuEOR020388; Mon, 13 May 2024 17:56:13 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3y2kcys0mc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:13 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 44DHu9mH64029084
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2024 17:56:11 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C0EF458054;
 Mon, 13 May 2024 17:56:09 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2391358067;
 Mon, 13 May 2024 17:56:09 +0000 (GMT)
Received: from linux.vnet.ibm.com (unknown [9.41.99.196])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 13 May 2024 17:56:09 +0000 (GMT)
From: Thinh Tran <thinhtr@linux.ibm.com>
To: netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com
Date: Mon, 13 May 2024 12:55:49 -0500
Message-Id: <20240513175549.609-3-thinhtr@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240513175549.609-1-thinhtr@linux.ibm.com>
References: <20240513175549.609-1-thinhtr@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: nvZ3nr-tanMZ4grtAlepebQWKtkv0iw8
X-Proofpoint-ORIG-GUID: mtXiZSjgOOe0vfitLn2ee893UbV1XWN1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-13_12,2024-05-10_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0
 adultscore=0 impostorscore=0 mlxscore=0 priorityscore=1501 phishscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2405010000
 definitions=main-2405130119
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=fHLB4P3LLR8Athf1lF9bxA98BS+kC6druE+VuZ9Ddak=;
 b=rNFEoaT96s8aF+/W285Djvf4HtoQxRpJ3vCJl+MevBj21RJ3dtGnHEruiwFQNQqhe4Vs
 auNGqf0zf+p3tKmDCT6dKxdH0wT/NmDelX/4P5wB2fclPA/lxvmrfXPv7uP8oZ1UvEHX
 O4Og6/cb0kspk6xVTBvTh7Zj5qgMAtXMIflMDjvvBxnWVbSo09uwtefJ7pu0DVNrYtXA
 2ugbyK/BTHFo7HmiyQ1YNMcoDt3HooFSd0wLPxP7zn39mwcAGaK1W7GQuO3BpahwG7Vg
 4MJR9rpT+gsCrSDAhW92/azkb0zg5jHxO4TdqpYrm7YT5srD9wCBmsYQUQVLltlGIb5c 2g== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=rNFEoaT9
Subject: [Intel-wired-lan] [PATCH iwl-net V2,
 2/2] i40e: Fully suspend and resume IO operations in EEH case
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
Cc: edumazet@google.com, rob.thomas@ibm.com, Thinh Tran <thinhtr@linux.ibm.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When EEH events occurs, the callback functions in the i40e, which are
managed by the EEH driver, will completely suspend and resume all IO
operations.

Fixes: a5f3d2c17b07 ("powerpc/pseries/pci: Add MSI domains")
Tested-by: Robert Thomas <rob.thomas@ibm.com>
Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 281c8ec27af2..9f71a61e0c52 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11138,6 +11138,8 @@ static void i40e_reset_and_rebuild(struct i40e_pf *pf, bool reinit,
 	ret = i40e_reset(pf);
 	if (!ret)
 		i40e_rebuild(pf, reinit, lock_acquired);
+	else
+		dev_err(&pf->pdev->dev, "%s: i40e_reset() FAILED", __func__);
 }
 
 /**
@@ -16459,7 +16461,7 @@ static pci_ers_result_t i40e_pci_error_detected(struct pci_dev *pdev,
 
 	/* shutdown all operations */
 	if (!test_bit(__I40E_SUSPENDED, pf->state))
-		i40e_prep_for_reset(pf);
+		i40e_io_suspend(pf);
 
 	/* Request a slot reset */
 	return PCI_ERS_RESULT_NEED_RESET;
@@ -16481,7 +16483,8 @@ static pci_ers_result_t i40e_pci_error_slot_reset(struct pci_dev *pdev)
 	u32 reg;
 
 	dev_dbg(&pdev->dev, "%s\n", __func__);
-	if (pci_enable_device_mem(pdev)) {
+	/* enable I/O and memory of the device  */
+	if (pci_enable_device(pdev)) {
 		dev_info(&pdev->dev,
 			 "Cannot re-enable PCI device after reset.\n");
 		result = PCI_ERS_RESULT_DISCONNECT;
@@ -16544,7 +16547,7 @@ static void i40e_pci_error_resume(struct pci_dev *pdev)
 	if (test_bit(__I40E_SUSPENDED, pf->state))
 		return;
 
-	i40e_handle_reset_warning(pf, false);
+	i40e_io_resume(pf);
 }
 
 /**
-- 
2.25.1

