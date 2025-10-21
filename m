Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E84BF81DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 20:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4345D40787;
	Tue, 21 Oct 2025 18:41:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s1B1s_yE5xCs; Tue, 21 Oct 2025 18:41:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B59DB405F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761072082;
	bh=O0DqkzJD+nxHZ/2nBy8Mlk98l7KjKz3RMj06g2Pxgtk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VRncPmiaVJKdi3oTjvhE0RrqXtcy18nb3mRiJC51S0KiCr5dTYhu5nDndk9962tQr
	 oPrfPFBbr1QIwljONZqjJUnmwecHhxUxsQEALoNCIT3+Fr9HxPl/EqS0ndguo0yCIF
	 3ezqNc8yC1VVHI0UF7tnSbkk7zS9YHXp1n9dNM6dCZ25SzUKGMDCjxHhvnUJyiLFnv
	 SOWztYAaP+DGzNbnOJnrYohWOHfvwlEikDI4Jy6bM2BUNVEFPhH0Ov5wV0iXq92Hb6
	 cFkG0ciSKhmaVuFyZ2mLlLh6sURnqhAPVLf6DHCOK6wO4ANuO4hXa4tlIH7oxAhtja
	 ddk5hmVfN8yBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B59DB405F7;
	Tue, 21 Oct 2025 18:41:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 61B1F277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 18:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4817260B22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 18:41:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VC4neKTmcfk3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 18:41:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D55960B08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D55960B08
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D55960B08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 18:41:18 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LHSZKN018687;
 Tue, 21 Oct 2025 18:41:13 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49w1vdna0a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Oct 2025 18:41:12 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59LISjhO025501; Tue, 21 Oct 2025 18:41:12 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 49v1bc7esm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Oct 2025 18:41:12 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59LIfBld014153;
 Tue, 21 Oct 2025 18:41:11 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 49v1bc7es9-1; Tue, 21 Oct 2025 18:41:11 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Tue, 21 Oct 2025 11:40:54 -0700
Message-ID: <20251021184108.2390121-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-21_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 spamscore=0
 adultscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510020000
 definitions=main-2510210149
X-Proofpoint-GUID: RaanWEFhjTGwWyzrQoV2c2CnImh2PU8l
X-Proofpoint-ORIG-GUID: RaanWEFhjTGwWyzrQoV2c2CnImh2PU8l
X-Authority-Analysis: v=2.4 cv=WaEBqkhX c=1 sm=1 tr=0 ts=68f7d3c9 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=WBbdE9CXIwfSKu4_ZZ4A:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDEwNSBTYWx0ZWRfX5+dzO7vXijII
 RWx0ceUdEZqMOoknWCnNwBU9raOFTFVKv87FMdPEFXKkm7/zTMNgr3DUvTpLHF/I3WigsXkTaSF
 6EF8+KIUB26g9NvrfdhphpMi4AB+DfAvX4DQZBtWb1xykhhh2TyQSirtzd2wb5WnjuNfCU/wN4D
 E/SboknbqbhaNG/39vQL1nMS2mbF4z1OkRKJDiBsibCgBW8Pu2jiGgHXwA0czgRw6Wl3oWpHdfX
 de+3ikCLXiqHGNa71qEc41yeGVKMlfUY9A2UWCQ4lHQcaFPmRbLZP2BU4Fq3aW6AUEbsAWKvqLN
 bmFUwmDTI0jcUSTYQMGSAdQWTRiqV//4ETCpZyIZ543eg8cJMNrzO9fkEVy680tMKNtp9KVs5Bv
 XaGOuS+zFqieWQPrjf2NFY6G4UBnLA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=O0DqkzJD+nxHZ/2nBy8Mlk98l7KjK
 z3RMj06g2Pxgtk=; b=aO7UyJvP0CG/wjcxxAnkfHXUCbbQr675X3mbFxb9FZD7J
 lPY8v2yq7fvDgh3bFvESfIUKtX0BwiWu7iUa6OyhwlxZvkEGCa7j6RfdY6TaNHH4
 X0eWT6TUFYdQYt0rQbcFg9+c61PFvtjAJz9Ujt+PxEQMUek6UzIWTk+K3nx4ardR
 AmKAyD1QbQQW7HeY0+ZEzqI2rB7FAy+ZjThWMp5aCFgUp8tho7n5k5Iu2sD3ICjU
 xTrdQblhT6auPA81CPuxYElH5tW4qzvOctOBcpjdB0bBCVegM/XgZxbB4xjd1EZ7
 CpOBaSQOqAINPUUalUm6qwhg6SJ/gnN8/Q+SIV0gA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=aO7UyJvP
Subject: [Intel-wired-lan] [PATCH net-next 1/2] idpf: correct queue index in
 Rx allocation error messages
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

