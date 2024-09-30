Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E331A98AC11
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 20:28:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A8E8810CB;
	Mon, 30 Sep 2024 18:28:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sKK1qhhhfLWt; Mon, 30 Sep 2024 18:28:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33D7B8108B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727720881;
	bh=YZ8ek2hT/WFDjyeRsPQC6Ye9s+aSlMGsNX4bBi7RmHM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N6U75WpUBvCqAtjW+Nl8dRAFL64VYRll+/yS/NmAyRngzkQTa6ie/Ptmiaqtw+fd2
	 hxQ/mKt6+MUlvH6XdXxlFlLGYXj4eUAOykZtFBZonOoaMKewveYSJLREkth124oQV6
	 UbpBlGfPXRl1M8N3FNMZXAgRMWEUQTWVjgknJ52vv/O+tGaidSnpI0CKTYwZxP7BO9
	 DNh8DuIq6PcFhX1DMpvVqIKkPH24uOcK00YWdrT8mVFgCQ+/yGtQbEq1Pifx5pWKfb
	 mxQN8PosDTJK7HSN//hMFaUDXMvQCFQOPtccsslqq76yvW6TWmBz8VV2sziYNsfzVj
	 3HS2xuJVsTGhQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33D7B8108B;
	Mon, 30 Sep 2024 18:28:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A8AD61BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:27:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A257E4070B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:27:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6oQK7_1XjXmD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 18:27:58 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 64D2E408AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64D2E408AD
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64D2E408AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:27:56 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-20b9b35c7c3so9163115ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:27:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727720876; x=1728325676;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YZ8ek2hT/WFDjyeRsPQC6Ye9s+aSlMGsNX4bBi7RmHM=;
 b=DTZwVh3n1ZowtH7LsH78NUFDVg68NuvRYZCQCob4WJSwfkWdti3iQ9IjqyoAQ9Pnbl
 +Xjj+If/J/q7/KEAwxOWDj8Y8DWYf6pd1BZfKQbVFgEB8EiDqvXG9BqHeIa8nSjIbsiq
 qPovGDxNpMQE/TF6E7y1A/MyxOWPq+5oXyosp+Co8CnuYF0Hp/6sp0NqPUTUZmE0dfMQ
 nFo1VoH/V7z4a1Yr5md28MxOvKAZ0+47KsfxkJKsjxVPwziOMst3hT1Z1kSY6Hm4nq8/
 n2FsYpp6bpQ0SB9LGrLejOe7HgBwaqFyHvkhWcSZg+HMSSUrxpDlFbuGCoEnfruO5QwE
 t4Rw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQViLDLmiSlDKTNsO2Fnlb+DQ4TZW8gVFX8uZdnPq8kYgQRq05xlAGeBfblT/yG/MRKWc9Cq4ITchvAZ9lpxY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyrjowub/2HAcZEUy7CVss1d5Lwq2cF5JlOhnEjcisk2zezf+jV
 6cmVDJgr7lTI4Y7A3dxvwEXbXB9oAM71aaa6QYaPhjqbVpLcSvQHWfrcy2sM0Bw=
X-Google-Smtp-Source: AGHT+IEPD0M1S4D/tI6Apuz0+SRKRkbBIq0MNt57C/GmcGlxlEEyiQcbKrX6kS3f6EzAtW+NVLq8Kg==
X-Received: by 2002:a17:902:e547:b0:20b:9034:fb44 with SMTP id
 d9443c01a7336-20b9034fbdbmr48466935ad.16.1727720875944; 
 Mon, 30 Sep 2024 11:27:55 -0700 (PDT)
Received: from medusa.lab.kspace.sh ([208.88.152.253])
 by smtp.googlemail.com with ESMTPSA id
 d9443c01a7336-20b37d67769sm57209885ad.33.2024.09.30.11.27.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 11:27:55 -0700 (PDT)
Date: Mon, 30 Sep 2024 11:27:54 -0700
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
Message-ID: <Zvrtqt_0bc9rSBX6@apollo.purestorage.com>
References: <20240924210604.123175-1-mkhalfella@purestorage.com>
 <20240924210604.123175-2-mkhalfella@purestorage.com>
 <CYYPR11MB8429494B65C5E9A025BF8F96BD742@CYYPR11MB8429.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CYYPR11MB8429494B65C5E9A025BF8F96BD742@CYYPR11MB8429.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1727720876; x=1728325676;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=YZ8ek2hT/WFDjyeRsPQC6Ye9s+aSlMGsNX4bBi7RmHM=;
 b=E6zogXsV8OfdJx9Kc0uvIn3Ho4CP/DULuX7uVXZQ6N265fZ5h2mJiENQI7bKMtXRmN
 FWDNjOy89Z+AWjlOOrGC66zPlFb0USRLXxMapME4OsMpKTqeccedpmMjlR8YEW567cak
 /fTNNUukQud6sLqaUNyC9jVpdK0QBple1zlftngczkRmKHhh92dFstnKkVZLT5cr6CeU
 oyanlhbX9rsXqOglzwdOociEQy5tqRY3djAmtle96/GJws3Vh1UtcnCdZ02sV9h7ut1u
 dXFy0Tp+iXYXcypXdIx1QFoWlbfLaaINotBQ4wqTEe8e6AQXwXjGivIAYhg3dAJUJqGs
 tZ4Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=E6zogXsV
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
Cc: Auke Kok <auke-jan.h.kok@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Ying Hsu <yinghsu@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeff Garzik <jgarzik@redhat.com>, "Zhong, YuanYuan" <yzhong@purestorage.com>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-09-28 14:40:05 +0000, Pucha, HimasekharX Reddy wrote:
> >-----Original Message-----
> >From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Mohamed Khalfella
> > Sent: Wednesday, September 25, 2024 2:36 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Auke Kok <auke-jan.h.kok@intel.com>; Zhong, YuanYuan <yzhong@purestorage.com>; Jeff Garzik <jgarzik@redhat.com>; Mohamed Khalfella <mkhalfella@purestorage.com>; Ying Hsu <yinghsu@chromium.org>; Simon Horman <horms@kernel.org>
> > Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device up after non-fatal error
> >
> >Commit 004d25060c78 ("igb: Fix igb_down hung on surprise removal") changed igb_io_error_detected() to ignore non-fatal pcie errors in order to avoid hung task that can happen when igb_down() is called multiple times. This caused an issue when processing transient non-fatal errors.
> > igb_io_resume(), which is called after igb_io_error_detected(), assumes that device is brought down by igb_io_error_detected() if the interface is up. This resulted in panic with stacktrace below.
> >
> > [ T3256] igb 0000:09:00.0 haeth0: igb: haeth0 NIC Link is Down [  T292] pcieport 0000:00:1c.5: AER: Uncorrected (Non-Fatal) error received: 0000:09:00.0 [  T292] igb 0000:09:00.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
> > [  T292] igb 0000:09:00.0:   device [8086:1537] error status/mask=00004000/00000000
> > [  T292] igb 0000:09:00.0:    [14] CmpltTO [  200.105524,009][  T292] igb 0000:09:00.0: AER:   TLP Header: 00000000 00000000 00000000 00000000
> > [  T292] pcieport 0000:00:1c.5: AER: broadcast error_detected message [  T292] igb 0000:09:00.0: Non-correctable non-fatal error reported.
> > [  T292] pcieport 0000:00:1c.5: AER: broadcast mmio_enabled message [  T292] pcieport 0000:00:1c.5: AER: broadcast resume message [  T292] ------------[ cut here ]------------ [  T292] kernel BUG at net/core/dev.c:6539!
> > [  T292] invalid opcode: 0000 [#1] PREEMPT SMP [  T292] RIP: 0010:napi_enable+0x37/0x40 [  T292] Call Trace:
> > [  T292]  <TASK>
> > [  T292]  ? die+0x33/0x90
> > [  T292]  ? do_trap+0xdc/0x110
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  ? do_error_trap+0x70/0xb0
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  ? exc_invalid_op+0x4e/0x70
> > [  T292]  ? napi_enable+0x37/0x40
> > [  T292]  ? asm_exc_invalid_op+0x16/0x20 [  T292]  ? napi_enable+0x37/0x40 [  T292]  igb_up+0x41/0x150 [  T292]  igb_io_resume+0x25/0x70 [  T292]  report_resume+0x54/0x70 [  T292]  ? report_frozen_detected+0x20/0x20 [  T292]  pci_walk_bus+0x6c/0x90 [  T292]  ? aer_print_port_info+0xa0/0xa0 [  T292]  pcie_do_recovery+0x22f/0x380 [  T292]  aer_process_err_devices+0x110/0x160
> > [  T292]  aer_isr+0x1c1/0x1e0
> > [  T292]  ? disable_irq_nosync+0x10/0x10 [  T292]  irq_thread_fn+0x1a/0x60 [  T292]  irq_thread+0xe3/0x1a0 [  T292]  ? irq_set_affinity_notifier+0x120/0x120
> > [  T292]  ? irq_affinity_notify+0x100/0x100 [  T292]  kthread+0xe2/0x110 [  T292]  ? kthread_complete_and_exit+0x20/0x20
> > [  T292]  ret_from_fork+0x2d/0x50
> > [  T292]  ? kthread_complete_and_exit+0x20/0x20
> > [  T292]  ret_from_fork_asm+0x11/0x20
> > [  T292]  </TASK>
> >
> > To fix this issue igb_io_resume() checks if the interface is running and the device is not down this means igb_io_error_detected() did not bring the device down and there is no need to bring it up.
> >
> > Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> > Reviewed-by: Yuanyuan Zhong<yzhong@purestorage.com>
> > Fixes: 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> 
> Any reproductions steps for reproduction of these issue?
> 

I know of two way to reproduce this kernel panic on a kernel that does
not have the patch above.

1- Using aer-inject:

  This works on both physical machine and vm. Here are the steps on a
  virtual machine.

  root@(none):~# lspci -t -v -s 03:00.0
  -[0000:02]---00.0-[03]----00.0  Intel Corporation 82576 Gigabit Network Connection
  root@(none):~# cat > /tmp/uncor << EOF
  > AER
  > UNCOR_STATUS COMP_ABORT
  > HEADER_LOG 0 1 2 3
  > EOF
  root@(none):~# modprobe aer_inject
  root@(none):~# /var/tmp/aer-inject --id=0000:03:00.0 /tmp/uncor

  This is the qemu command used to start the vm. You probably do not
  need all the options related to numa settings and iommu. Only the part
  related to pci setup should be enough.

  /usr/bin/qemu-system-x86_64 \
    -kernel $SRCDIR/arch/x86/boot/bzImage \
    -initrd $INITRAMFSIMG \
    -append "rdinit=/startup.sh console=ttyS0,115200n8" \
    -machine q35,accel=kvm,kernel-irqchip=split \
    -nographic \
    -chardev socket,id=gdb0,host=0.0.0.0,port=22004,telnet=on,server=on,wait=off \
    -gdb chardev:gdb0 \
    $GDB_WAIT \
    -serial telnet:127.0.0.1:22003,server=on,wait=off \
    -device pxb-pcie,id=pcie.1,bus_nr=2,bus=pcie.0 \
    -device ioh3420,id=pcie_port1,bus=pcie.1,chassis=1 \
    -netdev user,id=net0,hostfwd=tcp:127.0.0.1:22002-:22 \
    -device igb,netdev=net0,id=net0,mac=52:54:00:b8:9c:58,bus=pcie_port1 \
    -cpu host \
    -smp 4 \
    -m 8G \
    -object memory-backend-ram,size=7G,id=m0 \
    -object memory-backend-ram,size=1G,id=m1 \
    -numa node,nodeid=0,memdev=m0,cpus=0-1 \
    -numa node,nodeid=1,memdev=m1,cpus=2-3 \
    -chardev socket,id=charmonitor,host=0.0.0.0,port=10001,telnet=on,server=on,wait=off \
    -mon chardev=charmonitor,id=monitor \
    -boot order=c \
    -device intel-iommu,intremap=on


2- Using pcie_aer_inject_error

  Injecting pcie aer error from qemu monitor should be enough to trigger
  the kernel panic. This is using the qemu command above.

  (qemu) pcie_aer_inject_error pcie_port1 0x00004000
