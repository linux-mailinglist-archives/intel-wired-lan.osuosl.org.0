Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59717BF8442
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 21:32:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03C4182310;
	Tue, 21 Oct 2025 19:32:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3e33RBiV1Kx; Tue, 21 Oct 2025 19:32:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 808FD822F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761075138;
	bh=xPmAhom93LupiUCkdmp7KzXxGSnEroJcVaNYIA5/O2w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HAW8rEX/toFnGVF1M6PeugLAVGGqkX9RKSdjKCuoYpe1l2gcqvFI4aWFAlUzQZwl1
	 79fz8zEIt5hjQies9spSkJugXx9Px8ruDqTe4kShrb2jtbge3xApoX/kzqg3wXNMzo
	 4mNWk9jluuE8uEmquyayDa9B3Oq5VlhrmnbyA+RHGZdCCrCKNy0n791UzeoJEZ5JJe
	 P82ucxzw+fhfgtjgvJJbw38zQviFBCvJsgUctchjZcUinH+SHZcxpzLi1zlCT2py39
	 29tGLPYxk6/Ht8/1P/8YP8vKVVJGferlIvEXU5wvGJDAWCJX5h8nHz+IwuwSVoBaZA
	 FvDL8ZCMdmmKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 808FD822F8;
	Tue, 21 Oct 2025 19:32:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ED4C5277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 19:32:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DED5360B88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 19:32:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H3i_LM2uGjLe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 19:32:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D828660B7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D828660B7B
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D828660B7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 19:32:15 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LIRMmC008699;
 Tue, 21 Oct 2025 19:32:07 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49v2vvxayv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Oct 2025 19:32:07 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59LHIPGu014029; Tue, 21 Oct 2025 19:32:06 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 49v1bc853v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Oct 2025 19:32:06 +0000
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59LJW5nd017565;
 Tue, 21 Oct 2025 19:32:05 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 49v1bc8530-1; Tue, 21 Oct 2025 19:32:05 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Tue, 21 Oct 2025 12:32:01 -0700
Message-ID: <20251021193203.2393365-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-21_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510020000 definitions=main-2510210156
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMiBTYWx0ZWRfX/IGAbA+V4eXP
 uLvCRNVJVoApg0cnfaOh5xMEwUXYztqdN9o9tPv+Dv4NRYPuOyrAps42mXB3zPOgIGG09eiz0LE
 VzMh7pvO2xJBIiwFRGiWdrzMJqho9wxT17PxFnlYmhyKbvpq2xVioo9MBnRpbXJcn3ieeHwYsYF
 vzoMIFdEFRqV3RJjEflf+y0mpBH/1DBuN19SBTvorXbRcjj+PR3L/Bkmr1oUvcVGwXgkweAGYVE
 UydTYXP9ZhiUbN9SddlxYhghfXSsUgECX0fTSs9DEHXhOGQNm86K71tVW6whgsr9HEKk3/xxQlX
 GFSm8mqwk8kNnj3bKEMtBXaMCaQ0Uo/jR9STHsv7TAm+Dg48prmvypw2wDWV9mvGqwBXRW1GEmI
 cS2Gyc0uhjIPtCUT08blDjxIpsRprQ==
X-Proofpoint-ORIG-GUID: -N4oouHI-rZ9AvZHMsU_QyfZHdwbikiJ
X-Proofpoint-GUID: -N4oouHI-rZ9AvZHMsU_QyfZHdwbikiJ
X-Authority-Analysis: v=2.4 cv=FuwIPmrq c=1 sm=1 tr=0 ts=68f7dfb7 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=TjKbjQt2ObX76LaVSKkA:9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=xPmAhom93LupiUCkdmp7KzXxGSnEr
 oJcVaNYIA5/O2w=; b=VrX+H99/gSXenmHO4Zi2ETD6nac/zxtY2BTMVWxN6V+OI
 57USpFq2PBjvoXzydh2COqx9jV3XW8+UokeqzFCYFlkWIC/CI7qWe5YW7KpnC+qS
 nIOKtrUiY313GHrQPNYYczyILW44mqNXO447fbvzTERlICwcpST1uWiHM/R9lAQD
 +qvbDiArZ1RQTe8X60EEJQS9jq3fY7YZevRUfXI20pcm5EN1pQIV549L1+MyHS2X
 xFR96RU2sTUEuYrA33XgXTTszGI4bMpqJz1UKs/NYEZaLV3jKy9bWvT29Wff79Hq
 mx16xjrC1n97haLUn/nWqN9hYTCcC4KGgj7ekhvpg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=VrX+H99/
Subject: [Intel-wired-lan] [PATCH net-next] igbvf: fix misplaced newline in
 VLAN add warning message
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

Corrected the dev_warn format string:
- "Vlan id %d\n is not added" -> "Vlan id %d is not added\n"

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 61dfcd8cb370..ac57212ab02b 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -1235,7 +1235,7 @@ static int igbvf_vlan_rx_add_vid(struct net_device *netdev,
 	spin_lock_bh(&hw->mbx_lock);
 
 	if (hw->mac.ops.set_vfta(hw, vid, true)) {
-		dev_warn(&adapter->pdev->dev, "Vlan id %d\n is not added", vid);
+		dev_warn(&adapter->pdev->dev, "Vlan id %d is not added\n", vid);
 		spin_unlock_bh(&hw->mbx_lock);
 		return -EINVAL;
 	}
-- 
2.50.1

