Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D022B3FD7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 10:35:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A1B08671A;
	Mon, 16 Nov 2020 09:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o3fOy822AKDQ; Mon, 16 Nov 2020 09:35:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19E5C86755;
	Mon, 16 Nov 2020 09:35:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D11B21BF470
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 878D520449
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2hvWXd--WeGi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 09:35:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 16CE120104
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:18 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id r9so24185515lfn.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 01:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0DzanoXf+Rurog+Hlx/WrxuOA7D1b5nHXR/Q/et4xVw=;
 b=KcQ7lnr8ME1nWv3TXTyZasG6grf5LR8dXvDvvzOYiTKpVKG3mrqLOpACgb43kUJUX9
 0gKatk6sjy2mFQ83pHil7qZqgC5JbIwhwoaaJcNjHFkH4k42ya+84Z21vap3um0iQkzn
 BBgTX6l4LgjInzb7OS5eL8kAi1g2KACnnAsr/0TIcUNAtBQO8/dxInGsbhHygfPISj+c
 oze/b+H0YKcvVPWW16wizVlpsvrcQz4orb2Xnrj3bXsjLKGUxYE9unLHvu6EA/mCoVVt
 nbRLbHP0hn9Ca8MB3BXa9lXM/9p760WgDYXc1YwxsoGa+cfsh27va5oYnWCe5UZAI6fw
 EZzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0DzanoXf+Rurog+Hlx/WrxuOA7D1b5nHXR/Q/et4xVw=;
 b=mtLrAJqzhvXakQUGw9QOSfH8aBsai+/1zeUo4xTMDkU4tmmIGkvyfq/x6uVyquBVZD
 WrdYuOmG2A/URGiCR2oUKHhTjls0RTIdKK/07ggChI+c+gvfMi809bRQkB1D7Nv7fL04
 wfNaMbrTvFixHYNRpkB0gRVN8rBF9OOy+aZ6XRP+YaYN20Bz6efCM2wT8GwO7P6HVQ00
 5jqghWgN7/aMAfxnxtye5iXaaa+xlgv89tl6as7X+BBDmrqlNoRJcCpQglLx8pxvV8/+
 zrurT+fSNN2quPml93WMxuzTTFlo98NUMflcgSxZA/JMp6S+UkZ3gK2awoFzsj2JByRE
 +eOg==
X-Gm-Message-State: AOAM532HtcoBsaRbjdQhwo15AUhFw3o399el94X8lzkexW0soTVnaZ4Y
 Gcp9u35sGrtuHAyu13kSGjuI/ha/2FKjmw==
X-Google-Smtp-Source: ABdhPJxcf9hMdxH0lal4xExvGUX1Up5lEvIVx/4IX/TSAYxNtm9a0J8u2sdH+8sImF2RxnBq/l9zug==
X-Received: by 2002:a19:4a41:: with SMTP id x62mr4928267lfa.398.1605519316379; 
 Mon, 16 Nov 2020 01:35:16 -0800 (PST)
Received: from localhost.localdomain (87-205-71-93.adsl.inetia.pl.
 [87.205.71.93])
 by smtp.gmail.com with ESMTPSA id t26sm2667986lfp.296.2020.11.16.01.35.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 01:35:15 -0800 (PST)
From: alardam@gmail.com
X-Google-Original-From: marekx.majtyka@intel.com
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org, toke@redhat.com
Date: Mon, 16 Nov 2020 10:34:47 +0100
Message-Id: <20201116093452.7541-4-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201116093452.7541-1-marekx.majtyka@intel.com>
References: <20201116093452.7541-1-marekx.majtyka@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/8] xsk: add usage of xdp netdev_features
 flags
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
Cc: maciejromanfijalkowski@gmail.com, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <marekx.majtyka@intel.com>

Change necessary condition check for XSK from ndo functions to
netdev_features flags.

Signed-off-by: Marek Majtyka <marekx.majtyka@intel.com>
---
 net/xdp/xsk_buff_pool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
index 8a3bf4e1318e..76922696ad3c 100644
--- a/net/xdp/xsk_buff_pool.c
+++ b/net/xdp/xsk_buff_pool.c
@@ -159,8 +159,8 @@ static int __xp_assign_dev(struct xsk_buff_pool *pool,
 		/* For copy-mode, we are done. */
 		return 0;
 
-	if (!netdev->netdev_ops->ndo_bpf ||
-	    !netdev->netdev_ops->ndo_xsk_wakeup) {
+	if (!(NETIF_F_XDP & netdev->features &&
+	      NETIF_F_AF_XDP_ZC & netdev->features)) {
 		err = -EOPNOTSUPP;
 		goto err_unreg_pool;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
