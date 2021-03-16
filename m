Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A87ED33DA6F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 18:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0038083AD2;
	Tue, 16 Mar 2021 17:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V_wSfiliL4Dv; Tue, 16 Mar 2021 17:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F29FF83BB6;
	Tue, 16 Mar 2021 17:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A84371BF427
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D7D84ECA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 81D7zrtBcA9e for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 17:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0B634EC93
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:14:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B1F565087;
 Tue, 16 Mar 2021 17:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615914884;
 bh=CDcD1dQBr2YIU2/9H6b3fgSvWCMP+J7RvXYb+uxHbnU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y9HRoKOYVyBxyp8v3oNq6vGc4ugf+1ST8l3ZE1inyHrkrtVRnJZTd3Htff9hGDUnw
 2ZHB9v/He710SJABH+YHBfy1sVLLaK7ChvAAWtXVeI3IkJaGItGSkG5ota+7NBdNw7
 f8LY7YFWDpv1LMX7EePMyl5anq5eJviQpRN3tkMmrCZWSawPsHv7pHyQmVBuUdvu2R
 WSvpIFhGaUZzQkdsSy6fOayzU9cD0TnFz/6Kh0MKFTJ1GcJXJDZHMXSqmJJG80GvRq
 8JI0XWr8QsF/eiqg75c4ap4zZM9lzZYEV+WIOVadLQRZEJvdNdgDio5XI70/qO54ya
 ceUsIWyG5uFFw==
Date: Tue, 16 Mar 2021 10:14:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <20210316101443.56b87cf6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210316100141.53551-1-sassmann@kpanic.de>
References: <20210316100141.53551-1-sassmann@kpanic.de>
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

On Tue, 16 Mar 2021 11:01:41 +0100 Stefan Assmann wrote:
> To avoid races between iavf_init_task(), iavf_reset_task(),
> iavf_watchdog_task(), iavf_adminq_task() as well as the shutdown and
> remove functions more locking is required.
> The current protection by __IAVF_IN_CRITICAL_TASK is needed in
> additional places.
> 
> - The reset task performs state transitions, therefore needs locking.
> - The adminq task acts on replies from the PF in
>   iavf_virtchnl_completion() which may alter the states.
> - The init task is not only run during probe but also if a VF gets stuck
>   to reinitialize it.
> - The shutdown function performs a state transition.
> - The remove function perorms a state transition and also free's
>   resources.
> 
> iavf_lock_timeout() is introduced to avoid waiting infinitely
> and cause a deadlock. Rather unlock and print a warning.
> 
> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>

I personally think that the overuse of flags in Intel drivers brings
nothing but trouble. At which point does it make sense to just add a
lock / semaphore here rather than open code all this with no clear
semantics? No code seems to just test the __IAVF_IN_CRITICAL_TASK flag,
all the uses look like poor man's locking at a quick grep. What am I
missing?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
