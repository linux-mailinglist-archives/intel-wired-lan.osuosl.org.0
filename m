Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3906CA6B1F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 09:25:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B5F840A78;
	Fri,  5 Dec 2025 08:25:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wn3u2aM0u5zv; Fri,  5 Dec 2025 08:25:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D648C40A79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764923120;
	bh=8T0UHhzai2fWCo6tRGyMn8d6SwcVbZ4Ka0x+SCnjr+g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OnhArvnscRCv7EDc0pLJfpF9bxn8lhm1UjOZ83CqVfsgYS+sjASqo9ex7e6qMC7ln
	 IvpRs8ZolA/DXGlKYFZWBQu73WNZHbhLJ7Awn/lSZ1uh4w2FNKsvfyWIrsoVALZbl+
	 rSKAAgskaoiOBcXoGcIi1g3cDCH3lKRQN0t2nZf0YKsZ+CTisYgLqXWCHNU9uD1oXB
	 eMv4TNDQLawO4mAdlbnTobkGSYm7E0wQYX+5a+B9kQ+grKHCrqcjVoBusRVgSwV+fA
	 595mkGMYb1FZOi084Mqdr5b0c6OyXT9Rca6jiaPNPHv+ILa+R1q7ciKOB7u/aDgz4I
	 U8QI78sJq9wAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D648C40A79;
	Fri,  5 Dec 2025 08:25:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DFEEEE7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D117B81441
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FPHWFaZGh9Gf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 08:25:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ACC338143D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACC338143D
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ACC338143D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:25:18 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4A7B8401BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:25:14 +0000 (UTC)
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-29d7b9e7150so16889895ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Dec 2025 00:25:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764923112; x=1765527912;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8T0UHhzai2fWCo6tRGyMn8d6SwcVbZ4Ka0x+SCnjr+g=;
 b=ncZCOQ4ccRlF7xmfBpPOBUyH2dMEtmEjxgiGQPILKlRcLrY0FEztBaCVwVUm7PR7jK
 lhxeATWr3AvsoWh/oeuzBZ9rclELJS1V+OSbAhVV9gNT3SAsEnEJmEk+CYybRVTKdYRB
 3q0+dZvXyrSWJgtRv1PIp4zXA+vljr6NMgOGshW5IX5/z+XwavWpPdiwbBexwHEq0Qx2
 dYGbuSbNjyQtL1UGtDLdkTMDy9idmOVioufdFCvcj4fuCSR5BHFqMUPyNPkI5lkDBm0J
 ch+NOd2+D/5CkHqqpikZE4cbR+qrFtNnol0FbJfvV96Bh3H+YGfU4vZh2dT+JGiqP1Ek
 T1sQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXpWVqOA8j+QTHFC/YmHIURGr84o8+rBfoPedxBgFarUhVLG0vAReaSRJ2ZKPlM3abI/yGp5nTS1CNf6NS+QMQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YygIY6e4j9JmmXn/xtU+/adSwIXfasTZ247zOBPbPHZklQb5L0i
 aGyqcxL2YM7zscBxWeCCZvUEiSPFLRGBShscok3yWt/N6H0gXeaf9um6/Af3fHkO1EWdict2PiV
 ucb34O+2uvByI7D9xxAFu9JhpOpSANYYFKctIb+NXMyxPlsfkvRqvTgpUBCZ9vM4iQG8vFvmz2S
 mNQGJs7Nc4iEw=
X-Gm-Gg: ASbGncu5tkJnkEh6dsNskVhDRtsCvi1gvvt13BWoWdMySosiMVAUrwYZcHxX/pr3vbB
 IDJ2zTwRMRo1C4yaF/85cIZkjuutjEmT1U2WST0nOgt0rXWEpHCY2l2pGfwjaqWbZpC4SY3uOPb
 Cg6gp3JCx0ke45SN5mftGTjgRPYJXgaN93bCkLEA8Tl5jrE1rhzfXnsZPsBPitNeqRuRKks1l3G
 XmnZvqFdePaugzvm6gca3Ur7pKs1RJhOakrh/s5IhtORGdSI/n91mKmGJv67g6dJ0n/fNGXP/02
 ODKcZO3me217XPuY+K1wwb4t9J507rujZn+ZhS/Wbo0C65QzCGEdNsMPVTwDBqsLMMxCC2agWfn
 6VTaqFMX9sRgh92FgLE/KIyXc
X-Received: by 2002:a17:903:1a2d:b0:295:bedb:8d7 with SMTP id
 d9443c01a7336-29d683b103fmr119060485ad.48.1764923111851; 
 Fri, 05 Dec 2025 00:25:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESNNepcAR75GX1HTpnznXPE60phc9h2xI6LaFnX+Dw43NLPltYKyx42/JGzBrUjBoHtNzU+Q==
X-Received: by 2002:a17:903:1a2d:b0:295:bedb:8d7 with SMTP id
 d9443c01a7336-29d683b103fmr119060085ad.48.1764923111440; 
 Fri, 05 Dec 2025 00:25:11 -0800 (PST)
Received: from localhost.localdomain ([103.155.100.4])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29dae4cfaecsm40896875ad.27.2025.12.05.00.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 00:25:11 -0800 (PST)
From: Aaron Ma <aaron.ma@canonical.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 16:24:58 +0800
Message-ID: <20251205082459.1586143-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1764923114;
 bh=8T0UHhzai2fWCo6tRGyMn8d6SwcVbZ4Ka0x+SCnjr+g=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=n7048VoxDjcpoyfzWChohsDTWQosrEVkSZ13oAQ/vlDNguhcRo9Z53pRX8cGGoDe8
 8LSjCrYFcVrzpBaA1M23yTC2evNJd0vO4qBNNZ00wkn3QEIBqKgm9iMELtPDP1EGtb
 vToN5mN7y1LPSURhE7mA/5kD80dq0YDtWxcrB6+XZ0dTcwPDirdfSfwYS62IkfOuc7
 y7ei0nse/GTQ4rek9gUbacLC+xlt2XiiujUD66Q/yeZ06OF1ra4z2E1rl35b7yPmuQ
 P1z4pgv9ZBaygZ+sRFoVvpR0TBkSRL7Hr3f4ttkcwjyQs573Nt8WZTWGEinks34Wm2
 VNYk+Z0lPYWOqfjZRaOisqmr6b5TXCbSlI7R6SrCLVStii+QL60IJ93fG1EXM6NQsX
 GJTrLep/hIUy4Tiqb6HEaE+2UYiHtjhPzQY3yoL6bcLeifrS762dE+HccU495U6f6u
 dhBvdZZ0pUKzOx7uRjEq+Jk/g6x0ItWJZxiNMqEfwOmOFXfbA0ZhfokfeuIqPqjx0C
 BE6ffxyV6GyvzEK7qeddDtpvuKokCpfm5BROnrDox88qtC+HBpGWp0nrvCgoA5zPyq
 OxgIjvKQk4asCDR8hFUy6gCytSXHOjHOwaEx6OxcVC53TriFf+pep71AqFk3suKtRz
 wbVxOhAyLWTP7iwQTy7bZDjs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=n7048Vox
Subject: [Intel-wired-lan] [PATCH v2 1/2] ice: Fix NULL pointer dereference
 in ice_vsi_set_napi_queues
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

Add NULL pointer checks in ice_vsi_set_napi_queues() to prevent crashes
during resume from suspend when rings[q_idx]->q_vector is NULL.

Tested adaptor:
60:00.0 Ethernet controller [0200]: Intel Corporation Ethernet Controller E810-XXV for SFP [8086:159b] (rev 02)
        Subsystem: Intel Corporation Ethernet Network Adapter E810-XXV-2 [8086:4003]

SR-IOV state: both disabled and enabled can reproduce this issue.

kernel version: v6.18

Reproduce steps:
Bootup and execute suspend like systemctl suspend or rtcwake.

Log:
<1>[  231.443607] BUG: kernel NULL pointer dereference, address: 0000000000000040
<1>[  231.444052] #PF: supervisor read access in kernel mode
<1>[  231.444484] #PF: error_code(0x0000) - not-present page
<6>[  231.444913] PGD 0 P4D 0
<4>[  231.445342] Oops: Oops: 0000 [#1] SMP NOPTI
<4>[  231.446635] RIP: 0010:netif_queue_set_napi+0xa/0x170
<4>[  231.447067] Code: 31 f6 31 ff c3 cc cc cc cc 0f 1f 80 00 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 48 85 c9 74 0b <48> 83 79 30 00 0f 84 39 01 00 00 55 41 89 d1 49 89 f8 89 f2 48 89
<4>[  231.447513] RSP: 0018:ffffcc780fc078c0 EFLAGS: 00010202
<4>[  231.447961] RAX: ffff8b848ca30400 RBX: ffff8b848caf2028 RCX: 0000000000000010
<4>[  231.448443] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff8b848dbd4000
<4>[  231.448896] RBP: ffffcc780fc078e8 R08: 0000000000000000 R09: 0000000000000000
<4>[  231.449345] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000001
<4>[  231.449817] R13: ffff8b848dbd4000 R14: ffff8b84833390c8 R15: 0000000000000000
<4>[  231.450265] FS:  00007c7b29e9d740(0000) GS:ffff8b8c068e2000(0000) knlGS:0000000000000000
<4>[  231.450715] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[  231.451179] CR2: 0000000000000040 CR3: 000000030626f004 CR4: 0000000000f72ef0
<4>[  231.451629] PKRU: 55555554
<4>[  231.452076] Call Trace:
<4>[  231.452549]  <TASK>
<4>[  231.452996]  ? ice_vsi_set_napi_queues+0x4d/0x110 [ice]
<4>[  231.453482]  ice_resume+0xfd/0x220 [ice]
<4>[  231.453977]  ? __pfx_pci_pm_resume+0x10/0x10
<4>[  231.454425]  pci_pm_resume+0x8c/0x140
<4>[  231.454872]  ? __pfx_pci_pm_resume+0x10/0x10
<4>[  231.455347]  dpm_run_callback+0x5f/0x160
<4>[  231.455796]  ? dpm_wait_for_superior+0x107/0x170
<4>[  231.456244]  device_resume+0x177/0x270
<4>[  231.456708]  dpm_resume+0x209/0x2f0
<4>[  231.457151]  dpm_resume_end+0x15/0x30
<4>[  231.457596]  suspend_devices_and_enter+0x1da/0x2b0
<4>[  231.458054]  enter_state+0x10e/0x570

Add defensive checks for both the ring pointer and its q_vector
before dereferencing, allowing the system to resume successfully even when
q_vectors are unmapped.

Fixes: 2a5dc090b92cf ("ice: move netif_queue_set_napi to rtnl-protected sections")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
V1 -> V2: add test device info.

 drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 15621707fbf81..9d1178bde4495 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2779,11 +2779,13 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 
 	ASSERT_RTNL();
 	ice_for_each_rxq(vsi, q_idx)
-		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
+		if (vsi->rx_rings[q_idx] && vsi->rx_rings[q_idx]->q_vector)
+			netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
 				     &vsi->rx_rings[q_idx]->q_vector->napi);
 
 	ice_for_each_txq(vsi, q_idx)
-		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX,
+		if (vsi->tx_rings[q_idx] && vsi->tx_rings[q_idx]->q_vector)
+			netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX,
 				     &vsi->tx_rings[q_idx]->q_vector->napi);
 	/* Also set the interrupt number for the NAPI */
 	ice_for_each_q_vector(vsi, v_idx) {
-- 
2.43.0

