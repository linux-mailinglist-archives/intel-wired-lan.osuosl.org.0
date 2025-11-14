Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 820FBC5E100
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Nov 2025 17:03:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 701F1810D5;
	Fri, 14 Nov 2025 16:03:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hv29eLh3Xxg2; Fri, 14 Nov 2025 16:03:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4BCB8401A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763136213;
	bh=7KBzqYMar8raGBq7LNnXBQEaX4aZgmfqEFaee1HkP1E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=opIPSIHOVpk0/DUSNJerD9C4Izct80PVYZGFB4pb3WNfs4TeBUxipnvIHMtHWgvnW
	 44foE2bf8NKtqy9dcoAm341YMEpY5IE6S9a+6xQZb2SCEomla+B2+zx/eovS+dBdFQ
	 LXZp+6JMWcSXpctdD6G2awgtOo17QPmzsvwsU/TSeF7jXlGAl6th+ZWM9VeTb8vFK7
	 FmzJ9mezNF2IzHyA+hFXykWSE6ndBTKvPK8+Ej2nesO881lANzc0IEJmyUmDeYgUWW
	 7ZkiSHaSUBT40yNr4sHJf95+YIM9lHxKhWqc7fcP+NhvDMajoIlg3wR2j/ku/n+4dA
	 ENoVsL8d6nyqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4BCB8401A;
	Fri, 14 Nov 2025 16:03:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6ACC7230
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 16:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53E8040BFC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 16:03:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ub4uPuX25Ea for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Nov 2025 16:03:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 53EA640DA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53EA640DA2
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53EA640DA2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 16:03:30 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AECv49t001403;
 Fri, 14 Nov 2025 16:03:25 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4adr8s9edn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 14 Nov 2025 16:03:19 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5AEEFS15022034; Fri, 14 Nov 2025 16:03:19 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a9vadpv3h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 14 Nov 2025 16:03:19 +0000
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AEG3IZB029266;
 Fri, 14 Nov 2025 16:03:18 GMT
Received: from oracle (dhcp-10-154-173-166.vpn.oracle.com [10.154.173.166])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 4a9vadpv0s-1; Fri, 14 Nov 2025 16:03:18 +0000
From: gregory.herrero@oracle.com
To: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gregory Herrero <gregory.herrero@oracle.com>
Date: Fri, 14 Nov 2025 17:03:03 +0100
Message-ID: <20251114160304.2576306-1-gregory.herrero@oracle.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511140129
X-Authority-Analysis: v=2.4 cv=VqQuwu2n c=1 sm=1 tr=0 ts=691752c8 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=9rXuIt3xGVaoFKTACzIA:9
X-Proofpoint-ORIG-GUID: vU9oM9JmRxHYy9ZW7VZbdLPD5efe2-wm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE3OCBTYWx0ZWRfX2uMUE8vU6QV5
 i66lk5VJa8+3tuHNR1Xi599A0zy3PId/Kjp3pVY4X9KleMk/1EiEJ4deidUe3VtY0Cn3bsXhzwd
 3plo10r7ZLDrrH3jsZmMlFwrfDWxcnJQsJRwzd6gJo/fArDEKhSwCkuB359HFuDybWfJfkVnGoX
 83FHnkBnfskpVBb8TohlX4Mwwuj8yGlvlcEA25Elbo8LEaXi0AlbAcIYZDuEeVjvtb4UDM+lnx5
 fYUskLrjwdJbGyq51/6aFw6I9MgOl/tarK7UOtSFubglzTqMOdBsG5Vvh/Fc8Hbzhy6XXpJgU6R
 pDDP4JnkEP1Imi24eACDbxQ9UvG9PkLNPEo/UPd8xgf2vT2Ccky0eoJc9/S3pdz8G2Uk4wLmwF9
 OChzwnnyugfPPO4wa1rETR0kglikPQ==
X-Proofpoint-GUID: vU9oM9JmRxHYy9ZW7VZbdLPD5efe2-wm
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=7KBzqYMar8raGBq7LNnXBQEaX4aZg
 mfqEFaee1HkP1E=; b=j8UpDDNZ5kEeIq5rUuBeGby6b1wCNOurvgomGcEig/1mS
 9C978H3HfKuQYrfafb+sDcVaMEr5nBrbLJaYts3Y0+4Qdg6avSYgiWQ4gnlUYfGk
 IF9S4DoVurTJjZmRAFGxrcG3Mp4MWHpp2urgnN/b12oLze/OqtwJxf7rQ47nrNGh
 SqWg4DoysO6pjPR/DSW21bcqrrf+0OqMvy3tMMamQ6wgk9pDlyTEYxaJ5YbN9t+W
 IN4lcWmgsPi89Ms1sJcCU4BZiopMutOL1JXjdpVLWSAdKIXjxcz52jShdMVBK+ut
 7jtwQ1v0hNC6HpqD5t/SH1l+8BuEcEjGNrKvcz3oQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=j8UpDDNZ
Subject: [Intel-wired-lan] [PATCH v3 0/1] i40e: additional safety check
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Gregory Herrero <gregory.herrero@oracle.com>

On code inspection, I realized we may want to check ring_len parameter
against hardware specific values in i40e_config_vsi_tx_queue() and
i40e_config_vsi_rx_queue().

v3:
- drop trailing period from the subject
- reword commit description
- remove u32 cast in i40e_config_vsi_rx_queue()
v2:
- make i40e_get_max_num_descriptors() 'pf' argument const.
- reword i40e_get_max_num_descriptors() description.
- modify commit description to explain potential behavior change.

Gregory Herrero (1):
  i40e: validate ring_len parameter against hardware-specific values

 drivers/net/ethernet/intel/i40e/i40e.h          | 17 +++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c  | 12 ------------
 .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c  |  4 ++--
 3 files changed, 19 insertions(+), 14 deletions(-)

-- 
2.51.0

