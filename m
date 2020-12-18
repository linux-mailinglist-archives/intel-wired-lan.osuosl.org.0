Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE342DE124
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 11:36:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CECFC8733C;
	Fri, 18 Dec 2020 10:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXk70LCDNCS0; Fri, 18 Dec 2020 10:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 106CB87363;
	Fri, 18 Dec 2020 10:36:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA27C1BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 10:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E343E2E126
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 10:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jvZY0Rp1h0YK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 10:36:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id A5141203E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 10:36:34 +0000 (UTC)
IronPort-SDR: 51WuHUgegbYKh4GSpwe1UXea0vgCQrlAVf2eccbvs0JVUvsMr9rvJHma2Q+CzAWXsJIbNDe0VB
 twbnU04CuPKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="154638190"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="154638190"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 02:36:32 -0800
IronPort-SDR: wiO/UNJQZaeA1l5lyY6TS/M6+Ws1iwzzs2KDPZ5GjstT7odmnVfzwUCPzSYjFz9ncX9xEN586/
 wigumNkFL+LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="489741532"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga004.jf.intel.com with ESMTP; 18 Dec 2020 02:36:31 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Dec 2020 10:36:29 +0000
Message-Id: <20201218103629.4571-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v4 2/2] i40e: VLAN field for flow
 director
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Allow user to specify VLAN field and add it to flow director. Show VLAN
field in "ethtool -n ethx" command.
Handle VLAN type and tag field provided by ethtool command. Refactored
filter addition, by replacing static arrays with runtime dummy packet
creation, which allows specifying VLAN field.
Previously, VLAN field was omitted.

v2: Fixed kernel test robot warnings
 >> drivers/net/ethernet/intel/i40e/i40e_txrx.c:547:6: warning: variable
 >> 'ret' set but not used [-Wunused-but-set-variable]

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |   2 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  30 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 547 ++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   2 +
 4 files changed, 289 insertions(+), 292 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 54054fc..abad062 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -219,6 +219,8 @@ struct i40e_fdir_filter {
 	__be16 dst_port;
 	__be32 sctp_v_tag;
 
+	__be16 vlan_etype;
+	__be16 vlan_tag;
 	/* Flexible data to match within the packet payload */
 	__be16 flex_word;
 	u16 flex_offset;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 661ba51..a7f21d9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3325,6 +3325,14 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 	else
 		fsp->ring_cookie = rule->q_index;
 
+	if (rule->vlan_tag) {
+		fsp->h_ext.vlan_etype = rule->vlan_etype;
+		fsp->m_ext.vlan_etype = htons(0xFFFF);
+		fsp->h_ext.vlan_tci = rule->vlan_tag;
+		fsp->m_ext.vlan_tci = htons(0xFFFF);
+		fsp->flow_type |= FLOW_EXT;
+	}
+
 	if (rule->dest_vsi != pf->vsi[pf->lan_vsi]->id) {
 		struct i40e_vsi *vsi;
 
@@ -4357,6 +4365,19 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 		return -EOPNOTSUPP;
 	}
 
+	if (fsp->flow_type & FLOW_EXT) {
+		/* Allow only 802.1Q and no etype defined, as
+		 * later it's modified to 0x8100
+		 */
+		if (fsp->h_ext.vlan_etype != htons(ETH_P_8021Q) &&
+		    fsp->h_ext.vlan_etype != 0)
+			return -EOPNOTSUPP;
+		if (fsp->m_ext.vlan_tci == htons(0xFFFF))
+			new_mask |= I40E_VLAN_SRC_MASK;
+		else
+			new_mask &= ~I40E_VLAN_SRC_MASK;
+	}
+
 	/* First, clear all flexible filter entries */
 	new_mask &= ~I40E_FLEX_INPUT_MASK;
 
@@ -4536,7 +4557,9 @@ static bool i40e_match_fdir_filter(struct i40e_fdir_filter *a,
 	    a->dst_port != b->dst_port ||
 	    a->src_port != b->src_port ||
 	    a->flow_type != b->flow_type ||
-	    a->ipl4_proto != b->ipl4_proto)
+	    a->ipl4_proto != b->ipl4_proto ||
+	    a->vlan_tag != b->vlan_tag ||
+	    a->vlan_etype != b->vlan_etype)
 		return false;
 
 	return true;
@@ -4695,6 +4718,11 @@ static int i40e_add_fdir_ethtool(struct i40e_vsi *vsi,
 	input->src_ip = fsp->h_u.tcp_ip4_spec.ip4dst;
 	input->flow_type = fsp->flow_type & ~FLOW_EXT;
 
+	input->vlan_etype = fsp->h_ext.vlan_etype;
+	if (!fsp->m_ext.vlan_etype && fsp->h_ext.vlan_tci)
+		input->vlan_etype = cpu_to_be16(ETH_P_8021Q);
+	if (fsp->m_ext.vlan_tci && input->vlan_etype)
+		input->vlan_tag = fsp->h_ext.vlan_tci;
 	if (input->flow_type == IPV6_USER_FLOW ||
 	    input->flow_type == UDP_V6_FLOW ||
 	    input->flow_type == TCP_V6_FLOW ||
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index c1ba4f0..22b587d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -157,90 +157,180 @@ static int i40e_program_fdir_filter(struct i40e_fdir_filter *fdir_data,
 	return -1;
 }
 
-#define IP_HEADER_OFFSET		14
-#define I40E_UDPIP_DUMMY_PACKET_LEN	42
-#define I40E_UDPIP6_DUMMY_PACKET_LEN	62
 /**
- * i40e_add_del_fdir_udp - Add/Remove UDP filters
- * @vsi: pointer to the targeted VSI
- * @fd_data: the flow director data required for the FDir descriptor
- * @add: true adds a filter, false removes it
- * @ipv4: true is v4, false is v6
+ * i40e_create_dummy_packet - Constructs dummy packet for HW
+ * @dummy_packet: preallocated space for dummy packet
+ * @ipv4: is layer 3 packet of version 4 or 6
+ * @l4proto: next level protocol used in data portion of l3
+ * @data: filter data
  *
- * Returns 0 if the filters were successfully added or removed
+ * Returns address of layer 4 protocol dummy packet.
  **/
-static int i40e_add_del_fdir_udp(struct i40e_vsi *vsi,
-				 struct i40e_fdir_filter *fd_data,
-				 bool add,
-				 bool ipv4)
+static char *i40e_create_dummy_packet(u8 *dummy_packet, bool ipv4, u8 l4proto,
+				      struct i40e_fdir_filter *data)
 {
-	struct i40e_pf *pf = vsi->back;
-	struct ipv6hdr *ipv6;
-	struct udphdr *udp;
-	struct iphdr *ip;
-	u8 *raw_packet;
-	int ret;
-	static char packet_ipv4[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08,
-		0, 0x45, 0, 0, 0x1c, 0, 0, 0x40, 0, 0x40, 0x11, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
-	static char packet_ipv6[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x86,
-		0xdd, 0x60, 0, 0, 0, 0, 0, 0x11, 0,
-		/*src address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-		/*dst address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-		/*udp header*/
-		0, 0, 0, 0, 0, 0, 0, 0};
+	bool is_vlan = !!data->vlan_tag;
+	struct vlan_hdr vlan;
+	struct ipv6hdr ipv6;
+	struct ethhdr eth;
+	struct iphdr ip;
+	u8 *tmp;
 
-	raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
-	if (!raw_packet)
-		return -ENOMEM;
 	if (ipv4) {
-		memcpy(raw_packet, packet_ipv4, I40E_UDPIP_DUMMY_PACKET_LEN);
+		eth.h_proto = cpu_to_be16(ETH_P_IP);
+		ip.protocol = l4proto;
+		ip.version = 0x4;
+		ip.ihl = 0x5;
 
-		ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
-		udp = (struct udphdr *)(raw_packet + IP_HEADER_OFFSET
-		      + sizeof(struct iphdr));
-
-		ip->daddr = fd_data->dst_ip;
-		ip->saddr = fd_data->src_ip;
+		ip.daddr = data->dst_ip;
+		ip.saddr = data->src_ip;
 	} else {
-		memcpy(raw_packet, packet_ipv6, I40E_UDPIP6_DUMMY_PACKET_LEN);
-		ipv6 = (struct ipv6hdr *)(raw_packet + IP_HEADER_OFFSET);
-		udp = (struct udphdr *)(raw_packet + IP_HEADER_OFFSET
-		      + sizeof(struct ipv6hdr));
+		eth.h_proto = cpu_to_be16(ETH_P_IPV6);
+		ipv6.nexthdr = l4proto;
+		ipv6.version = 0x6;
+
+		memcpy(&ipv6.saddr.in6_u.u6_addr32, data->src_ip6,
+		       sizeof(__be32) * 4);
+		memcpy(&ipv6.daddr.in6_u.u6_addr32, data->dst_ip6,
+		       sizeof(__be32) * 4);
+	}
+
+	if (is_vlan) {
+		vlan.h_vlan_TCI = data->vlan_tag;
+		vlan.h_vlan_encapsulated_proto = eth.h_proto;
+		eth.h_proto = data->vlan_etype;
+	}
+
+	tmp = dummy_packet;
+	memcpy(tmp, &eth, sizeof(eth));
+	tmp += sizeof(eth);
 
-		memcpy(ipv6->saddr.in6_u.u6_addr32,
-		       fd_data->src_ip6, sizeof(__be32) * 4);
-		memcpy(ipv6->daddr.in6_u.u6_addr32,
-		       fd_data->dst_ip6, sizeof(__be32) * 4);
+	if (is_vlan) {
+		memcpy(tmp, &vlan, sizeof(vlan));
+		tmp += sizeof(vlan);
 	}
-	udp->dest = fd_data->dst_port;
-	udp->source = fd_data->src_port;
+
+	if (ipv4) {
+		memcpy(tmp, &ip, sizeof(ip));
+		tmp += sizeof(ip);
+	} else {
+		memcpy(tmp, &ipv6, sizeof(ipv6));
+		tmp += sizeof(ipv6);
+	}
+
+	return tmp;
+}
+
+/**
+ * i40e_create_dummy_udp_packet - helper function to create UDP packet
+ * @raw_packet: preallocated space for dummy packet
+ * @ipv4: is layer 3 packet of version 4 or 6
+ * @l4proto: next level protocol used in data portion of l3
+ * @data: filter data
+ *
+ * Helper function to populate udp fields.
+ **/
+static void i40e_create_dummy_udp_packet(u8 *raw_packet, bool ipv4, u8 l4proto,
+					 struct i40e_fdir_filter *data)
+{
+	struct udphdr *udp;
+	u8 *tmp;
+
+	tmp = i40e_create_dummy_packet(raw_packet, ipv4, IPPROTO_UDP, data);
+	udp = (struct udphdr *)(tmp);
+	udp->dest = data->dst_port;
+	udp->source = data->src_port;
+}
+
+/**
+ * i40e_create_dummy_tcp_packet - helper function to create TCP packet
+ * @raw_packet: preallocated space for dummy packet
+ * @ipv4: is layer 3 packet of version 4 or 6
+ * @l4proto: next level protocol used in data portion of l3
+ * @data: filter data
+ *
+ * Helper function to populate tcp fields.
+ **/
+static void i40e_create_dummy_tcp_packet(u8 *raw_packet, bool ipv4, u8 l4proto,
+					 struct i40e_fdir_filter *data)
+{
+	struct tcphdr *tcp;
+	u8 *tmp;
+	/* Dummy tcp packet */
+	static const char tcp_packet[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+		0x50, 0x11, 0x0, 0x72, 0, 0, 0, 0};
+
+	tmp = i40e_create_dummy_packet(raw_packet, ipv4, IPPROTO_TCP, data);
+
+	tcp = (struct tcphdr *)tmp;
+	memcpy(tcp, tcp_packet, sizeof(tcp_packet));
+	tcp->dest = data->dst_port;
+	tcp->source = data->src_port;
+}
+
+/**
+ * i40e_create_dummy_sctp_packet - helper function to create SCTP packet
+ * @raw_packet: preallocated space for dummy packet
+ * @ipv4: is layer 3 packet of version 4 or 6
+ * @l4proto: next level protocol used in data portion of l3
+ * @data: filter data
+ *
+ * Helper function to populate sctp fields.
+ **/
+static void i40e_create_dummy_sctp_packet(u8 *raw_packet, bool ipv4,
+					  u8 l4proto,
+					  struct i40e_fdir_filter *data)
+{
+	struct sctphdr *sctp;
+	u8 *tmp;
+
+	tmp = i40e_create_dummy_packet(raw_packet, ipv4, IPPROTO_SCTP, data);
+
+	sctp = (struct sctphdr *)tmp;
+	sctp->dest = data->dst_port;
+	sctp->source = data->src_port;
+}
+
+/**
+ * i40e_prepare_fdir_filter - Prepare and program fdir filter
+ * @pf: physical function to attach filter to
+ * @fd_data: filter data
+ * @add: add or delete filter
+ * @packet_addr: address of dummy packet, used in filtering
+ * @payload_offset: offset from dummy packet address to user defined data
+ * @pctype: Packet type for which filter is used
+ *
+ * Helper function to offset data of dummy packet, program it and
+ * handle errors.
+ **/
+static int i40e_prepare_fdir_filter(struct i40e_pf *pf,
+				    struct i40e_fdir_filter *fd_data,
+				    bool add, char *packet_addr,
+				    int payload_offset, u8 pctype)
+{
+	int ret;
 
 	if (fd_data->flex_filter) {
 		u8 *payload;
 		__be16 pattern = fd_data->flex_word;
 		u16 off = fd_data->flex_offset;
 
-		if (ipv4)
-			payload = raw_packet + I40E_UDPIP_DUMMY_PACKET_LEN;
-		else
-			payload = raw_packet + I40E_UDPIP6_DUMMY_PACKET_LEN;
+		payload = packet_addr + payload_offset;
+
+		/* If user provided vlan, offset payload by vlan header length */
+		if (!!fd_data->vlan_tag)
+			payload += VLAN_HLEN;
 
 		*((__force __be16 *)(payload + off)) = pattern;
 	}
 
-	if (ipv4)
-		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
-	else
-		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
-
-	ret = i40e_program_fdir_filter(fd_data, raw_packet, pf, add);
+	fd_data->pctype = pctype;
+	ret = i40e_program_fdir_filter(fd_data, packet_addr, pf, add);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "PCTYPE:%d, Filter command send failed for fd_id:%d (ret = %d)\n",
 			 fd_data->pctype, fd_data->fd_id, ret);
 		/* Free the packet buffer since it wasn't added to the ring */
-		kfree(raw_packet);
 		return -EOPNOTSUPP;
 	} else if (I40E_DEBUG_FD & pf->hw.debug_mask) {
 		if (add)
@@ -253,25 +343,39 @@ static int i40e_add_del_fdir_udp(struct i40e_vsi *vsi,
 				 fd_data->pctype, fd_data->fd_id);
 	}
 
+	return ret;
+}
+
+/**
+ * i40e_change_filter_num - Prepare and program fdir filter
+ * @ipv4: is layer 3 packet of version 4 or 6
+ * @add: add or delete filter
+ * @ipv4_filter_num: field to update
+ * @ipv6_filter_num: field to update
+ *
+ * Update filter number field for pf.
+ **/
+static void i40e_change_filter_num(bool ipv4, bool add, u16 *ipv4_filter_num,
+				   u16 *ipv6_filter_num)
+{
 	if (add) {
 		if (ipv4)
-			pf->fd_udp4_filter_cnt++;
+			(*ipv4_filter_num)++;
 		else
-			pf->fd_udp6_filter_cnt++;
+			(*ipv6_filter_num)++;
 	} else {
 		if (ipv4)
-			pf->fd_udp4_filter_cnt--;
+			(*ipv4_filter_num)--;
 		else
-			pf->fd_udp6_filter_cnt--;
+			(*ipv6_filter_num)--;
 	}
-
-	return 0;
 }
 
-#define I40E_TCPIP_DUMMY_PACKET_LEN	54
-#define I40E_TCPIP6_DUMMY_PACKET_LEN	74
+#define IP_HEADER_OFFSET		14
+#define I40E_UDPIP_DUMMY_PACKET_LEN	42
+#define I40E_UDPIP6_DUMMY_PACKET_LEN	62
 /**
- * i40e_add_del_fdir_tcp - Add/Remove TCPv4 filters
+ * i40e_add_del_fdir_udp - Add/Remove UDP filters
  * @vsi: pointer to the targeted VSI
  * @fd_data: the flow director data required for the FDir descriptor
  * @add: true adds a filter, false removes it
@@ -279,112 +383,93 @@ static int i40e_add_del_fdir_udp(struct i40e_vsi *vsi,
  *
  * Returns 0 if the filters were successfully added or removed
  **/
-static int i40e_add_del_fdir_tcp(struct i40e_vsi *vsi,
+static int i40e_add_del_fdir_udp(struct i40e_vsi *vsi,
 				 struct i40e_fdir_filter *fd_data,
 				 bool add,
 				 bool ipv4)
 {
 	struct i40e_pf *pf = vsi->back;
-	struct ipv6hdr *ipv6;
-	struct tcphdr *tcp;
-	struct iphdr *ip;
 	u8 *raw_packet;
 	int ret;
-	/* Dummy packet */
-	static char packet_ipv4[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08,
-		0, 0x45, 0, 0, 0x28, 0, 0, 0x40, 0, 0x40, 0x6, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x50, 0x11,
-		0x0, 0x72, 0, 0, 0, 0};
-	static char packet_ipv6[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x86,
-		0xdd, 0x60, 0, 0, 0, 0, 0, 0x6, 0,
-		/*src address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-		/*dst address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x50, 0x11,
-		0x0, 0x72, 0, 0, 0, 0};
 
 	raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
 	if (!raw_packet)
 		return -ENOMEM;
-	if (ipv4) {
-		memcpy(raw_packet, packet_ipv4, I40E_TCPIP_DUMMY_PACKET_LEN);
 
-		ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
-		tcp = (struct tcphdr *)(raw_packet + IP_HEADER_OFFSET
-		      + sizeof(struct iphdr));
+	i40e_create_dummy_udp_packet(raw_packet, ipv4, IPPROTO_UDP, fd_data);
 
-		ip->daddr = fd_data->dst_ip;
-		ip->saddr = fd_data->src_ip;
-	} else {
-		memcpy(raw_packet, packet_ipv6, I40E_TCPIP6_DUMMY_PACKET_LEN);
-
-		tcp = (struct tcphdr *)(raw_packet + IP_HEADER_OFFSET
-		      + sizeof(struct ipv6hdr));
-		ipv6 = (struct ipv6hdr *)(raw_packet + IP_HEADER_OFFSET);
+	if (ipv4)
+		ret = i40e_prepare_fdir_filter
+			(pf, fd_data, add, raw_packet,
+			 I40E_UDPIP_DUMMY_PACKET_LEN,
+			 I40E_FILTER_PCTYPE_NONF_IPV4_UDP);
+	else
+		ret = i40e_prepare_fdir_filter
+			(pf, fd_data, add, raw_packet,
+			 I40E_UDPIP6_DUMMY_PACKET_LEN,
+			 I40E_FILTER_PCTYPE_NONF_IPV6_UDP);
 
-		memcpy(ipv6->saddr.in6_u.u6_addr32,
-		       fd_data->src_ip6, sizeof(__be32) * 4);
-		memcpy(ipv6->daddr.in6_u.u6_addr32,
-		       fd_data->dst_ip6, sizeof(__be32) * 4);
+	if (ret) {
+		kfree(raw_packet);
+		return ret;
 	}
 
-	ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
-	tcp = (struct tcphdr *)(raw_packet + IP_HEADER_OFFSET
-	      + sizeof(struct iphdr));
+	i40e_change_filter_num(ipv4, add, &pf->fd_udp4_filter_cnt,
+			       &pf->fd_udp6_filter_cnt);
 
-	tcp->dest = fd_data->dst_port;
-	tcp->source = fd_data->src_port;
-
-	if (fd_data->flex_filter) {
-		u8 *payload;
-		__be16 pattern = fd_data->flex_word;
-		u16 off = fd_data->flex_offset;
+	return 0;
+}
 
-		if (ipv4)
-			payload = raw_packet + I40E_TCPIP_DUMMY_PACKET_LEN;
-		else
-			payload = raw_packet + I40E_TCPIP6_DUMMY_PACKET_LEN;
+#define I40E_TCPIP_DUMMY_PACKET_LEN	54
+#define I40E_TCPIP6_DUMMY_PACKET_LEN	74
+/**
+ * i40e_add_del_fdir_tcp - Add/Remove TCPv4 filters
+ * @vsi: pointer to the targeted VSI
+ * @fd_data: the flow director data required for the FDir descriptor
+ * @add: true adds a filter, false removes it
+ * @ipv4: true is v4, false is v6
+ *
+ * Returns 0 if the filters were successfully added or removed
+ **/
+static int i40e_add_del_fdir_tcp(struct i40e_vsi *vsi,
+				 struct i40e_fdir_filter *fd_data,
+				 bool add,
+				 bool ipv4)
+{
+	struct i40e_pf *pf = vsi->back;
+	u8 *raw_packet;
+	int ret;
 
-		*((__force __be16 *)(payload + off)) = pattern;
-	}
+	raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
+	if (!raw_packet)
+		return -ENOMEM;
 
+	i40e_create_dummy_tcp_packet(raw_packet, ipv4, IPPROTO_TCP, fd_data);
 	if (ipv4)
-		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_TCP;
+		ret = i40e_prepare_fdir_filter
+			(pf, fd_data, add, raw_packet,
+			 I40E_TCPIP_DUMMY_PACKET_LEN,
+			 I40E_FILTER_PCTYPE_NONF_IPV4_TCP);
 	else
-		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
-	ret = i40e_program_fdir_filter(fd_data, raw_packet, pf, add);
+		ret = i40e_prepare_fdir_filter
+			(pf, fd_data, add, raw_packet,
+			 I40E_TCPIP6_DUMMY_PACKET_LEN,
+			 I40E_FILTER_PCTYPE_NONF_IPV6_TCP);
+
 	if (ret) {
-		dev_info(&pf->pdev->dev,
-			 "PCTYPE:%d, Filter command send failed for fd_id:%d (ret = %d)\n",
-			 fd_data->pctype, fd_data->fd_id, ret);
-		/* Free the packet buffer since it wasn't added to the ring */
 		kfree(raw_packet);
-		return -EOPNOTSUPP;
-	} else if (I40E_DEBUG_FD & pf->hw.debug_mask) {
-		if (add)
-			dev_info(&pf->pdev->dev, "Filter OK for PCTYPE %d loc = %d)\n",
-				 fd_data->pctype, fd_data->fd_id);
-		else
-			dev_info(&pf->pdev->dev,
-				 "Filter deleted for PCTYPE %d loc = %d\n",
-				 fd_data->pctype, fd_data->fd_id);
+		return ret;
 	}
 
+	i40e_change_filter_num(ipv4, add, &pf->fd_tcp4_filter_cnt,
+			       &pf->fd_tcp6_filter_cnt);
+
 	if (add) {
-		if (ipv4)
-			pf->fd_tcp4_filter_cnt++;
-		else
-			pf->fd_tcp6_filter_cnt++;
 		if ((pf->flags & I40E_FLAG_FD_ATR_ENABLED) &&
 		    I40E_DEBUG_FD & pf->hw.debug_mask)
 			dev_info(&pf->pdev->dev, "Forcing ATR off, sideband rules for TCP/IPv4 flow being applied\n");
 		set_bit(__I40E_FD_ATR_AUTO_DISABLED, pf->state);
-	} else {
-		if (ipv4)
-			pf->fd_tcp4_filter_cnt--;
-		else
-			pf->fd_tcp6_filter_cnt--;
 	}
-
 	return 0;
 }
 
@@ -406,96 +491,33 @@ static int i40e_add_del_fdir_sctp(struct i40e_vsi *vsi,
 				  bool ipv4)
 {
 	struct i40e_pf *pf = vsi->back;
-	struct ipv6hdr *ipv6;
-	struct sctphdr *sctp;
-	struct iphdr *ip;
 	u8 *raw_packet;
 	int ret;
-	/* Dummy packets */
-	static char packet_ipv4[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08,
-		0, 0x45, 0, 0, 0x20, 0, 0, 0x40, 0, 0x40, 0x84, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
-
-	static char packet_ipv6[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x86,
-		0xdd, 0x60, 0, 0, 0, 0, 0, 0x84, 0,
-		/*src address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-		/*dst address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
+
 	raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
 	if (!raw_packet)
 		return -ENOMEM;
-	if (ipv4) {
-		memcpy(raw_packet, packet_ipv4, I40E_SCTPIP_DUMMY_PACKET_LEN);
-
-		ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
-		sctp = (struct sctphdr *)(raw_packet + IP_HEADER_OFFSET
-		       + sizeof(struct iphdr));
 
-		ip->daddr = fd_data->dst_ip;
-		ip->saddr = fd_data->src_ip;
-	} else {
-		memcpy(raw_packet, packet_ipv6, I40E_SCTPIP6_DUMMY_PACKET_LEN);
-
-		ipv6 = (struct ipv6hdr *)(raw_packet + IP_HEADER_OFFSET);
-		sctp = (struct sctphdr *)(raw_packet + IP_HEADER_OFFSET
-		       + sizeof(struct ipv6hdr));
-
-		memcpy(ipv6->saddr.in6_u.u6_addr32,
-		       fd_data->src_ip6, sizeof(__be32) * 4);
-		memcpy(ipv6->saddr.in6_u.u6_addr32,
-		       fd_data->src_ip6, sizeof(__be32) * 4);
-	}
-
-	sctp->dest = fd_data->dst_port;
-	sctp->source = fd_data->src_port;
-
-	if (fd_data->flex_filter) {
-		u8 *payload;
-		__be16 pattern = fd_data->flex_word;
-		u16 off = fd_data->flex_offset;
-
-		if (ipv4)
-			payload = raw_packet + I40E_SCTPIP_DUMMY_PACKET_LEN;
-		else
-			payload = raw_packet + I40E_SCTPIP6_DUMMY_PACKET_LEN;
-		*((__force __be16 *)(payload + off)) = pattern;
-	}
+	i40e_create_dummy_sctp_packet(raw_packet, ipv4, IPPROTO_SCTP, fd_data);
 
 	if (ipv4)
-		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV4_SCTP;
+		ret = i40e_prepare_fdir_filter
+			(pf, fd_data, add, raw_packet,
+			 I40E_SCTPIP_DUMMY_PACKET_LEN,
+			 I40E_FILTER_PCTYPE_NONF_IPV4_SCTP);
 	else
-		fd_data->pctype = I40E_FILTER_PCTYPE_NONF_IPV6_SCTP;
+		ret = i40e_prepare_fdir_filter
+			(pf, fd_data, add, raw_packet,
+			 I40E_SCTPIP6_DUMMY_PACKET_LEN,
+			 I40E_FILTER_PCTYPE_NONF_IPV6_SCTP);
 
-	ret = i40e_program_fdir_filter(fd_data, raw_packet, pf, add);
 	if (ret) {
-		dev_info(&pf->pdev->dev,
-			 "PCTYPE:%d, Filter command send failed for fd_id:%d (ret = %d)\n",
-			 fd_data->pctype, fd_data->fd_id, ret);
-		/* Free the packet buffer since it wasn't added to the ring */
 		kfree(raw_packet);
-		return -EOPNOTSUPP;
-	} else if (I40E_DEBUG_FD & pf->hw.debug_mask) {
-		if (add)
-			dev_info(&pf->pdev->dev,
-				 "Filter OK for PCTYPE %d loc = %d\n",
-				 fd_data->pctype, fd_data->fd_id);
-		else
-			dev_info(&pf->pdev->dev,
-				 "Filter deleted for PCTYPE %d loc = %d\n",
-				 fd_data->pctype, fd_data->fd_id);
+		return ret;
 	}
 
-	if (add) {
-		if (ipv4)
-			pf->fd_sctp4_filter_cnt++;
-		else
-			pf->fd_sctp6_filter_cnt++;
-	} else {
-		if (ipv4)
-			pf->fd_sctp4_filter_cnt--;
-		else
-			pf->fd_sctp6_filter_cnt--;
-	}
+	i40e_change_filter_num(ipv4, add, &pf->fd_sctp4_filter_cnt,
+			       &pf->fd_sctp6_filter_cnt);
 
 	return 0;
 }
@@ -518,20 +540,12 @@ static int i40e_add_del_fdir_ip(struct i40e_vsi *vsi,
 				bool ipv4)
 {
 	struct i40e_pf *pf = vsi->back;
-	struct ipv6hdr *ipv6;
-	struct iphdr *ip;
+	int payload_offset;
 	u8 *raw_packet;
 	int iter_start;
 	int iter_end;
 	int ret;
 	int i;
-	static char packet_ipv4[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x08,
-		0, 0x45, 0, 0, 0x14, 0, 0, 0x40, 0, 0x40, 0x10, 0, 0, 0, 0, 0,
-		0, 0, 0, 0, 0};
-	static char packet_ipv6[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x86,
-		0xdd, 0x60, 0, 0, 0, 0, 0, 0, 0,
-		/*src address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
-		/*dst address*/0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
 
 	if (ipv4) {
 		iter_start = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
@@ -545,76 +559,27 @@ static int i40e_add_del_fdir_ip(struct i40e_vsi *vsi,
 		raw_packet = kzalloc(I40E_FDIR_MAX_RAW_PACKET_SIZE, GFP_KERNEL);
 		if (!raw_packet)
 			return -ENOMEM;
-		if (ipv4) {
-			memcpy(raw_packet, packet_ipv4,
-			       I40E_IP_DUMMY_PACKET_LEN);
-			ip = (struct iphdr *)(raw_packet + IP_HEADER_OFFSET);
-
-			ip->saddr = fd_data->src_ip;
-			ip->daddr = fd_data->dst_ip;
-			ip->protocol = IPPROTO_IP;
-		} else {
-			memcpy(raw_packet, packet_ipv6,
-			       I40E_IP6_DUMMY_PACKET_LEN);
-			ipv6 = (struct ipv6hdr *)(raw_packet +
-						  IP_HEADER_OFFSET);
-			memcpy(ipv6->saddr.in6_u.u6_addr32,
-			       fd_data->src_ip6, sizeof(__be32) * 4);
-			memcpy(ipv6->daddr.in6_u.u6_addr32,
-			       fd_data->dst_ip6, sizeof(__be32) * 4);
-
-			ipv6->nexthdr = IPPROTO_NONE;
-		}
 
-		if (fd_data->flex_filter) {
-			u8 *payload;
-			__be16 pattern = fd_data->flex_word;
-			u16 off = fd_data->flex_offset;
-
-			if (ipv4)
-				payload = raw_packet + I40E_IP_DUMMY_PACKET_LEN;
-			else
-				payload = raw_packet +
-					  I40E_IP6_DUMMY_PACKET_LEN;
-			*((__force __be16 *)(payload + off)) = pattern;
-		}
+		/* IPv6 no header option differs from IPv4 */
+		(void)i40e_create_dummy_packet
+			(raw_packet, ipv4, (ipv4) ? IPPROTO_IP : IPPROTO_NONE,
+			 fd_data);
 
-		fd_data->pctype = i;
-		ret = i40e_program_fdir_filter(fd_data, raw_packet, pf, add);
-		if (ret) {
-			dev_info(&pf->pdev->dev,
-				 "PCTYPE:%d, Filter command send failed for fd_id:%d (ret = %d)\n",
-				 fd_data->pctype, fd_data->fd_id, ret);
-			/* The packet buffer wasn't added to the ring so we
-			 * need to free it now.
-			 */
-			kfree(raw_packet);
-			return -EOPNOTSUPP;
-		} else if (I40E_DEBUG_FD & pf->hw.debug_mask) {
-			if (add)
-				dev_info(&pf->pdev->dev,
-					 "Filter OK for PCTYPE %d loc = %d\n",
-					 fd_data->pctype, fd_data->fd_id);
-			else
-				dev_info(&pf->pdev->dev,
-					 "Filter deleted for PCTYPE %d loc = %d\n",
-					 fd_data->pctype, fd_data->fd_id);
-		}
+		payload_offset = (ipv4) ? I40E_IP_DUMMY_PACKET_LEN :
+			I40E_IP6_DUMMY_PACKET_LEN;
+		ret = i40e_prepare_fdir_filter(pf, fd_data, add, raw_packet,
+					       payload_offset, i);
+		if (ret)
+			goto err;
 	}
 
-	if (add) {
-		if (ipv4)
-			pf->fd_ip4_filter_cnt++;
-		else
-			pf->fd_ip6_filter_cnt++;
-	} else {
-		if (ipv4)
-			pf->fd_ip4_filter_cnt--;
-		else
-			pf->fd_ip6_filter_cnt--;
-	}
+	i40e_change_filter_num(ipv4, add, &pf->fd_ip4_filter_cnt,
+			       &pf->fd_ip6_filter_cnt);
 
 	return 0;
+err:
+	kfree(raw_packet);
+	return ret;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index c0bdc66..dada3ee 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -1420,6 +1420,8 @@ struct i40e_lldp_variables {
 #define I40E_L4_DST_MASK		(0x1ULL << I40E_L4_DST_SHIFT)
 #define I40E_VERIFY_TAG_SHIFT		31
 #define I40E_VERIFY_TAG_MASK		(0x3ULL << I40E_VERIFY_TAG_SHIFT)
+#define I40E_VLAN_SRC_SHIFT		55
+#define I40E_VLAN_SRC_MASK		(0x1ULL << I40E_VLAN_SRC_SHIFT)
 
 #define I40E_FLEX_50_SHIFT		13
 #define I40E_FLEX_50_MASK		(0x1ULL << I40E_FLEX_50_SHIFT)
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
