Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098063E2664
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 10:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6A1D4036F;
	Fri,  6 Aug 2021 08:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWOXjvthLGNb; Fri,  6 Aug 2021 08:49:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72245400C2;
	Fri,  6 Aug 2021 08:49:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72E361BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C10B60A55
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 780C7MGT2TId for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EA9F608B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:49:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="275379349"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="275379349"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 01:49:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="501928890"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 06 Aug 2021 01:49:08 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1768n6kT030013
 for <intel-wired-lan@lists.osuosl.org>; Fri, 6 Aug 2021 09:49:08 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 10:49:01 +0200
Message-Id: <1628239746-17380-5-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v6 4/9] ice: allow adding
 advanced rules
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grishma Kotecha <grishma.kotecha@intel.com>

Define dummy packet headers to allow adding advanced rules in HW. This
header is used as admin queue command parameter for adding a rule.
The firmware will extract correct fields and will use them in look ups.

Define each supported packets header and offsets to words used in recipe.
Supported headers:
- MAC + IPv4 + UDP
- MAC + VLAN + IPv4 + UDP
- MAC + IPv4 + TCP
- MAC + VLAN + IPv4 + TCP
- MAC + IPv6 + UDP
- MAC + VLAN + IPv6 + UDP
- MAC + IPv6 + TCP
- MAC + VLAN + IPv6 + TCP

Add code for creating an advanced rule. Rule needs to match defined
dummy packet, if not return error, which means that this type of rule
isn't currently supported.

The first step in adding advanced rule is searching for an advanced
recipe matching this kind of rule. If it doesn't exist new recipe is
created. Dummy packet has to be filled with the correct header field
value from the rule definition. It will be used to do look up in HW.

Support searching for existing advance rule entry. It is used in case
of adding the same rule on different VSI. In this case, instead of
creating new rule, the existing one should be updated with refreshed VSI
list.

Add initialization for prof_res_bm_init flag to zero so that
the possible resource for fv in the files can be initialized.

Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Grishma Kotecha <grishma.kotecha@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |   1 +
 drivers/net/ethernet/intel/ice/ice_switch.c | 832 +++++++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h |  14 +
 drivers/net/ethernet/intel/ice/ice_type.h   |   1 +
 4 files changed, 847 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f63912797548..9d32eb970028 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -568,6 +568,7 @@ static enum ice_status ice_init_fltr_mgmt_struct(struct ice_hw *hw)
 		return ICE_ERR_NO_MEMORY;
 
 	INIT_LIST_HEAD(&sw->vsi_list_map_head);
+	sw->prof_res_bm_init = 0;
 
 	status = ice_init_def_sw_recp(hw);
 	if (status) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 8274f2e8df38..04cbd9d417fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -8,6 +8,7 @@
 #define ICE_ETH_ETHTYPE_OFFSET		12
 #define ICE_ETH_VLAN_TCI_OFFSET		14
 #define ICE_MAX_VLAN_ID			0xFFF
+#define ICE_IPV6_ETHER_ID		0x86DD
 
 /* Dummy ethernet header needed in the ice_aqc_sw_rules_elem
  * struct to configure any switch filter rules.
@@ -29,6 +30,290 @@
 							0x2, 0, 0, 0, 0, 0,
 							0x81, 0, 0, 0};
 
+struct ice_dummy_pkt_offsets {
+	enum ice_protocol_type type;
+	u16 offset; /* ICE_PROTOCOL_LAST indicates end of list */
+};
+
+/* offset info for MAC + IPv4 + UDP dummy packet */
+static const struct ice_dummy_pkt_offsets dummy_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_ILOS,		34 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+/* Dummy packet for MAC + IPv4 + UDP */
+static const u8 dummy_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x1c, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 34 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
+};
+
+/* offset info for MAC + VLAN + IPv4 + UDP dummy packet */
+static const struct ice_dummy_pkt_offsets dummy_vlan_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_OFOS,	12 },
+	{ ICE_ETYPE_OL,		16 },
+	{ ICE_IPV4_OFOS,	18 },
+	{ ICE_UDP_ILOS,		38 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+/* C-tag (801.1Q), IPv4:UDP dummy packet */
+static const u8 dummy_vlan_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x81, 0x00, 0x00, 0x00, /* ICE_VLAN_OFOS 12 */
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 16 */
+
+	0x45, 0x00, 0x00, 0x1c, /* ICE_IPV4_OFOS 18 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 38 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
+};
+
+/* offset info for MAC + IPv4 + TCP dummy packet */
+static const struct ice_dummy_pkt_offsets dummy_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_TCP_IL,		34 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+/* Dummy packet for MAC + IPv4 + TCP */
+static const u8 dummy_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 12 */
+
+	0x45, 0x00, 0x00, 0x28, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 34 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
+};
+
+/* offset info for MAC + VLAN (C-tag, 802.1Q) + IPv4 + TCP dummy packet */
+static const struct ice_dummy_pkt_offsets dummy_vlan_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_OFOS,	12 },
+	{ ICE_ETYPE_OL,		16 },
+	{ ICE_IPV4_OFOS,	18 },
+	{ ICE_TCP_IL,		38 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+/* C-tag (801.1Q), IPv4:TCP dummy packet */
+static const u8 dummy_vlan_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x81, 0x00, 0x00, 0x00,	/* ICE_VLAN_OFOS 12 */
+
+	0x08, 0x00,		/* ICE_ETYPE_OL 16 */
+
+	0x45, 0x00, 0x00, 0x28, /* ICE_IPV4_OFOS 18 */
+	0x00, 0x01, 0x00, 0x00,
+	0x00, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 38 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,	/* 2 bytes for 4 byte alignment */
+};
+
+static const struct ice_dummy_pkt_offsets dummy_tcp_ipv6_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_TCP_IL,		54 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_tcp_ipv6_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x86, 0xDD,		/* ICE_ETYPE_OL 12 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 40 */
+	0x00, 0x14, 0x06, 0x00, /* Next header is TCP */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 54 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+/* C-tag (802.1Q): IPv6 + TCP */
+static const struct ice_dummy_pkt_offsets
+dummy_vlan_tcp_ipv6_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_OFOS,	12 },
+	{ ICE_ETYPE_OL,		16 },
+	{ ICE_IPV6_OFOS,	18 },
+	{ ICE_TCP_IL,		58 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+/* C-tag (802.1Q), IPv6 + TCP dummy packet */
+static const u8 dummy_vlan_tcp_ipv6_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x81, 0x00, 0x00, 0x00,	/* ICE_VLAN_OFOS 12 */
+
+	0x86, 0xDD,		/* ICE_ETYPE_OL 16 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 18 */
+	0x00, 0x14, 0x06, 0x00, /* Next header is TCP */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_TCP_IL 58 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+/* IPv6 + UDP */
+static const struct ice_dummy_pkt_offsets dummy_udp_ipv6_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_ETYPE_OL,		12 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_ILOS,		54 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+/* IPv6 + UDP dummy packet */
+static const u8 dummy_udp_ipv6_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x86, 0xDD,		/* ICE_ETYPE_OL 12 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 40 */
+	0x00, 0x10, 0x11, 0x00, /* Next header UDP */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 54 */
+	0x00, 0x10, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* needed for ESP packets */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+/* C-tag (802.1Q): IPv6 + UDP */
+static const struct ice_dummy_pkt_offsets
+dummy_vlan_udp_ipv6_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_VLAN_OFOS,	12 },
+	{ ICE_ETYPE_OL,		16 },
+	{ ICE_IPV6_OFOS,	18 },
+	{ ICE_UDP_ILOS,		58 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+/* C-tag (802.1Q), IPv6 + UDP dummy packet */
+static const u8 dummy_vlan_udp_ipv6_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x81, 0x00, 0x00, 0x00,/* ICE_VLAN_OFOS 12 */
+
+	0x86, 0xDD,		/* ICE_ETYPE_OL 16 */
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 18 */
+	0x00, 0x08, 0x11, 0x00, /* Next header UDP */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* ICE_UDP_ILOS 58 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
 #define ICE_SW_RULE_RX_TX_ETH_HDR_SIZE \
 	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr) + \
 	 (DUMMY_ETH_HDR_LEN * \
@@ -3935,7 +4220,7 @@ static bool ice_prot_type_to_id(enum ice_protocol_type type, u8 *id)
  * @rinfo: other information regarding the rule e.g. priority and action info
  * @rid: return the recipe ID of the recipe created
  */
-static enum ice_status __maybe_unused
+static enum ice_status
 ice_add_adv_recipe(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 		   u16 lkups_cnt, struct ice_adv_rule_info *rinfo, u16 *rid)
 {
@@ -4094,6 +4379,551 @@ static bool ice_prot_type_to_id(enum ice_protocol_type type, u8 *id)
 }
 
 /**
+ * ice_find_dummy_packet - find dummy packet
+ *
+ * @lkups: lookup elements or match criteria for the advanced recipe, one
+ *	   structure per protocol header
+ * @lkups_cnt: number of protocols
+ * @pkt: dummy packet to fill according to filter match criteria
+ * @pkt_len: packet length of dummy packet
+ * @offsets: pointer to receive the pointer to the offsets for the packet
+ */
+static void
+ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
+		      const u8 **pkt, u16 *pkt_len,
+		      const struct ice_dummy_pkt_offsets **offsets)
+{
+	bool tcp = false, udp = false, ipv6 = false, vlan = false;
+	u16 i;
+
+	for (i = 0; i < lkups_cnt; i++) {
+		if (lkups[i].type == ICE_UDP_ILOS)
+			udp = true;
+		else if (lkups[i].type == ICE_TCP_IL)
+			tcp = true;
+		else if (lkups[i].type == ICE_IPV6_OFOS)
+			ipv6 = true;
+		else if (lkups[i].type == ICE_VLAN_OFOS)
+			vlan = true;
+		else if (lkups[i].type == ICE_ETYPE_OL &&
+			 lkups[i].h_u.ethertype.ethtype_id ==
+				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
+			 lkups[i].m_u.ethertype.ethtype_id ==
+					cpu_to_be16(0xFFFF))
+			ipv6 = true;
+	}
+
+	if (udp && !ipv6) {
+		if (vlan) {
+			*pkt = dummy_vlan_udp_packet;
+			*pkt_len = sizeof(dummy_vlan_udp_packet);
+			*offsets = dummy_vlan_udp_packet_offsets;
+			return;
+		}
+		*pkt = dummy_udp_packet;
+		*pkt_len = sizeof(dummy_udp_packet);
+		*offsets = dummy_udp_packet_offsets;
+		return;
+	} else if (udp && ipv6) {
+		if (vlan) {
+			*pkt = dummy_vlan_udp_ipv6_packet;
+			*pkt_len = sizeof(dummy_vlan_udp_ipv6_packet);
+			*offsets = dummy_vlan_udp_ipv6_packet_offsets;
+			return;
+		}
+		*pkt = dummy_udp_ipv6_packet;
+		*pkt_len = sizeof(dummy_udp_ipv6_packet);
+		*offsets = dummy_udp_ipv6_packet_offsets;
+		return;
+	} else if ((tcp && ipv6) || ipv6) {
+		if (vlan) {
+			*pkt = dummy_vlan_tcp_ipv6_packet;
+			*pkt_len = sizeof(dummy_vlan_tcp_ipv6_packet);
+			*offsets = dummy_vlan_tcp_ipv6_packet_offsets;
+			return;
+		}
+		*pkt = dummy_tcp_ipv6_packet;
+		*pkt_len = sizeof(dummy_tcp_ipv6_packet);
+		*offsets = dummy_tcp_ipv6_packet_offsets;
+		return;
+	}
+
+	if (vlan) {
+		*pkt = dummy_vlan_tcp_packet;
+		*pkt_len = sizeof(dummy_vlan_tcp_packet);
+		*offsets = dummy_vlan_tcp_packet_offsets;
+	} else {
+		*pkt = dummy_tcp_packet;
+		*pkt_len = sizeof(dummy_tcp_packet);
+		*offsets = dummy_tcp_packet_offsets;
+	}
+}
+
+/**
+ * ice_fill_adv_dummy_packet - fill a dummy packet with given match criteria
+ *
+ * @lkups: lookup elements or match criteria for the advanced recipe, one
+ *	   structure per protocol header
+ * @lkups_cnt: number of protocols
+ * @s_rule: stores rule information from the match criteria
+ * @dummy_pkt: dummy packet to fill according to filter match criteria
+ * @pkt_len: packet length of dummy packet
+ * @offsets: offset info for the dummy packet
+ */
+static enum ice_status
+ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
+			  struct ice_aqc_sw_rules_elem *s_rule,
+			  const u8 *dummy_pkt, u16 pkt_len,
+			  const struct ice_dummy_pkt_offsets *offsets)
+{
+	u8 *pkt;
+	u16 i;
+
+	/* Start with a packet with a pre-defined/dummy content. Then, fill
+	 * in the header values to be looked up or matched.
+	 */
+	pkt = s_rule->pdata.lkup_tx_rx.hdr;
+
+	memcpy(pkt, dummy_pkt, pkt_len);
+
+	for (i = 0; i < lkups_cnt; i++) {
+		enum ice_protocol_type type;
+		u16 offset = 0, len = 0, j;
+		bool found = false;
+
+		/* find the start of this layer; it should be found since this
+		 * was already checked when search for the dummy packet
+		 */
+		type = lkups[i].type;
+		for (j = 0; offsets[j].type != ICE_PROTOCOL_LAST; j++) {
+			if (type == offsets[j].type) {
+				offset = offsets[j].offset;
+				found = true;
+				break;
+			}
+		}
+		/* this should never happen in a correct calling sequence */
+		if (!found)
+			return ICE_ERR_PARAM;
+
+		switch (lkups[i].type) {
+		case ICE_MAC_OFOS:
+		case ICE_MAC_IL:
+			len = sizeof(struct ice_ether_hdr);
+			break;
+		case ICE_ETYPE_OL:
+			len = sizeof(struct ice_ethtype_hdr);
+			break;
+		case ICE_VLAN_OFOS:
+			len = sizeof(struct ice_vlan_hdr);
+			break;
+		case ICE_IPV4_OFOS:
+		case ICE_IPV4_IL:
+			len = sizeof(struct ice_ipv4_hdr);
+			break;
+		case ICE_IPV6_OFOS:
+		case ICE_IPV6_IL:
+			len = sizeof(struct ice_ipv6_hdr);
+			break;
+		case ICE_TCP_IL:
+		case ICE_UDP_OF:
+		case ICE_UDP_ILOS:
+			len = sizeof(struct ice_l4_hdr);
+			break;
+		case ICE_SCTP_IL:
+			len = sizeof(struct ice_sctp_hdr);
+			break;
+		default:
+			return ICE_ERR_PARAM;
+		}
+
+		/* the length should be a word multiple */
+		if (len % ICE_BYTES_PER_WORD)
+			return ICE_ERR_CFG;
+
+		/* We have the offset to the header start, the length, the
+		 * caller's header values and mask. Use this information to
+		 * copy the data into the dummy packet appropriately based on
+		 * the mask. Note that we need to only write the bits as
+		 * indicated by the mask to make sure we don't improperly write
+		 * over any significant packet data.
+		 */
+		for (j = 0; j < len / sizeof(u16); j++)
+			if (((u16 *)&lkups[i].m_u)[j])
+				((u16 *)(pkt + offset))[j] =
+					(((u16 *)(pkt + offset))[j] &
+					 ~((u16 *)&lkups[i].m_u)[j]) |
+					(((u16 *)&lkups[i].h_u)[j] &
+					 ((u16 *)&lkups[i].m_u)[j]);
+	}
+
+	s_rule->pdata.lkup_tx_rx.hdr_len = cpu_to_le16(pkt_len);
+
+	return 0;
+}
+
+/**
+ * ice_find_adv_rule_entry - Search a rule entry
+ * @hw: pointer to the hardware structure
+ * @lkups: lookup elements or match criteria for the advanced recipe, one
+ *	   structure per protocol header
+ * @lkups_cnt: number of protocols
+ * @recp_id: recipe ID for which we are finding the rule
+ * @rinfo: other information regarding the rule e.g. priority and action info
+ *
+ * Helper function to search for a given advance rule entry
+ * Returns pointer to entry storing the rule if found
+ */
+static struct ice_adv_fltr_mgmt_list_entry *
+ice_find_adv_rule_entry(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
+			u16 lkups_cnt, u16 recp_id,
+			struct ice_adv_rule_info *rinfo)
+{
+	struct ice_adv_fltr_mgmt_list_entry *list_itr;
+	struct ice_switch_info *sw = hw->switch_info;
+	int i;
+
+	list_for_each_entry(list_itr, &sw->recp_list[recp_id].filt_rules,
+			    list_entry) {
+		bool lkups_matched = true;
+
+		if (lkups_cnt != list_itr->lkups_cnt)
+			continue;
+		for (i = 0; i < list_itr->lkups_cnt; i++)
+			if (memcmp(&list_itr->lkups[i], &lkups[i],
+				   sizeof(*lkups))) {
+				lkups_matched = false;
+				break;
+			}
+		if (rinfo->sw_act.flag == list_itr->rule_info.sw_act.flag &&
+		    lkups_matched)
+			return list_itr;
+	}
+	return NULL;
+}
+
+/**
+ * ice_adv_add_update_vsi_list
+ * @hw: pointer to the hardware structure
+ * @m_entry: pointer to current adv filter management list entry
+ * @cur_fltr: filter information from the book keeping entry
+ * @new_fltr: filter information with the new VSI to be added
+ *
+ * Call AQ command to add or update previously created VSI list with new VSI.
+ *
+ * Helper function to do book keeping associated with adding filter information
+ * The algorithm to do the booking keeping is described below :
+ * When a VSI needs to subscribe to a given advanced filter
+ *	if only one VSI has been added till now
+ *		Allocate a new VSI list and add two VSIs
+ *		to this list using switch rule command
+ *		Update the previously created switch rule with the
+ *		newly created VSI list ID
+ *	if a VSI list was previously created
+ *		Add the new VSI to the previously created VSI list set
+ *		using the update switch rule command
+ */
+static enum ice_status
+ice_adv_add_update_vsi_list(struct ice_hw *hw,
+			    struct ice_adv_fltr_mgmt_list_entry *m_entry,
+			    struct ice_adv_rule_info *cur_fltr,
+			    struct ice_adv_rule_info *new_fltr)
+{
+	enum ice_status status;
+	u16 vsi_list_id = 0;
+
+	if (cur_fltr->sw_act.fltr_act == ICE_FWD_TO_Q ||
+	    cur_fltr->sw_act.fltr_act == ICE_FWD_TO_QGRP ||
+	    cur_fltr->sw_act.fltr_act == ICE_DROP_PACKET)
+		return ICE_ERR_NOT_IMPL;
+
+	if ((new_fltr->sw_act.fltr_act == ICE_FWD_TO_Q ||
+	     new_fltr->sw_act.fltr_act == ICE_FWD_TO_QGRP) &&
+	    (cur_fltr->sw_act.fltr_act == ICE_FWD_TO_VSI ||
+	     cur_fltr->sw_act.fltr_act == ICE_FWD_TO_VSI_LIST))
+		return ICE_ERR_NOT_IMPL;
+
+	if (m_entry->vsi_count < 2 && !m_entry->vsi_list_info) {
+		 /* Only one entry existed in the mapping and it was not already
+		  * a part of a VSI list. So, create a VSI list with the old and
+		  * new VSIs.
+		  */
+		struct ice_fltr_info tmp_fltr;
+		u16 vsi_handle_arr[2];
+
+		/* A rule already exists with the new VSI being added */
+		if (cur_fltr->sw_act.fwd_id.hw_vsi_id ==
+		    new_fltr->sw_act.fwd_id.hw_vsi_id)
+			return ICE_ERR_ALREADY_EXISTS;
+
+		vsi_handle_arr[0] = cur_fltr->sw_act.vsi_handle;
+		vsi_handle_arr[1] = new_fltr->sw_act.vsi_handle;
+		status = ice_create_vsi_list_rule(hw, &vsi_handle_arr[0], 2,
+						  &vsi_list_id,
+						  ICE_SW_LKUP_LAST);
+		if (status)
+			return status;
+
+		memset(&tmp_fltr, 0, sizeof(tmp_fltr));
+		tmp_fltr.flag = m_entry->rule_info.sw_act.flag;
+		tmp_fltr.fltr_rule_id = cur_fltr->fltr_rule_id;
+		tmp_fltr.fltr_act = ICE_FWD_TO_VSI_LIST;
+		tmp_fltr.fwd_id.vsi_list_id = vsi_list_id;
+		tmp_fltr.lkup_type = ICE_SW_LKUP_LAST;
+
+		/* Update the previous switch rule of "forward to VSI" to
+		 * "fwd to VSI list"
+		 */
+		status = ice_update_pkt_fwd_rule(hw, &tmp_fltr);
+		if (status)
+			return status;
+
+		cur_fltr->sw_act.fwd_id.vsi_list_id = vsi_list_id;
+		cur_fltr->sw_act.fltr_act = ICE_FWD_TO_VSI_LIST;
+		m_entry->vsi_list_info =
+			ice_create_vsi_list_map(hw, &vsi_handle_arr[0], 2,
+						vsi_list_id);
+	} else {
+		u16 vsi_handle = new_fltr->sw_act.vsi_handle;
+
+		if (!m_entry->vsi_list_info)
+			return ICE_ERR_CFG;
+
+		/* A rule already exists with the new VSI being added */
+		if (test_bit(vsi_handle, m_entry->vsi_list_info->vsi_map))
+			return 0;
+
+		/* Update the previously created VSI list set with
+		 * the new VSI ID passed in
+		 */
+		vsi_list_id = cur_fltr->sw_act.fwd_id.vsi_list_id;
+
+		status = ice_update_vsi_list_rule(hw, &vsi_handle, 1,
+						  vsi_list_id, false,
+						  ice_aqc_opc_update_sw_rules,
+						  ICE_SW_LKUP_LAST);
+		/* update VSI list mapping info with new VSI ID */
+		if (!status)
+			set_bit(vsi_handle, m_entry->vsi_list_info->vsi_map);
+	}
+	if (!status)
+		m_entry->vsi_count++;
+	return status;
+}
+
+/**
+ * ice_add_adv_rule - helper function to create an advanced switch rule
+ * @hw: pointer to the hardware structure
+ * @lkups: information on the words that needs to be looked up. All words
+ * together makes one recipe
+ * @lkups_cnt: num of entries in the lkups array
+ * @rinfo: other information related to the rule that needs to be programmed
+ * @added_entry: this will return recipe_id, rule_id and vsi_handle. should be
+ *               ignored is case of error.
+ *
+ * This function can program only 1 rule at a time. The lkups is used to
+ * describe the all the words that forms the "lookup" portion of the recipe.
+ * These words can span multiple protocols. Callers to this function need to
+ * pass in a list of protocol headers with lookup information along and mask
+ * that determines which words are valid from the given protocol header.
+ * rinfo describes other information related to this rule such as forwarding
+ * IDs, priority of this rule, etc.
+ */
+enum ice_status
+ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
+		 u16 lkups_cnt, struct ice_adv_rule_info *rinfo,
+		 struct ice_rule_query_data *added_entry)
+{
+	struct ice_adv_fltr_mgmt_list_entry *m_entry, *adv_fltr = NULL;
+	u16 rid = 0, i, pkt_len, rule_buf_sz, vsi_handle;
+	const struct ice_dummy_pkt_offsets *pkt_offsets;
+	struct ice_aqc_sw_rules_elem *s_rule = NULL;
+	struct list_head *rule_head;
+	struct ice_switch_info *sw;
+	enum ice_status status;
+	const u8 *pkt = NULL;
+	u16 word_cnt;
+	u32 act = 0;
+	u8 q_rgn;
+
+	/* Initialize profile to result index bitmap */
+	if (!hw->switch_info->prof_res_bm_init) {
+		hw->switch_info->prof_res_bm_init = 1;
+		ice_init_prof_result_bm(hw);
+	}
+
+	if (!lkups_cnt)
+		return ICE_ERR_PARAM;
+
+	/* get # of words we need to match */
+	word_cnt = 0;
+	for (i = 0; i < lkups_cnt; i++) {
+		u16 j, *ptr;
+
+		ptr = (u16 *)&lkups[i].m_u;
+		for (j = 0; j < sizeof(lkups->m_u) / sizeof(u16); j++)
+			if (ptr[j] != 0)
+				word_cnt++;
+	}
+
+	if (!word_cnt || word_cnt > ICE_MAX_CHAIN_WORDS)
+		return ICE_ERR_PARAM;
+
+	/* make sure that we can locate a dummy packet */
+	ice_find_dummy_packet(lkups, lkups_cnt, &pkt, &pkt_len,
+			      &pkt_offsets);
+	if (!pkt) {
+		status = ICE_ERR_PARAM;
+		goto err_ice_add_adv_rule;
+	}
+
+	if (!(rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI ||
+	      rinfo->sw_act.fltr_act == ICE_FWD_TO_Q ||
+	      rinfo->sw_act.fltr_act == ICE_FWD_TO_QGRP ||
+	      rinfo->sw_act.fltr_act == ICE_DROP_PACKET))
+		return ICE_ERR_CFG;
+
+	vsi_handle = rinfo->sw_act.vsi_handle;
+	if (!ice_is_vsi_valid(hw, vsi_handle))
+		return ICE_ERR_PARAM;
+
+	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI)
+		rinfo->sw_act.fwd_id.hw_vsi_id =
+			ice_get_hw_vsi_num(hw, vsi_handle);
+	if (rinfo->sw_act.flag & ICE_FLTR_TX)
+		rinfo->sw_act.src = ice_get_hw_vsi_num(hw, vsi_handle);
+
+	status = ice_add_adv_recipe(hw, lkups, lkups_cnt, rinfo, &rid);
+	if (status)
+		return status;
+	m_entry = ice_find_adv_rule_entry(hw, lkups, lkups_cnt, rid, rinfo);
+	if (m_entry) {
+		/* we have to add VSI to VSI_LIST and increment vsi_count.
+		 * Also Update VSI list so that we can change forwarding rule
+		 * if the rule already exists, we will check if it exists with
+		 * same vsi_id, if not then add it to the VSI list if it already
+		 * exists if not then create a VSI list and add the existing VSI
+		 * ID and the new VSI ID to the list
+		 * We will add that VSI to the list
+		 */
+		status = ice_adv_add_update_vsi_list(hw, m_entry,
+						     &m_entry->rule_info,
+						     rinfo);
+		if (added_entry) {
+			added_entry->rid = rid;
+			added_entry->rule_id = m_entry->rule_info.fltr_rule_id;
+			added_entry->vsi_handle = rinfo->sw_act.vsi_handle;
+		}
+		return status;
+	}
+	rule_buf_sz = ICE_SW_RULE_RX_TX_NO_HDR_SIZE + pkt_len;
+	s_rule = kzalloc(rule_buf_sz, GFP_KERNEL);
+	if (!s_rule)
+		return ICE_ERR_NO_MEMORY;
+	act |= ICE_SINGLE_ACT_LB_ENABLE | ICE_SINGLE_ACT_LAN_ENABLE;
+	switch (rinfo->sw_act.fltr_act) {
+	case ICE_FWD_TO_VSI:
+		act |= (rinfo->sw_act.fwd_id.hw_vsi_id <<
+			ICE_SINGLE_ACT_VSI_ID_S) & ICE_SINGLE_ACT_VSI_ID_M;
+		act |= ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_VALID_BIT;
+		break;
+	case ICE_FWD_TO_Q:
+		act |= ICE_SINGLE_ACT_TO_Q;
+		act |= (rinfo->sw_act.fwd_id.q_id << ICE_SINGLE_ACT_Q_INDEX_S) &
+		       ICE_SINGLE_ACT_Q_INDEX_M;
+		break;
+	case ICE_FWD_TO_QGRP:
+		q_rgn = rinfo->sw_act.qgrp_size > 0 ?
+			(u8)ilog2(rinfo->sw_act.qgrp_size) : 0;
+		act |= ICE_SINGLE_ACT_TO_Q;
+		act |= (rinfo->sw_act.fwd_id.q_id << ICE_SINGLE_ACT_Q_INDEX_S) &
+		       ICE_SINGLE_ACT_Q_INDEX_M;
+		act |= (q_rgn << ICE_SINGLE_ACT_Q_REGION_S) &
+		       ICE_SINGLE_ACT_Q_REGION_M;
+		break;
+	case ICE_DROP_PACKET:
+		act |= ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_DROP |
+		       ICE_SINGLE_ACT_VALID_BIT;
+		break;
+	default:
+		status = ICE_ERR_CFG;
+		goto err_ice_add_adv_rule;
+	}
+
+	/* set the rule LOOKUP type based on caller specified 'Rx'
+	 * instead of hardcoding it to be either LOOKUP_TX/RX
+	 *
+	 * for 'Rx' set the source to be the port number
+	 * for 'Tx' set the source to be the source HW VSI number (determined
+	 * by caller)
+	 */
+	if (rinfo->rx) {
+		s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
+		s_rule->pdata.lkup_tx_rx.src =
+			cpu_to_le16(hw->port_info->lport);
+	} else {
+		s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_TX);
+		s_rule->pdata.lkup_tx_rx.src = cpu_to_le16(rinfo->sw_act.src);
+	}
+
+	s_rule->pdata.lkup_tx_rx.recipe_id = cpu_to_le16(rid);
+	s_rule->pdata.lkup_tx_rx.act = cpu_to_le32(act);
+
+	status = ice_fill_adv_dummy_packet(lkups, lkups_cnt, s_rule, pkt,
+					   pkt_len, pkt_offsets);
+	if (status)
+		goto err_ice_add_adv_rule;
+
+	status = ice_aq_sw_rules(hw, (struct ice_aqc_sw_rules *)s_rule,
+				 rule_buf_sz, 1, ice_aqc_opc_add_sw_rules,
+				 NULL);
+	if (status)
+		goto err_ice_add_adv_rule;
+	adv_fltr = devm_kzalloc(ice_hw_to_dev(hw),
+				sizeof(struct ice_adv_fltr_mgmt_list_entry),
+				GFP_KERNEL);
+	if (!adv_fltr) {
+		status = ICE_ERR_NO_MEMORY;
+		goto err_ice_add_adv_rule;
+	}
+
+	adv_fltr->lkups = devm_kmemdup(ice_hw_to_dev(hw), lkups,
+				       lkups_cnt * sizeof(*lkups), GFP_KERNEL);
+	if (!adv_fltr->lkups) {
+		status = ICE_ERR_NO_MEMORY;
+		goto err_ice_add_adv_rule;
+	}
+
+	adv_fltr->lkups_cnt = lkups_cnt;
+	adv_fltr->rule_info = *rinfo;
+	adv_fltr->rule_info.fltr_rule_id =
+		le16_to_cpu(s_rule->pdata.lkup_tx_rx.index);
+	sw = hw->switch_info;
+	sw->recp_list[rid].adv_rule = true;
+	rule_head = &sw->recp_list[rid].filt_rules;
+
+	if (rinfo->sw_act.fltr_act == ICE_FWD_TO_VSI)
+		adv_fltr->vsi_count = 1;
+
+	/* Add rule entry to book keeping list */
+	list_add(&adv_fltr->list_entry, rule_head);
+	if (added_entry) {
+		added_entry->rid = rid;
+		added_entry->rule_id = adv_fltr->rule_info.fltr_rule_id;
+		added_entry->vsi_handle = rinfo->sw_act.vsi_handle;
+	}
+err_ice_add_adv_rule:
+	if (status && adv_fltr) {
+		devm_kfree(ice_hw_to_dev(hw), adv_fltr->lkups);
+		devm_kfree(ice_hw_to_dev(hw), adv_fltr);
+	}
+
+	kfree(s_rule);
+
+	return status;
+}
+
+/**
  * ice_replay_vsi_fltr - Replay filters for requested VSI
  * @hw: pointer to the hardware structure
  * @vsi_handle: driver VSI handle
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 56bf54fe462f..082b710077c2 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -275,6 +275,16 @@ struct ice_fltr_mgmt_list_entry {
 	u8 counter_index;
 };
 
+struct ice_adv_fltr_mgmt_list_entry {
+	struct list_head list_entry;
+
+	struct ice_adv_lkup_elem *lkups;
+	struct ice_adv_rule_info rule_info;
+	u16 lkups_cnt;
+	struct ice_vsi_list_map_info *vsi_list_info;
+	u16 vsi_count;
+};
+
 enum ice_promisc_flags {
 	ICE_PROMISC_UCAST_RX = 0x1,
 	ICE_PROMISC_UCAST_TX = 0x2,
@@ -310,6 +320,10 @@ enum ice_status
 		  u16 counter_id);
 
 /* Switch/bridge related commands */
+enum ice_status
+ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
+		 u16 lkups_cnt, struct ice_adv_rule_info *rinfo,
+		 struct ice_rule_query_data *added_entry);
 enum ice_status ice_update_sw_rule_bridge_mode(struct ice_hw *hw);
 enum ice_status ice_add_mac(struct ice_hw *hw, struct list_head *m_lst);
 enum ice_status ice_remove_mac(struct ice_hw *hw, struct list_head *m_lst);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 6b4f064f6c0d..582225df46f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -698,6 +698,7 @@ struct ice_port_info {
 struct ice_switch_info {
 	struct list_head vsi_list_map_head;
 	struct ice_sw_recipe *recp_list;
+	u16 prof_res_bm_init;
 	u16 max_used_prof_index;
 
 	DECLARE_BITMAP(prof_res_bm[ICE_MAX_NUM_PROFILES], ICE_MAX_FV_WORDS);
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
