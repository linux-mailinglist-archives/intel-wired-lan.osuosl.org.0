Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2CE8C6D79
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 23:07:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86A4682188;
	Wed, 15 May 2024 21:07:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q2Tn619wBmZ2; Wed, 15 May 2024 21:07:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B24E982159
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715807266;
	bh=fEmp8SdkykMnHlhu8WJmsie23k6v1/njxSQO7Bfp1fU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=E+bmRWAlV6I7OysMI6DoFTWnUMyqBq25xgsCpwdPxRk/7+eDQWyfwF3tnNmA3rlmU
	 5r1kQK7UUMt+2ATRVm0dOKmITzIRO9JCe/b+Id+sIEthnmz8DYrAIQdTMcexETSWfM
	 8aObkW5ma/EvZurf/91M+/88v6a8/aGGeyPxHLhbEMrUFzGzRPgIWrz/hLyd6IXhtn
	 uSzqQoIUzzqqTQE+4YYbfQ4MMDgGEHgIvh4fJ2aCbSRluIR7F5XphvH/rCVF4TDVRW
	 zR7Mn0BF6oXK+plsp1/PXYGkxZPXuW0h/yMwvJbgK19le/BZ3B6HL98VUAOa0ZUMhO
	 7M9pkFy0uc0yw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B24E982159;
	Wed, 15 May 2024 21:07:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA5F61BF57F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 21:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D616260C06
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 21:07:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hk_CSXDjtaHN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 21:07:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE45060C05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE45060C05
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE45060C05
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 21:07:42 +0000 (UTC)
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44FKpFno032430; Wed, 15 May 2024 21:07:29 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y53keg4wf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 May 2024 21:07:29 +0000
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44FL7SU2025096;
 Wed, 15 May 2024 21:07:28 GMT
Received: from ppma13.dal12v.mail.ibm.com
 (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y53keg4wb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 May 2024 21:07:28 +0000
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
 by ppma13.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 44FJNBr4029571; Wed, 15 May 2024 21:07:28 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
 by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 3y2n7kwjbq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 May 2024 21:07:28 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com
 [10.241.53.101])
 by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 44FL7Ovr33227134
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 May 2024 21:07:26 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2D4905805C;
 Wed, 15 May 2024 21:07:24 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EA1EF58051;
 Wed, 15 May 2024 21:07:23 +0000 (GMT)
Received: from linux.vnet.ibm.com (unknown [9.41.99.196])
 by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Wed, 15 May 2024 21:07:23 +0000 (GMT)
From: Thinh Tran <thinhtr@linux.ibm.com>
To: netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 pmenzel@molgen.mpg.de
Date: Wed, 15 May 2024 16:07:03 -0500
Message-Id: <20240515210705.620-1-thinhtr@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: we3XOqy5_0dY0P8KZZmsq8RwZi7lHzTj
X-Proofpoint-ORIG-GUID: PKC2rlUkkVPzpcSxwQn3Ht_ioDdGy-wO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-15_13,2024-05-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=740
 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405150150
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=fEmp8SdkykMnHlhu8WJmsie23k6v1/njxSQO7Bfp1fU=;
 b=oK3t0s5K4qovTr59fpnZUZm6eKK8hiYglAXjQjGc9ZZEokXxxkFTMdo4Sp0OBA0es/5V
 QCaMbIizIvoE6KDMmr+h1d5bie/6uxcB6cMsNMdPdDg57kDQPbSDv3uaFbBE/aKz/gDL
 WGFUUUmhzhrbH6vJLAQqBrYGvhaDZWCWyEfbFOqrqpLyZkr0OMN/vrLIuaQwO8zfjBgn
 E0CDLDj2cQXbaSDGIXU/h6s0zH7V/k30EDL2lWPEfV9Bk5nDKWCgOVedXoRFM+IA6pY8
 IHtEgLV21nRjU28myzLfJdsNAKU7skjLyF7nREpwlfa28qxpIG7wl94lekWj2q45SnIY pQ== 
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=oK3t0s5K
Subject: [Intel-wired-lan] [PATCH iwl-net V4,
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
cause the device to be permanently disabled.  It fully resets and
restarts the device when handling the PCI EEH error.

v4: corrected another typos.
v3: moved text commit messages from the cover letter to appropriate
    patches.
v2: fixed typos and split into two commits

Thinh Tran (2):
  i40e: factoring out i40e_suspend/i40e_resume
  i40e: Fully suspend and resume IO operations in EEH case

 drivers/net/ethernet/intel/i40e/i40e_main.c | 257 +++++++++++---------
 1 file changed, 140 insertions(+), 117 deletions(-)

-- 
2.25.1

