Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E51FEBF834B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 21:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33B2B822B7;
	Tue, 21 Oct 2025 19:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k62MvrwYi5Iz; Tue, 21 Oct 2025 19:12:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0710822B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761073951;
	bh=CWVpQClt/35C+ZDB/T0t2XcdIS5xnM9NZTrNT4EG2aw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oqFvSIil5HvvCX3K5qZAI03Y72SbD4yPIKsoN7DpWimDi+7NCGnvHjnafhdRp3tbG
	 hXc3C00S7dHj8s+d/Fa3DmaYITKAomqTfkGW4PlukuoKXyULtDbPAs0/zfiLcKsPX5
	 BATjPCabGKcvM4IuOckW5v9mLwE5peUtdNB3B1dJZYthKsvAdZGY/XuZkQYoDB4jgn
	 yL5deKM9BTUdjAa3ZqhQKlGuTmrPj2hxuj5SBKQmqtrcfJpIxwji/llXJ3hhf/NJM5
	 eOJbQ+aTGLFo1pNfw+weBNRd7jljyugYwYMhHMKIjdFoI7HRZJIu2yEqby/0545Nfu
	 uICRcOF4iF4Tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0710822B8;
	Tue, 21 Oct 2025 19:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F198E277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 19:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2D19822B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 19:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0rSEeG-Es-Ei for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 19:12:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0029D822B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0029D822B3
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0029D822B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 19:12:28 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LH4GkU013637;
 Tue, 21 Oct 2025 19:12:22 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49v3076b64-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Oct 2025 19:12:21 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 59LIv3sC032304; Tue, 21 Oct 2025 19:12:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 49v1bd8tkp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Oct 2025 19:12:20 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59LJCKr6032644;
 Tue, 21 Oct 2025 19:12:20 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 49v1bd8tjg-1; Tue, 21 Oct 2025 19:12:20 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Tue, 21 Oct 2025 12:12:14 -0700
Message-ID: <20251021191216.2392501-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-21_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 phishscore=0 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510020000 definitions=main-2510210153
X-Proofpoint-ORIG-GUID: JXr5RMB1Z_cyo6nyLBQgqdDdDYaj_fuf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXx+6YbWqJyi2j
 NMjPJuBJ0gRXU3vOkjMNaQbkjjH7HbVPO5HJrtjv4yeIg7lhXqt6I6BtUZSkfvWdZ7/QgyYRYtj
 Rb8hr8rCB2SSu9o4dKqsXLMhKVqAezHlUe18QC5D9Kns+vl4SaP2uLewGWsZZkkLRLVRqz8dIEM
 +VZSjbXPc1ciIsfCd09Hdq3yDI4s4vutxVHdsOoNjVkxu9IaEfe4JWmwE+It1568a0fqATx+FMC
 bnWORaZzXyL/ZyTCRpuK7t5EafgSF5z4m2Hhk6XR0/XaiD+CYYdrv9rAilY8uX+QocK4Wju+Rmb
 8WLSqgVQaGR65LQNDohizPT/rUmbveH6RGFXY3D1qPb40OjrqBzRIL/8OsMtNG9vwMQlvmMBMlv
 A/qV8VVm0stMxASC1R5VxYAkcgmkKAs2cUT5o9u/6LPxJ34ST8g=
X-Proofpoint-GUID: JXr5RMB1Z_cyo6nyLBQgqdDdDYaj_fuf
X-Authority-Analysis: v=2.4 cv=csaWUl4i c=1 sm=1 tr=0 ts=68f7db16 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117
 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=O4Don3bGMySjCclUSRcA:9 cc=ntf awl=host:13624
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=CWVpQClt/35C+ZDB/T0t2XcdIS5xn
 M9NZTrNT4EG2aw=; b=jc/van9EwRhHJv7KFkbPDNLCZgfXRUgWeY4UQURpnBNBr
 FPb/fDkz95Zw05v+Ln2T3MvrMNvZTkhVYoG3PJWjwHYnvZ+cl0rfp0bBaVaT8GfJ
 RkuQT0ETL51y/M1iL6ZaLT2CnbvTbbBfV0LXpTy9rnKA2QMVQeFoPKUSIDm3RuW/
 Rk58dqLxW0VKQOs8nm/y72tv3b8f1dpXifc4y1SBnPezm4xAHcRHVoKhGuoGTdr4
 5QbaT7XjK3x9bLSjvt7avvHfSMJN/XeIEtas48O8IU+RIGrmwV5q1PbbhvtBdeeM
 ojojPmyMI2xZuaNHtqocTSdrmIffgo7N0WmNXN8+A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=jc/van9E
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typos in ixgbe driver
 comments
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

Corrected function reference:
 - "proc_autoc_read_82599" -> "prot_autoc_read_82599"
Fixed spelling of:
 - "big-enian" -> "big-endian"
 - "Virtualiztion" -> "Virtualization"

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index d5b1b974b4a3..3069b583fd81 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -198,7 +198,7 @@ static int prot_autoc_read_82599(struct ixgbe_hw *hw, bool *locked,
  * @hw: pointer to hardware structure
  * @autoc: value to write to AUTOC
  * @locked: bool to indicate whether the SW/FW lock was already taken by
- *	     previous proc_autoc_read_82599.
+ *	     previous prot_autoc_read_82599.
  *
  * This part (82599) may need to hold a the SW/FW lock around all writes to
  * AUTOC. Likewise after a write we need to do a pipeline reset.
@@ -1622,7 +1622,7 @@ int ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 		break;
 	}
 
-	/* store source and destination IP masks (big-enian) */
+	/* store source and destination IP masks (big-endian) */
 	IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIP4M,
 			     ~input_mask->formatted.src_ip[0]);
 	IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRDIP4M,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index 170a29d162c6..a1d04914fbbc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -318,7 +318,7 @@ static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
  * ixgbe_set_dcb_sriov_queues: Allocate queues for SR-IOV devices w/ DCB
  * @adapter: board private structure to initialize
  *
- * When SR-IOV (Single Root IO Virtualiztion) is enabled, allocate queues
+ * When SR-IOV (Single Root IO Virtualization) is enabled, allocate queues
  * and VM pools where appropriate.  Also assign queues based on DCB
  * priorities and map accordingly..
  *
@@ -492,7 +492,7 @@ static bool ixgbe_set_dcb_queues(struct ixgbe_adapter *adapter)
  * ixgbe_set_sriov_queues - Allocate queues for SR-IOV devices
  * @adapter: board private structure to initialize
  *
- * When SR-IOV (Single Root IO Virtualiztion) is enabled, allocate queues
+ * When SR-IOV (Single Root IO Virtualization) is enabled, allocate queues
  * and VM pools where appropriate.  If RSS is available, then also try and
  * enable RSS and map accordingly.
  *
-- 
2.50.1

