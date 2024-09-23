Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D22B984890
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 17:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5840B60B31;
	Tue, 24 Sep 2024 15:24:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ALW0JVY7s_dJ; Tue, 24 Sep 2024 15:24:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D43D960B36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727191456;
	bh=CxBI093a9aSk/5D0mfkUxCMUyakEBiULYIO2uu3ziqo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QBn6D++soxzCnHnpBHHTRCuipGiVqcENHfZXNv+OiAu7m5zBlPPHgogQSwuU6vU2v
	 gWHgBvI0PTI/FpboUcve2JbxNOZAq/69kYFRYjBxxLJpGRd8w1ooNJzGex4d90WB2j
	 x2fDQkjQw4om9ce/AZY60IYK543yNlzqMxydAItgWEXPx9L0E9gTxK6vEsgKnrXc00
	 JlRxPKJ5o2CGiS2d8fkhG7QWQ0SE+QrLv+SqaB00radlyxsYZY5oW29Ne/QuRJdHvS
	 CS6w/BgGFY416mfYSzAERBx4IPMNQHjV1ucRDhDCSCf4HimExfiW5mYkYJyDmvoqeM
	 v/EC60nWGkI3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D43D960B36;
	Tue, 24 Sep 2024 15:24:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9587D1BF309
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 23:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82793412F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 23:23:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ckgeRNxJP9K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 23:23:54 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 426E9412A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 426E9412A4
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 426E9412A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 23:23:52 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-206e614953aso47061675ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 16:23:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727133832; x=1727738632;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CxBI093a9aSk/5D0mfkUxCMUyakEBiULYIO2uu3ziqo=;
 b=CPC5X7/gkjNisetNBODuZwMJxJNsm9GuL8x2f4/Ta0ldaKsOt3ty7lFacYxHWjy1Og
 2B4BuHcD5bssN6epMPuvXedZEYZrObtNmCj5MIIsVicswSt9WdCbOsCteBjwlMDNWzSb
 ZPp8+Tp0Ijb3d0j7+I/3bt4pcGDoTL9/7a1UNNAGepPG770ui6AZ64mL3292Y1QgNkwu
 N5wqeXQduNS3AEGO7U6skoPP3oxwADh5n9aC4xD3Sc5mztnMq/Jc9zDyC+pSrvfaqOQE
 zUWleALrI0IQ23u3Wd4IBGaZhA3oYhXqkcR+B4EsErd7hnJxXDokeD9F480eIgCBF6YE
 Ws1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7HTxFypsG/8fg0isTt5Prd6/9ivN8ntv8V9awMhwOwrEnIRWVjZpqhOCO8/lAPSeamH8ElL8N+kvuwTGZTok=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwDiAyMQvZGLnht4Tfk+qUdI+7D1aOGiNIer7zbrD8bpKHwZ8P9
 m+OkbM/f8LeF4v2bjthykSbRbPCBIQ05ZQYXLtuTgcReFAInDDIN5jqTbxauD5D73gjkPtt5Jtw
 n3yk=
X-Google-Smtp-Source: AGHT+IHq2YU/Xc8NCHkA+s4BXEcmCGU4qgTn8nMgXddFujLsE47Qx4kZ/JFI5d6x9CTQvQRAlTki0A==
X-Received: by 2002:a17:902:d2c1:b0:1fc:4940:d3ad with SMTP id
 d9443c01a7336-208d856abcfmr184409775ad.59.1727133832010; 
 Mon, 23 Sep 2024 16:23:52 -0700 (PDT)
Received: from medusa.lab.kspace.sh ([208.88.152.253])
 by smtp.googlemail.com with ESMTPSA id
 d9443c01a7336-20af17e0332sm852765ad.163.2024.09.23.16.23.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2024 16:23:51 -0700 (PDT)
Date: Mon, 23 Sep 2024 16:23:50 -0700
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <ZvH4hp0DJRoWj-gD@apollo.purestorage.com>
References: <20240923212218.116979-1-mkhalfella@purestorage.com>
 <2c272599-6b25-4c93-86fa-ecfd8df024c1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c272599-6b25-4c93-86fa-ecfd8df024c1@intel.com>
X-Mailman-Approved-At: Tue, 24 Sep 2024 15:24:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1727133832; x=1727738632;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CxBI093a9aSk/5D0mfkUxCMUyakEBiULYIO2uu3ziqo=;
 b=FmekusP9EXwjGCDNpOu6kuoJTq2gDp6lXNiCoZfMqof70XY9UqPJQR1XWg7chyE4yw
 JhRpj1ibyJtcr4XLylqE9A6g+aWEgkEWVB2y3t7G9Mt/enaFJjZ8aZscgIOI8K4fuBRY
 5biDwckaBk2Y0W8ayG3a/o8TcV0OJzjR2VK3B8YRy339iKkD//OzCdNvqmuh5YMQyc+m
 364/HqcwV91f+ZqUupHJiYJHlfhry1MqlVQeuNMO7ms66qOCU6LtsPo1t06rH2yHlRsB
 77S0BLPIWS1VnVG8EDLdWWGa+wGRzuvGyjMNsvR8WCLXGSpiO2t02g9y6NH4TXtmxejN
 RL9A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=FmekusP9
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

On 2024-09-23 16:11:14 -0700, Jacob Keller wrote:
> 
> 
> On 9/23/2024 2:22 PM, Mohamed Khalfella wrote:
> > Commit 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> > changed igb_io_error_detected() to ignore non-fatal pcie errors in order
> > to avoid hung task that can happen when igb_down() is called multiple
> > times. This caused an issue when processing transient non-fatal errors.
> > igb_io_resume(), which is called after igb_io_error_detected(), assumes
> > that device is brought down by igb_io_error_detected() if the interface
> > is up. This resulted in panic with stacktrace below.
> > 
> > [ T3256] igb 0000:09:00.0 haeth0: igb: haeth0 NIC Link is Down
> > [  T292] pcieport 0000:00:1c.5: AER: Uncorrected (Non-Fatal) error received: 0000:09:00.0
> > [  T292] igb 0000:09:00.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
> > [  T292] igb 0000:09:00.0:   device [8086:1537] error status/mask=00004000/00000000
> > [  T292] igb 0000:09:00.0:    [14] CmpltTO [  200.105524,009][  T292] igb 0000:09:00.0: AER:   TLP Header: 00000000 00000000 00000000 00000000
> > [  T292] pcieport 0000:00:1c.5: AER: broadcast error_detected message
> > [  T292] igb 0000:09:00.0: Non-correctable non-fatal error reported.
> > [  T292] pcieport 0000:00:1c.5: AER: broadcast mmio_enabled message
> > [  T292] pcieport 0000:00:1c.5: AER: broadcast resume message
> > [  T292] ------------[ cut here ]------------
> > [  T292] kernel BUG at net/core/dev.c:6539!
> > [  T292] invalid opcode: 0000 [#1] PREEMPT SMP
> > [  T292] RIP: 0010:napi_enable+0x37/0x40
> > [  T292] Call Trace:
> > [  T292]  <TASK>
> > [  T292]  ? die+0x33/0x90
> > [  T292]  ? do_trap+0xdc/0x110
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  ? do_error_trap+0x70/0xb0
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  ? exc_invalid_op+0x4e/0x70
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  ? asm_exc_invalid_op+0x16/0x20
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  igb_up+0x41/0x150
> > [  T292]  igb_io_resume+0x25/0x70
> > [  T292]  report_resume+0x54/0x70
> > [  T292]  ? report_frozen_detected+0x20/0x20
> > [  T292]  pci_walk_bus+0x6c/0x90
> > [  T292]  ? aer_print_port_info+0xa0/0xa0
> > [  T292]  pcie_do_recovery+0x22f/0x380
> > [  T292]  aer_process_err_devices+0x110/0x160
> > [  T292]  aer_isr+0x1c1/0x1e0
> > [  T292]  ? disable_irq_nosync+0x10/0x10
> > [  T292]  irq_thread_fn+0x1a/0x60
> > [  T292]  irq_thread+0xe3/0x1a0
> > [  T292]  ? irq_set_affinity_notifier+0x120/0x120
> > [  T292]  ? irq_affinity_notify+0x100/0x100
> > [  T292]  kthread+0xe2/0x110
> > [  T292]  ? kthread_complete_and_exit+0x20/0x20
> > [  T292]  ret_from_fork+0x2d/0x50
> > [  T292]  ? kthread_complete_and_exit+0x20/0x20
> > [  T292]  ret_from_fork_asm+0x11/0x20
> > [  T292]  </TASK>
> > 
> > To fix this issue igb_io_resume() checks if the interface is running and
> > the device is not down this means igb_io_error_detected() did not bring
> > the device down and there is no need to bring it up.
> > 
> > Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> > Reviewed-by: Yuanyuan Zhong<yzhong@purestorage.com>
> > Fixes: 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > index 1ef4cb871452..8c6bc3db9a3d 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -9651,6 +9651,10 @@ static void igb_io_resume(struct pci_dev *pdev)
> >  	struct igb_adapter *adapter = netdev_priv(netdev);
> >  
> >  	if (netif_running(netdev)) {
> > +		if (!test_bit(__IGB_DOWN, &adapter->state)) {
> > +			dev_info(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
> > +			return;
> 
> I'm not sure this needs to be a dev_info.

I am okay with changing it to dev_warn() to match 004d25060c78 ("igb:
Fix igb_down hung on surprise removal"). Is that okay?

> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
