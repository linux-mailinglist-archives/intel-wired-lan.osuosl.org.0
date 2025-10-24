Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B911C07BC2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Oct 2025 20:25:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4DEB40BF6;
	Fri, 24 Oct 2025 18:25:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YfRJF9_oSxBs; Fri, 24 Oct 2025 18:25:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27DE840BEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761330343;
	bh=XkKqZOV8sSSGZVqzvceBZEcc7n8sQ98xxcCJSbJ8wEM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3mIicB5rZ570Cdxmqt+lQXkmoEFdA3fG7/NYNlado3Fpt01omQKPhRx0p0a7/+CdA
	 qYq9srkf3yq4EZ79uCozsG7s/L4A0BOy3u/HNgrFZyJVp09ju5FZTNIdaBZiD1D7a1
	 zSghqBbskLZQntJdmtA2sIUAJXNQxdmHAyiALelxDktP2kKiQUEOOXABiSLmMAv2jU
	 aaJFV4iYTIr560418VA9QvnIaXUBFYt27KeSWTJX0vLzuHcBmMAo33DXBL/FAMYWFH
	 nLb9fh7sksNaSopJIUxfeYaOPqh1sZRt9M0uM3o4RFjgn2vrMNmddy9zJMUS+oKq+J
	 1iJ79OhiFbShQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27DE840BEE;
	Fri, 24 Oct 2025 18:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 640FD19D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 18:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42A6060D8A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 18:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MP0PmWdOovyR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 18:25:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1BA9360D84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BA9360D84
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BA9360D84
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 18:25:40 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59OINUkr012082;
 Fri, 24 Oct 2025 18:25:34 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49xvd0wcm0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Oct 2025 18:25:33 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59OHwduC006350; Fri, 24 Oct 2025 18:25:32 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 49xwkarut9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Oct 2025 18:25:32 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59OIPWHP016656;
 Fri, 24 Oct 2025 18:25:32 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 49xwkarus9-1; Fri, 24 Oct 2025 18:25:32 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: aleksander.lobakin@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Fri, 24 Oct 2025 11:25:23 -0700
Message-ID: <20251024182528.1480729-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 mlxscore=0
 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510020000
 definitions=main-2510240166
X-Proofpoint-ORIG-GUID: fySugU6l_WVzUeeAOGR9ZKiKGisc8VqX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDA3MyBTYWx0ZWRfX5tyTx+m0H0HS
 1i8wctG7IJzypw0CPh1NotZFkS/8/Bi9f9dXH/Jr0LFYcx1wOD9vziSysqk/jF7dhf8j0c6DdPk
 vvyt3TmIzNyDvXG5RQwz4aZcQP9+C+4x6m1WtluPQrRghFNFX9vaSajErVUBEh+G7ZO4k5BbSn9
 4y0fN152LzJNNKpWac96uQEn/guPOHSfl+uVR94n9VuYLAgs75XfGFTH1yka9Q5QR7BAw72XPco
 A67AK3KsNdK6jgataMkxrPfCzA1qUH7MiaRU00sj9PR3nbgth5sA/r7DJhV3s0CAlYMq0unYI9H
 4pxLUJiAvoagabKgGgKp+6HtMmQp9BRGBqak/OsHciAnsfMbv9MbZSoJU8bzkojUllSi0M0tJEk
 NBQx+9XqoplxjUz7e2BEvWHcPAqAClsWU8efCcjm/o4S366dRcY=
X-Proofpoint-GUID: fySugU6l_WVzUeeAOGR9ZKiKGisc8VqX
X-Authority-Analysis: v=2.4 cv=D9RK6/Rj c=1 sm=1 tr=0 ts=68fbc49e b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8 a=VwQbUJbxAAAA:8
 a=bN0ZCpVs3yKAuBo6K4UA:9 cc=ntf awl=host:12092
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=XkKqZOV8sSSGZVqzvceBZEcc7n8sQ
 98xxcCJSbJ8wEM=; b=nOTn9/FBkuwRXVtkFCXiwQn/jDWJIeX0/mNvmmvc2cdl2
 P3X7B2ySGo2+mSKReiKqMbLlK38dW4o9vHHd+81xZTXl91whjIBdkp29ozT3UcWx
 KRIx2eKTFMn4Qge/8rv56I8cXKSsuuZauMvEXjgPKFCnVmuHQN08d0vRVvpYq0Mu
 IjjDAQwc5Ngwo5dY99QsTskzsA2hC7tiYVwcWGq+n45rCW9CBL5FgPE//qH7SMvk
 C1Ae7gbVXwv345b9a9wZRcyB8qk7YfLyrlc5CSVQzv/V+avLZgWcXFixvlhsCuB+
 9F/tGhVE6YssTO/fdmrBzel+Zdlu3a99ElpFnWEAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=nOTn9/FB
Subject: [Intel-wired-lan] [PATCH net-next v3] idpf: correct queue index in
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
queues. This is incorrect.

Update the messages to use the correct queue index j and include the
queue group index i for clearer identification of the affected Rx and Rx
buffer queues.

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
v1 -> v2  
no change added Reviewed-by: Simon
v2 -> v3
added queue group index i as suggested by Alexander.
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 828f7c444d30..ed0383ab5979 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -922,8 +922,8 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 			err = idpf_rx_desc_alloc(vport, q);
 			if (err) {
 				pci_err(vport->adapter->pdev,
-					"Memory allocation for Rx Queue %u failed\n",
-					i);
+					"Memory allocation for Rx queue %u from queue group %u failed\n",
+					j, i);
 				goto err_out;
 			}
 		}
@@ -939,8 +939,8 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 			err = idpf_bufq_desc_alloc(vport, q);
 			if (err) {
 				pci_err(vport->adapter->pdev,
-					"Memory allocation for Rx Buffer Queue %u failed\n",
-					i);
+					"Memory allocation for Rx Buffer Queue %u from queue group %u failed\n",
+					j, i);
 				goto err_out;
 			}
 		}
-- 
2.50.1

