Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF61E261484
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 18:25:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 543F686C18;
	Tue,  8 Sep 2020 16:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id io3SzxFit7Cj; Tue,  8 Sep 2020 16:25:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8933186BB0;
	Tue,  8 Sep 2020 16:25:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 703B11BF419
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 16:23:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 690A52E0EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 16:23:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtcc-g36zTNG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 16:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 36FFC2C35C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 16:23:48 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id w16so15835785qkj.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Sep 2020 09:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fG9sh+VJ6ct/M0MnobHjuUiWeXeXy8C/WxdALo1qBnU=;
 b=cE8tyE/9HSYIG8dk3jsI1IxOkrH/eptnzh4Gvmdc/AbZVFA6bAqu5dG7OZZmqU6x+s
 uhEaBckRV9fI7izootzbkWI0/Gu7bWIsC6MqvRZE5TaNFrX5VjIbTHQC+QtCS+9bnfgH
 mWDRlS1vbqKv33sfcSbLJZVY52ns82Zb4XwWKLKm78ai0sTE3lRnZFLYEriGvssZvDOm
 HbcmgN+ualzlwRwasHwef0u4ab5YywzT8VwK/+uwiTnAH7YuKkJu7060G2eX6yNDF/3e
 HlPXnSqpoOLlI1BCJ172oG2mcfpscGHHCp8YE53Jxjh+ZfdxNN4mtPvU9HsdBuULEHLt
 uO3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fG9sh+VJ6ct/M0MnobHjuUiWeXeXy8C/WxdALo1qBnU=;
 b=DEM1UzSK28x8wk7+NqQqLwrWsYyqwBByKcaCp6JF9eWNucQYDmnVfe//fSDUzrCtqN
 qZB0EE/5iuguIsHv5O/MdCc5qZcKxYjCSSGlQLLlVjSf528YJIHGsSMICcTVVws7smXC
 Hi4nggQtUiViy6eJfOm/d7h4VPn9F0zLUTFrqt7gVEyIKx2F+p4pgtG5vXMUVQJK3MWT
 34EmEWFml5+YGBSIDYO4AOwjB9bEqyQz7HXKS740STDPH30Lpq+0ncJrsHUkSDI/ctNN
 lbCitZ+ZHf3evj2F2OZNA7owD/3xc4uY2+vyzgnvBrBgpy/vSIGpWHVWwMb9shtgYYSU
 Ssgw==
X-Gm-Message-State: AOAM531p/IrHhd0LOJxm3MzpTpEfsJez7MlWNtkdzVNpO0EB8DYbWJoG
 6YWif6+5hMBY7CyxLqXu254=
X-Google-Smtp-Source: ABdhPJxpfm3QpXHAuIeFeYJLCfoUzaXZ4W3uRDAZdu3BeDGMwUmXEx9JOTLuway4RWSv8KI1muehmw==
X-Received: by 2002:a37:62c3:: with SMTP id w186mr803137qkb.227.1599582227058; 
 Tue, 08 Sep 2020 09:23:47 -0700 (PDT)
Received: from tong-desktop.local ([2601:5c0:c100:b9d:393c:836a:3c13:11a6])
 by smtp.googlemail.com with ESMTPSA id z3sm6186348qkf.92.2020.09.08.09.23.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 09:23:46 -0700 (PDT)
From: Tong Zhang <ztong0001@gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue,  8 Sep 2020 12:23:30 -0400
Message-Id: <20200908162330.4681-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 08 Sep 2020 16:25:03 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: do not panic on malformed rx_desc
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

[  103.840572] skbuff: skb_over_panic: text:ffffffff8f432cc1 len:61585 put:61585 head:ffff88805642b800 data:ffff88805642b840 tail:0xf0d1 end:0x6c0 dev:e
th0
[  103.841283] ------------[ cut here ]------------
[  103.841515] kernel BUG at net/core/skbuff.c:109!
[  103.841749] invalid opcode: 0000 [#1] SMP DEBUG_PAGEALLOC KASAN PTI
[  103.842063] CPU: 1 PID: 276 Comm: ping Tainted: G        W         5.8.0+ #4
[  103.842857] RIP: 0010:skb_panic+0xc4/0xc6
[  103.843022] Code: 89 f0 48 c7 c7 60 f2 3e 90 55 48 8b 74 24 18 4d 89 f9 56 48 8b 54 24 18 4c 89 e6 52 48 8b 44 24 18 4c 89 ea 50 e8 01 c5 2a ff <0f>
0b 4c 8b 64 24 18 e8 c1 b4 48 ff 48 c7 c1 e0 fc 3e 90 44 89 ee
[  103.843766] RSP: 0018:ffff88806d109c58 EFLAGS: 00010282
[  103.843976] RAX: 000000000000008c RBX: ffff8880683407c0 RCX: 0000000000000000
[  103.844262] RDX: 1ffff1100da24c91 RSI: 0000000000000008 RDI: ffffed100da2137e
[  103.844548] RBP: ffff88806bdcc000 R08: 000000000000008c R09: ffffed100da25cfb
[  103.844834] R10: ffff88806d12e7d7 R11: ffffed100da25cfa R12: ffffffff903efd20
[  103.845123] R13: ffffffff8f432cc1 R14: 000000000000f091 R15: ffff88805642b800
[  103.845410] FS:  00007efcd06852c0(0000) GS:ffff88806d100000(0000) knlGS:0000000000000000
[  103.845734] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  103.845966] CR2: 00007efccf94f8dc CR3: 0000000064810000 CR4: 00000000000006e0
[  103.846254] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  103.846539] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  103.846823] Call Trace:
[  103.846925]  <IRQ>
[  103.847013]  ? e1000_clean_rx_irq+0x311/0x630
[  103.847190]  skb_put.cold+0x2b/0x4d
[  103.847334]  e1000_clean_rx_irq+0x311/0x630

Signed-off-by: Tong Zhang <ztong0001@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 664e8ccc88d2..f12bd00b2dbf 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1047,6 +1047,10 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
 			}
 			/* else just continue with the old one */
 		}
+		/* check length sanity */
+		if (skb->tail + length > skb->end) {
+			length = skb->end - skb->tail;
+		}
 		/* end copybreak code */
 		skb_put(skb, length);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
