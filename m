Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C949422FD4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 20:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEA4E407B0;
	Tue,  5 Oct 2021 18:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aE77bnIURTWQ; Tue,  5 Oct 2021 18:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B30DA407AB;
	Tue,  5 Oct 2021 18:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 668BF1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 18:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 624BB4077C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 18:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qtjtgEIeakhQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 18:20:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from chris.i8u.org (mail.i8u.org [75.148.87.25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F08234077B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 18:20:28 +0000 (UTC)
Received: by chris.i8u.org (Postfix, from userid 1000)
 id 49BFA16C959B; Tue,  5 Oct 2021 11:20:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by chris.i8u.org (Postfix) with ESMTP id 4912216C92CD;
 Tue,  5 Oct 2021 11:20:28 -0700 (PDT)
Date: Tue, 5 Oct 2021 11:20:28 -0700 (PDT)
From: Hisashi T Fujinaka <htodd@twofifty.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <b56c4c30-d393-96fb-182c-726a60a39eed@molgen.mpg.de>
Message-ID: <3db85012-3e16-ca2d-5742-d9ecd45eba7e@twofifty.com>
References: <1823864.tdWV9SEqCh@kailua>
 <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
 <4111f2b7-cbac-3451-593f-a154aca65263@intel.com>
 <b56c4c30-d393-96fb-182c-726a60a39eed@molgen.mpg.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Intel I350 regression 5.10 -> 5.14 ("The NVM
 Checksum Is Not Valid") [8086:1521]
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
Cc: Jakub Kicinski <kubakici@wp.pl>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 5 Oct 2021, Paul Menzel wrote:

> Linux has a no-regression policy, meaning when userspace/hardware with an 
> older Linux kernel worked than it *has to* work with a new version too. So 
> besides fixing the firmware/system, it?s as important to find the commit 
> introducing the regression and fix it.

I think you're looking at the wrong driver. igb is fairly stable and we
haven't been poking at it much. Most of the changes have been from the
community. Sasha is commiting to igc, not igb.

In any case, we don't have the hardware (motherboard or NIC) and any
bisection will have to be done by the issue submitter.

Todd Fujinaka todd.fujinaka@intel.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
