Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145F463AE58
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 18:04:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2772F4042B;
	Mon, 28 Nov 2022 17:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2772F4042B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669655060;
	bh=Ezo7txvZDs+rgzd50Gn9ekZjOItuDVnw3cC+Ns9WuWU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kb0FnhHLfTRgdka7+0Kg3mauIftAwh6ooJPvu1C2UoLlgGvd5r3IzkXFVEhXAwogj
	 f9+TzGkhHZJea6TzEowx4NJ8RDT9BmYzvvDnutHaLTc4NrsZNikcMOW3SPcwK+ABOc
	 FaYGqn/64+E9Cm5HGYGPHIWpKaY9I/UY2niBvi1VLN9hvZAHUPPkw0TCqb+MF2P17B
	 CYz1l4FRzS3bLldZn6Q5K5FZCYwN1UXkf4cLFi2Yl/S5xTdP/FXLqrQhfnpc0MKONG
	 H4G2tbjhJz5MhsVeq47pZh30TzftwBxwxBLN4jyDhwE/TI0Eb1AfjQJZBwwcz2birx
	 WpCIwXcPBF2xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v5sT75T3uWfR; Mon, 28 Nov 2022 17:04:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D981740580;
	Mon, 28 Nov 2022 17:04:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D981740580
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 530DF1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 348D3813C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 348D3813C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1FuAHPTlizTY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 17:04:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A153813AC
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A153813AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="379149406"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="379149406"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 09:03:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="676111177"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="676111177"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 28 Nov 2022 09:03:45 -0800
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2ASH3VNs017147; Mon, 28 Nov 2022 17:03:43 GMT
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Nov 2022 18:03:53 +0100
Message-Id: <20221128170354.2537171-2-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20221128170354.2537171-1-mikael.barsehyan@intel.com>
References: <20221128170354.2537171-1-mikael.barsehyan@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669655053; x=1701191053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FyjMTB1qQ5AZD1L3MGgMkjnokKS2CKmCBCNVbbDHO84=;
 b=Mp7IseYYkuqEgkLPXaetfkqXHqMawQdDO6ymrxdhsvV9ptkefZFkfPgg
 cEmoRJVYK5IbQ/bxmhXUUodyRBEG1pE3/9qUp3x7L5QSShBkJsWd95FfR
 uKJ0SSWXrQV5ZEwPARihtdateoaMKEu+wFJUwqdJRF251hBp+7VZ6XmS3
 So58kbOewkN76kL0qWFrG7ROnb0XVfcDowfOeHOgyFnDCeJYLQ785KShN
 2I9WTWwJqQnNqyBnQHD/yycd9iPJ9n/K+r2rpeVF/xER0Yudn+ij/puGt
 G89jBKL+pvv8H8NZ4TSeCF9KrWdGm3/b8Xd4k4snzL50t13guSHKx+D9e
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mp7IseYY
Subject: [Intel-wired-lan] [PATCH net-next v1 1/2] ethtool: add
 ETHTOOL_A_FEC_ALL request for FEC
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
Cc: Mikael Barsehyan <mikael.barsehyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ETHTOOL_A_FEC_ALL requests the driver to choose FEC mode (including no FEC)
based on SFP module parameters.

Suggested-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Mikael Barsehyan <mikael.barsehyan@intel.com>
---
 Documentation/networking/ethtool-netlink.rst | 14 ++++++++---
 include/uapi/linux/ethtool.h                 |  3 +++
 include/uapi/linux/ethtool_netlink.h         |  1 +
 net/ethtool/fec.c                            | 26 ++++++++++++++------
 net/ethtool/netlink.h                        |  2 +-
 5 files changed, 35 insertions(+), 11 deletions(-)

diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
index bede24ef44fd..c682e5bf727b 100644
--- a/Documentation/networking/ethtool-netlink.rst
+++ b/Documentation/networking/ethtool-netlink.rst
@@ -1383,6 +1383,7 @@ Kernel response contents:
   ``ETHTOOL_A_FEC_HEADER``               nested  request header
   ``ETHTOOL_A_FEC_MODES``                bitset  configured modes
   ``ETHTOOL_A_FEC_AUTO``                 bool    FEC mode auto selection
+  ``ETHTOOL_A_FEC_ALL``                  bool    auto selection(incl. NO FEC)
   ``ETHTOOL_A_FEC_ACTIVE``               u32     index of active FEC mode
   ``ETHTOOL_A_FEC_STATS``                nested  FEC statistics
   =====================================  ======  ==========================
@@ -1391,10 +1392,13 @@ Kernel response contents:
 active on the interface. This attribute may not be present if device does
 not support FEC.
 
-``ETHTOOL_A_FEC_MODES`` and ``ETHTOOL_A_FEC_AUTO`` are only meaningful when
-autonegotiation is disabled. If ``ETHTOOL_A_FEC_AUTO`` is non-zero driver will
-select the FEC mode automatically based on the parameters of the SFP module.
+``ETHTOOL_A_FEC_MODES``, ``ETHTOOL_A_FEC_AUTO`` and ``ETHTOOL_A_FEC_ALL``
+are only meaningful when autonegotiation is disabled.
+If ``ETHTOOL_A_FEC_AUTO`` is non-zero driver will select the FEC mode
+automatically based on the parameters of the SFP module.
 This is equivalent to the ``ETHTOOL_FEC_AUTO`` bit of the ioctl interface.
+If ``ETHTOOL_A_FEC_ALL`` is non-zero driver will select the FEC mode
+automatically (including no FEC) based on the parameters of the SFP module.
 ``ETHTOOL_A_FEC_MODES`` carry the current FEC configuration using link mode
 bits (rather than old ``ETHTOOL_FEC_*`` bits).
 
@@ -1429,6 +1433,7 @@ Request contents:
   ``ETHTOOL_A_FEC_HEADER``               nested  request header
   ``ETHTOOL_A_FEC_MODES``                bitset  configured modes
   ``ETHTOOL_A_FEC_AUTO``                 bool    FEC mode auto selection
+  ``ETHTOOL_A_FEC_ALL``                  bool    auto selection(incl. NO FEC)
   =====================================  ======  ==========================
 
 ``FEC_SET`` is only meaningful when autonegotiation is disabled. Otherwise
@@ -1441,6 +1446,9 @@ in an implementation specific way.
 ``ETHTOOL_A_FEC_AUTO`` requests the driver to choose FEC mode based on SFP
 module parameters. This does not mean autonegotiation.
 
+``ETHTOOL_A_FEC_ALL`` requests the driver to choose FEC mode (including not using
+FEC) based on SFP module parameters. This does not mean autonegotiation.
+
 MODULE_EEPROM_GET
 =================
 
diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index 58e587ba0450..274b28ed1f8e 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -1516,6 +1516,7 @@ struct ethtool_fecparam {
  * @ETHTOOL_FEC_BASER_BIT: Base-R/Reed-Solomon FEC Mode
  * @ETHTOOL_FEC_LLRS_BIT: Low Latency Reed Solomon FEC Mode (25G/50G Ethernet
  *			Consortium)
+ * @ETHTOOL_FEC_ALL_BIT: Same as AUTO but also includes NO FEC.
  */
 enum ethtool_fec_config_bits {
 	ETHTOOL_FEC_NONE_BIT,
@@ -1524,6 +1525,7 @@ enum ethtool_fec_config_bits {
 	ETHTOOL_FEC_RS_BIT,
 	ETHTOOL_FEC_BASER_BIT,
 	ETHTOOL_FEC_LLRS_BIT,
+	ETHTOOL_FEC_ALL_BIT,
 };
 
 #define ETHTOOL_FEC_NONE		(1 << ETHTOOL_FEC_NONE_BIT)
@@ -1532,6 +1534,7 @@ enum ethtool_fec_config_bits {
 #define ETHTOOL_FEC_RS			(1 << ETHTOOL_FEC_RS_BIT)
 #define ETHTOOL_FEC_BASER		(1 << ETHTOOL_FEC_BASER_BIT)
 #define ETHTOOL_FEC_LLRS		(1 << ETHTOOL_FEC_LLRS_BIT)
+#define ETHTOOL_FEC_ALL			(1 << ETHTOOL_FEC_ALL_BIT)
 
 /* CMDs currently supported */
 #define ETHTOOL_GSET		0x00000001 /* DEPRECATED, Get settings.
diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
index aaf7c6963d61..7f3857f1a7cb 100644
--- a/include/uapi/linux/ethtool_netlink.h
+++ b/include/uapi/linux/ethtool_netlink.h
@@ -684,6 +684,7 @@ enum {
 	ETHTOOL_A_FEC_AUTO,				/* u8 */
 	ETHTOOL_A_FEC_ACTIVE,				/* u32 */
 	ETHTOOL_A_FEC_STATS,				/* nest - _A_FEC_STAT */
+	ETHTOOL_A_FEC_ALL,				/* nest - _A_FEC_STAT */
 
 	__ETHTOOL_A_FEC_CNT,
 	ETHTOOL_A_FEC_MAX = (__ETHTOOL_A_FEC_CNT - 1)
diff --git a/net/ethtool/fec.c b/net/ethtool/fec.c
index 9f5a134e2e01..48b0d091cd0a 100644
--- a/net/ethtool/fec.c
+++ b/net/ethtool/fec.c
@@ -13,6 +13,7 @@ struct fec_reply_data {
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(fec_link_modes);
 	u32 active_fec;
 	u8 fec_auto;
+	u8 fec_all;
 	struct fec_stat_grp {
 		u64 stats[1 + ETHTOOL_MAX_LANES];
 		u8 cnt;
@@ -29,10 +30,13 @@ const struct nla_policy ethnl_fec_get_policy[ETHTOOL_A_FEC_HEADER + 1] = {
 };
 
 static void
-ethtool_fec_to_link_modes(u32 fec, unsigned long *link_modes, u8 *fec_auto)
+ethtool_fec_to_link_modes(u32 fec, unsigned long *link_modes, u8 *fec_auto,
+			  u8 *fec_all)
 {
 	if (fec_auto)
 		*fec_auto = !!(fec & ETHTOOL_FEC_AUTO);
+	if (fec_all)
+		*fec_all = !!(fec & ETHTOOL_FEC_ALL);
 
 	if (fec & ETHTOOL_FEC_OFF)
 		__set_bit(ETHTOOL_LINK_MODE_FEC_NONE_BIT, link_modes);
@@ -46,12 +50,14 @@ ethtool_fec_to_link_modes(u32 fec, unsigned long *link_modes, u8 *fec_auto)
 
 static int
 ethtool_link_modes_to_fecparam(struct ethtool_fecparam *fec,
-			       unsigned long *link_modes, u8 fec_auto)
+			       unsigned long *link_modes, u8 fec_auto, u8 fec_all)
 {
 	memset(fec, 0, sizeof(*fec));
 
 	if (fec_auto)
 		fec->fec |= ETHTOOL_FEC_AUTO;
+	if (fec_all)
+		fec->fec |= ETHTOOL_FEC_ALL;
 
 	if (__test_and_clear_bit(ETHTOOL_LINK_MODE_FEC_NONE_BIT, link_modes))
 		fec->fec |= ETHTOOL_FEC_OFF;
@@ -123,9 +129,9 @@ static int fec_prepare_data(const struct ethnl_req_info *req_base,
 	WARN_ON_ONCE(fec.reserved);
 
 	ethtool_fec_to_link_modes(fec.fec, data->fec_link_modes,
-				  &data->fec_auto);
+				  &data->fec_auto, &data->fec_all);
 
-	ethtool_fec_to_link_modes(fec.active_fec, active_fec_modes, NULL);
+	ethtool_fec_to_link_modes(fec.active_fec, active_fec_modes, NULL, NULL);
 	data->active_fec = find_first_bit(active_fec_modes,
 					  __ETHTOOL_LINK_MODE_MASK_NBITS);
 	/* Don't report attr if no FEC mode set. Note that
@@ -155,6 +161,7 @@ static int fec_reply_size(const struct ethnl_req_info *req_base,
 	len += ret;
 
 	len += nla_total_size(sizeof(u8)) +	/* _FEC_AUTO */
+	       nla_total_size(sizeof(u8)) + /* _FEC_ALL */
 	       nla_total_size(sizeof(u32));	/* _FEC_ACTIVE */
 
 	if (req_base->flags & ETHTOOL_FLAG_STATS)
@@ -207,6 +214,7 @@ static int fec_fill_reply(struct sk_buff *skb,
 		return ret;
 
 	if (nla_put_u8(skb, ETHTOOL_A_FEC_AUTO, data->fec_auto) ||
+	    nla_put_u8(skb, ETHTOOL_A_FEC_ALL, data->fec_all) ||
 	    (data->active_fec &&
 	     nla_put_u32(skb, ETHTOOL_A_FEC_ACTIVE, data->active_fec)))
 		return -EMSGSIZE;
@@ -231,10 +239,11 @@ const struct ethnl_request_ops ethnl_fec_request_ops = {
 
 /* FEC_SET */
 
-const struct nla_policy ethnl_fec_set_policy[ETHTOOL_A_FEC_AUTO + 1] = {
+const struct nla_policy ethnl_fec_set_policy[ETHTOOL_A_FEC_ALL + 1] = {
 	[ETHTOOL_A_FEC_HEADER]	= NLA_POLICY_NESTED(ethnl_header_policy),
 	[ETHTOOL_A_FEC_MODES]	= { .type = NLA_NESTED },
 	[ETHTOOL_A_FEC_AUTO]	= NLA_POLICY_MAX(NLA_U8, 1),
+	[ETHTOOL_A_FEC_ALL]		= NLA_POLICY_MAX(NLA_U8, 1),
 };
 
 int ethnl_set_fec(struct sk_buff *skb, struct genl_info *info)
@@ -247,6 +256,7 @@ int ethnl_set_fec(struct sk_buff *skb, struct genl_info *info)
 	struct net_device *dev;
 	bool mod = false;
 	u8 fec_auto;
+	u8 fec_all;
 	int ret;
 
 	ret = ethnl_parse_header_dev_get(&req_info, tb[ETHTOOL_A_FEC_HEADER],
@@ -268,7 +278,7 @@ int ethnl_set_fec(struct sk_buff *skb, struct genl_info *info)
 	if (ret < 0)
 		goto out_ops;
 
-	ethtool_fec_to_link_modes(fec.fec, fec_link_modes, &fec_auto);
+	ethtool_fec_to_link_modes(fec.fec, fec_link_modes, &fec_auto, &fec_all);
 
 	ret = ethnl_update_bitset(fec_link_modes,
 				  __ETHTOOL_LINK_MODE_MASK_NBITS,
@@ -277,12 +287,14 @@ int ethnl_set_fec(struct sk_buff *skb, struct genl_info *info)
 	if (ret < 0)
 		goto out_ops;
 	ethnl_update_u8(&fec_auto, tb[ETHTOOL_A_FEC_AUTO], &mod);
+	ethnl_update_u8(&fec_all, tb[ETHTOOL_A_FEC_ALL], &mod);
 
 	ret = 0;
 	if (!mod)
 		goto out_ops;
 
-	ret = ethtool_link_modes_to_fecparam(&fec, fec_link_modes, fec_auto);
+	ret = ethtool_link_modes_to_fecparam(&fec, fec_link_modes, fec_auto,
+					     fec_all);
 	if (ret) {
 		NL_SET_ERR_MSG_ATTR(info->extack, tb[ETHTOOL_A_FEC_MODES],
 				    "invalid FEC modes requested");
diff --git a/net/ethtool/netlink.h b/net/ethtool/netlink.h
index 1bfd374f9718..3d553363532e 100644
--- a/net/ethtool/netlink.h
+++ b/net/ethtool/netlink.h
@@ -378,7 +378,7 @@ extern const struct nla_policy ethnl_cable_test_act_policy[ETHTOOL_A_CABLE_TEST_
 extern const struct nla_policy ethnl_cable_test_tdr_act_policy[ETHTOOL_A_CABLE_TEST_TDR_CFG + 1];
 extern const struct nla_policy ethnl_tunnel_info_get_policy[ETHTOOL_A_TUNNEL_INFO_HEADER + 1];
 extern const struct nla_policy ethnl_fec_get_policy[ETHTOOL_A_FEC_HEADER + 1];
-extern const struct nla_policy ethnl_fec_set_policy[ETHTOOL_A_FEC_AUTO + 1];
+extern const struct nla_policy ethnl_fec_set_policy[ETHTOOL_A_FEC_ALL + 1];
 extern const struct nla_policy ethnl_module_eeprom_get_policy[ETHTOOL_A_MODULE_EEPROM_I2C_ADDRESS + 1];
 extern const struct nla_policy ethnl_stats_get_policy[ETHTOOL_A_STATS_GROUPS + 1];
 extern const struct nla_policy ethnl_phc_vclocks_get_policy[ETHTOOL_A_PHC_VCLOCKS_HEADER + 1];
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
