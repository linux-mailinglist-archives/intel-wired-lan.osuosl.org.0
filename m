Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6952144FBED
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Nov 2021 23:00:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4742440249;
	Sun, 14 Nov 2021 22:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3r7itoeZJHQS; Sun, 14 Nov 2021 22:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48BC1401D2;
	Sun, 14 Nov 2021 22:00:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F38E71BF384
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 03:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB5736074A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 03:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JVHxJpEbRU9A for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Nov 2021 03:42:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E10F606C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 03:42:53 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 nh10-20020a17090b364a00b001a69adad5ebso9200849pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 19:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ey7VzgXF+r6CB0MM7r2mh3u+lhRQ2Cx2jmHmCPqFkI0=;
 b=WFPwxEO+35l2OBZrdX6jjDMJZ0uyaEXbNSQqInGWdUebIcKE3vg3o1ncB30/a8rqbc
 7dadMkJviYB5luqmjJGTa6d5UWuaba+UZSV8iv8eAHVmDNLTvUFkzczIQ1Toxz3Fhkaw
 6aEO6Sh6vdDn3VVNEv8ac33A9WuPKhT2HsiDlE0NsizjBQjpXeJM8AVVdbyJdPy99UA+
 7/hKQdU9BE6L7JErzD20Kb8dRTJUrGjxlWRyBzqCb5mwoyQd8R/BssnqKtB9vqKjt5wM
 JAcrAjkeB9ZBMvsMbaBwcRzmSCP/swvaa83joNopH+yDkIIwjL82cFY1vQ5P7NlwZ/CO
 tcyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ey7VzgXF+r6CB0MM7r2mh3u+lhRQ2Cx2jmHmCPqFkI0=;
 b=bkeqaMtawswdWfVwFBnuSkO2PZGUtRMmpu8H8S9bx4CK6S0p5kUYKxUhApFxFSYbsW
 Hbm1I55C1cGIOicJD2DsoUeGby8Mp5kTZfksGBOFq0KKuUcDiMj524l7T5TRz3rNQYVh
 y3K4Qge0FM2SL6nCoNpoKQLmszM3r3bmJau3uFoPU3tJZCNClfReP33wAHR+zEmn5sLa
 Y/M98RIAZSktgqLVEolzwNo0JvPrP/aRXZozfcTgZYxJad9bW9+f9rH4AiW1F3QkZ+d+
 kwFr0pPrDwEbqdGN7jnHjWaK0hIkxWPoUkXgk77QwdyHzeSb7Qd/D2QrlIDvqCxd4Wt9
 DIcg==
X-Gm-Message-State: AOAM530S173sA4RFXgZK5onV9/jlFh5BPkkIUIpmEEWG2R1aoYVGFpNV
 tRbSDd1LiAY2VoSi3bSCchM=
X-Google-Smtp-Source: ABdhPJwb8DmjJU8Cmm3xS4cjfLlLFr0lmkXPwRHlmIgWmxscjjuDu9kaNBpudE/biRPTsnmuXckTyQ==
X-Received: by 2002:a17:90b:1c87:: with SMTP id
 oo7mr18342123pjb.159.1636774973489; 
 Fri, 12 Nov 2021 19:42:53 -0800 (PST)
Received: from fanta-arch.tsinghua.edu.cn ([148.163.172.142])
 by smtp.gmail.com with ESMTPSA id f21sm1497000pfc.191.2021.11.12.19.42.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 19:42:52 -0800 (PST)
From: Letu Ren <fantasquex@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Sat, 13 Nov 2021 11:42:34 +0800
Message-Id: <20211113034235.8153-1-fantasquex@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 14 Nov 2021 21:59:50 +0000
Subject: [Intel-wired-lan] [PATCH v2] net: igbvf: fix double free in
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

Fixes: d4e0fe01a38a0 (igbvf: add new driver to support 82576 virtual functions)
Reported-by: Zheyu Ma <zheyuma97@gmail.com>
Signed-off-by: Letu Ren <fantasquex@gmail.com>
---
Changes in v2:
    - Add fixes tag
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
