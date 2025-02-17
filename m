Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E240A381B9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 12:31:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 284D34061E;
	Mon, 17 Feb 2025 11:31:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QNBEd8sNuZGZ; Mon, 17 Feb 2025 11:31:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AAA34069A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739791896;
	bh=JVc9j7/qBgSV7wzxHD/CZaV50VjQdbtTLbLvXM1LLXk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sVa9fjRdkQXgiUEs2yYrF6Xrx/ZWQ8vRv+AQ0dPigl80Qx4fV0ybHKFX4RGUeTVjK
	 Sg1He2JYpnwLYCvvk9qag/MccjXNqwRkSZePE5oX2zWk11N+Z0m/9flhDwux3innCB
	 NsxWb0XpZyM95ntyXqpW+aS2U8FeeZqTGZrsh3scKqt9VXErIeZlHl1lWurnNl0JJF
	 ZLq4Sga6TSuEGbz7ontBZ7VIB0qr9FW0ohBKg5oJ3EBVQy6+E2seNr8jArJ6vTApwR
	 fnLZw6qWTNvAGTU1jnvHUk3HQYCMs0gNIChFuF50BthgqLzI/QM8UcPvg7LxkXYnX9
	 4An+Zq+3Aal6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AAA34069A;
	Mon, 17 Feb 2025 11:31:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 49D43DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6528760693
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q2Xde2iBrfwf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 11:31:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9E2C5606B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E2C5606B1
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E2C5606B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:31 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 17 Feb 2025 12:31:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-igb_irq-v2-1-4cb502049ac2@linutronix.de>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
In-Reply-To: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, 
 Gerhard Engleder <gerhard@engleder-embedded.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2012; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=TtZz99vKM9/8yQH1WXB2BwLLyCw8TnG96hXFTpksGGA=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnsx4PWYhwX1ccbNCgJJX4M2gWcQnM6Bx5Ya6et
 JfJEl2OOh6JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ7MeDwAKCRDBk9HyqkZz
 gittEACRAhFvRx79/IJ0oTIO5tk9AjgOOcpQqPMorxfyXTtCkLV6y7i0YFHIEVWoIkq/W4AZpFe
 5ui/kDvCPjOPzHPwuoWVOjfBZrBdIICjL0oh4MCY/gA6GU88SXLLRB+rhzcdveMPGGOd230Md6+
 WupXkcAKHk2gtaRLQQXKFXqfsBW2HVl87j5AOj8oge3wlb0Aw7L2sjlxwzIDoGnysEm+zSLc+Aj
 UFxbirB+8EcvFRHV0X47Z3h89nPWbPJ662XXmMvG011NI+jEXgLXUKosS6TFRQE6HWq+AuIIQPT
 3hilKY0RBhiQeKMxvx6QCgvHhDTMqHeACv4j+VEN99zeFIRurfvzg5QLFZEv2fFz0xpCccqFh+O
 7VbnJBYokNEwSqAB3iFFp6IgmlwRe6FuNOrYmy0n0YNqTcke68dIvV7yeL2T7aVCT4zINAeJQJ9
 9G8tVCH3M5/tsOZQa5Ln8lFvmp1I4RNIhIyqMLVu/YQzkBlm0QOMt+RZI+JPZpMy6ZBoh/a0UhB
 gmamiFPSeb4a1cbYyBtKq3wkvAj0CQJp21UDb82gWTXkT+P3kVViWNtb2VlYhXWmX+aapGC9C4S
 m5wny2EI02DC9OMrPgMoqWMdTG0GPT+qPAuCo1SOJ76QBFwneUbocrXH0HK3MnUcgKmi++83Ig4
 RqzTnC/xNueWIuw==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739791889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JVc9j7/qBgSV7wzxHD/CZaV50VjQdbtTLbLvXM1LLXk=;
 b=gsdmBp+FmA/4OS2k87WBj58dweO0+W1WGcsNpY/HudN3KImJollf0eK1ewglNoffGkfPFE
 C73JLa6TKw6fI47iEk2Yl78EISUAWFe4rHguMswG1Kvl30t/aDIRfzzBVtvQjW0HKlGZWZ
 6WdOw+VWINgmUkvP1HZWOlsusdFNXYyFATqR8NgV6IcBtSa3FdLjqzOQ2J+CufxkF5ge/k
 Yr1WVJXH3N684deBeTLsCulPJjG3sq55ennuZfNnmjOZf/T151aucrl/WHikDPm/p3k6Fe
 b3ZoTPgdUhS1ACaINagS0UrnrdHds3IbCBK80j1SeT8FeNnvMV7Mhw5bgzrj+Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739791889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JVc9j7/qBgSV7wzxHD/CZaV50VjQdbtTLbLvXM1LLXk=;
 b=QP8TmQTWbgUp9ELtDBTqt+yyQtLZws6E19zJHIXuWNUyK0f9IoB/TIxap2XbUTMMg6CmfE
 n1PdZ+gJ185GQbAw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=gsdmBp+F; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=QP8TmQTW
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/4] igb: Link IRQs to NAPI
 instances
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

Reviewed-by: Joe Damato <jdamato@fastly.com>
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

