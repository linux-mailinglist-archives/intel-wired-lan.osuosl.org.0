Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BE6299895
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Oct 2020 22:11:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E62F084BF1;
	Mon, 26 Oct 2020 21:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bhJFpuGRDVFD; Mon, 26 Oct 2020 21:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20FD084E10;
	Mon, 26 Oct 2020 21:11:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A7F91BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 21:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2529F86FE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 21:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xRFmLdPqI+Ko for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Oct 2020 21:11:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA23D86FE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 21:11:28 +0000 (UTC)
IronPort-SDR: ke94ZMrpRgWobwNBhLG3gr5NSsC9UBp3IX1lCzacZOoggLyBFPyAh/sdu7XX+keWrteABkqjfB
 7he+dwOwukAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="185719074"
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="185719074"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 14:11:28 -0700
IronPort-SDR: Ubn4S/P+VpD/ORx74RsTV5F4jduNtxi7OAPIPg67McVnBCBtoTpZ3ZvNLS8g/fQBzTRu1ElV6b
 7qQpVQB2BfsQ==
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="524430113"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.212.215.218])
 ([10.212.215.218])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 14:11:27 -0700
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
 <86f8f667-bda6-59c4-91b7-6ba2ef55e3db@intel.com>
 <87v9ew3fzd.fsf@nanos.tec.linutronix.de>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <85b5f53e-5be2-beea-269a-f70029bea298@intel.com>
Date: Mon, 26 Oct 2020 14:11:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <87v9ew3fzd.fsf@nanos.tec.linutronix.de>
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



On 10/26/2020 1:11 PM, Thomas Gleixner wrote:
> On Mon, Oct 26 2020 at 12:21, Jacob Keller wrote:
>> On 10/26/2020 12:00 PM, Thomas Gleixner wrote:
>>> How does userspace know about the driver internals? Number of management
>>> interrupts, optimal number of interrupts per queue?
>>
>> I guess this is the problem solved in part by the queue management work
>> that would make queues a thing that userspace is aware of.
>>
>> Are there drivers which use more than one interrupt per queue? I know
>> drivers have multiple management interrupts.. and I guess some drivers
>> do combined 1 interrupt per pair of Tx/Rx..  It's also plausible to to
>> have multiple queues for one interrupt .. I'm not sure how a single
>> queue with multiple interrupts would work though.
> 
> For block there is always one interrupt per queue. Some Network drivers
> seem to have seperate RX and TX interrupts per queue.
> 
> Thanks,
> 
>         tglx
> 

That's true when thinking of Tx and Rx as a single queue. Another way to
think about it is "one rx queue" and "one tx queue" each with their own
interrupt...

Even if there are devices which force there to be exactly queue pairs,
you could still think of them as separate entities?

Hmm.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
