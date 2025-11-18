Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 427FFC68F1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 12:00:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3BBA60F68;
	Tue, 18 Nov 2025 11:00:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bf2zYsLtrA9G; Tue, 18 Nov 2025 11:00:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F68C60F8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763463614;
	bh=vtzw7cutTccMEE7WY+vb8GRnS9OkTCSwzPJit9gHtrI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5tgLl3aY2zfLlehvXueH/UkqtHedG8XxERWVWks3saXMd6xhPLn9yv3I0kj0EuRWI
	 gAqDXoS7WgRA+6wYs08Cp0ftqEgSs80npo8BAphxWMA8YJZU8lHnQliHnlMLQ0aRTr
	 CD8FmdFE7ZzglvS3FQeHB1GJ/5zAiNzf0iKVRv3NoICDLb9NNXPAq0Qgqeg/ynxEwI
	 jGvmK7OwlGdZRZUcJfGhk4ir2ZvU/tMpaohk6WK2NVGCYeNZpRRbt6ViAWCn29u9cr
	 tDsT7GxEyvuXOi1grEfqsrk4B1dJazN45biZJLawQaDVuBwJ3jv0cxqqUgiyXdW/mG
	 rdijspgKc0S0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F68C60F8F;
	Tue, 18 Nov 2025 11:00:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 64FDA1BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 11:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B5D940253
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 11:00:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 66iw08pMAdkf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 11:00:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 12D0F40199
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12D0F40199
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12D0F40199
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 11:00:10 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AI9CdSR024855;
 Tue, 18 Nov 2025 10:59:53 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aejbpvmav-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Nov 2025 10:59:52 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5AI8UToc004250; Tue, 18 Nov 2025 10:59:46 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4aefy8qw90-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Nov 2025 10:59:46 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AIAt1It020499;
 Tue, 18 Nov 2025 10:59:46 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 4aefy8qw8a-1; Tue, 18 Nov 2025 10:59:46 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Tue, 18 Nov 2025 02:55:21 -0800
Message-ID: <20251118105942.3163598-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 suspectscore=0 malwarescore=0 mlxscore=0 bulkscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511180087
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX4p2J4CPo7ZbA
 DksgnPE0eDIHJ6RCw8yK8dNpvRYgFRk/sGJKOz/uDH6QOioLitxcx0gKwtmanCAhVqoVck/gSoz
 wiFUbqU0lbUy32EIh79V6BI3I8CrewJtmFqu1AyHMPp3u8YEeLBtBqofetPwIMq66aZVE3XA2BI
 O3onSsSmyZa71q+upoDBovP8cJylLeu6fDBha4WxGpCjwcHLE+vR/rnYrjWO9wnaTbzOkCxAlVe
 7xwlRbht3CcjnSVkkQvIR9CiCsj15wbMdzUfr1QwCeujCe0bSeBMAxYBc+pFtL2VhMzvAGRCi7d
 snL+X3xBsGTSnC4slbHKbaAHEbNEmKr9NOwV729pDrQIYp1Iy5MpWvqw9fI/CtkCsxXqmvhIiG/
 Ttf52IA4ZCzwAgw5PP4sp9tHo4396g==
X-Proofpoint-ORIG-GUID: P2G8VG4CIHh-YEj45eT3-iXoMDBz0Fs5
X-Proofpoint-GUID: P2G8VG4CIHh-YEj45eT3-iXoMDBz0Fs5
X-Authority-Analysis: v=2.4 cv=a+o9NESF c=1 sm=1 tr=0 ts=691c51a8 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=MPXrcZT4uZQNy45QjfwA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=vtzw7cutTccMEE7WY+vb8GRnS9OkT
 CSwzPJit9gHtrI=; b=LY7VainYnp/sR2aAI/KBNWsVdJe82zP//qHu44d0qnzFp
 CENHDPFapXm7wwOczSkdKaqWEIRO238SpQgXzQ5GSks06xh2p0lpvIf/mI1b4tIS
 iZCpr79PDUZw7isB9TB5YXVI4UG4tNq15G/EdNLmk+RbU+RMzg5dqN2+zB6kmD+L
 lxRzBmxT9eOOd9lEGUTk40uHm4Z5DofU2UgZAUk+K4P0xKhMovYF4OYvSV9EffW2
 yKpa6S/t8A11CJ2R1KzC+JUtCNRvSbWbCeUBNO8Oi7v+EhKO4NkkAGWxwZKzCWj/
 QtjT0H1tNnLjEuo1rzk2RlTUYOerI8HuH++enyAJQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=LY7VainY
Subject: [Intel-wired-lan] [PATCH v2 net-next] idpf: use desc_ring when
 checking completion queue DMA allocation
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

idpf_compl_queue uses a union for comp, comp_4b, and desc_ring. The
release path should check complq->desc_ring to determine whether the DMA
descriptor ring is allocated. The current check against comp is not
incorrect, but it appears to be leftover code from a previous commit.

Switching the check to desc_ring improves readability and more directly
reflects the intended meaning, since desc_ring is the field representing
the allocated DMA-backed descriptor ring.

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
v1 -> v2
modify commit message and target to net-next
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 828f7c444d30..1e7ae6f969ac 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -134,7 +134,7 @@ static void idpf_compl_desc_rel(struct idpf_compl_queue *complq)
 {
 	idpf_xsk_clear_queue(complq, VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
 
-	if (!complq->comp)
+	if (!complq->desc_ring)
 		return;
 
 	dma_free_coherent(complq->netdev->dev.parent, complq->size,
-- 
2.50.1

