Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F342D65AB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 19:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CF3687390;
	Thu, 10 Dec 2020 18:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BevJabxb4Ssn; Thu, 10 Dec 2020 18:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9672C873E4;
	Thu, 10 Dec 2020 18:58:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CFDE1BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 18:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 483EA87562
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 18:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mefgg05jy1we for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 18:58:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A361C873DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 18:58:10 +0000 (UTC)
Message-ID: <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607626690;
 bh=Xo2Abu28WmKX2IZAD0R35RUn1xp99rxvKUlOOVDBt1E=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=fW0lL4dMmp+1ZmQOJBiYVfH4am+cHJKgchuXSzpyAJCKFUxaw4N0Txfd4QlJ2HTXn
 66+N7r4YpMa6/QyixjqzQGj0jbC1KphWUQYD4AF+/qpdGpS4Q1y8DgSjHDuv94d6/B
 c5Yetua8pUVrvMC1mqdZZ1N8aRi+eNRKSn1jaagWEHLx5W9m0LQNtMgI/lfozSh7dX
 KzmKCfkV/bA8Hy5n4NoFYOq0nFVB9g9nw0tAaZmaWzaGEdAw7SeROXqCRP3hOgvMNE
 cARGRXeGkrv6dTPymJ5ejR572hvHzd271wR4bnv2aaUY/dL5slHtoB817Uy9okpE/e
 GCrAcsIVZxbGQ==
From: Saeed Mahameed <saeed@kernel.org>
To: David Ahern <dsahern@gmail.com>, Jesper Dangaard Brouer
 <jbrouer@redhat.com>,  Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 10 Dec 2020 10:58:07 -0800
In-Reply-To: <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com>
 <20201209125223.49096d50@carbon>
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
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
 netdev@vger.kernel.org,
 Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2020-12-10 at 08:30 -0700, David Ahern wrote:
> On 12/9/20 11:48 PM, Saeed Mahameed wrote:
> > On Wed, 2020-12-09 at 20:34 -0700, David Ahern wrote:
> > > On 12/9/20 10:15 AM, Saeed Mahameed wrote:
> > > > > My personal experience with this one is mlx5/ConnectX4-LX
> > > > > with a
> > > > > limit
> > > > 
> > > > This limit was removed from mlx5
> > > > https://patchwork.ozlabs.org/project/netdev/patch/20200107191335.12272-5-saeedm@mellanox.com/
> > > > Note: you still need to use ehttool to increase from 64 to 128
> > > > or
> > > > 96 in
> > > > your case.
> > > > 
> > > 
> > > I asked you about that commit back in May:
> > > 
> > 
> > :/, sorry i missed this email, must have been the mlnx nvidia email
> > transition.
> > 
> > > https://lore.kernel.org/netdev/198081c2-cb0d-e1d5-901c-446b63c36706@gmail.com/
> > > 
> > > As noted in the thread, it did not work for me.
> > 
> > Still relevant ? I might need to get you some tools to increase
> > #msix
> > in Firmware.
> > 
> 
> not for me at the moment, but it would be good to document what a
> user
> needs to do - especially if it involves vendor specific tools and
> steps.

Ack, Thanks for pointing that out, I will take action on this.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
