Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B1A261485
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 18:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D99D72E0EE;
	Tue,  8 Sep 2020 16:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9iGYQF6vGUQ7; Tue,  8 Sep 2020 16:25:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D7A92E0F2;
	Tue,  8 Sep 2020 16:25:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2434D1BF419
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 16:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1A2D6872EE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 16:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uu7YiRdL3kEq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 16:23:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6968F82124
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 16:23:19 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id t20so12353692qtr.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Sep 2020 09:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K5Evq+uTbM4yLIZD5njkPq4LQ+o2UWYUAtT6x7n9zzY=;
 b=b8XlRhZM0nQYdZDtTmmJqoRSSCLrq5Tf1z6fz22S7BgxJx7oiBUDvz8CG8BVD03LGJ
 /Hqpko9dlT/YILpdP7W81LAHXAsYE7VD69DbJEjcfSbnt7/dJSukr+Q4XcEsM1xdRW8k
 6SQ+7dbUdg72bZISIzIPBTTgklLK6CM60qsi/XIxt/0J63b3U0hYGs6n9VDgiuWoljLk
 wqNTj7y994lcrXpz+r/X1x/I6pZo8Q6yl6ePVF+FolPbXjcZZUPdtvmIGt49Pm5n6o68
 EI28Qr3lAckzbqLxuWfLF8YM9nAR+JmSpvBO+1XVFB7uX02Wzlqhoc58PmhiOrH8w7HM
 yGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K5Evq+uTbM4yLIZD5njkPq4LQ+o2UWYUAtT6x7n9zzY=;
 b=aH3pbv0jGN7DvZoE3Xo948FAa/gS+eBm9VEvaIRcDeDQkOoI4BHEdz73hQoitIqBPR
 fsJIvCipzpmB2XHyblH/9Mhle7YFgO6KmFTRByIVdb7nxKXTdnSkL7CLIebf4Lrz081H
 ZEVW0x0fueiIsAIJD8PQGjrJl+6gXNI80PBvPug74nM5QSJWIt+IFmkcGNypTPwX+REX
 eqNR8RdU1KkMKbTbl/IPr/Bf0VqbJKLwZKtYFlUrOnQqKi0kkEwMhDGemdWz95pNKIyG
 d6xuKJTgbDAokLHUcDNLhU+/TZ9XakmnoOBB3z8VUDYSYpUAG8pQwGOjuQr6utEKhfGj
 FGzQ==
X-Gm-Message-State: AOAM530m3CORReCOeMO/IBR5Iys1LJolsI/NjwZxd67tpTeXfCDSZVrG
 weJ8sPMV75Jt3EiRK836v9U=
X-Google-Smtp-Source: ABdhPJzZAn3gEyTZN6G+TEQsP9eRJ97UWpa7Yi39ANb1CJ8Jzcek+peqEBJX2lfkWIxVJHp9CNGryw==
X-Received: by 2002:ac8:66da:: with SMTP id m26mr880116qtp.111.1599582198312; 
 Tue, 08 Sep 2020 09:23:18 -0700 (PDT)
Received: from tong-desktop.local ([2601:5c0:c100:b9d:393c:836a:3c13:11a6])
 by smtp.googlemail.com with ESMTPSA id p205sm13879596qke.2.2020.09.08.09.23.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 09:23:17 -0700 (PDT)
From: Tong Zhang <ztong0001@gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue,  8 Sep 2020 12:22:31 -0400
Message-Id: <20200908162231.4592-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 08 Sep 2020 16:25:03 +0000
Subject: [Intel-wired-lan] [PATCH] e1000: do not panic on malformed rx_desc
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
Cc: ztong0001@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

length may be corrupted in rx_desc and lead to panic, so check the
sanity before passing it to skb_put

[  167.667701] skbuff: skb_over_panic: text:ffffffffb1e32cc1 len:60224 put:60224 head:ffff888055ac5000 data:ffff888055ac5040 tail:0xeb80 end:0x6c0 dev:e
th0
[  167.668429] ------------[ cut here ]------------
[  167.668661] kernel BUG at net/core/skbuff.c:109!
[  167.668910] invalid opcode: 0000 [#1] SMP DEBUG_PAGEALLOC KASAN PTI
[  167.669220] CPU: 1 PID: 170 Comm: sd-resolve Tainted: G        W         5.8.0+ #1
[  167.670161] RIP: 0010:skb_panic+0xc4/0xc6
[  167.670363] Code: 89 f0 48 c7 c7 60 f2 de b2 55 48 8b 74 24 18 4d 89 f9 56 48 8b 54 24 18 4c 89 e6 52 48 8b 44 24 18 4c 89 ea 50 e8 31 c5 2a ff <0f>
0b 4c 8b 64 24 18 e8 f1 b4 48 ff 48 c7 c1 00 fc de b2 44 89 ee
[  167.671272] RSP: 0018:ffff88806d109c68 EFLAGS: 00010286
[  167.671527] RAX: 000000000000008c RBX: ffff888065e9af40 RCX: 0000000000000000
[  167.671878] RDX: 1ffff1100da24c91 RSI: 0000000000000008 RDI: ffffed100da21380
[  167.672227] RBP: ffff88806bde4000 R08: 000000000000008c R09: ffffed100da25cfb
[  167.672583] R10: ffff88806d12e7d7 R11: ffffed100da25cfa R12: ffffffffb2defc40
[  167.672931] R13: ffffffffb1e32cc1 R14: 000000000000eb40 R15: ffff888055ac5000
[  167.673286] FS:  00007fc5f5375700(0000) GS:ffff88806d100000(0000) knlGS:0000000000000000
[  167.673681] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  167.673973] CR2: 0000000000cb3008 CR3: 0000000063d36000 CR4: 00000000000006e0
[  167.674330] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  167.674677] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  167.675035] Call Trace:
[  167.675168]  <IRQ>
[  167.675315]  ? e1000_clean_rx_irq+0x311/0x630
[  167.687459]  skb_put.cold+0x1f/0x1f
[  167.687637]  e1000_clean_rx_irq+0x311/0x630
[  167.687852]  e1000e_poll+0x19a/0x4d0
[  167.688038]  ? e1000_watchdog_task+0x9d0/0x9d0
[  167.688262]  ? credit_entropy_bits.constprop.0+0x6f/0x1c0
[  167.688527]  net_rx_action+0x26e/0x650

Signed-off-by: Tong Zhang <ztong0001@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 1e6ec081fd9d..29e2ecb0358a 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -4441,8 +4441,13 @@ static bool e1000_clean_rx_irq(struct e1000_adapter *adapter,
 			 */
 			length -= 4;
 
-		if (buffer_info->rxbuf.data == NULL)
+		if (buffer_info->rxbuf.data == NULL)  {
+			/* check length sanity */
+			if (skb->tail + length > skb->end) {
+				length = skb->end - skb->tail;
+			}
 			skb_put(skb, length);
+		}
 		else /* copybreak skb */
 			skb_trim(skb, length);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
