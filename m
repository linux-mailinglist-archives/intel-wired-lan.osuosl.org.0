Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AF13FD9F7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 15:09:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EEF382864;
	Wed,  1 Sep 2021 13:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2OeKx4qbGmjU; Wed,  1 Sep 2021 13:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1035D827DE;
	Wed,  1 Sep 2021 13:09:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFE1C1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 13:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A97DA401C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 13:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doCnhwBrWahN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 13:09:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16EC7401B0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 13:09:15 +0000 (UTC)
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB1E961074;
 Wed,  1 Sep 2021 13:09:15 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <maz@kernel.org>)
 id 1mLPzN-008RSi-NI; Wed, 01 Sep 2021 14:09:13 +0100
MIME-Version: 1.0
Date: Wed, 01 Sep 2021 14:09:13 +0100
From: Marc Zyngier <maz@kernel.org>
To: Barry Song <21cnbao@gmail.com>
In-Reply-To: <CAGsJ_4y45TyWibu0cOLbopO_k3RbwxQe0C2yp8v4=fF7etMOTg@mail.gmail.com>
References: <20210825102636.52757-4-21cnbao@gmail.com>
 <20210829145552.GA11556@xsang-OptiPlex-9020>
 <CAGsJ_4yYwjuWsEeK3CvnOhc10mbBNYWXqxqp+mR5587R2FD3gQ@mail.gmail.com>
 <1132a536516f15ab6b338ab868ec3705@kernel.org>
 <CAGsJ_4y45TyWibu0cOLbopO_k3RbwxQe0C2yp8v4=fF7etMOTg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <04a0587a5d7854494e9ccfd1fdf39951@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: 21cnbao@gmail.com, oliver.sang@intel.com, lkp@intel.com,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 song.bao.hua@hisilicon.com, linux-kernel@vger.kernel.org, lkp@lists.01.org,
 bhelgaas@google.com, tglx@linutronix.de, Jonathan.Cameron@huawei.com,
 bilbao@vt.edu, corbet@lwn.net, gregkh@linuxfoundation.org, leon@kernel.org,
 linux-pci@vger.kernel.org, linuxarm@huawei.com, luzmaximilian@gmail.com,
 mchehab+huawei@kernel.org, schnelle@linux.ibm.com,
 intel-wired-lan@lists.osuosl.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2021-08-31 22:36, Barry Song wrote:
> On Tue, Aug 31, 2021 at 8:08 PM Marc Zyngier <maz@kernel.org> wrote:
>> 
>> On 2021-08-31 02:21, Barry Song wrote:
>> > On Mon, Aug 30, 2021 at 2:38 AM kernel test robot
>> > <oliver.sang@intel.com> wrote:
>> >>
>> >>
>> >>
>> >> Greeting,
>> >>
>> >> FYI, we noticed the following commit (built with gcc-9):
>> >>
>> >> commit: a4fc4cf388319ea957ffbdab5073bdd267de9082 ("[PATCH v3 3/3]
>> >> PCI/MSI: remove msi_attrib.default_irq in msi_desc")
>> >> url:
>> >> https://github.com/0day-ci/linux/commits/Barry-Song/PCI-MSI-Clarify-the-IRQ-sysfs-ABI-for-PCI-devices/20210825-183018
>> >> base: https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git
>> >> 6e764bcd1cf72a2846c0e53d3975a09b242c04c9
>> >>
>> >> in testcase: kernel-selftests
>> >> version: kernel-selftests-x86_64-ebaa603b-1_20210825
>> >> with following parameters:
>> >>
>> >>         group: pidfd
>> >>         ucode: 0xe2
>> >>
>> >> test-description: The kernel contains a set of "self tests" under the
>> >> tools/testing/selftests/ directory. These are intended to be small
>> >> unit tests to exercise individual code paths in the kernel.
>> >> test-url: https://www.kernel.org/doc/Documentation/kselftest.txt
>> >>
>> >>
>> >> on test machine: 4 threads Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz
>> >> with 32G memory
>> >>
>> >> caused below changes (please refer to attached dmesg/kmsg for entire
>> >> log/backtrace):
>> >>
>> >>
>> >>
>> >> If you fix the issue, kindly add following tag
>> >> Reported-by: kernel test robot <oliver.sang@intel.com>
>> >>
>> >>
>> >>
>> >> [  179.602028][   T34] genirq: Flags mismatch irq 16. 00002000
>> >> (mei_me) vs. 00000000 (xhci_hcd)
>> >> [  179.614073][   T34] CPU: 2 PID: 34 Comm: kworker/u8:2 Not tainted
>> >> 5.14.0-rc7-00014-ga4fc4cf38831 #1
>> >> [  179.623225][   T34] Hardware name: Dell Inc. OptiPlex 7040/0Y7WYT,
>> >> BIOS 1.8.1 12/05/2017
>> >> [  179.631432][   T34] Workqueue: events_unbound async_run_entry_fn
>> >> [  179.637543][   T34] Call Trace:
>> >> [  179.640789][   T34]  dump_stack_lvl+0x45/0x59
>> >> [  179.645253][   T34]  __setup_irq.cold+0x50/0xd4
>> >> [  179.649893][   T34]  ? mei_me_pg_exit_sync+0x480/0x480 [mei_me]
>> >> [  179.655923][   T34]  request_threaded_irq+0x10c/0x180
>> >> [  179.661073][   T34]  ? mei_me_irq_quick_handler+0x240/0x240
>> >> [mei_me]
>> >> [  179.667528][   T34]  mei_me_probe+0x131/0x300 [mei_me]
>> >> [  179.672767][   T34]  local_pci_probe+0x42/0x80
>> >> [  179.677313][   T34]  pci_device_probe+0x107/0x1c0
>> >> [  179.682118][   T34]  really_probe+0xb6/0x380
>> >> [  179.687094][   T34]  __driver_probe_device+0xfe/0x180
>> >> [  179.692242][   T34]  driver_probe_device+0x1e/0xc0
>> >> [  179.697133][   T34]  __driver_attach_async_helper+0x2b/0x80
>> >> [  179.702802][   T34]  async_run_entry_fn+0x30/0x140
>> >> [  179.707693][   T34]  process_one_work+0x274/0x5c0
>> >> [  179.712503][   T34]  worker_thread+0x50/0x3c0
>> >> [  179.716959][   T34]  ? process_one_work+0x5c0/0x5c0
>> >> [  179.721936][   T34]  kthread+0x14f/0x180
>> >> [  179.725958][   T34]  ? set_kthread_struct+0x40/0x40
>> >> [  179.730935][   T34]  ret_from_fork+0x22/0x30
>> >> [  179.735699][   T34] mei_me 0000:00:16.0: request_threaded_irq
>> >> failure. irq = 16
>> >> [  179.743125][   T34] mei_me 0000:00:16.0: initialization failed.
>> >> [  179.749399][   T34] mei_me: probe of 0000:00:16.0 failed with error
>> >> -16
>> >>
>> >>
>> >
>> > it seems there is a direct reference to pdev->irq.
>> > Hi Oliver, would you try if the below patch can fix the problem:
>> >
>> > diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
>> > index c3393b383e59..a45a2d4257a6 100644
>> > --- a/drivers/misc/mei/pci-me.c
>> > +++ b/drivers/misc/mei/pci-me.c
>> > @@ -216,7 +216,7 @@ static int mei_me_probe(struct pci_dev *pdev,
>> > const struct pci_device_id *ent)
>> >
>> >         pci_enable_msi(pdev);
>> >
>> > -       hw->irq = pdev->irq;
>> > +       hw->irq = pci_irq_vector(pdev, 0);
>> >
>> >          /* request and enable interrupt */
>> >         irqflags = pci_dev_msi_enabled(pdev) ? IRQF_ONESHOT :
>> > IRQF_SHARED;
>> >
>> 
>> Ah! one victim, 3000 to go! :D
>> 
> 
> yep.
> 
>> That's exactly the kind of stuff I was mentioning when we
>> discussed this patch. Exposing the MSI vector as the INTx
>> IRQ has led to all sorts of broken drivers.
> 
> I guess drivers should depend on int pci_irq_vector(struct pci_dev
> *dev, unsigned int nr)
> rather than hardcodely use pdev->irq.
> 
> pci_irq_vector() supports all cases(intx, msi, msi-x)

Yes, that'd be a sensible approach. Feels like a job for
a coccinelle script!

         M.
-- 
Jazz is not dead. It just smells funny...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
