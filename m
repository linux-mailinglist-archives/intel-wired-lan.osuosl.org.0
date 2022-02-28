Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CADA4C6FF7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 15:48:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C908060E6D;
	Mon, 28 Feb 2022 14:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M4Fyx6Z2e_Gv; Mon, 28 Feb 2022 14:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5E0860BBC;
	Mon, 28 Feb 2022 14:48:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D3701BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09610813B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TbRLLBAd9Xz7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 11:09:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4356C813A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:09:01 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id a8so23987872ejc.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 03:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NwvvEiJPPM0SG7ZI4yc03tHRsjcGU4DYrm0+p7QW2+g=;
 b=XoHp2vZs5sXnnQm8jTsL06JwdjgH4Z1Am+qeboNHSyU/csHp7G8mKHTnYwT7vMJf3q
 1zZobpdX4BxBQ2erAJx74EzSCDXfVaAB33jAX9ZekfWtpz9xLL4KIzz7DciQBlIBY9DK
 vi6LJyw6u5UaEjT8CWPzRGPwv8GzX6oWgjgvygChKW8zu7PwVtsUQz/kuHu5rW/3vaBt
 P3mcu2gbh7uG62xQrliOtXiVl+brL2WoHfh7VHyAXnwazE3NNCXTKdQujGPQMoLCoB+H
 4TwL3ENhlSsI5tK0hgbUY+rfbxgFEyt/dohDr5V+g2PZ9mAGfyjh/75qZVaBOXbUEFp6
 QPtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NwvvEiJPPM0SG7ZI4yc03tHRsjcGU4DYrm0+p7QW2+g=;
 b=iQedPC1HndKO5zcmSv231UaqMPYczPmouK9yBZdVCxM2cta3RICHMBGjbsrdh7vvr0
 v34NT75Pfy2CKVCZ2lwuoK0ypUzGaERJLXRFB52mYXIenDGI1O1LIxWPA1O3U0FKgVNA
 bYgjZ4KeT12qgZOMACKSuN+E9DTNVLQDZfUaR7THyXyHHkUXSAPiU7yh33hVsClPCSMS
 mo1Dh7RNUUd2DXu+DMd7hEmpbBBO0xCylUAsAPskgF4BUZFuStX1uFCIzbvzXKKM8gPi
 e4vCbqaXsj1hSMl2kg3iZeafSZRmuFU3xYLsHdNwIKtHcinauuUCZ/iqBEwaEf4JC/53
 AnPQ==
X-Gm-Message-State: AOAM531dsCiPkb54uRUOLxsq+eGIaU78osmEKjX5nu91Ty9FIzCvE1Tx
 V5rZSjUbAvK0rMh0oe6MiME=
X-Google-Smtp-Source: ABdhPJwx6JZK1Sd067eYUFaKDGIuHgaxlGXhzFGfLUQYCLtFq3NCzAqvSFrK3I6DGGTf6F+6FgXuew==
X-Received: by 2002:a17:906:2608:b0:6c9:b248:4dcf with SMTP id
 h8-20020a170906260800b006c9b2484dcfmr14572317ejc.320.1646046539415; 
 Mon, 28 Feb 2022 03:08:59 -0800 (PST)
Received: from localhost.localdomain (dhcp-077-250-038-153.chello.nl.
 [77.250.38.153]) by smtp.googlemail.com with ESMTPSA id
 z22-20020a17090655d600b006d229436793sm4209049ejp.223.2022.02.28.03.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 03:08:59 -0800 (PST)
From: Jakob Koschel <jakobkoschel@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Feb 2022 12:08:20 +0100
Message-Id: <20220228110822.491923-5-jakobkoschel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228110822.491923-1-jakobkoschel@gmail.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:48:22 +0000
Subject: [Intel-wired-lan] [PATCH 4/6] drivers: remove unnecessary use of
 list iterator variable
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

When list_for_each_entry() completes the iteration over the whole list
without breaking the loop, the iterator value will *always* be a bogus
pointer computed based on the head element.

To avoid type confusion use the actual list head directly instead of last
iterator value.

Signed-off-by: Jakob Koschel <jakobkoschel@gmail.com>
---
 drivers/dma/dw-edma/dw-edma-core.c             | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 3 ++-
 drivers/net/wireless/ath/ath6kl/htc_mbox.c     | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/dw-edma/dw-edma-core.c b/drivers/dma/dw-edma/dw-edma-core.c
index 468d1097a1ec..7883c4831857 100644
--- a/drivers/dma/dw-edma/dw-edma-core.c
+++ b/drivers/dma/dw-edma/dw-edma-core.c
@@ -136,7 +136,7 @@ static void dw_edma_free_burst(struct dw_edma_chunk *chunk)
 	}

 	/* Remove the list head */
-	kfree(child);
+	kfree(chunk->burst);
 	chunk->burst = NULL;
 }

@@ -156,7 +156,7 @@ static void dw_edma_free_chunk(struct dw_edma_desc *desc)
 	}

 	/* Remove the list head */
-	kfree(child);
+	kfree(desc->chunk);
 	desc->chunk = NULL;
 }

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 091f36adbbe1..c0ea9dbc4ff6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3963,7 +3963,8 @@ static void __i40e_reprogram_flex_pit(struct i40e_pf *pf,
 	 * correctly, the hardware will disable flexible field parsing.
 	 */
 	if (!list_empty(flex_pit_list))
-		last_offset = list_prev_entry(entry, list)->src_offset + 1;
+		last_offset = list_entry(flex_pit_list->prev,
+					 struct i40e_flex_pit, list)->src_offset + 1;

 	for (; i < 3; i++, last_offset++) {
 		i40e_write_rx_ctl(&pf->hw,
diff --git a/drivers/net/wireless/ath/ath6kl/htc_mbox.c b/drivers/net/wireless/ath/ath6kl/htc_mbox.c
index e3874421c4c0..cf5b05860799 100644
--- a/drivers/net/wireless/ath/ath6kl/htc_mbox.c
+++ b/drivers/net/wireless/ath/ath6kl/htc_mbox.c
@@ -104,7 +104,7 @@ static void ath6kl_credit_init(struct ath6kl_htc_credit_info *cred_info,
 	 * it use list_for_each_entry_reverse to walk around the whole ep list.
 	 * Therefore assign this lowestpri_ep_dist after walk around the ep_list
 	 */
-	cred_info->lowestpri_ep_dist = cur_ep_dist->list;
+	cred_info->lowestpri_ep_dist = *ep_list;

 	WARN_ON(cred_info->cur_free_credits <= 0);

--
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
