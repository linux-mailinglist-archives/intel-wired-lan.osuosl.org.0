Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B89B84C6FFA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 15:48:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48B16410CA;
	Mon, 28 Feb 2022 14:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upLpO271NUim; Mon, 28 Feb 2022 14:48:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4914B409A0;
	Mon, 28 Feb 2022 14:48:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BFD6E1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC1E5813FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WEfy2IVSs_J3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 11:09:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7896813A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:09:02 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id d10so23961950eje.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 03:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ewSqtxWpAEouzx42J3KLaoNJ3zRCYps/nc7KO/73VjI=;
 b=NJzfXKcN7hL1Nl33p4E04eSCSKXsmXm0guAXz3+luhQpanQnRU99MCp2hnFUKYaL+B
 1x361O+pkC4o39HmFVweecOA5EyrbgRoo6hBpKoe+ZK3uwuMgKcjXUUzcyKnqq4Ihz7Y
 0pE7mGFU6qwm5nlEaQI6CtIcQNt/P0yiVszOfwFWGIKlTpST4oUB8Axjb2KGdfFCf6oM
 BF7gos7RIFK+C7zFe1BBqWlnyj9ABXdIe2RTMFKfzCdWuqPXqav1BQyfcB8KfJDsFPFC
 rwx0y6HLf2zquaEOFfVg855ZoIJbHt3hF+DdFMjnEF9CZ4aqYu3RYVbCj5tslcC60Xqy
 JDWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ewSqtxWpAEouzx42J3KLaoNJ3zRCYps/nc7KO/73VjI=;
 b=LmWkjUOJQ0KVU93OcyLEujJ7oklzdLneZT0jN/hBRuATYITztfvnZVJE7+vOKBKGNC
 nRlW1VZ1ME1YtbYOON2BDy1ZQ3gzpd1qZSKQM27qD0lm7v02QjYGyuiP9hVxmKK1/RwN
 Qx/nJBgZ16X6kLPhSWi57ax2cZsye/mckHlmSRjD7cfal5bnJsJQMu+kVTUW/RtgDa97
 ONcotB3jxTxXAJ4ppg/MeVuBhsBkkE0a9SUMGyp85chdOIJ39Hi1jo42AMWA1mkBKQWt
 ylqAbB3hAhihe5EyIMsXrAN8erWyxtuBpc5z0ugGmeDs+SPK7sOtrpJe6usem/bIKcZq
 kWuw==
X-Gm-Message-State: AOAM531ofT2ooel4lihNf1NIyz9C8Na7MvYCyjTEuuYnUifkupkMBI5S
 6tWwrCYypvr4dVpuE7KchME=
X-Google-Smtp-Source: ABdhPJzNtnbGg8Nz3uHKd7Xw6L7mCtzAWYaq4yun9pZXXpwsqc9NwfSvsBrijeUqxIoEXwfdb0F3Mg==
X-Received: by 2002:a17:906:26da:b0:6d6:da2e:d338 with SMTP id
 u26-20020a17090626da00b006d6da2ed338mr451651ejc.700.1646046541112; 
 Mon, 28 Feb 2022 03:09:01 -0800 (PST)
Received: from localhost.localdomain (dhcp-077-250-038-153.chello.nl.
 [77.250.38.153]) by smtp.googlemail.com with ESMTPSA id
 z22-20020a17090655d600b006d229436793sm4209049ejp.223.2022.02.28.03.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 03:09:00 -0800 (PST)
From: Jakob Koschel <jakobkoschel@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Feb 2022 12:08:21 +0100
Message-Id: <20220228110822.491923-6-jakobkoschel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228110822.491923-1-jakobkoschel@gmail.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:48:22 +0000
Subject: [Intel-wired-lan] [PATCH 5/6] treewide: remove dereference of list
 iterator after loop body
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
Cc: alsa-devel@alsa-project.org, linux-aspeed@lists.ozlabs.org,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, dri-devel@lists.freedesktop.org,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, amd-gfx@lists.freedesktop.org,
 samba-technical@lists.samba.org, linux1394-devel@lists.sourceforge.net,
 drbd-dev@lists.linbit.com, linux-arch <linux-arch@vger.kernel.org>,
 linux-cifs@vger.kernel.org, kvm@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev, "Bos,
 H.J." <h.j.bos@vu.nl>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-sgx@vger.kernel.org,
 linux-block@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The list iterator variable will be a bogus pointer if no break was hit.
Dereferencing it could load *any* out-of-bounds/undefined value
making it unsafe to use that in the comparision to determine if the
specific element was found.

This is fixed by using a separate list iterator variable for the loop
and only setting the original variable if a suitable element was found.
Then determing if the element was found is simply checking if the
variable is set.

Signed-off-by: Jakob Koschel <jakobkoschel@gmail.com>
---
 drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 11 +++++++----
 drivers/scsi/wd719x.c                          | 12 ++++++++----
 fs/f2fs/segment.c                              |  9 ++++++---
 3 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
index 57199be082fd..c56cd9e59a66 100644
--- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
+++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
@@ -471,20 +471,23 @@ nvkm_pstate_new(struct nvkm_clk *clk, int idx)
 static int
 nvkm_clk_ustate_update(struct nvkm_clk *clk, int req)
 {
-	struct nvkm_pstate *pstate;
+	struct nvkm_pstate *pstate = NULL;
+	struct nvkm_pstate *tmp;
 	int i = 0;

 	if (!clk->allow_reclock)
 		return -ENOSYS;

 	if (req != -1 && req != -2) {
-		list_for_each_entry(pstate, &clk->states, head) {
-			if (pstate->pstate == req)
+		list_for_each_entry(tmp, &clk->states, head) {
+			if (tmp->pstate == req) {
+				pstate = tmp;
 				break;
+			}
 			i++;
 		}

-		if (pstate->pstate != req)
+		if (!pstate)
 			return -EINVAL;
 		req = i;
 	}
diff --git a/drivers/scsi/wd719x.c b/drivers/scsi/wd719x.c
index 1a7947554581..be270ed8e00d 100644
--- a/drivers/scsi/wd719x.c
+++ b/drivers/scsi/wd719x.c
@@ -684,11 +684,15 @@ static irqreturn_t wd719x_interrupt(int irq, void *dev_id)
 	case WD719X_INT_SPIDERFAILED:
 		/* was the cmd completed a direct or SCB command? */
 		if (regs.bytes.OPC == WD719X_CMD_PROCESS_SCB) {
-			struct wd719x_scb *scb;
-			list_for_each_entry(scb, &wd->active_scbs, list)
-				if (SCB_out == scb->phys)
+			struct wd719x_scb *scb = NULL;
+			struct wd719x_scb *tmp;
+
+			list_for_each_entry(tmp, &wd->active_scbs, list)
+				if (SCB_out == tmp->phys) {
+					scb = tmp;
 					break;
-			if (SCB_out == scb->phys)
+				}
+			if (scb)
 				wd719x_interrupt_SCB(wd, regs, scb);
 			else
 				dev_err(&wd->pdev->dev, "card returned invalid SCB pointer\n");
diff --git a/fs/f2fs/segment.c b/fs/f2fs/segment.c
index 1dabc8244083..a3684385e04a 100644
--- a/fs/f2fs/segment.c
+++ b/fs/f2fs/segment.c
@@ -356,16 +356,19 @@ void f2fs_drop_inmem_page(struct inode *inode, struct page *page)
 	struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 	struct list_head *head = &fi->inmem_pages;
 	struct inmem_pages *cur = NULL;
+	struct inmem_pages *tmp;

 	f2fs_bug_on(sbi, !page_private_atomic(page));

 	mutex_lock(&fi->inmem_lock);
-	list_for_each_entry(cur, head, list) {
-		if (cur->page == page)
+	list_for_each_entry(tmp, head, list) {
+		if (tmp->page == page) {
+			cur = tmp;
 			break;
+		}
 	}

-	f2fs_bug_on(sbi, list_empty(head) || cur->page != page);
+	f2fs_bug_on(sbi, !cur);
 	list_del(&cur->list);
 	mutex_unlock(&fi->inmem_lock);

--
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
