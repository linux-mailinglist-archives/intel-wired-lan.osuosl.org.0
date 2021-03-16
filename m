Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE02F33DEBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 21:29:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF30A4EBF2;
	Tue, 16 Mar 2021 20:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RekXIH7T0FJ9; Tue, 16 Mar 2021 20:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A19E14EBE6;
	Tue, 16 Mar 2021 20:29:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DB031BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 20:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5BBAE60647
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 20:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WBb8lbo3C1RG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 20:29:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B82F1605DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 20:29:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 139AD64F4F;
 Tue, 16 Mar 2021 20:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615926546;
 bh=TuJaPcwrfUA7TXfbw1a2CWd9tWR8XLxVu8BUD6hKzIY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fX5nm3C5F53SWHQYb5x0e+mhhqgomMtlujkx26zVPy0zsTiy82RqBpz0Pyn4KC41z
 u28pGdh1mD8m+odmDqJe86UL/9ePgNZT82c7Nfvwx8OFm1ik5okJhXvs93x0v2V/ej
 dh4J3gXT4sQO2o/EadirgkPwMm3+B5NijomT/yL2ZaVJnqhVh9eTCJECFRTIwryDDF
 hRo99gv3szUmA0Xhcsth6BiDZbNmnjJs2B2fUelWoxDPayJeAZUXMhCvlzcval82Bj
 Fki4nXM01JVvmh2C3ppQt21Hrr3pYJSGNywsc19ydXTcbmkjq5/ospfNZc5Wdbh85c
 MN4sF4E/Zo4gQ==
Date: Tue, 16 Mar 2021 13:29:05 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <20210316132905.5d0f90dd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <44b3f5f0-93f8-29e2-ab21-5fd7cc14c755@kpanic.de>
References: <20210316100141.53551-1-sassmann@kpanic.de>
 <20210316101443.56b87cf6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <44b3f5f0-93f8-29e2-ab21-5fd7cc14c755@kpanic.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] iavf: fix locking of critical sections
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
Cc: slawomirx.laba@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 16 Mar 2021 18:27:10 +0100 Stefan Assmann wrote:
> On 16.03.21 18:14, Jakub Kicinski wrote:
> > On Tue, 16 Mar 2021 11:01:41 +0100 Stefan Assmann wrote:  
> >> To avoid races between iavf_init_task(), iavf_reset_task(),
> >> iavf_watchdog_task(), iavf_adminq_task() as well as the shutdown and
> >> remove functions more locking is required.
> >> The current protection by __IAVF_IN_CRITICAL_TASK is needed in
> >> additional places.
> >>
> >> - The reset task performs state transitions, therefore needs locking.
> >> - The adminq task acts on replies from the PF in
> >>   iavf_virtchnl_completion() which may alter the states.
> >> - The init task is not only run during probe but also if a VF gets stuck
> >>   to reinitialize it.
> >> - The shutdown function performs a state transition.
> >> - The remove function perorms a state transition and also free's
> >>   resources.
> >>
> >> iavf_lock_timeout() is introduced to avoid waiting infinitely
> >> and cause a deadlock. Rather unlock and print a warning.
> >>
> >> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>  
> > 
> > I personally think that the overuse of flags in Intel drivers brings
> > nothing but trouble. At which point does it make sense to just add a
> > lock / semaphore here rather than open code all this with no clear
> > semantics? No code seems to just test the __IAVF_IN_CRITICAL_TASK flag,
> > all the uses look like poor man's locking at a quick grep. What am I
> > missing?
> 
> I agree with you that the locking could be done with other locking
> mechanisms just as good. I didn't invent the current method so I'll let
> Intel comment on that part, but I'd like to point out that what I'm
> making use of is fixing what is currently in the driver.

Right, I should have made it clear that I don't blame you for the
current state of things. Would you mind sending a patch on top of 
this one to do a conversion to a semaphore? 

Intel folks any opinions?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
