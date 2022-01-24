Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 810FE4986E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 18:33:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32E8184BD0;
	Mon, 24 Jan 2022 17:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G75CMIK06z1P; Mon, 24 Jan 2022 17:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 275FF84BC9;
	Mon, 24 Jan 2022 17:33:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E75C61BF31F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D02B084BC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pzbz6DixUJrJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jan 2022 17:33:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B9F284BBC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643045584; x=1674581584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F4h1rZCbd2h5IDu/b6Bx1veFO7oqf0n33MOXfWPn0Gc=;
 b=SCTOUVpGM2KbPh8GM+bo1h4LebQvzakGhqV6+RHmtL9hIcSCjSjlCioj
 XIlyRApEywMan5c/BJMcZaCmQkmfpnZpYVWskvG+jjJ0BM7wiyO9Ho8Ei
 /lQKeiRvQ2PaJbShz9ApqcGBpTYA8b9fFciSQbchqyLO2ahEmAR8CsOZf
 T4OnJC2DGeowQ5nIiLw73+9oLRXDMddu+GNoq/FocHEG7m9TEsskdvvOl
 BLY+tfWy0/kwYkhOe/DUfkkRPI3gUbLOpylKQthD0dhoSvoH/u+G5dkke
 2B1aFZ5UlfFeXH9bA339MkcqGVOwOnialf0DcBOMSilrLnTJA2YeakYzt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="243699220"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="243699220"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 09:33:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="624155622"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2022 09:33:01 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20OHWuIq010465; Mon, 24 Jan 2022 17:32:58 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jan 2022 18:31:13 +0100
Message-Id: <20220124173116.739083-3-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124173116.739083-1-alexandr.lobakin@intel.com>
References: <20220124173116.739083-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/4] ice: switch: unobscurify
 bitops loop in ice_fill_adv_dummy_packet()
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

A loop performing header modification according to the provided mask
in ice_fill_adv_dummy_packet() is very cryptic (and error-prone).
Replace two identical cast-deferences with a variable. Replace three
struct-member-array-accesses with a variable. Invert the condition,
reduce the indentation by one -> eliminate line wraps.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 3056ae85711a..834ac8eebfaa 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5187,13 +5187,15 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		 * indicated by the mask to make sure we don't improperly write
 		 * over any significant packet data.
 		 */
-		for (j = 0; j < len / sizeof(u16); j++)
-			if (lkups[i].m_raw[j])
-				((u16 *)(pkt + offset))[j] =
-					(((u16 *)(pkt + offset))[j] &
-					 ~lkups[i].m_raw[j]) |
-					(lkups[i].h_raw[j] &
-					 lkups[i].m_raw[j]);
+		for (j = 0; j < len / sizeof(u16); j++) {
+			u16 *ptr = (u16 *)(pkt + offset);
+			u16 mask = lkups[i].m_raw[j];
+
+			if (!mask)
+				continue;
+
+			ptr[j] = (ptr[j] & ~mask) | (lkups[i].h_raw[j] & mask);
+		}
 	}
 
 	s_rule->pdata.lkup_tx_rx.hdr_len = cpu_to_le16(pkt_len);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
