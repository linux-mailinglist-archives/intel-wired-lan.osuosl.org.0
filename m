Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E83E299A32
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Oct 2020 00:08:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89C0786665;
	Mon, 26 Oct 2020 23:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fEDgrvWzRk4f; Mon, 26 Oct 2020 23:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB98086658;
	Mon, 26 Oct 2020 23:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB23F1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 23:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF81B20386
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 23:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oIeNbh9yrhZZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Oct 2020 23:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id E59D520381
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 23:08:12 +0000 (UTC)
IronPort-SDR: F1bTGOIUVBSbNaJZZE+KjnZmEW1OOzmQobkPxUHrz48wZG53T7EsJQYPcUcTkCpuMbmaRyWYWq
 esui8fB3B0Xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="185731516"
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="185731516"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 16:08:12 -0700
IronPort-SDR: zy8W979PBVagL8i+Jv+r805cLR1FVBAasdYfpwLnnY5dMEYS9mo977q0BeEUHtu8ZSPkUShL6e
 ejjJSj2+O2cA==
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="524468975"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.212.215.218])
 ([10.212.215.218])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 16:08:10 -0700
To: Thomas Gleixner <tglx@linutronix.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Marcelo Tosatti <mtosatti@redhat.com>
References: <20201019111137.GL2628@hirez.programming.kicks-ass.net>
 <20201019140005.GB17287@fuller.cnet>
 <20201020073055.GY2611@hirez.programming.kicks-ass.net>
 <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
 <20201020134128.GT2628@hirez.programming.kicks-ass.net>
 <6736e643-d4ae-9919-9ae1-a73d5f31463e@redhat.com>
 <260f4191-5b9f-6dc1-9f11-085533ac4f55@redhat.com>
 <20201023085826.GP2611@hirez.programming.kicks-ass.net>
 <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
 <87ft6464jf.fsf@nanos.tec.linutronix.de>
 <20201026173012.GA377978@fuller.cnet>
 <875z6w4xt4.fsf@nanos.tec.linutronix.de>
 <86f8f667-bda6-59c4-91b7-6ba2ef55e3db@intel.com>
 <87v9ew3fzd.fsf@nanos.tec.linutronix.de>
 <85b5f53e-5be2-beea-269a-f70029bea298@intel.com>
 <87lffs3bd6.fsf@nanos.tec.linutronix.de>
 <959997ee-f393-bab0-45c0-4144c37b9185@redhat.com>
 <875z6w38n4.fsf@nanos.tec.linutronix.de>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <586e249a-1078-9fe9-22d4-b3c1ec0a3a5e@intel.com>
Date: Mon, 26 Oct 2020 16:08:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <875z6w38n4.fsf@nanos.tec.linutronix.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4 4/4] PCI: Limit
 pci_alloc_irq_vectors() to housekeeping CPUs
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
Cc: juri.lelli@redhat.com, Peter Zijlstra <peterz@infradead.org>,
 linux-pci@vger.kernel.org, sassmann@redhat.com, vincent.guittot@linaro.org,
 hch@infradead.org, mingo@redhat.com, intel-wired-lan@lists.osuosl.org,
 helgaas@kernel.org, thomas.lendacky@amd.com, lgoncalv@redhat.com,
 frederic@kernel.org, jlelli@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 jiri@nvidia.com, bhelgaas@google.com, mike.marciniszyn@intel.com,
 netdev@vger.kernel.org, dennis.dalessandro@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/26/2020 3:49 PM, Thomas Gleixner wrote:
> On Mon, Oct 26 2020 at 18:22, Nitesh Narayan Lal wrote:
>> On 10/26/20 5:50 PM, Thomas Gleixner wrote:
>>> But I still think that for curing that isolation stuff we want at least
>>> some information from the driver. Alternative solution would be to grant
>>> the allocation of interrupts and queues and have some sysfs knob to shut
>>> down queues at runtime. If that shutdown results in releasing the queue
>>> interrupt (via free_irq()) then the vector exhaustion problem goes away.
>>
>> I think this is close to what I and Marcelo were discussing earlier today
>> privately.
>>
>> I don't think there is currently a way to control the enablement/disablement of
>> interrupts from the userspace.
> 
> You cannot just disable the interrupt. You need to make sure that the
> associated queue is shutdown or quiesced _before_ the interrupt is shut
> down.
> 
> Thanks,
> 
>         tglx
> 

Could this be handled with a callback to the driver/hw? I know Intel HW
should support this type of quiesce/shutdown.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
