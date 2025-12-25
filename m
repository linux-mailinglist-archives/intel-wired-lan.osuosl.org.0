Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA84CDD5BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Dec 2025 07:21:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B77E682323;
	Thu, 25 Dec 2025 06:21:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r0q5GZRijY25; Thu, 25 Dec 2025 06:21:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26EA282332
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766643707;
	bh=qFvlMlvE9r5nhkR9r0sSoyW03M/nv0IQfYhprTVg6t0=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=xlTFCC48yxjlsvXuPoIbFjO4OHtTvUuBD2NA5ygjK9yIrB1lnlBp4OO3A14lrJkFq
	 SyWvFwxzbQ9WumJrg4HrNDSEFsKIYWJ7amt6v3N4fIEu+egBOgMqkzadCW+O63v+4/
	 2hYyJvX/LSo6qKGY+lbVh4UQtPZ4oHNfTqqMZSogz8h9o/RiLEfpalHOsmv6E3m53X
	 TyqL3tCrpVHvp2xQVYPEkSK/0F5HLMvooduqJLNwIzqj7zkNmdWywwNpyYM5XrGmmx
	 uTuwsG6Kpgm2IjiY+DiHWoVx/yJap4wsqNbGh/jL12n4549UrFlTtAA2aebwgYMDjp
	 EYAsMmu63NWwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26EA282332;
	Thu, 25 Dec 2025 06:21:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B93BEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 06:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D75A60A64
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 06:21:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0LItGhrQZC1F for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Dec 2025 06:21:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F116C608DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F116C608DA
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F116C608DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 06:21:43 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BFDE33FCFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 06:21:40 +0000 (UTC)
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b800559710aso492567266b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Dec 2025 22:21:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766643700; x=1767248500;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qFvlMlvE9r5nhkR9r0sSoyW03M/nv0IQfYhprTVg6t0=;
 b=Iov+fmB+jCx1vwfKJc6Pxbo9GYmt9ttXaY5RShajIKgsK8MX4TgV3HD0T338DfDBfb
 5P/KeC/neUVaHhrt0e/i1tTh8FIQgx8HnWryFI9d0e7dI54LENf/WceB3Gf1XyvV5tY0
 Ey6w+pjvffQQlHOElxpq9L5kZeOyprcifQKjrHsk9juykepphPszdbqBeX6jWcCV6CaV
 oj8/I0VWtKkUcfPf9Xi2shZgLyHJ8xG/VnA/RZ+smFowsZvZTx8rdpufCqVvPnre9G4r
 QBrE1bAjCWhibjPLLQvReHn2yawEtmaqHK8qsoErc4LTvpz3T4lGxXaDzR+BDRZcxbxn
 fonQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1EI7MBgMZOkgWNiKDsV0tF61C/7/KvCMNqRM+jDCgGc9+ILgBU3c/QqfRJ789idfJCMPwf12hCib926ZYQ7w=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyLN8SNfdLJRBbidBFOMP64nAcPV9x4vkgJAp0yoQJMVHamKfIm
 bKk4BJ18LGZBaU9Av83xdTaEt7dq05/PRLPOdF7UoPmUsRhNwKadXneATCUY4EIpVw70tF+TjrB
 xF3h5UhyVE0BqzxEeeoy8iVIJzoApNgFZnRTUf6PpxwaNIB34efqMwinyYBKhB9O24UWgY5ZR/8
 2Wzo2voFsdvIo=
X-Gm-Gg: AY/fxX6MintMa1FM0PQ7KalTmVg3OnhZCTrKU4j8NtsZzyn6Ll4qjOVoBNnvav9Isq7
 GzpErBNoJlwRhRiuS6lT0nQ+zjHDtJabL+uiRmGwtKVRhrfbDDaWu7kQZrzL9YpERIA+eS+b6Y9
 m42yEd4tTzRe3x6dFO1nwUED8ztHDbegOBj3zDBc+BLyQSPybp9Y2i/w/1KX9k28DMawHCgaj7d
 RVAbZKHXpsM9a0rCLTo0uTz6l4nnP6c/IZUk86+gC95zE4SEOcL9WIHlYaRdiJGXxG+hr2QUYDZ
 EEnFU2OssoJId+0JR4+TDj/v/FJto7QcHs7U2GSAdh8IMmyoCWtRtpebQTJw9mOt+MEkmI5RDDL
 d64iyVlaDNjP896OEBx2fuN6S
X-Received: by 2002:a17:907:6d23:b0:b72:77c7:d8ad with SMTP id
 a640c23a62f3a-b8037058bbbmr1942385566b.35.1766643700220; 
 Wed, 24 Dec 2025 22:21:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IERMBDdSDta5JlQnNeKU7jeU/Kta6vNL1BTLPRsSG/es4jU3kG1aOPKcbTpD7JAz7NhxyeNTQ==
X-Received: by 2002:a17:907:6d23:b0:b72:77c7:d8ad with SMTP id
 a640c23a62f3a-b8037058bbbmr1942383466b.35.1766643699778; 
 Wed, 24 Dec 2025 22:21:39 -0800 (PST)
Received: from localhost.localdomain ([103.155.100.1])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b8037f0ecb9sm1948058466b.56.2025.12.24.22.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Dec 2025 22:21:39 -0800 (PST)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 25 Dec 2025 14:21:21 +0800
Message-ID: <20251225062122.736308-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1766643700;
 bh=qFvlMlvE9r5nhkR9r0sSoyW03M/nv0IQfYhprTVg6t0=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=T8KUI57iGqDsGUcoFCQAo6S+oDPoygCA5O7rWAjLP2aV+5E1dKOChUI0RY+eEBsGE
 2EACJEufMBGk4NqRNUP9m0ER8xrnTX7FLr4rzSZ7xPXdCqzZEg9OIUw2k+8il5Cgmw
 Ji3PAumKb6EU+IMmGs0e0R/86UNZ1fJ1Lh9Vrc0/a/tCahAypvgMzIy2vhe5GXTT8w
 bgFlUmoiLjl3JiCXqNtjDSKeV9WDX1KhGIQLq9hd3kZpFuGR/iSZ8DjI56ZV8t5NmI
 7zqw1Qd0eSzl6q70n7Z6e215ceAY1pe2qUk3+UQcq0Eh69LEKIPqm5CulotE+xLeEI
 2a9deiSpPgsg+g7KLkWz1oXreNup8VavVTeh5tgZ4s8JwB8r0oONGhaZ4+qreZcAOz
 Ozs+XbVARtFx3zCAcyTE4yQ5s/OM3HoHcuYzpWvdeE7hCEvSCfx3VMA+S7Wef8e4UC
 4jGu7plZTuR/MWDK2UlPR9KmGygC+2PNtRf778hJO8/zNq0MR6ikCR8cWi5U44wpVx
 ha0FtkSIKmNmDgO19hfOlhSK4WjwVB8/iQ2O3evMz9NJFEhfyI0gJDXHT0NAOTyH8u
 KA1unlnbRT88flZRm2G6SbchyMMuGXqsKovhaKCO7XQ0gyZkBfpFCcTTIXBxdN/yV8
 dAJmUmHVg+RNy/p8Y03i4cGI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=T8KUI57i
Subject: [Intel-wired-lan] [PATCH v3 1/2] ice: Fix NULL pointer dereference
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
From: Aaron Ma via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Aaron Ma <aaron.ma@canonical.com>
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
V2 -> V3: no changes.

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

