Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D44C2AB14
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 10:14:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10B0E4128E;
	Mon,  3 Nov 2025 09:14:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TR7E8vmp9YTy; Mon,  3 Nov 2025 09:14:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58B0241036
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762161273;
	bh=LLiGQrYWE39YqjM8oK0kbp6Fs6Pmvbsq0lrVOKIQdSQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UgqMGPeJrKWa07161L0GidWsR3KxV5IFdIc6wywrA/Zo+sFBpsnAGWO5axvlT3wyK
	 2sIhGb9uCe4pG1J6HtynOhn2wS8NxXF5T2KtN9pAIrr3IeN/UHB1qCL3pgS9uUi7o4
	 VbUAJ7+UDzb/lH16YWAyX7EYP0PnWy1BNc5IS8NdeQ+2hH6xf9q/DWr0emD2dMtH02
	 fvc8HBukUJ4nJAphT42SRxl5i3Qhp/xgxMlIg7P2tD8bipMLjIY6REZeDqsSeMGCoD
	 HTkVGhLCU+1qymtkgun45IGhixnEFB6ThFrf3/co1dNY8JLy6lrYLNqAM2sgn9ur0F
	 5ek6hbtosAQ4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58B0241036;
	Mon,  3 Nov 2025 09:14:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 970591A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 09:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D13883916
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 09:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qf7BayTisEd5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 09:14:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 64DE2837C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64DE2837C9
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 64DE2837C9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 09:14:29 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A38pcqs004018;
 Mon, 3 Nov 2025 09:14:20 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a6rut03tn-12
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Nov 2025 09:14:20 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A375rDL039741; Mon, 3 Nov 2025 09:04:51 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58nhmyyq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Nov 2025 09:04:50 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5A391HOd018176;
 Mon, 3 Nov 2025 09:04:50 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4a58nhmyy7-1; Mon, 03 Nov 2025 09:04:50 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Mon,  3 Nov 2025 01:03:26 -0800
Message-ID: <20251103090344.452909-2-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 spamscore=0
 suspectscore=0 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511030083
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA3NyBTYWx0ZWRfX0rZB5OABWdQx
 giMa4k2veuAYtc58j64l1jEZVM0CEN0EvP25fSOWZMV47tEXFY/u9SpFYZz8TXJWyjpWTgLEdoT
 nFIQ78tZ8sYxAB/xrmkrhmsizds/goHjHSpYeVop04svggtecZABZbx9eH0bU/trqfj1h7UgQZF
 B/Qy26JjrdSAZFuAmnpUzxYoqmyhhQT7l99RI/J+MJqUj5HN1WAaw6nJ4WyEPO7UVOIt08jAc3+
 FA2ZiyzCzCuja/j2VJsvkipfXv/dR5W4UQ9whaqjXG5soGXisdfMIbjjz88Xe7XL5wFKVFyX7AS
 inHUddARdRAFJk6/G2NjSkt/yJ3ZeSXfKPM70ke/ZplCY2zXc74Exf3iOfPH3qMUfYrwtAX5DLA
 a3dPBh/uksQqsk0nV+GQy3XZfm45dkg7egQgqvmSGIKtTw+uuek=
X-Proofpoint-ORIG-GUID: MV84B9-flZR7mrJz_b20N1hg4OgLoRFy
X-Proofpoint-GUID: MV84B9-flZR7mrJz_b20N1hg4OgLoRFy
X-Authority-Analysis: v=2.4 cv=ILoPywvG c=1 sm=1 tr=0 ts=6908726c b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8
 a=yPCof4ZbAAAA:8 a=CjulpbiJ9qt4iOXFzOQA:9 cc=ntf awl=host:12124
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=LLiGQrYWE39YqjM8oK0kbp6Fs6Pmv
 bsq0lrVOKIQdSQ=; b=M+Zzpgw4+kiU14uR1y2QqqjBuNClixXDhMwNxafnmUIoi
 WZc3/XvG9AvvUmWpqDuUvg1pcWuRMTsVuFGHzfkpBGw95a0eJ30uokoaUghe3Qi/
 0LFbSOeUCdcGvlkfTCYIzmHE5f1W0+r5nCfpjgMq/NrxO74NViHwJq5PHYVmrcvs
 1b0ZK8azEzePSzeh4xSGwKmZpuKr1Xz//wyk+KyMpUQ+m05fdW8CRBGWRjw0U1JQ
 PxpE7ykoQPoIOpTqjhnLvmTedqLk0xserjwj6x9gak0ahYp5I2NC02pE/2lEOFxg
 NlwkI2CKjFM7HAHnEZv5AzTWd9I5eKL5aBpe4NxyQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=M+Zzpgw4
Subject: [Intel-wired-lan] [PATCH net-next] iavf: clarify VLAN add/delete
 log messages and lower log level
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

The current dev_warn messages for too many VLAN changes are confusing
and one place incorrectly reference "add" instead of "delete" VLANs
due to copy-paste errors.

- Use dev_info instead of dev_warn to lower the log level.
- Rephrase the message to: "Too many VLAN [add|delete] changes requested,
  splitting into multiple messages to PF".

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
https://lore.kernel.org/all/47f8c95c-bac4-471f-8e58-9155c6e58cb5@intel.com/
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 34a422a4a29c..3593c0b45cf7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -793,7 +793,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl, vlan_id, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev, "Too many VLAN add changes requested,\n"
+				"splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl, vlan_id,
 							   --count);
@@ -838,7 +839,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl_v2, filters, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev, "Too many VLAN add changes requested,\n"
+				"splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl_v2, filters,
 							   --count);
@@ -941,7 +943,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl, vlan_id, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev, "Too many VLAN delete changes requested,\n"
+				"splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl, vlan_id,
 							   --count);
@@ -987,7 +990,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl_v2, filters, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev, "Too many VLAN delete changes requested,\n"
+				"splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl_v2, filters,
 							   --count);
-- 
2.50.1

