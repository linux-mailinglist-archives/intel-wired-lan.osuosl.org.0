Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B858C01590
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 15:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E324B84268;
	Thu, 23 Oct 2025 13:25:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jYzCsEzwdMYR; Thu, 23 Oct 2025 13:25:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6823A84208
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761225920;
	bh=6+77b2eEXvPG7tPG9Q4RTZwyG22J7fW9kMUdmX0fSlM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KJKGn8PDRGjgSkbe9yu5F0X0O9N1JA/QdTzhndHh7XPJTsyPNg591e2ZJiOCxL/Hh
	 yTVXE6yuCQtLonno3in8t19RIMxpJkdyoDLzJi7nw2icOy+NIFr+ZLkHePYWNwtS3D
	 94YkxIJiX9hrwR5fXKq4cjSdvzpihEQ53B9vBIL/Rxba+d9k2+zFBKLaN5GKjRnVoy
	 YGSc0Y8tcWyvUzkd/eYxg6bAodKCTjzLRzPCM7jqt+YA52S0nlR7V+Lell3WEdqvWY
	 zv00r+SvNFMQQi8a5/O+ET2yeky1MeWUihMaP7qrsc96eP3IVtvneyG2kDchih8f2z
	 J3dqg/VLwD7TA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6823A84208;
	Thu, 23 Oct 2025 13:25:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CC9543F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 13:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5EADA41073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 13:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vepc7rdCrxiw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Oct 2025 13:25:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6133441071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6133441071
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6133441071
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 13:25:17 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59NC8aD2025025;
 Thu, 23 Oct 2025 13:25:11 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49xvd0tfjg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Oct 2025 13:25:11 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59NCOXW0012050; Thu, 23 Oct 2025 13:25:10 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 49v1bet7vc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Oct 2025 13:25:10 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59NDOxMt039830;
 Thu, 23 Oct 2025 13:25:10 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 49v1bet7v1-1; Thu, 23 Oct 2025 13:25:10 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Thu, 23 Oct 2025 06:25:02 -0700
Message-ID: <20251023132507.1102549-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510020000
 definitions=main-2510230122
X-Proofpoint-ORIG-GUID: PplxOYSXDZHQnPcfPYZmQx9wvuMe91VW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDA3MyBTYWx0ZWRfX4ScV1/CwqOnE
 ppyV9SruUThjCMrO+3aQnRJiPqd3hnfAB35Gh4N9JHnoY9KWQ1kcq8szehF4AZPEOHuqp9LTwG8
 8EYkuXmln76RuqiJ3Owkj/+lFRt8VY+DGSyMsUmxbH7YtvV90dIT0QysFDhaUXbn0r/xp7kl5Pn
 gnQEhy9mz4uGa6N3Xqkvf6Pcyasn2Tf/mBCofOfXWeRV6bbnAj/23Z7HBCWMzJKdR19fmosZ4Wh
 zgZDV+wUfVAlEpNCxQ3dMIWhn2lPk4u4DfYWSgTv01SEDjQIHpcwCGy0J+FZxyXcc8ldowSY+xJ
 F+VXhSPdY/UiAyO61h3TcZZvQhzloXFGYUG0AIdUXQerWGHnjBRmmrcUsX8OmpkCNm/kA0kZRB7
 IZSUy06XPIaNR5w73wQW9hQd+mq1Og==
X-Proofpoint-GUID: PplxOYSXDZHQnPcfPYZmQx9wvuMe91VW
X-Authority-Analysis: v=2.4 cv=D9RK6/Rj c=1 sm=1 tr=0 ts=68fa2cb7 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8 a=VwQbUJbxAAAA:8
 a=WBbdE9CXIwfSKu4_ZZ4A:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=6+77b2eEXvPG7tPG9Q4RTZwyG22J7
 fW9kMUdmX0fSlM=; b=Kq6hfG7R/RIh/H+6FZPjK12/G96DPNSgNPMCD2IF7+iGy
 usZ0LZb4V5J23xrMop41ixPcQ0msc9uPHASvXeuNHqkbpbLaS+0fLmI9yZIn/RSo
 IpnKn28Apo/8/By7NF7o+lqUpcpCUfCvdD2tB3a0KREA+hyp5Q4ooi358qvdsh8M
 3A8XFBh7WyUsP6tsGHeWBDVtqfDkJa8JYs+tQE5XP4YOnQzxlbqlW2e7MOFySSLA
 Tm2Tx/xbQ7OoFWTx8POMDPuIN/FMgNQ4KodxJ/k9lt1Up/3F7gVV2sC9tr8QqJJp
 KOU1j4ZxjhNkYyexMJrmlOtr8vIpUnMIgXHoE+JAw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=Kq6hfG7R
Subject: [Intel-wired-lan] [PATCH net-next v2 1/2] idpf: correct queue index
 in Rx allocation error messages
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

The error messages in idpf_rx_desc_alloc_all() used the group index i
when reporting memory allocation failures for individual Rx and Rx buffer
queues. The correct index to report is j, which represents the specific
queue within the group.

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
v1 -> v2
no change only added Reviewed-by:
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 828f7c444d30..e29fc5f4012f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -923,7 +923,7 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 			if (err) {
 				pci_err(vport->adapter->pdev,
 					"Memory allocation for Rx Queue %u failed\n",
-					i);
+					j);
 				goto err_out;
 			}
 		}
@@ -940,7 +940,7 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 			if (err) {
 				pci_err(vport->adapter->pdev,
 					"Memory allocation for Rx Buffer Queue %u failed\n",
-					i);
+					j);
 				goto err_out;
 			}
 		}
-- 
2.50.1

