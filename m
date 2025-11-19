Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87859C6F505
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Nov 2025 15:35:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 438C98099D;
	Wed, 19 Nov 2025 14:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B_XqbBWTduFv; Wed, 19 Nov 2025 14:35:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC11480965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763562918;
	bh=NNtUIUqq4UMUpX2Z9WFcy8BuaqN/i4bLIsFoYGUxDeg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BKTUTK2920Cj1YTkUqOD3eDzWhTZv/vfSJPwMeP2f33RneK71wyTqw6A9rX9An/Gd
	 GjbmCzDATQF9NXuAYtGWDP0jzmIjlI5oEtDhkMRuMf3xi45ZTAgH8NDmR7rNZ48070
	 lGH37tqx160+xI4JEVBFX28ZdmiFteDifXyAl5mhhcyChqcoxrPVwGC+CmSQKaEQ6/
	 5dsSkR0oJd5Xk3n/8qo6HtFqf91qkrJQym27pq3FF133PKJ3uWO6kOUNui9I5yg/jM
	 GUzt314S8wd4oIr7RIivAOyed8EHXx/Bd8GJ+lpctKgFM7a+zOW7Y2MtY1dUxPFo/b
	 ldXFcvmVFJeQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC11480965;
	Wed, 19 Nov 2025 14:35:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B2CA37F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 14:35:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D00F60DC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 14:35:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qPTaewFe-zH3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Nov 2025 14:35:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4408661118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4408661118
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4408661118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 14:35:15 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AJEQtvu011562;
 Wed, 19 Nov 2025 14:34:56 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aejbpy41v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Nov 2025 14:34:55 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5AJDNJ4u007748; Wed, 19 Nov 2025 14:34:55 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4aefyanxfk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Nov 2025 14:34:55 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AJEYswL010709;
 Wed, 19 Nov 2025 14:34:54 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 4aefyanxea-1; Wed, 19 Nov 2025 14:34:54 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Wed, 19 Nov 2025 06:34:40 -0800
Message-ID: <20251119143450.297227-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_04,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511190116
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX7Vm1/tZR/5GV
 KSo4AWvAnJW4fp4abwxhcgMjKhkpIv4C2xQWYYT52Z+AIR+Nyc23Yba2RYIXCLtlF+OPlnpn4hL
 E9rqqFfY3UtvAMGbFo1oRK3eW+xnb5nj3HQIbgkJlGFAemp4fQ4b6pGFGi5vZ9jA2tgfQq/XZ83
 0kLQPGz1aeiN37k43bttZOUhdlJYL+CNz8pEbNv7xEBmg7vnFOifRIN2Y+D4LchQazWNzlt94TI
 qCOEn11yMq4QW4hpXOC9p95qbgJQQ2Sj2PtGta4hnERqOucQR8hXvXGp5k2TDsZ+THyQwtiMURs
 O6SaAGTih2zUNb9ImV7ZXkA7ae2jKTR7+oAneL4YfeE05cYf3U42TFAz7AqPN47m+9KJEXb2gia
 0+btc6fkwYAG3UDJe4pZoC70dlzKFA==
X-Proofpoint-ORIG-GUID: keBVwHOoTdPizYH057d9mzVEK48kU-TF
X-Proofpoint-GUID: keBVwHOoTdPizYH057d9mzVEK48kU-TF
X-Authority-Analysis: v=2.4 cv=a+o9NESF c=1 sm=1 tr=0 ts=691dd58f cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8 a=QyXUC8HyAAAA:8
 a=xOzv37BF3ZN2YLOLXnEA:9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=NNtUIUqq4UMUpX2Z9WFcy8BuaqN/i
 4bLIsFoYGUxDeg=; b=dpcx7ME/YZDxhpNVuKNlmmw9zPFYc5KvLfmErFGtYSb1f
 jhajQFr3JyjMknOFVQqFJKAwKJDW1oRzLU5WkHvZmzcbU5089MIMdA5636gc4yFt
 XAMN/0TAJ1N+OmxCTaMMIic/l2Bii2Z7PzO7WmxggD6E4N3b9LsRZzGQLFZhsx/n
 My6UpAwrpxK7antwChkv7HpYY3IK7i8HQA5C9gW3pC1Ap2QzSPhiyAe8QkHTetaA
 +HvUET++2u87GVYqreHjhu+jKlM8Ji0G5y/0aWS6218Qqi1Ft/Y2hOrT9gHxpBD6
 4OZfjBGqXEofquR/lytRaeJpIvzj++MU52uZjIf3A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=dpcx7ME/
Subject: [Intel-wired-lan] [PATCH v3 net-next] idpf: use desc_ring when
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
descriptor ring is allocated. The current check against comp works but is
leftover from a previous commit and is misleading in this context.

Switching the check to desc_ring improves readability and more directly
reflects the intended meaning, since desc_ring is the field representing
the allocated DMA-backed descriptor ring.

No functional change.

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2
modify commit message and target to net-next
v2 -> v3
added Reviewed-by 
rephase commit message and added "No functional change" in commit message
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

