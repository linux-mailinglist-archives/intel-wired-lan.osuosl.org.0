Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEB9A68985
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 11:26:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BF4060AB7;
	Wed, 19 Mar 2025 10:26:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ep-owh0Bov0R; Wed, 19 Mar 2025 10:26:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F48160B02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742380013;
	bh=fL+/sdmqfiD/3QPUgzCMR39Mkz8HctLQSqLONQ0HXPw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rX7fmWsYNBxrbr2gN+w55yAJC+8iMxal80u1iIP5qHWoXm6v2nYDyuvcvl/V/05dO
	 +LebYA9zEeKikVRB/BuxEXYAXW/PhSa2L37zFL2DkFIEbT7AFpiePvVvwasD6ZkLtJ
	 cwDm0fbcv1bo2c7AM2GFoAJKOIeZouSTZcGRszD9jK02jG1/6tS4RmDjTdVebTcXvU
	 eKfqkMCVfHEVopsXFGqSOjwzpdKJV9wcR8xUcaYAOJDs8GLQ7Y66n76xJPy/1g8iyb
	 mfdpFyTrThVR8PgBUX5qCIOA2hkJ7Nwj6NM4+sfzFSYPLyAHz3K+2M2AWNa7udSofq
	 FMg54uxDmRuTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F48160B02;
	Wed, 19 Mar 2025 10:26:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 11E4E1A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01716407A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ls-ZceVo7JI8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 10:26:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E753E407BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E753E407BB
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E753E407BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:49 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Wed, 19 Mar 2025 11:26:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-igb_irq-v3-1-b9ee902143dd@linutronix.de>
References: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
In-Reply-To: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, 
 Gerhard Engleder <gerhard@engleder-embedded.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>, Rinitha S <sx.rinitha@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2088; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=6TzlgHY+MARSPZ19oPq2VR/on8+SB2WKhJ2qBOrffwY=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBn2pvlPC00/+8lNaDwIeJJnwGTouW9qHVvam4nu
 jEWobjLEk+JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ9qb5QAKCRDBk9HyqkZz
 gvi7EACCNfucR34zTvcPkVCIyYkeUWJ3iMQzqmIMcQMy6dmrzB7StjmxO6euGQ57yyeNqZrYfiu
 P/tDLwf7EGCr7zcSiAXQxe50rlreus70PrMziv0EAFPTzYENevRtxEig5o4BxNFeC2wI3nHUiz/
 2iokfnhGj5ngU9WaPHRe+LwqybKHrYrCt7nS0MrXl/VJH4iz4ymW3dPbiKuNWjNOnrxisS3xlIZ
 e3aCtr19RFMWzx7y1vZRTBAJwCtEzwxC41wf7Cik4xjRQAWzazN8AMEU3CJ9dmY/JIvH2+BDBCD
 bvQTxKXbaZDFuqb1ps2lhid34w+vDiPHc3AJ13l1NaV/IR7snp4td6EWB6PGaCdzKcjDeb7Fn6F
 j+puR8JIcUMVxLzlAxHWLAf/Gd0i5m4gc9c9VKOT28LaJUPhyGN7PD0GxVnunoSFOx0CjLFBD1t
 MlcaLhLFXBAgKaiXQQj22F+M8MfsQutSww9VjM3nlknnpcpWSo7253ckUFZKSepUBuOEe+B6moR
 kxuQt00RH8dnpP115rU7jLYTm/ORx1Ms/HRo5uPY6rzULssGmikYig+BhCfoqszet66qrZUHGt5
 qcYjJgIpCOPLFARkFyYBQtKiL7mQGpJ5tkA/S9/5whzlA+ZtwKFsW08j0F8Vw2Om6jllaXopCLk
 208Nx1VVB+pk5ig==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1742380008;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fL+/sdmqfiD/3QPUgzCMR39Mkz8HctLQSqLONQ0HXPw=;
 b=05BnybXx8UcYEZq2c2Fqj1jmweMzT8dXQWfj8ZE/YYR7WZlgU14e6NONufswBIMTOEiGsy
 xgD9h7HX/zbsHGs/nZnlbaDS9o9C8DU12BOP2Rr+HsD0VNhYn7/Y7xN5ArR2rRcgJDWlI2
 oc+KzvTSxGSoyk6xE9qeqxOeT2GXmgYlfEqBog2FfabxCuUO8vgBpIncaJAKK4DN/k2fgZ
 yZpl1BDKVMfpPhSQSBQRm84UI0gxAcKdIsoCCa8Qvs4p3XtqHVHk/EsHjNkTwOR3xdamOB
 xgMlfc9q3/RfJ5HWJtHez+wUPUw+I+xgIfiJADmRppQJwmRQBGyOr8dpqUXuPw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1742380008;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fL+/sdmqfiD/3QPUgzCMR39Mkz8HctLQSqLONQ0HXPw=;
 b=PCzURz1U5BuPd762fR1R73keKOwcACplnrIpBORBkXp2IV7ImUa427r7TCBc619/zd5e5d
 Tc57feOKxGF0iGCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=05BnybXx; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=PCzURz1U
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/4] igb: Link IRQs to NAPI
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
Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
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

