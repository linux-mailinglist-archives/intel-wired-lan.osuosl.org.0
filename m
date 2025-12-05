Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26895CA5EC4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 03:43:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB161409EA;
	Fri,  5 Dec 2025 02:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7woSoK9w2PpZ; Fri,  5 Dec 2025 02:43:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E16C409ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764902614;
	bh=uJGwalCsK5wg+VSROCE2YDpeUgGvxPcagIFbkdcqD2Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aaBP4jV9ffOYfNGQdx8XqaCcXSyxE7XxEl14OIhN8SbEIJ0hraKqAERHC5h7QC9L7
	 tXdjonkwmzJuFM2UGlyjLAFz/nBq2HR8/+8A6gw6ihNXTn29wN3ldQZtx7/qg30uw4
	 g+jz4ZTfMVOA3B2dSBbJP/zg8sVyurrEcNtDJ7NQM2n4YTLLmYrV94ulJ9NJ0yT4Il
	 R1rquKlyEYUSWQsEsgJQw8tXTvwzFCY8JIzeZdPsIeuunCX+ivVmR+nBs1MbVBbTz2
	 qtqk3kIsBLR+L1HtTSus85digyRFmua4iITkkkZ40iCJvgHncnlpWze6SnRtR08Ndw
	 yOYdg4fkEHPPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E16C409ED;
	Fri,  5 Dec 2025 02:43:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C05DE7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 02:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC1354008A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 02:43:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cdEyNwo3dPil for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 02:43:26 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 05 Dec 2025 02:43:25 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D7E1A40086
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7E1A40086
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7E1A40086
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 02:43:25 +0000 (UTC)
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6D27A401BB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 02:38:18 +0000 (UTC)
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-2954d676f9dso13159985ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 Dec 2025 18:38:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764902297; x=1765507097;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uJGwalCsK5wg+VSROCE2YDpeUgGvxPcagIFbkdcqD2Q=;
 b=cak+mCPd9j5I3OKxMUOYDygaAr1WM6GlnUu3NZ+FJcIul11eFMMzjBkbe3gtg2OUj1
 PKqlp1UWZ0iuUL+34Peobs10D07doCJI112ggOC8qFx14J1a1UxwNkSKTt7mN+YINUNJ
 8pjOhTkUMp4xa2WA5xwyZfWoZ3qYpVmWGD5VJKjSpJRWdWC2HVD/nSSQgwMUYXQy4M7n
 Y23MQlyz/+4fMbTb5Nn6kroyYdZ3BDS7O4SGOx8433VvOlnX/xWlDGwCCPLALqzX49vn
 /T3fX77kMvnRO8js2WRYZtJKdJGnflUh6PqvNEVkeZNLDROuG4Uz7k4bzZ7jeSxRU3Lf
 zgfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFgILVts/xT7+aVQR5GeQaZ1NFUYBfT9EENDqCmkusj8V5Twomta5QtS/NO7rqFMSKkTWCVhZlkuRJ8UbM35Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwV3nIWaPpc9pRjIOQFqDooAHnVdwuqVybJgneZzzoir4Lv5Ccr
 CMHHJn3OGbuHp/8Cu89lXjsoZlOzFihDqQYkpj1FwHu9Q3zMs7LtXLv5RRRQUEJHJCgPiIFCM8X
 RGSO2lBe0HR/WEb7aCUcUYXsmmvl124JlPsAx5C6UQxBktDnxlJoNx5W99WLrnx8EmdErb7j/qy
 BasEbmRcumwxw=
X-Gm-Gg: ASbGncvNwFFYrgNseNbUr018OIQhdT5mm37bMPNBBuI2S1X+AfM/h79c58hoxtoxkeU
 Tdv++XMUJm7RnxctLYHjNQWC5TE5A2E3nq0wQGVdX6qgjK5jy15nnHi0qhxH3fDV7cpx1tIFL41
 X3+W07eLw8j8+poiidfM0yU9JqFFXXx7RJzDDwkfPB1xMhA/xxrRnxJ283G5PHB/wJWO860Hhvf
 sqZswrRnV6h+r9q8PAO9eEE0Tkj7WNerHRb+9Xzw35ngRSze94ewNbk1v7/f1nyqR/0PoBhZmfn
 bJ8oGMPcdm6yp/CdTbsmgbFnSGg3HXFpvFUJNKl6TrYTbICSVINHX8eeGRGiw0+HqzqiIRtvdng
 WOhxiAQJ1jEvM2RAuV7jvVOH7
X-Received: by 2002:a17:902:daca:b0:29d:9b3c:4fc9 with SMTP id
 d9443c01a7336-29da1eedfebmr67841565ad.57.1764902296844; 
 Thu, 04 Dec 2025 18:38:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHc9b4mxhFlM56SAxkWLSFDcHCeO74U7vxw1Yuh33+dvWDULZVC3R1bI7UwYHAoSDDHs70lAw==
X-Received: by 2002:a17:902:daca:b0:29d:9b3c:4fc9 with SMTP id
 d9443c01a7336-29da1eedfebmr67841265ad.57.1764902296468; 
 Thu, 04 Dec 2025 18:38:16 -0800 (PST)
Received: from localhost.localdomain ([103.155.100.1])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29dae99f1cfsm32282785ad.55.2025.12.04.18.38.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Dec 2025 18:38:16 -0800 (PST)
From: Aaron Ma <aaron.ma@canonical.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 10:37:56 +0800
Message-ID: <20251205023757.1541228-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1764902298;
 bh=uJGwalCsK5wg+VSROCE2YDpeUgGvxPcagIFbkdcqD2Q=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=MQWWhghvEpgwzPztljIvnBznVS06vUqZp8wvLGovAc5KZ8xr2rH6eVGAwLxg5adaR
 0prry4den4IQ80+ivf5poNJisGPCs9yrYLZTkrfI/GIYZP0t6DzTfY3IiYQ0AqNUO0
 +oLV7zRDSRC0gNOcyabVUHgx4RagbCTCgfD7zcfOOJn7GK+6mGJ1fXf5UBZblPY28y
 KZM9OJ9Wd8b3QVk0WtQcGA3+XypPMXFE8rQ6wbQAoHchXnuXT3EoH0NXlW1kFGSWI5
 mmR34a5jUp4Vq/J2Bg6ZwLCl9YRngSXx7JPz5OXFQkK5YuTz8E9IWBUur8nEMAb4lU
 w9hy7vWuM5GxuWntYPfpSsvO7DUDPRTWWf2UbTzl0skQquJuQTvdnLeck7AwIi6qDQ
 wn0/v85VwoKpWOLiPb/AhAOasmWM675xG8Tyb3BZFaDshcgPo+WVHNKCJgIzx7bciP
 CSr/IVWCwRKRhomExf8CGrf2VH2lR0KhqL4aF2hm4DOSed8x00qVPeh7wTzvnynUPg
 LeWrlg6qiKxjbMXUUJZMknjUFOpDKlngAWEwppTDHdmNj7+FDZ8JdAp/jsp9Pnt+xc
 qhKbVsqgI00EWj3D1d8THtpHr5bT8k7jcOvSyN3kswklojL3OKPfoMcISsCLvsJQCR
 geFtS5J8QHLJ/wz1BjIu8Mlg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=MQWWhghv
Subject: [Intel-wired-lan] [PATCH 1/2] ice: Fix NULL pointer dereference in
 ice_vsi_set_napi_queues
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
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
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

