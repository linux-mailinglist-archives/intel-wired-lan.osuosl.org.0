Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 471C6C3C508
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 17:16:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE56240361;
	Thu,  6 Nov 2025 16:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w2Y58U1Ve9Rk; Thu,  6 Nov 2025 16:16:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 676DD403A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762445793;
	bh=2WHwFdzou0yMBZ8omfQgd6mfERlDvS6LcZV2FHcMa6U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jUxnGcie/WIyLirbjmk9IPQltLpHE0htGJzSIujlFM4/X3JSnXVEeXFT/ocV1yeSL
	 epZuhmArEWgW7hQu2dau2wyvBUOCselQLtU/3aQHXCb3QNl9vjKcrTzB+/GV9GagX8
	 /AdmNKXD1L8mpYvFGd69ugfBG9vOF34u3lV/1PoYFR4JYM+KPzqD1veVcS7SYohh7w
	 vtmUjSN52Cg7FIJNCkwVJBjIxLeY7qqvP6m10R2gd9wSdvsxhydwCUlGrq/pX+dX91
	 qli0otpF3snDUd9PzvuIge/GcBT6xcv7YJqwST87zjOSZHLQq7441gFyY0s26XZdGT
	 hNv+hQ0SMwGng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 676DD403A8;
	Thu,  6 Nov 2025 16:16:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 30414462
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 15:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16DBB6128D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 15:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bVToH_fE71e9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 15:03:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 45C5360B98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45C5360B98
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45C5360B98
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 15:03:14 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A6CPwab030120;
 Thu, 6 Nov 2025 15:03:07 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4a8anjj6q7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Nov 2025 15:03:06 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5A6EUtqI039457; Thu, 6 Nov 2025 15:03:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4a58nc8m9q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Nov 2025 15:03:05 +0000
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5A6ExlIV013458;
 Thu, 6 Nov 2025 15:03:05 GMT
Received: from oracle (dhcp-10-154-170-248.vpn.oracle.com [10.154.170.248])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id
 4a58nc8m6b-1; Thu, 06 Nov 2025 15:03:04 +0000
From: gregory.herrero@oracle.com
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gregory Herrero <gregory.herrero@oracle.com>
Date: Thu,  6 Nov 2025 16:02:46 +0100
Message-ID: <20251106150248.721025-1-gregory.herrero@oracle.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511060119
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDEzMyBTYWx0ZWRfXyATL4TW4viBi
 R7i9Ozw+XQ1f5Q1U9MNwxh2zoDQf0yXc7O/qanAts0MwGstRPcE7roARziQfc+Saci6mmBx3wTo
 gsdy5YrYw09cA/EAwjOlKxW9QAJu+yOr3jEhAZ9PK2Iy4CbzAHMVgAnv08KuesD9HuAwHn2wcZH
 xtv1zM0gfKO5cL4uV4ZYQkzXQkjbUPjJ1bhn5Pp/ab6tDHW3dBVBQdLQDpL7bszwv8J0RlpiCYz
 QtVyIv4OPNI7zbiKfGcrELHDaK6vjUnDSmzq5n8ApxppxIYmo0X+zSsVoDCwIj+VFvI4xH7SecZ
 h1YHXmbzVu/nQJ8z4q3KZfsTEatfqF88gJdh4rAYgb6hpVrtNEdZ92Ykah3Waa7ukdVfQAHufv0
 b7oFQ9n3HiN4vV4FWQF2fytU4iwinA==
X-Authority-Analysis: v=2.4 cv=dfqNHHXe c=1 sm=1 tr=0 ts=690cb8aa cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=0R6e6KIkVPPXZogJ048A:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-GUID: ppc1stTjZJLpVYHYjIeytU9Ifjiv8IFk
X-Proofpoint-ORIG-GUID: ppc1stTjZJLpVYHYjIeytU9Ifjiv8IFk
X-Mailman-Approved-At: Thu, 06 Nov 2025 16:16:31 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=2WHwFdzou0yMBZ8omfQgd6mfERlDv
 S6LcZV2FHcMa6U=; b=a9bm1TeCZM2ss5uu1sEL84V3ec2zD4Sta8Iw2aCjqbrNd
 sZeLuRd3vy1+ZxRSln+KLZdejNjDzXy1yU0xh99kFvVPnfCixeXqbJSZzSCyN+kz
 Nd6siV1QDl3IoQqAKGv8bbCUX9pFO4OgSZ+v/VtljlZXP5K6MGbq9VNm3bZbZ28z
 0lq3pHyhnY/UPcKtX2b1yMr+ph+npugEB80Fhmvq4SPNWu/bzW8nUCBGfHa9QWO3
 qWEkSK53ax7KoGKZ/ag9gmUm05ToVAyBWpfASr8dXX3Y0bd/fxTQxi9kBuYCpZh2
 fjDUwCmlfqyTDl9/29z6YOzOXINX5iwKdNL7g+oHA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=a9bm1TeC
Subject: [Intel-wired-lan] [PATCH 0/1] i40e: additional safety check
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

Gregory Herrero (1):
  i40e: validate ring_len parameter against hardware specific values.

 drivers/net/ethernet/intel/i40e/i40e.h         | 18 ++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ------------
 .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
 3 files changed, 20 insertions(+), 14 deletions(-)

-- 
2.51.0

