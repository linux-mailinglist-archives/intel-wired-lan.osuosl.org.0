Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D50CA2142A1
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jul 2020 03:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7FB282002C;
	Sat,  4 Jul 2020 01:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id leks-CZKs933; Sat,  4 Jul 2020 01:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63C50203DF;
	Sat,  4 Jul 2020 01:55:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE7B91BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 18:20:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D9C8887DCC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 18:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z39xwa0smhcf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2020 18:20:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CB9E87DC1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 18:20:25 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id dm12so14605319qvb.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Jul 2020 11:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3mLVVHY7FdkFjkZw2QLlsRjRTvH5SrJupI9xvtEqRIQ=;
 b=Rc6ecpAUZxlKKoyF7vlk0FdslAK6aDcMQ3MGlPztTg2piViAq9JbnxHTSQNLqPJcVi
 VR6cKE+dLgNJhfE12mi1BoV8YAxGOKmBOHrOSf5M/g0Tarw6rlxc0qZ+wrWaI0kRLqFE
 mIiHxR/IjpaItsKqal1jDi+ZEh5vWCIfLF6XdrI2aWx7WNW/OaGHN3lrIrtoYmGandRT
 lmIfoxldipo/TV2Att9Esdq/a7S7PpbfEG696KtQ6IqVzVtatCcJMj0HB5k9U6NtNv4O
 RwuU1/FewhuJfbEu+3n7htRMzLWrMcAJ6+0xxFLpgWTvI/qfzII7D4Hbvh83t5GiZGX1
 JxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3mLVVHY7FdkFjkZw2QLlsRjRTvH5SrJupI9xvtEqRIQ=;
 b=KaYYzUHFYSTzN1ZDDKURVQpm3Cd4CeQVwo68vQi3fs/2HjUELYqX0tYG9lgQ/X3/zx
 ewtp3E35i1Ah81S3aKLpLSteq8gFEzVgmXIKOr1+pX7lmZApu9FyloUuElFHp56znOby
 SjBzhaTxQNpGoGY64wTYP0Ixj+NA9qAKWQpKClW2zjnPvPYHHQ1ZvLN0/G0BH6vKTiqK
 cSFeF+bNaUtFhjvTL71rAyheRBC0XaO9rMltOr2gkO/BQbtWb+RTWQC/4lJQ5B87av49
 ea8NlNkMx5QYDVeGWJ1E3XoISg+VGShdmSS0rG/DWV5AoTCKrQqQX/Uf0FknhllI3DB0
 zMUQ==
X-Gm-Message-State: AOAM531wXEJVRyzRJrwZe7LRJdtvrIctJ9dDJ8z3yB+I47D2ItgB3sgM
 swmrgpbTB/1ENme9T4oFmeU=
X-Google-Smtp-Source: ABdhPJw9UJiwE2SHDDqHRxaGHXVcSfg7EtUIy7Kt7D88LEPS+FaXtEink+Ytj4Z6/F6qu2lFIdC0rg==
X-Received: by 2002:a0c:b4da:: with SMTP id h26mr34323663qvf.155.1593800424146; 
 Fri, 03 Jul 2020 11:20:24 -0700 (PDT)
Received: from buszk-y710.fios-router.home
 (pool-108-54-206-188.nycmny.fios.verizon.net. [108.54.206.188])
 by smtp.googlemail.com with ESMTPSA id w28sm10412470qkw.92.2020.07.03.11.20.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2020 11:20:23 -0700 (PDT)
From: Zekun Shen <bruceshenzk@gmail.com>
To: 
Date: Fri,  3 Jul 2020 14:20:09 -0400
Message-Id: <20200703182010.1867-1-bruceshenzk@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Sat, 04 Jul 2020 01:55:49 +0000
Subject: [Intel-wired-lan] [PATCH] net: fm10k: check size from dma region
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Zekun Shen <bruceshenzk@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Size is read from a dma region as input from device. Add sanity
check of size before calling dma_sync_single_range_for_cpu
with it.

This would prevent DMA-API warning: device driver tries to sync DMA
memory it has not allocated.

Signed-off-by: Zekun Shen <bruceshenzk@gmail.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index 17738b0a9..e020b346b 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -304,6 +304,11 @@ static struct sk_buff *fm10k_fetch_rx_buffer(struct fm10k_ring *rx_ring,
 	struct fm10k_rx_buffer *rx_buffer;
 	struct page *page;
 
+	if (unlikely(size > PAGE_SIZE)) {
+		dev_err(rx_ring->dev, "size %d exceeds PAGE_SIZE\n", size);
+		return NULL;
+	}
+
 	rx_buffer = &rx_ring->rx_buffer[rx_ring->next_to_clean];
 	page = rx_buffer->page;
 	prefetchw(page);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
