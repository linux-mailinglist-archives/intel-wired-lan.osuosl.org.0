Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1BC45D262
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Nov 2021 02:13:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A6CD4036D;
	Thu, 25 Nov 2021 01:13:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jj3T4Vjn3Ar8; Thu, 25 Nov 2021 01:13:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22D1640155;
	Thu, 25 Nov 2021 01:13:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63D5F1BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 01:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F4B880B6F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 01:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6FmnWefrl46j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 01:13:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8E7680B5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 01:13:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1AF2061074;
 Thu, 25 Nov 2021 01:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637802808;
 bh=1rYrjs40FlZEXnBlGyjhcetuGKPTUA/WuwDvZB6ibNI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mV/B5NbT1EpFTxOOAGMqQx+QhG5uB5oyKxWgXp3aefZhE90+iwXW5Duzjig1/KoP2
 pCby5eAbRoTdRmvJIVm944bc0OqGI4qGIaVSAsfqas0chtD13jQjWDbv96CZFZ79/U
 2qAS7fwMr2rP5R8qT6c4gPk3bzdyddoKE2rn7yjuGXKQGnzL+BayX33Wq/JR2Ztu3Z
 LnvPfs6JDBvgHCbIxAD4ybnWwbIss6VAr4Ntrp6QR+KC2nstEaMHRmFbR9H09b1neF
 56Rojtg2YLNa2/8o+J0svM7uWNajsRnwHAsbe5rA6wkiZGWISac7ljs1CZDHyFjI9F
 jpGFv+QpRp6MQ==
Date: Wed, 24 Nov 2021 17:13:27 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20211124171327.089e3cda@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <87a6htm4aj.fsf@intel.com>
References: <924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de>
 <YZ3q4OKhU2EPPttE@kroah.com>
 <8119066974f099aa11f08a4dad3653ac0ba32cd6.camel@gmx.de>
 <20211124153449.72c9cfcd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87a6htm4aj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [REGRESSION] Kernel 5.15 reboots / freezes
 upon ifup/ifdown
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
Cc: regressions@lists.linux.dev, Greg KH <greg@kroah.com>,
 stable@vger.kernel.org, Stefan Dietrich <roots@gmx.de>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 24 Nov 2021 17:07:16 -0800 Vinicius Costa Gomes wrote:
> Hi Stefan,
> 
> Jakub Kicinski <kuba@kernel.org> writes:
> 
> > On Wed, 24 Nov 2021 18:20:40 +0100 Stefan Dietrich wrote:  
> >> Hi all,
> >> 
> >> six exciting hours and a lot of learning later, here it is.
> >> Symptomatically, the critical commit appears for me between 5.14.21-
> >> 051421-generic and 5.15.0-051500rc2-generic - I did not find an amd64
> >> build for rc1.
> >> 
> >> Please see the git-bisect output below and let me know how I may
> >> further assist in debugging!  
> >
> > Well, let's CC those involved, shall we? :)
> >
> > Thanks for working thru the bisection!
> >  
> >> a90ec84837325df4b9a6798c2cc0df202b5680bd is the first bad commit
> >> commit a90ec84837325df4b9a6798c2cc0df202b5680bd
> >> Author: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> >> Date:   Mon Jul 26 20:36:57 2021 -0700
> >> 
> >>     igc: Add support for PTP getcrosststamp()  
> 
> Oh! That's interesting.
> 
> Can you try disabling CONFIG_PCIE_PTM in your kernel config? If it
> works, then it's a point in favor that this commit is indeed the
> problematic one.
> 
> I am still trying to think of what could be causing the lockup you are
> seeing.

Actually we just had another report pointing at commit f32a21376573
("ethtool: runtime-resume netdev parent before ethtool ioctl ops").
That seems more likely :(
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
