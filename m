Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F242997B5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Oct 2020 21:11:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2456866DD;
	Mon, 26 Oct 2020 20:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z4P20PK5h4T8; Mon, 26 Oct 2020 20:11:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F960866E5;
	Mon, 26 Oct 2020 20:11:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50F7D1BF282
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 20:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2660F2E135
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 20:11:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kGXhgGbW+Xa6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Oct 2020 20:11:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id F31182E11C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Oct 2020 20:11:05 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603743062;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=y+PS6gYDSMvwJoN1FTHRdqvfX6lNIJ+gYdIEt2bNoQ8=;
 b=kdQzswCGzg3Z+6EV7q0nZNMNXJ8qc9zZqXMPiqOeSORB6v2cw6FuaMmBBBt3doPeVr32cL
 3Yc6LqeIgyNTfswN6zM6Aj84d6/Sb2E/hCRNiO2jZt4GEkAoOHzd8BTnn/XkFoJr1WsqKE
 sizuxIbXYyMhe21s0gUlWhv9xlStvpfjpV5bOp/neVVPm7i+Jauf8Pz3jDa0cfiOc8ZYFn
 pisu4H5ia1WUolOQKfrKF7nWkcH5WpR1ub7fhRk2dvExBoucgRUnvdwe9//eYaRIN/KjW7
 cHdP5iVEDTNMYJWdZd2Fy39vXX0oWbq9HDQj5ctUlZR2viB/IAiV+nXli6769g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603743062;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=y+PS6gYDSMvwJoN1FTHRdqvfX6lNIJ+gYdIEt2bNoQ8=;
 b=75kDgynk1PiCyVqyRR1lvYBAb/SvfUPyH4B4xZqU8aMuSg9TGlvtaEz7zktx1sVq92mIKw
 qpgsGbcLl8lpunAQ==
To: Jacob Keller <jacob.e.keller@intel.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
In-Reply-To: <86f8f667-bda6-59c4-91b7-6ba2ef55e3db@intel.com>
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
Date: Mon, 26 Oct 2020 21:11:02 +0100
Message-ID: <87v9ew3fzd.fsf@nanos.tec.linutronix.de>
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 26 2020 at 12:21, Jacob Keller wrote:
> On 10/26/2020 12:00 PM, Thomas Gleixner wrote:
>> How does userspace know about the driver internals? Number of management
>> interrupts, optimal number of interrupts per queue?
>
> I guess this is the problem solved in part by the queue management work
> that would make queues a thing that userspace is aware of.
>
> Are there drivers which use more than one interrupt per queue? I know
> drivers have multiple management interrupts.. and I guess some drivers
> do combined 1 interrupt per pair of Tx/Rx..  It's also plausible to to
> have multiple queues for one interrupt .. I'm not sure how a single
> queue with multiple interrupts would work though.

For block there is always one interrupt per queue. Some Network drivers
seem to have seperate RX and TX interrupts per queue.

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
