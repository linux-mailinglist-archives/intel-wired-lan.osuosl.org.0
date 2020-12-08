Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E751E2D1F55
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 01:48:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DC7B87AD4;
	Tue,  8 Dec 2020 00:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CknO2yUIel09; Tue,  8 Dec 2020 00:48:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97B838737F;
	Tue,  8 Dec 2020 00:48:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C20E1BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:48:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2234C87215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:48:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BxRjEbwJUGuP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 00:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9337B87106
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:48:55 +0000 (UTC)
Date: Mon, 7 Dec 2020 16:48:53 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607388535;
 bh=htsTeV3zedFCZxoCo2phmUriPMTJAlxp2xgDZunwAVI=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=N8+55HRwTeoX4+69LPzZKGOMlWQK4TvAN7YJB2l4PSLX9KyKp9pOTgIbzDnbyA6sT
 SItu0egVseYwjxbIuedkEFxgbnGw3azyBLYjugMB2bvaqYVVk3ZqSQbUppVmFQPqwD
 AfgATpRPKhvqFjN1sEPLCQ+IRh7DAEq9fSD4cdU54okKCCD/UfnuyEASuN515ODFBS
 hcpOmNRMjGe8jMumOOPzlMrVEEPMulw/1pY6AfZQnqq40PJAMx7YYV1Rm9n0khXhjl
 TushGZr5H1hKK7qNkNSH/e3cVDpMXDKgNOXRp+6/Y9fI4Uu89DsCCc2C1fZs/JMaPl
 rWD80gwt+/aDg==
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20201207164853.3a9e6024@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201208002730.kftox7xvr7d475rp@skbuf>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-2-vinicius.gomes@intel.com>
 <20201205094325.790b187f@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87eek11d23.fsf@intel.com>
 <20201207152126.6f3d1808@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87blf5ywkd.fsf@intel.com> <20201208002730.kftox7xvr7d475rp@skbuf>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/9] ethtool: Add support
 for configuring frame preemption
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "m-karicheri2@ti.com" <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 8 Dec 2020 00:27:31 +0000 Vladimir Oltean wrote:
> On Mon, Dec 07, 2020 at 04:24:02PM -0800, Vinicius Costa Gomes wrote:
> > Jakub Kicinski <kuba@kernel.org> writes:
> >  
> > > On Mon, 07 Dec 2020 14:11:48 -0800 Vinicius Costa Gomes wrote:  
> > >> Jakub Kicinski <kuba@kernel.org> writes:  
> > >> >> + * @min_frag_size_mult: Minimum size for all non-final fragment size,
> > >> >> + * expressed in terms of X in '(1 + X)*64 + 4'  
> > >> >
> > >> > Is this way of expressing the min frag size from the standard?
> > >> >  
> > >>
> > >> The standard has this: "A 2-bit integer value indicating, in units of 64
> > >> octets, the minimum number of octets over 64 octets required in
> > >> non-final fragments by the receiver" from IEEE 802.3br-2016, Table
> > >> 79-7a.  
> > >
> > > Thanks! Let's drop the _mult suffix and add a mention of this
> > > controlling the addFragSize variable from the standard. Perhaps
> > > it should in fact be called add_frag_size (with an explanation
> > > that the "additional" means "above the 64B" which are required in
> > > Ethernet, and which are accounted for by the "1" in the 1 + X
> > > formula)?  
> >
> > Sounds good :-) Will add a comment with the standard reference and
> > change the name to 'add_frag_size'.  
> 
> I think you should be making references to the IEEE 802.3-2018, that
> will age better, and a lot more people have that handy.
> I believe the go-to definition for the additional fragment size can be
> found in clause 30.12.2.1.37 aLldpXdot3LocAddFragSize.

That's the LLDP incarnation of it. The variable is defined in:

99.4.7.3 Variables

Probably better mention 30.14.1.7 aMACMergeAddFragSize if we want a MIB
reference.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
