Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD5E3FC8E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 15:54:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34C7A60BDB;
	Tue, 31 Aug 2021 13:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZSPPuEeSC8zQ; Tue, 31 Aug 2021 13:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 450D260C0B;
	Tue, 31 Aug 2021 13:54:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 36D251BF368
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 01:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3176C60B92
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 01:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Le76TqwYkDLM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 01:36:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01AB160B6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 01:36:31 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id h9so35151766ejs.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 18:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LdqhhGt9Jh6CCITuOWPZLzeVPCuUPZ7w9EoNHMVp/Dc=;
 b=FkMdnKk0/KgGmouLOKxXmCp1Bvj6IDCB/zLZUtcYsm3VR5Iaq/+LRjJjJoFFEDjm/X
 CH5CbVZA4CF0Ld0RE8cnfFFk8mQRXJe9cGLxipH0JGRFmz1CEHlvq/Vnk7m4+419iqbf
 iRxmQqCkter0zdcs1wDHEfI1hhWXxVATHWOk28awcJEWLGgr1xMmebSrbL61t/eaEwJm
 mI4zqPUie58GdQ3bKyF6BOpqltrLyZepD6+EBr/IoVE6umwisK9lAhwAfS+X+oGCwZKJ
 FUY1584x7S7oW6tDMpmVolk8vBr+XKp9Pj6Wz+yaY/pDpSR29Wo4MlDC+jz18FaZXlZT
 ToYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LdqhhGt9Jh6CCITuOWPZLzeVPCuUPZ7w9EoNHMVp/Dc=;
 b=r7BgJcyjT11aaM1ZQOMrX9Wwd2Don3HaqhubqIKBuNYu6agTownxkfJmpilRmBPCDY
 g2zRCNErJsUM3EB/Pp/prRh5wdpTgh/r39jAUy2k64s3if+F6I+1DOqa8tfoH0chGLe0
 5XJFk0JiJlg3YxC3CX1rlhpWzjjDNBxbfNSr/gNpeaGEKpsATJ64cJZlYniwJ428f3YI
 bovXd483m9GgRIGPBKsLkJ35Dc1Yj1T0LGou+Ug4DUfmmLF038TAYLL+Vjccpzow6OMQ
 9MS51L0uns9C2QNgg+e99yElGTVdyhfUI2qCTfUwXNkKaSgiHUUpNvNPSql34/RxKDST
 lRJQ==
X-Gm-Message-State: AOAM5305whIMcSr1FHEtt17F2ocSzP2lCaLS44wKcfGZdo/QxegthkKD
 fD7xp4qnbeUyAxEm0DtmqyVJzfl361iwlY8laCc=
X-Google-Smtp-Source: ABdhPJxwY2/dd/BwAJuueNfpm/iMxhdZ+ltw9JJP9VVecUmNAA/Fi53f9n8qaL+u/WWPISMgdSnsn73w+80uCM+3EYU=
X-Received: by 2002:a17:906:36d6:: with SMTP id
 b22mr28406975ejc.387.1630373790299; 
 Mon, 30 Aug 2021 18:36:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210825102636.52757-4-21cnbao@gmail.com>
 <20210829145552.GA11556@xsang-OptiPlex-9020>
 <CAGsJ_4yYwjuWsEeK3CvnOhc10mbBNYWXqxqp+mR5587R2FD3gQ@mail.gmail.com>
In-Reply-To: <CAGsJ_4yYwjuWsEeK3CvnOhc10mbBNYWXqxqp+mR5587R2FD3gQ@mail.gmail.com>
From: Barry Song <21cnbao@gmail.com>
Date: Tue, 31 Aug 2021 13:36:19 +1200
Message-ID: <CAGsJ_4zwRdR2QuoR0K0_J86w0=t=mFh=tAKRuP1+Tx8aLn4kKw@mail.gmail.com>
To: kernel test robot <oliver.sang@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
X-Mailman-Approved-At: Tue, 31 Aug 2021 13:54:22 +0000
Subject: Re: [Intel-wired-lan] [PCI/MSI] a4fc4cf388:
 dmesg.genirq:Flags_mismatch_irq##(mei_me)vs.#(xhci_hcd)
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, leon@kernel.org,
 Jonathan Corbet <corbet@lwn.net>, mchehab+huawei@kernel.org,
 Marc Zyngier <maz@kernel.org>, schnelle@linux.ibm.com,
 linux-pci@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, lkp@lists.01.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan.Cameron@huawei.com,
 Bjorn Helgaas <bhelgaas@google.com>, intel-wired-lan@lists.osuosl.org,
 Thomas Gleixner <tglx@linutronix.de>, luzmaximilian@gmail.com, bilbao@vt.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 31, 2021 at 1:21 PM Barry Song <21cnbao@gmail.com> wrote:
>
> On Mon, Aug 30, 2021 at 2:38 AM kernel test robot <oliver.sang@intel.com> wrote:
> >
> >
> >
> > Greeting,
> >
> > FYI, we noticed the following commit (built with gcc-9):
> >
> > commit: a4fc4cf388319ea957ffbdab5073bdd267de9082 ("[PATCH v3 3/3] PCI/MSI: remove msi_attrib.default_irq in msi_desc")
> > url: https://github.com/0day-ci/linux/commits/Barry-Song/PCI-MSI-Clarify-the-IRQ-sysfs-ABI-for-PCI-devices/20210825-183018
> > base: https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git 6e764bcd1cf72a2846c0e53d3975a09b242c04c9
> >
> > in testcase: kernel-selftests
> > version: kernel-selftests-x86_64-ebaa603b-1_20210825
> > with following parameters:
> >
> >         group: pidfd
> >         ucode: 0xe2
> >
> > test-description: The kernel contains a set of "self tests" under the tools/testing/selftests/ directory. These are intended to be small unit tests to exercise individual code paths in the kernel.
> > test-url: https://www.kernel.org/doc/Documentation/kselftest.txt
> >
> >
> > on test machine: 4 threads Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz with 32G memory
> >
> > caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
> >
> >
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kernel test robot <oliver.sang@intel.com>
> >
> >
> >
> > [  179.602028][   T34] genirq: Flags mismatch irq 16. 00002000 (mei_me) vs. 00000000 (xhci_hcd)
> > [  179.614073][   T34] CPU: 2 PID: 34 Comm: kworker/u8:2 Not tainted 5.14.0-rc7-00014-ga4fc4cf38831 #1
> > [  179.623225][   T34] Hardware name: Dell Inc. OptiPlex 7040/0Y7WYT, BIOS 1.8.1 12/05/2017
> > [  179.631432][   T34] Workqueue: events_unbound async_run_entry_fn
> > [  179.637543][   T34] Call Trace:
> > [  179.640789][   T34]  dump_stack_lvl+0x45/0x59
> > [  179.645253][   T34]  __setup_irq.cold+0x50/0xd4
> > [  179.649893][   T34]  ? mei_me_pg_exit_sync+0x480/0x480 [mei_me]
> > [  179.655923][   T34]  request_threaded_irq+0x10c/0x180
> > [  179.661073][   T34]  ? mei_me_irq_quick_handler+0x240/0x240 [mei_me]
> > [  179.667528][   T34]  mei_me_probe+0x131/0x300 [mei_me]
> > [  179.672767][   T34]  local_pci_probe+0x42/0x80
> > [  179.677313][   T34]  pci_device_probe+0x107/0x1c0
> > [  179.682118][   T34]  really_probe+0xb6/0x380
> > [  179.687094][   T34]  __driver_probe_device+0xfe/0x180
> > [  179.692242][   T34]  driver_probe_device+0x1e/0xc0
> > [  179.697133][   T34]  __driver_attach_async_helper+0x2b/0x80
> > [  179.702802][   T34]  async_run_entry_fn+0x30/0x140
> > [  179.707693][   T34]  process_one_work+0x274/0x5c0
> > [  179.712503][   T34]  worker_thread+0x50/0x3c0
> > [  179.716959][   T34]  ? process_one_work+0x5c0/0x5c0
> > [  179.721936][   T34]  kthread+0x14f/0x180
> > [  179.725958][   T34]  ? set_kthread_struct+0x40/0x40
> > [  179.730935][   T34]  ret_from_fork+0x22/0x30
> > [  179.735699][   T34] mei_me 0000:00:16.0: request_threaded_irq failure. irq = 16
> > [  179.743125][   T34] mei_me 0000:00:16.0: initialization failed.
> > [  179.749399][   T34] mei_me: probe of 0000:00:16.0 failed with error -16
> >
> >
>
> it seems there is a direct reference to pdev->irq.
> Hi Oliver, would you try if the below patch can fix the problem:

+ Tomas

sorry. after second looking, drivers/misc/mei/pci-me.c has many
places using pdev->irq directly. We really need this driver's
maintainers to address the problem.

On the other hand, "struct mei_me_hw *hw" seems to be totally not
used in this driver except here:
164 static int mei_me_probe(struct pci_dev *pdev, const struct
pci_device_id *ent)
165 {
166         const struct mei_cfg *cfg;
167         struct mei_device *dev;
168         struct mei_me_hw *hw;
169         unsigned int irqflags;
170         int err;
.....
219         hw->irq = pdev->irq;
...

this looks wrong. maybe we can leverage hw->irq in other places such as
shutdown, suspend, resume.

Thanks
barry


>
> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
> index c3393b383e59..a45a2d4257a6 100644
> --- a/drivers/misc/mei/pci-me.c
> +++ b/drivers/misc/mei/pci-me.c
> @@ -216,7 +216,7 @@ static int mei_me_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>
>         pci_enable_msi(pdev);
>
> -       hw->irq = pdev->irq;
> +       hw->irq = pci_irq_vector(pdev, 0);
>
>          /* request and enable interrupt */
>         irqflags = pci_dev_msi_enabled(pdev) ? IRQF_ONESHOT : IRQF_SHARED;
>
>
> I don't have any hardware to test.
>
> >
> > To reproduce:
> >
> >         git clone https://github.com/intel/lkp-tests.git
> >         cd lkp-tests
> >         bin/lkp install                job.yaml  # job file is attached in this email
> >         bin/lkp split-job --compatible job.yaml  # generate the yaml file for lkp run
> >         bin/lkp run                    generated-yaml-file
> >
> >
> >
> > ---
> > 0DAY/LKP+ Test Infrastructure                   Open Source Technology Center
> > https://lists.01.org/hyperkitty/list/lkp@lists.01.org       Intel Corporation
> >
> > Thanks,
> > Oliver Sang
> >
>
> Thanks
> barry
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
