Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCB92F8BCF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jan 2021 07:14:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F1812E1AB;
	Sat, 16 Jan 2021 06:14:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r5krwMgTaLI7; Sat, 16 Jan 2021 06:14:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA23A2E1A4;
	Sat, 16 Jan 2021 06:14:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B2CC1BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77FE586E3C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GUpabuT5Z-op for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jan 2021 06:13:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D7D9086DBC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:13:59 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id r4so5807378pls.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 22:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=I/5Du7qPUEoAkb/XhaPW7rJMvAwX/2S0SMJ5Ik87vvk=;
 b=oTLLb3ze9CaFXpQP4trMv2SGZ0RnAMg+FrqP0ctLs0vr2/fTEEVxRTg9QYSzes1VRL
 29r9Ql1o4LjHvX7BOIal8O+In4K2MaYV/vcwL+68tRRK7tsDQQzPsTAvDvWH48dsTAo6
 3j7MvPCmY0php0/57U/7U02tSavISNC/NdyeIUGmh+jbKUYBaFKUOHK/Ox1hfxQf0tCY
 n1issAJrv/DienryubwHhvlX5QFUazKSNGgwICQd9zVerwJya0WlUmj1bME7aJ3UEU3n
 ypZNyX1R76M+Xr5Lmib0kTpytxr+lMA+VBGvhxIh3oIkta9eoYS35e9mRlOgRw247rqF
 unfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=I/5Du7qPUEoAkb/XhaPW7rJMvAwX/2S0SMJ5Ik87vvk=;
 b=flidXhZQdRF4mCK6PPu9ElR7VyBIgNq1kOiu6Ophw9uEVj/npqJ9Wc9+NS+i2ANVL0
 vrxz9t5BAi/nKTegDL6MFV3xEcOv6g/Zb7omrsuyW+7xc/adW9mUdJAzR0Hns+zGeMgi
 dOn0O3aAzRem1Faihi1fo/Kk7DB/XK4FXhhCe7fZQx/+dXAr5msTpA+LHheT+B0tzODt
 JW3ByjVK65pP4uN5pmGjz1i6H97fLHXAGge4TINeOHIn32T1jnvktPzYlysqUTVhdw9x
 j+SxqCi+kWpwTzM+PU/vBp1Cl7NyCF/XtfWvNCtrh3H3wDKeO4surSa5/wDKK1uktbzC
 pIVg==
X-Gm-Message-State: AOAM5309skzaiCCxqpN9g0AJ+1+9Zwajk7U+ztsU553bNldNTXUkWOrG
 ugyHId/ckRbiGZU4oA1LNKk=
X-Google-Smtp-Source: ABdhPJwYE1rCasHJsP2JtEWgQWy0+8wznldbHOM8YUKDYBiZc7Pl4iJ8egKOwPwk3lKaTdt14uGQ3g==
X-Received: by 2002:a17:90a:9ac:: with SMTP id
 41mr14531399pjo.46.1610777639488; 
 Fri, 15 Jan 2021 22:13:59 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id t8sm10461353pjd.51.2021.01.15.22.13.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 22:13:58 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>,
	linux-sctp@vger.kernel.org
Date: Sat, 16 Jan 2021 14:13:37 +0800
Message-Id: <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
Subject: [Intel-wired-lan] [PATCH net-next 1/6] net: add inline function
 skb_csum_is_sctp
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch is to define a inline function skb_csum_is_sctp(), and
also replace all places where it checks if it's a SCTP CSUM skb.
This function would be used later in many networking drivers in
the following patches.

Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 drivers/net/ethernet/pensando/ionic/ionic_txrx.c | 2 +-
 include/linux/skbuff.h                           | 5 +++++
 net/core/dev.c                                   | 2 +-
 3 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
index ac4cd5d..162a1ff 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
@@ -979,7 +979,7 @@ static int ionic_tx_calc_csum(struct ionic_queue *q, struct sk_buff *skb)
 		stats->vlan_inserted++;
 	}
 
-	if (skb->csum_not_inet)
+	if (skb_csum_is_sctp(skb))
 		stats->crc32_csum++;
 	else
 		stats->csum++;
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index c9568cf..46f901a 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -4621,6 +4621,11 @@ static inline void skb_reset_redirect(struct sk_buff *skb)
 #endif
 }
 
+static inline bool skb_csum_is_sctp(struct sk_buff *skb)
+{
+	return skb->csum_not_inet;
+}
+
 static inline void skb_set_kcov_handle(struct sk_buff *skb,
 				       const u64 kcov_handle)
 {
diff --git a/net/core/dev.c b/net/core/dev.c
index 0a31d4e..bbd306f 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -3617,7 +3617,7 @@ static struct sk_buff *validate_xmit_vlan(struct sk_buff *skb,
 int skb_csum_hwoffload_help(struct sk_buff *skb,
 			    const netdev_features_t features)
 {
-	if (unlikely(skb->csum_not_inet))
+	if (unlikely(skb_csum_is_sctp(skb)))
 		return !!(features & NETIF_F_SCTP_CRC) ? 0 :
 			skb_crc32c_csum_help(skb);
 
-- 
2.1.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
