Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BFF49E659
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jan 2022 16:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 499D44167C;
	Thu, 27 Jan 2022 15:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7pIIgA4DKkjD; Thu, 27 Jan 2022 15:42:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D5F141615;
	Thu, 27 Jan 2022 15:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C56D11BF40A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AEAEE60767
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8rL1LfMEKHp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jan 2022 15:41:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 743EE606F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643298111; x=1674834111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QvHNkZHM+nXMWUfTV2y/6TOnJuTv1w5EQNzJgJJApNc=;
 b=LA99bUvm5fifZpUKZFNC9qmYdAdjIy8fBlm1EVtoMVrrtYHPF5fZHIfR
 Abo/u3VlKRBoEa1iba2Fe4pCIvULolDbEi2c7bgcGj/A5qg0CMQEM/a0x
 bAge8KjmacfGZ2vSMP/ivHXYi2j4D3n2N9khYTLBY0MnaEyMlMRcIh0sG
 5AFeu7dbSIE24kad9CMkJiCz3rdwkkwi+ZfecZGk0LrgaacCxyrF5n8US
 RoW7mqaG5o5e4HeqFodTDga5RBhSpR0duN8ruSHH+bA/ZmvUxdF6iTreX
 WReaRFeYFlt1AxSB4XTqlt9KWrtuvfRpv97xtqXag8D94n2HiRQCCPJjj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="244492071"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="244492071"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 07:41:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="521282146"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 27 Jan 2022 07:41:47 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20RFfjOo028674; Thu, 27 Jan 2022 15:41:46 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 16:40:06 +0100
Message-Id: <20220127154009.623304-2-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127154009.623304-1-alexandr.lobakin@intel.com>
References: <20220127154009.623304-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 1/4] ice: switch: add and use
 u16[] aliases to ice_adv_lkup_elem::{h, m}_u
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_adv_lkup_elem fields h_u and m_u are being accessed as raw u16
arrays in several places.
To reduce cast and braces burden, add permanent array-of-u16 aliases
with the same size as the `union ice_prot_hdr` itself via anonymous
unions to the actual struct declaration, and just access them
directly.

This:
 - removes the need to cast the union to u16[] and then dereference
   it each time -> reduces the horizon for potential bugs;
 - improves -Warray-bounds coverage -- the array size is now known
   at compilation time;
 - addresses cppcheck complaints.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 15 +++++++--------
 drivers/net/ethernet/intel/ice/ice_switch.h | 12 ++++++++++--
 2 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index d98aa35c0337..7f7e929e73a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5267,12 +5267,12 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		 * over any significant packet data.
 		 */
 		for (j = 0; j < len / sizeof(u16); j++)
-			if (((u16 *)&lkups[i].m_u)[j])
+			if (lkups[i].m_raw[j])
 				((u16 *)(pkt + offset))[j] =
 					(((u16 *)(pkt + offset))[j] &
-					 ~((u16 *)&lkups[i].m_u)[j]) |
-					(((u16 *)&lkups[i].h_u)[j] &
-					 ((u16 *)&lkups[i].m_u)[j]);
+					 ~lkups[i].m_raw[j]) |
+					(lkups[i].h_raw[j] &
+					 lkups[i].m_raw[j]);
 	}
 
 	s_rule->pdata.lkup_tx_rx.hdr_len = cpu_to_le16(pkt_len);
@@ -5521,11 +5521,10 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	/* get # of words we need to match */
 	word_cnt = 0;
 	for (i = 0; i < lkups_cnt; i++) {
-		u16 j, *ptr;
+		u16 j;
 
-		ptr = (u16 *)&lkups[i].m_u;
-		for (j = 0; j < sizeof(lkups->m_u) / sizeof(u16); j++)
-			if (ptr[j] != 0)
+		for (j = 0; j < ARRAY_SIZE(lkups->m_raw); j++)
+			if (lkups[i].m_raw[j])
 				word_cnt++;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 7b42c51a3eb0..950a66e86227 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -129,8 +129,16 @@ struct ice_update_recipe_lkup_idx_params {
 
 struct ice_adv_lkup_elem {
 	enum ice_protocol_type type;
-	union ice_prot_hdr h_u;	/* Header values */
-	union ice_prot_hdr m_u;	/* Mask of header values to match */
+	union {
+		union ice_prot_hdr h_u;	/* Header values */
+		/* Used to iterate over the headers */
+		u16 h_raw[sizeof(union ice_prot_hdr) / sizeof(u16)];
+	};
+	union {
+		union ice_prot_hdr m_u;	/* Mask of header values to match */
+		/* Used to iterate over header mask */
+		u16 m_raw[sizeof(union ice_prot_hdr) / sizeof(u16)];
+	};
 };
 
 struct ice_sw_act_ctrl {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
