Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2717844488
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 17:31:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AFE042068;
	Wed, 31 Jan 2024 16:31:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AFE042068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706718713;
	bh=HY7O4Ivr03W4Uj1TTOz7mqC3+DUhT3RjmEHyoZuodOU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ahNrPMBJLPdWsRTbK5/xAtODmCHaoiogH2wU8YUORscJ8Q+7T0XFf2uYlTMqADY15
	 Tg08/upxA+l6f/6JIfgvkwVALUDcGGe7IdZ1OaIQ4f1OGFxHsatDjP0rpkUfwPbKpF
	 vclRREtiDa2a9JhNeYKdiN7AmOikR/ApmndxWK0FTmUGwcmRvTDOcCpvhiadDQwC9T
	 F/VmkxW4dlqW07YbtiEekcVK5h5jv9byRn670dDLOzzVChE8qr1NqFUyJ/Xk/599zW
	 lTBnlfBgO5R/8DBChHWyVW4Pw//8HXSlC43u4qXOfilPfZjCnW1PudUG9fjQ53AGTZ
	 Y3Xa+/1CkXWgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ncUqRmavSxE9; Wed, 31 Jan 2024 16:31:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7791D42049;
	Wed, 31 Jan 2024 16:31:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7791D42049
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 335171BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 16:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 162C542049
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 16:26:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 162C542049
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19JFgl4UaLHM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 16:26:25 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FDFE42048
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 16:26:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FDFE42048
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 44C2BCE21CE;
 Wed, 31 Jan 2024 16:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8315C433F1;
 Wed, 31 Jan 2024 16:26:08 +0000 (UTC)
Date: Wed, 31 Jan 2024 10:26:07 -0600
From: Seth Forshee <sforshee@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <Zbp0n4HTPw/xMtB5@do-x1extreme>
References: <ZbkE7Ep1N1Ou17sA@do-x1extreme>
 <47eea378-6b76-46a7-b70e-52bc61f5e9f0@molgen.mpg.de>
 <Zbkq4cVJ1rEPda8i@do-x1extreme> <ZblN2ABkWPM0gGZB@boxer>
 <Zblyz7ZnA2GXh04k@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zblyz7ZnA2GXh04k@boxer>
X-Mailman-Approved-At: Wed, 31 Jan 2024 16:31:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706718369;
 bh=zoRtSDiRAOvg3fLkrgpTpzQxQNA78gT59a2EWepqBX0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CeRCMUwoMjyw3c2+3D/tDb2VXgmCQgPqusRARJsNsmCBKkprmFp726kMBMOT+fild
 VA90qrCkLQsb6l96gCC0cqju/R+zQTgggR7vzP+Pg84WYsQKInQYvOutu7XcqFdPJG
 QdlybdI6MWo/dJdYNn9jBLCX93o4jAmxHlI20OH1OIj2H65P2OAEqIUkAbeMj+wETM
 CTB3gfqO7HaXqvTvpNc5nnv27rHY3B1pNErq+5VTfyaErebP7FjFYGg7iNHaC7kNvd
 z0gA6WdvBzUN870Fx+B8CinKGLGrRxMUbKv3vXIYLXCH7pPVHLklTXlJn7Au65E5d8
 TzRIPPpJOyYWw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CeRCMUwo
Subject: Re: [Intel-wired-lan] i40e XDP program stops transmitting after
 link down/up
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 30, 2024 at 11:06:07PM +0100, Maciej Fijalkowski wrote:
> On Tue, Jan 30, 2024 at 08:28:24PM +0100, Maciej Fijalkowski wrote:
> > On Tue, Jan 30, 2024 at 10:59:13AM -0600, Seth Forshee wrote:
> > > On Tue, Jan 30, 2024 at 05:14:23PM +0100, Paul Menzel wrote:
> > > > Dear Seth,
> > > > 
> > > > 
> > > > Thank you for bring this up.
> > > > 
> > > > Am 30.01.24 um 15:17 schrieb Seth Forshee:
> > > > > I got a inquiry from a colleague about a behavior he's seeing with i40e
> > > > > but not with other NICs. The interfaces are bonded with a XDP
> > > > > load-balancer program attached to them. After 'ip link set ethX down; ip
> > > > > link set ethX up' on one of the interfaces the XDP program on that
> > > > > interface is no longer transmitting packets. He found that tx starts
> > > > > again after running 'sudo ethtool -t ethX'.
> > > > > 
> > > > > There's a 'i40e 0000:d8:00.1: VSI seid 391 XDP Tx ring 0 disable
> > > > > timeout' message in dmesg when disabling the interface. I've included
> > > > > the relevant portions from dmesg below.
> > > > > 
> > > > > This was first observed with a 6.1 kernel, but we've confirmed that the
> > > > > behavior is the same in 6.7. I realize the firmware is pretty old, so
> > > > > far our attempts to update the NVM have failed.
> > > > 
> > > > Does that mean, the problem didn’t happen before Linux 6.1? If so, if you
> > > > have the reproducer and the time, bisecting the issue is normally the
> > > > fastest way to solve the issue.
> > > 
> > > No, sorry, I should have worded that better. I meant that they were
> > > using 6.1 when they noticed the issue, not that kernels before 6.1 did
> > > not have that issue. We've also tried a 5.15 kernel build now and still
> > > see the issue there, we haven't tested anything older than that.
> > 
> > Hey Seth,
> > 
> > I am observing same thing on my side with xdpsock in txonly mode, so I'll
> > take a look at this and will keep you updated.
> 
> Can you try this diff on your side?

That fixes the problem!

Thanks,
Seth
