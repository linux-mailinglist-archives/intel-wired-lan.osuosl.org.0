Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2696BC6382D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 11:23:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 628AB60593;
	Mon, 17 Nov 2025 10:23:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S5qy1qx7XRUj; Mon, 17 Nov 2025 10:23:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9470960C2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763374983;
	bh=DDnGEVSvCpUNQAbRmBxXcKjjqev9mc/oqa07zTkHqPo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kc5L7y9qKZNAOBDaJAUoR5dTdKreo5jAoeYU0xlwxcLhxWmarmoV2jmRdwUkkcRnE
	 QDRRDeru+vZExon63M2OLiYeeRSAL0r9bUfHHqAYOVMgyfKuAwTdQUqmS3hUZPBcGw
	 1GWYUY2BEoiaAYoNAFz/8BScarBpyOXcDo9LRVv0cU7/m8jpDFVp+V7aiukiW6fSSq
	 yhumYDaMxgTGVXCbRu0lDxFKmofvzPr7W+G3+v9go/HQXd7YcHNn9yk5ZXz7NXOP9T
	 higAe5c/6RY3kFnFegzf7vhywU5fT4L0IaLb0j/b89+E31rAq98+gJBWAo2EWY4W5f
	 +bM2dKVtYQ97Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9470960C2E;
	Mon, 17 Nov 2025 10:23:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A499AD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A5258135A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:23:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RLajoK2GOqBs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 10:23:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D6AA81F67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D6AA81F67
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D6AA81F67
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 10:23:00 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AH9uoLI012025;
 Mon, 17 Nov 2025 10:22:52 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aej8j27dd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Nov 2025 10:22:51 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5AH84Ebf039880; Mon, 17 Nov 2025 10:22:51 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4aefyhs7w7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Nov 2025 10:22:51 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AHAMoOf004472;
 Mon, 17 Nov 2025 10:22:50 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4aefyhs7vh-1; Mon, 17 Nov 2025 10:22:50 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: michal.kubiak@intel.com, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Mon, 17 Nov 2025 02:22:25 -0800
Message-ID: <20251117102244.9188-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 spamscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511170087
X-Proofpoint-ORIG-GUID: C8xvwBz8nwkZQ88fkuFvTqnZg8T1qbSL
X-Proofpoint-GUID: C8xvwBz8nwkZQ88fkuFvTqnZg8T1qbSL
X-Authority-Analysis: v=2.4 cv=I7xohdgg c=1 sm=1 tr=0 ts=691af77b b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=uA2SwY9BN-IQXUrAw9wA:9 cc=ntf awl=host:12099
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX0I51Wzgbvs3a
 6g6X2dcxbZq+oazeh2Xg1loFoK10MRWWUSWE0Jvx+1vkJSXOwzc1Q61ZjjEX5tsurMyI1d6q+1s
 r68mOL/GtfOJjDCa15WNuywWgHwVfOZEop4UNey4Ierj5vCp0q8whg67kgWImutMPEmYZAD7Not
 cUtUvCXzGpNFWnZvEO/FTepjc7CVHcV61N2AyzBijs3eI8HYhr1/voqtSs02fFq319A+AYwlPHS
 Tz99yL5Q7GMtk3etbZF4uScWG59RvWId2QjH3y0vfWJG4+tmUZ/ECfwfwY9r5080nexgJhz46fp
 /cNgYTvLKYHk5M+KOP4myEPizF8LANWSh6poIq8oMHZ/iE9IDfFaKPuRIRp5UHlpvCOSwkNarqw
 RUdM7RGKfAr+KAawyjHx0ca1AObiEs5y5HNJ5mWGHeDcSRxQltE=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=DDnGEVSvCpUNQAbRmBxXcKjjqev9m
 c/oqa07zTkHqPo=; b=Ljua8/tfbi+ggaLOKsDAQ4QvH7a7BGYdoGYYmlTXRUCty
 Ctrrjg2PRdMk7kFgNIlh5qSM03qomd0IHnKM0MZMeW7RFd0D+RRjM4Po7K3eOkNa
 JproPJTfMlMh9T4kXhPsfwh6dDldVSphkfkDtM3pYyFKUG2BRLziI24c6yOluJCp
 xN40yDdNiE2WfhxqaH6/ozfxKaAV123dfwIoBhvMG5AahCEbNM//+Le0ph8BxhvG
 t07LE/AISLDBo5PD4srytS6O97WngaF/SimtgDHzqWdLFEgfAXNnKu8mIC8Hvdg6
 yJIhywBdSg0OjreQpOzxX4ZEffORYnQRyG51/yWog==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=Ljua8/tf
Subject: [Intel-wired-lan] [PATCH net] idpf: Fix incorrect NULL check in
 completion descriptor release
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

idpf_compl_queue uses a union for comp, comp_4b, and desc_ring.
The release path should check complq->desc_ring to determine whether the
DMA descriptor ring was allocated. The existing check against
complq->comp is incorrect, as only desc_ring reliably reflects the
allocation status.

Fixes: cfe5efec9177 ("idpf: add 4-byte completion descriptor definition")
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
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

