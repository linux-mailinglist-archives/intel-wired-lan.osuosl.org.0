Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F07D23DAF1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Aug 2020 15:40:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24CBF87FEB;
	Thu,  6 Aug 2020 13:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qLCOopjmtZvD; Thu,  6 Aug 2020 13:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C814187F35;
	Thu,  6 Aug 2020 13:40:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 331E61BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 13:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 269D0226F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 13:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8LM7zfBqgTP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Aug 2020 13:40:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 68C9C20133
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Aug 2020 13:40:23 +0000 (UTC)
IronPort-SDR: TtPm3kbT2Q/gEWvdKVi/BnPHp8JaU9pm1py9fr2A3pF6c+tz8CtEoDJo2EbAQ6/n016Q5hM04p
 TS1iTO9HUctg==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="140396723"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="140396723"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 06:40:20 -0700
IronPort-SDR: cwB4AsRdLkpoxM90jlB3cGDmGSJbcS45bE3dIY1BrZspDI0facOEMdaDQqyT8tNAdPhVRdxiId
 894P7HvHm2hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="367582716"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga001.jf.intel.com with ESMTP; 06 Aug 2020 06:40:18 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Aug 2020 13:36:31 +0000
Message-Id: <20200806133631.10940-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Add flow director support for IPv6
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Flow director for IPv6 is not supported.
Implementation of support for IPv6 flow director. Added handlers for
addition of TCP6, UDP6, SCTP6, IPv6. Refactored legacy code to make
it more generic. Added packet templates for TCP6, UDP6, SCTP6, IPv6.
Added handling of IPv6 source and destination addres for flow
director. Improved argument passing for source and destination port
in TCP6, UDP6 and SCTP6. Added handling of ethtool -n for IPv6, TCP6,
UDP6, SCTP6. Used correct bit flag regarding FLEXOFF field of flow
director data descriptor.
Without this patch, there would be no support for flow director on
IPv6, TCP6, UDP6, SCTP6.

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |   9 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 210 +++++++++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  79 +++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 371 +++++++++++++-----
 4 files changed, 550 insertions(+), 119 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index ada0e93..54054fc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -209,10 +209,12 @@ struct i40e_fdir_filter {
 	struct hlist_node fdir_node;
 	/* filter ipnut set */
 	u8 flow_type;
-	u8 ip4_proto;
+	u8 ipl4_proto;
 	/* TX packet view of src and dst */
 	__be32 dst_ip;
 	__be32 src_ip;
+	__be32 dst_ip6[4];
+	__be32 src_ip6[4];
 	__be16 src_port;
 	__be16 dst_port;
 	__be32 sctp_v_tag;
@@ -470,6 +472,11 @@ struct i40e_pf {
 	u16 fd_sctp4_filter_cnt;
 	u16 fd_ip4_filter_cnt;
 
+	u16 fd_tcp6_filter_cnt;
+	u16 fd_udp6_filter_cnt;
+	u16 fd_sctp6_filter_cnt;
+	u16 fd_ip6_filter_cnt;
+
 	/* Flexible filter table values that need to be programmed into
 	 * hardware, which expects L3 and L4 to be programmed separately. We
 	 * need to ensure that the values are in ascended order and don't have
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index a31ed23..6a82900 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3229,13 +3229,30 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 		fsp->m_u.usr_ip4_spec.proto = 0;
 	}
 
-	/* Reverse the src and dest notion, since the HW views them from
-	 * Tx perspective where as the user expects it from Rx filter view.
-	 */
-	fsp->h_u.tcp_ip4_spec.psrc = rule->dst_port;
-	fsp->h_u.tcp_ip4_spec.pdst = rule->src_port;
-	fsp->h_u.tcp_ip4_spec.ip4src = rule->dst_ip;
-	fsp->h_u.tcp_ip4_spec.ip4dst = rule->src_ip;
+	if (fsp->flow_type == IPV6_USER_FLOW ||
+	    fsp->flow_type == UDP_V6_FLOW ||
+	    fsp->flow_type == TCP_V6_FLOW ||
+	    fsp->flow_type == SCTP_V6_FLOW) {
+		/* Reverse the src and dest notion, since the HW views them
+		 * from Tx perspective where as the user expects it from
+		 * Rx filter view.
+		 */
+		fsp->h_u.tcp_ip6_spec.psrc = rule->dst_port;
+		fsp->h_u.tcp_ip6_spec.pdst = rule->src_port;
+		memcpy(fsp->h_u.tcp_ip6_spec.ip6dst, rule->src_ip6,
+		       sizeof(__be32) * 4);
+		memcpy(fsp->h_u.tcp_ip6_spec.ip6src, rule->dst_ip6,
+		       sizeof(__be32) * 4);
+	} else {
+		/* Reverse the src and dest notion, since the HW views them
+		 * from Tx perspective where as the user expects it from
+		 * Rx filter view.
+		 */
+		fsp->h_u.tcp_ip4_spec.psrc = rule->dst_port;
+		fsp->h_u.tcp_ip4_spec.pdst = rule->src_port;
+		fsp->h_u.tcp_ip4_spec.ip4src = rule->dst_ip;
+		fsp->h_u.tcp_ip4_spec.ip4dst = rule->src_ip;
+	}
 
 	switch (rule->flow_type) {
 	case SCTP_V4_FLOW:
@@ -3247,9 +3264,21 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 	case UDP_V4_FLOW:
 		index = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
 		break;
+	case SCTP_V6_FLOW:
+		index = I40E_FILTER_PCTYPE_NONF_IPV6_SCTP;
+		break;
+	case TCP_V6_FLOW:
+		index = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
+		break;
+	case UDP_V6_FLOW:
+		index = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
+		break;
 	case IP_USER_FLOW:
 		index = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
 		break;
+	case IPV6_USER_FLOW:
+		index = I40E_FILTER_PCTYPE_NONF_IPV6_OTHER;
+		break;
 	default:
 		/* If we have stored a filter with a flow type not listed here
 		 * it is almost certainly a driver bug. WARN(), and then
@@ -3265,6 +3294,20 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 	input_set = i40e_read_fd_input_set(pf, index);
 
 no_input_set:
+	if (input_set & I40E_L3_V6_SRC_MASK) {
+		fsp->m_u.tcp_ip6_spec.ip6src[0] = htonl(0xFFFFFFFF);
+		fsp->m_u.tcp_ip6_spec.ip6src[1] = htonl(0xFFFFFFFF);
+		fsp->m_u.tcp_ip6_spec.ip6src[2] = htonl(0xFFFFFFFF);
+		fsp->m_u.tcp_ip6_spec.ip6src[3] = htonl(0xFFFFFFFF);
+	}
+
+	if (input_set & I40E_L3_V6_DST_MASK) {
+		fsp->m_u.tcp_ip6_spec.ip6dst[0] = htonl(0xFFFFFFFF);
+		fsp->m_u.tcp_ip6_spec.ip6dst[1] = htonl(0xFFFFFFFF);
+		fsp->m_u.tcp_ip6_spec.ip6dst[2] = htonl(0xFFFFFFFF);
+		fsp->m_u.tcp_ip6_spec.ip6dst[3] = htonl(0xFFFFFFFF);
+	}
+
 	if (input_set & I40E_L3_SRC_MASK)
 		fsp->m_u.tcp_ip4_spec.ip4src = htonl(0xFFFFFFFF);
 
@@ -3928,6 +3971,14 @@ static const char *i40e_flow_str(struct ethtool_rx_flow_spec *fsp)
 		return "sctp4";
 	case IP_USER_FLOW:
 		return "ip4";
+	case TCP_V6_FLOW:
+		return "tcp6";
+	case UDP_V6_FLOW:
+		return "udp6";
+	case SCTP_V6_FLOW:
+		return "sctp6";
+	case IPV6_USER_FLOW:
+		return "ip6";
 	default:
 		return "unknown";
 	}
@@ -4063,9 +4114,13 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 				     struct ethtool_rx_flow_spec *fsp,
 				     struct i40e_rx_flow_userdef *userdef)
 {
-	struct i40e_pf *pf = vsi->back;
+	static const __be32 ipv6_full_mask[4] = {0xffffffff, 0xffffffff,
+		0xffffffff, 0xffffffff};
+	struct ethtool_tcpip6_spec *tcp_ip6_spec;
+	struct ethtool_usrip6_spec *usr_ip6_spec;
 	struct ethtool_tcpip4_spec *tcp_ip4_spec;
 	struct ethtool_usrip4_spec *usr_ip4_spec;
+	struct i40e_pf *pf = vsi->back;
 	u64 current_mask, new_mask;
 	bool new_flex_offset = false;
 	bool flex_l3 = false;
@@ -4087,11 +4142,28 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 		index = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
 		fdir_filter_count = &pf->fd_udp4_filter_cnt;
 		break;
+	case SCTP_V6_FLOW:
+		index = I40E_FILTER_PCTYPE_NONF_IPV6_SCTP;
+		fdir_filter_count = &pf->fd_sctp6_filter_cnt;
+		break;
+	case TCP_V6_FLOW:
+		index = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
+		fdir_filter_count = &pf->fd_tcp6_filter_cnt;
+		break;
+	case UDP_V6_FLOW:
+		index = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
+		fdir_filter_count = &pf->fd_udp6_filter_cnt;
+		break;
 	case IP_USER_FLOW:
 		index = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
 		fdir_filter_count = &pf->fd_ip4_filter_cnt;
 		flex_l3 = true;
 		break;
+	case IPV6_USER_FLOW:
+		index = I40E_FILTER_PCTYPE_NONF_IPV6_OTHER;
+		fdir_filter_count = &pf->fd_ip6_filter_cnt;
+		flex_l3 = true;
+		break;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -4154,6 +4226,53 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 			return -EOPNOTSUPP;
 
 		break;
+	case SCTP_V6_FLOW:
+		new_mask &= ~I40E_VERIFY_TAG_MASK;
+		fallthrough;
+	case TCP_V6_FLOW:
+	case UDP_V6_FLOW:
+		tcp_ip6_spec = &fsp->m_u.tcp_ip6_spec;
+
+		/* Check if user provided IPv6 source address. */
+		if (ipv6_addr_equal((struct in6_addr *)&tcp_ip6_spec->ip6src,
+				    (struct in6_addr *)&ipv6_full_mask))
+			new_mask |= I40E_L3_V6_SRC_MASK;
+		else if (ipv6_addr_any((struct in6_addr *)
+				       &tcp_ip6_spec->ip6src))
+			new_mask &= ~I40E_L3_V6_SRC_MASK;
+		else
+			return -EOPNOTSUPP;
+
+		/* Check if user provided destination address. */
+		if (ipv6_addr_equal((struct in6_addr *)&tcp_ip6_spec->ip6dst,
+				    (struct in6_addr *)&ipv6_full_mask))
+			new_mask |= I40E_L3_V6_DST_MASK;
+		else if (ipv6_addr_any((struct in6_addr *)
+				       &tcp_ip6_spec->ip6src))
+			new_mask &= ~I40E_L3_V6_DST_MASK;
+		else
+			return -EOPNOTSUPP;
+
+		/* L4 source port */
+		if (tcp_ip6_spec->psrc == htons(0xFFFF))
+			new_mask |= I40E_L4_SRC_MASK;
+		else if (!tcp_ip6_spec->psrc)
+			new_mask &= ~I40E_L4_SRC_MASK;
+		else
+			return -EOPNOTSUPP;
+
+		/* L4 destination port */
+		if (tcp_ip6_spec->pdst == htons(0xFFFF))
+			new_mask |= I40E_L4_DST_MASK;
+		else if (!tcp_ip6_spec->pdst)
+			new_mask &= ~I40E_L4_DST_MASK;
+		else
+			return -EOPNOTSUPP;
+
+		/* Filtering on Traffic Classes is not supported. */
+		if (tcp_ip6_spec->tclass)
+			return -EOPNOTSUPP;
+		break;
 	case IP_USER_FLOW:
 		usr_ip4_spec = &fsp->m_u.usr_ip4_spec;
 
@@ -4193,6 +4312,45 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 		if (usr_ip4_spec->proto)
 			return -EINVAL;
 
+		break;
+	case IPV6_USER_FLOW:
+		usr_ip6_spec = &fsp->m_u.usr_ip6_spec;
+
+		/* Check if user provided IPv6 source address. */
+		if (ipv6_addr_equal((struct in6_addr *)&usr_ip6_spec->ip6src,
+				    (struct in6_addr *)&ipv6_full_mask))
+			new_mask |= I40E_L3_V6_SRC_MASK;
+		else if (ipv6_addr_any((struct in6_addr *)
+				       &usr_ip6_spec->ip6src))
+			new_mask &= ~I40E_L3_V6_SRC_MASK;
+		else
+			return -EOPNOTSUPP;
+
+		/* Check if user provided destination address. */
+		if (ipv6_addr_equal((struct in6_addr *)&usr_ip6_spec->ip6dst,
+				    (struct in6_addr *)&ipv6_full_mask))
+			new_mask |= I40E_L3_V6_DST_MASK;
+		else if (ipv6_addr_any((struct in6_addr *)
+				       &usr_ip6_spec->ip6src))
+			new_mask &= ~I40E_L3_V6_DST_MASK;
+		else
+			return -EOPNOTSUPP;
+
+		if (usr_ip6_spec->l4_4_bytes == htonl(0xFFFFFFFF))
+			new_mask |= I40E_L4_SRC_MASK | I40E_L4_DST_MASK;
+		else if (!usr_ip6_spec->l4_4_bytes)
+			new_mask &= ~(I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
+		else
+			return -EOPNOTSUPP;
+
+		/* Filtering on Traffic class is not supported. */
+		if (usr_ip6_spec->tclass)
+			return -EOPNOTSUPP;
+
+		/* Filtering on L4 protocol is not supported */
+		if (usr_ip6_spec->l4_proto)
+			return -EINVAL;
+
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -4377,7 +4535,7 @@ static bool i40e_match_fdir_filter(struct i40e_fdir_filter *a,
 	    a->dst_port != b->dst_port ||
 	    a->src_port != b->src_port ||
 	    a->flow_type != b->flow_type ||
-	    a->ip4_proto != b->ip4_proto)
+	    a->ipl4_proto != b->ipl4_proto)
 		return false;
 
 	return true;
@@ -4535,15 +4693,33 @@ static int i40e_add_fdir_ethtool(struct i40e_vsi *vsi,
 	input->dst_ip = fsp->h_u.tcp_ip4_spec.ip4src;
 	input->src_ip = fsp->h_u.tcp_ip4_spec.ip4dst;
 	input->flow_type = fsp->flow_type & ~FLOW_EXT;
-	input->ip4_proto = fsp->h_u.usr_ip4_spec.proto;
 
-	/* Reverse the src and dest notion, since the HW expects them to be from
-	 * Tx perspective where as the input from user is from Rx filter view.
-	 */
-	input->dst_port = fsp->h_u.tcp_ip4_spec.psrc;
-	input->src_port = fsp->h_u.tcp_ip4_spec.pdst;
-	input->dst_ip = fsp->h_u.tcp_ip4_spec.ip4src;
-	input->src_ip = fsp->h_u.tcp_ip4_spec.ip4dst;
+	if (input->flow_type == IPV6_USER_FLOW ||
+	    input->flow_type == UDP_V6_FLOW ||
+	    input->flow_type == TCP_V6_FLOW ||
+	    input->flow_type == SCTP_V6_FLOW) {
+		/* Reverse the src and dest notion, since the HW expects them
+		 * to be from Tx perspective where as the input from user is
+		 * from Rx filter view.
+		 */
+		input->ipl4_proto = fsp->h_u.usr_ip6_spec.l4_proto;
+		input->dst_port = fsp->h_u.tcp_ip6_spec.psrc;
+		input->src_port = fsp->h_u.tcp_ip6_spec.pdst;
+		memcpy(input->dst_ip6, fsp->h_u.ah_ip6_spec.ip6src,
+		       sizeof(__be32) * 4);
+		memcpy(input->src_ip6, fsp->h_u.ah_ip6_spec.ip6dst,
+		       sizeof(__be32) * 4);
+	} else {
+		/* Reverse the src and dest notion, since the HW expects them
+		 * to be from Tx perspective where as the input from user is
+		 * from Rx filter view.
+		 */
+		input->ipl4_proto = fsp->h_u.usr_ip4_spec.proto;
+		input->dst_port = fsp->h_u.tcp_ip4_spec.psrc;
+		input->src_port = fsp->h_u.tcp_ip4_spec.pdst;
+		input->dst_ip = fsp->h_u.tcp_ip4_spec.ip4src;
+		input->src_ip = fsp->h_u.tcp_ip4_spec.ip4dst;
+	}
 
 	if (userdef.flex_filter) {
 		input->flex_filter = true;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index ca8624f..74d7723 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3489,6 +3489,24 @@ static void i40e_set_vsi_rx_mode(struct i40e_vsi *vsi)
 		i40e_set_rx_mode(vsi->netdev);
 }
 
+/**
+ * i40e_reset_fdir_filter_cnt - Reset flow director filter counters
+ * @pf: Pointer to the targeted PF
+ *
+ * Set all flow director counters to 0.
+ */
+static void i40e_reset_fdir_filter_cnt(struct i40e_pf *pf)
+{
+	pf->fd_tcp4_filter_cnt = 0;
+	pf->fd_udp4_filter_cnt = 0;
+	pf->fd_sctp4_filter_cnt = 0;
+	pf->fd_ip4_filter_cnt = 0;
+	pf->fd_tcp6_filter_cnt = 0;
+	pf->fd_udp6_filter_cnt = 0;
+	pf->fd_sctp6_filter_cnt = 0;
+	pf->fd_ip6_filter_cnt = 0;
+}
+
 /**
  * i40e_fdir_filter_restore - Restore the Sideband Flow Director filters
  * @vsi: Pointer to the targeted VSI
@@ -3506,10 +3524,7 @@ static void i40e_fdir_filter_restore(struct i40e_vsi *vsi)
 		return;
 
 	/* Reset FDir counters as we're replaying all existing filters */
-	pf->fd_tcp4_filter_cnt = 0;
-	pf->fd_udp4_filter_cnt = 0;
-	pf->fd_sctp4_filter_cnt = 0;
-	pf->fd_ip4_filter_cnt = 0;
+	i40e_reset_fdir_filter_cnt(pf);
 
 	hlist_for_each_entry_safe(filter, node,
 				  &pf->fdir_filter_list, fdir_node) {
@@ -8391,32 +8406,51 @@ static void i40e_fdir_filter_exit(struct i40e_pf *pf)
 	INIT_LIST_HEAD(&pf->l4_flex_pit_list);
 
 	pf->fdir_pf_active_filters = 0;
-	pf->fd_tcp4_filter_cnt = 0;
-	pf->fd_udp4_filter_cnt = 0;
-	pf->fd_sctp4_filter_cnt = 0;
-	pf->fd_ip4_filter_cnt = 0;
+	i40e_reset_fdir_filter_cnt(pf);
 
 	/* Reprogram the default input set for TCP/IPv4 */
 	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_TCP,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
+	/* Reprogram the default input set for TCP/IPv6 */
+	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV6_TCP,
+				I40E_L3_V6_SRC_MASK | I40E_L3_V6_DST_MASK |
+				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
+
 	/* Reprogram the default input set for UDP/IPv4 */
 	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_UDP,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
+	/* Reprogram the default input set for UDP/IPv6 */
+	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV6_UDP,
+				I40E_L3_V6_SRC_MASK | I40E_L3_V6_DST_MASK |
+				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
+
 	/* Reprogram the default input set for SCTP/IPv4 */
 	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_SCTP,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK |
 				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
 
+	/* Reprogram the default input set for SCTP/IPv6 */
+	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV6_SCTP,
+				I40E_L3_V6_SRC_MASK | I40E_L3_V6_DST_MASK |
+				I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
+
 	/* Reprogram the default input set for Other/IPv4 */
 	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV4_OTHER,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK);
 
 	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_FRAG_IPV4,
 				I40E_L3_SRC_MASK | I40E_L3_DST_MASK);
+
+	/* Reprogram the default input set for Other/IPv6 */
+	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_NONF_IPV6_OTHER,
+				I40E_L3_SRC_MASK | I40E_L3_DST_MASK);
+
+	i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_FRAG_IPV6,
+				I40E_L3_SRC_MASK | I40E_L3_DST_MASK);
 }
 
 /**
@@ -8875,8 +8909,17 @@ static void i40e_delete_invalid_filter(struct i40e_pf *pf,
 	case SCTP_V4_FLOW:
 		pf->fd_sctp4_filter_cnt--;
 		break;
+	case TCP_V6_FLOW:
+		pf->fd_tcp6_filter_cnt--;
+		break;
+	case UDP_V6_FLOW:
+		pf->fd_udp6_filter_cnt--;
+		break;
+	case SCTP_V6_FLOW:
+		pf->fd_udp6_filter_cnt--;
+		break;
 	case IP_USER_FLOW:
-		switch (filter->ip4_proto) {
+		switch (filter->ipl4_proto) {
 		case IPPROTO_TCP:
 			pf->fd_tcp4_filter_cnt--;
 			break;
@@ -8891,6 +8934,22 @@ static void i40e_delete_invalid_filter(struct i40e_pf *pf,
 			break;
 		}
 		break;
+	case IPV6_USER_FLOW:
+		switch (filter->ipl4_proto) {
+		case IPPROTO_TCP:
+			pf->fd_tcp6_filter_cnt--;
+			break;
+		case IPPROTO_UDP:
+			pf->fd_udp6_filter_cnt--;
+			break;
+		case IPPROTO_SCTP:
+			pf->fd_sctp6_filter_cnt--;
+			break;
+		case IPPROTO_IP:
+			pf->fd_ip6_filter_cnt--;
+			break;
+		}
+		break;
 	}
 
 	/* Remove the filter from the list and free memory */
@@ -8924,7 +8983,7 @@ void i40e_fdir_check_and_reenable(struct i40e_pf *pf)
 	 * rules active.
 	 */
 	if ((fcnt_prog < (fcnt_avail - I40E_FDIR_BUFFER_HEAD_ROOM_FOR_ATR)) &&
-	    (pf->fd_tcp4_filter_cnt == 0))
+	    pf->fd_tcp4_filter_cnt == 0 && pf->fd_tcp6_filter_cnt == 0)
 		i40e_reenable_fdir_atr(pf);
 
 	/* if hw had a problem adding a filter, delete it */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 2fb6ddd..c1ba4f0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -42,9 +42,6 @@ static void i40e_fdir(struct i40e_ring *tx_ring,
 	flex_ptype |= I40E_TXD_FLTR_QW0_PCTYPE_MASK &
 		      (fdata->pctype << I40E_TXD_FLTR_QW0_PCTYPE_SHIFT);
 
-	flex_ptype |= I40E_TXD_FLTR_QW0_PCTYPE_MASK &
-		      (fdata->flex_offset << I40E_TXD_FLTR_QW0_FLEXOFF_SHIFT);
-
 	/* Use LAN VSI Id if not programmed by user */
 	flex_ptype |= I40E_TXD_FLTR_QW0_DEST_VSI_MASK &
 		      ((u32)(fdata->dest_vsi ? : pf->vsi[pf->lan_vsi]->id) <<
@@ -160,52 +157,83 @@ static int i40e_program_fdir_filter(struct i40e_fdir_filter *fdir_data,
 	return -1;
 }
 
-#define IP_HEADER_OFFSET 14
-#define I40E_UDPIP_DUMMY_PACKET_LEN 42
+#define IP_HEADER_OFFSET		14
+#define I40E_UDPIP_DUMMY_PACKET_LEN	42
+#define I40E_UDPIP6_DUMMY_PACKET_LEN	62
 /**
- * i40e_add_del_fdir_udpv4 - Add/Remove UDPv4 filters
+ * i40e_add_del_fdir_udp - Add/Remove UDP filters
  * @vsi: pointer to the targeted VSI
  * @fd_data: the flow director data required for the FDir descriptor
  * @add: true adds a filter, false removes it
+ * @ipv4: true is v4, false is v6
  *
  * Returns 0 if the filters were successfully added or removed
  **/
-static int i40e_add_del_fdir_udpv4(struct i40e_vsi *vsi,
-				   struct i40e_fdir_filter *fd_data,
-				   bool add)
+static int i40e_add_del_fdir_udp(struct i40e_vsi *vsi,
+				 struct i40e_fdir_filter *fd_data,
+				 bool add,
+				 bool ipv4)
 {
 	struct i40e_pf *pf = vsi->back;
+	struct ipv6hdr *ipv6;
 	struct udphdr *udp;
 	struct iphdr *ip;
 	u8 *raw_packet;
 	int ret;
-	static char packet[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08, 0,
-		0x45, 0, 0, 0x1c, 0, 0, 0x40, 0, 0x40, 0x11, 0, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
+	static char packet_ipv4[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08,
+		0, 0x45, 0, 0, 0x1c, 0, 0, 0x40, 0, 0x40, 0x11, 0, 0, 0, 0, 0,
+		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
+	static char packet_ipv6[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x86,
+		0xdd, 0x60, 0, 0, 0, 0, 0, 0x11, 0,
+		/*src address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		/*dst address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		/*udp header*/
+		0, 0, 0, 0, 0, 0, 0, 0};
 
 	raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
 	if (!raw_packet)
 		return -ENOMEM;
-	memcpy(raw_packet, packet, I40E_UDPIP_DUMMY_PACKET_LEN);
+	if (ipv4) {
+		memcpy(raw_packet, packet_ipv4, I40E_UDPIP_DUMMY_PACKET_LEN);
 
-	ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
-	udp = (struct udphdr *)(raw_packet + IP_HEADER_OFFSET
-	      + sizeof(struct iphdr));
+		ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
+		udp = (struct udphdr *)(raw_packet + IP_HEADER_OFFSET
+		      + sizeof(struct iphdr));
 
-	ip->daddr = fd_data->dst_ip;
+		ip->daddr = fd_data->dst_ip;
+		ip->saddr = fd_data->src_ip;
+	} else {
+		memcpy(raw_packet, packet_ipv6, I40E_UDPIP6_DUMMY_PACKET_LEN);
+		ipv6 = (struct ipv6hdr *)(raw_packet + IP_HEADER_OFFSET);
+		udp = (struct udphdr *)(raw_packet + IP_HEADER_OFFSET
+		      + sizeof(struct ipv6hdr));
+
+		memcpy(ipv6->saddr.in6_u.u6_addr32,
+		       fd_data->src_ip6, sizeof(__be32) * 4);
+		memcpy(ipv6->daddr.in6_u.u6_addr32,
+		       fd_data->dst_ip6, sizeof(__be32) * 4);
+	}
 	udp->dest = fd_data->dst_port;
-	ip->saddr = fd_data->src_ip;
 	udp->source = fd_data->src_port;
 
 	if (fd_data->flex_filter) {
-		u8 *payload = raw_packet + I40E_UDPIP_DUMMY_PACKET_LEN;
+		u8 *payload;
 		__be16 pattern = fd_data->flex_word;
 		u16 off = fd_data->flex_offset;
 
+		if (ipv4)
+			payload = raw_packet + I40E_UDPIP_DUMMY_PACKET_LEN;
+		else
+			payload = raw_packet + I40E_UDPIP6_DUMMY_PACKET_LEN;
+
 		*((__force __be16 *)(payload + off)) = pattern;
 	}
 
-	fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
+	if (ipv4)
+		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
+	else
+		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
+
 	ret = i40e_program_fdir_filter(fd_data, raw_packet, pf, add);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
@@ -225,61 +253,104 @@ static int i40e_add_del_fdir_udpv4(struct i40e_vsi *vsi,
 				 fd_data->pctype, fd_data->fd_id);
 	}
 
-	if (add)
-		pf->fd_udp4_filter_cnt++;
-	else
-		pf->fd_udp4_filter_cnt--;
+	if (add) {
+		if (ipv4)
+			pf->fd_udp4_filter_cnt++;
+		else
+			pf->fd_udp6_filter_cnt++;
+	} else {
+		if (ipv4)
+			pf->fd_udp4_filter_cnt--;
+		else
+			pf->fd_udp6_filter_cnt--;
+	}
 
 	return 0;
 }
 
-#define I40E_TCPIP_DUMMY_PACKET_LEN 54
+#define I40E_TCPIP_DUMMY_PACKET_LEN	54
+#define I40E_TCPIP6_DUMMY_PACKET_LEN	74
 /**
- * i40e_add_del_fdir_tcpv4 - Add/Remove TCPv4 filters
+ * i40e_add_del_fdir_tcp - Add/Remove TCPv4 filters
  * @vsi: pointer to the targeted VSI
  * @fd_data: the flow director data required for the FDir descriptor
  * @add: true adds a filter, false removes it
+ * @ipv4: true is v4, false is v6
  *
  * Returns 0 if the filters were successfully added or removed
  **/
-static int i40e_add_del_fdir_tcpv4(struct i40e_vsi *vsi,
-				   struct i40e_fdir_filter *fd_data,
-				   bool add)
+static int i40e_add_del_fdir_tcp(struct i40e_vsi *vsi,
+				 struct i40e_fdir_filter *fd_data,
+				 bool add,
+				 bool ipv4)
 {
 	struct i40e_pf *pf = vsi->back;
+	struct ipv6hdr *ipv6;
 	struct tcphdr *tcp;
 	struct iphdr *ip;
 	u8 *raw_packet;
 	int ret;
 	/* Dummy packet */
-	static char packet[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08, 0,
-		0x45, 0, 0, 0x28, 0, 0, 0x40, 0, 0x40, 0x6, 0, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x80, 0x11,
+	static char packet_ipv4[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08,
+		0, 0x45, 0, 0, 0x28, 0, 0, 0x40, 0, 0x40, 0x6, 0, 0, 0, 0, 0,
+		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x50, 0x11,
+		0x0, 0x72, 0, 0, 0, 0};
+	static char packet_ipv6[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x86,
+		0xdd, 0x60, 0, 0, 0, 0, 0, 0x6, 0,
+		/*src address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		/*dst address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x50, 0x11,
 		0x0, 0x72, 0, 0, 0, 0};
 
 	raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
 	if (!raw_packet)
 		return -ENOMEM;
-	memcpy(raw_packet, packet, I40E_TCPIP_DUMMY_PACKET_LEN);
+	if (ipv4) {
+		memcpy(raw_packet, packet_ipv4, I40E_TCPIP_DUMMY_PACKET_LEN);
+
+		ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
+		tcp = (struct tcphdr *)(raw_packet + IP_HEADER_OFFSET
+		      + sizeof(struct iphdr));
+
+		ip->daddr = fd_data->dst_ip;
+		ip->saddr = fd_data->src_ip;
+	} else {
+		memcpy(raw_packet, packet_ipv6, I40E_TCPIP6_DUMMY_PACKET_LEN);
+
+		tcp = (struct tcphdr *)(raw_packet + IP_HEADER_OFFSET
+		      + sizeof(struct ipv6hdr));
+		ipv6 = (struct ipv6hdr *)(raw_packet + IP_HEADER_OFFSET);
+
+		memcpy(ipv6->saddr.in6_u.u6_addr32,
+		       fd_data->src_ip6, sizeof(__be32) * 4);
+		memcpy(ipv6->daddr.in6_u.u6_addr32,
+		       fd_data->dst_ip6, sizeof(__be32) * 4);
+	}
 
 	ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
 	tcp = (struct tcphdr *)(raw_packet + IP_HEADER_OFFSET
 	      + sizeof(struct iphdr));
 
-	ip->daddr = fd_data->dst_ip;
 	tcp->dest = fd_data->dst_port;
-	ip->saddr = fd_data->src_ip;
 	tcp->source = fd_data->src_port;
 
 	if (fd_data->flex_filter) {
-		u8 *payload = raw_packet + I40E_TCPIP_DUMMY_PACKET_LEN;
+		u8 *payload;
 		__be16 pattern = fd_data->flex_word;
 		u16 off = fd_data->flex_offset;
 
+		if (ipv4)
+			payload = raw_packet + I40E_TCPIP_DUMMY_PACKET_LEN;
+		else
+			payload = raw_packet + I40E_TCPIP6_DUMMY_PACKET_LEN;
+
 		*((__force __be16 *)(payload + off)) = pattern;
 	}
 
-	fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_TCP;
+	if (ipv4)
+		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_TCP;
+	else
+		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
 	ret = i40e_program_fdir_filter(fd_data, raw_packet, pf, add);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
@@ -299,65 +370,102 @@ static int i40e_add_del_fdir_tcpv4(struct i40e_vsi *vsi,
 	}
 
 	if (add) {
-		pf->fd_tcp4_filter_cnt++;
+		if (ipv4)
+			pf->fd_tcp4_filter_cnt++;
+		else
+			pf->fd_tcp6_filter_cnt++;
 		if ((pf->flags & I40E_FLAG_FD_ATR_ENABLED) &&
 		    I40E_DEBUG_FD & pf->hw.debug_mask)
 			dev_info(&pf->pdev->dev, "Forcing ATR off, sideband rules for TCP/IPv4 flow being applied\n");
 		set_bit(__I40E_FD_ATR_AUTO_DISABLED, pf->state);
 	} else {
-		pf->fd_tcp4_filter_cnt--;
+		if (ipv4)
+			pf->fd_tcp4_filter_cnt--;
+		else
+			pf->fd_tcp6_filter_cnt--;
 	}
 
 	return 0;
 }
 
-#define I40E_SCTPIP_DUMMY_PACKET_LEN 46
+#define I40E_SCTPIP_DUMMY_PACKET_LEN	46
+#define I40E_SCTPIP6_DUMMY_PACKET_LEN	66
 /**
- * i40e_add_del_fdir_sctpv4 - Add/Remove SCTPv4 Flow Director filters for
+ * i40e_add_del_fdir_sctp - Add/Remove SCTPv4 Flow Director filters for
  * a specific flow spec
  * @vsi: pointer to the targeted VSI
  * @fd_data: the flow director data required for the FDir descriptor
  * @add: true adds a filter, false removes it
+ * @ipv4: true is v4, false is v6
  *
  * Returns 0 if the filters were successfully added or removed
  **/
-static int i40e_add_del_fdir_sctpv4(struct i40e_vsi *vsi,
-				    struct i40e_fdir_filter *fd_data,
-				    bool add)
+static int i40e_add_del_fdir_sctp(struct i40e_vsi *vsi,
+				  struct i40e_fdir_filter *fd_data,
+				  bool add,
+				  bool ipv4)
 {
 	struct i40e_pf *pf = vsi->back;
+	struct ipv6hdr *ipv6;
 	struct sctphdr *sctp;
 	struct iphdr *ip;
 	u8 *raw_packet;
 	int ret;
-	/* Dummy packet */
-	static char packet[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08, 0,
-		0x45, 0, 0, 0x20, 0, 0, 0x40, 0, 0x40, 0x84, 0, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
-
+	/* Dummy packets */
+	static char packet_ipv4[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08,
+		0, 0x45, 0, 0, 0x20, 0, 0, 0x40, 0, 0x40, 0x84, 0, 0, 0, 0, 0,
+		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
+
+	static char packet_ipv6[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x86,
+		0xdd, 0x60, 0, 0, 0, 0, 0, 0x84, 0,
+		/*src address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		/*dst address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
 	raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
 	if (!raw_packet)
 		return -ENOMEM;
-	memcpy(raw_packet, packet, I40E_SCTPIP_DUMMY_PACKET_LEN);
+	if (ipv4) {
+		memcpy(raw_packet, packet_ipv4, I40E_SCTPIP_DUMMY_PACKET_LEN);
 
-	ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
-	sctp = (struct sctphdr *)(raw_packet + IP_HEADER_OFFSET
-	      + sizeof(struct iphdr));
+		ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
+		sctp = (struct sctphdr *)(raw_packet + IP_HEADER_OFFSET
+		       + sizeof(struct iphdr));
+
+		ip->daddr = fd_data->dst_ip;
+		ip->saddr = fd_data->src_ip;
+	} else {
+		memcpy(raw_packet, packet_ipv6, I40E_SCTPIP6_DUMMY_PACKET_LEN);
+
+		ipv6 = (struct ipv6hdr *)(raw_packet + IP_HEADER_OFFSET);
+		sctp = (struct sctphdr *)(raw_packet + IP_HEADER_OFFSET
+		       + sizeof(struct ipv6hdr));
+
+		memcpy(ipv6->saddr.in6_u.u6_addr32,
+		       fd_data->src_ip6, sizeof(__be32) * 4);
+		memcpy(ipv6->saddr.in6_u.u6_addr32,
+		       fd_data->src_ip6, sizeof(__be32) * 4);
+	}
 
-	ip->daddr = fd_data->dst_ip;
 	sctp->dest = fd_data->dst_port;
-	ip->saddr = fd_data->src_ip;
 	sctp->source = fd_data->src_port;
 
 	if (fd_data->flex_filter) {
-		u8 *payload = raw_packet + I40E_SCTPIP_DUMMY_PACKET_LEN;
+		u8 *payload;
 		__be16 pattern = fd_data->flex_word;
 		u16 off = fd_data->flex_offset;
 
+		if (ipv4)
+			payload = raw_packet + I40E_SCTPIP_DUMMY_PACKET_LEN;
+		else
+			payload = raw_packet + I40E_SCTPIP6_DUMMY_PACKET_LEN;
 		*((__force __be16 *)(payload + off)) = pattern;
 	}
 
-	fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_SCTP;
+	if (ipv4)
+		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_SCTP;
+	else
+		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV6_SCTP;
+
 	ret = i40e_program_fdir_filter(fd_data, raw_packet, pf, add);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
@@ -377,54 +485,97 @@ static int i40e_add_del_fdir_sctpv4(struct i40e_vsi *vsi,
 				 fd_data->pctype, fd_data->fd_id);
 	}
 
-	if (add)
-		pf->fd_sctp4_filter_cnt++;
-	else
-		pf->fd_sctp4_filter_cnt--;
+	if (add) {
+		if (ipv4)
+			pf->fd_sctp4_filter_cnt++;
+		else
+			pf->fd_sctp6_filter_cnt++;
+	} else {
+		if (ipv4)
+			pf->fd_sctp4_filter_cnt--;
+		else
+			pf->fd_sctp6_filter_cnt--;
+	}
 
 	return 0;
 }
 
-#define I40E_IP_DUMMY_PACKET_LEN 34
+#define I40E_IP_DUMMY_PACKET_LEN	34
+#define I40E_IP6_DUMMY_PACKET_LEN	54
 /**
- * i40e_add_del_fdir_ipv4 - Add/Remove IPv4 Flow Director filters for
+ * i40e_add_del_fdir_ip - Add/Remove IPv4 Flow Director filters for
  * a specific flow spec
  * @vsi: pointer to the targeted VSI
  * @fd_data: the flow director data required for the FDir descriptor
  * @add: true adds a filter, false removes it
+ * @ipv4: true is v4, false is v6
  *
  * Returns 0 if the filters were successfully added or removed
  **/
-static int i40e_add_del_fdir_ipv4(struct i40e_vsi *vsi,
-				  struct i40e_fdir_filter *fd_data,
-				  bool add)
+static int i40e_add_del_fdir_ip(struct i40e_vsi *vsi,
+				struct i40e_fdir_filter *fd_data,
+				bool add,
+				bool ipv4)
 {
 	struct i40e_pf *pf = vsi->back;
+	struct ipv6hdr *ipv6;
 	struct iphdr *ip;
 	u8 *raw_packet;
+	int iter_start;
+	int iter_end;
 	int ret;
 	int i;
-	static char packet[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08, 0,
-		0x45, 0, 0, 0x14, 0, 0, 0x40, 0, 0x40, 0x10, 0, 0, 0, 0, 0, 0,
-		0, 0, 0, 0};
+	static char packet_ipv4[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08,
+		0, 0x45, 0, 0, 0x14, 0, 0, 0x40, 0, 0x40, 0x10, 0, 0, 0, 0, 0,
+		0, 0, 0, 0, 0};
+	static char packet_ipv6[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x86,
+		0xdd, 0x60, 0, 0, 0, 0, 0, 0, 0,
+		/*src address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		/*dst address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
+
+	if (ipv4) {
+		iter_start = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
+		iter_end = I40E_FILTER_PCTYPE_FRAG_IPV4;
+	} else {
+		iter_start = I40E_FILTER_PCTYPE_NONF_IPV6_OTHER;
+		iter_end = I40E_FILTER_PCTYPE_FRAG_IPV6;
+	}
 
-	for (i = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
-	     i <= I40E_FILTER_PCTYPE_FRAG_IPV4;	i++) {
+	for (i = iter_start; i <= iter_end; i++) {
 		raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
 		if (!raw_packet)
 			return -ENOMEM;
-		memcpy(raw_packet, packet, I40E_IP_DUMMY_PACKET_LEN);
-		ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
-
-		ip->saddr = fd_data->src_ip;
-		ip->daddr = fd_data->dst_ip;
-		ip->protocol = 0;
+		if (ipv4) {
+			memcpy(raw_packet, packet_ipv4,
+			       I40E_IP_DUMMY_PACKET_LEN);
+			ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
+
+			ip->saddr = fd_data->src_ip;
+			ip->daddr = fd_data->dst_ip;
+			ip->protocol = IPPROTO_IP;
+		} else {
+			memcpy(raw_packet, packet_ipv6,
+			       I40E_IP6_DUMMY_PACKET_LEN);
+			ipv6 = (struct ipv6hdr *)(raw_packet +
+						  IP_HEADER_OFFSET);
+			memcpy(ipv6->saddr.in6_u.u6_addr32,
+			       fd_data->src_ip6, sizeof(__be32) * 4);
+			memcpy(ipv6->daddr.in6_u.u6_addr32,
+			       fd_data->dst_ip6, sizeof(__be32) * 4);
+
+			ipv6->nexthdr = IPPROTO_NONE;
+		}
 
 		if (fd_data->flex_filter) {
-			u8 *payload = raw_packet + I40E_IP_DUMMY_PACKET_LEN;
+			u8 *payload;
 			__be16 pattern = fd_data->flex_word;
 			u16 off = fd_data->flex_offset;
 
+			if (ipv4)
+				payload = raw_packet + I40E_IP_DUMMY_PACKET_LEN;
+			else
+				payload = raw_packet +
+					  I40E_IP6_DUMMY_PACKET_LEN;
 			*((__force __be16 *)(payload + off)) = pattern;
 		}
 
@@ -451,10 +602,17 @@ static int i40e_add_del_fdir_ipv4(struct i40e_vsi *vsi,
 		}
 	}
 
-	if (add)
-		pf->fd_ip4_filter_cnt++;
-	else
-		pf->fd_ip4_filter_cnt--;
+	if (add) {
+		if (ipv4)
+			pf->fd_ip4_filter_cnt++;
+		else
+			pf->fd_ip6_filter_cnt++;
+	} else {
+		if (ipv4)
+			pf->fd_ip4_filter_cnt--;
+		else
+			pf->fd_ip6_filter_cnt--;
+	}
 
 	return 0;
 }
@@ -469,37 +627,68 @@ static int i40e_add_del_fdir_ipv4(struct i40e_vsi *vsi,
 int i40e_add_del_fdir(struct i40e_vsi *vsi,
 		      struct i40e_fdir_filter *input, bool add)
 {
+	enum ip_ver { ipv6 = 0, ipv4 = 1 };
 	struct i40e_pf *pf = vsi->back;
 	int ret;
 
 	switch (input->flow_type & ~FLOW_EXT) {
 	case TCP_V4_FLOW:
-		ret = i40e_add_del_fdir_tcpv4(vsi, input, add);
+		ret = i40e_add_del_fdir_tcp(vsi, input, add, ipv4);
 		break;
 	case UDP_V4_FLOW:
-		ret = i40e_add_del_fdir_udpv4(vsi, input, add);
+		ret = i40e_add_del_fdir_udp(vsi, input, add, ipv4);
 		break;
 	case SCTP_V4_FLOW:
-		ret = i40e_add_del_fdir_sctpv4(vsi, input, add);
+		ret = i40e_add_del_fdir_sctp(vsi, input, add, ipv4);
+		break;
+	case TCP_V6_FLOW:
+		ret = i40e_add_del_fdir_tcp(vsi, input, add, ipv6);
+		break;
+	case UDP_V6_FLOW:
+		ret = i40e_add_del_fdir_udp(vsi, input, add, ipv6);
+		break;
+	case SCTP_V6_FLOW:
+		ret = i40e_add_del_fdir_sctp(vsi, input, add, ipv6);
 		break;
 	case IP_USER_FLOW:
-		switch (input->ip4_proto) {
+		switch (input->ipl4_proto) {
 		case IPPROTO_TCP:
-			ret = i40e_add_del_fdir_tcpv4(vsi, input, add);
+			ret = i40e_add_del_fdir_tcp(vsi, input, add, ipv4);
 			break;
 		case IPPROTO_UDP:
-			ret = i40e_add_del_fdir_udpv4(vsi, input, add);
+			ret = i40e_add_del_fdir_udp(vsi, input, add, ipv4);
 			break;
 		case IPPROTO_SCTP:
-			ret = i40e_add_del_fdir_sctpv4(vsi, input, add);
+			ret = i40e_add_del_fdir_sctp(vsi, input, add, ipv4);
 			break;
 		case IPPROTO_IP:
-			ret = i40e_add_del_fdir_ipv4(vsi, input, add);
+			ret = i40e_add_del_fdir_ip(vsi, input, add, ipv4);
 			break;
 		default:
 			/* We cannot support masking based on protocol */
 			dev_info(&pf->pdev->dev, "Unsupported IPv4 protocol 0x%02x\n",
-				 input->ip4_proto);
+				 input->ipl4_proto);
+			return -EINVAL;
+		}
+		break;
+	case IPV6_USER_FLOW:
+		switch (input->ipl4_proto) {
+		case IPPROTO_TCP:
+			ret = i40e_add_del_fdir_tcp(vsi, input, add, ipv6);
+			break;
+		case IPPROTO_UDP:
+			ret = i40e_add_del_fdir_udp(vsi, input, add, ipv6);
+			break;
+		case IPPROTO_SCTP:
+			ret = i40e_add_del_fdir_sctp(vsi, input, add, ipv6);
+			break;
+		case IPPROTO_IP:
+			ret = i40e_add_del_fdir_ip(vsi, input, add, ipv6);
+			break;
+		default:
+			/* We cannot support masking based on protocol */
+			dev_info(&pf->pdev->dev, "Unsupported IPv6 protocol 0x%02x\n",
+				 input->ipl4_proto);
 			return -EINVAL;
 		}
 		break;
-- 
2.26.0

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
