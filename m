Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 721BE372536
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 May 2021 06:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C97814066A;
	Tue,  4 May 2021 04:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5a-CqOZJGPOT; Tue,  4 May 2021 04:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6DDF40650;
	Tue,  4 May 2021 04:44:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C8D531BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 04:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B60B140650
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 04:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MvCuNgU7g3Be for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 May 2021 04:44:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com
 [64.147.123.26])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DEF104064F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 04:43:58 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.west.internal (Postfix) with ESMTP id E7FCF1B0E;
 Tue,  4 May 2021 00:43:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 04 May 2021 00:43:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=myMLMhEQ7RWnOdFkGtWzXDzHzlP
 xU9Etz1COB68N1NQ=; b=EyUO8kOvWIuRt0hXZjWg55qFjOgTXJFkqPYpTmkp03u
 yWYzGkpdCeJXznx+Zn56OfS7MDAwBbYDVtCmt8/YPXmjDiclgB8zmPwKRc+61/sb
 JkwQFeYxDFSaSnSdayoixZuHdc2GQVuL3opfTP9XV+cyDWfRbMHgi7V5HFgOrEa9
 D5dIeZd3IM1ccG3Dunb41tnqHmz657qSAwwqtRwmiCu/LjRBjmykPBywFAYtKX7J
 H29Q6ccgzKaisbvNfMpvn7xNF9MgIZ2c2zm92YA2m2WP+QT1NmWoLgVXBYH6tqWm
 JDIVtC5Qzl+SKKYJybkPbhy0B0fZDkchm0nz5yn4enA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=myMLMh
 EQ7RWnOdFkGtWzXDzHzlPxU9Etz1COB68N1NQ=; b=uoOAoKFKj7QeFC//AfdsV1
 aT9WAw4hdqKZevZSubuskVW0CGbEAW/hdQ0WC9ZcYtAeJuxZryHyTgl8ImiKlTrQ
 B1acpc2UvKOBFrt1ND8yiqxt8xRSx1/7tJgd8CGrEo6BAL05djgK+cIpfcHoa5Dt
 0N1ohpHztrG7VXOHmCW4eXkTge/6x+0Nor6i2vkHxRoZV3ySqhMfz8bU6NNwSoNC
 r1d6Etlmm+9132aHNJfBMdHlLcZCzER138tHC3kanHMgzKd+t5o5xp9s0Y4P3mxe
 2w6A8TB4bgE1dLRQHjJ6wvDbVMPuIrUyx3bM70RqOjaB+obZHJAn/ItMs/V+Smgg
 ==
X-ME-Sender: <xms:C9GQYCrhAVk7oxVJzGxoJAQmY34_pz1npKcPlmYiFVKsueTt7JiRJw>
 <xme:C9GQYAq3xtx_oTTUgII5hEDH5wG5f3GX7xus765rqlMd5hA1sGwMdYBtZpgkImMs4
 s554TRqgfAq9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdefhedgkeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
 fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucfkphepkeef
 rdekiedrjeegrdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:C9GQYHNDp-lGLxDKa8am9wxh6dcvs7bw9QHWtPrQvpCRxdWDYrQNkw>
 <xmx:C9GQYB52uO8x2K9rXXG4aNDcmtYZKfFMAk85s7EUURaG97y-C62UCA>
 <xmx:C9GQYB4Dle9cEHVD38YwgNWHzMB_tIG1STRM-13Mqi9pRJXlhlutTQ>
 <xmx:DNGQYAK1cBnmymMmFDa-9A6b12dhm2eFkKdykbzKKXsdZNETIkzLCKmoJeE>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Tue,  4 May 2021 00:43:55 -0400 (EDT)
Date: Tue, 4 May 2021 06:43:53 +0200
From: Greg KH <greg@kroah.com>
To: Nick Lowe <nick.lowe@gmail.com>
Message-ID: <YJDRCSRHSqu0yE7T@kroah.com>
References: <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
 <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <69e92a09-d597-2385-2391-fee100464c59@bluematt.me>
 <CADSoG1vn-T3ZL0uZSR-=TnGDdcqYDXjuAxqPaHb0HjKYSuQwXg@mail.gmail.com>
 <20210201123350.159feabd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CADSoG1sf9zXj9CQfJ3kQ1_CUapmZDa6ZeKtbspUsm34c7TSKqw@mail.gmail.com>
 <20210503113010.774e4ca6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CADSoG1stdPVOE2N0dg10T6tgTUN1nqafY_m+K1CLwB6z2Y9j5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADSoG1stdPVOE2N0dg10T6tgTUN1nqafY_m+K1CLwB6z2Y9j5Q@mail.gmail.com>
Subject: Re: [Intel-wired-lan] Stable inclusion request - igb: Enable RSS
 for Intel I211 Ethernet Controller
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
Cc: netdev@vger.kernel.org, stable@vger.kernel.org,
 Matt Corallo <linux-wired-list@bluematt.me>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 03, 2021 at 08:53:48PM +0100, Nick Lowe wrote:
> Hi,
> 
> Please may we request that commit 6e6026f2dd20 ("igb: Enable RSS for
> Intel I211 Ethernet Controller") be backported to the 5.4 and 5.10 LTS
> kernels?
>

Also added to 5.11 as it's still alive for another week or so :)

thanks,

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
