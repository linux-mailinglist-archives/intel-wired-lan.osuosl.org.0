Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E6F3FF444
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Sep 2021 21:35:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04BBF82ECF;
	Thu,  2 Sep 2021 19:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f1LdaUWN5tI2; Thu,  2 Sep 2021 19:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8EA582C8F;
	Thu,  2 Sep 2021 19:34:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72D9E1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 19:34:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 601C34041E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 19:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bp4hWJhmUv-V for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Sep 2021 19:34:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC92A40314
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 19:34:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="216086406"
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="216086406"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 12:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="521312767"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 02 Sep 2021 12:34:42 -0700
Received: from shsmsx604.ccr.corp.intel.com (10.109.6.214) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 12:34:41 -0700
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 SHSMSX604.ccr.corp.intel.com (10.109.6.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 3 Sep 2021 03:34:38 +0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2242.010;
 Thu, 2 Sep 2021 22:34:36 +0300
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Barry Song <21cnbao@gmail.com>, "Sang, Oliver" <oliver.sang@intel.com>
Thread-Topic: [PCI/MSI] a4fc4cf388:
 dmesg.genirq:Flags_mismatch_irq##(mei_me)vs.#(xhci_hcd)
Thread-Index: AQHXnginGRfCkYvOzEKHZKqjivRGPKuRJldQ
Date: Thu, 2 Sep 2021 19:34:35 +0000
Message-ID: <8ab95f7f784448038d7777c45f1f2d55@intel.com>
References: <20210825102636.52757-4-21cnbao@gmail.com>
 <20210829145552.GA11556@xsang-OptiPlex-9020>
 <CAGsJ_4yYwjuWsEeK3CvnOhc10mbBNYWXqxqp+mR5587R2FD3gQ@mail.gmail.com>
 <CAGsJ_4zwRdR2QuoR0K0_J86w0=t=mFh=tAKRuP1+Tx8aLn4kKw@mail.gmail.com>
In-Reply-To: <CAGsJ_4zwRdR2QuoR0K0_J86w0=t=mFh=tAKRuP1+Tx8aLn4kKw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
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
 Bjorn Helgaas <bhelgaas@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "luzmaximilian@gmail.com" <luzmaximilian@gmail.com>,
 "bilbao@vt.edu" <bilbao@vt.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> dmesg.genirq:Flags_mismatch_irq##(mei_me)vs.#(xhci_hcd)
> 
> On Tue, Aug 31, 2021 at 1:21 PM Barry Song <21cnbao@gmail.com> wrote:
> >
> > On Mon, Aug 30, 2021 at 2:38 AM kernel test robot
> <oliver.sang@intel.com> wrote:
> > >
> > >
> > >
> > > Greeting,
> > >
> > > FYI, we noticed the following commit (built with gcc-9):
> > >
> > > commit: a4fc4cf388319ea957ffbdab5073bdd267de9082 ("[PATCH v3 3/3]
> > > PCI/MSI: remove msi_attrib.default_irq in msi_desc")
> > > url:
> > > https://github.com/0day-ci/linux/commits/Barry-Song/PCI-MSI-Clarify-
> > > the-IRQ-sysfs-ABI-for-PCI-devices/20210825-183018
> > > base:
> > > https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git
> > > 6e764bcd1cf72a2846c0e53d3975a09b242c04c9
> > >
> > > in testcase: kernel-selftests
> > > version: kernel-selftests-x86_64-ebaa603b-1_20210825
> > > with following parameters:
> > >
> > >         group: pidfd
> > >         ucode: 0xe2
> > >
> > > test-description: The kernel contains a set of "self tests" under the
> tools/testing/selftests/ directory. These are intended to be small unit tests
> to exercise individual code paths in the kernel.
> > > test-url: https://www.kernel.org/doc/Documentation/kselftest.txt
> > >
> > >
> > > on test machine: 4 threads Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz
> > > with 32G memory
> > >
> > > caused below changes (please refer to attached dmesg/kmsg for entire
> log/backtrace):
> > >
> > >
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kernel test robot <oliver.sang@intel.com>
> > >
> > >
> > >
> > > [  179.602028][   T34] genirq: Flags mismatch irq 16. 00002000 (mei_me) vs.
> 00000000 (xhci_hcd)
> > > [  179.614073][   T34] CPU: 2 PID: 34 Comm: kworker/u8:2 Not tainted
> 5.14.0-rc7-00014-ga4fc4cf38831 #1
> > > [  179.623225][   T34] Hardware name: Dell Inc. OptiPlex 7040/0Y7WYT,
> BIOS 1.8.1 12/05/2017
> > > [  179.631432][   T34] Workqueue: events_unbound async_run_entry_fn
> > > [  179.637543][   T34] Call Trace:
> > > [  179.640789][   T34]  dump_stack_lvl+0x45/0x59
> > > [  179.645253][   T34]  __setup_irq.cold+0x50/0xd4
> > > [  179.649893][   T34]  ? mei_me_pg_exit_sync+0x480/0x480 [mei_me]
> > > [  179.655923][   T34]  request_threaded_irq+0x10c/0x180
> > > [  179.661073][   T34]  ? mei_me_irq_quick_handler+0x240/0x240
> [mei_me]
> > > [  179.667528][   T34]  mei_me_probe+0x131/0x300 [mei_me]
> > > [  179.672767][   T34]  local_pci_probe+0x42/0x80
> > > [  179.677313][   T34]  pci_device_probe+0x107/0x1c0
> > > [  179.682118][   T34]  really_probe+0xb6/0x380
> > > [  179.687094][   T34]  __driver_probe_device+0xfe/0x180
> > > [  179.692242][   T34]  driver_probe_device+0x1e/0xc0
> > > [  179.697133][   T34]  __driver_attach_async_helper+0x2b/0x80
> > > [  179.702802][   T34]  async_run_entry_fn+0x30/0x140
> > > [  179.707693][   T34]  process_one_work+0x274/0x5c0
> > > [  179.712503][   T34]  worker_thread+0x50/0x3c0
> > > [  179.716959][   T34]  ? process_one_work+0x5c0/0x5c0
> > > [  179.721936][   T34]  kthread+0x14f/0x180
> > > [  179.725958][   T34]  ? set_kthread_struct+0x40/0x40
> > > [  179.730935][   T34]  ret_from_fork+0x22/0x30
> > > [  179.735699][   T34] mei_me 0000:00:16.0: request_threaded_irq failure.
> irq = 16
> > > [  179.743125][   T34] mei_me 0000:00:16.0: initialization failed.
> > > [  179.749399][   T34] mei_me: probe of 0000:00:16.0 failed with error -16
> > >
> > >
> >
> > it seems there is a direct reference to pdev->irq.
> > Hi Oliver, would you try if the below patch can fix the problem:
> 
> + Tomas
> 
> sorry. after second looking, drivers/misc/mei/pci-me.c has many places using
> pdev->irq directly. We really need this driver's maintainers to address the
> problem.

Will look at that. 
> 
> On the other hand, "struct mei_me_hw *hw" seems to be totally not used in
> this driver except here:
> 164 static int mei_me_probe(struct pci_dev *pdev, const struct
> pci_device_id *ent)
> 165 {
> 166         const struct mei_cfg *cfg;
> 167         struct mei_device *dev;
> 168         struct mei_me_hw *hw;
> 169         unsigned int irqflags;
> 170         int err;
> .....
> 219         hw->irq = pdev->irq;
> ...
> 
> this looks wrong. maybe we can leverage hw->irq in other places such as
> shutdown, suspend, resume.

We need this, usage will follow.
> 
> Thanks
> barry
> 
> 
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
> >
> > I don't have any hardware to test.


Hard to believe, MEI is on every Intel client platform :)

> >
> > >
> > > To reproduce:
> > >
> > >         git clone https://github.com/intel/lkp-tests.git
> > >         cd lkp-tests
> > >         bin/lkp install                job.yaml  # job file is attached in this email
> > >         bin/lkp split-job --compatible job.yaml  # generate the yaml file for
> lkp run
> > >         bin/lkp run                    generated-yaml-file
> > >
> > >
> > >
> > > ---
> > > 0DAY/LKP+ Test Infrastructure                   Open Source Technology Center
> > > https://lists.01.org/hyperkitty/list/lkp@lists.01.org       Intel Corporation
> > >
> > > Thanks,
> > > Oliver Sang
> > >
> >
> > Thanks
> > barry
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
