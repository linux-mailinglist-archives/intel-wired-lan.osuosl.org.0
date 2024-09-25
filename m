Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B85798664B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 20:30:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E3E684AD1;
	Wed, 25 Sep 2024 18:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1wNTtI5b8Z4N; Wed, 25 Sep 2024 18:30:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56CAA84ACA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727289046;
	bh=tjQ0rcIEaSCzG9ihkgSheSOq5iC7BYWon/iRJLh64fQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WXyzknAbU0auA9La0PJmIeKnN+/vfRGzr01/QVDqUNFxTg+FQGqkkYUKuScyQvz1j
	 Yt3oHMVcn0aMvruNNqTXDk/5QH7coMnAS6znRj5R6VAyjiRbt+rj9cfX/RcOCki6BE
	 DdGcJBE9cwLGLw6LCVPrGogevvPaChFDLODZc8H//FJio0St8qGUPtMOgFgQnKF0dd
	 w1BsisumTSr04Bumh+0j3C3OyzozkwCUZZKa3DcKIadHQvZ7xJKH4hncAD+rGjfghJ
	 fvmsLwCN8fWP4wyau34iO/0o+Iopm3nxTY2sbrWSYRtZmf+03nPYW2slHdS5p9N5/L
	 JqWgLZ3sBXzHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56CAA84ACA;
	Wed, 25 Sep 2024 18:30:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B31B1BF408
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:30:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4693C84A29
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:30:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N3GGlznh0AES for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 18:30:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 73A1284AAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73A1284AAD
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73A1284AAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:30:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A2930A446F2;
 Wed, 25 Sep 2024 18:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A54C4CEC3;
 Wed, 25 Sep 2024 18:30:37 +0000 (UTC)
Date: Wed, 25 Sep 2024 19:30:35 +0100
From: Simon Horman <horms@kernel.org>
To: Mohamed Khalfella <mkhalfella@purestorage.com>
Message-ID: <20240925183035.GV4029621@kernel.org>
References: <20240924210604.123175-1-mkhalfella@purestorage.com>
 <20240924210604.123175-2-mkhalfella@purestorage.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240924210604.123175-2-mkhalfella@purestorage.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727289041;
 bh=rCVfh1YcnQdRwRTGp5hSq3bNXJ39sMKutBAw1jlny9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m1b61+9lBP1hv0l8LCCNmAdETPhM1Amw6RRUwFaWxRlZ/HZhCcaTulJ4YiqxrcXt6
 kETQaFMixIBRCzStOBxfvJdRBJCW73swjJzKXcWcHt/1XDUx1zQxVdtH9ebq5BI49z
 GxCQS9xJkmWY7s9i84S8lCMlYmCNZKoE7wNHJ2wXgEcQMAMDpLz1iSeHuT+VOxT4CT
 n2JEGJlbnVd6bHw8dFYpNao/D2AIExLJEw3HSef/x3rLjBTcqyRFke4nRAEzF2mdcj
 q9B8DC9ITKhkSJhYj27r3PQkMYvxqMqB3AEAKrFOK16Uag87i13XPHKQizMjm5JPBq
 emquRfqSpi3QA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=m1b61+9l
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device
 up after non-fatal error
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
Cc: Auke Kok <auke-jan.h.kok@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Ying Hsu <yinghsu@chromium.org>, linux-kernel@vger.kernel.org,
 Jeff Garzik <jgarzik@redhat.com>, Yuanyuan Zhong <yzhong@purestorage.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 24, 2024 at 03:06:01PM -0600, Mohamed Khalfella wrote:
> Commit 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> changed igb_io_error_detected() to ignore non-fatal pcie errors in order
> to avoid hung task that can happen when igb_down() is called multiple
> times. This caused an issue when processing transient non-fatal errors.
> igb_io_resume(), which is called after igb_io_error_detected(), assumes
> that device is brought down by igb_io_error_detected() if the interface
> is up. This resulted in panic with stacktrace below.
> 
> [ T3256] igb 0000:09:00.0 haeth0: igb: haeth0 NIC Link is Down
> [  T292] pcieport 0000:00:1c.5: AER: Uncorrected (Non-Fatal) error received: 0000:09:00.0
> [  T292] igb 0000:09:00.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
> [  T292] igb 0000:09:00.0:   device [8086:1537] error status/mask=00004000/00000000
> [  T292] igb 0000:09:00.0:    [14] CmpltTO [  200.105524,009][  T292] igb 0000:09:00.0: AER:   TLP Header: 00000000 00000000 00000000 00000000
> [  T292] pcieport 0000:00:1c.5: AER: broadcast error_detected message
> [  T292] igb 0000:09:00.0: Non-correctable non-fatal error reported.
> [  T292] pcieport 0000:00:1c.5: AER: broadcast mmio_enabled message
> [  T292] pcieport 0000:00:1c.5: AER: broadcast resume message
> [  T292] ------------[ cut here ]------------
> [  T292] kernel BUG at net/core/dev.c:6539!
> [  T292] invalid opcode: 0000 [#1] PREEMPT SMP
> [  T292] RIP: 0010:napi_enable+0x37/0x40
> [  T292] Call Trace:
> [  T292]  <TASK>
> [  T292]  ? die+0x33/0x90
> [  T292]  ? do_trap+0xdc/0x110
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? do_error_trap+0x70/0xb0
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? exc_invalid_op+0x4e/0x70
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? asm_exc_invalid_op+0x16/0x20
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  igb_up+0x41/0x150
> [  T292]  igb_io_resume+0x25/0x70
> [  T292]  report_resume+0x54/0x70
> [  T292]  ? report_frozen_detected+0x20/0x20
> [  T292]  pci_walk_bus+0x6c/0x90
> [  T292]  ? aer_print_port_info+0xa0/0xa0
> [  T292]  pcie_do_recovery+0x22f/0x380
> [  T292]  aer_process_err_devices+0x110/0x160
> [  T292]  aer_isr+0x1c1/0x1e0
> [  T292]  ? disable_irq_nosync+0x10/0x10
> [  T292]  irq_thread_fn+0x1a/0x60
> [  T292]  irq_thread+0xe3/0x1a0
> [  T292]  ? irq_set_affinity_notifier+0x120/0x120
> [  T292]  ? irq_affinity_notify+0x100/0x100
> [  T292]  kthread+0xe2/0x110
> [  T292]  ? kthread_complete_and_exit+0x20/0x20
> [  T292]  ret_from_fork+0x2d/0x50
> [  T292]  ? kthread_complete_and_exit+0x20/0x20
> [  T292]  ret_from_fork_asm+0x11/0x20
> [  T292]  </TASK>
> 
> To fix this issue igb_io_resume() checks if the interface is running and
> the device is not down this means igb_io_error_detected() did not bring
> the device down and there is no need to bring it up.
> 
> Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> Reviewed-by: Yuanyuan Zhong<yzhong@purestorage.com>
> Fixes: 004d25060c78 ("igb: Fix igb_down hung on surprise removal")

Thanks for the update, this version looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
