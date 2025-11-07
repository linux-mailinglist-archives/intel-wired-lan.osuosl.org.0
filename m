Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 756C2C40C78
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 17:10:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD0D9844EB;
	Fri,  7 Nov 2025 16:09:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IxGsGTWEfGJl; Fri,  7 Nov 2025 16:09:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16068844EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762531798;
	bh=m68lcx4PfSk8hNTgvIueNHdgTg7KJSZWMdAzddNOwR0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nBvrxovnTnvdPcFzYHSFM4lKrphfxsycRhv7jn9w8oeAJu9DdNr2Zf3rCXrqJ2qcX
	 wRjqiTPlOVy2AeRVEHRINJcO7TASG3x5pv48gSEiFRnSngaAs4tJ8ZpZC8C1RfYloI
	 4ffwfA0YDv6Lb2+cl8tYULTddQooS8hYeAXPMiRa0jC7d8qB6izlRMq31hcqldfdpn
	 VOiPMMFU3Vw6DMkbuQC8s/BEZrIYhx0L6YQEdRjIX2SNT2trmHGXjVwQ5gnHdONq05
	 Bpgm+IG7p9qqNrQrhXOuuPWK2ki9TNDcgzqdNTH9h3F68moBDR2IcOfzJuYnyomcjJ
	 GQ2sbBYaWJE8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16068844EF;
	Fri,  7 Nov 2025 16:09:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 05BAA961
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 16:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E05F760728
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 16:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3en8XZrlvFO0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 16:09:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C376161347
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C376161347
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C376161347
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 16:09:55 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A7FdYbI024662;
 Fri, 7 Nov 2025 16:09:47 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a9kkr81yu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Nov 2025 16:09:47 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A7G4fJ3014864; Fri, 7 Nov 2025 16:09:46 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58ndqhyd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Nov 2025 16:09:46 +0000
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5A7G9jgJ011859;
 Fri, 7 Nov 2025 16:09:45 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 4a58ndqhy3-1; Fri, 07 Nov 2025 16:09:45 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com, alok.a.tiwari@oracle.com
Date: Fri,  7 Nov 2025 08:09:39 -0800
Message-ID: <20251107160943.2614765-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 spamscore=0
 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511070133
X-Authority-Analysis: v=2.4 cv=O9I0fR9W c=1 sm=1 tr=0 ts=690e19cb b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=kL11o3IWDno-IncmjmsA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDEyOSBTYWx0ZWRfX2u46IaqLLljX
 CQ2f9Abk+3eedH9vtDp4+fut9iRvGNFPYg48IHoM7SB0jRg1Q8Qx92DdB8E1LgZyv4lwIujcGAI
 UiDAB6/67TJHInFuhWbORz+4PSg5K5kIHkz37slAYIA+Ox/WJPQ6py5trU2JhEIiDhiH3Brg79L
 1QFwVlkw9m83M0fLPF246JKhL/Va09RPY0cgcxePkul5cSWvWhTOx3fStyY8T2ziDvotQK0wk4y
 RNlOYeIVmBj4so+jgDPDy11wz1I2+Sd+siyayXwqApFIjZMTT+juOOhH5mL849kcmNl3+8LA4fm
 GeJvdTxh23k+pgGc1bxcJYrDZv4qZEalltkJn1E3KKplvtPa1iBGmoCnYYw1x+dazSYHvSuMf+f
 Puxn+oUdlTzxQnlxwOzW9Tb7V5ohGg==
X-Proofpoint-ORIG-GUID: 2bMHgCEOAjUrKq0bwcoKy7fQhajNJ2o1
X-Proofpoint-GUID: 2bMHgCEOAjUrKq0bwcoKy7fQhajNJ2o1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=m68lcx4PfSk8hNTgvIueNHdgTg7KJ
 SZWMdAzddNOwR0=; b=J6xWiYeF7CnF3TT7WaT3ecTiDaTgMfkZZKn9//Zyu1VlB
 EzlzDWlZs9xcoS+JkPlKfIB2FJOGmutpkQxMCT5DSBF+LoScsYz43uSL7g2P6F9T
 UHVTdNFfPuXTxftdcyE9tbZbSIwWVxbuXoW8BeFGgFoiL51NUyFR/CGBHlCp1WnF
 niahkbkXokPnzA182YOlJjj5q52pDybGeY6rDIOTviT7FKiaVs/ozhOKtbopciLZ
 ivscvLXeRi4MX8KEK6MXipDmcT43i5N56VXhW4LtUxNfss8xU4wQw1tE/ZJ5racW
 ld7xoCxAYuLrdAWEmxtAYv/n16GbHYyJkpsxgez+Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=J6xWiYeF
Subject: [Intel-wired-lan] [PATCH net] i40e: fix incorrect src_ip checks and
 memcpy sizes in cloud filter
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

Fix following issues in the IPv4 and IPv6 cloud filter handling logic in
both the add and delete paths:

- The source-IP mask check incorrectly compares mask.src_ip[0] against
  tcf.dst_ip[0]. Update it to compare against tcf.src_ip[0]. This likely
  goes unnoticed because the check is in an "else if" path that only
  executes when dst_ip is not set, most cloud filter use cases focus on
  destination-IP matching, and the buggy condition can accidentally
  evaluate true in some cases.

- memcpy() for the IPv4 source address incorrectly uses
  ARRAY_SIZE(tcf.dst_ip) instead of ARRAY_SIZE(tcf.src_ip), although
  both arrays are the same size.

- In the IPv6 delete path, memcmp() uses sizeof(src_ip6) when comparing
  dst_ip6 fields. Replace this with sizeof(dst_ip6) to make the intent
  explicit, even though both fields are struct in6_addr.

Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 081a4526a2f0..c90cc0139986 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3819,9 +3819,9 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		if (mask.dst_ip[0] & tcf.dst_ip[0])
 			memcpy(&cfilter.ip.v4.dst_ip, tcf.dst_ip,
 			       ARRAY_SIZE(tcf.dst_ip));
-		else if (mask.src_ip[0] & tcf.dst_ip[0])
+		else if (mask.src_ip[0] & tcf.src_ip[0])
 			memcpy(&cfilter.ip.v4.src_ip, tcf.src_ip,
-			       ARRAY_SIZE(tcf.dst_ip));
+			       ARRAY_SIZE(tcf.src_ip));
 		break;
 	case VIRTCHNL_TCP_V6_FLOW:
 		cfilter.n_proto = ETH_P_IPV6;
@@ -3876,7 +3876,7 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		/* for ipv6, mask is set for all sixteen bytes (4 words) */
 		if (cfilter.n_proto == ETH_P_IPV6 && mask.dst_ip[3])
 			if (memcmp(&cfilter.ip.v6.dst_ip6, &cf->ip.v6.dst_ip6,
-				   sizeof(cfilter.ip.v6.src_ip6)))
+				   sizeof(cfilter.ip.v6.dst_ip6)))
 				continue;
 		if (mask.vlan_id)
 			if (cfilter.vlan_id != cf->vlan_id)
@@ -3965,9 +3965,9 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		if (mask.dst_ip[0] & tcf.dst_ip[0])
 			memcpy(&cfilter->ip.v4.dst_ip, tcf.dst_ip,
 			       ARRAY_SIZE(tcf.dst_ip));
-		else if (mask.src_ip[0] & tcf.dst_ip[0])
+		else if (mask.src_ip[0] & tcf.src_ip[0])
 			memcpy(&cfilter->ip.v4.src_ip, tcf.src_ip,
-			       ARRAY_SIZE(tcf.dst_ip));
+			       ARRAY_SIZE(tcf.src_ip));
 		break;
 	case VIRTCHNL_TCP_V6_FLOW:
 		cfilter->n_proto = ETH_P_IPV6;
-- 
2.50.1

