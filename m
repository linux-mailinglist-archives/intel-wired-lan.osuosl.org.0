Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PJaIxdf/mmppwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 00:09:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 537C24FC2E2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 00:09:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64CF84130B;
	Fri,  8 May 2026 22:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bv4WGV2-0Zhd; Fri,  8 May 2026 22:09:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3DD641233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778278153;
	bh=wNoyjCcOt9iCXEZtiOjB9y5jkpJj2m5Kh9tPG4kCON8=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nvpH+lq8o2ArBJ57hMjpN9vpzHjdSKaxbVUpnlRFuV2mRmOgDLAKLQ6y0GLojLGrq
	 RlMkXdiTxxcB6W1iBX35ii6M+/pdzsdxFey4HkPeCCGR1+xv3TR3C8eJv6BQheYSXt
	 bGqVoXFaX8duRq8MZRLZMwL+U0W+uUyH4BVmzB9h8e71JKLkkEn9t0Put1mSnT93Tz
	 uWQHYtBCwH/WsmDqRsH0wOGnU/YUKnooZdjfJ1C/YttDf0+e/LAIri9VHwcaaADpkV
	 8IZHVJZht+yeINXMt1t+DOoA/x+c3DQowsHkUVueCYoxe/1EUKPOOwvWZ0qWt4yyZM
	 E/x3TCMwys0cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3DD641233;
	Fri,  8 May 2026 22:09:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 98A06358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AC7B412C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:04:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDsnnxuTiUY7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 04:04:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com;
 envelope-from=prvs=65883a0750=rkannoth@marvell.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96C43414E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96C43414E9
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96C43414E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:04:58 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 647G5m4g2850767; Thu, 7 May 2026 20:49:52 -0700
Received: from dc5-exch05.marvell.com ([199.233.59.128])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 4e0wy29qgq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2026 20:49:52 -0700 (PDT)
Received: from DC5-EXCH05.marvell.com (10.69.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 May 2026 20:49:51 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH05.marvell.com
 (10.69.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Thu, 7 May 2026 20:49:51 -0700
Received: from rkannoth-OptiPlex-7090.. (unknown [10.28.36.165])
 by maili.marvell.com (Postfix) with ESMTP id B9F193F7041;
 Thu,  7 May 2026 20:49:40 -0700 (PDT)
From: Ratheesh Kannoth <rkannoth@marvell.com>
To: <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <linux-rdma@vger.kernel.org>, <netdev@vger.kernel.org>,
 <oss-drivers@corigine.com>
CC: <akiyano@amazon.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <arkadiusz.kubalewski@intel.com>,
 <brett.creeley@amd.com>, <darinzon@amazon.com>, <davem@davemloft.net>,
 <donald.hunter@gmail.com>, <edumazet@google.com>, <horms@kernel.org>,
 <idosch@nvidia.com>, <ivecera@redhat.com>, <jiri@resnulli.us>,
 <kuba@kernel.org>, <leon@kernel.org>, <mbloch@nvidia.com>,
 <michael.chan@broadcom.com>, <pabeni@redhat.com>,
 <pavan.chebbi@broadcom.com>, <petrm@nvidia.com>,
 <Prathosh.Satish@microchip.com>, <przemyslaw.kitszel@intel.com>,
 <saeedm@nvidia.com>, <sgoutham@marvell.com>, <tariqt@nvidia.com>,
 <vadim.fedorenko@linux.dev>, Ratheesh Kannoth <rkannoth@marvell.com>
Date: Fri, 8 May 2026 09:19:05 +0530
Message-ID: <20260508034912.4082520-3-rkannoth@marvell.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260508034912.4082520-1-rkannoth@marvell.com>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: mIZUNbQgqFhIKvwAl1gsnIIP3dR0l610
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDAzMyBTYWx0ZWRfXytgNrDRTptqJ
 nsux18mdiNswztiaGb87eN2rVJ4yMhSOyXZwu5m3YGwLJnCZsuVY1TuNnmXj+r2dc/VectyfntT
 Z6Zxon+0B7BAyihibK+74825huMoSVu+BHOonXL8O/kHj6a4Po5qfXRyColfGYqMW0NhAoBjpqw
 bXXTV/kPmvIdprpjFvpHGsoZljQLqARVCq4PJS2cRxeOUf/4bifLQgrfZQNXwqN57HD91QyIRAu
 seHOJ/VjNL0+ra1iFoH+SUPLcR5eZy/RgpBATC0ECJnKE8s9MELlDOxyiayYEnB6jAQlrOCIlg5
 LpNHINbDXGVlF/WrzvdtvKrBiJRoVaFDVVNqeVoNguwb6bpXQdZxUAgJvMykNvfwQ+iNKEar+8i
 8CVOfnAUDd61U2u0knmUfGk2j9JU89Ed8jJ5mYfpaGwqkmJPxO75KKVdi30GG0KadNxPhzPGmGH
 pg0Ow8e5PRozoLc7mlQ==
X-Proofpoint-GUID: mIZUNbQgqFhIKvwAl1gsnIIP3dR0l610
X-Authority-Analysis: v=2.4 cv=WMBPmHsR c=1 sm=1 tr=0 ts=69fd5d60 cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=l0iWHRpgs5sLHlkKQ1IR:22
 a=EAYMVhzMl8SCOHhVQcBL:22 a=M5GUcnROAAAA:8 a=YjTTaRMW2Sk_qnKZcsQA:9
 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-06_01,2025-10-01_01
X-Mailman-Approved-At: Fri, 08 May 2026 22:09:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pfpt0220; bh=w
 NoyjCcOt9iCXEZtiOjB9y5jkpJj2m5Kh9tPG4kCON8=; b=gAy6wfkcAoXTC/bZs
 ied3LxcaJxjNTXdOMSJ5hachPCyZpZBUZF1jR2gU7Mp8cWmtEGlTeepZCdwUq98u
 b3/noflsIz0d/ihXC0BM/Jk88PjPV2gueqEFQSRUpyvvSGbB+dmVfRmuQVEMVFnY
 NRUYWTQGoEc4eZlfUVWkIbkZ6jCaG8wWIt3TFGZQq9vdxeKucohvvvVmNQuIrBht
 BM4E3ROFgNUKxtvNFVKYxLeckqxSa+op9l+Cr+TkPKAePJPDyr4oZev5f3dW7sr6
 n8Ghu3Fo4+1BHNP2fv86ABPp3cS0kDcSMGn72SetMQ5RQ7K1yy9dy5p0f7ocKqBB
 m0YEQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com
 header.a=rsa-sha256 header.s=pfpt0220 header.b=gAy6wfkc
Subject: [Intel-wired-lan] [PATCH v12 net-next 2/9] net/mlx5e: trim stack
 use in PCIe congestion threshold helper
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
X-Rspamd-Queue-Id: 537C24FC2E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[marvell.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amazon.com,lunn.ch,intel.com,amd.com,davemloft.net,gmail.com,google.com,kernel.org,nvidia.com,redhat.com,resnulli.us,broadcom.com,microchip.com,marvell.com,linux.dev];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[rkannoth@marvell.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

union devlink_param_value grew when U64 array parameters were added.
Keeping a four-element array of that union in
mlx5e_pcie_cong_get_thresh_config() inflated the stack frame past the
-Wframe-larger-than limit.

Read each driverinit value into a single reused union, then store the
four u16 thresholds in struct mlx5e_pcie_cong_thresh field order via a
temporary u16 pointer to config.

Signed-off-by: Ratheesh Kannoth <rkannoth@marvell.com>
---
 .../mellanox/mlx5/core/en/pcie_cong_event.c   | 34 +++++++++++--------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/pcie_cong_event.c b/drivers/net/ethernet/mellanox/mlx5/core/en/pcie_cong_event.c
index 2eb666a46f39..88e76be3a73d 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/pcie_cong_event.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/pcie_cong_event.c
@@ -252,28 +252,32 @@ static int
 mlx5e_pcie_cong_get_thresh_config(struct mlx5_core_dev *dev,
 				  struct mlx5e_pcie_cong_thresh *config)
 {
+	enum {
+		INBOUND_HIGH,
+		INBOUND_LOW,
+		OUTBOUND_HIGH,
+		OUTBOUND_LOW,
+	};
+
 	u32 ids[4] = {
-		MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_LOW,
-		MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_HIGH,
-		MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_LOW,
-		MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_HIGH,
+		[INBOUND_LOW] = MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_LOW,
+		[INBOUND_HIGH] = MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_HIGH,
+		[OUTBOUND_LOW] = MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_LOW,
+		[OUTBOUND_HIGH] = MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_HIGH,
 	};
-	struct devlink *devlink = priv_to_devlink(dev);
-	union devlink_param_value val[4];
 
-	for (int i = 0; i < 4; i++) {
-		u32 id = ids[i];
-		int err;
+	struct devlink *devlink = priv_to_devlink(dev);
+	union devlink_param_value val;
+	u16 *dst = (u16 *)config;
+	int err;
 
-		err = devl_param_driverinit_value_get(devlink, id, &val[i]);
+	for (int i = 0; i < ARRAY_SIZE(ids); i++) {
+		err = devl_param_driverinit_value_get(devlink, ids[i], &val);
 		if (err)
 			return err;
-	}
 
-	config->inbound_low = val[0].vu16;
-	config->inbound_high = val[1].vu16;
-	config->outbound_low = val[2].vu16;
-	config->outbound_high = val[3].vu16;
+		dst[i] = val.vu16;
+	}
 
 	return 0;
 }
-- 
2.43.0

