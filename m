Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453148C5C36
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 22:22:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4B62417C6;
	Tue, 14 May 2024 20:22:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8lTbRB42DMml; Tue, 14 May 2024 20:22:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4948241819
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715718142;
	bh=0FqgahBiv+WORr4PJPQxt7siGRxXm49Po1/1+V0+izk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Y/biDUql3pxagqrHCzbUhfwvKfPhh3RS+T6haFcXG4HGkBIHrxY2DsaGqccQYTxao
	 aJPKq6YYKBnPFIsj/Ed1WLzmf3XPY0X1D4/b2eE2wMlfBFJCvEnuc337eHK0va2Vig
	 sFrOChYmyj9Oj5jzbyDkJ+/J1JsuuGvck+b2bKXHnc/5WUbGsfoljb2ZIEzL88w07o
	 a3Y0qcSiVvh1SQ+SsAJgU22VfZwClE4e+kmOCuqus7HiOil+Vnm95r66Cbkgf0ZMaT
	 O9BK7AH3uwfuLjMlyeD1A2ncHsevLHdbQiipcZd4DIY1XdgFP90s63Km9RCB5ZO84B
	 y0PKFWtVBmnqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4948241819;
	Tue, 14 May 2024 20:22:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E44D61BF232
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 20:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBA3740983
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 20:22:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AFmN25Ym5S3K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 20:22:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.156.1;
 helo=mx0a-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E38F64097E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E38F64097E
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E38F64097E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 20:22:17 +0000 (UTC)
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44EJcptD029003; Tue, 14 May 2024 20:22:14 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y4e9u82t3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 May 2024 20:22:14 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44EKMDo9028550;
 Tue, 14 May 2024 20:22:14 GMT
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y4e9u82t0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 May 2024 20:22:13 +0000
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 44EHevNf018765; Tue, 14 May 2024 20:22:12 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 3y2k0tfp2q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 May 2024 20:22:12 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com
 [10.241.53.103])
 by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 44EKM9Mn56230258
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2024 20:22:11 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 128E958052;
 Tue, 14 May 2024 20:22:09 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B5A0558056;
 Tue, 14 May 2024 20:22:08 +0000 (GMT)
Received: from linux.vnet.ibm.com (unknown [9.41.99.196])
 by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 14 May 2024 20:22:08 +0000 (GMT)
From: Thinh Tran <thinhtr@linux.ibm.com>
To: netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 horms@kernel.org
Date: Tue, 14 May 2024 15:21:39 -0500
Message-Id: <20240514202141.408-1-thinhtr@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: RV9OVvwSCVNWloe5RjFtBkDx2vUKHFkd
X-Proofpoint-ORIG-GUID: IerCNVXHAkK8sAWOr5_hhSHhDKqUQ30d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-14_12,2024-05-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=822 clxscore=1015
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405140145
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=0FqgahBiv+WORr4PJPQxt7siGRxXm49Po1/1+V0+izk=;
 b=qwmGicfG7FBSnm+0QhBw3V+6pulHDvKuQIm0Xq1nL7y4jyLCiSVhWYAafD6GU+I9skXk
 g+2HGgtZkXvXSOQ8uJPJgRp0expxY85J5UiSjKXAi8aLjyhlG/fefmjRuhn7bHojww/U
 /I+2lRM72WEWPwjjt6bDy54tPyBPfcR4Lhm+Pj3wX9Ad5wu6WWsgQBQesBP8Mhi3xfJV
 F6wu5CyMw3qXYBZE4M6EFmAdS2h8hfeeRh88PUu2VBxf0dUQsL7MR4C+wbeKag6k4aqb
 kAHcr0/EJDFoKXuBrqoz0IA4a/4rsZaBLr5Nfg1T6mnkpS4xt1kKgilpPsVupk4yGQS+ /Q== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=qwmGicfG
Subject: [Intel-wired-lan] [PATCH iwl-net V3,
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

v3: moved text commit messages from the cover letter to appropriate
    patches.
v2: fixed typos and split into two commits

Thinh Tran (2):
  i40e: fractoring out i40e_suspend/i40e_resume
  i40e: Fully suspend and resume IO operations in EEH case

 drivers/net/ethernet/intel/i40e/i40e_main.c | 257 +++++++++++---------
 1 file changed, 140 insertions(+), 117 deletions(-)

-- 
2.25.1

