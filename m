Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 824F12D47A4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Dec 2020 18:15:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4268C87628;
	Wed,  9 Dec 2020 17:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OMXS_VbEWZet; Wed,  9 Dec 2020 17:15:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BC028762E;
	Wed,  9 Dec 2020 17:15:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 139291BF324
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 17:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0F2CF8762A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 17:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bYf3cUIvHHjq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 17:15:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C48587628
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 17:15:44 +0000 (UTC)
Message-ID: <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607534144;
 bh=RkoZQZVCD+M6oeGyMp//Wyg7TGkpp9J9YjTrZtBHEns=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=YyUnzG89JCQSsZ1iZdfgLw/6Wm5sbJvDh+38Ell18c6ZnL1a1hN0GOT8kf3xjicB0
 XrKpi0gPFnlBZTt7sKdgmU8Rb/23bIbOLQWEhtrrzX3o1E2+PLEsZSa/NNur4ZungI
 YpNx9APv9UXZDf7QmV13u26XxjUnm6NAtHqCpcsFvstHAudzEqwx90jRQactrHDiWI
 wzP1lNTsepuRyVJrhp94GbMqgieKlKIirpbqC91c9a+vMN2Yol6M70eH5XwBKtxb8j
 CkFFNWp6RAUa8jQEpQjdgiJ+vzTmOhnHkGRDlfpVBcijiWViNEJOkapwg+JKSz3yqU
 cvYg7hofOQVJA==
From: Saeed Mahameed <saeed@kernel.org>
To: David Ahern <dsahern@gmail.com>, Jesper Dangaard Brouer
 <jbrouer@redhat.com>,  Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Wed, 09 Dec 2020 09:15:41 -0800
In-Reply-To: <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
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

On Wed, 2020-12-09 at 08:41 -0700, David Ahern wrote:
> On 12/9/20 4:52 AM, Jesper Dangaard Brouer wrote:
> > > > still load and either share queues across multiple cores or
> > > > restirct
> > > > down to a subset of CPUs.  
> > > 
> > > And that's the missing piece of logic, I suppose.
> > > 
> > > > Do you need 192 cores for a 10gbps nic, probably not.  
> > > 
> > > Let's hear from Jesper :p
> > 
> > LOL - of-cause you don't need 192 cores.  With XDP I will claim
> > that
> > you only need 2 cores (with high GHz) to forward 10gbps wirespeed
> > small
> > packets.
> 
> You don't need 192 for 10G on Rx. However, if you are using
> XDP_REDIRECT
> from VM tap devices the next device (presumably the host NIC) does
> need
> to be able to handle the redirect.
> 
> My personal experience with this one is mlx5/ConnectX4-LX with a
> limit

This limit was removed from mlx5
https://patchwork.ozlabs.org/project/netdev/patch/20200107191335.12272-5-saeedm@mellanox.com/
Note: you still need to use ehttool to increase from 64 to 128 or 96 in
your case.

> of 63 queues and a server with 96 logical cpus. If the vhost thread
> for
> the tap device runs on a cpu that does not have an XDP TX Queue, the
> packet is dropped. This is a really bizarre case to debug as some
> packets go out fine while others are dropped.

I agree, the user experience horrible.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
