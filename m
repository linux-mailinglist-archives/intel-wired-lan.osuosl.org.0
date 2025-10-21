Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB52BF81DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 20:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C617A81D67;
	Tue, 21 Oct 2025 18:41:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pnnezCH8xy3e; Tue, 21 Oct 2025 18:41:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C25E81AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761072083;
	bh=+pRwSy6ulWeC1IqnsQS8bnPvtmx0Q9D9xGrMDNT1qOw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZyXs4fWl4EYEri51bQ+2A56BRiUD2hsWpflnsDKvwX5A3fCFB4a1EuqM3fFb/Ohmt
	 uRmxtvgbYXQtYFgB12bX27b1EboW7smFQypbrh4aMKoipEaGqoBtRnK5tBD302u1TT
	 5KHoEdeC84rY/2D0flITreUnzzUMJMMbfPbrNfi4RZcs2Rj6oN1uixd1mtUcxCCDaZ
	 /XwWxxVH2CNh4eigVT/+GQnKxTznD2s3/vwhn4w1QaqOPauPzQebz2XcmuiTuVLW8p
	 kLeS6kA82kTFPOXCEpO9Ee0OBeuKV1oladKyH+GCpKkdc9sfqKszy05ONunRT8YYeQ
	 rAQNFRJ2fYFzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C25E81AC1;
	Tue, 21 Oct 2025 18:41:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CC834277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 18:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BEBBC4065D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 18:41:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eVEuB_YoGc5Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 18:41:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 372D5405DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 372D5405DE
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 372D5405DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 18:41:20 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LHcc5S001979;
 Tue, 21 Oct 2025 18:41:14 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49v31d6cvj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Oct 2025 18:41:13 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59LGnBoF025371; Tue, 21 Oct 2025 18:41:13 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 49v1bc7et1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Oct 2025 18:41:13 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59LIfBlf014153;
 Tue, 21 Oct 2025 18:41:12 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 49v1bc7es9-2; Tue, 21 Oct 2025 18:41:12 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Tue, 21 Oct 2025 11:40:55 -0700
Message-ID: <20251021184108.2390121-2-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251021184108.2390121-1-alok.a.tiwari@oracle.com>
References: <20251021184108.2390121-1-alok.a.tiwari@oracle.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXzSmZe1HKZQY2
 0PFDQBcxG1HkbXJq+4AFpht137BxiCy4J+rSPlLNwKam42uPlIl1BpLpkMXW/KFoPv21tv7HibK
 iKoKqQQp1leelbmkypRTGyGu2EUHv/uVCKOKCsSWH9cTlH/+IqkclQcnLUNCSHcnn2O1W6jzfuS
 C+ECrTABWshyxDZRW/DgtmMbMuRz8HQN5tVe01O0mNj7RV5jvqboKGuxlg3bGYZeE6AhjwbTzzd
 OAFgrSTBkjfo6eqlgV4Oe+gGNEL7ATbABgHUJx2+APfmKFCKEmYt67ic3KQffDac13UXLbXe18A
 aOoaBrM+ndRhk5ZpOHDSlVnBMELNRN12mHBZ1rKKetb/YwQNhZGY2J9DYeCGiU53z0UHn79WO0S
 RM/Ck04gQQBWM36jPHJNC3iF2XBWog==
X-Proofpoint-GUID: YKTMMUfSzjDXF9dY4y-eCiM_8mQkoPiA
X-Authority-Analysis: v=2.4 cv=KoZAGGWN c=1 sm=1 tr=0 ts=68f7d3c9 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=U-lh4RRolC2rDeatFzEA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-ORIG-GUID: YKTMMUfSzjDXF9dY4y-eCiM_8mQkoPiA
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=corp-2025-04-25; bh=+pRwS
 y6ulWeC1IqnsQS8bnPvtmx0Q9D9xGrMDNT1qOw=; b=e459gABJxTYUWuRPNP17y
 A8CWsRT/VG4cr/++cIlJLZLtp10SONuCyRC2/HjMoz0kdPlw7irioi/2Jl/dKeKa
 ZEotoc4NGtIONpN7q/BGm2Kz03Igpv56NKHhzRr3BHgusUlKlTLCmXznKM4hLrWz
 wJGVoFLAoE82swWb0qzGwAHFBr7VzxXLxmNLtH3/sAUIZa6kGG+USXAuSYgWOcVJ
 bmc7rdczbw755Pz5a0qTUEddXD6uw8rpjfpCeHVGO5gLW+YSre8vWU96VVr9tEHt
 /zmDtKnIY05Z5YeJEJH/LCqj/v2VjiXUxzoGbhCMymjFesdTu6g4I8exh3A5ceu2
 w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=e459gABJ
Subject: [Intel-wired-lan] [PATCH net-next 2/2] idpf: fix typos and correct
 doc comments in idpf driver
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

- Corrected a typo: "controq" -> "control"
- Updated return value description to accurately reflect behaviour:
  changed "Returns true if there's any budget left" ->
  "Returns number of packets cleaned from this queue"

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/idpf/idpf_controlq.c     | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
index 67894eda2d29..59558e2f45cf 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
@@ -92,7 +92,7 @@ static void idpf_ctlq_init_rxq_bufs(struct idpf_ctlq_info *cq)
  * @hw: pointer to hw struct
  * @cq: pointer to the specific Control queue
  *
- * The main shutdown routine for any controq queue
+ * The main shutdown routine for any control queue
  */
 static void idpf_ctlq_shutdown(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
 {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 61e613066140..ffc24a825129 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -1029,7 +1029,7 @@ static void idpf_xdp_run_pass(struct libeth_xdp_buff *xdp,
  * @rx_q: rx queue to clean
  * @budget: Total limit on number of packets to process
  *
- * Returns true if there's any budget left (e.g. the clean is finished)
+ * Returns number of packets cleaned from this queue
  */
 static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 {
-- 
2.50.1

