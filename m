Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B75AECB9D91
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 22:07:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49F9F83CC5;
	Fri, 12 Dec 2025 21:07:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Orci-AMPxsf; Fri, 12 Dec 2025 21:07:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E83983CA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765573632;
	bh=jZotvAzIzA21kiD8xdeWGblBDjeqsqgkQk818Xcb+70=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EMgUnpE2l8hIeyHVg6rRYQ8ji4cvTj4d10ggTekVhR4cusIiN8gXmUfPvphIxG4WG
	 bL40WxcBuIFPA9GEUKAmWfoAjH2G7Ep1AZznIWNkg/7ZO8iGpokcI/yOaPnZKrgpya
	 gt77ulGITR++wXC4hywjQ8cYm5pAlN7WnLp5ob/FOllVXsjb4XFEcO2H2GD/k9Fo8C
	 HbWzB3m/YDvKUZKKg6SBkugnx/IW6+DIua+7VSR5FVkUSDR4jYSaaq4Q8e/Lu0lGvT
	 zQzXo98kffzh8oqmOtU14TtH3kVLKy50JiH0dofGwz1ytm8lLDXJv8TgvG5lids2ed
	 ki9cApRcGS4Bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E83983CA8;
	Fri, 12 Dec 2025 21:07:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 368F02C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D3D140675
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:07:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oULZgKl5D0lV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 21:07:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EF228405C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF228405C6
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF228405C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:07:08 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5BCKgXK7355774; Fri, 12 Dec 2025 21:07:01 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4ayd1mbuw7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Dec 2025 21:07:01 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5BCJOawf039827; Fri, 12 Dec 2025 21:07:01 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4avaxq9t04-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Dec 2025 21:07:01 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5BCL6thx002146;
 Fri, 12 Dec 2025 21:07:00 GMT
Received: from oracle (dhcp-10-154-164-6.vpn.oracle.com [10.154.164.6])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 4avaxq9sve-2; Fri, 12 Dec 2025 21:06:59 +0000
From: gregory.herrero@oracle.com
To: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gregory Herrero <gregory.herrero@oracle.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Date: Fri, 12 Dec 2025 22:06:43 +0100
Message-ID: <20251212210643.1835176-2-gregory.herrero@oracle.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251212210643.1835176-1-gregory.herrero@oracle.com>
References: <20251212210643.1835176-1-gregory.herrero@oracle.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-12_06,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512120169
X-Proofpoint-GUID: u1ipdFh1w_ctQ97Klcx6f6rvd-tR4yf4
X-Authority-Analysis: v=2.4 cv=HvZ72kTS c=1 sm=1 tr=0 ts=693c83f5 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117
 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8 a=QyXUC8HyAAAA:8
 a=h7IKB27rtHQ5j4P_g-8A:9 cc=ntf awl=host:13654
X-Proofpoint-ORIG-GUID: u1ipdFh1w_ctQ97Klcx6f6rvd-tR4yf4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEyMDE3MCBTYWx0ZWRfX0JGwpStb9kNu
 5ik24FNQti/h6nvHu8twGGY0oHapcRTw2zWlsNhXOJXCLISYKdbLSSzkDCQwVHCuSm/AH8+JWpM
 jWjKRtWq63OfeccWNmC3xl7wDjEV5X+e07n8Nz8u/DyYjvN1FGww9ZwTjDCyPgS/45sMDEF1lVZ
 Sr1o+QoaoPrQlib/OnMQBk7sUNM7EdYsy6xjfFtK2lZq3D0jjHQgBtMWeZkFn+3FjvKa8D8PHHV
 14LiSn2QaTrMho81dfICkKQhg2LWNpB2u1unEhwSc4H5zFgdNzIU0r7RJFpUXGB22kOMPtEijPj
 QUij8bF6EoJLzOvEgVXz7oasE6DYo+oXCYzvC8pXvnWKtVIgcU0upxB+hkdmNpgBgkQb87BDK3V
 XmuKHvS+toRrOkewSqt+L4kyWZlRFmAoV5RP/Fic8sUPiSswtOc=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=corp-2025-04-25; bh=jZotv
 AzIzA21kiD8xdeWGblBDjeqsqgkQk818Xcb+70=; b=U5D2qmytOixg0d/aGOFt0
 0/VULS3B3Oz9ZwvRPVkSEA06EIcUa7ENM/mUF04VSnMMGH+xBnLQmefyWtVmWjha
 x0nvzNgIzZpounzFX29QJvx2oouRHjSujfDlaUu5pBBu98D/v9l+SmGC8aF2uNg5
 CFK6ovOZoMdWmHG8XSaZoYr2PjW3VzLZd8K4x5rmFi3gPYRNVWUkaTl29LBxJW33
 XABlU1/2h5NQctzEKNNx8bylTp5dQytTAE6muKSSMyYb046uLqKjny+oyYE3QS4C
 8zAZmfx3AXEoLKB3OpFO0NNZqC8b8SHB0dZJkp2wUbRWAh5XCL/fEwuO5HNLTE6j
 w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=U5D2qmyt
Subject: [Intel-wired-lan] [PATCH v5 1/1] i40e: validate ring_len parameter
 against hardware-specific values
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

The maximum number of descriptors supported by the hardware is
hardware-dependent and can be retrieved using
i40e_get_max_num_descriptors(). Move this function to a shared header
and use it when checking for valid ring_len parameter rather than using
hardcoded value.

By fixing an over-acceptance issue, behavior change could be seen where
ring_len could now be rejected while configuring rx and tx queues if its
size is larger than the hardware-dependent maximum number of
descriptors.

Fixes: 55d225670def ("i40e: add validation for ring_len param")
Signed-off-by: Gregory Herrero <gregory.herrero@oracle.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h             | 11 +++++++++++
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c     | 12 ------------
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
 3 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d2d03db2acec..dcb50c2e1aa2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1422,4 +1422,15 @@ static inline struct i40e_veb *i40e_pf_get_main_veb(struct i40e_pf *pf)
 	return (pf->lan_veb != I40E_NO_VEB) ? pf->veb[pf->lan_veb] : NULL;
 }
 
+static inline u32 i40e_get_max_num_descriptors(const struct i40e_pf *pf)
+{
+	const struct i40e_hw *hw = &pf->hw;
+
+	switch (hw->mac.type) {
+	case I40E_MAC_XL710:
+		return I40E_MAX_NUM_DESCRIPTORS_XL710;
+	default:
+		return I40E_MAX_NUM_DESCRIPTORS;
+	}
+}
 #endif /* _I40E_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index f2c2646ea298..6a47ea0927e9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2013,18 +2013,6 @@ static void i40e_get_drvinfo(struct net_device *netdev,
 		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
 }
 
-static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf)
-{
-	struct i40e_hw *hw = &pf->hw;
-
-	switch (hw->mac.type) {
-	case I40E_MAC_XL710:
-		return I40E_MAX_NUM_DESCRIPTORS_XL710;
-	default:
-		return I40E_MAX_NUM_DESCRIPTORS;
-	}
-}
-
 static void i40e_get_ringparam(struct net_device *netdev,
 			       struct ethtool_ringparam *ring,
 			       struct kernel_ethtool_ringparam *kernel_ring,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 8b30a3accd31..1fa877b52f61 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -656,7 +656,7 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf *vf, u16 vsi_id,
 
 	/* ring_len has to be multiple of 8 */
 	if (!IS_ALIGNED(info->ring_len, 8) ||
-	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
+	    info->ring_len > i40e_get_max_num_descriptors(pf)) {
 		ret = -EINVAL;
 		goto error_context;
 	}
@@ -726,7 +726,7 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf *vf, u16 vsi_id,
 
 	/* ring_len has to be multiple of 32 */
 	if (!IS_ALIGNED(info->ring_len, 32) ||
-	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
+	    info->ring_len > i40e_get_max_num_descriptors(pf)) {
 		ret = -EINVAL;
 		goto error_param;
 	}
-- 
2.51.0

