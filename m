Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0EB4B19EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 00:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CF7E401B7;
	Thu, 10 Feb 2022 23:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EeB06eDMF5we; Thu, 10 Feb 2022 23:58:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1298401B1;
	Thu, 10 Feb 2022 23:58:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A346C1BF487
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F8D1828F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CyqmtuO6hhv1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Feb 2022 23:58:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com
 [IPv6:2607:f8b0:4864:20::d2e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90D83827C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 23:58:06 +0000 (UTC)
Received: by mail-io1-xd2e.google.com with SMTP id p63so9437324iod.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=wCe8l6BzIf39UXY71HrtaLDcF4n6vO18YFKJdpw4cXQ=;
 b=fI2SwxxZTVMqpxGhquBSWDyfIQ9U9DsAgpF9gRFwhpoAula9Vdzc1QlFVFHC1U6hwI
 ABtDL5EahVrOMWQOjSc1cxNHQioV9menjUMsuOH/Cnz8hecA97jxN6sPuk95u7nVfkQV
 v9wtNrSgpkd8oKfTH9OUi7v/x70ZavMozIl54AC5RULi2izx6U5HggOLYqF4OGCV8xvC
 S2cFxQ+81wUoSrp358Cp/BnH7gOLObY9fktA/0i7ZL+H0LeU4Gh8hM6p7+fRhxCwSkx6
 mo4eV4AeXA5Mg/ksXKxD2Mw7++3/aR12BIxW+0jlVA0zfkk45kSAnE0jXh1mlQ8+k9e9
 HVjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wCe8l6BzIf39UXY71HrtaLDcF4n6vO18YFKJdpw4cXQ=;
 b=FFoEtHMBJD+wrjuDXrdudR8XTNvGfhUMLcNzaqLV3ZRpkWRjpE2luopDCY5oLoS1JA
 F/c8LhNmnjYD6NFQSYuIvx2SyUWzNx863WMcatszAGcntQjK9FIYdkTC5fmyF2k9TL1t
 8lRPT4I/xOSGAC6r+IpGMiEn4Bn9ACQQSfJBWcfw8Ediq2Dn60dgf9+FqhLhrXuw5RTX
 axEZXxVgIMgqMkRKqXQlOPtFNTU+daE8wJGoUY2vmPv3d1glEVh0iXrzVIe1LzfU59ue
 jjih2ispt4aUFgDepxgMuyCJW4fAZZzDmp8pfSC7T2NxaksAyhoyQmh7kf1OsIONk3nq
 yYxA==
X-Gm-Message-State: AOAM531SPSYy38hsUkhQFyZpC6F5N8D/alyQ2yumEeVHPUPGdfGQlZLB
 AEq7otrmykKKk9lFS+diF2A=
X-Google-Smtp-Source: ABdhPJyy7xzUjWAsxQE/FjXnUixngXgx0pMBOB0uizulIEe8wbp5Hbd+lionqAo02gVkXrx+e9ndLw==
X-Received: by 2002:a05:6602:492:: with SMTP id
 y18mr4939747iov.95.1644537485609; 
 Thu, 10 Feb 2022 15:58:05 -0800 (PST)
Received: from localhost ([12.28.44.171])
 by smtp.gmail.com with ESMTPSA id t6sm12773865iov.39.2022.02.10.15.58.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Feb 2022 15:58:05 -0800 (PST)
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
Date: Thu, 10 Feb 2022 14:49:14 -0800
Message-Id: <20220210224933.379149-31-yury.norov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220210224933.379149-1-yury.norov@gmail.com>
References: <20220210224933.379149-1-yury.norov@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 30/49] ixgbe: replace bitmap_weight with
 bitmap_weight_eq
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
as soon as condition is (or can't be) met.

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
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
