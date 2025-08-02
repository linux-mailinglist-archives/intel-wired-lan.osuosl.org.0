Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D10B18FB1
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 20:52:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8450C848C6;
	Sat,  2 Aug 2025 18:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PU2bgLGRgL2M; Sat,  2 Aug 2025 18:52:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC7F9848C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754160768;
	bh=GRW/K7e2Si/yYH4Tt2aETLmdLlvw/Jl1k/v/zOC4jVo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tgFEGgWQ9QKeujvyNBaRuV3tCBF+Ams2KQtAlAHUQ+Zlbt4MrS/jgJA90eq9xyG24
	 j9Br9ImTyzKFtBhrVO+5yATcJy4NsAXvEC1jCb+BqtSHyYAJybFXBWmEwfiSrD/NVB
	 D8XLNCbhusKWwnoTXCNKd9KXJ5FWBpa5Gn1mBvXVk3No8dyC/u2p59IEIkq/decD1r
	 o6DlX0zgT3byCcQhm6Yl6BHNdDJRzXk8B7cdLz9/C5GW3wLKzaNJr7YYBNdlzWYIpo
	 66PHN2/fzoc2VjLnhYdGZDmiegu9c5tkdUupStxrxYR6PDIKTUKYwMJyrLapu72O+y
	 Iw2jf1G4E/7hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC7F9848C1;
	Sat,  2 Aug 2025 18:52:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BFF78160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 18:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A68C560B02
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 18:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L-1QN7TxjcTx for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 18:52:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kees@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DC30660AF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC30660AF4
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC30660AF4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 18:52:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A5A2F5C4C08;
 Sat,  2 Aug 2025 18:52:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 482AEC4CEEF;
 Sat,  2 Aug 2025 18:52:44 +0000 (UTC)
Date: Sat, 2 Aug 2025 11:52:44 -0700
From: Kees Cook <kees@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Message-ID: <202508021152.AD1850CD2@keescook>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-17-aleksander.lobakin@intel.com>
 <20250731123734.GA8494@horms.kernel.org>
 <202507310955.03E47CFA4@keescook>
 <8c085ba0-29a3-492a-b9f1-e7d02b5fb558@intel.com>
 <ff10e2a3-bd97-4c96-b7bd-f47289c9b0e4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff10e2a3-bd97-4c96-b7bd-f47289c9b0e4@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754160764;
 bh=oKJ4o+84X2gZrWbVCPsj5JL/+cPPXG/1i+v6w3VXMC4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IYBwfnNtT4MqM4tAxSAR/QjCr7jN/hWRSOJgtIEv0cqySxNbaTHzmL9697+/+clTy
 0lXodjB2ALTL7KFhGrf+dOPaEl9UbiFS54b7fa4RPCFJKSLnMw3+lHXIhVFcfql4tk
 EreD2tbkCoyLDzoRzkgqjrUMwcRQvCio3Ls6fBtqgVXJztGW2LWZASS2RrIBIkD7AT
 c0zVOsLH8KRoGneQL/KaueDbzCGBKwbg6bdBvo/bGvF4O2p2+F2sWmwdT4Kdop5vt5
 HrEf3c+GE+zleyRAtl8EMibSGfp7N92FZFvklyyggz/EWUz2WkS9klmheE01e7SxVA
 eneqE0XK/GfVg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IYBwfnNt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 16/18] idpf: add support
 for XDP on Rx
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 01, 2025 at 03:17:42PM +0200, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Fri, 1 Aug 2025 15:12:43 +0200
> 
> > From: Kees Cook <kees@kernel.org>
> > Date: Thu, 31 Jul 2025 10:05:47 -0700
> > 
> >> On Thu, Jul 31, 2025 at 01:37:34PM +0100, Simon Horman wrote:
> >>> While I appreciate the desire for improved performance and nicer code
> >>> generation. I think the idea of writing 64 bits of data to the
> >>> address of a 32 bit member of a structure goes against the direction
> >>> of hardening work by Kees and others.
> >>
> >> Agreed: it's better to avoid obscuring these details from the compiler
> >> so it can have an "actual" view of the object sizes involved.
> >>
> >>> Indeed, it seems to me this is the kind of thing that struct_group()
> >>> aims to avoid.
> >>>
> >>> In this case struct group() doesn't seem like the best option,
> >>> because it would provide a 64-bit buffer that we can memcpy into.
> >>> But it seems altogether better to simply assign u64 value to a u64 member.
> >>
> >> Agreed: with struct_group you get a sized pointer, and while you can
> >> provide a struct tag to make it an assignable object, it doesn't make
> >> too much sense here.
> >>
> >>> So I'm wondering if an approach along the following lines is appropriate
> >>> (Very lightly compile tested only!).
> >>>
> >>> And yes, there is room for improvement of the wording of the comment
> >>> I included below.
> >>>
> >>> diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
> >>> index f4880b50e804..a7d3d8e44aa6 100644
> >>> --- a/include/net/libeth/xdp.h
> >>> +++ b/include/net/libeth/xdp.h
> >>> @@ -1283,11 +1283,7 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
> >>>  	const struct page *page = __netmem_to_page(fqe->netmem);
> >>>  
> >>>  #ifdef __LIBETH_WORD_ACCESS
> >>> -	static_assert(offsetofend(typeof(xdp->base), flags) -
> >>> -		      offsetof(typeof(xdp->base), frame_sz) ==
> >>> -		      sizeof(u64));
> >>> -
> >>> -	*(u64 *)&xdp->base.frame_sz = fqe->truesize;
> >>> +	xdp->base.frame_sz_le_qword = fqe->truesize;
> >>>  #else
> >>>  	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
> >>>  #endif
> >>> diff --git a/include/net/xdp.h b/include/net/xdp.h
> >>> index b40f1f96cb11..b5eedeb82c9b 100644
> >>> --- a/include/net/xdp.h
> >>> +++ b/include/net/xdp.h
> >>> @@ -85,8 +85,19 @@ struct xdp_buff {
> >>>  	void *data_hard_start;
> >>>  	struct xdp_rxq_info *rxq;
> >>>  	struct xdp_txq_info *txq;
> >>> -	u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
> >>> -	u32 flags; /* supported values defined in xdp_buff_flags */
> >>> +	union {
> >>> +		/* Allow setting frame_sz and flags as a single u64 on
> >>> +		 * little endian systems. This may may give optimal
> >>> +		 * performance. */
> >>> +		u64 frame_sz_le_qword;
> >>> +		struct {
> >>> +			/* Frame size to deduce data_hard_end/reserved
> >>> +			 * tailroom. */
> >>> +			u32 frame_sz;
> >>> +			/* Supported values defined in xdp_buff_flags. */
> >>> +			u32 flags;
> >>> +		};
> >>> +	};
> >>>  };
> >>
> >> Yeah, this looks like a nice way to express this, and is way more
> >> descriptive than "(u64 *)&xdp->base.frame_sz" :)
> > 
> > Sounds good to me!
> > 
> > Let me send v4 where I'll fix this.
> 
> Note: would it be okay if I send v4 with this fix when the window opens,
> while our validation will retest v3 from Tony's tree in meantine? It's a
> cosmetic change anyway and does not involve any functional changes.

If this is directed at me, yeah, I don't see any high urgency here.

-- 
Kees Cook
