Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DA22D663A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 20:20:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 055E3228DF;
	Thu, 10 Dec 2020 19:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lKzrvevIQXFl; Thu, 10 Dec 2020 19:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAAC82288E;
	Thu, 10 Dec 2020 19:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B7431BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 19:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 76EF6876D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 19:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2lpElK28nx-v for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 19:20:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CBCEE876CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 19:20:34 +0000 (UTC)
Message-ID: <e8d17e650f641be4aabf119753aa07cacfda2182.camel@kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607628034;
 bh=YKLfDAdzsz7Ak59EB3e7WoxkKdBklgKDO7pZxFH5sx0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Jhh5h8NrycRLRflXtcVnqCZ9dUCHoQQaAXPnYvMn7gk36FSBn7YjjF9IC2dFRUd0T
 KOfqEwPAGZqmjwn1xOEtfq5AEGdoqGrVF3SoSK6Hcvv2kO1f8kP1fuCWCBX/Eb4v6L
 jy+NSkF4Eic/eJtgRZhLBbqLPVJSOf2y/2JZsTGnBpybpBT8URnmzx51mxZ+rjSUuE
 66JpEtizF3q8B1QJQMnvRFfD2G48Bxq6aAjn1cBtu6HxUf3x0tL7kHXmSI1KcC6Agb
 EsC56ZhKNKr5lflqkW9hEMXvUbJlnuYucYKJjxnAPUdZzSOMm11U3Zyjeox83NPgOf
 SREKwW2+6WNlA==
From: Saeed Mahameed <saeed@kernel.org>
To: Jesper Dangaard Brouer <brouer@redhat.com>, David Ahern
 <dsahern@gmail.com>,  Frey Alfredsson <freysteinn@freysteinn.com>
Date: Thu, 10 Dec 2020 11:20:31 -0800
In-Reply-To: <20201210143211.2490f7f4@carbon>
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
 <6913010d-2fd6-6713-94e9-8f5b8ad4b708@gmail.com>
 <20201210143211.2490f7f4@carbon>
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Explaining XDP redirect bulk size design
 (Was: [PATCH v2 bpf 1/5] net: ethtool: add xdp properties flag set)
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
 "Michael S. Tsirkin" <mst@redhat.com>, netdev@vger.kernel.org,
 Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2020-12-10 at 14:32 +0100, Jesper Dangaard Brouer wrote:
> On Wed, 9 Dec 2020 08:44:33 -0700
> David Ahern <dsahern@gmail.com> wrote:
> 
> > On 12/9/20 4:52 AM, Jesper Dangaard Brouer wrote:
> > > But I have redesigned the ndo_xdp_xmit call to take a bulk of
> > > packets
> > > (up-to 16) so it should not be a problem to solve this by sharing
> > > TX-queue and talking a lock per 16 packets.  I still recommend
> > > that,
> > > for fallback case,  you allocated a number a TX-queue and
> > > distribute
> > > this across CPUs to avoid hitting a congested lock (above
> > > measurements
> > > are the optimal non-congested atomic lock operation)  
> > 
> > I have been meaning to ask you why 16 for the XDP batching? If the
> > netdev budget is 64, why not something higher like 32 or 64?
> 
> Thanks you for asking as there are multiple good reasons and
> consideration for this 16 batch size.  Notice cpumap have batch size
> 8,
> which is also an explicit choice.  And AF_XDP went in the wrong
> direction IMHO and I think have 256.  I designed this to be a choice
> in
> the map code, for the level of bulking it needs/wants.
> 
> The low level explanation is that these 8 and 16 batch sizes are
> optimized towards cache sizes and Intel's Line-Fill-Buffer
> (prefetcher
> with 10 elements).  I'm betting on that memory backing these 8 or 16
> packets have higher chance to remain/being in cache, and I can
> prefetch
> them without evicting them from cache again.  In some cases the
> pointer
> to these packets are queued into a ptr_ring, and it is more optimal
> to
> write cacheline sizes 1 (8 pointers) or 2 (16 pointers) into the
> ptr_ring.
> 

I've warned people about this once or twice on the mailing list, for
example re-populating the rx ring, a common mistake is to use the napi
budget, which has the exact side effects as you are explaining here
Jesper !

these 8/16 numbers are used in more than one place in the stack, xdp,
gro, hw buffer re-population, etc..
how can we enforce such numbers and a uniform handling in all drivers?
1. have a clear documentation ? well know defines, for people to copy?

2. for XDP we must keep track on the memory backing of the xdp bulked
data as Jesper pointed out, so we always make sure whatever bulk-size
we define it always remains cache friendly, especially now where people
stated working on  multi-buff and other features that will extend the
xdp_buff and xdp_frame, do we need a selftest that maybe runs pahole to
see the those data strcutre remain within reasonable format/sizes ?



> The general explanation is my goal to do bulking without adding
> latency.
> This is explicitly stated in my presentation[1] as of Feb 2016, slide
> 20.
> Sure, you/we can likely make the micro-benchmarks look better by
> using
> 64 batch size, but that will introduce added latency and likely shoot
> our-selves in the foot for real workloads.  With experience from
> bufferbloat and real networks, we know that massive TX bulking have
> bad
> effects.  Still XDP-redirect does massive bulking (NIC flush is after
> full 64 budget) and we don't have pushback or a queue mechanism (so I
> know we are already shooting ourselves in the foot) ...  Fortunately
> we
> now have a PhD student working on queuing for XDP.
> 
> It is also important to understand that this is an adaptive bulking
> scheme, which comes from NAPI.  We don't wait for packets arriving
> shortly, we pickup what NIC have available, but by only taking 8 or
> 16
> packets (instead of emptying the entire RX-queue), and then spending
> some time to send them along, I'm hoping that NIC could have gotten
> some more frame.  For cpumap and veth (in-some-cases) they can start
> to
> consume packets from these batches, but NIC drivers gets
> XDP_XMIT_FLUSH
> signal at NAPI-end (xdp_do_flush). Still design allows NIC drivers to
> update their internal queue state (and BQL), and if it gets close to
> full they can choose to flush/doorbell the NIC earlier.  When doing
> queuing for XDP we need to expose these NIC queue states, and having
> 4
> calls with 16 packets (64 budget) also gives us more chances to get
> NIC
> queue state info which the NIC already touch.
> 
> 
> [1] 
> https://people.netfilter.org/hawk/presentations/devconf2016/net_stack_challenges_100G_Feb2016.pdf

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
