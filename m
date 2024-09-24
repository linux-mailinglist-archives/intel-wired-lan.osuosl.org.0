Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B61984C8E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 23:09:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C33A14246C;
	Tue, 24 Sep 2024 21:09:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SdYOVcBUquxk; Tue, 24 Sep 2024 21:09:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4116442464
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727212181;
	bh=hvi10htTRwsku5eDKHxkGSBGzDuBQAMC2x7T230TNcQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p6bQKLUXgm8fpjwvgb8u47HmGb1mUoC3agRXDE8GfYZXF0BaIwtkEcLeflZM9eCmN
	 clY89emoOeJCs9fHKmT4TP4OPrAwQ+Kqm5W7cKIZIMAClXo2GNqOtERfiKoYGSQhTm
	 i3fMBAuzrDhjDakHB8Z5duON20ffzlxwvU6vN5vqk1ZzYGoZy/MNLrTaXwYSKszz6k
	 0kCHF+mj67pB2uRsoDMrzFnxiva9bQ9MWz1HL+t9R8pA+kt3O8Z/fhSbuRya4Dk+oV
	 6T9sqV4T32OaovuYSJ2+17/fk8FvX9jzVC5CnXi8Ec4YrCZMF9T2Z87WIHzqYeJ9Ev
	 HLz2AWu9Z3Wtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4116442464;
	Tue, 24 Sep 2024 21:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DD2F1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0907B60E0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:09:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KetMAs0KRMcB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 21:09:38 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB81760E08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB81760E08
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB81760E08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:09:37 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-71788bfe60eso4863331b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 14:09:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727212177; x=1727816977;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hvi10htTRwsku5eDKHxkGSBGzDuBQAMC2x7T230TNcQ=;
 b=s//Gsf/F+5TzbaHEuPncBEPGeHn1nx47ol6sk29fn0LIuEiLR41iU/UJx/Lv+U4pAF
 7B5HBOgkZ9qbYkGgMbCVhgDpp2pYgLjM7TGxcCQtoojoLT9GhXNNt7LAWmIBVRg7IIf9
 S61PsMQnmmMlnBsFdGC2ukXh3KwjjmaBfUssttU7vOm2oEx6t0upPRDTnTY9beajIKnQ
 Fx/g+HZaeW0Y5ArI41hHPrcstbT8ywkgTWBTyU6wSrB6Watea5ApO0a3z/5niOIclpUI
 KvfI1bXpQ7s43VMoLOtGN/uxDxrrgk0XMp08vc7gleX3e+vg3dcI2hzBQkPJLVrXj5Ei
 ZbHg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWJwk4663p2MEr2pe5BwO6g6g2CfAaY4dCqNNENMJMMPkfbiLubHTd75PXnYCysyJQMUTa1pmU8yfEQWv0nPC8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzhp3iEMoYFMxCyBUmZAiiuSGrYwYhHoE044FkDTgcJCRPDA4zY
 HbVmWTiH/z454aDF0Gl/6d66Gz7SPIG4Lt05kDr79Tq6BxqENVxmDtOSc4HKnCo=
X-Google-Smtp-Source: AGHT+IH3fDIW+mmLHCM91kmeHZ2EKz1hP33clsvTdfu3wSzCfU+MUEiYMOB1YSAuJizFDCnP6UeboA==
X-Received: by 2002:a05:6a21:b8b:b0:1be:c3c1:7be8 with SMTP id
 adf61e73a8af0-1d4d4b1998bmr582980637.26.1727212176541; 
 Tue, 24 Sep 2024 14:09:36 -0700 (PDT)
Received: from medusa.lab.kspace.sh ([208.88.152.253])
 by smtp.googlemail.com with ESMTPSA id
 d2e1a72fcca58-71afc8446fesm1581438b3a.64.2024.09.24.14.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2024 14:09:36 -0700 (PDT)
Date: Tue, 24 Sep 2024 14:09:34 -0700
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <ZvMqjkjbv9mURaJx@apollo.purestorage.com>
References: <20240923212218.116979-1-mkhalfella@purestorage.com>
 <2c272599-6b25-4c93-86fa-ecfd8df024c1@intel.com>
 <847a2c45-782d-4cac-9a53-83557393af80@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <847a2c45-782d-4cac-9a53-83557393af80@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1727212177; x=1727816977;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hvi10htTRwsku5eDKHxkGSBGzDuBQAMC2x7T230TNcQ=;
 b=PrMeBDBM7F3afarxCwm/kcnGD+8EuQ6VKz7vPdO0Aifn+KPITC4ZVQG3R735iF1h5c
 f2KR6L9iHmu7egML+y5SMFywG3khZvt1O5frloHW7XeR/gxq/wtXSa9tZs1s43cj/zUS
 dMZNjtC5w7bmCO2j0gIAJ3eFoK8i08EAn2lKCD5A2F0DByRszYKYGw7ce6dz4wNYM1fU
 cmuwRofWj7tGqpZrcM1ngtCWP4XBG1B3ZVnEnU5OQ+kXei2NIbDAoxQ+llOXNqS7q/Cf
 7KkIlsQmMA9arCfUYQHOQHeEYgvi/miA38hmlVk4n0JXBBcytIBt+ZGL1mBLazoHBJl3
 IZ+Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=PrMeBDBM
Subject: Re: [Intel-wired-lan] [PATCH] igb: Do not bring the device up after
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
Cc: Auke Kok <auke-jan.h.kok@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Ying Hsu <yinghsu@chromium.org>, linux-kernel@vger.kernel.org,
 Jeff Garzik <jgarzik@redhat.com>, Yuanyuan Zhong <yzhong@purestorage.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-09-23 17:10:36 -0700, Jacob Keller wrote:
> 
> 
> On 9/23/2024 4:11 PM, Jacob Keller wrote:
> > 
> > 
> > On 9/23/2024 2:22 PM, Mohamed Khalfella wrote:
> >> Commit 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> >> changed igb_io_error_detected() to ignore non-fatal pcie errors in order
> >> to avoid hung task that can happen when igb_down() is called multiple
> >> times. This caused an issue when processing transient non-fatal errors.
> >> igb_io_resume(), which is called after igb_io_error_detected(), assumes
> >> that device is brought down by igb_io_error_detected() if the interface
> >> is up. This resulted in panic with stacktrace below.
> >>
> >> [ T3256] igb 0000:09:00.0 haeth0: igb: haeth0 NIC Link is Down
> >> [  T292] pcieport 0000:00:1c.5: AER: Uncorrected (Non-Fatal) error received: 0000:09:00.0
> >> [  T292] igb 0000:09:00.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
> >> [  T292] igb 0000:09:00.0:   device [8086:1537] error status/mask=00004000/00000000
> >> [  T292] igb 0000:09:00.0:    [14] CmpltTO [  200.105524,009][  T292] igb 0000:09:00.0: AER:   TLP Header: 00000000 00000000 00000000 00000000
> >> [  T292] pcieport 0000:00:1c.5: AER: broadcast error_detected message
> >> [  T292] igb 0000:09:00.0: Non-correctable non-fatal error reported.
> >> [  T292] pcieport 0000:00:1c.5: AER: broadcast mmio_enabled message
> >> [  T292] pcieport 0000:00:1c.5: AER: broadcast resume message
> >> [  T292] ------------[ cut here ]------------
> >> [  T292] kernel BUG at net/core/dev.c:6539!
> >> [  T292] invalid opcode: 0000 [#1] PREEMPT SMP
> >> [  T292] RIP: 0010:napi_enable+0x37/0x40
> >> [  T292] Call Trace:
> >> [  T292]  <TASK>
> >> [  T292]  ? die+0x33/0x90
> >> [  T292]  ? do_trap+0xdc/0x110
> >> [  T292]  ? napi_enable+0x37/0x40
> >> [  T292]  ? do_error_trap+0x70/0xb0
> >> [  T292]  ? napi_enable+0x37/0x40
> >> [  T292]  ? napi_enable+0x37/0x40
> >> [  T292]  ? exc_invalid_op+0x4e/0x70
> >> [  T292]  ? napi_enable+0x37/0x40
> >> [  T292]  ? asm_exc_invalid_op+0x16/0x20
> >> [  T292]  ? napi_enable+0x37/0x40
> >> [  T292]  igb_up+0x41/0x150
> >> [  T292]  igb_io_resume+0x25/0x70
> >> [  T292]  report_resume+0x54/0x70
> >> [  T292]  ? report_frozen_detected+0x20/0x20
> >> [  T292]  pci_walk_bus+0x6c/0x90
> >> [  T292]  ? aer_print_port_info+0xa0/0xa0
> >> [  T292]  pcie_do_recovery+0x22f/0x380
> >> [  T292]  aer_process_err_devices+0x110/0x160
> >> [  T292]  aer_isr+0x1c1/0x1e0
> >> [  T292]  ? disable_irq_nosync+0x10/0x10
> >> [  T292]  irq_thread_fn+0x1a/0x60
> >> [  T292]  irq_thread+0xe3/0x1a0
> >> [  T292]  ? irq_set_affinity_notifier+0x120/0x120
> >> [  T292]  ? irq_affinity_notify+0x100/0x100
> >> [  T292]  kthread+0xe2/0x110
> >> [  T292]  ? kthread_complete_and_exit+0x20/0x20
> >> [  T292]  ret_from_fork+0x2d/0x50
> >> [  T292]  ? kthread_complete_and_exit+0x20/0x20
> >> [  T292]  ret_from_fork_asm+0x11/0x20
> >> [  T292]  </TASK>
> >>
> >> To fix this issue igb_io_resume() checks if the interface is running and
> >> the device is not down this means igb_io_error_detected() did not bring
> >> the device down and there is no need to bring it up.
> >>
> >> Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> >> Reviewed-by: Yuanyuan Zhong<yzhong@purestorage.com>
> >> Fixes: 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> >> ---
> >>  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> >> index 1ef4cb871452..8c6bc3db9a3d 100644
> >> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> >> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> >> @@ -9651,6 +9651,10 @@ static void igb_io_resume(struct pci_dev *pdev)
> >>  	struct igb_adapter *adapter = netdev_priv(netdev);
> >>  
> >>  	if (netif_running(netdev)) {
> >> +		if (!test_bit(__IGB_DOWN, &adapter->state)) {
> >> +			dev_info(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
> >> +			return;
> > 
> > I'm not sure this needs to be a dev_info.
> > 
> 
> I was thinking dev_dbg, because I don't really see why its relevant to
> inform the user we did nothing. Seems like its log spam to me.

Good point. I changed it to dev_dbg() in v2.

v2: https://lore.kernel.org/all/20240924210604.123175-1-mkhalfella@purestorage.com/

> 
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > 
> 
