Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 559F62D1E33
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 00:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9EA387CBC;
	Mon,  7 Dec 2020 23:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RE6XgK3fhign; Mon,  7 Dec 2020 23:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9F7787C6F;
	Mon,  7 Dec 2020 23:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FF431BF332
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4B8E1878B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:16:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7E7X0XxRHSb for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 23:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 31193878B2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:16:34 +0000 (UTC)
IronPort-SDR: pP3XOP+5D56nO3gzRQfkBG+SPL0ZTXY1CN3JaRxkYZxmjE+/fQehF/3w7ZVn0VrAzF5dn3boEn
 flqtk9jQSLAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="161564549"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="161564549"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 15:16:33 -0800
IronPort-SDR: AcBJtSDVnH4r/P+8UYpSbwg+1u4Ss6h1AzzkiF+du4nrwoimJI4b5gjHvg2NIW6bfd966B3Okb
 MF8cPF4Zz6nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="363360539"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2020 15:16:29 -0800
Date: Tue, 8 Dec 2020 00:07:55 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: John Fastabend <john.fastabend@gmail.com>
Message-ID: <20201207230755.GB27205@ranger.igk.intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Marek Majtyka <marekx.majtyka@intel.com>, netdev@vger.kernel.org,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, ast@kernel.org,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 07, 2020 at 12:52:22PM -0800, John Fastabend wrote:
> Jesper Dangaard Brouer wrote:
> > On Fri, 4 Dec 2020 16:21:08 +0100
> > Daniel Borkmann <daniel@iogearbox.net> wrote:
> > =

> > > On 12/4/20 1:46 PM, Maciej Fijalkowski wrote:
> > > > On Fri, Dec 04, 2020 at 01:18:31PM +0100, Toke H=F8iland-J=F8rgense=
n wrote:  =

> > > >> alardam@gmail.com writes:  =

> > > >>> From: Marek Majtyka <marekx.majtyka@intel.com>
> > > >>>
> > > >>> Implement support for checking what kind of xdp functionality a n=
etdev
> > > >>> supports. Previously, there was no way to do this other than to t=
ry
> > > >>> to create an AF_XDP socket on the interface or load an XDP progra=
m and see
> > > >>> if it worked. This commit changes this by adding a new variable w=
hich
> > > >>> describes all xdp supported functions on pretty detailed level:  =

> > > >>
> > > >> I like the direction this is going! :)
> > =

> > (Me too, don't get discouraged by our nitpicking, keep working on this!=
 :-))
> > =

> > > >>  =

> > > >>>   - aborted
> > > >>>   - drop
> > > >>>   - pass
> > > >>>   - tx  =

> > > =

> > > I strongly think we should _not_ merge any native XDP driver patchset
> > > that does not support/implement the above return codes. =

> > =

> > I agree, with above statement.
> > =

> > > Could we instead group them together and call this something like
> > > XDP_BASE functionality to not give a wrong impression?
> > =

> > I disagree.  I can accept that XDP_BASE include aborted+drop+pass.
> > =

> > I think we need to keep XDP_TX action separate, because I think that
> > there are use-cases where the we want to disable XDP_TX due to end-user
> > policy or hardware limitations.
> =

> How about we discover this at load time though. Meaning if the program
> doesn't use XDP_TX then the hardware can skip resource allocations for
> it. I think we could have verifier or extra pass discover the use of
> XDP_TX and then pass a bit down to driver to enable/disable TX caps.

+1

> =

> > =

> > Use-case(1): Cloud-provider want to give customers (running VMs) ability
> > to load XDP program for DDoS protection (only), but don't want to allow
> > customer to use XDP_TX (that can implement LB or cheat their VM
> > isolation policy).
> =

> Not following. What interface do they want to allow loading on? If its
> the VM interface then I don't see how it matters. From outside the
> VM there should be no way to discover if its done in VM or in tc or
> some other stack.
> =

> If its doing some onloading/offloading I would assume they need to
> ensure the isolation, etc. is still maintained because you can't
> let one VMs program work on other VMs packets safely.
> =

> So what did I miss, above doesn't make sense to me.
> =

> > =

> > Use-case(2): Disable XDP_TX on a driver to save hardware TX-queue
> > resources, as the use-case is only DDoS.  Today we have this problem
> > with the ixgbe hardware, that cannot load XDP programs on systems with
> > more than 192 CPUs.
> =

> The ixgbe issues is just a bug or missing-feature in my opinion.

Not a bug, rather HW limitation?

> =

> I think we just document that XDP_TX consumes resources and if users
> care they shouldn't use XD_TX in programs and in that case hardware
> should via program discovery not allocate the resource. This seems
> cleaner in my opinion then more bits for features.

But what if I'm with some limited HW that actually has a support for XDP
and I would like to utilize XDP_TX?

Not all drivers that support XDP consume Tx resources. Recently igb got
support and it shares Tx queues between netstack and XDP.

I feel like we should have a sort-of best effort approach in case we
stumble upon the XDP_TX in prog being loaded and query the driver if it
would be able to provide the Tx resources on the current system, given
that normally we tend to have a queue per core.

In that case igb would say yes, ixgbe would say no and prog would be
rejected.

> =

> > =

> > =

> > > If this is properly documented that these are basic must-have
> > > _requirements_, then users and driver developers both know what the
> > > expectations are.
> > =

> > We can still document that XDP_TX is a must-have requirement, when a
> > driver implements XDP.
> =

> +1
> =

> > =

> > =

> > > >>>   - redirect  =

> > > >>
> > =

> > =

> > -- =

> > Best regards,
> >   Jesper Dangaard Brouer
> >   MSc.CS, Principal Kernel Engineer at Red Hat
> >   LinkedIn: http://www.linkedin.com/in/brouer
> > =

> =

> =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
