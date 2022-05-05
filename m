Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA4251BCC8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B174E40BEB;
	Thu,  5 May 2022 10:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FhWSBOM5x1AJ; Thu,  5 May 2022 10:07:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DF3F400D1;
	Thu,  5 May 2022 10:07:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E15D31BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DCD1581383
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2ji7Hru8xXQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:07:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CA6D81405
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8E55E618B0;
 Thu,  5 May 2022 10:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8254EC385A4;
 Thu,  5 May 2022 10:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745225;
 bh=vECNDDlMB7kq0chaUP+2GO7jOr64tqGrCE4CGBTIy68=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cdz+R0Zhn6b0xmsTz/GTVAnjIwrGns8d8iR101kAdQ9aulbPNMQzqW7XZGyWZsWHe
 k2qSddKERFZMPbubW5oHCZ5ROrGLO7dyUnbDK10q6L9uBbP/eFFv4Opp7bOg9CkTa3
 jLU8AX6ba5bzoIr9f7kIyNmNIOJ0TFpZueBZ+nkj6a7n9123vptv7HM1z9Zx46we1M
 z7g7rI7uQJq7JwM1J0la4EkDmS9vQ/eeYiCMfMu2kjELsF7TcERY89A0wOWQkrCHyk
 wJXC+rN5ffkCdHe0JfNZNjVyqiC63SivMspJYVU5ffe0aDnB7V7FwbYYck3oKPWeCa
 SML1gj5AADnkw==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:40 +0300
Message-Id: <2a59f8a4bfa849da0b3a9931bc2f687a6efdb74b.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 3/8] xfrm: rename
 xfrm_state_offload struct to allow reuse
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Raed Salem <raeds@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

The struct xfrm_state_offload has all fields needed to hold information
for offloaded policies too. In order to do not create new struct with
same fields, let's rename existing one and reuse it later.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/net/xfrm.h     | 10 +++++-----
 net/xfrm/xfrm_device.c |  2 +-
 net/xfrm/xfrm_state.c  |  4 ++--
 net/xfrm/xfrm_user.c   |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index 4e097423116c..bb20278d689c 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -126,7 +126,7 @@ struct xfrm_state_walk {
 	struct xfrm_address_filter *filter;
 };
 
-struct xfrm_state_offload {
+struct xfrm_dev_offload {
 	struct net_device	*dev;
 	netdevice_tracker	dev_tracker;
 	struct net_device	*real_dev;
@@ -246,7 +246,7 @@ struct xfrm_state {
 	struct xfrm_lifetime_cur curlft;
 	struct hrtimer		mtimer;
 
-	struct xfrm_state_offload xso;
+	struct xfrm_dev_offload xso;
 
 	/* used to fix curlft->add_time when changing date */
 	long		saved_tmo;
@@ -1865,7 +1865,7 @@ bool xfrm_dev_offload_ok(struct sk_buff *skb, struct xfrm_state *x);
 
 static inline void xfrm_dev_state_advance_esn(struct xfrm_state *x)
 {
-	struct xfrm_state_offload *xso = &x->xso;
+	struct xfrm_dev_offload *xso = &x->xso;
 
 	if (xso->dev && xso->dev->xfrmdev_ops->xdo_dev_state_advance_esn)
 		xso->dev->xfrmdev_ops->xdo_dev_state_advance_esn(x);
@@ -1891,7 +1891,7 @@ static inline bool xfrm_dst_offload_ok(struct dst_entry *dst)
 
 static inline void xfrm_dev_state_delete(struct xfrm_state *x)
 {
-	struct xfrm_state_offload *xso = &x->xso;
+	struct xfrm_dev_offload *xso = &x->xso;
 
 	if (xso->dev)
 		xso->dev->xfrmdev_ops->xdo_dev_state_delete(x);
@@ -1899,7 +1899,7 @@ static inline void xfrm_dev_state_delete(struct xfrm_state *x)
 
 static inline void xfrm_dev_state_free(struct xfrm_state *x)
 {
-	struct xfrm_state_offload *xso = &x->xso;
+	struct xfrm_dev_offload *xso = &x->xso;
 	struct net_device *dev = xso->dev;
 
 	if (dev && dev->xfrmdev_ops) {
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index dbd923e1d5f0..6e4d3cb2e24d 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -212,7 +212,7 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	int err;
 	struct dst_entry *dst;
 	struct net_device *dev;
-	struct xfrm_state_offload *xso = &x->xso;
+	struct xfrm_dev_offload *xso = &x->xso;
 	xfrm_address_t *saddr;
 	xfrm_address_t *daddr;
 
diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
index b749935152ba..08564e0eef20 100644
--- a/net/xfrm/xfrm_state.c
+++ b/net/xfrm/xfrm_state.c
@@ -751,7 +751,7 @@ xfrm_dev_state_flush_secctx_check(struct net *net, struct net_device *dev, bool
 
 	for (i = 0; i <= net->xfrm.state_hmask; i++) {
 		struct xfrm_state *x;
-		struct xfrm_state_offload *xso;
+		struct xfrm_dev_offload *xso;
 
 		hlist_for_each_entry(x, net->xfrm.state_bydst+i, bydst) {
 			xso = &x->xso;
@@ -835,7 +835,7 @@ int xfrm_dev_state_flush(struct net *net, struct net_device *dev, bool task_vali
 	err = -ESRCH;
 	for (i = 0; i <= net->xfrm.state_hmask; i++) {
 		struct xfrm_state *x;
-		struct xfrm_state_offload *xso;
+		struct xfrm_dev_offload *xso;
 restart:
 		hlist_for_each_entry(x, net->xfrm.state_bydst+i, bydst) {
 			xso = &x->xso;
diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
index 64fa8fdd6bbd..7217c57a76e9 100644
--- a/net/xfrm/xfrm_user.c
+++ b/net/xfrm/xfrm_user.c
@@ -840,7 +840,7 @@ static int copy_sec_ctx(struct xfrm_sec_ctx *s, struct sk_buff *skb)
 	return 0;
 }
 
-static int copy_user_offload(struct xfrm_state_offload *xso, struct sk_buff *skb)
+static int copy_user_offload(struct xfrm_dev_offload *xso, struct sk_buff *skb)
 {
 	struct xfrm_user_offload *xuo;
 	struct nlattr *attr;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
