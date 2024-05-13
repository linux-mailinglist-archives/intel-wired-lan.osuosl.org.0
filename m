Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BBC8C4687
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 19:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B46DC60892;
	Mon, 13 May 2024 17:56:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AzGvg2IqFtnh; Mon, 13 May 2024 17:56:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19B6F60862
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715622973;
	bh=bb5nVfg2yDPfEYdzRm119sZApL1G/cmjqb9W6ilfcgs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=afWZRk/fkTpAXfafNkVbeZL8hki61y/juSHQC+ixYXuS+VE6SvGae4mR8K3oOjPJS
	 LLsmbRbErv+FRp8FuiI1sKy8z8ml5qZhthEhdeV6Vsi/g5Gdeiy06oK5rNTyFGvkKM
	 2d6BlhC0N9Cyn3ZC7IxgA7tA4hoNKviTMPIuCp9BQZKKnMZxP83j4rrZKDMIXINIbA
	 dMrl3cnpjpFlneoCk4dwJbCUAOgpyZCMy+mAtsH6XEoUEXLckNdksxg9v3Tl5jfoz7
	 scC+9T+l7+4smPiO7eKUO1ytOicf3RFG5q1Bs07kogRghhO1MrlPGr0+aBMcDtHo0f
	 +NGoLJ0eyLaYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19B6F60862;
	Mon, 13 May 2024 17:56:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 01CD91BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB34C825B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XBZNrEMnpYfq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 17:56:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6175682564
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6175682564
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6175682564
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:09 +0000 (UTC)
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44DHHaYC019056; Mon, 13 May 2024 17:56:04 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y3q4hg2ud-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:04 +0000
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44DHu3TZ012368;
 Mon, 13 May 2024 17:56:04 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y3q4hg2ua-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:03 +0000
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 44DHWXej002252; Mon, 13 May 2024 17:56:02 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3y2m0p0v5b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:02 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 44DHtxb025821780
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2024 17:56:01 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 695C55804E;
 Mon, 13 May 2024 17:55:59 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BCE0858055;
 Mon, 13 May 2024 17:55:58 +0000 (GMT)
Received: from linux.vnet.ibm.com (unknown [9.41.99.196])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 13 May 2024 17:55:58 +0000 (GMT)
From: Thinh Tran <thinhtr@linux.ibm.com>
To: netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com
Date: Mon, 13 May 2024 12:55:47 -0500
Message-Id: <20240513175549.609-1-thinhtr@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: k71oce3T2qYAnC5KFqL6gQJEJMwmh9Yq
X-Proofpoint-GUID: DdH1lbPWu9Ie0zJPf2HVENEFCkckX8gb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-13_12,2024-05-10_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 mlxlogscore=682 spamscore=0 clxscore=1015 phishscore=0 malwarescore=0
 mlxscore=0 adultscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405130119
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=bb5nVfg2yDPfEYdzRm119sZApL1G/cmjqb9W6ilfcgs=;
 b=n5UhJLesKLtt/Irse/yUHVasI9eqviu8cDybpNnCv78Iw8Q6t1kPGqAek6PCAMSm53xI
 Jao9lu8vitb/JWc4RdGdZ9Qxl59HDQuly52fgzfnkgZE0i09cUPmSqH+Yb465IhlFa/F
 zPL2fJ42ogI0G+IB/MRULEmZVAu0RqGsv/CdY09z2XWY3IkpbHKJY0ZgaCZAgpBJ2fOs
 zCaj7fwJuhJkG8QMYietPoPxo4D5x6FvIvjAzA2QunWyjHRTARWV08WCF2nIlqYbuZj9
 AkSXqH1sm7/R4vCjLtBKJlGUYCGUbZAwmSQbSUuwaUX02U1d99iHPycdxwagcrcHgb09 eA== 
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=n5UhJLes
Subject: [Intel-wired-lan] [PATCH iwl-net V2,
 0/2] Fix repeated EEH reports in MSI domain
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

The patch fixes an issue where repeated EEH reports with a single error
on the bus of Intel X710 4-port 10G Base-T adapter in the MSI domain
causes the device to be permanently disabled.  It fully resets and
restarts the device when handling the PCI EEH error.

Two new functions, i40e_io_suspend() and i40e_io_resume(), have been
introduced.  These functions were factored out from the existing
i40e_suspend() and i40e_resume() respectively.  This factoring was
done due to concerns about the logic of the I40E_SUSPENSED state, which
caused the device not able to recover.  The functions are now used in the
EEH handling for device suspend/resume callbacks.

- In the PCI error detected callback, replaced i40e_prep_for_reset()
  with i40e_io_suspend(). The change is to fully suspend all I/O
  operations
- In the PCI error slot reset callback, replaced pci_enable_device_mem()
  with pci_enable_device(). This change enables both I/O and memory of 
  the device.
- In the PCI error resume callback, replaced i40e_handle_reset_warning()
  with i40e_io_resume(). This change allows the system to resume I/O 
  operations

v2: fixed typos and split into two commits

Thinh Tran (2):
  i40e: fractoring out i40e_suspend/i40e_resume
  i40e: Fully suspend and resume IO operations in EEH case

 drivers/net/ethernet/intel/i40e/i40e_main.c | 257 +++++++++++---------
 1 file changed, 140 insertions(+), 117 deletions(-)

-- 
2.25.1

