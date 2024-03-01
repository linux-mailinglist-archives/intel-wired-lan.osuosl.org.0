Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371E186ED31
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 01:04:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7832C404FE;
	Sat,  2 Mar 2024 00:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2ZDzxzMqwgU; Sat,  2 Mar 2024 00:04:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FEC2408C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709337880;
	bh=vKDPVMXw44ehTbUTyV9p12c9dr4eCzluThD8Tq6MyeU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8lMbTKgvV22MB5McYJU1nDT1YZAd13yCx+Rwda7osyNIV9BzhmechUUbf5exLBTHm
	 5U6wg2+lJ5S7aKjOTx0LKfhIp6vAWVlZocNDqXR8Z+nYlV4350Z3/ac/ZA0ScKXrKs
	 J9alAaarXpQaa2tzmxQr3eXOxvnjD+o3elkvvEXpZm/ZU+BQT1S97ZfPxNAubehqn7
	 ia3ISd6hMIOvgSaIq+1WvsHvKHUAcPcTmurGt9qlS75KjnOtn+32eRxjlF6eJlFX3t
	 ctY6V4iz8XTEOgKIF+G6W4M6pgJX0gvYkfk7n+EXyi/pp2IEbVDDJT0x5BWwhoPDzq
	 UktN5bOP0qngA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5FEC2408C9;
	Sat,  2 Mar 2024 00:04:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5F821BF32A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 00:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89AFF61070
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 00:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UOUi_pT6wWkG for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 00:01:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=yifei.l.liu@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CD47E60A9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD47E60A9E
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD47E60A9E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 00:01:42 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 421Lhnt8026634; Sat, 2 Mar 2024 00:01:37 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3wf722t5av-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 02 Mar 2024 00:01:36 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 421M2Rdi005715; Sat, 2 Mar 2024 00:01:35 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3wjrrct3pc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 02 Mar 2024 00:01:35 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 42201YFC037587;
 Sat, 2 Mar 2024 00:01:34 GMT
Received: from ca-dev110.us.oracle.com (ca-dev110.us.oracle.com
 [10.129.136.45])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 3wjrrct3ne-1; Sat, 02 Mar 2024 00:01:34 +0000
From: Yifei Liu <yifei.l.liu@oracle.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Fri,  1 Mar 2024 15:58:37 -0800
Message-ID: <20240301235837.3741422-1-yifei.l.liu@oracle.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-01_23,2024-03-01_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 mlxscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2403010197
X-Proofpoint-ORIG-GUID: sROpH13LIyOES2ZB_47V_jY2iDavSJKo
X-Proofpoint-GUID: sROpH13LIyOES2ZB_47V_jY2iDavSJKo
X-Mailman-Approved-At: Sat, 02 Mar 2024 00:04:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=corp-2023-11-20; bh=vKDPVMXw44ehTbUTyV9p12c9dr4eCzluThD8Tq6MyeU=;
 b=kdA8FGruOG9ZjTI7oQ2CYF9M2Gf1ziYDgoa/3325BIrQ396s1qxs8v40B6/1+t6ZKqml
 hbNE9lVrV6RgwIx6tZuRUOyKuMaHMixlGtB734LBqo6EW6CP8iUxUKbJAnmU0kPNoUQb
 hshaljT6Zwkr+A8VpZ//L0023zqeeoCOf87HYbFJnbZZZiCKVOsy9lWuj1aikEjcLicz
 C/kU8fHItDHTo5JbKRE3ND3YT+LSjAg1nJjGPdYFHAhYIvCr01oKiV0HyN/anNpRsJP0
 BlJk+q02iw+dqopsww5VMF9jWLWn7FtbU1KZxlwLt+B1kC/wHQFgmMjjY6UfGDcoeL0y vg== 
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2023-11-20 header.b=kdA8FGru
Subject: [Intel-wired-lan] [PATCH Linux-6.8-rc5 1/1] ixgbevf: start
 negotiate with api version 1.4
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: lihong.yang@intel.com, harshit.m.mogalapalli@oracle.com,
 yifei.l.liu@oracle.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jack.vogel@oracle.com,
 netdev@vger.kernel.org, ramanan.govindarajan@oracle.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ixgbevf updates to api version to 1.5 via
	commit 339f28964147d ("ixgbevf: Add support for new mailbox
	communication between PF and VF")
while the pf side is not updated to 1.5 properly. It will lead to a
failure of negotiation of api version 1.5 This commit will enforce
the negotiation to start with 1.4 which is working fine.

Normally the pf and vf side should be updated together. Example:
	commit adef9a26d6c39 ("ixgbevf: add defines for IPsec offload request")
	commit 7269824046376 ("ixgbe: add VF IPsec offload request message handling")


Reported-by: Manjunatha Gowda <manjunatha.gowda@oracle.com>
Signed-off-by: Yifei Liu <yifei.l.liu@oracle.com>
Reviewed-by: Jack Vogel <jack.vogel@oracle.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index a44e4bd56142..a1b9b789d1d4 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -2286,6 +2286,12 @@ static void ixgbevf_negotiate_api(struct ixgbevf_adapter *adapter)
 
 	spin_lock_bh(&adapter->mbx_lock);
 
+	/* There is no corresponding drivers in pf for
+	 * api version 1.5. Try to negociate with version
+	 * 1.5 will always fail. Start to negociate with
+	 * version 1.4.
+	 */
+	idx = 1;
 	while (api[idx] != ixgbe_mbox_api_unknown) {
 		err = hw->mac.ops.negotiate_api_version(hw, api[idx]);
 		if (!err)
-- 
2.42.0

