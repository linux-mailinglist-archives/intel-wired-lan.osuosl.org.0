Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 607CD984891
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 17:24:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B58B60B36;
	Tue, 24 Sep 2024 15:24:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pielppNEjccZ; Tue, 24 Sep 2024 15:24:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA4D060B1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727191455;
	bh=8eV4Vklmlj8bqBkSf+z2gjD9tas8DcH2sV0AiX6LOJs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=J7wlSa8unbJftmsp8YKt4AMX53JvB3RdrNiMY38JueIND7IybdE1Uf/Rg2uI6V+TP
	 0MlvR9/udSd9hERdBcBF2xwNK9W3GKdzbJgMuBaXOw2an73gvTil8KGS7osUwBpink
	 E3vhMn6DevboNynVIdXDHWpYlwYwvaTjVXPTIm++TOTsn6gn+AvIpXwctYsIDtXq1K
	 9pCWUecm0rCmTMGBw6bY1bCbbJHKtujqcicy2Yy4Ddv55QuACSRD/OBM0EFYu5WqNz
	 AzzmknPCiLnkmkuvwbJLF5xySF8AI2eEIQLfucM5aHEJgIaeF1co0x2+JFvNvpG078
	 0nZNRidg5MBDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA4D060B1D;
	Tue, 24 Sep 2024 15:24:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 599711BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 21:22:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47DB381D47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 21:22:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YjbUu3_Leril for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 21:22:30 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::429; helo=mail-pf1-x429.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F1A8B81D11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1A8B81D11
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1A8B81D11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 21:22:28 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-718e9c8bd83so4015929b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 14:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727126548; x=1727731348;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8eV4Vklmlj8bqBkSf+z2gjD9tas8DcH2sV0AiX6LOJs=;
 b=l0BfeiznM46pTmEHjzi7jRI7Hw22nuSVk2qm7Ec+L4rOpZqGsbF/z5bJ0plCsCIBr7
 ZhuhZCt9XSjZcGzKMj8kgiP8eks07D5KN3a/0UZPYUqVj057ErdvjfJRzU1vYAnDKGQw
 wGLqqUQyPOpsWs52h58H9CXWaZkNcXyzvNxP9flQS5kxDo00GSF9Xi4PCAMoeawLMjed
 qJ+sv2v9A3Q1Ay+ZqoYGPhMty6JAYmLBPPQgaeUF2uIRBZ5jDdQ+ZJvUyBAGlo4Lfjj2
 mtV+DOKg6MSR10dqw93apBpQCxTlpQsVTQEGd1BZsGp3nOEHU+v3FGD3HtGmxKfiFuwv
 AUNw==
X-Gm-Message-State: AOJu0Yy6iUUJFHB5LjXMR6/E3t3FrWa1Ns2h0n6m1XdfFxYAmS56DLwf
 /3HnqoJQFEChj8Gn9dmRysdbTexxh23IpP+3m7eA6/EkTT25eiNKGzWZCz/gilk=
X-Google-Smtp-Source: AGHT+IHyxfMvPUsr9LZzOLYIagUPDr6zEE6tUUXhw4z3fyt80Nvtp1XMDHbKB4CNrD3CfGDt7Umkbw==
X-Received: by 2002:a05:6a21:1346:b0:1d2:e8f6:7f3 with SMTP id
 adf61e73a8af0-1d343c5645amr1626287637.11.1727126547871; 
 Mon, 23 Sep 2024 14:22:27 -0700 (PDT)
Received: from dev-mkhalfella2.dev.purestorage.com ([208.88.159.129])
 by smtp.googlemail.com with ESMTPSA id
 d2e1a72fcca58-71afc847924sm66047b3a.58.2024.09.23.14.22.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2024 14:22:27 -0700 (PDT)
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yuanyuan Zhong <yzhong@purestorage.com>,
 Jeff Garzik <jgarzik@redhat.com>, Auke Kok <auke-jan.h.kok@intel.com>,
 Mohamed Khalfella <mkhalfella@purestorage.com>,
 Simon Horman <horms@kernel.org>, Ying Hsu <yinghsu@chromium.org>
Date: Mon, 23 Sep 2024 15:22:12 -0600
Message-Id: <20240923212218.116979-1-mkhalfella@purestorage.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Tue, 24 Sep 2024 15:24:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1727126548; x=1727731348;
 darn=lists.osuosl.org; 
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8eV4Vklmlj8bqBkSf+z2gjD9tas8DcH2sV0AiX6LOJs=;
 b=EtDliOgIwWxxfYJDwA8JtxEhM0Toh6uTe4oSLtJ+KKTgW89OA/7rA886ELp2YcgGzZ
 171u10T+jKYnOW3xGHWRXNW5NJJPtzXgJMwI6KIjLtsCA9/wDImJXn0k+mV7Ujus+tWc
 c75oGfG8dqlbQktiFAGiJlePVc8eg6kGkRlkdFnFZv7c8XT+9HECsfuoIj6HlwHLRaF6
 d+OIvyWfsTmHSgYb1kPOUJa8v2GD/wUfCC8KyZLTeisj/XbgEQobU5Nij50A6T3ZH3OP
 0QeLulXEbNtG4BjqF3QT443oMEym0vETcF60Hun9SEHdyScoGBxKR1Pi+NuWVG403yG4
 fYzQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=EtDliOgI
Subject: [Intel-wired-lan] [PATCH] igb: Do not bring the device up after
 non-fatal error
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
changed igb_io_error_detected() to ignore non-fatal pcie errors in order
to avoid hung task that can happen when igb_down() is called multiple
times. This caused an issue when processing transient non-fatal errors.
igb_io_resume(), which is called after igb_io_error_detected(), assumes
that device is brought down by igb_io_error_detected() if the interface
is up. This resulted in panic with stacktrace below.

[ T3256] igb 0000:09:00.0 haeth0: igb: haeth0 NIC Link is Down
[  T292] pcieport 0000:00:1c.5: AER: Uncorrected (Non-Fatal) error received: 0000:09:00.0
[  T292] igb 0000:09:00.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
[  T292] igb 0000:09:00.0:   device [8086:1537] error status/mask=00004000/00000000
[  T292] igb 0000:09:00.0:    [14] CmpltTO [  200.105524,009][  T292] igb 0000:09:00.0: AER:   TLP Header: 00000000 00000000 00000000 00000000
[  T292] pcieport 0000:00:1c.5: AER: broadcast error_detected message
[  T292] igb 0000:09:00.0: Non-correctable non-fatal error reported.
[  T292] pcieport 0000:00:1c.5: AER: broadcast mmio_enabled message
[  T292] pcieport 0000:00:1c.5: AER: broadcast resume message
[  T292] ------------[ cut here ]------------
[  T292] kernel BUG at net/core/dev.c:6539!
[  T292] invalid opcode: 0000 [#1] PREEMPT SMP
[  T292] RIP: 0010:napi_enable+0x37/0x40
[  T292] Call Trace:
[  T292]  <TASK>
[  T292]  ? die+0x33/0x90
[  T292]  ? do_trap+0xdc/0x110
[  T292]  ? napi_enable+0x37/0x40
[  T292]  ? do_error_trap+0x70/0xb0
[  T292]  ? napi_enable+0x37/0x40
[  T292]  ? napi_enable+0x37/0x40
[  T292]  ? exc_invalid_op+0x4e/0x70
[  T292]  ? napi_enable+0x37/0x40
[  T292]  ? asm_exc_invalid_op+0x16/0x20
[  T292]  ? napi_enable+0x37/0x40
[  T292]  igb_up+0x41/0x150
[  T292]  igb_io_resume+0x25/0x70
[  T292]  report_resume+0x54/0x70
[  T292]  ? report_frozen_detected+0x20/0x20
[  T292]  pci_walk_bus+0x6c/0x90
[  T292]  ? aer_print_port_info+0xa0/0xa0
[  T292]  pcie_do_recovery+0x22f/0x380
[  T292]  aer_process_err_devices+0x110/0x160
[  T292]  aer_isr+0x1c1/0x1e0
[  T292]  ? disable_irq_nosync+0x10/0x10
[  T292]  irq_thread_fn+0x1a/0x60
[  T292]  irq_thread+0xe3/0x1a0
[  T292]  ? irq_set_affinity_notifier+0x120/0x120
[  T292]  ? irq_affinity_notify+0x100/0x100
[  T292]  kthread+0xe2/0x110
[  T292]  ? kthread_complete_and_exit+0x20/0x20
[  T292]  ret_from_fork+0x2d/0x50
[  T292]  ? kthread_complete_and_exit+0x20/0x20
[  T292]  ret_from_fork_asm+0x11/0x20
[  T292]  </TASK>

To fix this issue igb_io_resume() checks if the interface is running and
the device is not down this means igb_io_error_detected() did not bring
the device down and there is no need to bring it up.

Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
Reviewed-by: Yuanyuan Zhong<yzhong@purestorage.com>
Fixes: 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 1ef4cb871452..8c6bc3db9a3d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9651,6 +9651,10 @@ static void igb_io_resume(struct pci_dev *pdev)
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
 	if (netif_running(netdev)) {
+		if (!test_bit(__IGB_DOWN, &adapter->state)) {
+			dev_info(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
+			return;
+		}
 		if (igb_up(adapter)) {
 			dev_err(&pdev->dev, "igb_up failed after reset\n");
 			return;
-- 
2.45.2

