Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45711413613
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 17:22:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C591181A23;
	Tue, 21 Sep 2021 15:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 79wjcb9SWmPe; Tue, 21 Sep 2021 15:22:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8383282894;
	Tue, 21 Sep 2021 15:22:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 573F21BF228
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 14:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40BB840145
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 14:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pA74ey8jDYur for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Sep 2021 14:58:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7A1B40102
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 14:58:15 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id D4F7E320206D;
 Tue, 21 Sep 2021 10:58:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 21 Sep 2021 10:58:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=KZuaBl
 egpZxrGOGjpqS/zX1ucSsSnWc4YVGlN/BrIWM=; b=JYCZDZYKxSwrWU+k2+2nY0
 YRTjvElQBszX9Qm8a8UZY71PG0yFOUK3Fr4lBgXlEHu9nuXPZIh8nrWZoWTwhHXE
 bY2eFEgMJd5XP45Rk4pzGJhnVGpUA4lBC03hz9EeXFHQoY8JxBqDv5elgu8yipyF
 mOrNeEwLHLUVaQLoFWHKzE0fQbybxTqFl3CFmKXK0+3XLh+RKY7aJ9suA7Hy0bG4
 fu0iXNWA9HiX5TIiXTq93N2hr7fh9VidBQdHmfBuGpwKYH8Mq+LCjs6FGwveRpo5
 DTqh4HkjdmLYU7hH0uBlbMIDpQw0o2n8BtKvSBuEfFthPd81B85xdApzP2Aku6IA
 ==
X-ME-Sender: <xms:AfNJYTg4nIBlpLqlDgCc2r29dlitU7FCqmCDSB85hWGjBs7adYow9g>
 <xme:AfNJYQBcnMgo2JUGVK8sysNiPlQaNQrGKx82YvFtY2w7bJT50-1zSbuWMwPFV4_W2
 0JAibyvaLY1dHA>
X-ME-Received: <xmr:AfNJYTGEm6yda2njY-dKd1KIN16HryHYm_N0c9bNUf-1oZ7NQyy49Noq-TudjYcyOsQNSZ2Vs0G_R8CaTAAKMC4erKj_1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeigedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpeduveetjeegkeevtdffudethedvveejjeeuueekueeitdefvdfhhfelgfehveef
 hfenucffohhmrghinheprhgvnhgvshgrshdrtghomhenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:AfNJYQS7Ctffl2-5_tC1IcSges4-IrjAJThbPT3OgBRXn79_DDSH4A>
 <xmx:AfNJYQz9ik9FVmD9l9BUiblpqqed47_nYQm-kNiq5068VH0DmcebSA>
 <xmx:AfNJYW4ife3lNGYdkgkCGdrE4sHPskIGv5THq5Be5puP9ma2P6d8gw>
 <xmx:AvNJYXkb6AT1960SS9S5DrFnuwWZ_VdQKlUYXFMrk4Ai8phAfXvC5Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Sep 2021 10:58:08 -0400 (EDT)
Date: Tue, 21 Sep 2021 17:58:05 +0300
From: Ido Schimmel <idosch@idosch.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <YUny/edqnbdTFnBS@shredder>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
 <YUnbCzBOPP9hWQ5c@shredder>
 <PH0PR11MB4951E98FCEC0F1EA230BA1DAEAA19@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB4951E98FCEC0F1EA230BA1DAEAA19@PH0PR11MB4951.namprd11.prod.outlook.com>
X-Mailman-Approved-At: Tue, 21 Sep 2021 15:22:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 21, 2021 at 01:37:37PM +0000, Machnikowski, Maciej wrote:
> > -----Original Message-----
> > From: Ido Schimmel <idosch@idosch.org>
> > Sent: Tuesday, September 21, 2021 3:16 PM
> > To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> > Subject: Re: [PATCH net-next 1/2] rtnetlink: Add new RTM_GETEECSTATE
> > message to get SyncE status
> > 
> > On Fri, Sep 03, 2021 at 05:14:35PM +0200, Maciej Machnikowski wrote:
> > > diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> > > index eebd3894fe89..78a8a5af8cd8 100644
> > > --- a/include/uapi/linux/if_link.h
> > > +++ b/include/uapi/linux/if_link.h
> > > @@ -1273,4 +1273,35 @@ enum {
> > >
> > >  #define IFLA_MCTP_MAX (__IFLA_MCTP_MAX - 1)
> > >
> > > +/* SyncE section */
> > > +
> > > +enum if_eec_state {
> > > +	IF_EEC_STATE_INVALID = 0,
> > > +	IF_EEC_STATE_FREERUN,
> > > +	IF_EEC_STATE_LOCKACQ,
> > > +	IF_EEC_STATE_LOCKREC,
> > > +	IF_EEC_STATE_LOCKED,
> > > +	IF_EEC_STATE_HOLDOVER,
> > > +	IF_EEC_STATE_OPEN_LOOP,
> > > +	__IF_EEC_STATE_MAX,
> > 
> > Can you document these states? I'm not clear on what LOCKACQ, LOCKREC
> > and OPEN_LOOP mean. I also don't see ice using them and it's not really
> > a good practice to add new uAPI without any current users.
> > 
> 
> I'll fix that enum to use generic states defined in G.781 which are limited to:
> - Freerun
> - LockedACQ (locked, acquiring holdover memory)
> - Locked (locked with holdover acquired)
> - Holdover

Thanks, it is good to conform to a standard.

Can ice distinguish between LockedACQ and Locked? From G.781 I
understand that the former is a transient state. Is the distinction
between the two important for user space / the selection operation? If
not, maybe we only need Locked?

> 
> > From v1 I understand that these states were copied from commit
> > 797d3186544f ("ptp: ptp_clockmatrix: Add wait_for_sys_apll_dpll_lock.")
> > from Renesas.
> > 
> > Figure 11 in the following PDF describes the states, but it seems
> > specific to the particular device and probably shouldn't be exposed to
> > user space as-is:
> > https://www.renesas.com/us/en/document/dst/8a34041-datasheet
> > 
> > I have a few questions about this being a per-netdev attribute:
> > 
> > 1. My understanding is that in the multi-port adapter you are working
> > with you have a single EEC that is used to set the Tx frequency of all
> > the ports. Is that correct?
> 
> That's correct.
>  
> > 2. Assuming the above is correct, is it possible that one port is in
> > LOCKED state and another (for some reason) is in HOLDOVER state? If yes,
> > then I agree about this being a per-netdev attribute. The interface can
> > also be extended with another attribute specifying the HOLDOVER reason.
> > For example, netdev being down.
> 
> All ports driven by a single EEC will report the same state.

So maybe we just need to report via ethtool the association between the
EEC and the netdev and expose the state as an attribute of the EEC
(along with the selected source and other info)?

This is similar to how PHC/netdev association is queried via ethtool.
For a given netdev, TSINFO_GET will report the PTP hw clock index via
ETHTOOL_A_TSINFO_PHC_INDEX. See Documentation/networking/ethtool-netlink.rst

> 
> > Regardless, I agree with previous comments made about this belonging in
> > ethtool rather than rtnetlink.
> 
> Will take a look at it - as it will require support in linuxptp as well.
> 
> > > +};
> > > +
> > > +#define IF_EEC_STATE_MAX	(__IF_EEC_STATE_MAX - 1)
> > > +#define EEC_SRC_PORT		(1 << 0) /* recovered clock from the
> > port is
> > > +					  * currently the source for the EEC
> > > +					  */
> > 
> > I'm not sure about this one. If we are going to expose this as a
> > per-netdev attribute (see more below), any reason it can't be added as
> > another state (e.g., IF_EEC_STATE_LOCKED_SRC)?
> 
> OK! That's a great idea! Yet we'll need LOCKED_SRC and LOCKED_ACQ_SRC,
> but still sounds good.
> 
> > IIUC, in the common case of a simple NE the source of the EEC is always
> > one of the ports, but in the case of a PRC the source is most likely
> > external (e.g., GPS).
> 
> True
> 
> > If so, I think we need a way to represent the EEC as a separate object
> > with the ability to set its source and report it via the same interface.
> > I'm unclear on how exactly an external source looks like, but for the
> > netdev case maybe something like this:
> > 
> > devlink clock show [ dev clock CLOCK ]
> > devlink clock set DEV clock CLOCK [ { src_type SRC_TYPE } ]
> > SRC_TYPE : = { port DEV/PORT_INDEX }
> 
> Unfortunately, EEC lives in 2 worlds - it belongs to a netdev (in very simple
> deployments the EEC may be a part of the PHY and only allow synchronizing
> the TX frequency to a single lane/port), but also can go outside of netdev
> and be a boar-wise frequency source.
> 
> > The only source type above is 'port' with the ability to set the
> > relevant port, but more can be added. Obviously, 'devlink clock show'
> > will give you the current source in addition to other information such
> > as frequency difference with respect to the input frequency.
> 
> We considered devlink interface for configuring the clock/DPLL, but a
> new concept was born at the list to add a DPLL subsystem that will
> cover more use cases, like a TimeCard.

The reason I suggested devlink is that it is suited for device-wide
configuration and it is already used by both MAC drivers and the
TimeCard driver. If we have a good reason to create a new generic
netlink family for this stuff, then OK.

> 
> > Finally, can you share more info about the relation to the PHC? My
> > understanding is that one of the primary use cases for SyncE is to drive
> > all the PHCs in the network using the same frequency. How do you imagine
> > this configuration is going to look like? Can the above interface be
> > extended for that?
> 
> That would be a configurable parameter/option of the PTP program.
> Just like it can check the existence of link on a given port, it'll also be
> able to check if we use EEC and it's locked. If it is, and is a source of
> PHC frequency - the ptp tool can decide to not apply frequency corrections
> to the PHC, just like the ptp4l does when nullf servo is used, but can do that
> dynamically.

The part I don't understand is "is a source of PHC frequency". How do we
configure / query that?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
