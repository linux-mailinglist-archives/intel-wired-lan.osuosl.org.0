Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE29D3FDD8B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 15:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20A1F40515;
	Wed,  1 Sep 2021 13:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hePj9u36xfyv; Wed,  1 Sep 2021 13:57:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D383404E8;
	Wed,  1 Sep 2021 13:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C51F01BF83A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 21:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD28F60632
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 21:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjDysptnsu3m for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 21:36:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E22A46062C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 21:36:58 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id e21so1902974ejz.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 14:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g0s57yEPWIRYy3pbGuid3H+I/WMFFbO84Xddobf8YM8=;
 b=kd8b2WcrBzk7/Yrg1Tvoo3KTg85013xt+LM/RuDGQg+iDbHtzh+ed8uUSmnpmuqRHH
 VM2/biUhEt7Tosjnxx1de7ByaxM6DKmP/bvxF87nt64OWAVz+Yvt3Vr5KTkrq+omU/bl
 kVcsxOoo3LS0AdpRxFNr3acSgwlIFJfuWKecYaD+L4TmN9QKUV4cDUVa9kZLkEWAe91h
 y1BHrrl/tiQy8hjLjVRUMxCdg0lBpMZh4CrnGUYYnXppYVHfDjhLKq0X9rIhjgH6XtoC
 lhDaLApT+eXhzXgf50oObk2CHqXXoa4e0Z14mjjwRdx0iJfM70mp2xX59iYO/gmFS9UV
 mkfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g0s57yEPWIRYy3pbGuid3H+I/WMFFbO84Xddobf8YM8=;
 b=q9SL/YQ/ZGS5YOvQI+mGOHqMbevu6Mz+m5YKDoeaICMCjoq1KYkTI3H9ThIuRVfLWH
 41O2K+L71BZuYtno7P7HVbgoRDcWpJ6mM54QctUEVOtAWJkHZCdJF7ctDn9XgPANxhp+
 uo9XwcoUbh+snIrW7us2RmWgjSdb1BBJ8wINiQTw+qbXZNCn1rOgiTEvKKEvJE6UerTB
 S4uC1G5ClAQ/aEA7kPSrZ814umFfyx3pCj3/FNbPJMoADRBrybDVc+P5DGCDaFDWtaZ+
 dVtn/Ul41q/lRApuosN++d9knHzv3u7k5Xq6mMDDfhFWpA4qnE9tNjWGE3AtaaV+PIdW
 T3JA==
X-Gm-Message-State: AOAM533QkGy0W3strQEXB1zteV6VXFeBFnAUBKh9vw4FJ92Z36utZS5j
 G1A6bOE9pfybRISkrs/7VgLutCnwTM+5nuAWm2A=
X-Google-Smtp-Source: ABdhPJy8PDjiHg8O3o8VownBhsJlLoGswKsLm9xkEqWkqI1ERj635kk2hoZ6DY3OwXdn1XRxh1SAh/FfFmQI8ND6Jy4=
X-Received: by 2002:a17:906:1289:: with SMTP id
 k9mr32633983ejb.2.1630445817011; 
 Tue, 31 Aug 2021 14:36:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210825102636.52757-4-21cnbao@gmail.com>
 <20210829145552.GA11556@xsang-OptiPlex-9020>
 <CAGsJ_4yYwjuWsEeK3CvnOhc10mbBNYWXqxqp+mR5587R2FD3gQ@mail.gmail.com>
 <1132a536516f15ab6b338ab868ec3705@kernel.org>
In-Reply-To: <1132a536516f15ab6b338ab868ec3705@kernel.org>
From: Barry Song <21cnbao@gmail.com>
Date: Wed, 1 Sep 2021 09:36:45 +1200
Message-ID: <CAGsJ_4y45TyWibu0cOLbopO_k3RbwxQe0C2yp8v4=fF7etMOTg@mail.gmail.com>
To: Marc Zyngier <maz@kernel.org>
X-Mailman-Approved-At: Wed, 01 Sep 2021 13:57:21 +0000
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, schnelle@linux.ibm.com,
 linux-pci@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, lkp@lists.01.org, Jonathan.Cameron@huawei.com,
 Bjorn Helgaas <bhelgaas@google.com>, kernel test robot <oliver.sang@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 luzmaximilian@gmail.com, bilbao@vt.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 31, 2021 at 8:08 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2021-08-31 02:21, Barry Song wrote:
> > On Mon, Aug 30, 2021 at 2:38 AM kernel test robot
> > <oliver.sang@intel.com> wrote:
> >>
> >>
> >>
> >> Greeting,
> >>
> >> FYI, we noticed the following commit (built with gcc-9):
> >>
> >> commit: a4fc4cf388319ea957ffbdab5073bdd267de9082 ("[PATCH v3 3/3]
> >> PCI/MSI: remove msi_attrib.default_irq in msi_desc")
> >> url:
> >> https://github.com/0day-ci/linux/commits/Barry-Song/PCI-MSI-Clarify-the-IRQ-sysfs-ABI-for-PCI-devices/20210825-183018
> >> base: https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git
> >> 6e764bcd1cf72a2846c0e53d3975a09b242c04c9
> >>
> >> in testcase: kernel-selftests
> >> version: kernel-selftests-x86_64-ebaa603b-1_20210825
> >> with following parameters:
> >>
> >>         group: pidfd
> >>         ucode: 0xe2
> >>
> >> test-description: The kernel contains a set of "self tests" under the
> >> tools/testing/selftests/ directory. These are intended to be small
> >> unit tests to exercise individual code paths in the kernel.
> >> test-url: https://www.kernel.org/doc/Documentation/kselftest.txt
> >>
> >>
> >> on test machine: 4 threads Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz
> >> with 32G memory
> >>
> >> caused below changes (please refer to attached dmesg/kmsg for entire
> >> log/backtrace):
> >>
> >>
> >>
> >> If you fix the issue, kindly add following tag
> >> Reported-by: kernel test robot <oliver.sang@intel.com>
> >>
> >>
> >>
> >> [  179.602028][   T34] genirq: Flags mismatch irq 16. 00002000
> >> (mei_me) vs. 00000000 (xhci_hcd)
> >> [  179.614073][   T34] CPU: 2 PID: 34 Comm: kworker/u8:2 Not tainted
> >> 5.14.0-rc7-00014-ga4fc4cf38831 #1
> >> [  179.623225][   T34] Hardware name: Dell Inc. OptiPlex 7040/0Y7WYT,
> >> BIOS 1.8.1 12/05/2017
> >> [  179.631432][   T34] Workqueue: events_unbound async_run_entry_fn
> >> [  179.637543][   T34] Call Trace:
> >> [  179.640789][   T34]  dump_stack_lvl+0x45/0x59
> >> [  179.645253][   T34]  __setup_irq.cold+0x50/0xd4
> >> [  179.649893][   T34]  ? mei_me_pg_exit_sync+0x480/0x480 [mei_me]
> >> [  179.655923][   T34]  request_threaded_irq+0x10c/0x180
> >> [  179.661073][   T34]  ? mei_me_irq_quick_handler+0x240/0x240
> >> [mei_me]
> >> [  179.667528][   T34]  mei_me_probe+0x131/0x300 [mei_me]
> >> [  179.672767][   T34]  local_pci_probe+0x42/0x80
> >> [  179.677313][   T34]  pci_device_probe+0x107/0x1c0
> >> [  179.682118][   T34]  really_probe+0xb6/0x380
> >> [  179.687094][   T34]  __driver_probe_device+0xfe/0x180
> >> [  179.692242][   T34]  driver_probe_device+0x1e/0xc0
> >> [  179.697133][   T34]  __driver_attach_async_helper+0x2b/0x80
> >> [  179.702802][   T34]  async_run_entry_fn+0x30/0x140
> >> [  179.707693][   T34]  process_one_work+0x274/0x5c0
> >> [  179.712503][   T34]  worker_thread+0x50/0x3c0
> >> [  179.716959][   T34]  ? process_one_work+0x5c0/0x5c0
> >> [  179.721936][   T34]  kthread+0x14f/0x180
> >> [  179.725958][   T34]  ? set_kthread_struct+0x40/0x40
> >> [  179.730935][   T34]  ret_from_fork+0x22/0x30
> >> [  179.735699][   T34] mei_me 0000:00:16.0: request_threaded_irq
> >> failure. irq = 16
> >> [  179.743125][   T34] mei_me 0000:00:16.0: initialization failed.
> >> [  179.749399][   T34] mei_me: probe of 0000:00:16.0 failed with error
> >> -16
> >>
> >>
> >
> > it seems there is a direct reference to pdev->irq.
> > Hi Oliver, would you try if the below patch can fix the problem:
> >
> > diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
> > index c3393b383e59..a45a2d4257a6 100644
> > --- a/drivers/misc/mei/pci-me.c
> > +++ b/drivers/misc/mei/pci-me.c
> > @@ -216,7 +216,7 @@ static int mei_me_probe(struct pci_dev *pdev,
> > const struct pci_device_id *ent)
> >
> >         pci_enable_msi(pdev);
> >
> > -       hw->irq = pdev->irq;
> > +       hw->irq = pci_irq_vector(pdev, 0);
> >
> >          /* request and enable interrupt */
> >         irqflags = pci_dev_msi_enabled(pdev) ? IRQF_ONESHOT :
> > IRQF_SHARED;
> >
>
> Ah! one victim, 3000 to go! :D
>

yep.

> That's exactly the kind of stuff I was mentioning when we
> discussed this patch. Exposing the MSI vector as the INTx
> IRQ has led to all sorts of broken drivers.

I guess drivers should depend on int pci_irq_vector(struct pci_dev
*dev, unsigned int nr)
rather than hardcodely use pdev->irq.

pci_irq_vector() supports all cases(intx, msi, msi-x)

>
>          M.
> --
> Jazz is not dead. It just smells funny...

Thanks
barry
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
