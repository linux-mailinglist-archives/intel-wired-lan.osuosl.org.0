Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E863B042C2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB6F560A5E;
	Mon, 14 Jul 2025 15:10:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1cJ4UBhhayhB; Mon, 14 Jul 2025 15:10:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F66A60AA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505811;
	bh=RbUQ3++q4iYZul3ioQdNOTIB1W3aEiyunf6GCe+sEwc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SDt+MOShb8FkgE8VACpSq0+p5qdR1olrXnJP+mxthLsRMNo9IKjU4p1EYyW4JHYhI
	 uE7B2OILN+jVqQkWvlsnqM6PeH0l174JWEREWCfAAMPldYRNoZM2gGlQShudaZk6dS
	 jz1RUnewz3nkydXSDEtq/1Kqpy/Os333h6RiidbvfIvL6zgXhfqN44wmI9lZyINzXn
	 lYehfPesuOyeI0vxGOA81wp2M5fBErsZOQAoyqDfvRK5PkmsjbXQdYr3V0wKTSeHqr
	 w/gf1MkWaPr4DTadrw70GFYceua2mEeDjx4vLLdynHI91i/YhxjnJG7z/GHB0iepzJ
	 y0iq7rU8A8OYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F66A60AA6;
	Mon, 14 Jul 2025 15:10:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 656BEDF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5714540492
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lGL5GZo4Ne0U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 60614400DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60614400DD
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60614400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:16 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-33-6874f179578c
From: Byungchul Park <byungchul@sk.com>
To: willy@infradead.org,
	netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, kernel_team@skhynix.com,
 almasrymina@google.com, ilias.apalodimas@linaro.org, harry.yoo@oracle.com,
 akpm@linux-foundation.org, andrew+netdev@lunn.ch, asml.silence@gmail.com,
 toke@redhat.com, david@redhat.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
 rppt@kernel.org, surenb@google.com, mhocko@suse.com,
 linux-rdma@vger.kernel.org, bpf@vger.kernel.org, vishal.moola@gmail.com,
 hannes@cmpxchg.org, ziy@nvidia.com, jackmanb@google.com, wei.fang@nxp.com,
 shenwei.wang@nxp.com, xiaoning.wang@nxp.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 sgoutham@marvell.com, gakula@marvell.com, sbhatta@marvell.com,
 hkelam@marvell.com, bbhushan2@marvell.com, tariqt@nvidia.com,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, sdf@fomichev.me, saeedm@nvidia.com,
 leon@kernel.org, mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org,
 nbd@nbd.name, lorenzo@kernel.org, ryder.lee@mediatek.com,
 shayne.chen@mediatek.com, sean.wang@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, aleksander.lobakin@intel.com,
 horms@kernel.org, m-malladi@ti.com, krzysztof.kozlowski@linaro.org,
 matthias.schiffer@ew.tq-group.com, robh@kernel.org, imx@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
Date: Mon, 14 Jul 2025 21:00:39 +0900
Message-Id: <20250714120047.35901-5-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0yTZxTGfb/3u7Wh27cq7ptmWdKFmZjM+9zJNNMYk72JIXEzxmRLcM34
 XKu0mlIZmMyhQpiNVNwt4MosUllLdWVFobKC2iKyeVmpQqpAi/WGgnMK7WgBa4vZf7+c55zn
 OSc5PFbeZObxWr1RMujVBSpWTssfZx1/d89To2aJLYDB4jrJQs9YHQPOiWL4dcjDQNAhwh+B
 CQosjS0IxhP9HLgPDmAY67zEQn1dHEOiqZIGy99lNMRcSQz3uqIcdPumaXC6cyHScJ8Gb0Ur
 Bn8sB6KHu1moLJvEUBMuZyF1a5KB9sQ/HOz32CloHznDQaDFzMAPyRMYWkuH0ll3+hi43mZh
 4fqBHgThkykG7vvSgaP2AQ7MzqMIfOccLOwvWw6jZ8Y5+PfHTgwR81p4Xl0EXda5EL88iqD/
 RC8FKa+Hg2vh3xjodLVScON2AkP8UC0LpseHEfTWtFFwpbaJAdvlG1R6j03Ql5qi4PuglYU7
 ZREEQX+Uhp/3mRG4OkIMPPWmT56csLBr1xH/6BNMPIM2RE47blJkuOo5RUIdf1Hk7NFBjljd
 u0mzfSGp9z6kiCkUxMTdeJAl7mffcWSgz8uS7upJmjTbviHDzTVo45ufylfnSwXaIsmw+MPP
 5ZoJZx/aVS8rvuVJUKUowJmQjBeFFeKhri7WhPgZDqR0mTIrLBBDoQTO8BxhqTgWvUSbkJzH
 wtUssb25msoIs4U8MRZpmPGhhRwx0lrKZlghvCe2PLyAX/q/JTqbzs+wTFgpHqu9jTKsTPd0
 mGw4YyoKLpmYvHuaejnwhnjBHqKrkMKKZjUipVZfpFNrC1Ys0pTotcWLvtipc6P0wzV8PfWZ
 Bz0LbPIhgUeqLAU8MmqUjLqosETnQyKPVXMUjwYNGqUiX12yRzLs3GrYXSAV+tB8nla9rlgW
 /ypfKXypNko7JGmXZPhfpXjZvFJU8Umj/ZWLp9bnnx3fhsI5V49MNWQHyoltrv/YtP7jWcmO
 I7qRSFtudPOS+WtW7dhStW3dB4I1Bsll8bevnHt135/bleP//RKqMubFtjzRtA/Wjry2d+9P
 F8Pm84uH12SH+YqNH007okF/eXbltytl7x9/Z0FuP+7ZsOH3Xkdd3gN1z5CKLtSoly7EhkL1
 C6aXEi5sAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0xTdxjG9z/3djQ5qYgnmjltQsxcVPBC3qhTs5n5zzIWDMnc9sHRyIk9
 kyJpKwGNyqTE0AgyvIGWrA6o0BpLyoQqFWxhgKIbFGyqAoV6iWLd5riEitq1JH77PXmeJ8/7
 4eVIZQu9mJNyDaIuV52jYuSU/JtNxasKXxk0KR2eT8HsuMzAwORFGuyzBXBpzEWDr1GAtv5Z
 Asy2FgRTkYcsOEuHSZjs6mGg9uIMCZGmMgrMfxkpmHa8JuFJd4iFXu9bCuzOdAhan1LgPt5K
 Qud0MoRO9jJQZpwjoXq0hIHogzkabkT+ZuGYq4GAzppbMfniKgv9LeU0nH5dT0Jr0Vhs8JGf
 hsHrZgYGiwcQjF6O0vDUG1sNNwyzUG4/j8Db0cjAMeM6CF+dYuHfM10kBMu3wbuqfOi2JMFM
 XxjBw/p7BETdLhb+HL1CQ5ejlYCh8QgJMydqGDC9PIngXvV1Au7UNNFQ1zdExO7IBH/0DQGn
 fBYGHhmDCHydIQou/FyOwNEeoOGV20ht+wJ3hv8hsWukDuHfG+8T+FnFOwIH2m8T+Nr5ERZb
 nAdwc8NKXOt+TmBTwEdip62Uwc7/Klk87HczuLdqjsLNdUfxs+ZqlLH0B/nmbDFHyhd1a7Zk
 yTWzdj/Kq5UVPHBFiCLUz5oQxwn8eqE/qjUhGcfwK4RAIELGOZFPFSZDPZQJyTmSv5sg3Giu
 IuLGAn63MB20snGm+GQh2FrExFnBbxBannvmywL/sWBvujnPMj5N+LVmHMVZGcu0m+rICiS3
 oA9sKFHKzdeqpZwNq/X7NIW5UsHqPfu1ThT7JuvhN7+40NTgDi/iOaRKUMCEQaOk1fn6Qq0X
 CRypSlRMjOg0SkW2uvCgqNv/o+5Ajqj3oiUcpVqk+GqXmKXk96oN4j5RzBN1712Cky0uQp4v
 1+X9NB7a9CFKTlQ0diy/dcJtrTyruSJl3/86rdSaHCzrlp01HFpUf2TAUpnhkTKWbT+88e3M
 3bL033aW+K31bTa773uUpM386ALz2VhF1toJT7EBZ4493pKx6o/j8tNC3m3ctmNrSVraKenb
 c6mB7oVJfekppZKZ+sT2+XdDoKL0GnXqSlKnV/8PXxIIqkkDAAA=
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 04/12] netdevsim: access ->pp
 through netmem_desc instead of page
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To eliminate the use of struct page in page pool, the page pool users
should use netmem descriptor and APIs instead.

Make netdevsim access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/netdevsim/netdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
index e36d3e846c2d..d6b3a7755f14 100644
--- a/drivers/net/netdevsim/netdev.c
+++ b/drivers/net/netdevsim/netdev.c
@@ -842,7 +842,8 @@ nsim_pp_hold_write(struct file *file, const char __user *data,
 		if (!ns->page)
 			ret = -ENOMEM;
 	} else {
-		page_pool_put_full_page(ns->page->pp, ns->page, false);
+		page_pool_put_full_page(pp_page_to_nmdesc(ns->page)->pp,
+					ns->page, false);
 		ns->page = NULL;
 	}
 
@@ -1069,7 +1070,8 @@ void nsim_destroy(struct netdevsim *ns)
 
 	/* Put this intentionally late to exercise the orphaning path */
 	if (ns->page) {
-		page_pool_put_full_page(ns->page->pp, ns->page, false);
+		page_pool_put_full_page(pp_page_to_nmdesc(ns->page)->pp,
+					ns->page, false);
 		ns->page = NULL;
 	}
 
-- 
2.17.1

