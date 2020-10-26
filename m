Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCF1299963
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Oct 2020 23:13:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E925085754;
	Mon, 26 Oct 2020 22:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HWjtkTv_YALp; Mon, 26 Oct 2020 22:13:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEDB48575E;
	Mon, 26 Oct 2020 22:13:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 305991BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 22:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 16A6F2001A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 22:13:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TLikjxmnGoKN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Oct 2020 22:13:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1AE5B20016
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 22:13:09 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B34D2087C;
 Mon, 26 Oct 2020 22:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603750388;
 bh=f0idueNbzqRlhkTogMiypojEnDUyWyo/XNCqE3F7uRE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zTD5e269fz+20uxJBRw/ih6GDFDui1uGorCBESU2VbLxs4uJP90GQ3lEjOIZzihQG
 bnL+RGP3N5gUmohGaWqhvCyI0wuCBCmcs4CA/lsIoOwNsr7feSsl5EGObhl6Z57qyP
 NWxZoJltWIRiL3W1rW/dn9zqbsh0BoLsh6TodsPE=
Date: Mon, 26 Oct 2020 15:13:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20201026151306.4af991a5@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <87lffs3bd6.fsf@nanos.tec.linutronix.de>
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
MIME-Version: 1.0
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
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 26 Oct 2020 22:50:45 +0100 Thomas Gleixner wrote:
> On Mon, Oct 26 2020 at 14:11, Jacob Keller wrote:
> > On 10/26/2020 1:11 PM, Thomas Gleixner wrote:  
> >> On Mon, Oct 26 2020 at 12:21, Jacob Keller wrote:  
> >>> Are there drivers which use more than one interrupt per queue? I know
> >>> drivers have multiple management interrupts.. and I guess some drivers
> >>> do combined 1 interrupt per pair of Tx/Rx..  It's also plausible to to
> >>> have multiple queues for one interrupt .. I'm not sure how a single
> >>> queue with multiple interrupts would work though.  
> >> 
> >> For block there is always one interrupt per queue. Some Network drivers
> >> seem to have seperate RX and TX interrupts per queue.  
> > That's true when thinking of Tx and Rx as a single queue. Another way to
> > think about it is "one rx queue" and "one tx queue" each with their own
> > interrupt...
> >
> > Even if there are devices which force there to be exactly queue pairs,
> > you could still think of them as separate entities?  
> 
> Interesting thought.
> 
> But as Jakub explained networking queues are fundamentally different
> from block queues on the RX side. For block the request issued on queue
> X will raise the complete interrupt on queue X.
> 
> For networking the TX side will raise the TX interrupt on the queue on
> which the packet was queued obviously or should I say hopefully. :)
> 
> But incoming packets will be directed to some receive queue based on a
> hash or whatever crystallball logic the firmware decided to implement.
> 
> Which makes this not really suitable for the managed interrupt and
> spreading approach which is used by block-mq. Hrm...
> 
> But I still think that for curing that isolation stuff we want at least
> some information from the driver. Alternative solution would be to grant
> the allocation of interrupts and queues and have some sysfs knob to shut
> down queues at runtime. If that shutdown results in releasing the queue
> interrupt (via free_irq()) then the vector exhaustion problem goes away.
> 
> Needs more thought and information (for network oblivious folks like
> me).

One piece of information that may be useful is that even tho the RX
packets may be spread semi-randomly the user space can still control
which queues are included in the mechanism. There is an indirection
table in the HW which allows to weigh queues differently, or exclude
selected queues from the spreading. Other mechanisms exist to filter
flows onto specific queues.

IOW just because a core has an queue/interrupt does not mean that
interrupt will ever fire, provided its excluded from RSS.

Another piece is that by default we suggest drivers allocate 8 RX
queues, and online_cpus TX queues. The number of queues can be
independently controlled via ethtool -L. Drivers which can't support
separate queues will default to online_cpus queue pairs, and let
ethtool -L only set the "combined" parameter.

There are drivers which always allocate online_cpus interrupts, 
and then some of them will go unused if #qs < #cpus.


My unpopular opinion is that for networking devices all the heuristics
we may come up with are going to be a dead end. We need an explicit API
to allow users placing queues on cores, and use managed IRQs for data
queues. (I'm assuming that managed IRQs will let us reliably map a MSI-X
vector to a core :))
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
