Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F603FC991
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 16:18:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08D0540486;
	Tue, 31 Aug 2021 14:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNJdEQp15KlO; Tue, 31 Aug 2021 14:18:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2A2340221;
	Tue, 31 Aug 2021 14:18:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1106A1BF32C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 14:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C9D380F20
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 14:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VhTvRXy78Q-I for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 14:18:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8564E80F19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 14:18:03 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CF5A060E98;
 Tue, 31 Aug 2021 14:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630419483;
 bh=16No4/WXmYSaZayhxCmNxyBwKKmbtjKVe/w00sxst3w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KrIm+5/4nhCnMKoj/FNgR8NyXM0zfJXxBfQw3OKmzvRafWpRv/2zahLTLGJBvhE05
 UMx0dftI/94QEQYxrwPj8t1d60EQ+3lr6nzpEaemTea6NvvdJItbEkPKK8z6/YXd/r
 CsFs4JeS2gl6Wyic4DEJ1xFU4aAzs3aP05YjteEi252H9EgXS4Rb8B2EkxX6NQesXa
 4M1WX8NcAKe6fW6Vu+9dEmPDo6f+1UiG2HTWELgyKB2cCVYbG43+kh44QHKAoz9qSE
 XxxALhqau8DAHfGf8mEtEObU4Ilt8dZbK8ruqjZCo8yiOZC8aaXcIatqAtLCNLiWhN
 bYcFBn87gmVKA==
Date: Tue, 31 Aug 2021 07:18:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210831071801.0535c0cf@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <SJ0PR11MB49583C74616AC7E715C6E3A9EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
 <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <SJ0PR11MB4958029CF18F93846B29F685EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
 <20210831063304.4bcacbe3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <SJ0PR11MB49583C74616AC7E715C6E3A9EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: Jonathan Lemon <bsd@fb.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 31 Aug 2021 14:07:32 +0000 Machnikowski, Maciej wrote:
> > > I agree that this also is useful for Time card, yet it's also useful here.
> > > PTP subsystem should implement a similar logic to this one for
> > > DPLL-driven timers which can lock its frequency to external sources.  
> > 
> > Why would we have two APIs for doing the same thing? IIUC Richard does
> > not want this in the PTP ioctls which is fair, but we need to cater to devices
> > which do not have netdevs.  
> 
> From technical point of view - it can be explained by the fact that the DPLL
> driving the SyncE logic can be separate from the one driving PTP.  Also
> SyncE is frequency-only oriented and doesn't care about phase and
> Time of Day that PTP also needs. The GNSS lock on the PTP side will be
> multi-layered, as the full lock would mean that our PTP clock is not only
> syntonized, but also has its time and phase set correctly.

Just because GNSS lock addresses more parameters (potentially) doesn't
mean the syntonization part shouldn't be addressed by the same API.

> A PTP can reuse the "physical" part of this interface later on, but it also needs
> to solve more SW-specific challenges, like reporting the PTP lock on a SW level.
> 
> I agree that having such API for PTP subsystem will be very useful,
> but let's address SyncE in netdev first and build the PTP netlink on top of what
> we learn here. We can always move the structures defined here to the layer
> above without affecting any APIs.

It's a reasonable SW design strategy to start simple. Unfortunately, 
it doesn't apply to stable uAPI design. You're adding a RTNL op, which
will have to be supported for ever. If we add anything "later" it will
be a strict addition, and will have to be backward compatible. Which
I'm not sure how to do when the object we'd operate on would be
completely different (clock vs netdev).

As I said I can write the boilerplate code for you if you prefer, the
code implementing the command and the driver interface will be almost
identical.

Is there a reason why RTNL is better?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
