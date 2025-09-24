Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8334DB9BB95
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 21:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A083440DBC;
	Wed, 24 Sep 2025 19:34:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WXSej8BMBMJN; Wed, 24 Sep 2025 19:34:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F01340D99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758742458;
	bh=m81IE41gRb+fvCv3Pvhwo5nSPB6TAA2+GNoh0QIDkkM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Hdb3l7rJ4EX6Vus2iVuJ0kGYov7c8WUnTC5fGr9X2yfPyRq9rpJY8xTRwl6o9kM4S
	 +C3jlxbu8F7tdJC6XW2l3O1NwsptivSISsEvSvNAMSv34GDcO7znHyrqfEWObP2xdz
	 UaT89zh/STV9e1CIcpQ0ZiodPOStuIXKTSLPPWSvcDSNuG0oorVersQVRGGoK+R36w
	 ujH5BB8nfkrWV90HG6Whb3rZ41WGGH1GKUnb+1MS8/qfgjGaoYT1xi9tGYAY6wy+uP
	 3vOnx1IrqDh52oZyvBOHZx8sCzhksIeqDfltaXu5hzAqfuPlTqLSkpmZvRkO00D3JL
	 1yNfYQkGH4LdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F01340D99;
	Wed, 24 Sep 2025 19:34:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E65B7199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 19:34:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E348140CDB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 19:34:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0qMm7HJZGgBN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 19:34:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2433940BBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2433940BBC
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2433940BBC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 19:34:13 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OIuCnW002028;
 Wed, 24 Sep 2025 19:34:09 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 499k6b0g32-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Sep 2025 19:34:08 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 58OJ6NWi014991; Wed, 24 Sep 2025 19:34:07 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 49a9515v7k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Sep 2025 19:34:07 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 58OJUH2L003662;
 Wed, 24 Sep 2025 19:34:06 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 49a9515v6d-1; Wed, 24 Sep 2025 19:34:06 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Cc: alok.a.tiwari@oracle.com
Date: Wed, 24 Sep 2025 12:33:54 -0700
Message-ID: <20250924193403.360122-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_06,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2509240171
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxNyBTYWx0ZWRfXxYbteJMbvrFm
 KEVraSYjE6FUVeU7PUpItSF5jv3drqS3Z/bDs7GI21uSSELcfPiXy8Im98SDE9zo+acRKwjtRBu
 s9tFtczxtgyyVmb/m51r8O8mMod9omyG6TzZrcmdCfNzbT2dx0zbgJD1pG+fyD6xYFbhVv7p5ku
 X4vrQNjhfd1uD60ZjyDW2xHWcEcfISQcFgzIfloQUSIIXY4rxJdZsKqr5e8REK/OAlgDvA4OecB
 7zncPM374CNkRF7VP8A8CVObmlcDILdrnBr91dN6kINVjdoFDoCFY0335F1m9bsQYZKnEvOPjS4
 Wgyp3atZSCAEM04FMtSd1lJzrhxitZOXoqGvs0gJgUhi+U5XpyCsJgdlVZQNYMnALMZ4/T/26W7
 08rNqdIB4EAbuiG61o4gMgq1TiH+xw==
X-Proofpoint-GUID: LNQ1Yeaopg5D0hS6J7mifrndKfOruwbJ
X-Authority-Analysis: v=2.4 cv=E47Npbdl c=1 sm=1 tr=0 ts=68d447b0 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=yJojWOMRYYMA:10 a=yPCof4ZbAAAA:8 a=xcvOPl_opqY7jcd9CMoA:9 cc=ntf
 awl=host:12090
X-Proofpoint-ORIG-GUID: LNQ1Yeaopg5D0hS6J7mifrndKfOruwbJ
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=m81IE41gRb+fvCv3Pvhwo5nSPB6TA
 A2+GNoh0QIDkkM=; b=cQavH0yQybtSvGhpFXGBK6FIAIPnOmqJav8Rz+hDC9ZmW
 9DY5rztIQmPmB3HOzEJF7swbIon8JL7YNCGl5LBC1kWIZoL5i4Up6fGV+6Wi/Val
 iuo8MlFe10eQUQmxlXDlzcrD/2Bo01tre5OSx+2bGgO9GhzHjsta8sZdNB+7X0r3
 x8pyihkILvODUEjMgZO3goJvnsJQVvyu+8KzYPTQqKotkeTlPemntcNhgv5i5vtM
 vsUXvfnFs1Vtxx7WaazHIAdosyBp7YbJNCE35ijJlqwr+jW7hWriy4CJTSqpXKgb
 zNApZDd+/Dpg+FKW2TqVsEUQ10NU8oMudhtl523dw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=cQavH0yQ
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: avoid redundant call to
 ixgbe_non_sfp_link_config()
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

ixgbe_non_sfp_link_config() is called twice in ixgbe_open()
once to assign its return value to err and again in the
conditional check. This patch uses the stored err value
instead of calling the function a second time. This avoids
redundant work and ensures consistent error reporting.

Also fix a small typo in the ixgbe_remove() comment:
"The could be caused" -> "This could be caused".

Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 90d4e57b1c93..39ef604af3eb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7449,7 +7449,7 @@ int ixgbe_open(struct net_device *netdev)
 					 adapter->hw.link.link_info.link_cfg_err);
 
 		err = ixgbe_non_sfp_link_config(&adapter->hw);
-		if (ixgbe_non_sfp_link_config(&adapter->hw))
+		if (err)
 			e_dev_err("Link setup failed, err %d.\n", err);
 	}
 
@@ -12046,7 +12046,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
  * @pdev: PCI device information struct
  *
  * ixgbe_remove is called by the PCI subsystem to alert the driver
- * that it should release a PCI device.  The could be caused by a
+ * that it should release a PCI device.  This could be caused by a
  * Hot-Plug event, or because the driver is going to be removed from
  * memory.
  **/
-- 
2.50.1

