Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 475885BB4E2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Sep 2022 02:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35B396FB02;
	Sat, 17 Sep 2022 00:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35B396FB02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663373462;
	bh=NJYkBSVOdGCbRLDGB11STaZ06xVsxAF9WLTw84XmHM0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ysJ1wWR32GeAeoijRvPef6A7kkA+ADS4bIXDzn2YFoG/7w+gKc7Ihb8c/PZxIxrF8
	 GGNA8ACVpHsCQu2wkiTsRxADlMZlrmYotL7qNEO+JPMj6iD7c79hZFQcFzNAAsCITA
	 B6evom3AcRvAV18pLKIlVIlPaNrpWzE3SzCB3hJ73oeWFkhmhyl7VuzYN4L4HzEHvs
	 qUfUgL04C2DurcG1n8gt5Scun83gJxLK8RX9mOyMCjIUn7+55ZNPhkO7NEx0lg7c+k
	 CSmz4iA6r58RRExGdLpElz0PWY4ryASjaONdoR1vjjzkcTk+xh4xwtPNXShK8wjgI8
	 /fNCcdA/J4BDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HgO9G9MF9HAx; Sat, 17 Sep 2022 00:11:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A27F610E7;
	Sat, 17 Sep 2022 00:11:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A27F610E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 249101BF59A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 00:10:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDE3541D5A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 00:10:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE3541D5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XG1__yrl1Xp4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Sep 2022 00:10:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B3DD41D59
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B3DD41D59
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Sep 2022 00:10:54 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id e5so22719967pfl.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 17:10:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=KFW8Lrz6qD+umd1mS93Z94RJAGOU/7BuklYES2+tlvc=;
 b=7GLaQ1c6I30L08B9JfxAIdlmxfk2oORnkpbUSSJqMKSaHNIF+QMNG6FDMJuV5rXo9b
 Bs/6axKXxaFaZB8p653uQkHeyl2UuQ7wQftv9spClbrmrUdt5lMWlarDKuJkw8GX9kiS
 1SgwoMgH2kVwzP5iSB+px4hSNYFEGME9DcidFylzuqx0I3sT6AQys6TBC1g4hVpAwrw/
 bD+4LtatPOfyDufG46IZgLSR/cuHAjyNeG34nkeAbawVv5mLSodyz3QIdfyrfiN5P7Bu
 8KOMAWCW5iosxojWVBEO5zAx21UhqcyKPqgkgZgS80VWbMZSdfTThbDAFjWC4uZ9QayK
 2ZVg==
X-Gm-Message-State: ACrzQf0T4EjEuKpYUIUAcTWWqKp0WWSHh9+VoC3yTgswr6NQn4YxFH0x
 g5FuL+XBIF9BcEIuqX4y+WM=
X-Google-Smtp-Source: AMsMyM4OTX8idl0VD6igHHYK4x6jOOquNrCi3+1u78eYaUGk2HxEcyhIuyMjxNmPUDs9UsjzhTGDng==
X-Received: by 2002:a05:6a02:309:b0:434:efcb:ccf4 with SMTP id
 bn9-20020a056a02030900b00434efcbccf4mr6615874pgb.304.1663373454281; 
 Fri, 16 Sep 2022 17:10:54 -0700 (PDT)
Received: from localhost.localdomain (lily-optiplex-3070.dynamic.ucsd.edu.
 [2607:f720:1300:3033::1:4dd]) by smtp.googlemail.com with ESMTPSA id
 p67-20020a625b46000000b00540d03f3792sm15002041pfb.81.2022.09.16.17.10.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Sep 2022 17:10:53 -0700 (PDT)
From: Li Zhong <floridsleeves@gmail.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Sep 2022 17:10:27 -0700
Message-Id: <20220917001027.3799634-1-floridsleeves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=KFW8Lrz6qD+umd1mS93Z94RJAGOU/7BuklYES2+tlvc=;
 b=S95XJ2h2Yh/uY9gQVigHf5hGkQGVe0J9Tj8MSR8adO647oBGzf/84YU+IAySuCQ5mp
 wlHZ8JXl7AX8P4wcHea7TQgV86TSdMoYQe5NybR0gYEtM1vAQnzxL2gzzvszg+9xeATh
 VggxVJeSI+WETjVLlqARja3Jh7reXGk7t8ZLZ82Q7aDxUrq8h6AgdVr21qKVc1rJzRzV
 DsjO4th/qWFnTNy3hfd/OKBS6d3AYsZrCAmbUAup+fI+UAcs/PO6ea2bCk55NHVxGke3
 7pJ8KPiCn8WMfn9sG0DN1eCaVlYO1kMMIY/XJO4nizzphuahDNoDbxDvtpmG95yd7cAC
 Syrw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20210112 header.b=S95XJ2h2
Subject: [Intel-wired-lan] [PATCH v2] drivers/net/ethernet/intel/e100: check
 the return value of e100_exec_cmd()
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
Cc: edumazet@google.com, Li Zhong <floridsleeves@gmail.com>, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Check the return value of e100_exec_cmd() which could return error code
when execution fails.

Signed-off-by: Li Zhong <floridsleeves@gmail.com>
---
 drivers/net/ethernet/intel/e100.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 11a884aa5082..0d133cd4d01b 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -1911,7 +1911,9 @@ static inline void e100_start_receiver(struct nic *nic, struct rx *rx)
 
 	/* (Re)start RU if suspended or idle and RFA is non-NULL */
 	if (rx->skb) {
-		e100_exec_cmd(nic, ruc_start, rx->dma_addr);
+		if (e100_exec_cmd(nic, ruc_start, rx->dma_addr))
+			netif_printk(nic, tx_err, KERN_DEBUG, nic->netdev,
+			     "exec ruc_start failed\n");
 		nic->ru_running = RU_RUNNING;
 	}
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
