Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0261E3219
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2020 00:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 207AF86A59;
	Tue, 26 May 2020 22:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6bEjQK6Vt_Ai; Tue, 26 May 2020 22:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF7C986920;
	Tue, 26 May 2020 22:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6120F1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 22:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55BED885C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 22:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bQkHnhpcuO86 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 22:10:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8C4E6885B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 22:10:03 +0000 (UTC)
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC034208DB;
 Tue, 26 May 2020 22:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590531003;
 bh=SsvOkxLMv/S1KzSLisVQKnBkLtGH3XxkFsrJE7K5ZgY=;
 h=Date:From:To:Cc:Subject:From;
 b=B25T2XTSp49WHOItNKMMaAa1fknkYxhENl0q0GlerH0ovzJA8t+Ue9KGqE0S+UszY
 P9BatjKhnX7M4Z6xK6NOf+Uu645KROysrll3k1aJFSNHeR3p3s3vlma9+6BK7yAA04
 rnvwW330isNvNFAG+dPHLJ8M3wzyV2ACOO0iYXDU=
Date: Tue, 26 May 2020 17:14:59 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20200526221459.GA31611@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 26 May 2020 22:11:41 +0000
Subject: [Intel-wired-lan] [PATCH][next] ice: Replace one-element arrays
 with flexible-arrays
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The current codebase makes use of one-element arrays in the following
form:

struct something {
    int length;
    u8 data[1];
};

struct something *instance;

instance = kmalloc(sizeof(*instance) + size, GFP_KERNEL);
instance->length = size;
memcpy(instance->data, source, size);

but the preferred mechanism to declare variable-length types such as
these ones is a flexible array member[1][2], introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on. So, replace
the one-element array with a flexible-array member.

Also, make use of the sizeof_field() and offsetof() helpers to simplify
some macros and properly calcualte the size of the structures that
contain flexible-array members.

This issue was found with the help of Coccinelle and, audited and fixed
_manually_.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++---
 drivers/net/ethernet/intel/ice/ice_switch.c   | 22 +++++++++----------
 2 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 586d69491268a..faa21830e40d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -570,7 +570,7 @@ struct ice_sw_rule_lkup_rx_tx {
 	 * lookup-type
 	 */
 	__le16 hdr_len;
-	u8 hdr[1];
+	u8 hdr[];
 } __packed;
 
 /* Add/Update/Remove large action command/response entry
@@ -580,7 +580,7 @@ struct ice_sw_rule_lkup_rx_tx {
 struct ice_sw_rule_lg_act {
 	__le16 index; /* Index in large action table */
 	__le16 size;
-	__le32 act[1]; /* array of size for actions */
+	__le32 act[]; /* array of size for actions */
 	/* Max number of large actions */
 #define ICE_MAX_LG_ACT	4
 	/* Bit 0:1 - Action type */
@@ -640,7 +640,7 @@ struct ice_sw_rule_lg_act {
 struct ice_sw_rule_vsi_list {
 	__le16 index; /* Index of VSI/Prune list */
 	__le16 number_vsi;
-	__le16 vsi[1]; /* Array of number_vsi VSI numbers */
+	__le16 vsi[]; /* Array of number_vsi VSI numbers */
 };
 
 /* Query VSI list command/response entry */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 0156b73df1b1f..e3e2ee7bec9e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -30,24 +30,22 @@ static const u8 dummy_eth_header[DUMMY_ETH_HDR_LEN] = { 0x2, 0, 0, 0, 0, 0,
 
 #define ICE_SW_RULE_RX_TX_ETH_HDR_SIZE \
 	(sizeof(struct ice_aqc_sw_rules_elem) - \
-	 sizeof(((struct ice_aqc_sw_rules_elem *)0)->pdata) + \
-	 sizeof(struct ice_sw_rule_lkup_rx_tx) + DUMMY_ETH_HDR_LEN - 1)
+	 sizeof_field(struct ice_aqc_sw_rules_elem, pdata) + \
+	 sizeof(struct ice_sw_rule_lkup_rx_tx) + DUMMY_ETH_HDR_LEN)
 #define ICE_SW_RULE_RX_TX_NO_HDR_SIZE \
 	(sizeof(struct ice_aqc_sw_rules_elem) - \
-	 sizeof(((struct ice_aqc_sw_rules_elem *)0)->pdata) + \
-	 sizeof(struct ice_sw_rule_lkup_rx_tx) - 1)
+	 sizeof_field(struct ice_aqc_sw_rules_elem, pdata) + \
+	 sizeof(struct ice_sw_rule_lkup_rx_tx))
 #define ICE_SW_RULE_LG_ACT_SIZE(n) \
 	(sizeof(struct ice_aqc_sw_rules_elem) - \
-	 sizeof(((struct ice_aqc_sw_rules_elem *)0)->pdata) + \
-	 sizeof(struct ice_sw_rule_lg_act) - \
-	 sizeof(((struct ice_sw_rule_lg_act *)0)->act) + \
-	 ((n) * sizeof(((struct ice_sw_rule_lg_act *)0)->act)))
+	 sizeof_field(struct ice_aqc_sw_rules_elem, pdata) + \
+	 offsetof(struct ice_sw_rule_lg_act, act) + \
+	 ((n) * sizeof(__le32)))
 #define ICE_SW_RULE_VSI_LIST_SIZE(n) \
 	(sizeof(struct ice_aqc_sw_rules_elem) - \
-	 sizeof(((struct ice_aqc_sw_rules_elem *)0)->pdata) + \
-	 sizeof(struct ice_sw_rule_vsi_list) - \
-	 sizeof(((struct ice_sw_rule_vsi_list *)0)->vsi) + \
-	 ((n) * sizeof(((struct ice_sw_rule_vsi_list *)0)->vsi)))
+	 sizeof_field(struct ice_aqc_sw_rules_elem, pdata) + \
+	 offsetof(struct ice_sw_rule_vsi_list, vsi) + \
+	 ((n) * sizeof(__le16)))
 
 /**
  * ice_init_def_sw_recp - initialize the recipe book keeping tables
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
