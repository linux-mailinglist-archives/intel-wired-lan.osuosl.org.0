Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 711DBC56281
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 09:05:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0239640C1B;
	Thu, 13 Nov 2025 08:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I01rcnMWDkBh; Thu, 13 Nov 2025 08:05:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E52940C12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763021136;
	bh=DpkW/1BohmzS7PepsbJSAV+8NaxBixMbafLRMu8a4Pw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YtByb9UhRIerFffaIfOItFJ+302BBa4tgHMbzn3Sp7LcDqXAEYs6iXYzhbsPPdvmb
	 lCzCg5WhTItlC/Atqy1/gx2Tw+6Ja8KIg1z5am7UBUndWZtFzE7thwEAPaZpZ/6jGM
	 Db9Uq07/EnasMexZIREt2wlQ3DSfX9riHwlqRVjbtXOPJ/wLvyQs0tWDKfHt4jeUED
	 167a95MEcn/6DnbwG9ZzCBBI9blViZjtAjcC3YOYn0OvQ0qmc7mrcCSqIfiPnb+df5
	 2fhwyRVgQ0bXFoW1ly5lJ+Jr2Bq+zNKva+D1FJolKCpMwSDCD8uNVSAQshDqfiXQhO
	 4Jbv5TYa5hU4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E52940C12;
	Thu, 13 Nov 2025 08:05:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 986C1158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E94440C01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lqs3MFo44T6t for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 08:05:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 831B840B61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 831B840B61
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 831B840B61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:05:34 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AD1gcm7019693;
 Thu, 13 Nov 2025 08:05:25 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4acyjs95xm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Nov 2025 08:05:25 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5AD7NLUV009925; Thu, 13 Nov 2025 08:05:23 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a9vacar7x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Nov 2025 08:05:23 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AD85N4X021139;
 Thu, 13 Nov 2025 08:05:23 GMT
Received: from oracle.home (dhcp-10-154-173-166.vpn.oracle.com
 [10.154.173.166])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 4a9vacar3f-1; Thu, 13 Nov 2025 08:05:22 +0000
From: gregory.herrero@oracle.com
To: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gregory Herrero <gregory.herrero@oracle.com>
Date: Thu, 13 Nov 2025 09:04:58 +0100
Message-ID: <20251113080459.2290580-1-gregory.herrero@oracle.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0 spamscore=0
 mlxscore=0 bulkscore=0 suspectscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511130057
X-Proofpoint-GUID: SojHRh7z1TDAtPC6uEN-pzquSEsN4HnR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE0OSBTYWx0ZWRfXz+v1aWYCHuM9
 mE+OHm8Y/C2ZSptxYcTA6BvC0Wj1pPIcrOIrpn63vNSWs9p0uKlxloZHXzv1SOhyyn1rDNUWW3N
 ZtNdcAzoPVxky3XLAflW+LJ5C8EsXRq4TZDMJmRKF2TKjLJuJSsBDh9FhIp65qnrMJWLTqrkeRl
 IIghFo3FDQ0wKvD0TjTChYQhE4uVhGwqe9UF+C4Q35jC64FJcMGU6PlgM2x6X4LX5mq36udCXtX
 Y1akG/NO4Geqxta6BBJs4z5MCSTFazg8FcveaDgaQ19wJ+TB2j8rBDLIWJcezyrn+KzWSGUgleB
 GFhZ+oaZEvgdcvdmSb4BqmWC6AwpV0I4Ld1dVDMAO4UpUHNJKADTaBaaZUYhpFRuRTQays50IAu
 vNUb5HZ+sgd3OVVldeVk/BPPpFcbgA==
X-Proofpoint-ORIG-GUID: SojHRh7z1TDAtPC6uEN-pzquSEsN4HnR
X-Authority-Analysis: v=2.4 cv=HLzO14tv c=1 sm=1 tr=0 ts=69159145 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=9rXuIt3xGVaoFKTACzIA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=DpkW/1BohmzS7PepsbJSAV+8NaxBi
 xMbafLRMu8a4Pw=; b=WiVDDwPAwLzATh6ZCu1de20Mtfp0IaXiOTPt8ayWFb9I7
 O4HPfmaijFnsejO118mYYLUmmYytuqEf7DW2sRu+IiRD/DVdUZk9Yl7+CI4hfP6L
 V4PkpBHOMf2Yy8zAIshIYfpMFsFmK4mPwvA+YvMNyJIcE+XyHchOMzrHJ449a+sK
 gl86y3rM6QPNBwolnat5YYAJ6gfkGi4hiLD8ot4n27cEXuRJay44yIbswjBYErT9
 ys9Wp6n/8XiQhfjbHVs5nl4RiKMCj95XLTfYg96FrPwm+GHT7hUEcQkLXDArKDmR
 zzVsmQULfwNK2+ngvHs+aRBQbaQq5GPLvlEzQvJig==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=WiVDDwPA
Subject: [Intel-wired-lan] [PATCH v2 0/1] i40e: additional safety check
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

From: Gregory Herrero <gregory.herrero@oracle.com>


On code inspection, I realized we may want to check ring_len parameter
against hardware specific values in i40e_config_vsi_tx_queue() and
i40e_config_vsi_rx_queue().

v2:
- make i40e_get_max_num_descriptors() 'pf' argument const.
- reword i40e_get_max_num_descriptors() description.
- modify commit description to explain potential behavior change.

Gregory Herrero (1):
  i40e: validate ring_len parameter against hardware-specific values.

 drivers/net/ethernet/intel/i40e/i40e.h          | 17 +++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c  | 12 ------------
 .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c  |  4 ++--
 3 files changed, 19 insertions(+), 14 deletions(-)

-- 
2.51.0

