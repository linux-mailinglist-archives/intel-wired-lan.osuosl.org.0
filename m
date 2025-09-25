Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA96BA0F81
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 20:02:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81FBC414FA;
	Thu, 25 Sep 2025 18:02:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hlizUopueQBO; Thu, 25 Sep 2025 18:02:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1A5441198
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758823350;
	bh=2YkWXtt+/iNmBo0YKAv/upVPd12D2aqpm9C0JlblUaY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KgOiRgPRCO1GZiwwNdkPHe+aoNTnjfnatRqTntJNc9CCbddSslMb5rM7RuFMMU6MF
	 g/pnq75oIPhTAae3m7hjM584mC/PY7bldO7Cbpmq4v1ir7kOWc+8/g/Z+WWRpiKpeC
	 svvWkdDrp/btj2q+9d5Gx6vnEa/nPI7dPKkO7tRvKqfxqQlANDKmslFGw34o66LJ+r
	 nS3Xcrf8YmLeNghTfmMQCSnUpeUcYubio5JWJZjDN7pFoKvzpCpbDf9QadbivPM2wJ
	 Zjf3BDzwXblVNAB74gMEY4Bg1yW+txCGsoVuPrNeI+nV5p1+l3hiM30ZVfcMpGGdsq
	 KwDU0dLLEp2Bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1A5441198;
	Thu, 25 Sep 2025 18:02:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 65626199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 18:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C1588397F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 18:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KgPNb_nAuH3h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 18:02:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5975F83C8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5975F83C8B
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5975F83C8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 18:02:26 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PFuKoV010461;
 Thu, 25 Sep 2025 18:02:18 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 499jpdtfey-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Sep 2025 18:02:17 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 58PHjCxK014657; Thu, 25 Sep 2025 18:02:17 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 49a952fggy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Sep 2025 18:02:17 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 58PI2GJs002050;
 Thu, 25 Sep 2025 18:02:16 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 49a952fgfr-1; Thu, 25 Sep 2025 18:02:16 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: krishneil.k.singh@intel.com, alan.brady@intel.com,
 aleksander.lobakin@intel.com, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: alok.a.tiwari@oracle.com
Date: Thu, 25 Sep 2025 11:02:10 -0700
Message-ID: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2509250167
X-Proofpoint-GUID: k1rCsmWWRNMsQDPyhidLnwUPFUX7zwcL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxMiBTYWx0ZWRfXyy/ei0Ix7dju
 ukfYwNrULI0LUnSXF1rIibOq6oD6zQ9bx0FKI9AdB8DMd6d2LXfwd2gMm8aIotPWlo+IgOVrY4S
 AOgcUmYy9Wsyxf4hwffcfIlQgRVwjYQkA1awD8dI0fZuzTSG7UsUt3XLVt7nTcQEX4zzlBECH2v
 owFBY/3Ge56cMVJ70nlGLpQFnyQbknmYX1pC0aKsWLCZvwrKHmccPsG5ZH3m5T594Zco7PcbQ+Q
 KZyEsAuCTlPghprsvlx+PigpP3QQY/3GxOcv1oEw6217S87+HZTSX9W8kcxEPe1u9nmeV4HWAgi
 +FhM9uyQpt8ROaj0j6pesE7i75pSS74HH68ppOVHJLu7irIcNY+thn7n8f0x7HlDpzPzRr47yzd
 xv6UwRnZQDEx2N+U7PR9Z77n0YVTZg==
X-Authority-Analysis: v=2.4 cv=aJPwqa9m c=1 sm=1 tr=0 ts=68d583a9 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=yJojWOMRYYMA:10 a=yPCof4ZbAAAA:8 a=OrEgqHaMTj2tCEy2Q7sA:9 cc=ntf
 awl=host:12090
X-Proofpoint-ORIG-GUID: k1rCsmWWRNMsQDPyhidLnwUPFUX7zwcL
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=2YkWXtt+/iNmBo0YKAv/upVPd12D2
 aqpm9C0JlblUaY=; b=b1MKHSP2MjFgriKm1ajWP2S/3X3vb3qR9/rTubjTTJ6EL
 A9ABLJEVF5LyWIBOTuCuDul3JJDuaNuBABxTos6UUyqeH7rEwGTOyHoorszUZh26
 0qiz2Qrwm2VzXJraDOdrctxF/MdiiRl6+P0Mu/lkcHsHHmntxbttZGn/z9e9bmkQ
 n0MpgxSI8zCxbcQ30a6sLhV36reR9RVm1jnoYNwp6ufqII3s85Gwv9AA7GfG09tF
 jFLnlELilPwFgzMKgVPzkVsYH2PrY+unDBowcXzLPmAUk1D0ciKeRIw3VGk6EemT
 Typx/34WmC4yILgtkhxS7g+MoA40KiuoAW4hBDBgw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=b1MKHSP2
Subject: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free function
 for dma_alloc_coherent
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

The mailbox receive path allocates coherent DMA memory with
dma_alloc_coherent(), but frees it with dmam_free_coherent().
This is incorrect since dmam_free_coherent() is only valid for
buffers allocated with dmam_alloc_coherent().

Fix the mismatch by using dma_free_coherent() instead of
dmam_free_coherent

Fixes: e54232da1238 ("idpf: refactor idpf_recv_mb_msg")
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 6330d4a0ae07..c1f34381333d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -702,9 +702,9 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
 		/* If post failed clear the only buffer we supplied */
 		if (post_err) {
 			if (dma_mem)
-				dmam_free_coherent(&adapter->pdev->dev,
-						   dma_mem->size, dma_mem->va,
-						   dma_mem->pa);
+				dma_free_coherent(&adapter->pdev->dev,
+						  dma_mem->size, dma_mem->va,
+						  dma_mem->pa);
 			break;
 		}
 
-- 
2.50.1

