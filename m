Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F04CA4E10B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 15:35:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42BE6406E4;
	Tue,  4 Mar 2025 14:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yBTcjupAOV3j; Tue,  4 Mar 2025 14:35:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B342240687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741098911;
	bh=dv+tWHVTPien1F14T8DrX5WhhxyO+4fw5OTs0Mupdz4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bxqLhSLMb79ozah6UvH+a+jGx/15E1nkZG+kCuAai86QDNmcek8mg3Z6ipmbQzLiS
	 nuyBcKviyl+9S9yZmTjR8UDyJmFTZf/eIxfSElzAt3q412+PEZ7OAWTe+nVTCCBgxO
	 7L1/eoJKBlxfUR89QcDACkNRYCSpiC0m/kZCJT5flW/qiLz7P2Kv8tztiKI7Jf3WDj
	 I0PjR9kusZAEiUcJAlXFO3VhFroo5IpTNeO6KEb2TlMbvPZMZZ/j1jvDkki6VVr9h4
	 deAoonZ/PCW2JYcrpDf3xt6mUzE17ZDEr0w8A5Qr9AxmCXMi7amjvDnorAfGTpkXcO
	 72kfEbfXsdkwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B342240687;
	Tue,  4 Mar 2025 14:35:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B548C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 14:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0E8340921
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 14:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iiwl1f0W0uXA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 14:35:07 +0000 (UTC)
X-Greylist: delayed 312 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 04 Mar 2025 14:35:07 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1DF7940907
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DF7940907
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=160.75.25.115;
 helo=beeline1.cc.itu.edu.tr; envelope-from=root@cc.itu.edu.tr;
 receiver=<UNKNOWN> 
Received: from beeline1.cc.itu.edu.tr (beeline1.cc.itu.edu.tr [160.75.25.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DF7940907
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 14:35:07 +0000 (UTC)
Received: from lesvatest1.cc.itu.edu.tr (unknown [10.146.128.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by beeline1.cc.itu.edu.tr (Postfix) with ESMTPS id 0DE1440D4DD2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 17:35:05 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
 by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6dCV4hWMzFwPP
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 17:21:26 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
 id 32DE842734; Tue,  4 Mar 2025 17:20:59 +0300 (+03)
X-Envelope-From: <linux-kernel+bounces-541372-bozkiru=itu.edu.tr@vger.kernel.org>
Received: from fgw1.itu.edu.tr (fgw1.itu.edu.tr [160.75.25.103])
 by le2 (Postfix) with ESMTP id 0987643302
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:31:21 +0300 (+03)
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
 by fgw1.itu.edu.tr (Postfix) with SMTP id 949693063EFC
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:31:21 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sv.mirrors.kernel.org (Postfix) with ESMTPS id D05133B50B7
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 10:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
 by smtp.subspace.kernel.org (Postfix) with ESMTP id C11251F460F;
 Mon,  3 Mar 2025 10:28:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BAF1F37DA;
 Mon,  3 Mar 2025 10:28:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1740997698; cv=none;
 b=MQ+x//oiRXrlMqq6SIK3LnLqKRcMKR97RBWDumSSt1ABmVLCCbwj9OC4RHjm0ndk2mPYhfMD/96UnZnpJ1aA8P6HrjH4g7yPwnmbLLy3fyNWgS5K65z14uOSBCPDevCVf/RAS6AM8qDHdN2xisc5UjCFACpfLU3o+2RImmdJsYQ=
ARC-Message-Signature: i=1; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1740997698; c=relaxed/simple;
 bh=HGUt+LUgOeRfkzIoM51QROFkB+L0gZe8jc/jc1vXwiE=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=fsRXceDb4l/Db3CHJolDL7JFlSPGV55KQVUfmmPcxAk+NNCLkeZ0LzC2h/I3fUApYrbl29Whjc6CZ8DjDwflbbXe5xhg4Sgh7hCctCPGURX31ZKr5uIMx+RInfrVJTP7dvEZBGPMo5UuziDlfundmoGpuzYS7AbEhethGdYQraY=
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.b=MNQftRj0; arc=none smtp.client-ip=198.175.65.9
X-CSE-ConnectionGUID: xQyPQ2wWRBOcfudz7CawtQ==
X-CSE-MsgGUID: VPTzY/uQQ52ZMs4xNH6PYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="64310213"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="64310213"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 02:28:15 -0800
X-CSE-ConnectionGUID: H+as7IbBSZmaZqKs10xtmA==
X-CSE-MsgGUID: F9AwFsLdTumNjSIuvJFwJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="122569901"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa005.fm.intel.com with ESMTP; 03 Mar 2025 02:28:08 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Mon,  3 Mar 2025 05:26:55 -0500
Message-Id: <20250303102658.3580232-7-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250303102658.3580232-1-faizal.abdul.rahim@linux.intel.com>
References: <20250303102658.3580232-1-faizal.abdul.rahim@linux.intel.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for
 more information
X-ITU-Libra-ESVA-ID: 4Z6dCV4hWMzFwPP
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741703631.96031@jMdglCTiqrWG+tYlxd+j6Q
X-ITU-MailScanner-SpamCheck: not spam
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740997696; x=1772533696;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HGUt+LUgOeRfkzIoM51QROFkB+L0gZe8jc/jc1vXwiE=;
 b=MNQftRj0IrnTAqZf6jCxOE02vmX5O2BOHGecfT3McIEUm8ek0Drkd0cV
 BfMXnG0MsUEfCJtHEApnimoHL3lE2elXe9GLZrum6B76JNzSf4FTjIDAw
 taXRTaBmch/p6UwADErEQ34TKdK7N217FF2Pv6Za+dkd4xmrrAeFn6Zaq
 J0F/D2TdGfkKyXDtI5wv/VI52bE+zLeL9aTYycYIp4cgNgHLD55B3tacg
 u1TEcE0NYs2aTKlHXCJtQaftl8hQ7XMCb+S0/cJXhbNS2QoKKESEuaOeV
 HD5yMsbaJMS5+RapKmsUfGw6d85V/2U8ggXxB+465phw51M1nwHvS3tGw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MNQftRj0
X-Mailman-Original-Authentication-Results: lesva1.cc.itu.edu.tr;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.b=MNQftRj0
X-Mailman-Original-Authentication-Results: lesva2.cc.itu.edu.tr;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.b=MNQftRj0
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.b="MNQftRj0"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=none
 smtp.client-ip=198.175.65.9
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; spf=none
 smtp.mailfrom=linux.intel.com
Subject: [Intel-wired-lan] [PATCH iwl-next v7 6/9] igc: Add support to set
 tx-min-frag-size
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

Add support to set tx-min-frag-size via set_mm callback in igc.
Increase the max limit of tx-ming-frag-size in ethtool from 252 to 256
since i225/6 value range is 64, 128, 192 and 256.

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  5 +++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 37 ++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  2 +-
 net/ethtool/mm.c                             |  2 +-
 6 files changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/=
intel/igc/igc.h
index d9ecb7cf80c9..4dfd133b4d6f 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -42,6 +42,7 @@ void igc_ethtool_set_ops(struct net_device *);
=20
 struct igc_fpe_t {
 	struct ethtool_mmsv mmsv;
+	u32 tx_min_frag_size;
 };
=20
 enum igc_mac_filter_type {
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/e=
thernet/intel/igc/igc_defines.h
index 22db1de02964..038ee89f1e08 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -551,6 +551,7 @@
 #define IGC_TQAVCTRL_PREEMPT_ENA	0x00000002
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
 #define IGC_TQAVCTRL_FUTSCDDIS		0x00000080
+#define IGC_TQAVCTRL_MIN_FRAG_MASK	0x0000C000
=20
 #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/e=
thernet/intel/igc/igc_ethtool.c
index b64d5c6c1d20..529654ccd83f 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1789,6 +1789,11 @@ static int igc_ethtool_set_mm(struct net_device *n=
etdev,
 	struct igc_adapter *adapter =3D netdev_priv(netdev);
 	struct igc_fpe_t *fpe =3D &adapter->fpe;
=20
+	fpe->tx_min_frag_size =3D igc_fpe_get_supported_frag_size(cmd->tx_min_f=
rag_size);
+	if (fpe->tx_min_frag_size !=3D cmd->tx_min_frag_size)
+		NL_SET_ERR_MSG_MOD(extack,
+				   "tx-min-frag-size value set is unsupported. Rounded up to support=
ed value (64, 128, 192, 256)");
+
 	if (fpe->mmsv.pmac_enabled !=3D cmd->pmac_enabled) {
 		if (cmd->pmac_enabled)
 			static_branch_inc(&igc_fpe_enabled);
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ether=
net/intel/igc/igc_tsn.c
index 0a2c747fde2d..2ec5909bf8b0 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -6,6 +6,12 @@
 #include "igc_hw.h"
 #include "igc_tsn.h"
=20
+#define MIN_MULTPLIER_TX_MIN_FRAG	0
+#define MAX_MULTPLIER_TX_MIN_FRAG	3
+/* Frag size is based on the Section 8.12.2 of the SW User Manual */
+#define TX_MIN_FRAG_SIZE		64
+#define TX_MAX_FRAG_SIZE	(TX_MIN_FRAG_SIZE * (MAX_MULTPLIER_TX_MIN_FRAG =
+ 1))
+
 DEFINE_STATIC_KEY_FALSE(igc_fpe_enabled);
=20
 static int igc_fpe_init_smd_frame(struct igc_ring *ring,
@@ -128,6 +134,7 @@ static const struct ethtool_mmsv_ops igc_mmsv_ops =3D=
 {
=20
 void igc_fpe_init(struct igc_adapter *adapter)
 {
+	adapter->fpe.tx_min_frag_size =3D TX_MIN_FRAG_SIZE;
 	ethtool_mmsv_init(&adapter->fpe.mmsv, adapter->netdev, &igc_mmsv_ops);
 }
=20
@@ -278,7 +285,7 @@ static int igc_tsn_disable_offload(struct igc_adapter=
 *adapter)
 	tqavctrl =3D rd32(IGC_TQAVCTRL);
 	tqavctrl &=3D ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
 		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS |
-		      IGC_TQAVCTRL_PREEMPT_ENA);
+		      IGC_TQAVCTRL_PREEMPT_ENA | IGC_TQAVCTRL_MIN_FRAG_MASK);
=20
 	wr32(IGC_TQAVCTRL, tqavctrl);
=20
@@ -324,12 +331,34 @@ static void igc_tsn_set_retx_qbvfullthreshold(struc=
t igc_adapter *adapter)
 	wr32(IGC_RETX_CTL, retxctl);
 }
=20
+static u8 igc_fpe_get_frag_size_mult(const struct igc_fpe_t *fpe)
+{
+	u8 mult =3D (fpe->tx_min_frag_size / TX_MIN_FRAG_SIZE) - 1;
+
+	return clamp_t(u8, mult, MIN_MULTPLIER_TX_MIN_FRAG,
+		       MAX_MULTPLIER_TX_MIN_FRAG);
+}
+
+u32 igc_fpe_get_supported_frag_size(u32 frag_size)
+{
+	const u32 supported_sizes[] =3D {64, 128, 192, 256};
+
+	/* Find the smallest supported size that is >=3D frag_size */
+	for (int i =3D 0; i < ARRAY_SIZE(supported_sizes); i++) {
+		if (frag_size <=3D supported_sizes[i])
+			return supported_sizes[i];
+	}
+
+	return TX_MAX_FRAG_SIZE; /* Should not happen, value > 256 is blocked b=
y ethtool */
+}
+
 static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw =3D &adapter->hw;
 	u32 tqavctrl, baset_l, baset_h;
 	u32 sec, nsec, cycle, rxpbs;
 	ktime_t base_time, systim;
+	u32 frag_size_mult;
 	int i;
=20
 	wr32(IGC_TSAUXC, 0);
@@ -501,13 +530,15 @@ static int igc_tsn_enable_offload(struct igc_adapte=
r *adapter)
 	}
=20
 	tqavctrl =3D rd32(IGC_TQAVCTRL) & ~(IGC_TQAVCTRL_FUTSCDDIS |
-		   IGC_TQAVCTRL_PREEMPT_ENA);
-
+		   IGC_TQAVCTRL_PREEMPT_ENA | IGC_TQAVCTRL_MIN_FRAG_MASK);
 	tqavctrl |=3D IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QA=
V;
=20
 	if (adapter->fpe.mmsv.pmac_enabled)
 		tqavctrl |=3D IGC_TQAVCTRL_PREEMPT_ENA;
=20
+	frag_size_mult =3D igc_fpe_get_frag_size_mult(&adapter->fpe);
+	tqavctrl |=3D FIELD_PREP(IGC_TQAVCTRL_MIN_FRAG_MASK, frag_size_mult);
+
 	adapter->qbv_count++;
=20
 	cycle =3D adapter->cycle_time;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ether=
net/intel/igc/igc_tsn.h
index a1104326c904..6b48e0ed4341 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -14,7 +14,7 @@ enum igc_txd_popts_type {
 DECLARE_STATIC_KEY_FALSE(igc_fpe_enabled);
=20
 void igc_fpe_init(struct igc_adapter *adapter);
-u32 igc_fpe_get_supported_frag_size(u32 user_frag_size);
+u32 igc_fpe_get_supported_frag_size(u32 frag_size);
 int igc_tsn_offload_apply(struct igc_adapter *adapter);
 int igc_tsn_reset(struct igc_adapter *adapter);
 void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
index ad9b40034003..4c395cd949ab 100644
--- a/net/ethtool/mm.c
+++ b/net/ethtool/mm.c
@@ -153,7 +153,7 @@ const struct nla_policy ethnl_mm_set_policy[ETHTOOL_A=
_MM_MAX + 1] =3D {
 	[ETHTOOL_A_MM_VERIFY_TIME]	=3D NLA_POLICY_RANGE(NLA_U32, 1, 128),
 	[ETHTOOL_A_MM_TX_ENABLED]	=3D NLA_POLICY_MAX(NLA_U8, 1),
 	[ETHTOOL_A_MM_PMAC_ENABLED]	=3D NLA_POLICY_MAX(NLA_U8, 1),
-	[ETHTOOL_A_MM_TX_MIN_FRAG_SIZE]	=3D NLA_POLICY_RANGE(NLA_U32, 60, 252),
+	[ETHTOOL_A_MM_TX_MIN_FRAG_SIZE]	=3D NLA_POLICY_RANGE(NLA_U32, 60, 256),
 };
=20
 static void mm_state_to_cfg(const struct ethtool_mm_state *state,
--=20
2.34.1


