Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F53A58363
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Mar 2025 11:49:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E55A60707;
	Sun,  9 Mar 2025 10:49:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kzgx-XVvmiKn; Sun,  9 Mar 2025 10:49:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B389960760
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741517351;
	bh=hWBmZzJq6OjImak14nIH/ZpKyOoW1SE8TWRo6KfeEGA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PXx+Pz0TY8i4oXYtW3eH4HwJ95Zw0a5f/TNyIdNPzhEpLB2/R8DkDZfNPAS8ClEL+
	 Ce1I4hLfQzE6ExRBLDIDyL7XeYeuQxVrzEh+FoeJm1HINIijvh38v3TXcWIJIyA2dx
	 suGsSRXvN3P4G2sSw8c6FQX7kYTPudmUVKnRY/P5i0eqycVsT4hq+zyuxVFqnjWX6w
	 +Hj0oJJfk1JwAuQxizXMz8sGLwvMGjtX5bC6VVPyv0HPEjNIA81kbTyKfnaKlOJRvy
	 pBnPEUC2T5WNNHPXNXv+iPPDa7dW7TqhZCWPb1RjV2hT41FaJOx3mFGwMwdRtdCXjX
	 nlP+8qNOtJQSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B389960760;
	Sun,  9 Mar 2025 10:49:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 77AC21C1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 66E75400B9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:49:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S6vezn-X8Bry for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Mar 2025 10:49:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB5EC400AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB5EC400AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB5EC400AC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:49:08 +0000 (UTC)
X-CSE-ConnectionGUID: 5Uaro/r8RIS4uTyLZ71Q7w==
X-CSE-MsgGUID: vQABcX3pSv6YCNAiYZ7paw==
X-IronPort-AV: E=McAfee;i="6700,10204,11367"; a="42636259"
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="42636259"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2025 03:49:08 -0700
X-CSE-ConnectionGUID: CIETKKlOScyYVVZE/Yw8Tw==
X-CSE-MsgGUID: Y5raPSEpQmqkIMkyPaf2Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="124655180"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa003.jf.intel.com with ESMTP; 09 Mar 2025 03:49:00 -0700
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
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Sun,  9 Mar 2025 06:46:47 -0400
Message-Id: <20250309104648.3895551-14-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741517349; x=1773053349;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6TymkuK2Y51ayMl9JT+5/O1CpZULriSQpMIEcVYEhNc=;
 b=nAkWKDmhXab7QuFkTvfFk5zf4mZdHCqFYLLtG8VisKPJs+N+qXtEkhaq
 s1/pj71f4nmXenTEWouahzDBCfLlPju/Z8cwBq9B1N3uUodSyMf+N/9dA
 Pb6iKQGfCfkDpbnLLmDlfv3aRGFSeHSzk4xISAmyGyeFATZJE87hMCZgE
 K+oRctRN8sSkHNWVVIXvovL58toaeUbXTo8dnGTB+HPgPzQX/dEQFq4B2
 0BwOz9zaxqtbcYPzydxqBDIldvca1gxuILSnxEKYIz8iOsiR/yJMf7FIb
 gMJg1VbBOl55llXwzP0OVtAxjYAWMEqYu7KTxGZNJk4qX4pqNix+et8UU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nAkWKDmh
Subject: [Intel-wired-lan] [PATCH iwl-next v9 13/14] igc: add support to get
 MAC Merge data via ethtool
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

Implement "ethtool --show-mm" callback for IGC.

Tested with command:
$ ethtool --show-mm enp1s0.
  MAC Merge layer state for enp1s0:
  pMAC enabled: on
  TX enabled: on
  TX active: on
  TX minimum fragment size: 64
  RX minimum fragment size: 60
  Verify enabled: on
  Verify time: 128
  Max verify time: 128
  Verification status: SUCCEEDED

Verified that the fields value are retrieved correctly.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 14 ++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 529654ccd83f..fd4b4b332309 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1782,6 +1782,19 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
 	return 0;
 }
 
+static int igc_ethtool_get_mm(struct net_device *netdev,
+			      struct ethtool_mm_state *cmd)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_fpe_t *fpe = &adapter->fpe;
+
+	ethtool_mmsv_get_mm(&fpe->mmsv, cmd);
+	cmd->tx_min_frag_size = fpe->tx_min_frag_size;
+	cmd->rx_min_frag_size = IGC_RX_MIN_FRAG_SIZE;
+
+	return 0;
+}
+
 static int igc_ethtool_set_mm(struct net_device *netdev,
 			      struct ethtool_mm_cfg *cmd,
 			      struct netlink_ext_ack *extack)
@@ -2101,6 +2114,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.get_link_ksettings	= igc_ethtool_get_link_ksettings,
 	.set_link_ksettings	= igc_ethtool_set_link_ksettings,
 	.self_test		= igc_ethtool_diag_test,
+	.get_mm			= igc_ethtool_get_mm,
 	.set_mm			= igc_ethtool_set_mm,
 };
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index 58fe5f0773d7..c2a77229207b 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -4,6 +4,7 @@
 #ifndef _IGC_TSN_H_
 #define _IGC_TSN_H_
 
+#define IGC_RX_MIN_FRAG_SIZE		60
 #define SMD_FRAME_SIZE			60
 
 enum igc_txd_popts_type {
-- 
2.34.1

