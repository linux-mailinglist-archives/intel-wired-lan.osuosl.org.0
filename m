Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F16984C86
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 23:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A639042472;
	Tue, 24 Sep 2024 21:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMmW-6i5IVU0; Tue, 24 Sep 2024 21:06:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4C0F42469
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727212018;
	bh=zze8MV+a5IZuaNoaIPGWHIQDnCuS1cR3u4TVceY5GpQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t/UCmwEephGuIegr5MMjCF0D6TAl5+9czd5MCDhwEd6AGk4Mugnoyr6izt4NGwjHF
	 Mh6ORsNpOYEg0JyX3RyhIqAHQcqc2DH2Fw9mYzh+x+j24Ds3S7jnk997PBNAk9Gfib
	 HHu4LJE3XkCA5cfzblEcci9xNlTQq/mHxeVLqLfNRWCbV9vCdzZ6qaSa3BXIDoSVgl
	 ekJsS3DDIsUz0IcNnCcB5rZCFvlntueMUb+HTj5wfen6+iAcWFlAjr1c3qphlfOrTb
	 oF7nkx8Rmz0ic19hi+3rzmsazjMEqbyJ+NL+12TDS9xvcb7eM2eSoZMIjdZgvApomW
	 306lW9pHIJ7ZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4C0F42469;
	Tue, 24 Sep 2024 21:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD53B1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBF1E42463
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:06:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lrKZRMqzer1V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 21:06:55 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 916964245D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 916964245D
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 916964245D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:06:55 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-206e614953aso59098385ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 14:06:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727212015; x=1727816815;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zze8MV+a5IZuaNoaIPGWHIQDnCuS1cR3u4TVceY5GpQ=;
 b=t2P+vJPpyb7NltBWd2IiQlY/RnHXvF6JpXA2Lpci8fm9O8AhaL2t3WF/yCW3+PkMMJ
 HbhstF7RQD4L7J5h+QkOw6j0GuaOsSbCL2s3m6jz8/mixDRSHAeH26V+OkwEPGtBU6f4
 VxWD+ptiXQ8vRSfj7MPSoMV5tF9DmdqWAdkw1yb03T4hwiYPHYBJ1W/4h3JOTILZUQEJ
 TtFhH1RGsgpQd4X1JbR82PE3n3KCOjO8jXGzLNSo+/cgFsSr6b4zcTsPqC1O7kTGzdU6
 rxIYnY35Nc0hBQXtI+6HGpkHAa0r2OCahubtPSgIQIEUDzVPDQGotkzEbfOV7xJzkMQT
 BC/Q==
X-Gm-Message-State: AOJu0YwRFmVE2obiopQGr1AHwQhJUu5XTJ/fNDnHbrKtwUpxaRigOjGc
 dpQaRNveplh6VGgv/1vpl6HXCV65p5uwqxqhIeZxMSHdL92OvKCT4jFCniqh3X4=
X-Google-Smtp-Source: AGHT+IHX3x5sr2y+cTrUUt+sNEM5mWSUWbyv2wne6NfTdQiuQ1/NbXsHRbIcp7XwwrX4t2d+S7Qg/g==
X-Received: by 2002:a17:903:2309:b0:207:1913:8bae with SMTP id
 d9443c01a7336-20afc477029mr7357425ad.14.1727212014748; 
 Tue, 24 Sep 2024 14:06:54 -0700 (PDT)
Received: from dev-mkhalfella2.dev.purestorage.com ([208.88.159.129])
 by smtp.googlemail.com with ESMTPSA id
 d9443c01a7336-20af1818f69sm13717095ad.184.2024.09.24.14.06.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2024 14:06:54 -0700 (PDT)
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Auke Kok <auke-jan.h.kok@intel.com>,
 Yuanyuan Zhong <yzhong@purestorage.com>, Jeff Garzik <jgarzik@redhat.com>,
 Mohamed Khalfella <mkhalfella@purestorage.com>,
 Ying Hsu <yinghsu@chromium.org>, Simon Horman <horms@kernel.org>
Date: Tue, 24 Sep 2024 15:06:01 -0600
Message-Id: <20240924210604.123175-2-mkhalfella@purestorage.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240924210604.123175-1-mkhalfella@purestorage.com>
References: <20240924210604.123175-1-mkhalfella@purestorage.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1727212015; x=1727816815;
 darn=lists.osuosl.org; 
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=zze8MV+a5IZuaNoaIPGWHIQDnCuS1cR3u4TVceY5GpQ=;
 b=LpD1DXWFvjpKREMOpm/nsehp8axPz6KWDdxfMwyOWodUdtoIXCmvTUBqv/JIdtTdH+
 Iy1pY8LxoGuo9mvuZRnoGip/ayZoTwnu11N+N0gGLm5FYSFEuVChZSGftJDVywgksvIb
 Qjc3uPpGOrTGwHNhUPOOnmrd+1W3s+DIa5c8nsy7ZMEvlLpme6Tk5uhHedwFKmFE7utz
 pgZO8RumaVSiHd8r6EFJpKfNSHq5uciBwmp65a6FDjSV/L7A5NIPJZjvWDjoUtBt5BIN
 D8ZfXvrvou1iD0T3CsQM/93xBpGwvnAoVYGGKDg1pBLAcFUt/bEtFsXubJfMgEgGKOYB
 ryWg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=LpD1DXWF
Subject: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device up
 after non-fatal error
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
index 1ef4cb871452..f1d088168723 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9651,6 +9651,10 @@ static void igb_io_resume(struct pci_dev *pdev)
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
 	if (netif_running(netdev)) {
+		if (!test_bit(__IGB_DOWN, &adapter->state)) {
+			dev_dbg(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
+			return;
+		}
 		if (igb_up(adapter)) {
 			dev_err(&pdev->dev, "igb_up failed after reset\n");
 			return;
-- 
2.45.2

