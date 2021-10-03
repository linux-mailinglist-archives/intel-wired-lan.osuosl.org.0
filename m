Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D987B42047F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Oct 2021 02:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B563849C8;
	Mon,  4 Oct 2021 00:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xuVBbeyjo06y; Mon,  4 Oct 2021 00:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 062B4849B6;
	Mon,  4 Oct 2021 00:12:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F9541BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Oct 2021 08:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96B3E4019B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Oct 2021 08:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4XAi5-2Nhtnn for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Oct 2021 08:32:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D1DB400F3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Oct 2021 08:32:42 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id x7so50778409edd.6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 03 Oct 2021 01:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kPIObBVVgnXoudMBLnu91RHq8erONgyj0SqjFXcGnsc=;
 b=DwhO3ws8FAT1mTK09qNmgbwgFycVAG7Z8JsNEnW9YabhC01Xc9apw35+JERTpTf06L
 alVgopwY+AgEJayvhfBJW41V94vNYL0WQTmm6i+Lh9Gb7bTxAiaRuSPGhqwy1qLQiuQt
 ikEoP6jiPVLLCSE8i2TNgUsTHOe7OEeRFXFTiBFN59Kbesm2hoWrTbRleOX2Etn0N/YD
 3ah3RZ6AcAtsksafD2TB57NxUArvbvXsQKhnjKgusbPH6Ebx6aJ24HJ6EqXDMaJ4a1uY
 32vHBFqfrTc2t91RFYGKcCkIYVRFzMM+9hWl5qQNrFc7T2YXbVEr9LwCm5kvDgInhDzK
 IhUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kPIObBVVgnXoudMBLnu91RHq8erONgyj0SqjFXcGnsc=;
 b=7+RfOnPCOelAidq/zam4sCWrP8t8XHMeNMr9MjtSm+cwoLR9Y+eW1RJu4Il3O8tgAp
 G1w0Y92qfE1uhF3twUFmFWWgIuJFm4IYEyN7dTyFapk5Grj79NqNQ4xFQPRDxBipPQeT
 +Ymh9KO8pGVFYIz1uvYQr7835finvj6jcyTZLSsBc8ChVse2s3Pzilq8CUUa4LPnFovM
 sd9fpGfXmWXfIL4wiYdiZ9P/tpm75doBKkrqYUZzkMy8DagKv47tMJrl2lnHxsqZBuAq
 qpwDUrrHrqYWngTZYxdqUqu1bN19LiFSnydvdWXFWVRzpSvGvsf/Ze5jy5iZ5OpAZAay
 sjRg==
X-Gm-Message-State: AOAM5314nv55bmjC7+6O4BYDlkauQnfXsLaeVU6/D18agtiTTsoghh5d
 0JQ6Tfz0zFyHjO86au3BpV0netf+81yvc/bytwA=
X-Google-Smtp-Source: ABdhPJwh0nQr1w1Lj5SRzFQcfXjMdXb7w+vZV4VO4oWFFPjCrnKnNAyUEmpeRFe//S4jOBF/xys5vJU42onnHy0ka3c=
X-Received: by 2002:a50:cd87:: with SMTP id p7mr9578535edi.294.1633249959979; 
 Sun, 03 Oct 2021 01:32:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210825102636.52757-4-21cnbao@gmail.com>
 <20210829145552.GA11556@xsang-OptiPlex-9020>
 <CAGsJ_4yYwjuWsEeK3CvnOhc10mbBNYWXqxqp+mR5587R2FD3gQ@mail.gmail.com>
 <CAGsJ_4zwRdR2QuoR0K0_J86w0=t=mFh=tAKRuP1+Tx8aLn4kKw@mail.gmail.com>
 <8ab95f7f784448038d7777c45f1f2d55@intel.com>
In-Reply-To: <8ab95f7f784448038d7777c45f1f2d55@intel.com>
From: Barry Song <21cnbao@gmail.com>
Date: Sun, 3 Oct 2021 21:32:28 +1300
Message-ID: <CAGsJ_4ygPbLFqpRu7_N4RvfTY++OumQCFz=yxgcnb3VoqPwRAg@mail.gmail.com>
To: "Winkler, Tomas" <tomas.winkler@intel.com>
X-Mailman-Approved-At: Mon, 04 Oct 2021 00:12:24 +0000
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
Cc: Barry Song <song.bao.hua@hisilicon.com>,
 "leon@kernel.org" <leon@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 "mchehab+huawei@kernel.org" <mchehab+huawei@kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 "schnelle@linux.ibm.com" <schnelle@linux.ibm.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Linuxarm <linuxarm@huawei.com>,
 "lkp@lists.01.org" <lkp@lists.01.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Jonathan.Cameron@huawei.com" <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, "Sang, Oliver" <oliver.sang@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "luzmaximilian@gmail.com" <luzmaximilian@gmail.com>,
 "bilbao@vt.edu" <bilbao@vt.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 3, 2021 at 7:34 AM Winkler, Tomas <tomas.winkler@intel.com> wrote:
>
> > dmesg.genirq:Flags_mismatch_irq##(mei_me)vs.#(xhci_hcd)
> >
> > On Tue, Aug 31, 2021 at 1:21 PM Barry Song <21cnbao@gmail.com> wrote:
> > >
> > > On Mon, Aug 30, 2021 at 2:38 AM kernel test robot
> > <oliver.sang@intel.com> wrote:
> > > >
> > > >
> > > >
> > > > Greeting,
> > > >
> > > > FYI, we noticed the following commit (built with gcc-9):
> > > >
> > > > commit: a4fc4cf388319ea957ffbdab5073bdd267de9082 ("[PATCH v3 3/3]
> > > > PCI/MSI: remove msi_attrib.default_irq in msi_desc")
> > > > url:
> > > > https://github.com/0day-ci/linux/commits/Barry-Song/PCI-MSI-Clarify-
> > > > the-IRQ-sysfs-ABI-for-PCI-devices/20210825-183018
> > > > base:
> > > > https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git
> > > > 6e764bcd1cf72a2846c0e53d3975a09b242c04c9
> > > >
> > > > in testcase: kernel-selftests
> > > > version: kernel-selftests-x86_64-ebaa603b-1_20210825
> > > > with following parameters:
> > > >
> > > >         group: pidfd
> > > >         ucode: 0xe2
> > > >
> > > > test-description: The kernel contains a set of "self tests" under the
> > tools/testing/selftests/ directory. These are intended to be small unit tests
> > to exercise individual code paths in the kernel.
> > > > test-url: https://www.kernel.org/doc/Documentation/kselftest.txt
> > > >
> > > >
> > > > on test machine: 4 threads Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz
> > > > with 32G memory
> > > >
> > > > caused below changes (please refer to attached dmesg/kmsg for entire
> > log/backtrace):
> > > >
> > > >
> > > >
> > > > If you fix the issue, kindly add following tag
> > > > Reported-by: kernel test robot <oliver.sang@intel.com>
> > > >
> > > >
> > > >
> > > > [  179.602028][   T34] genirq: Flags mismatch irq 16. 00002000 (mei_me) vs.
> > 00000000 (xhci_hcd)
> > > > [  179.614073][   T34] CPU: 2 PID: 34 Comm: kworker/u8:2 Not tainted
> > 5.14.0-rc7-00014-ga4fc4cf38831 #1
> > > > [  179.623225][   T34] Hardware name: Dell Inc. OptiPlex 7040/0Y7WYT,
> > BIOS 1.8.1 12/05/2017
> > > > [  179.631432][   T34] Workqueue: events_unbound async_run_entry_fn
> > > > [  179.637543][   T34] Call Trace:
> > > > [  179.640789][   T34]  dump_stack_lvl+0x45/0x59
> > > > [  179.645253][   T34]  __setup_irq.cold+0x50/0xd4
> > > > [  179.649893][   T34]  ? mei_me_pg_exit_sync+0x480/0x480 [mei_me]
> > > > [  179.655923][   T34]  request_threaded_irq+0x10c/0x180
> > > > [  179.661073][   T34]  ? mei_me_irq_quick_handler+0x240/0x240
> > [mei_me]
> > > > [  179.667528][   T34]  mei_me_probe+0x131/0x300 [mei_me]
> > > > [  179.672767][   T34]  local_pci_probe+0x42/0x80
> > > > [  179.677313][   T34]  pci_device_probe+0x107/0x1c0
> > > > [  179.682118][   T34]  really_probe+0xb6/0x380
> > > > [  179.687094][   T34]  __driver_probe_device+0xfe/0x180
> > > > [  179.692242][   T34]  driver_probe_device+0x1e/0xc0
> > > > [  179.697133][   T34]  __driver_attach_async_helper+0x2b/0x80
> > > > [  179.702802][   T34]  async_run_entry_fn+0x30/0x140
> > > > [  179.707693][   T34]  process_one_work+0x274/0x5c0
> > > > [  179.712503][   T34]  worker_thread+0x50/0x3c0
> > > > [  179.716959][   T34]  ? process_one_work+0x5c0/0x5c0
> > > > [  179.721936][   T34]  kthread+0x14f/0x180
> > > > [  179.725958][   T34]  ? set_kthread_struct+0x40/0x40
> > > > [  179.730935][   T34]  ret_from_fork+0x22/0x30
> > > > [  179.735699][   T34] mei_me 0000:00:16.0: request_threaded_irq failure.
> > irq = 16
> > > > [  179.743125][   T34] mei_me 0000:00:16.0: initialization failed.
> > > > [  179.749399][   T34] mei_me: probe of 0000:00:16.0 failed with error -16
> > > >
> > > >
> > >
> > > it seems there is a direct reference to pdev->irq.
> > > Hi Oliver, would you try if the below patch can fix the problem:
> >
> > + Tomas
> >
> > sorry. after second looking, drivers/misc/mei/pci-me.c has many places using
> > pdev->irq directly. We really need this driver's maintainers to address the
> > problem.
>
> Will look at that.

Hi Tomas,

I assume using hw->irq or not is a separate topic, does vim command
%s/pdev->irq/pci_irq_vector(pdev, 0)/g
as below fix the current crash problem because of directly dereferencing
pdev->irq?

diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
index c3393b383e59..97495931fadd 100644
--- a/drivers/misc/mei/pci-me.c
+++ b/drivers/misc/mei/pci-me.c
@@ -216,18 +216,18 @@ static int mei_me_probe(struct pci_dev *pdev,
const struct pci_device_id *ent)

  pci_enable_msi(pdev);

- hw->irq = pdev->irq;
+ hw->irq = pci_irq_vector(pdev, 0);

  /* request and enable interrupt */
  irqflags = pci_dev_msi_enabled(pdev) ? IRQF_ONESHOT : IRQF_SHARED;

- err = request_threaded_irq(pdev->irq,
+ err = request_threaded_irq(pci_irq_vector(pdev, 0),
  mei_me_irq_quick_handler,
  mei_me_irq_thread_handler,
  irqflags, KBUILD_MODNAME, dev);
  if (err) {
  dev_err(&pdev->dev, "request_threaded_irq failure. irq = %d\n",
-        pdev->irq);
+        pci_irq_vector(pdev, 0));
  goto end;
  }

@@ -278,7 +278,7 @@ static int mei_me_probe(struct pci_dev *pdev,
const struct pci_device_id *ent)
 release_irq:
  mei_cancel_work(dev);
  mei_disable_interrupts(dev);
- free_irq(pdev->irq, dev);
+ free_irq(pci_irq_vector(pdev, 0), dev);
 end:
  dev_err(&pdev->dev, "initialization failed.\n");
  return err;
@@ -307,7 +307,7 @@ static void mei_me_shutdown(struct pci_dev *pdev)
  mei_me_unset_pm_domain(dev);

  mei_disable_interrupts(dev);
- free_irq(pdev->irq, dev);
+ free_irq(pci_irq_vector(pdev, 0), dev);
 }

 /**
@@ -336,7 +336,7 @@ static void mei_me_remove(struct pci_dev *pdev)

  mei_disable_interrupts(dev);

- free_irq(pdev->irq, dev);
+ free_irq(pci_irq_vector(pdev, 0), dev);

  mei_deregister(dev);
 }
@@ -356,7 +356,7 @@ static int mei_me_pci_suspend(struct device *device)

  mei_disable_interrupts(dev);

- free_irq(pdev->irq, dev);
+ free_irq(pci_irq_vector(pdev, 0), dev);
  pci_disable_msi(pdev);

  return 0;
@@ -378,14 +378,14 @@ static int mei_me_pci_resume(struct device *device)
  irqflags = pci_dev_msi_enabled(pdev) ? IRQF_ONESHOT : IRQF_SHARED;

  /* request and enable interrupt */
- err = request_threaded_irq(pdev->irq,
+ err = request_threaded_irq(pci_irq_vector(pdev, 0),
  mei_me_irq_quick_handler,
  mei_me_irq_thread_handler,
  irqflags, KBUILD_MODNAME, dev);

  if (err) {
  dev_err(&pdev->dev, "request_threaded_irq failed: irq = %d.\n",
- pdev->irq);
+ pci_irq_vector(pdev, 0));
  return err;
  }


Thanks
barry
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
