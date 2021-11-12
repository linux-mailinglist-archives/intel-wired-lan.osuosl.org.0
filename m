Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D3E44FBEB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Nov 2021 22:59:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F17EB401DC;
	Sun, 14 Nov 2021 21:59:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0PsNnf6MO2Sr; Sun, 14 Nov 2021 21:59:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2213401D2;
	Sun, 14 Nov 2021 21:59:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7B321BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 14:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E10680EF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 14:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1esiSd41pyXH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Nov 2021 14:20:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 83B2180D79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 14:20:14 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 gx15-20020a17090b124f00b001a695f3734aso7713789pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 06:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tKyWJgE04HxRAjq5nb7ERjx0vGYGSgiBeT5zkfHPsnw=;
 b=c6tbwnM8EEdXQbXjZ6TBKu/GDieGFFzpHqyAv/x9gtsV7u9AbwnmumGLMO0/EiCoGN
 Yf5qCS4fIkHQGwoyoL4ywdKyumfkWOKyjqw9Ct2rv2+6bZv53d/FbafgVZFrMTIvTt5D
 eA/10d3nD6C+OXYQFt04R4CsZKRFYGumYpPBcd0kA0KkCHJQqztNuFVtkubP0ozjtChk
 BzZ1QUnBwMBOcg41FLNlXK2oM+wpBHHGJxrNrVy//gB9kI7KQGphRKUzKziLBwjktIbz
 3yfQyasiBzLSaitwbu4fR+QK+p8qI3zUzDDqkXL4GRpNe7PjG6B0XMXkYVuz+q/qHVq5
 gvnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tKyWJgE04HxRAjq5nb7ERjx0vGYGSgiBeT5zkfHPsnw=;
 b=B1QtLL1FPiv1wmCMmmdzvj7lB9BlcXtj5bAGMNaBKAUY1TxwSYt/kH8L6I2+Wo8TtM
 SNrIQxJoE3BdomJ8+aOuuugq6wIHuzEOFWOaHpkV1f+t4g2VComYXxdUDjkhLgWnx8bo
 +rPt8zUgNGaMOtbXiqvhMn6P93RxaEdZWKMHryLOi2QX49C8NM3hOpPDIhmVKbfpTpS2
 v9QZHnZEthWV2zOrylQjq+qdSJc5gLq1BFra4oXVv1wc/4Pa6vaZVG+jCWpp1w7LQTaE
 LTdPKjKl7/ZRGM7FejSV2hIwW/e29S0ikVlPdPUp4ei8nA1DImg2p3V4WOok/rAt1Lfd
 GbLw==
X-Gm-Message-State: AOAM532Ry2nRPWLilqLPb92RFIygpM/s0ULnm7Ao+kVA2jKGU/mr8Bs2
 EMg3kJlc4k1F7K6l4kNyHNSdXtiTgfQaVpodFDc=
X-Google-Smtp-Source: ABdhPJwg92vrA9JI16k61zQqU2yfIiV/eDCJUm5tXXj6752EumHyQSBUbrIuJGcQ45rvBBQI07OUlQ==
X-Received: by 2002:a17:902:8a93:b0:142:30fe:dd20 with SMTP id
 p19-20020a1709028a9300b0014230fedd20mr8309699plo.29.1636726813724; 
 Fri, 12 Nov 2021 06:20:13 -0800 (PST)
Received: from fanta-arch.localdomain ([148.163.172.142])
 by smtp.gmail.com with ESMTPSA id i2sm6409532pfe.70.2021.11.12.06.20.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 06:20:13 -0800 (PST)
From: Letu Ren <fantasquex@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Fri, 12 Nov 2021 22:20:02 +0800
Message-Id: <20211112142002.23156-1-fantasquex@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 14 Nov 2021 21:59:50 +0000
Subject: [Intel-wired-lan] [PATCH] net: igbvf: fix double free in
 `igbvf_probe`
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
Cc: netdev@vger.kernel.org, Letu Ren <fantasquex@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Zheyu Ma <zheyuma97@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In `igbvf_probe`, if register_netdev() fails, the program will go to
label err_hw_init, and then to label err_ioremap. In free_netdev() which
is just below label err_ioremap, there is `list_for_each_entry_safe` and
`netif_napi_del` which aims to delete all entries in `dev->napi_list`.
The program has added an entry `adapter->rx_ring->napi` which is added by
`netif_napi_add` in igbvf_alloc_queues(). However, adapter->rx_ring has
been freed below label err_hw_init. So this a UAF.

In terms of how to patch the problem, we can refer to igbvf_remove() and
delete the entry before `adapter->rx_ring`.

The KASAN logs are as follows:

[   35.126075] BUG: KASAN: use-after-free in free_netdev+0x1fd/0x450
[   35.127170] Read of size 8 at addr ffff88810126d990 by task modprobe/366
[   35.128360]
[   35.128643] CPU: 1 PID: 366 Comm: modprobe Not tainted 5.15.0-rc2+ #14
[   35.129789] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
[   35.131749] Call Trace:
[   35.132199]  dump_stack_lvl+0x59/0x7b
[   35.132865]  print_address_description+0x7c/0x3b0
[   35.133707]  ? free_netdev+0x1fd/0x450
[   35.134378]  __kasan_report+0x160/0x1c0
[   35.135063]  ? free_netdev+0x1fd/0x450
[   35.135738]  kasan_report+0x4b/0x70
[   35.136367]  free_netdev+0x1fd/0x450
[   35.137006]  igbvf_probe+0x121d/0x1a10 [igbvf]
[   35.137808]  ? igbvf_vlan_rx_add_vid+0x100/0x100 [igbvf]
[   35.138751]  local_pci_probe+0x13c/0x1f0
[   35.139461]  pci_device_probe+0x37e/0x6c0
[   35.165526]
[   35.165806] Allocated by task 366:
[   35.166414]  ____kasan_kmalloc+0xc4/0xf0
[   35.167117]  foo_kmem_cache_alloc_trace+0x3c/0x50 [igbvf]
[   35.168078]  igbvf_probe+0x9c5/0x1a10 [igbvf]
[   35.168866]  local_pci_probe+0x13c/0x1f0
[   35.169565]  pci_device_probe+0x37e/0x6c0
[   35.179713]
[   35.179993] Freed by task 366:
[   35.180539]  kasan_set_track+0x4c/0x80
[   35.181211]  kasan_set_free_info+0x1f/0x40
[   35.181942]  ____kasan_slab_free+0x103/0x140
[   35.182703]  kfree+0xe3/0x250
[   35.183239]  igbvf_probe+0x1173/0x1a10 [igbvf]
[   35.184040]  local_pci_probe+0x13c/0x1f0

Reported-by: Zheyu Ma <zheyuma97@gmail.com>
Signed-off-by: Letu Ren <fantasquex@gmail.com>
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index d32e72d953c8..d051918dfdff 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2861,6 +2861,7 @@ static int igbvf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	return 0;
 
 err_hw_init:
+	netif_napi_del(&adapter->rx_ring->napi);
 	kfree(adapter->tx_ring);
 	kfree(adapter->rx_ring);
 err_sw_init:
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
