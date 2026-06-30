Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ftYqKHPeQ2rskgoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 17:19:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 636506E5DBE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 17:19:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bUPil9wT;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0321C6106C;
	Tue, 30 Jun 2026 15:19:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IPpUmBW4_5Zp; Tue, 30 Jun 2026 15:19:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E97A96104F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782832753;
	bh=mIRRvN16ToAQb1e9zetNytMS/So59mpcGLgkkM3oXG4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bUPil9wTOedccAPL3L3JW9f8HyqHxIOGGjBB+BUbYv12WiNsUB2pEVP5HPdLZYxc7
	 jtrJzU1pzBou/tqdWnX9l63V4t98/oCwdHCCny9soMoE5KR8yQjCgtZU1SBKjxzKgs
	 8UeqdIEGIQzWv7zmjElqXJ/+gPgKPVJhIQo/KjewhqMAY/5avGx3WJba5KnonWqxLK
	 qGhQmQEslwiiEz5DAJ5wm+ApDWj/6hh4yTlVOsEfjWMr8WwN4DYoKPXQwiB3QML11+
	 KjzyiwDJiJrBsdLOiAuIod7qerBmhtCMrLIzAokbt2xlN97ZWlcxPS3Obox0se3bre
	 4ERklnmGiEEkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E97A96104F;
	Tue, 30 Jun 2026 15:19:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 488B1ED6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46A20824C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yh8K-fTDqTxL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 10:59:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=rppt@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5644C82496
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5644C82496
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5644C82496
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:59:53 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 024B041711;
 Tue, 30 Jun 2026 10:59:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58BF31F000E9;
 Tue, 30 Jun 2026 10:59:48 +0000 (UTC)
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Date: Tue, 30 Jun 2026 13:59:24 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-b4-drivers-net-v1-5-672162a91f37@kernel.org>
References: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
In-Reply-To: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Brian Norris <briannorris@chromium.org>, 
 Edward Cree <ecree.xilinx@gmail.com>, 
 Francesco Dolcini <francesco@dolcini.it>, 
 Manish Chopra <manishc@marvell.com>, Mike Rapoport <rppt@kernel.org>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, b43-dev@lists.infradead.org, 
 intel-wired-lan@lists.osuosl.org, libertas-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-net-drivers@amd.com, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
X-Mailer: b4 0.15.2
X-Mailman-Approved-At: Tue, 30 Jun 2026 15:19:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782817192;
 bh=mIRRvN16ToAQb1e9zetNytMS/So59mpcGLgkkM3oXG4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc;
 b=hnXL8u7DMOm61ET2YFbf/5HG/UOM//MlyIUC1ghjFLWaMFK141AlmTM8FUJgs3RAn
 RX1cWUUYGaqEsVtUipC1zlFqCjMTLg3N2LPmKOGTSgsaGmsFPT+Ms8Vlw+IEhsK8Nj
 3MTBHNq+YJKJW9KJMD2Y+hb13ctB6uNi6q59EqSVoBp6J69Q9zlpe3ota+j8R5N6gq
 ayMXVIE+LyBCz80hv5zKhkjroxVtZ+1iMlZhIDQEhp7t/fmsh/MArdtmfrHvN29KrU
 LCfNiNAbWeNajuZRrNkEnu35SQ2y+pjxqnAqO8Pp9rb+Lq2NbBlVcpamK8CZv0r+EW
 YwTjWPvrvQzJw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=hnXL8u7D
Subject: [Intel-wired-lan] [PATCH net-next 5/8] mwifiex: debugfs: use
 kzalloc() to allocate formatting buffers
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:briannorris@chromium.org,m:ecree.xilinx@gmail.com,m:francesco@dolcini.it,m:manishc@marvell.com,m:rppt@kernel.org,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:b43-dev@lists.infradead.org,m:libertas-dev@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,gmail.com,dolcini.it,marvell.com,kernel.org,intel.com,lists.infradead.org,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 636506E5DBE

mwifiex debugfs functions allocate buffers for formatting debug output
text using get_zeroed_page().

These buffers can be allocated with kmalloc() as there's nothing special
about them to go directly to the page allocator.

kmalloc() provides a better API that does not require ugly casts and
kfree() does not need to know the size of the freed object.

Performance difference between kmalloc() and __get_free_pages() is not
measurable as both allocators take an object/page from a per-CPU list for
fast path allocations.

For the slow path the performance is anyway determined by the amount of
reclaim involved rather than by what allocator is used.

Replace use of get_zeroed_page() with kzalloc() and free_page() with
kfree().

Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 drivers/net/wireless/marvell/mwifiex/debugfs.c | 62 +++++++++++---------------
 1 file changed, 27 insertions(+), 35 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/debugfs.c b/drivers/net/wireless/marvell/mwifiex/debugfs.c
index 9deaf59dcb62..573768b6ad91 100644
--- a/drivers/net/wireless/marvell/mwifiex/debugfs.c
+++ b/drivers/net/wireless/marvell/mwifiex/debugfs.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/slab.h>
 
 #include "main.h"
 #include "11n.h"
@@ -67,8 +68,8 @@ mwifiex_info_read(struct file *file, char __user *ubuf,
 	struct net_device *netdev = priv->netdev;
 	struct netdev_hw_addr *ha;
 	struct netdev_queue *txq;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *p = (char *) page, fmt[64];
+	char *page = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	char *p = page, fmt[64];
 	struct mwifiex_bss_info info;
 	ssize_t ret;
 	int i = 0;
@@ -133,11 +134,10 @@ mwifiex_info_read(struct file *file, char __user *ubuf,
 	}
 	p += sprintf(p, "\n");
 
-	ret = simple_read_from_buffer(ubuf, count, ppos, (char *) page,
-				      (unsigned long) p - page);
+	ret = simple_read_from_buffer(ubuf, count, ppos, page, p - page);
 
 free_and_exit:
-	free_page(page);
+	kfree(page);
 	return ret;
 }
 
@@ -168,8 +168,8 @@ mwifiex_getlog_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *) file->private_data;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *p = (char *) page;
+	char *page = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	char *p = page;
 	ssize_t ret;
 	struct mwifiex_ds_get_stats stats;
 
@@ -220,11 +220,10 @@ mwifiex_getlog_read(struct file *file, char __user *ubuf,
 		     stats.bcn_miss_cnt);
 
 
-	ret = simple_read_from_buffer(ubuf, count, ppos, (char *) page,
-				      (unsigned long) p - page);
+	ret = simple_read_from_buffer(ubuf, count, ppos, page, p - page);
 
 free_and_exit:
-	free_page(page);
+	kfree(page);
 	return ret;
 }
 
@@ -247,8 +246,8 @@ mwifiex_histogram_read(struct file *file, char __user *ubuf,
 	ssize_t ret;
 	struct mwifiex_histogram_data *phist_data;
 	int i, value;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *p = (char *)page;
+	char *page = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	char *p = page;
 
 	if (!p)
 		return -ENOMEM;
@@ -309,11 +308,10 @@ mwifiex_histogram_read(struct file *file, char __user *ubuf,
 				i, value);
 	}
 
-	ret = simple_read_from_buffer(ubuf, count, ppos, (char *)page,
-				      (unsigned long)p - page);
+	ret = simple_read_from_buffer(ubuf, count, ppos, page, p - page);
 
 free_and_exit:
-	free_page(page);
+	kfree(page);
 	return ret;
 }
 
@@ -383,8 +381,8 @@ mwifiex_debug_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *) file->private_data;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *p = (char *) page;
+	char *page = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	char *p = page;
 	ssize_t ret;
 
 	if (!p)
@@ -396,11 +394,10 @@ mwifiex_debug_read(struct file *file, char __user *ubuf,
 
 	p += mwifiex_debug_info_to_buffer(priv, p, &info);
 
-	ret = simple_read_from_buffer(ubuf, count, ppos, (char *) page,
-				      (unsigned long) p - page);
+	ret = simple_read_from_buffer(ubuf, count, ppos, page, p - page);
 
 free_and_exit:
-	free_page(page);
+	kfree(page);
 	return ret;
 }
 
@@ -457,8 +454,7 @@ mwifiex_regrdwr_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *) file->private_data;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *) addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	int pos = 0, ret = 0;
 	u32 reg_value;
 
@@ -497,7 +493,7 @@ mwifiex_regrdwr_read(struct file *file, char __user *ubuf,
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 
 done:
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -511,8 +507,7 @@ mwifiex_debug_mask_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *)file->private_data;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)page;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	size_t ret = 0;
 	int pos = 0;
 
@@ -523,7 +518,7 @@ mwifiex_debug_mask_read(struct file *file, char __user *ubuf,
 			priv->adapter->debug_mask);
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 
-	free_page(page);
+	kfree(buf);
 	return ret;
 }
 
@@ -652,8 +647,7 @@ mwifiex_memrw_read(struct file *file, char __user *ubuf,
 		   size_t count, loff_t *ppos)
 {
 	struct mwifiex_private *priv = (void *)file->private_data;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	int ret, pos = 0;
 
 	if (!buf)
@@ -663,7 +657,7 @@ mwifiex_memrw_read(struct file *file, char __user *ubuf,
 			priv->mem_rw.value);
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -719,8 +713,7 @@ mwifiex_rdeeprom_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *) file->private_data;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *) addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	int pos, ret, i;
 	u8 value[MAX_EEPROM_DATA];
 
@@ -749,7 +742,7 @@ mwifiex_rdeeprom_read(struct file *file, char __user *ubuf,
 done:
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 out_free:
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -820,8 +813,7 @@ mwifiex_hscfg_read(struct file *file, char __user *ubuf,
 		   size_t count, loff_t *ppos)
 {
 	struct mwifiex_private *priv = (void *)file->private_data;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	int pos, ret;
 	struct mwifiex_ds_hs_cfg hscfg;
 
@@ -836,7 +828,7 @@ mwifiex_hscfg_read(struct file *file, char __user *ubuf,
 
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 

-- 
2.53.0

