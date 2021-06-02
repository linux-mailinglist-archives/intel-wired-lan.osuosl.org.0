Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1BD3974B7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jun 2021 15:57:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3DD94044F;
	Tue,  1 Jun 2021 13:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F69PGMYX_22j; Tue,  1 Jun 2021 13:56:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 274D940380;
	Tue,  1 Jun 2021 13:56:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C86B1BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 May 2021 08:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A2C383829
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 May 2021 08:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ORRbbJ0yHVMf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 May 2021 08:46:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC63D837C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 May 2021 08:46:12 +0000 (UTC)
IronPort-SDR: GMppjqzfgUTWUApOGrwyR7mO/bKyG4z4uFwKJplA5BYj4oW6G2yL5vZETt2pOC3JVIcS8a6UCb
 E7lD8aJnSRbQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10000"; a="203326182"
X-IronPort-AV: E=Sophos;i="5.83,236,1616482800"; d="scan'208";a="203326182"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 01:46:10 -0700
IronPort-SDR: 0BLxMteLUKDVrQGrGHCRDdfeXpK1k82YI1el76OE8OSdBZ8fPG0kENCkIpUq7r7H6we42Sdh4G
 ERgab4HtoA3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,236,1616482800"; d="scan'208";a="446533403"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga008.fm.intel.com with ESMTP; 31 May 2021 01:46:08 -0700
From: =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Jun 2021 00:43:24 +0000
Message-Id: <20210602004324.392848-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 01 Jun 2021 13:56:53 +0000
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix to various static
 analysis warnings
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix static analysis warnings from sparse.

Fixes: e793095e8a57 ("i40e: add parsing of flexible filter fields from userdef")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Suggested-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c     | 14 +++++++-------
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h |  2 +-
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 3e822bad4..cbd640e0e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3138,8 +3138,8 @@ static int i40e_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
 	if (!(fsp->flow_type & FLOW_EXT))
 		return 0;
 
-	value = be64_to_cpu(*((__be64 *)fsp->h_ext.data));
-	mask = be64_to_cpu(*((__be64 *)fsp->m_ext.data));
+	value = be64_to_cpu(*((__force __be64 *)fsp->h_ext.data));
+	mask = be64_to_cpu(*((__force __be64 *)fsp->m_ext.data));
 
 #define I40E_USERDEF_FLEX_WORD		GENMASK_ULL(15, 0)
 #define I40E_USERDEF_FLEX_OFFSET	GENMASK_ULL(31, 16)
@@ -3180,8 +3180,8 @@ static void i40e_fill_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
 	if (value || mask)
 		fsp->flow_type |= FLOW_EXT;
 
-	*((__be64 *)fsp->h_ext.data) = cpu_to_be64(value);
-	*((__be64 *)fsp->m_ext.data) = cpu_to_be64(mask);
+	*((__force __be64 *)fsp->h_ext.data) = cpu_to_be64(value);
+	*((__force __be64 *)fsp->m_ext.data) = cpu_to_be64(mask);
 }
 
 /**
@@ -4150,9 +4150,9 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 				     struct ethtool_rx_flow_spec *fsp,
 				     struct i40e_rx_flow_userdef *userdef)
 {
-	static const __be32 ipv6_full_mask[4] = {cpu_to_be32(0xffffffff),
+	static const __be32 ipv6_full_mask[4] = {
 		cpu_to_be32(0xffffffff), cpu_to_be32(0xffffffff),
-		cpu_to_be32(0xffffffff)};
+		cpu_to_be32(0xffffffff), cpu_to_be32(0xffffffff)};
 	struct ethtool_tcpip6_spec *tcp_ip6_spec;
 	struct ethtool_usrip6_spec *usr_ip6_spec;
 	struct ethtool_tcpip4_spec *tcp_ip4_spec;
@@ -5599,7 +5599,7 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_eee *edata)
 		config.eeer |= cpu_to_le32(I40E_PRTPM_EEER_TX_LPI_EN_MASK);
 	} else {
 		config.eee_capability = 0;
-		config.eeer &= cpu_to_le32(~I40E_PRTPM_EEER_TX_LPI_EN_MASK);
+		config.eeer &= ~cpu_to_le32(I40E_PRTPM_EEER_TX_LPI_EN_MASK);
 	}
 
 	/* Apply modified PHY configuration */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 49575a640..e406fee93 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -77,7 +77,7 @@ struct i40e_vf {
 	u16 stag;
 
 	struct virtchnl_ether_addr default_lan_addr;
-	u16 port_vlan_id;
+	s16 port_vlan_id;
 	bool pf_set_mac;	/* The VMM admin set the VF MAC address */
 	bool trusted;
 
-- 
2.18.2

Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
