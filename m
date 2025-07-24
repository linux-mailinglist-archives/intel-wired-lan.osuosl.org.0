Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6611B10567
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 11:14:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E6B94127F;
	Thu, 24 Jul 2025 09:14:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8pxXeMeeYf1Y; Thu, 24 Jul 2025 09:14:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61A7F41280
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753348449;
	bh=MWCblgyqYR6q/QNoyXJQIbRxFBTweC/0tUB3V+uiR9o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=exqlwn//T0fXsJJWin8gq7b7rH79uEACvZk+kUrBKtjtQ3ogsfDawXE7r9PXtOYig
	 Ihldn940MzhsoHXWlhYKRnmJb3qBfRT3ydJLLNLi/hD+K0i7w9Yk/rn5PmBPOqSTwN
	 iuL0hRLd++1mlSh4onNfmAZ0vACB0Ly/NxQrDXsLNLdDPZ041pt5/f3mJchqFguzO8
	 dBc4E1MLQyqy8I2k6XWNzw6gPDpfNJcsH7w9tml/99RCvEUAeJIqH6dzGRQV4aUz3S
	 Y21TQl5xB3IJ81y3tjajYVRNpG/u5P+sRcm0ZbTo4w6rHNN/eYWc6gCemZskykgHyq
	 7OxL4BvbBnS/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61A7F41280;
	Thu, 24 Jul 2025 09:14:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 684E4115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 09:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A015401C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 09:14:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DaqEKfNVbtYL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 09:14:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 69ACE403E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69ACE403E7
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69ACE403E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 09:14:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id F02555C624E;
 Thu, 24 Jul 2025 09:14:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D23DCC4CEED;
 Thu, 24 Jul 2025 09:14:04 +0000 (UTC)
Date: Thu, 24 Jul 2025 10:14:02 +0100
From: Simon Horman <horms@kernel.org>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250724091402.GH1150792@horms.kernel.org>
References: <20250718002150.2724409-1-joshua.a.hay@intel.com>
 <20250723150835.GF1036606@horms.kernel.org>
 <DM4PR11MB6502F4622507B81F56DFFC65D45EA@DM4PR11MB6502.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM4PR11MB6502F4622507B81F56DFFC65D45EA@DM4PR11MB6502.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753348445;
 bh=0aWfHkSFO138/lUy44VYtrGkDTHvcLii7yoLMp/1Mpk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Sb/l33edbGZHf7SoDHDnCerGz9oL4N0UxC6dV4kIbmXikrYDrXrJoDBDK4gTPcSmu
 ypOMKRRn02j5vi3CQU5kUEKiS6209K7sJBxVT/13bQkaq1ykZPdYpkp7RjMlzWYKON
 BHkbgU024SbvqE38oDkR07b57hhfUweh+JYXSwCjNMEkapLQfR4FBp2bpGy+5oGNEs
 TPjnpDZ+3xytU98hTZGH80TQFJN9cq3UXqvmv+vyDlzz9bNn+bOoLvBi76ECXK0dbN
 UCIWYj0ct3J2jdBc0tvZfmj/is8Em+dtmMtLaw1jlytZtd/vw8+EBlr9eZardelr0A
 QQAzJc8TvsI3Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Sb/l33ed
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/6] idpf: replace Tx flow
 scheduling buffer ring with buffer pool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 24, 2025 at 12:03:33AM +0000, Hay, Joshua A wrote:
> > On Thu, Jul 17, 2025 at 05:21:44PM -0700, Joshua Hay wrote:
> > > This series fixes a stability issue in the flow scheduling Tx send/clean
> > > path that results in a Tx timeout.
> > >
> > > The existing guardrails in the Tx path were not sufficient to prevent
> > > the driver from reusing completion tags that were still in flight (held
> > > by the HW).  This collision would cause the driver to erroneously clean
> > > the wrong packet thus leaving the descriptor ring in a bad state.
> > >
> > > The main point of this refactor is to replace the flow scheduling buffer
> > > ring with a large pool/array of buffers.  The completion tag then simply
> > > is the index into this array.  The driver tracks the free tags and pulls
> > > the next free one from a refillq.  The cleaning routines simply use the
> > > completion tag from the completion descriptor to index into the array to
> > > quickly find the buffers to clean.
> > >
> > > All of the code to support the refactor is added first to ensure traffic
> > > still passes with each patch.  The final patch then removes all of the
> > > obsolete stashing code.
> > >
> > > ---
> > > v2:
> > > - Add a new patch "idpf: simplify and fix splitq Tx packet rollback
> > >   error path" that fixes a bug in the error path. It also sets up
> > >   changes in patch 4 that are necessary to prevent a crash when a packet
> > >   rollback occurs using the buffer pool.
> > >
> > > v1:
> > > https://lore.kernel.org/intel-wired-lan/c6444d15-bc20-41a8-9230-
> > 9bb266cb2ac6@molgen.mpg.de/T/#maf9f464c598951ee860e5dd24ef8a45
> > 1a488c5a0
> > >
> > > Joshua Hay (6):
> > >   idpf: add support for Tx refillqs in flow scheduling mode
> > >   idpf: improve when to set RE bit logic
> > >   idpf: simplify and fix splitq Tx packet rollback error path
> > >   idpf: replace flow scheduling buffer ring with buffer pool
> > >   idpf: stop Tx if there are insufficient buffer resources
> > >   idpf: remove obsolete stashing code
> > >
> > >  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  61 +-
> > >  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 723 +++++++-----------
> > >  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  87 +--
> > >  3 files changed, 356 insertions(+), 515 deletions(-)
> > 
> > Hi Joshua, all,
> > 
> > Perhaps it is not followed much anymore, but at least according to [1]
> > patches for stable should not be more than 100 lines, with context.
> > 
> > This patch-set is an order of magnitude larger.
> > Can something be done to create a more minimal fix?
> > 
> > [1] https://docs.kernel.org/process/stable-kernel-rules.html#stable-kernel-
> > rules
> 
> Hi Simon,
> 
> It will be quite difficult to make this series smaller without any negative side effects. Here's a summary of why certain patches are necessary or where deferrals are possible (and the side effects):
> 
> "idpf: add support for Tx refillqs in flow scheduling mode" is required to keep the Tx path lockless. Otherwise, we would have to use locking in hot path to pass the tags freed in the cleaning thread back to whatever data struct the sending thread pulls the tags from.
> 
> Without "idpf: improve when to set RE bit logic", the driver will be much more susceptible to Tx timeouts when sending large packets.
> 
> "idpf: simplify and fix splitq Tx packet rollback error path" is a must to setup for the new buffer chaining. The previous implementation rolled back based on ring indexing, which will crash the system if a dma_mapping_error occurs or we run out of tags (more on that below). The buffer tags (indexes) pulled for a packet are not guaranteed to be contiguous, especially as out-of-order completions are processed. 
> 
> "idpf: stop Tx if there are insufficient buffer resources" could possibly be deferred, but that makes the rollback change above even more critical as we lose an extra layer of protection from running out of tags. It's also one of the smaller patches and won't make a significant difference in terms of size.
> 
> "idpf: remove obsolete stashing code" could also potentially be deferred but is 95% removing obsolete code, which leaves a lot of dead code.

Thanks Joshua,

if there is justification, which is indeed the case,
then I withdraw my suggestion to create a smaller fix.
