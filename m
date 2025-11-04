Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94375C31BDC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 16:09:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E20840D4C;
	Tue,  4 Nov 2025 15:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ERBSJnAjtQR; Tue,  4 Nov 2025 15:09:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F95740D4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762268950;
	bh=hQBwQoGzHrMQMWBFlP8/3WEktsb+1DIpXJFeBQPhykw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bIVVW/gv6QjLbduzfunL9L4PQS8djendNzMxlGhwvGhH4KQZhmnVsvg1DlwL0cOJO
	 BeaVd7iXqb3AW0VZu0l8eHX5IfchnSUHcoSOs9xsoS+Ueo8rzxZ+DGTjmjTSEhwlT6
	 kmbsw2wXvPG7EzJub8PML45t+YzeWE++ISk0Rf6NXUXJyJOgGJdScJhD6l8i/k6qNY
	 ajzkJbI+N6k8HtgUH2oc2kLd1nu2Y8RVxkg/0zF8QIehzg4o6PJsJ8xTCwYkBqfq7Y
	 jn7AIpDxpUwSsqtR/RSKwxTXo4YZcmTvFq5/cCkmtHN2VXUEe7q/GA2uYnhTOoxj6v
	 iWPy/Ka1jDrhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F95740D4E;
	Tue,  4 Nov 2025 15:09:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B37C222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 15:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 118D260FCC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 15:09:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w27mLErzAcAD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 15:09:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 601CC60FB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 601CC60FB1
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 601CC60FB1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 15:09:06 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A4ExYkM026294;
 Tue, 4 Nov 2025 15:08:58 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a7kr0r0nq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Nov 2025 15:08:57 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A4Dmh4t022014; Tue, 4 Nov 2025 15:08:57 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58nkg7aj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Nov 2025 15:08:57 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5A4F8uS0014809;
 Tue, 4 Nov 2025 15:08:56 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4a58nkg77r-1; Tue, 04 Nov 2025 15:08:56 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Tue,  4 Nov 2025 07:08:35 -0800
Message-ID: <20251104150849.532195-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 spamscore=0
 suspectscore=0 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511040126
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEyNCBTYWx0ZWRfX1dCixKPHWNj9
 mMn81lHtRovp90dOQy+CqFH8NQUd6OXujDobssxY0/RYYy3UiTu7yDJ8b5HLp7gXyiE83vTNsEi
 dTANCjxx986n70rqFUXp0m7guygmI6lyG1kIpyKqrKO/XKGxmJDcSZWnnSXCjV2ZXnBCGcyJFOG
 MHBmhy5UVk/mxRF/B7jlrKsOBBEecWrSK16y9GIbnX+Ql65jgOyuArpV1t74PFV2/rT1AmN/WC2
 9le65JY6eFmBKBhhqVAGpMhopuiq8VAO8UaeRnIO70LErB/B10zq9Dq+xzFyE98KgVfDyGF2Esc
 4b1lsptqlYrJRV4sNnSx5FyNHVZRYAh03gwNMiBFJLuUuHM7W+K6ewexfZU9LzEEN/dSlf0vgi8
 z4TsG0lDFGKjSNWaiPKLLOphLcjE6TZBQTQbvMAOIC1KZOaWSkU=
X-Authority-Analysis: v=2.4 cv=Z5fh3XRA c=1 sm=1 tr=0 ts=690a1709 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=QyXUC8HyAAAA:8 a=yPCof4ZbAAAA:8
 a=aDMgItlAmnlL-JTvjQ0A:9 cc=ntf awl=host:12124
X-Proofpoint-ORIG-GUID: bYrG44d6fm9pxrGPK0mk727xPe8vhZFt
X-Proofpoint-GUID: bYrG44d6fm9pxrGPK0mk727xPe8vhZFt
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=hQBwQoGzHrMQMWBFlP8/3WEktsb+1
 DIpXJFeBQPhykw=; b=LkLRZbLYuzTXiRy8RX2LwUPIBasAfO4eScwKSkz+bt1aV
 spwzWYCqFfLArkehautY+2VPW8f7n6KqPaQheROx9/dAG5k8KgBFlvc2Yd+IB8Tf
 YykCUrCT2+30baREe/OVKehO5fuUpR0YPaEmuSY1pkB+/w7+RVcREEenHc1wpL56
 V7bCmfqOmRp8zDxWBfcYAlaCHEmHITaRjGvATzq8nfwpTkl6VXZrstjVJ872tGJZ
 WEtMqP/D5YH4ug/C2TouDbXZ+RORK29LM0Rq5WLH6Y9gwv9xB2GN0cUV3YZ4pusY
 /f/jPZ2I2z4ZCVEGg4eAX87MNU+RvEZ9yEOsq8lAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=LkLRZbLY
Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: clarify VLAN add/delete
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
- Rephrase the message to: "[vvfl|vvfl_v2] Too many VLAN [add|delete]
  requests; splitting into multiple messages to PF".

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v1 -> v2
remove "\n" b/w message 
added vvfl and vvfl_v2 prefix
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 34a422a4a29c..c9495c260e6a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -793,7 +793,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl, vlan_id, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev,
+				 "vvfl Too many VLAN add requests; splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl, vlan_id,
 							   --count);
@@ -838,7 +839,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl_v2, filters, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev,
+				 "vvfl_v2 Too many VLAN add requests; splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl_v2, filters,
 							   --count);
@@ -941,7 +943,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl, vlan_id, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev,
+				 "vvfl Too many VLAN delete requests; splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl, vlan_id,
 							   --count);
@@ -987,7 +990,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
 
 		len = virtchnl_struct_size(vvfl_v2, filters, count);
 		if (len > IAVF_MAX_AQ_BUF_SIZE) {
-			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
+			dev_info(&adapter->pdev->dev,
+				 "vvfl_v2 Too many VLAN delete requests; splitting into multiple messages to PF\n");
 			while (len > IAVF_MAX_AQ_BUF_SIZE)
 				len = virtchnl_struct_size(vvfl_v2, filters,
 							   --count);
-- 
2.50.1

