Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B58BC405E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 15:31:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89CBF40173;
	Fri,  7 Nov 2025 14:31:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id doAWOZQQgH2s; Fri,  7 Nov 2025 14:31:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E49B641589
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762525866;
	bh=HuyCyNIxSTtU1XKMsaRkv99RE6i6L6TQ42UPOrrYmNE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Pzj9yBFuVdJNGPwMMGlRNQqyMkx/GutJZWuUe0GHUeGwVHk8NQin2n712dbTpf4Hk
	 +SjIbuip9ihSJAMIWlxU0WuO7TaPT/XyTn0hhX6c6tnQNX6QC0SOENPGEPMNFseJgg
	 MjqRQXy6KINxitNsIz2KaJmxwtMz1Ym4A5eEswtWbGuZ2gYKJg7fNjjBEH/NKoyiME
	 /Go3qZWx1SYbOY0IiMoh5lBE+5qd9Vioqkl5yoNo72r03cvx3HFfpNpYx/7kVGja7Y
	 Z0Oc48vhzjBws1TUr+eSIwQGVxLUoxSnOV31gI0lkzPcjKxJmwpSmwOwB3+5QKlxLM
	 YVrqNa1mjxMbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E49B641589;
	Fri,  7 Nov 2025 14:31:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0519B1CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 14:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB8AD41584
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 14:31:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PTdi15Hb1InG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 14:31:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E11A741580
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E11A741580
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E11A741580
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 14:31:04 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A7E58Ve032330;
 Fri, 7 Nov 2025 14:30:56 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a9j77r1x4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Nov 2025 14:30:55 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A7DlDrC023016; Fri, 7 Nov 2025 14:30:55 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58nhcsyy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Nov 2025 14:30:55 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5A7EUsPT020742;
 Fri, 7 Nov 2025 14:30:54 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4a58nhcsxj-1; Fri, 07 Nov 2025 14:30:54 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Fri,  7 Nov 2025 06:30:26 -0800
Message-ID: <20251107143051.2610996-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0
 mlxlogscore=999 mlxscore=0 adultscore=0 spamscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511070119
X-Proofpoint-GUID: 9nZ0CKNCiYJFQoYQiAPGwwJDiigxscM0
X-Proofpoint-ORIG-GUID: 9nZ0CKNCiYJFQoYQiAPGwwJDiigxscM0
X-Authority-Analysis: v=2.4 cv=aNv9aL9m c=1 sm=1 tr=0 ts=690e029f b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117
 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=QyXUC8HyAAAA:8 a=yPCof4ZbAAAA:8
 a=qHh1Kq1xxaR9noxbE6oA:9 cc=ntf awl=host:12100
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDExNSBTYWx0ZWRfXwYRSEeDg6fsv
 XN5eSVPzaO1UdXzpRqAhbkJjuuGdNSZvulQunOvrbf7yjzAxboakcJ8Z7kncNubZcA6PLYaoHiK
 zi8eAcWHUCY2afWvll1sBiBgl42zEYlIeEx9VXyVMlP4Zo3PZ+qqd2ME9Ok2RNB8H0ms/1tjs9O
 ZZPpJbZcEF4dXumng2dJiLtpkH0u9fk2Zkct4rEg0oeJCIS1q/9C961N9kgtzDDcz8LwEqzZNdW
 54z05zuLgyUEzDF5fxB0kUxZNw/dmHcXSlAzEdgZaBvxdLgmyOw0rPBBgqpfz47Ki5fgvPZkqpV
 nEXShVvnBN30/oomMRIH5aI2Bp7CCDY6wC9hZB2xpvbkhnPu/2GeTDMDAqIoHW9QEW0aigvMliY
 fpQc7dQh+hmGGSV2Nll1yOKRe4DY3DrSoWUNS5+0LychSVMomSg=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=HuyCyNIxSTtU1XKMsaRkv99RE6i6L
 6TQ42UPOrrYmNE=; b=lM6KaFrIIWwHXLb7B02L+owzJ+4qFlBpnJj+LVkddwlLO
 C3bRed/etj9KXGsMQlrPV9IPcfuCv9oWMiM5ylVuToyV9wcxxo3P5Fw09XVfZO69
 OjGKiuOm475jgMX/ICP+nK6rV5pPE25Obp9JDZaWJs2M3Fm7d3e23BUBHtEJtW0i
 thqtObtZQaCWIKCKtL8mCUusHmXs2zWA1H5zIzIsXraXwSNxOoKoSAkNi7tzP+6o
 6lFrX/33WSC3rZEt+BCZ0RZQf7dv6WZk/4tUb+d4PdS6aMsoKD4tJ+EleCNaejuB
 5RiugqQfPKxlHQOzclrs/D9RXYWiIiHswhq6VfsMA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=lM6KaFrI
Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: clarify VLAN add/delete
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
and one place incorrectly references "add" instead of "delete" VLANs
due to copy-paste errors.

- Use dev_info instead of dev_warn to lower the log level.
- Rephrase the message to: "virtchnl: Too many VLAN [add|delete]
  ([v1|v2]) requests; splitting into multiple messages to PF\n".

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v1 -> v2
remove "\n" b/w message 
added vvfl and vvfl_v2 prefix
v2 -> v3
removed vvfl/vvfl_v2 prefix and using virtchnl:
prefix and (v1/v2) in the sentence suggested by Alex.
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 34a422a4a29c..88156082a41d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -793,7 +793,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl, vlan_id, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev,
+				 "virtchnl: Too many VLAN add (v1) requests; splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl, vlan_id,
 							   --count);
@@ -838,7 +839,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl_v2, filters, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev,
+				 "virtchnl: Too many VLAN add (v2) requests; splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl_v2, filters,
 							   --count);
@@ -941,7 +943,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl, vlan_id, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev,
+				 "virtchnl: Too many VLAN delete (v1) requests; splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl, vlan_id,
 							   --count);
@@ -987,7 +990,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl_v2, filters, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev,
+				 "virtchnl: Too many VLAN delete (v2) requests; splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl_v2, filters,
 							   --count);
-- 
2.50.1

