Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E5F222402
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 15:36:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98FCF88EDC;
	Thu, 16 Jul 2020 13:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xy57eOltYvqH; Thu, 16 Jul 2020 13:36:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2397088F03;
	Thu, 16 Jul 2020 13:36:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B6151BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75A2A8A689
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3FZsSjogmbi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 13:35:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5EB5E8A679
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:59 +0000 (UTC)
IronPort-SDR: VOihlLGqYfpfYbsEnxFx5mDHzoEg+xWU5zDzK/44PYYnFaYA+5ne24xbVVGhRjUViKyDjC9xUl
 1DGutD/KbydA==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="147366348"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="147366348"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 06:35:59 -0700
IronPort-SDR: NzGK79uBdT1ksI9fGXuorB5MmeYlGGe9DY43LLPa0lBpzv9nggjEjrtcjJqWnoatVBUXt/TOis
 iJHQrVw4oc7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460474463"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2020 06:35:57 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jul 2020 21:39:37 +0800
Message-Id: <20200716133938.46921-16-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20200716133938.46921-1-qi.z.zhang@intel.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
Subject: [Intel-wired-lan] [PATCH S48 v6 15/16] ice: Add more FDIR filter
 type for AVF
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
Cc: qi.z.zhang@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

FDIR for AVF can forward
- L2TPV3 packets by matching session id.
- IPSEC ESP packets by matching security parameter index.
- IPSEC AH packets by matching security parameter index.
- NAT_T ESP packets by matching security parameter index.
- Any PFCP session packets(s field is 1).

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c          | 255 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fdir.h          |  15 ++
 drivers/net/ethernet/intel/ice/ice_type.h          |  13 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 280 +++++++++++++++++++--
 4 files changed, 545 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 19ce6b604ea4..ac738993154b 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -118,6 +118,139 @@ static const u8 ice_fdir_ipv6_gtpu6_pkt[] = {
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00,
 };
+
+static const u8 ice_fdir_ipv4_l2tpv3_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x14, 0x00, 0x00, 0x40, 0x00, 0x40, 0x73,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv6_l2tpv3_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x86, 0xDD, 0x60, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x73, 0x40, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv4_esp_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x14, 0x00, 0x00, 0x40, 0x00, 0x40, 0x32,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00
+};
+
+static const u8 ice_fdir_ipv6_esp_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x86, 0xDD, 0x60, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x32, 0x40, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv4_ah_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x14, 0x00, 0x00, 0x40, 0x00, 0x40, 0x33,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00
+};
+
+static const u8 ice_fdir_ipv6_ah_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x86, 0xDD, 0x60, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x33, 0x40, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv4_nat_t_esp_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x1C, 0x00, 0x00, 0x40, 0x00, 0x40, 0x11,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x11, 0x94, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv6_nat_t_esp_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x86, 0xDD, 0x60, 0x00,
+	0x00, 0x00, 0x00, 0x08, 0x11, 0x40, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x11, 0x94, 0x00, 0x00, 0x00, 0x08,
+};
+
+static const u8 ice_fdir_ipv4_pfcp_node_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x2C, 0x00, 0x00, 0x40, 0x00, 0x40, 0x11,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x22, 0x65, 0x22, 0x65, 0x00, 0x00,
+	0x00, 0x00, 0x20, 0x00, 0x00, 0x10, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv4_pfcp_session_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x2C, 0x00, 0x00, 0x40, 0x00, 0x40, 0x11,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x22, 0x65, 0x22, 0x65, 0x00, 0x00,
+	0x00, 0x00, 0x21, 0x00, 0x00, 0x10, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv6_pfcp_node_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x86, 0xDD, 0x60, 0x00,
+	0x00, 0x00, 0x00, 0x18, 0x11, 0x40, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x65,
+	0x22, 0x65, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00,
+	0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv6_pfcp_session_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x86, 0xDD, 0x60, 0x00,
+	0x00, 0x00, 0x00, 0x18, 0x11, 0x40, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x65,
+	0x22, 0x65, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00,
+	0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+};
+
 static const u8 ice_fdir_non_ip_l2_pkt[] = {
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
@@ -351,6 +484,78 @@ static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
 		ice_fdir_ipv4_gtpu4_pkt,
 	},
 	{
+		ICE_FLTR_PTYPE_NONF_IPV4_L2TPV3,
+		sizeof(ice_fdir_ipv4_l2tpv3_pkt), ice_fdir_ipv4_l2tpv3_pkt,
+		sizeof(ice_fdir_ipv4_l2tpv3_pkt), ice_fdir_ipv4_l2tpv3_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV6_L2TPV3,
+		sizeof(ice_fdir_ipv6_l2tpv3_pkt), ice_fdir_ipv6_l2tpv3_pkt,
+		sizeof(ice_fdir_ipv6_l2tpv3_pkt), ice_fdir_ipv6_l2tpv3_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_ESP,
+		sizeof(ice_fdir_ipv4_esp_pkt), ice_fdir_ipv4_esp_pkt,
+		sizeof(ice_fdir_ipv4_esp_pkt), ice_fdir_ipv4_esp_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV6_ESP,
+		sizeof(ice_fdir_ipv6_esp_pkt), ice_fdir_ipv6_esp_pkt,
+		sizeof(ice_fdir_ipv6_esp_pkt), ice_fdir_ipv6_esp_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_AH,
+		sizeof(ice_fdir_ipv4_ah_pkt), ice_fdir_ipv4_ah_pkt,
+		sizeof(ice_fdir_ipv4_ah_pkt), ice_fdir_ipv4_ah_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV6_AH,
+		sizeof(ice_fdir_ipv6_ah_pkt), ice_fdir_ipv6_ah_pkt,
+		sizeof(ice_fdir_ipv6_ah_pkt), ice_fdir_ipv6_ah_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_NAT_T_ESP,
+		sizeof(ice_fdir_ipv4_nat_t_esp_pkt),
+		ice_fdir_ipv4_nat_t_esp_pkt,
+		sizeof(ice_fdir_ipv4_nat_t_esp_pkt),
+		ice_fdir_ipv4_nat_t_esp_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV6_NAT_T_ESP,
+		sizeof(ice_fdir_ipv6_nat_t_esp_pkt),
+		ice_fdir_ipv6_nat_t_esp_pkt,
+		sizeof(ice_fdir_ipv6_nat_t_esp_pkt),
+		ice_fdir_ipv6_nat_t_esp_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_PFCP_NODE,
+		sizeof(ice_fdir_ipv4_pfcp_node_pkt),
+		ice_fdir_ipv4_pfcp_node_pkt,
+		sizeof(ice_fdir_ipv4_pfcp_node_pkt),
+		ice_fdir_ipv4_pfcp_node_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_PFCP_SESSION,
+		sizeof(ice_fdir_ipv4_pfcp_session_pkt),
+		ice_fdir_ipv4_pfcp_session_pkt,
+		sizeof(ice_fdir_ipv4_pfcp_session_pkt),
+		ice_fdir_ipv4_pfcp_session_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV6_PFCP_NODE,
+		sizeof(ice_fdir_ipv6_pfcp_node_pkt),
+		ice_fdir_ipv6_pfcp_node_pkt,
+		sizeof(ice_fdir_ipv6_pfcp_node_pkt),
+		ice_fdir_ipv6_pfcp_node_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV6_PFCP_SESSION,
+		sizeof(ice_fdir_ipv6_pfcp_session_pkt),
+		ice_fdir_ipv6_pfcp_session_pkt,
+		sizeof(ice_fdir_ipv6_pfcp_session_pkt),
+		ice_fdir_ipv6_pfcp_session_pkt,
+	},
+	{
 		ICE_FLTR_PTYPE_NON_IP_L2,
 		sizeof(ice_fdir_non_ip_l2_pkt), ice_fdir_non_ip_l2_pkt,
 		sizeof(ice_fdir_non_ip_l2_pkt), ice_fdir_non_ip_l2_pkt,
@@ -820,6 +1025,56 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		ice_pkt_insert_u6_qfi(loc, ICE_IPV4_GTPU_QFI_OFFSET,
 				      input->gtpu_data.qfi);
 		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_L2TPV3:
+		ice_pkt_insert_u32(loc, ICE_IPV4_L2TPV3_SESS_ID_OFFSET,
+				   input->l2tpv3_data.session_id);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_L2TPV3:
+		ice_pkt_insert_u32(loc, ICE_IPV6_L2TPV3_SESS_ID_OFFSET,
+				   input->l2tpv3_data.session_id);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_ESP:
+		ice_pkt_insert_u32(loc, ICE_IPV4_ESP_SPI_OFFSET,
+				   input->ip.v4.sec_parm_idx);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_ESP:
+		ice_pkt_insert_u32(loc, ICE_IPV6_ESP_SPI_OFFSET,
+				   input->ip.v6.sec_parm_idx);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_AH:
+		ice_pkt_insert_u32(loc, ICE_IPV4_AH_SPI_OFFSET,
+				   input->ip.v4.sec_parm_idx);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_AH:
+		ice_pkt_insert_u32(loc, ICE_IPV6_AH_SPI_OFFSET,
+				   input->ip.v6.sec_parm_idx);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_NAT_T_ESP:
+		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
+				   input->ip.v4.src_ip);
+		ice_pkt_insert_u32(loc, ICE_IPV4_SRC_ADDR_OFFSET,
+				   input->ip.v4.dst_ip);
+		ice_pkt_insert_u32(loc, ICE_IPV4_NAT_T_ESP_SPI_OFFSET,
+				   input->ip.v4.sec_parm_idx);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_NAT_T_ESP:
+		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
+					 input->ip.v6.src_ip);
+		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_SRC_ADDR_OFFSET,
+					 input->ip.v6.dst_ip);
+		ice_pkt_insert_u32(loc, ICE_IPV6_NAT_T_ESP_SPI_OFFSET,
+				   input->ip.v6.sec_parm_idx);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_PFCP_NODE:
+	case ICE_FLTR_PTYPE_NONF_IPV4_PFCP_SESSION:
+		ice_pkt_insert_u16(loc, ICE_IPV4_UDP_SRC_PORT_OFFSET,
+				   input->ip.v4.dst_port);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_PFCP_NODE:
+	case ICE_FLTR_PTYPE_NONF_IPV6_PFCP_SESSION:
+		ice_pkt_insert_u16(loc, ICE_IPV6_UDP_SRC_PORT_OFFSET,
+				   input->ip.v6.dst_port);
+		break;
 	case ICE_FLTR_PTYPE_NON_IP_L2:
 		ice_pkt_insert_u16(loc, ICE_MAC_ETHTYPE_OFFSET,
 				   input->ext_data.ether_type);
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index c4a6fb76276d..4a65873a03b2 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -33,6 +33,14 @@
 #define ICE_IPV6_PROTO_OFFSET		20
 #define ICE_IPV4_GTPU_TEID_OFFSET	46
 #define ICE_IPV4_GTPU_QFI_OFFSET	56
+#define ICE_IPV4_L2TPV3_SESS_ID_OFFSET	34
+#define ICE_IPV6_L2TPV3_SESS_ID_OFFSET	54
+#define ICE_IPV4_ESP_SPI_OFFSET		34
+#define ICE_IPV6_ESP_SPI_OFFSET		54
+#define ICE_IPV4_AH_SPI_OFFSET		38
+#define ICE_IPV6_AH_SPI_OFFSET		58
+#define ICE_IPV4_NAT_T_ESP_SPI_OFFSET	42
+#define ICE_IPV6_NAT_T_ESP_SPI_OFFSET	62
 
 #define ICE_FDIR_MAX_FLTRS		16384
 
@@ -134,6 +142,10 @@ struct ice_fdir_udp_gtp {
 	u8 next_ext;
 };
 
+struct ice_fdir_l2tpv3 {
+	__be32 session_id;
+};
+
 struct ice_fdir_extra {
 	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
 	u8 src_mac[ETH_ALEN];	/* src MAC address */
@@ -155,6 +167,9 @@ struct ice_fdir_fltr {
 	struct ice_fdir_udp_gtp gtpu_data;
 	struct ice_fdir_udp_gtp gtpu_mask;
 
+	struct ice_fdir_l2tpv3 l2tpv3_data;
+	struct ice_fdir_l2tpv3 l2tpv3_mask;
+
 	struct ice_fdir_extra ext_data;
 	struct ice_fdir_extra ext_mask;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 7488786f1355..02343cb33e4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -174,6 +174,19 @@ enum ice_fltr_ptype {
 	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP,
 	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP,
 	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER,
+	ICE_FLTR_PTYPE_NONF_IPV6_GTPU_IPV6_OTHER,
+	ICE_FLTR_PTYPE_NONF_IPV4_L2TPV3,
+	ICE_FLTR_PTYPE_NONF_IPV6_L2TPV3,
+	ICE_FLTR_PTYPE_NONF_IPV4_ESP,
+	ICE_FLTR_PTYPE_NONF_IPV6_ESP,
+	ICE_FLTR_PTYPE_NONF_IPV4_AH,
+	ICE_FLTR_PTYPE_NONF_IPV6_AH,
+	ICE_FLTR_PTYPE_NONF_IPV4_NAT_T_ESP,
+	ICE_FLTR_PTYPE_NONF_IPV6_NAT_T_ESP,
+	ICE_FLTR_PTYPE_NONF_IPV4_PFCP_NODE,
+	ICE_FLTR_PTYPE_NONF_IPV4_PFCP_SESSION,
+	ICE_FLTR_PTYPE_NONF_IPV6_PFCP_NODE,
+	ICE_FLTR_PTYPE_NONF_IPV6_PFCP_SESSION,
 	ICE_FLTR_PTYPE_NON_IP_L2,
 	ICE_FLTR_PTYPE_FRAG_IPV4,
 	ICE_FLTR_PTYPE_NONF_IPV6_UDP,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 2cc0ed23c778..4e08e7ec4ebc 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -26,6 +26,14 @@
 #define GTPU_TEID_OFFSET 4
 #define GTPU_EH_QFI_OFFSET 1
 #define GTPU_EH_QFI_MASK 0x3F
+#define PFCP_S_OFFSET 0
+#define PFCP_S_MASK 0x1
+#define PFCP_PORT_NR 8805
+
+#define FDIR_INSET_FLAG_ESP_S 0
+#define FDIR_INSET_FLAG_ESP_M BIT_ULL(FDIR_INSET_FLAG_ESP_S)
+#define FDIR_INSET_FLAG_ESP_UDP BIT_ULL(FDIR_INSET_FLAG_ESP_S)
+#define FDIR_INSET_FLAG_ESP_IPSEC (0ULL << FDIR_INSET_FLAG_ESP_S)
 
 enum ice_fdir_tunnel_type {
 	ICE_FDIR_TUNNEL_TYPE_NONE = 0,
@@ -36,6 +44,7 @@ enum ice_fdir_tunnel_type {
 struct virtchnl_fdir_fltr_conf {
 	struct ice_fdir_fltr input;
 	enum ice_fdir_tunnel_type ttype;
+	u64 inset_flag;
 };
 
 static enum virtchnl_proto_hdr_type vc_pattern_ether[] = {
@@ -114,6 +123,80 @@ static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu_eh[] = {
 	VIRTCHNL_PROTO_HDR_NONE,
 };
 
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_l2tpv3[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_L2TPV3,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6_l2tpv3[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_L2TPV3,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_esp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_ESP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6_esp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_ESP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_ah[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_AH,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6_ah[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_AH,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_nat_t_esp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_ESP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6_nat_t_esp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_ESP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_pfcp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_PFCP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv6_pfcp[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_PFCP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
 struct virtchnl_fdir_pattern_match_item {
 	enum virtchnl_proto_hdr_type *list;
 	u64 input_set;
@@ -143,32 +226,52 @@ static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_comms[] = {
 	{vc_pattern_ether,                    0,         NULL},
 	{vc_pattern_ipv4_gtpu,                0,         NULL},
 	{vc_pattern_ipv4_gtpu_eh,             0,         NULL},
+	{vc_pattern_ipv4_l2tpv3,              0,         NULL},
+	{vc_pattern_ipv6_l2tpv3,              0,         NULL},
+	{vc_pattern_ipv4_esp,                 0,         NULL},
+	{vc_pattern_ipv6_esp,                 0,         NULL},
+	{vc_pattern_ipv4_ah,                  0,         NULL},
+	{vc_pattern_ipv6_ah,                  0,         NULL},
+	{vc_pattern_ipv4_nat_t_esp,           0,         NULL},
+	{vc_pattern_ipv6_nat_t_esp,           0,         NULL},
+	{vc_pattern_ipv4_pfcp,                0,         NULL},
+	{vc_pattern_ipv6_pfcp,                0,         NULL},
 };
 
 struct virtchnl_fdir_inset_map {
 	enum virtchnl_proto_hdr_field field;
 	enum ice_flow_field fld;
+	u64 flag;
+	u64 mask;
 };
 
 static const struct virtchnl_fdir_inset_map fdir_inset_map[] = {
-	{VIRTCHNL_PROTO_HDR_IPV4_SRC, ICE_FLOW_FIELD_IDX_IPV4_SA},
-	{VIRTCHNL_PROTO_HDR_IPV4_DST, ICE_FLOW_FIELD_IDX_IPV4_DA},
-	{VIRTCHNL_PROTO_HDR_IPV4_DSCP, ICE_FLOW_FIELD_IDX_IPV4_DSCP},
-	{VIRTCHNL_PROTO_HDR_IPV4_TTL, ICE_FLOW_FIELD_IDX_IPV4_TTL},
-	{VIRTCHNL_PROTO_HDR_IPV4_PROT, ICE_FLOW_FIELD_IDX_IPV4_PROT},
-	{VIRTCHNL_PROTO_HDR_IPV6_SRC, ICE_FLOW_FIELD_IDX_IPV6_SA},
-	{VIRTCHNL_PROTO_HDR_IPV6_DST, ICE_FLOW_FIELD_IDX_IPV6_DA},
-	{VIRTCHNL_PROTO_HDR_IPV6_TC, ICE_FLOW_FIELD_IDX_IPV6_DSCP},
-	{VIRTCHNL_PROTO_HDR_IPV6_HOP_LIMIT, ICE_FLOW_FIELD_IDX_IPV6_TTL},
-	{VIRTCHNL_PROTO_HDR_IPV6_PROT, ICE_FLOW_FIELD_IDX_IPV6_PROT},
-	{VIRTCHNL_PROTO_HDR_UDP_SRC_PORT, ICE_FLOW_FIELD_IDX_UDP_SRC_PORT},
-	{VIRTCHNL_PROTO_HDR_UDP_DST_PORT, ICE_FLOW_FIELD_IDX_UDP_DST_PORT},
-	{VIRTCHNL_PROTO_HDR_TCP_SRC_PORT, ICE_FLOW_FIELD_IDX_TCP_SRC_PORT},
-	{VIRTCHNL_PROTO_HDR_TCP_DST_PORT, ICE_FLOW_FIELD_IDX_TCP_DST_PORT},
-	{VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT, ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT},
-	{VIRTCHNL_PROTO_HDR_SCTP_DST_PORT, ICE_FLOW_FIELD_IDX_SCTP_DST_PORT},
-	{VIRTCHNL_PROTO_HDR_GTPU_IP_TEID, ICE_FLOW_FIELD_IDX_GTPU_IP_TEID},
-	{VIRTCHNL_PROTO_HDR_GTPU_EH_QFI, ICE_FLOW_FIELD_IDX_GTPU_EH_QFI},
+	{VIRTCHNL_PROTO_HDR_ETH_ETHERTYPE, ICE_FLOW_FIELD_IDX_ETH_TYPE, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV4_SRC, ICE_FLOW_FIELD_IDX_IPV4_SA, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV4_DST, ICE_FLOW_FIELD_IDX_IPV4_DA, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV4_DSCP, ICE_FLOW_FIELD_IDX_IPV4_DSCP, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV4_TTL, ICE_FLOW_FIELD_IDX_IPV4_TTL, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV4_PROT, ICE_FLOW_FIELD_IDX_IPV4_PROT, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV6_SRC, ICE_FLOW_FIELD_IDX_IPV6_SA, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV6_DST, ICE_FLOW_FIELD_IDX_IPV6_DA, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV6_TC, ICE_FLOW_FIELD_IDX_IPV6_DSCP, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV6_HOP_LIMIT, ICE_FLOW_FIELD_IDX_IPV6_TTL, 0, 0},
+	{VIRTCHNL_PROTO_HDR_IPV6_PROT, ICE_FLOW_FIELD_IDX_IPV6_PROT, 0, 0},
+	{VIRTCHNL_PROTO_HDR_UDP_SRC_PORT, ICE_FLOW_FIELD_IDX_UDP_SRC_PORT, 0, 0},
+	{VIRTCHNL_PROTO_HDR_UDP_DST_PORT, ICE_FLOW_FIELD_IDX_UDP_DST_PORT, 0, 0},
+	{VIRTCHNL_PROTO_HDR_TCP_SRC_PORT, ICE_FLOW_FIELD_IDX_TCP_SRC_PORT, 0, 0},
+	{VIRTCHNL_PROTO_HDR_TCP_DST_PORT, ICE_FLOW_FIELD_IDX_TCP_DST_PORT, 0, 0},
+	{VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT, ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT, 0, 0},
+	{VIRTCHNL_PROTO_HDR_SCTP_DST_PORT, ICE_FLOW_FIELD_IDX_SCTP_DST_PORT, 0, 0},
+	{VIRTCHNL_PROTO_HDR_GTPU_IP_TEID, ICE_FLOW_FIELD_IDX_GTPU_IP_TEID, 0, 0},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH_QFI, ICE_FLOW_FIELD_IDX_GTPU_EH_QFI, 0, 0},
+	{VIRTCHNL_PROTO_HDR_ESP_SPI, ICE_FLOW_FIELD_IDX_ESP_SPI,
+		FDIR_INSET_FLAG_ESP_IPSEC, FDIR_INSET_FLAG_ESP_M},
+	{VIRTCHNL_PROTO_HDR_ESP_SPI, ICE_FLOW_FIELD_IDX_NAT_T_ESP_SPI,
+		FDIR_INSET_FLAG_ESP_UDP, FDIR_INSET_FLAG_ESP_M},
+	{VIRTCHNL_PROTO_HDR_AH_SPI, ICE_FLOW_FIELD_IDX_AH_SPI, 0, 0},
+	{VIRTCHNL_PROTO_HDR_L2TPV3_SESS_ID, ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID, 0, 0},
+	{VIRTCHNL_PROTO_HDR_PFCP_S_FIELD, ICE_FLOW_FIELD_IDX_UDP_DST_PORT, 0, 0},
 };
 
 /**
@@ -345,6 +448,11 @@ ice_vc_fdir_parse_flow_fld(struct virtchnl_proto_hdr *proto_hdr,
 	for (i = 0; (i < ARRAY_SIZE(fdir_inset_map)) &&
 	     VIRTCHNL_GET_PROTO_HDR_FIELD(&hdr); i++)
 		if (VIRTCHNL_TEST_PROTO_HDR(&hdr, fdir_inset_map[i].field)) {
+			if (fdir_inset_map[i].mask &&
+			    ((fdir_inset_map[i].mask & conf->inset_flag)
+			    != fdir_inset_map[i].flag))
+				continue;
+
 			fld[*fld_cnt] = fdir_inset_map[i].fld;
 			*fld_cnt += 1;
 			if (*fld_cnt >= ICE_FLOW_FIELD_IDX_MAX)
@@ -425,6 +533,36 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
 	case ICE_FLTR_PTYPE_NON_IP_L2:
 		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ETH_NON_IP);
 		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_L2TPV3:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_L2TPV3 |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_ESP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ESP |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_AH:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_AH |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_NAT_T_ESP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_NAT_T_ESP |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_PFCP_NODE:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_PFCP_NODE |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_PFCP_SESSION:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_PFCP_SESSION |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
 		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_IPV4 |
 				  ICE_FLOW_SEG_HDR_IPV_OTHER);
@@ -463,6 +601,36 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
 				  ICE_FLOW_SEG_HDR_IPV4 |
 				  ICE_FLOW_SEG_HDR_IPV_OTHER);
 		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_L2TPV3:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_L2TPV3 |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_ESP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ESP |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_AH:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_AH |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_NAT_T_ESP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_NAT_T_ESP |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_PFCP_NODE:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_PFCP_NODE |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_PFCP_SESSION:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_PFCP_SESSION |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
 		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_IPV6 |
 				  ICE_FLOW_SEG_HDR_IPV_OTHER);
@@ -849,12 +1017,15 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 
 	for (i = 0; i < proto->count; i++) {
 		struct virtchnl_proto_hdr *hdr = &proto->proto_hdr[i];
+		struct ip_esp_hdr *esph;
+		struct ip_auth_hdr *ah;
 		struct sctphdr *sctph;
 		struct ipv6hdr *ip6h;
 		struct udphdr *udph;
 		struct tcphdr *tcph;
 		struct ethhdr *eth;
 		struct iphdr *iph;
+		u8 s_field;
 		u8 *rawh;
 
 		switch (hdr->type) {
@@ -948,6 +1119,75 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 				}
 			}
 			break;
+		case VIRTCHNL_PROTO_HDR_L2TPV3:
+			if (l3 == VIRTCHNL_PROTO_HDR_IPV4)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_L2TPV3;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_L2TPV3;
+
+			if (hdr->field_selector)
+				input->l2tpv3_data.session_id = *((__be32 *)hdr->buffer);
+			break;
+		case VIRTCHNL_PROTO_HDR_ESP:
+			esph = (struct ip_esp_hdr *)hdr->buffer;
+			if (l3 == VIRTCHNL_PROTO_HDR_IPV4 &&
+			    l4 == VIRTCHNL_PROTO_HDR_UDP)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_NAT_T_ESP;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6 &&
+				 l4 == VIRTCHNL_PROTO_HDR_UDP)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_NAT_T_ESP;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV4 &&
+				 l4 == VIRTCHNL_PROTO_HDR_NONE)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_ESP;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6 &&
+				 l4 == VIRTCHNL_PROTO_HDR_NONE)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_ESP;
+
+			if (l4 == VIRTCHNL_PROTO_HDR_UDP)
+				conf->inset_flag |= FDIR_INSET_FLAG_ESP_UDP;
+			else
+				conf->inset_flag |= FDIR_INSET_FLAG_ESP_IPSEC;
+
+			if (hdr->field_selector) {
+				if (l3 == VIRTCHNL_PROTO_HDR_IPV4)
+					input->ip.v4.sec_parm_idx = esph->spi;
+				else if (l3 == VIRTCHNL_PROTO_HDR_IPV6)
+					input->ip.v6.sec_parm_idx = esph->spi;
+			}
+			break;
+		case VIRTCHNL_PROTO_HDR_AH:
+			ah = (struct ip_auth_hdr *)hdr->buffer;
+			if (l3 == VIRTCHNL_PROTO_HDR_IPV4)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_AH;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_AH;
+
+			if (hdr->field_selector) {
+				if (l3 == VIRTCHNL_PROTO_HDR_IPV4)
+					input->ip.v4.sec_parm_idx = ah->spi;
+				else if (l3 == VIRTCHNL_PROTO_HDR_IPV6)
+					input->ip.v6.sec_parm_idx = ah->spi;
+			}
+			break;
+		case VIRTCHNL_PROTO_HDR_PFCP:
+			rawh = (u8 *)hdr->buffer;
+			s_field = (rawh[0] >> PFCP_S_OFFSET) & PFCP_S_MASK;
+			if (l3 == VIRTCHNL_PROTO_HDR_IPV4 && s_field == 0)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_PFCP_NODE;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV4 && s_field == 1)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_PFCP_SESSION;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6 && s_field == 0)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_PFCP_NODE;
+			else if (l3 == VIRTCHNL_PROTO_HDR_IPV6 && s_field == 1)
+				input->flow_type = ICE_FLTR_PTYPE_NONF_IPV6_PFCP_SESSION;
+
+			if (hdr->field_selector) {
+				if (l3 == VIRTCHNL_PROTO_HDR_IPV4)
+					input->ip.v4.dst_port = cpu_to_be16(PFCP_PORT_NR);
+				else if (l3 == VIRTCHNL_PROTO_HDR_IPV6)
+					input->ip.v6.dst_port = cpu_to_be16(PFCP_PORT_NR);
+			}
+			break;
 		case VIRTCHNL_PROTO_HDR_GTPU_IP:
 			rawh = (u8 *)hdr->buffer;
 			input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER;
@@ -1100,6 +1340,10 @@ ice_vc_fdir_comp_rules(struct virtchnl_fdir_fltr_conf *conf_a,
 		return false;
 	if (memcmp(&a->gtpu_mask, &b->gtpu_mask, sizeof(a->gtpu_mask)))
 		return false;
+	if (memcmp(&a->l2tpv3_data, &b->l2tpv3_data, sizeof(a->l2tpv3_data)))
+		return false;
+	if (memcmp(&a->l2tpv3_mask, &b->l2tpv3_mask, sizeof(a->l2tpv3_mask)))
+		return false;
 	if (memcmp(&a->ext_data, &b->ext_data, sizeof(a->ext_data)))
 		return false;
 	if (memcmp(&a->ext_mask, &b->ext_mask, sizeof(a->ext_mask)))
-- 
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
