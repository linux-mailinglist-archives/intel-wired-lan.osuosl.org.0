Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA1D497739
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 03:24:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6922A4091C;
	Mon, 24 Jan 2022 02:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tq1HBpdklCF9; Mon, 24 Jan 2022 02:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7819A4091A;
	Mon, 24 Jan 2022 02:24:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 482201BF329
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jan 2022 18:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33B58408CD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jan 2022 18:41:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id teP4Hk_psdbm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Jan 2022 18:41:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B09E7408C4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jan 2022 18:41:25 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 g9-20020a17090a67c900b001b4f1d71e4fso14258231pjm.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jan 2022 10:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0F414qr4KcwROxp4P4//QuZXhV1PvM+EIvGUM77ZnYw=;
 b=qPUDOzVrFgRR0ZojdlGaeaiqiXmK1Fu7gnq6Kpjzn0e7w+PMTD2rzLEY8hZ14TTY23
 4uLU94junvHCzOpoqV1nqyFTW7bW5WJ8MgQ3l0T7cIVcpjhLRMaQMwidSTAEeMc7wt5B
 mVdwcYCTxWItcClOk4Zb1ar8U1kfFa/IA6Lr/AXWP3N7L2IA2kJFPnunibOS9tsFcpmc
 MChfOb+HBpNfCcx0obaVEgTnIWGgoow/wT1sQcndztEU/Zs4BKOT2XPqAkVgErnwmNNG
 5eSnp6wZHkDMC25WBNoSmDV9Yy0bcHKDPTZE5N2I/Wy5EjHfW+m/LVbYton0nC1MmJP6
 rWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0F414qr4KcwROxp4P4//QuZXhV1PvM+EIvGUM77ZnYw=;
 b=ZdhJSiqMSnQl+4ZWoupmiUV39UEin+EFGEiWHMhG6YDAD6ds+xayNbMxAWD8GRA/DB
 yuG0O/Nh+osKA04VtAO2RVzaJ75I5PnwyjOYcNeozGRyNHkxU3gD/RU+90IuqfVVGBNy
 1XAXRaEjSiYsLrWLcDRwKQmpR1YcegKALfRESIhycOigCChjfmKXMs0LoY9wkCqJIQ8+
 9W5ET5Jny6ZnhNb8c7FSwJIZatqrkOO37esAQ1eNGCfHnyXGxNQF9RTeXWEGErVFI3jy
 96czOIlKSKD6QHdeO9pPGM0rZ7KhL5xdkIlgnQKHKvzk5gWVhnZyvGtjwq2nqsdtG+Wf
 Z1zA==
X-Gm-Message-State: AOAM532J9lVlozfi73KKI9klr7gLv8EnaCk9rPkRXGELDocqxxtE5n9r
 VkH5/BpacAqsBJpjz1ICygs=
X-Google-Smtp-Source: ABdhPJxKtLbZ+fS2qLQ72Hx4NHY5QVMT/SLF2EGamemsOG+fTKuUk8ZzUBc47pVyDM8deb3IguBF+w==
X-Received: by 2002:a17:90b:1b0d:: with SMTP id
 nu13mr7887564pjb.24.1642963285131; 
 Sun, 23 Jan 2022 10:41:25 -0800 (PST)
Received: from localhost (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id s13sm13234564pfu.0.2022.01.23.10.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 10:41:24 -0800 (PST)
From: Yury Norov <yury.norov@gmail.com>
To: Yury Norov <yury.norov@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 David Laight <David.Laight@aculab.com>, Joe Perches <joe@perches.com>,
 Dennis Zhou <dennis@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 Nicholas Piggin <npiggin@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Alexey Klimov <aklimov@redhat.com>, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Sun, 23 Jan 2022 10:39:02 -0800
Message-Id: <20220123183925.1052919-32-yury.norov@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220123183925.1052919-1-yury.norov@gmail.com>
References: <20220123183925.1052919-1-yury.norov@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 24 Jan 2022 02:23:48 +0000
Subject: [Intel-wired-lan] [PATCH 31/54] net: ethernet: replace
 bitmap_weight with bitmap_weight_eq for intel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ixgbe_disable_sriov calls bitmap_weight() to compare the weight of bitmap
with a given number. We can do it more efficiently with bitmap_weight_eq
because conditional bitmap_weight may stop traversing the bitmap earlier,
as soon as condition is met.

Signed-off-by: Yury Norov <yury.norov@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 214a38de3f41..35297d8a488b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -246,7 +246,7 @@ int ixgbe_disable_sriov(struct ixgbe_adapter *adapter)
 #endif
 
 	/* Disable VMDq flag so device will be set in VM mode */
-	if (bitmap_weight(adapter->fwd_bitmask, adapter->num_rx_pools) == 1) {
+	if (bitmap_weight_eq(adapter->fwd_bitmask, adapter->num_rx_pools, 1)) {
 		adapter->flags &= ~IXGBE_FLAG_VMDQ_ENABLED;
 		adapter->flags &= ~IXGBE_FLAG_SRIOV_ENABLED;
 		rss = min_t(int, ixgbe_max_rss_indices(adapter),
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
