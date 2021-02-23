Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48EA323457
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Feb 2021 00:47:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 898C643036;
	Tue, 23 Feb 2021 23:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNAsW04EEJqZ; Tue, 23 Feb 2021 23:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F93743031;
	Tue, 23 Feb 2021 23:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3ABF1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9306783183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 59lfk2SV0ATE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 23:47:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 42149831A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:28 +0000 (UTC)
IronPort-SDR: ojcO2nVys3rDSwpz78QLiJydCsGkLNppuEt3QeF4CTn4TeGy1FymRID5E8vjQImO0KJyZHvQR3
 qOiGdcy+VhCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="249047161"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="249047161"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 15:47:26 -0800
IronPort-SDR: 5gs8l9gkgFyhlNTPW6py3E9OXpYTDMoOZxd1Yu0/zTtPBd6qjMUBFH3OqzfiNtWh+HItPYUc86
 Yk6y0jcYBjoQ==
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="432986430"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 15:47:26 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Feb 2021 15:47:06 -0800
Message-Id: <20210223234707.1170711-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
References: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 2/3] i40e: clean up packet
 type lookup table
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove the unused ptype struct value, which makes table init easier for
the zero entries, and use ranged initializer to remove a bunch of code
(works with gcc and clang). There is no significant functional change.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
NOTE: this patch generates an expected checkpatch error due to the
tricky structure initializer macro.
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 124 +-----------------
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   1 -
 2 files changed, 6 insertions(+), 119 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index ec19e18305ec..abaa36538ab1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -552,9 +552,9 @@ i40e_status i40e_aq_set_rss_key(struct i40e_hw *hw,
  * ENDIF
  */
 
-/* macro to make the table lines short */
+/* macro to make the table lines short, use explicit indexing with [PTYPE] */
 #define I40E_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
-	{	PTYPE, \
+	[PTYPE] = { \
 		1, \
 		I40E_RX_PTYPE_OUTER_##OUTER_IP, \
 		I40E_RX_PTYPE_OUTER_##OUTER_IP_VER, \
@@ -565,16 +565,15 @@ i40e_status i40e_aq_set_rss_key(struct i40e_hw *hw,
 		I40E_RX_PTYPE_INNER_PROT_##I, \
 		I40E_RX_PTYPE_PAYLOAD_LAYER_##PL }
 
-#define I40E_PTT_UNUSED_ENTRY(PTYPE) \
-		{ PTYPE, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
+#define I40E_PTT_UNUSED_ENTRY(PTYPE) [PTYPE] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
 
 /* shorter macros makes the table fit but are terse */
 #define I40E_RX_PTYPE_NOF		I40E_RX_PTYPE_NOT_FRAG
 #define I40E_RX_PTYPE_FRG		I40E_RX_PTYPE_FRAG
 #define I40E_RX_PTYPE_INNER_PROT_TS	I40E_RX_PTYPE_INNER_PROT_TIMESYNC
 
-/* Lookup table mapping the HW PTYPE to the bit field for decoding */
-struct i40e_rx_ptype_decoded i40e_ptype_lookup[] = {
+/* Lookup table mapping in the 8-bit HW PTYPE to the bit field for decoding */
+struct i40e_rx_ptype_decoded i40e_ptype_lookup[BIT(8)] = {
 	/* L2 Packet types */
 	I40E_PTT_UNUSED_ENTRY(0),
 	I40E_PTT(1,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
@@ -780,118 +779,7 @@ struct i40e_rx_ptype_decoded i40e_ptype_lookup[] = {
 	I40E_PTT(153, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
 
 	/* unused entries */
-	I40E_PTT_UNUSED_ENTRY(154),
-	I40E_PTT_UNUSED_ENTRY(155),
-	I40E_PTT_UNUSED_ENTRY(156),
-	I40E_PTT_UNUSED_ENTRY(157),
-	I40E_PTT_UNUSED_ENTRY(158),
-	I40E_PTT_UNUSED_ENTRY(159),
-
-	I40E_PTT_UNUSED_ENTRY(160),
-	I40E_PTT_UNUSED_ENTRY(161),
-	I40E_PTT_UNUSED_ENTRY(162),
-	I40E_PTT_UNUSED_ENTRY(163),
-	I40E_PTT_UNUSED_ENTRY(164),
-	I40E_PTT_UNUSED_ENTRY(165),
-	I40E_PTT_UNUSED_ENTRY(166),
-	I40E_PTT_UNUSED_ENTRY(167),
-	I40E_PTT_UNUSED_ENTRY(168),
-	I40E_PTT_UNUSED_ENTRY(169),
-
-	I40E_PTT_UNUSED_ENTRY(170),
-	I40E_PTT_UNUSED_ENTRY(171),
-	I40E_PTT_UNUSED_ENTRY(172),
-	I40E_PTT_UNUSED_ENTRY(173),
-	I40E_PTT_UNUSED_ENTRY(174),
-	I40E_PTT_UNUSED_ENTRY(175),
-	I40E_PTT_UNUSED_ENTRY(176),
-	I40E_PTT_UNUSED_ENTRY(177),
-	I40E_PTT_UNUSED_ENTRY(178),
-	I40E_PTT_UNUSED_ENTRY(179),
-
-	I40E_PTT_UNUSED_ENTRY(180),
-	I40E_PTT_UNUSED_ENTRY(181),
-	I40E_PTT_UNUSED_ENTRY(182),
-	I40E_PTT_UNUSED_ENTRY(183),
-	I40E_PTT_UNUSED_ENTRY(184),
-	I40E_PTT_UNUSED_ENTRY(185),
-	I40E_PTT_UNUSED_ENTRY(186),
-	I40E_PTT_UNUSED_ENTRY(187),
-	I40E_PTT_UNUSED_ENTRY(188),
-	I40E_PTT_UNUSED_ENTRY(189),
-
-	I40E_PTT_UNUSED_ENTRY(190),
-	I40E_PTT_UNUSED_ENTRY(191),
-	I40E_PTT_UNUSED_ENTRY(192),
-	I40E_PTT_UNUSED_ENTRY(193),
-	I40E_PTT_UNUSED_ENTRY(194),
-	I40E_PTT_UNUSED_ENTRY(195),
-	I40E_PTT_UNUSED_ENTRY(196),
-	I40E_PTT_UNUSED_ENTRY(197),
-	I40E_PTT_UNUSED_ENTRY(198),
-	I40E_PTT_UNUSED_ENTRY(199),
-
-	I40E_PTT_UNUSED_ENTRY(200),
-	I40E_PTT_UNUSED_ENTRY(201),
-	I40E_PTT_UNUSED_ENTRY(202),
-	I40E_PTT_UNUSED_ENTRY(203),
-	I40E_PTT_UNUSED_ENTRY(204),
-	I40E_PTT_UNUSED_ENTRY(205),
-	I40E_PTT_UNUSED_ENTRY(206),
-	I40E_PTT_UNUSED_ENTRY(207),
-	I40E_PTT_UNUSED_ENTRY(208),
-	I40E_PTT_UNUSED_ENTRY(209),
-
-	I40E_PTT_UNUSED_ENTRY(210),
-	I40E_PTT_UNUSED_ENTRY(211),
-	I40E_PTT_UNUSED_ENTRY(212),
-	I40E_PTT_UNUSED_ENTRY(213),
-	I40E_PTT_UNUSED_ENTRY(214),
-	I40E_PTT_UNUSED_ENTRY(215),
-	I40E_PTT_UNUSED_ENTRY(216),
-	I40E_PTT_UNUSED_ENTRY(217),
-	I40E_PTT_UNUSED_ENTRY(218),
-	I40E_PTT_UNUSED_ENTRY(219),
-
-	I40E_PTT_UNUSED_ENTRY(220),
-	I40E_PTT_UNUSED_ENTRY(221),
-	I40E_PTT_UNUSED_ENTRY(222),
-	I40E_PTT_UNUSED_ENTRY(223),
-	I40E_PTT_UNUSED_ENTRY(224),
-	I40E_PTT_UNUSED_ENTRY(225),
-	I40E_PTT_UNUSED_ENTRY(226),
-	I40E_PTT_UNUSED_ENTRY(227),
-	I40E_PTT_UNUSED_ENTRY(228),
-	I40E_PTT_UNUSED_ENTRY(229),
-
-	I40E_PTT_UNUSED_ENTRY(230),
-	I40E_PTT_UNUSED_ENTRY(231),
-	I40E_PTT_UNUSED_ENTRY(232),
-	I40E_PTT_UNUSED_ENTRY(233),
-	I40E_PTT_UNUSED_ENTRY(234),
-	I40E_PTT_UNUSED_ENTRY(235),
-	I40E_PTT_UNUSED_ENTRY(236),
-	I40E_PTT_UNUSED_ENTRY(237),
-	I40E_PTT_UNUSED_ENTRY(238),
-	I40E_PTT_UNUSED_ENTRY(239),
-
-	I40E_PTT_UNUSED_ENTRY(240),
-	I40E_PTT_UNUSED_ENTRY(241),
-	I40E_PTT_UNUSED_ENTRY(242),
-	I40E_PTT_UNUSED_ENTRY(243),
-	I40E_PTT_UNUSED_ENTRY(244),
-	I40E_PTT_UNUSED_ENTRY(245),
-	I40E_PTT_UNUSED_ENTRY(246),
-	I40E_PTT_UNUSED_ENTRY(247),
-	I40E_PTT_UNUSED_ENTRY(248),
-	I40E_PTT_UNUSED_ENTRY(249),
-
-	I40E_PTT_UNUSED_ENTRY(250),
-	I40E_PTT_UNUSED_ENTRY(251),
-	I40E_PTT_UNUSED_ENTRY(252),
-	I40E_PTT_UNUSED_ENTRY(253),
-	I40E_PTT_UNUSED_ENTRY(254),
-	I40E_PTT_UNUSED_ENTRY(255)
+	[154 ... 255] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 5c10faaca790..1fb13a71a4d0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -807,7 +807,6 @@ enum i40e_rx_l2_ptype {
 };
 
 struct i40e_rx_ptype_decoded {
-	u32 ptype:8;
 	u32 known:1;
 	u32 outer_ip:1;
 	u32 outer_ip_ver:1;
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
