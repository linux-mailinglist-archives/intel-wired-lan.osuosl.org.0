Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 653CB29AC7C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Oct 2020 13:51:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1833585D8E;
	Tue, 27 Oct 2020 12:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1C4jEVpKDrJ; Tue, 27 Oct 2020 12:51:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14B8F85D97;
	Tue, 27 Oct 2020 12:51:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A93E01BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 09:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9F793203EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 09:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iMdtD2J2j9QR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Oct 2020 09:56:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 4193E2001F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 09:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603792587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JVIROt4xscPTv2bl+9dBZkGi/KmAAnHZ43ndwfcAS4s=;
 b=bB+jRXhLlnKQCuJbpeOwsBh7oh+8kwGSocAoOAouv7s/xncBsWSuDeg7MNl8euVHHqFMRh
 fUeHc8Jc2hNRpxJp6LIdOPdzTe20C8wxhRg4DFd7qt7qNoqNvqXiHIDWwBBfTfiREdxWae
 4Owm2sYh7m97ZKtNum85/toKt2lax90=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-HcgxRTMQP4aCMXK2g1pL6A-1; Tue, 27 Oct 2020 05:56:23 -0400
X-MC-Unique: HcgxRTMQP4aCMXK2g1pL6A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 883E2100CCFD;
 Tue, 27 Oct 2020 09:56:20 +0000 (UTC)
Received: from fuller.cnet (ovpn-112-2.gru2.redhat.com [10.97.112.2])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B3EC7367E;
 Tue, 27 Oct 2020 09:55:56 +0000 (UTC)
Received: by fuller.cnet (Postfix, from userid 1000)
 id 00636417F242; Mon, 26 Oct 2020 16:11:07 -0300 (-03)
Date: Mon, 26 Oct 2020 16:11:07 -0300
From: Marcelo Tosatti <mtosatti@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20201026191107.GA407524@fuller.cnet>
References: <20201020073055.GY2611@hirez.programming.kicks-ass.net>
 <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
 <20201020134128.GT2628@hirez.programming.kicks-ass.net>
 <6736e643-d4ae-9919-9ae1-a73d5f31463e@redhat.com>
 <260f4191-5b9f-6dc1-9f11-085533ac4f55@redhat.com>
 <20201023085826.GP2611@hirez.programming.kicks-ass.net>
 <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
 <87ft6464jf.fsf@nanos.tec.linutronix.de>
 <20201026173012.GA377978@fuller.cnet>
 <875z6w4xt4.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875z6w4xt4.fsf@nanos.tec.linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mailman-Approved-At: Tue, 27 Oct 2020 12:51:36 +0000
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

On Mon, Oct 26, 2020 at 08:00:39PM +0100, Thomas Gleixner wrote:
> On Mon, Oct 26 2020 at 14:30, Marcelo Tosatti wrote:
> > On Fri, Oct 23, 2020 at 11:00:52PM +0200, Thomas Gleixner wrote:
> >> So without information from the driver which tells what the best number
> >> of interrupts is with a reduced number of CPUs, this cutoff will cause
> >> more problems than it solves. Regressions guaranteed.
> >
> > One might want to move from one interrupt per isolated app core
> > to zero, or vice versa. It seems that "best number of interrupts 
> > is with reduced number of CPUs" information, is therefore in userspace, 
> > not in driver...
> 
> How does userspace know about the driver internals? Number of management
> interrupts, optimal number of interrupts per queue?
> 
> >> Managed interrupts base their interrupt allocation and spreading on
> >> information which is handed in by the individual driver and not on crude
> >> assumptions. They are not imposing restrictions on the use case.
> >> 
> >> It's perfectly fine for isolated work to save a data set to disk after
> >> computation has finished and that just works with the per-cpu I/O queue
> >> which is otherwise completely silent. 
> >
> > Userspace could only change the mask of interrupts which are not 
> > triggered by requests from the local CPU (admin, error, mgmt, etc),
> > to avoid the vector exhaustion problem.
> >
> > However, there is no explicit way for userspace to know that, as far as
> > i know.
> >
> >  130:      34845          0          0          0          0          0          0          0  IR-PCI-MSI 33554433-edge      nvme0q1
> >  131:          0      27062          0          0          0          0          0          0  IR-PCI-MSI 33554434-edge      nvme0q2
> >  132:          0          0      24393          0          0          0          0          0  IR-PCI-MSI 33554435-edge      nvme0q3
> >  133:          0          0          0      24313          0          0          0          0  IR-PCI-MSI 33554436-edge      nvme0q4
> >  134:          0          0          0          0      20608          0          0          0  IR-PCI-MSI 33554437-edge      nvme0q5
> >  135:          0          0          0          0          0      22163          0          0  IR-PCI-MSI 33554438-edge      nvme0q6
> >  136:          0          0          0          0          0          0      23020          0  IR-PCI-MSI 33554439-edge      nvme0q7
> >  137:          0          0          0          0          0          0          0      24285  IR-PCI-MSI 33554440-edge      nvme0q8
> >
> > Can that be retrieved from PCI-MSI information, or drivers
> > have to inform this?
> 
> The driver should use a different name for the admin queues.

Works for me.

Sounds more like a heuristic which can break, so documenting this 
as an "interface" seems appropriate.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
