Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B7DC06902
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Oct 2025 15:46:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DC8B8411C;
	Fri, 24 Oct 2025 13:46:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HjQP3Uz4bXoi; Fri, 24 Oct 2025 13:46:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBC9384050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761313615;
	bh=mf4Pgy6pFL7S0hO85hk88NuMCd3f+Bxj+YF0GpXw1q4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AeG1pgunI3bI2vt5c5VLlP7TGiNewaKNybHv0gnp+BQXb12Hd3DxZp9f1IfA+2n1Y
	 i5rJK1BzBq8Q1kVuUlrnk5+J3vkHn9bHK8zPypQTyuKGhF0mfm0GIjBkBQxVnAJry2
	 EadlMN26io1CWgQRvx74qvzqFxWl11s6ORf/tSv7tWWZFaARsipEpMM6gwa4nGsgy/
	 DVy1oMBzT0mN6HLrpOIePNlHtxTV0NlceR3DaElKEZGT9JeVhJeNET8VOU85yJKCcN
	 O6uGlPPdJzadmCOcsNrSFVPL55CdTtVrb5r5osLJ6otsnFJ1pr7aJD7UA80ZcmAsPI
	 crczKRETtQ1sA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBC9384050;
	Fri, 24 Oct 2025 13:46:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DCEC243F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 13:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB98140A7B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 13:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ui5tOglF282y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 13:46:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 508DA40A4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 508DA40A4C
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 508DA40A4C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 13:46:51 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3NaST013827;
 Fri, 24 Oct 2025 13:46:45 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49ykah2g70-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Oct 2025 13:46:45 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59OCBlvM007741; Fri, 24 Oct 2025 13:46:44 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 49v1bg5k68-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Oct 2025 13:46:44 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59ODki5m027958;
 Fri, 24 Oct 2025 13:46:44 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 49v1bg5k2w-1; Fri, 24 Oct 2025 13:46:44 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: aleksander.lobakin@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Fri, 24 Oct 2025 06:46:26 -0700
Message-ID: <20251024134636.1464666-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510020000
 definitions=main-2510240123
X-Proofpoint-ORIG-GUID: JOij40voZ86C1wTNPgj0xgeVnL63-AOM
X-Authority-Analysis: v=2.4 cv=XJc9iAhE c=1 sm=1 tr=0 ts=68fb8345 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=UV6hcFBDGNwxlG23zUoA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIzMDEwMiBTYWx0ZWRfXyfG+r9NVtUS1
 tLUVknovR891bMe1BOHliwHLElt5noL0uKT+JQVM9OkozqHfY0zyvjNlmOdqGwJ1RLzsZo1mt/c
 u4WLJCNQC2SmemfFd4fdpgXFEG7pb81j66Dbg0/R7eEmA0AxTgVo1dXzWHtzA+UksITp48dBFS9
 wt0AW7PV1FMV24dGbrDQn7TydlIQF8hMnTvb9CHSgXmU5V6uE/RCkG/by0tB7NqIVpPldsezanU
 Xz38vXQmCSl884sNhsFID9H4BJNNYyiQxMSACXtiBQb716n0mYZxtawt5cJ2+YjVyt2rkTro3d+
 Kc6Id7gScrRwRjcZrZgIwGZwfriMploaLfzlUbPErXN4XF3duXFD/akWBVmIyywvSMI9wmGUjz7
 R2qdFiLKW0KumaHdXKbXjXV2+SVWXQ==
X-Proofpoint-GUID: JOij40voZ86C1wTNPgj0xgeVnL63-AOM
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=mf4Pgy6pFL7S0hO85hk88NuMCd3f+
 Bxj+YF0GpXw1q4=; b=MK24m6GLpOc9KrFqEEmf1dz1u5wZGgbKBMdfT8IRfpqIe
 7qiJ2WSTmpG902G8hURsWDaaUSmO+7SbtR7x8+jRqMOxuslu7g5Nw+eFTlMvyqTA
 u98QFS+HJmdfBI8Q9MBNzoh18Fg7LWGqQMm2zQRzEjXbQRHJqPswPOPy+90arDXH
 Hp+puibhV/DRdmaK5ScXsT5T4iQBUq/WfcCBFR6wPQ5mfO68zyuhkxy3MnWsAIyh
 tXlUBR6k6HvW8yOdsfWhqfOEy7PBhk5EE66xs6y6+OvZGjHiwjqUjkxaTg9y2VF9
 QIOKR2+2mT1Ars/cMTR39HFt0IRXfZT0GhPfHL8iw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=MK24m6GL
Subject: [Intel-wired-lan] [PATCH net-next] iavf: fix incorrect warning
 message in iavf_del_vlans()
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

The warning message refers to "add VLAN changes" instead of
"delete VLAN changes". Update the log string to use the correct text.

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 34a422a4a29c..6ad91db027d3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -987,7 +987,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl_v2, filters, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl_v2, filters,
 							   --count);
-- 
2.50.1

