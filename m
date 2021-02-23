Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87052323456
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Feb 2021 00:47:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 267984EB08;
	Tue, 23 Feb 2021 23:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvvbequVIbuZ; Tue, 23 Feb 2021 23:47:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0CF94E90F;
	Tue, 23 Feb 2021 23:47:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58C9F1BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 489A483187
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pPLyZ925uAKy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 23:47:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75FF883183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:28 +0000 (UTC)
IronPort-SDR: nvFnaUQ5+6VRy/aWisr+CxXLVA2zvoiAreDSQT5T/rtT4yojEA3/jEGDdLzLHPEBtGM2mTBUnE
 BnSIN7uAFRXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="249047163"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="249047163"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 15:47:27 -0800
IronPort-SDR: ds587oXnknCjgF2OglmSpFbxQatRa/8NJjNEla+1Imvnp9OlI5KsnxP01iLCwY8+0IW29wC64e
 /7pmAvQz9Mhw==
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="432986434"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 15:47:26 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Feb 2021 15:47:07 -0800
Message-Id: <20210223234707.1170711-4-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
References: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 3/3] iavf: clean up packet
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
 drivers/net/ethernet/intel/iavf/iavf_common.c | 124 +-----------------
 drivers/net/ethernet/intel/iavf/iavf_type.h   |   1 -
 2 files changed, 6 insertions(+), 119 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 8547fc8fdfd6..e9cc7f6ddc46 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -522,9 +522,9 @@ enum iavf_status iavf_aq_set_rss_key(struct iavf_hw *hw, u16 vsi_id,
  * ENDIF
  */
 
-/* macro to make the table lines short */
+/* macro to make the table lines short, use explicit indexing with [PTYPE] */
 #define IAVF_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
-	{	PTYPE, \
+	[PTYPE] = { \
 		1, \
 		IAVF_RX_PTYPE_OUTER_##OUTER_IP, \
 		IAVF_RX_PTYPE_OUTER_##OUTER_IP_VER, \
@@ -535,16 +535,15 @@ enum iavf_status iavf_aq_set_rss_key(struct iavf_hw *hw, u16 vsi_id,
 		IAVF_RX_PTYPE_INNER_PROT_##I, \
 		IAVF_RX_PTYPE_PAYLOAD_LAYER_##PL }
 
-#define IAVF_PTT_UNUSED_ENTRY(PTYPE) \
-		{ PTYPE, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
+#define IAVF_PTT_UNUSED_ENTRY(PTYPE) [PTYPE] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
 
 /* shorter macros makes the table fit but are terse */
 #define IAVF_RX_PTYPE_NOF		IAVF_RX_PTYPE_NOT_FRAG
 #define IAVF_RX_PTYPE_FRG		IAVF_RX_PTYPE_FRAG
 #define IAVF_RX_PTYPE_INNER_PROT_TS	IAVF_RX_PTYPE_INNER_PROT_TIMESYNC
 
-/* Lookup table mapping the HW PTYPE to the bit field for decoding */
-struct iavf_rx_ptype_decoded iavf_ptype_lookup[] = {
+/* Lookup table mapping the 8-bit HW PTYPE to the bit field for decoding */
+struct iavf_rx_ptype_decoded iavf_ptype_lookup[BIT(8)] = {
 	/* L2 Packet types */
 	IAVF_PTT_UNUSED_ENTRY(0),
 	IAVF_PTT(1,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
@@ -750,118 +749,7 @@ struct iavf_rx_ptype_decoded iavf_ptype_lookup[] = {
 	IAVF_PTT(153, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
 
 	/* unused entries */
-	IAVF_PTT_UNUSED_ENTRY(154),
-	IAVF_PTT_UNUSED_ENTRY(155),
-	IAVF_PTT_UNUSED_ENTRY(156),
-	IAVF_PTT_UNUSED_ENTRY(157),
-	IAVF_PTT_UNUSED_ENTRY(158),
-	IAVF_PTT_UNUSED_ENTRY(159),
-
-	IAVF_PTT_UNUSED_ENTRY(160),
-	IAVF_PTT_UNUSED_ENTRY(161),
-	IAVF_PTT_UNUSED_ENTRY(162),
-	IAVF_PTT_UNUSED_ENTRY(163),
-	IAVF_PTT_UNUSED_ENTRY(164),
-	IAVF_PTT_UNUSED_ENTRY(165),
-	IAVF_PTT_UNUSED_ENTRY(166),
-	IAVF_PTT_UNUSED_ENTRY(167),
-	IAVF_PTT_UNUSED_ENTRY(168),
-	IAVF_PTT_UNUSED_ENTRY(169),
-
-	IAVF_PTT_UNUSED_ENTRY(170),
-	IAVF_PTT_UNUSED_ENTRY(171),
-	IAVF_PTT_UNUSED_ENTRY(172),
-	IAVF_PTT_UNUSED_ENTRY(173),
-	IAVF_PTT_UNUSED_ENTRY(174),
-	IAVF_PTT_UNUSED_ENTRY(175),
-	IAVF_PTT_UNUSED_ENTRY(176),
-	IAVF_PTT_UNUSED_ENTRY(177),
-	IAVF_PTT_UNUSED_ENTRY(178),
-	IAVF_PTT_UNUSED_ENTRY(179),
-
-	IAVF_PTT_UNUSED_ENTRY(180),
-	IAVF_PTT_UNUSED_ENTRY(181),
-	IAVF_PTT_UNUSED_ENTRY(182),
-	IAVF_PTT_UNUSED_ENTRY(183),
-	IAVF_PTT_UNUSED_ENTRY(184),
-	IAVF_PTT_UNUSED_ENTRY(185),
-	IAVF_PTT_UNUSED_ENTRY(186),
-	IAVF_PTT_UNUSED_ENTRY(187),
-	IAVF_PTT_UNUSED_ENTRY(188),
-	IAVF_PTT_UNUSED_ENTRY(189),
-
-	IAVF_PTT_UNUSED_ENTRY(190),
-	IAVF_PTT_UNUSED_ENTRY(191),
-	IAVF_PTT_UNUSED_ENTRY(192),
-	IAVF_PTT_UNUSED_ENTRY(193),
-	IAVF_PTT_UNUSED_ENTRY(194),
-	IAVF_PTT_UNUSED_ENTRY(195),
-	IAVF_PTT_UNUSED_ENTRY(196),
-	IAVF_PTT_UNUSED_ENTRY(197),
-	IAVF_PTT_UNUSED_ENTRY(198),
-	IAVF_PTT_UNUSED_ENTRY(199),
-
-	IAVF_PTT_UNUSED_ENTRY(200),
-	IAVF_PTT_UNUSED_ENTRY(201),
-	IAVF_PTT_UNUSED_ENTRY(202),
-	IAVF_PTT_UNUSED_ENTRY(203),
-	IAVF_PTT_UNUSED_ENTRY(204),
-	IAVF_PTT_UNUSED_ENTRY(205),
-	IAVF_PTT_UNUSED_ENTRY(206),
-	IAVF_PTT_UNUSED_ENTRY(207),
-	IAVF_PTT_UNUSED_ENTRY(208),
-	IAVF_PTT_UNUSED_ENTRY(209),
-
-	IAVF_PTT_UNUSED_ENTRY(210),
-	IAVF_PTT_UNUSED_ENTRY(211),
-	IAVF_PTT_UNUSED_ENTRY(212),
-	IAVF_PTT_UNUSED_ENTRY(213),
-	IAVF_PTT_UNUSED_ENTRY(214),
-	IAVF_PTT_UNUSED_ENTRY(215),
-	IAVF_PTT_UNUSED_ENTRY(216),
-	IAVF_PTT_UNUSED_ENTRY(217),
-	IAVF_PTT_UNUSED_ENTRY(218),
-	IAVF_PTT_UNUSED_ENTRY(219),
-
-	IAVF_PTT_UNUSED_ENTRY(220),
-	IAVF_PTT_UNUSED_ENTRY(221),
-	IAVF_PTT_UNUSED_ENTRY(222),
-	IAVF_PTT_UNUSED_ENTRY(223),
-	IAVF_PTT_UNUSED_ENTRY(224),
-	IAVF_PTT_UNUSED_ENTRY(225),
-	IAVF_PTT_UNUSED_ENTRY(226),
-	IAVF_PTT_UNUSED_ENTRY(227),
-	IAVF_PTT_UNUSED_ENTRY(228),
-	IAVF_PTT_UNUSED_ENTRY(229),
-
-	IAVF_PTT_UNUSED_ENTRY(230),
-	IAVF_PTT_UNUSED_ENTRY(231),
-	IAVF_PTT_UNUSED_ENTRY(232),
-	IAVF_PTT_UNUSED_ENTRY(233),
-	IAVF_PTT_UNUSED_ENTRY(234),
-	IAVF_PTT_UNUSED_ENTRY(235),
-	IAVF_PTT_UNUSED_ENTRY(236),
-	IAVF_PTT_UNUSED_ENTRY(237),
-	IAVF_PTT_UNUSED_ENTRY(238),
-	IAVF_PTT_UNUSED_ENTRY(239),
-
-	IAVF_PTT_UNUSED_ENTRY(240),
-	IAVF_PTT_UNUSED_ENTRY(241),
-	IAVF_PTT_UNUSED_ENTRY(242),
-	IAVF_PTT_UNUSED_ENTRY(243),
-	IAVF_PTT_UNUSED_ENTRY(244),
-	IAVF_PTT_UNUSED_ENTRY(245),
-	IAVF_PTT_UNUSED_ENTRY(246),
-	IAVF_PTT_UNUSED_ENTRY(247),
-	IAVF_PTT_UNUSED_ENTRY(248),
-	IAVF_PTT_UNUSED_ENTRY(249),
-
-	IAVF_PTT_UNUSED_ENTRY(250),
-	IAVF_PTT_UNUSED_ENTRY(251),
-	IAVF_PTT_UNUSED_ENTRY(252),
-	IAVF_PTT_UNUSED_ENTRY(253),
-	IAVF_PTT_UNUSED_ENTRY(254),
-	IAVF_PTT_UNUSED_ENTRY(255)
+	[154 ... 255] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index de9fda78b43a..9f1f523807c4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -370,7 +370,6 @@ enum iavf_rx_l2_ptype {
 };
 
 struct iavf_rx_ptype_decoded {
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
