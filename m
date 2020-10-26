Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C812996BA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Oct 2020 20:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AF02866B0;
	Mon, 26 Oct 2020 19:22:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N5R9yeuRrrt8; Mon, 26 Oct 2020 19:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED689866CA;
	Mon, 26 Oct 2020 19:22:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 385841BF956
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 19:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F12885ACD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 19:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IQMtAJXyFU+H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Oct 2020 19:22:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6DDAF816DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 19:22:00 +0000 (UTC)
IronPort-SDR: 31PtxPa6qDT+a7qkIcZvktYEPMloEYTOs2Gp2KvQxRB64uWDxhgK7jXBNZGt/Q1LUWa03waqDM
 hG7jQ0LoVQdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="168076439"
X-IronPort-AV: E=Sophos;i="5.77,420,1596524400"; d="scan'208";a="168076439"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 12:21:59 -0700
IronPort-SDR: KP+zyN+pYWUHbv0ikkIrw3/C2WzNNgBx9rO1UOu5LO0PYHwHroIgJAPxnc1rIULGeCHLmKnuUm
 idHHtaWLyVYw==
X-IronPort-AV: E=Sophos;i="5.77,420,1596524400"; d="scan'208";a="524397909"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.212.215.218])
 ([10.212.215.218])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 12:21:51 -0700
To: Thomas Gleixner <tglx@linutronix.de>, Marcelo Tosatti <mtosatti@redhat.com>
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
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <86f8f667-bda6-59c4-91b7-6ba2ef55e3db@intel.com>
Date: Mon, 26 Oct 2020 12:21:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <875z6w4xt4.fsf@nanos.tec.linutronix.de>
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
 hch@infradead.org, mingo@redhat.com, helgaas@kernel.org,
 intel-wired-lan@lists.osuosl.org, thomas.lendacky@amd.com, lgoncalv@redhat.com,
 frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com, bhelgaas@google.com,
 Nitesh Narayan Lal <nitesh@redhat.com>, mike.marciniszyn@intel.com,
 netdev@vger.kernel.org, dennis.dalessandro@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/26/2020 12:00 PM, Thomas Gleixner wrote:
> On Mon, Oct 26 2020 at 14:30, Marcelo Tosatti wrote:
>> On Fri, Oct 23, 2020 at 11:00:52PM +0200, Thomas Gleixner wrote:
>>> So without information from the driver which tells what the best number
>>> of interrupts is with a reduced number of CPUs, this cutoff will cause
>>> more problems than it solves. Regressions guaranteed.
>>
>> One might want to move from one interrupt per isolated app core
>> to zero, or vice versa. It seems that "best number of interrupts 
>> is with reduced number of CPUs" information, is therefore in userspace, 
>> not in driver...
> 
> How does userspace know about the driver internals? Number of management
> interrupts, optimal number of interrupts per queue?
> 

I guess this is the problem solved in part by the queue management work
that would make queues a thing that userspace is aware of.

Are there drivers which use more than one interrupt per queue? I know
drivers have multiple management interrupts.. and I guess some drivers
do combined 1 interrupt per pair of Tx/Rx..  It's also plausible to to
have multiple queues for one interrupt .. I'm not sure how a single
queue with multiple interrupts would work though.

>>> Managed interrupts base their interrupt allocation and spreading on
>>> information which is handed in by the individual driver and not on crude
>>> assumptions. They are not imposing restrictions on the use case.
>>>
>>> It's perfectly fine for isolated work to save a data set to disk after
>>> computation has finished and that just works with the per-cpu I/O queue
>>> which is otherwise completely silent. 
>>
>> Userspace could only change the mask of interrupts which are not 
>> triggered by requests from the local CPU (admin, error, mgmt, etc),
>> to avoid the vector exhaustion problem.
>>
>> However, there is no explicit way for userspace to know that, as far as
>> i know.
>>
>>  130:      34845          0          0          0          0          0          0          0  IR-PCI-MSI 33554433-edge      nvme0q1
>>  131:          0      27062          0          0          0          0          0          0  IR-PCI-MSI 33554434-edge      nvme0q2
>>  132:          0          0      24393          0          0          0          0          0  IR-PCI-MSI 33554435-edge      nvme0q3
>>  133:          0          0          0      24313          0          0          0          0  IR-PCI-MSI 33554436-edge      nvme0q4
>>  134:          0          0          0          0      20608          0          0          0  IR-PCI-MSI 33554437-edge      nvme0q5
>>  135:          0          0          0          0          0      22163          0          0  IR-PCI-MSI 33554438-edge      nvme0q6
>>  136:          0          0          0          0          0          0      23020          0  IR-PCI-MSI 33554439-edge      nvme0q7
>>  137:          0          0          0          0          0          0          0      24285  IR-PCI-MSI 33554440-edge      nvme0q8
>>
>> Can that be retrieved from PCI-MSI information, or drivers
>> have to inform this?
> 
> The driver should use a different name for the admin queues.
> 
> Thanks,
> 
>         tglx
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
