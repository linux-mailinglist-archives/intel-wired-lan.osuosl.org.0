Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAR9Mgpf/mmppwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 00:09:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0794FC2AF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 00:09:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD9D340DE3;
	Fri,  8 May 2026 22:09:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AYTZKcst3EWX; Fri,  8 May 2026 22:09:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A472940DEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778278147;
	bh=V903CU/pY9yv4iRB1if3alixQru5XV3AKpyDVYJnJao=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kHpj4iwDjEBq8Q2uYONwK/VIDUzyg9/mYz/MKFEPegd0mvs/UxvokwexmdfGqyi6N
	 bf9thosHDiyjOa9Dg+o4hqHyYSh59TRldmnmZXuuaj6/wRDtGho5HA4wcpZ97rB6qD
	 vntgzjJgY4YO5b+fcc4WAdHLB3PRjxsnyb55zPbWabQTSI5K3vsh+Ea7nQbAGLi6GB
	 OuY+OsI897666KkFeO5a4X+EYZe4T/VrneZv3rTdRmJfgsxPJ4jMWFsC0PKFLJE3sC
	 pjfLh9b5w5Axpku5HWNUHlGN3o4eP9ZD3xUvdAJpHUmHxX8HTpmQYxqyzSs/XnghDv
	 SZQbNM8SwuCTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A472940DEF;
	Fri,  8 May 2026 22:09:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A99B358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40DE5413EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:04:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pRzjPDNclUBh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 04:04:50 +0000 (UTC)
X-Greylist: delayed 867 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 May 2026 04:04:50 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7B274412C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B274412C7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0a-0016f401.pphosted.com;
 envelope-from=prvs=65883a0750=rkannoth@marvell.com; receiver=<UNKNOWN> 
Received: from mx0a-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B274412C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 04:04:50 +0000 (UTC)
Received: from pps.filterd (m0431384.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 647G3jv13918091; Thu, 7 May 2026 20:51:00 -0700
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 4e093sw6kt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2026 20:51:00 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 May 2026 20:50:58 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Thu, 7 May 2026 20:50:58 -0700
Received: from rkannoth-OptiPlex-7090.. (unknown [10.28.36.165])
 by maili.marvell.com (Postfix) with ESMTP id 038963F7041;
 Thu,  7 May 2026 20:50:47 -0700 (PDT)
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
Date: Fri, 8 May 2026 09:19:11 +0530
Message-ID: <20260508034912.4082520-9-rkannoth@marvell.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260508034912.4082520-1-rkannoth@marvell.com>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: FTNooMr8ErdFQGPZZS9IDnCp-Ir7iW4f
X-Proofpoint-GUID: FTNooMr8ErdFQGPZZS9IDnCp-Ir7iW4f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDAzNCBTYWx0ZWRfXw6yoZbvbhxMT
 jBcv3aeT+Cx1LUxbSooqwLZuy364ZV4HSt5BSLDXtBc3OkjEjUVFQxcFC8bV26tbx+qiRv+6FzN
 ezAORFmEK+v5EEDHnvoSQeqikJLOHXLscXAIjvncZe0Z7sPo2mcQLW3Wt9YaR3dNiWM/U1D9F7b
 IIKle81xsnDsxIwgWehz5xpigt+VegDdPYymOqu1VOZhpAZqegBpvoQyK8zWBDJ5RrJHVKMoqe1
 VijfeIYcT7OESRynDe/6L5+H8wezKq503ejZ85DSw78W3rde7xS4hzNm8HbzHPHlChM71mG36NI
 g/KcUHLued2nfgrIf/4m9FMr2waZmqXtc3mBxY3MStO1fSAMYBe7b7xqmx+1J2tPukcjREJ/TfV
 aksTkKFfPrliXIbSDQnzV3SUjOiBRe4LHC7MivBicyfrB/m0uOJNWFnK8YMV+pG+lFLKZ9isOgF
 DjKhAB5kAxQoDf38ZAg==
X-Authority-Analysis: v=2.4 cv=WZ48rUhX c=1 sm=1 tr=0 ts=69fd5da4 cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=l0iWHRpgs5sLHlkKQ1IR:22
 a=TtqV-g6YmW1Jfm2GSLaY:22 a=M5GUcnROAAAA:8 a=3zpKOMqohp-RhpYd6ikA:9
 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-06_01,2025-10-01_01
X-Mailman-Approved-At: Fri, 08 May 2026 22:09:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pfpt0220; bh=V
 903CU/pY9yv4iRB1if3alixQru5XV3AKpyDVYJnJao=; b=fbTdhW1nXzwO9qwaL
 U6iPj+T0sg49cdHp2kuvqcYXKHOaYpFSfoapljRextNuO8keMCA5uVIvYFjXqO0Z
 chaBrv+c5bv4AuR9KpFmhJYPpuil8u6k5TSIzh0ED4kTuPf/CC6qYm6Y4gExY/ar
 vQUOD2Q9cobMRv0KOblr8bBtEUziwVHx7xGjoVprXl/TVtjw+KfqriX4FnxlrIxV
 b9h/znZt8td6nj8dWgWHUhLk63i+VRWYUpgDAElhT3zfo+UrjA0oImCDr4EOmhRi
 VlhT2SWeeLsYwYdWbJ22tgydHcuIueDGvEt2AymC8Hkt02lUd693y7ZJ30u3JqtF
 AWPVA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=pfpt0220 header.b=fbTdhW1n
Subject: [Intel-wired-lan] [PATCH v12 net-next 8/9] octeontx2: cn20k:
 Respect NPC MCAM X2/X4 profile in flows and DFT alloc
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
X-Rspamd-Queue-Id: 6C0794FC2AF
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
	NEURAL_HAM(-0.00)[-0.973];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Default CN20K NPC rule allocation now keys off the active MCAM keyword
width: use X4 with a bank-masked reference index when the silicon uses
X4 keys, and X2 with the raw index otherwise (replacing the previous
always-X2 / eidx + 1 behaviour).

In the AF flow-install path, flows that need more than 256 key bits
query the NPC profile; if the platform is fixed to X2 entries, fail
with -EOPNOTSUPP instead of requesting X4. Otherwise select X4 for the
MCAM alloc.

On the PF, cache and pass the profile kw_type from npc_get_pfl_info
through otx2_mcam_pfl_info_get(), and use it when allocating MCAM
entries for RSS/defaults and when installing ethtool flows on CN20K,
including masking the reference index for X4 slot layout.

Signed-off-by: Ratheesh Kannoth <rkannoth@marvell.com>
---
 .../ethernet/marvell/octeontx2/af/cn20k/npc.c | 11 ++++-
 .../marvell/octeontx2/af/rvu_npc_fs.c         | 12 ++++-
 .../marvell/octeontx2/nic/otx2_flows.c        | 48 +++++++++++++------
 3 files changed, 53 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/marvell/octeontx2/af/cn20k/npc.c b/drivers/net/ethernet/marvell/octeontx2/af/cn20k/npc.c
index 67dfbe5ca903..15b3f29d60ee 100644
--- a/drivers/net/ethernet/marvell/octeontx2/af/cn20k/npc.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/cn20k/npc.c
@@ -4467,11 +4467,18 @@ int npc_cn20k_dft_rules_alloc(struct rvu *rvu, u16 pcifunc)
 	 * as NPC_DFT_RULE_PRIO - 1 (higher hw priority)
 	 */
 	req.contig = false;
-	req.kw_type = NPC_MCAM_KEY_X2;
 	req.count = cnt;
 	req.hdr.pcifunc = pcifunc;
 	req.ref_prio = NPC_MCAM_LOWER_PRIO;
-	req.ref_entry = eidx + 1;
+
+	if (npc_priv.kw == NPC_MCAM_KEY_X4) {
+		req.kw_type = NPC_MCAM_KEY_X4;
+		req.ref_entry = eidx & (npc_priv.bank_depth - 1);
+	} else {
+		req.kw_type = NPC_MCAM_KEY_X2;
+		req.ref_entry = eidx;
+	}
+
 	ret = rvu_mbox_handler_npc_mcam_alloc_entry(rvu, &req, &rsp);
 	if (ret) {
 		dev_err(rvu->dev,
diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_npc_fs.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_npc_fs.c
index 6ae9cdcb608b..d20eb0e47d7d 100644
--- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_npc_fs.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_npc_fs.c
@@ -1671,9 +1671,11 @@ rvu_npc_alloc_entry_for_flow_install(struct rvu *rvu,
 {
 	struct npc_mcam_alloc_entry_req entry_req;
 	struct npc_mcam_alloc_entry_rsp entry_rsp;
+	struct npc_get_pfl_info_rsp rsp = { 0 };
 	struct npc_get_num_kws_req kws_req;
 	struct npc_get_num_kws_rsp kws_rsp;
 	int off, kw_bits, rc;
+	struct msg_req req;
 	u8 *src, *dst;
 
 	if (!is_cn20k(rvu->pdev)) {
@@ -1697,8 +1699,16 @@ rvu_npc_alloc_entry_for_flow_install(struct rvu *rvu,
 	kw_bits = kws_rsp.kws * 64;
 
 	*kw_type = NPC_MCAM_KEY_X2;
-	if (kw_bits > 256)
+	if (kw_bits > 256) {
+		rvu_mbox_handler_npc_get_pfl_info(rvu, &req, &rsp);
+		if (rsp.kw_type == NPC_MCAM_KEY_X2) {
+			dev_err(rvu->dev,
+				"Only X2 entries are supported in X2 profile\n");
+			return -EOPNOTSUPP;
+		}
+
 		*kw_type = NPC_MCAM_KEY_X4;
+	}
 
 	memset(&entry_req, 0, sizeof(entry_req));
 	memset(&entry_rsp, 0, sizeof(entry_rsp));
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_flows.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_flows.c
index 38cc539d724d..5dd0591fed99 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_flows.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_flows.c
@@ -37,14 +37,13 @@ static void otx2_clear_ntuple_flow_info(struct otx2_nic *pfvf, struct otx2_flow_
 	flow_cfg->max_flows = 0;
 }
 
-static int otx2_mcam_pfl_info_get(struct otx2_nic *pfvf, bool *is_x2,
-				  u16 *x4_slots)
+static int otx2_mcam_pfl_info_get(struct otx2_nic *pfvf, u16 *x4_slots, u8 *kw_type)
 {
 	struct npc_get_pfl_info_rsp *rsp;
 	struct msg_req *req;
 	static struct {
 		bool is_set;
-		bool is_x2;
+		u8 kw_type;
 		u16 x4_slots;
 	} pfl_info;
 
@@ -53,8 +52,8 @@ static int otx2_mcam_pfl_info_get(struct otx2_nic *pfvf, bool *is_x2,
 	 */
 	mutex_lock(&pfvf->mbox.lock);
 	if (pfl_info.is_set) {
-		*is_x2 = pfl_info.is_x2;
 		*x4_slots = pfl_info.x4_slots;
+		*kw_type = pfl_info.kw_type;
 		mutex_unlock(&pfvf->mbox.lock);
 		return 0;
 	}
@@ -79,16 +78,16 @@ static int otx2_mcam_pfl_info_get(struct otx2_nic *pfvf, bool *is_x2,
 		return -EFAULT;
 	}
 
-	*is_x2 = (rsp->kw_type == NPC_MCAM_KEY_X2);
-	if (*is_x2)
-		*x4_slots = 0;
+	pfl_info.kw_type = rsp->kw_type;
+	if (rsp->kw_type == NPC_MCAM_KEY_X2)
+		pfl_info.x4_slots = 0;
 	else
-		*x4_slots = rsp->x4_slots;
-
-	pfl_info.is_x2 = *is_x2;
-	pfl_info.x4_slots = *x4_slots;
+		pfl_info.x4_slots = rsp->x4_slots;
 	pfl_info.is_set = true;
 
+	*x4_slots = pfl_info.x4_slots;
+	*kw_type = pfl_info.kw_type;
+
 	mutex_unlock(&pfvf->mbox.lock);
 	return 0;
 }
@@ -164,6 +163,7 @@ int otx2_alloc_mcam_entries(struct otx2_nic *pfvf, u16 count)
 	u16 dft_idx = 0, x4_slots = 0;
 	int ent, allocated = 0, ref;
 	bool is_x2 = false;
+	u8 kw_type = 0;
 	int rc;
 
 	/* Free current ones and allocate new ones with requested count */
@@ -182,12 +182,14 @@ int otx2_alloc_mcam_entries(struct otx2_nic *pfvf, u16 count)
 	}
 
 	if (is_cn20k(pfvf->pdev)) {
-		rc = otx2_mcam_pfl_info_get(pfvf, &is_x2, &x4_slots);
+		rc = otx2_mcam_pfl_info_get(pfvf, &x4_slots, &kw_type);
 		if (rc) {
 			netdev_err(pfvf->netdev, "Error to retrieve profile info\n");
 			return rc;
 		}
 
+		is_x2 = kw_type == NPC_MCAM_KEY_X2;
+
 		rc = otx2_get_dft_rl_idx(pfvf, &dft_idx);
 		if (rc) {
 			netdev_err(pfvf->netdev,
@@ -289,6 +291,8 @@ int otx2_mcam_entry_init(struct otx2_nic *pfvf)
 	struct npc_mcam_alloc_entry_rsp *rsp;
 	int vf_vlan_max_flows, count;
 	int rc, ref, prio, ent;
+	u8 kw_type = 0;
+	u16 x4_slots;
 	u16 dft_idx;
 
 	ref = 0;
@@ -315,6 +319,16 @@ int otx2_mcam_entry_init(struct otx2_nic *pfvf)
 	if (!flow_cfg->def_ent)
 		return -ENOMEM;
 
+	kw_type = NPC_MCAM_KEY_X2;
+	if (is_cn20k(pfvf->pdev)) {
+		rc = otx2_mcam_pfl_info_get(pfvf, &x4_slots, &kw_type);
+		if (rc) {
+			netdev_err(pfvf->netdev,
+				   "Error to get pfl info\n");
+			return rc;
+		}
+	}
+
 	mutex_lock(&pfvf->mbox.lock);
 
 	req = otx2_mbox_alloc_msg_npc_mcam_alloc_entry(&pfvf->mbox);
@@ -324,6 +338,10 @@ int otx2_mcam_entry_init(struct otx2_nic *pfvf)
 	}
 
 	req->kw_type = NPC_MCAM_KEY_X2;
+	if (is_cn20k(pfvf->pdev) && kw_type == NPC_MCAM_KEY_X4) {
+		req->kw_type = NPC_MCAM_KEY_X4;
+		ref &= (x4_slots - 1);
+	}
 	req->contig = false;
 	req->count = count;
 	req->ref_prio = prio;
@@ -1174,15 +1192,14 @@ static int otx2_add_flow_msg(struct otx2_nic *pfvf, struct otx2_flow *flow)
 #ifdef CONFIG_DCB
 	int vlan_prio, qidx, pfc_rule = 0;
 #endif
+	bool modify = false, is_x2;
 	int err, vf = 0, off, sz;
-	bool modify = false;
 	u8 kw_type = 0;
 	u8 *src, *dst;
 	u16 x4_slots;
-	bool is_x2;
 
 	if (is_cn20k(pfvf->pdev)) {
-		err = otx2_mcam_pfl_info_get(pfvf, &is_x2, &x4_slots);
+		err = otx2_mcam_pfl_info_get(pfvf, &x4_slots, &kw_type);
 		if (err) {
 			netdev_err(pfvf->netdev,
 				   "Error to retrieve NPC profile info, pcifunc=%#x\n",
@@ -1190,6 +1207,7 @@ static int otx2_add_flow_msg(struct otx2_nic *pfvf, struct otx2_flow *flow)
 			return -EFAULT;
 		}
 
+		is_x2 = kw_type == NPC_MCAM_KEY_X2;
 		if (!is_x2) {
 			err = otx2_prepare_flow_request(&flow->flow_spec,
 							&treq);
-- 
2.43.0

