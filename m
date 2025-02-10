Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83508A2E777
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 10:19:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3A14412BA;
	Mon, 10 Feb 2025 09:19:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WIMkBST3oAA8; Mon, 10 Feb 2025 09:19:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C83D3412AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739179186;
	bh=7JkT/vU1zpbrf6oZbGOWeLDS5qg6c+tSDS6gec3w7LM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cIq9kqlm8o+fM9TlXFvMBecWYa8iEdQzbHfUJbcPQnGZTQQq7m0HnjrbGfqXAIQv7
	 4dicLxODY7t2wNen84o3qTMDlupSpslQEidPKnvj6jcNKPC5V99iK5LeUMC+KCBc5E
	 qqid1QAr0vnALxU4Rd2ihWURVmWA9NSkTu8INZm2pL7O4dHYTvAVqo+2cm1dv9rach
	 FnoQmQQYzNYXsUVHlAFCYtvvLHbZXlKOrq4XP5minELmHGbzr682b1PK+WzX+QFpYe
	 quYKBlIKHup0pC2b3m/9+DcwZavc/T3LLPpI06mLoewkYxtAD8WYrYBDCS2p9RiajE
	 NtRmSTk0FwbqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C83D3412AB;
	Mon, 10 Feb 2025 09:19:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E9C4199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 313ED81E9F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:19:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sni2Z7zqmd08 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 09:19:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 20DE180B85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20DE180B85
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20DE180B85
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 09:19:43 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 10 Feb 2025 10:19:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-igb_irq-v1-1-bde078cdb9df@linutronix.de>
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
In-Reply-To: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1966; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=F2p1ou/0AZv/PcbfHKVSZ8R2rxDMMGbcUOBFLhTwoJM=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnqcSoRQ1vVIRYPr5dIdQOzLyrgzcd0/yzueF1p
 u5qsDQ9tCGJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ6nEqAAKCRDBk9HyqkZz
 glwcD/41sGbRzUy5VSMOm2bmD00F/sUcWmbRbFGp19eYq9TPUz8r4s4g9q66DvuHHobDnzjAvc3
 99ASA9Ls5izWcXl3jW26Si3/Bl9EvBYBc0HPit2N7QdkA9WMUUp5benWQe5JixWJGH3idBc2D1b
 bQmGNvVHVdYQomc2NhMniN77gDRjtPJCLJFv7kGT3m0vMBfSPLJau3a6wVDArSYCZJWuhGkMqnI
 w+mrYR+NpidrLflirvLbvJ+rDKzrTSRLcEsWeNIyFjEYJi5iKfPbKkHMq/qnUsY90WRF2YLt9E9
 c6T4Pr0i61W/Q69QmyIwX4RGZ71Z5ScqCrZC9aBjD443qOCgo+cMBwHusf9+K/f2ACgibgL/u+H
 YuLlwxVVbG0T2BxGCDBQ03oRt/FrwjQq5gASMa4iswQ3BPDTQiMM2V4CRPvtxvzpIfpGCCg8sQe
 1fCh/m8oViL7siTAjqrfmmp4rVngMocwz3OTbG+qiRqFOCOMDusK0QRjLbecgec2Eny/EEf022H
 Yyh59FtysK0hZv2jXZAiMcSrKBYYjiAgSn45/RhT/iL/njOTq0JChHSp5WCP2qUno6fu30EP25a
 YzJ351aWlJlNMM9TrQ7OXx0tVfHtap/3hSDJoJdo1zvyp3F5Dd/uTbbwYFLkjnRs4ds5OMrGx+c
 n5h6g/iXpIsuqTQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739179178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7JkT/vU1zpbrf6oZbGOWeLDS5qg6c+tSDS6gec3w7LM=;
 b=GNvY3PqRQJdMDpy8MZT/0WrDZprpJ6y6jktMscLRYEGjWM7zIGYRjF2cBHiRGp6qD4yruD
 kjMp8WINzffTu2m7PYvGjjS2CdQsBjfFfquafG1ralrm0hsJE/O0C3ACJ8HXO8adCP3c4L
 AsRM5UPknTbRdcxlAdFKhFoZlNYsxioNRW7LB0ragrrUaQHO96BgCzKP2gm/pUp7+UkHM/
 UJvSh7bdS2rQ+HG4NmuEiyVH4OAyt0PSoamjc5zNhqdAG6rQnnnglKC9f1rotjvS0LFNDP
 wkn2rAS2RWD/lQGr9EfmWSU/xY84yZsKt52Bwv6ZbcLrON4ryMCfKH3LudGV1Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739179178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7JkT/vU1zpbrf6oZbGOWeLDS5qg6c+tSDS6gec3w7LM=;
 b=SJY9C6Ea3o3P54PGX+qMXJd1milifVdLaGhKvp59pN/Nkv7mGMBRKAd+dmhTC2DkMuTvkV
 w+N2GrfkPyk5HaBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=GNvY3PqR; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=SJY9C6Ea
Subject: [Intel-wired-lan] [PATCH 1/3] igb: Link IRQs to NAPI instances
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Link IRQs to NAPI instances via netdev-genl API. This allows users to query
that information via netlink:

|$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
|                               --dump napi-get --json='{"ifindex": 2}'
|[{'defer-hard-irqs': 0,
|  'gro-flush-timeout': 0,
|  'id': 8204,
|  'ifindex': 2,
|  'irq': 127,
|  'irq-suspend-timeout': 0},
| {'defer-hard-irqs': 0,
|  'gro-flush-timeout': 0,
|  'id': 8203,
|  'ifindex': 2,
|  'irq': 126,
|  'irq-suspend-timeout': 0},
| {'defer-hard-irqs': 0,
|  'gro-flush-timeout': 0,
|  'id': 8202,
|  'ifindex': 2,
|  'irq': 125,
|  'irq-suspend-timeout': 0},
| {'defer-hard-irqs': 0,
|  'gro-flush-timeout': 0,
|  'id': 8201,
|  'ifindex': 2,
|  'irq': 124,
|  'irq-suspend-timeout': 0}]
|$ cat /proc/interrupts | grep enp2s0
|123:          0          1 IR-PCI-MSIX-0000:02:00.0   0-edge      enp2s0
|124:          0          7 IR-PCI-MSIX-0000:02:00.0   1-edge      enp2s0-TxRx-0
|125:          0          0 IR-PCI-MSIX-0000:02:00.0   2-edge      enp2s0-TxRx-1
|126:          0          5 IR-PCI-MSIX-0000:02:00.0   3-edge      enp2s0-TxRx-2
|127:          0          0 IR-PCI-MSIX-0000:02:00.0   4-edge      enp2s0-TxRx-3

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index d368b753a4675d01b5dfa50dee4cd218e6a5e14b..d4128d19cc08f62f95682069bb5ed9b8bbbf10cb 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -947,6 +947,9 @@ static int igb_request_msix(struct igb_adapter *adapter)
 				  q_vector);
 		if (err)
 			goto err_free;
+
+		netif_napi_set_irq(&q_vector->napi,
+				   adapter->msix_entries[vector].vector);
 	}
 
 	igb_configure_msix(adapter);

-- 
2.39.5

