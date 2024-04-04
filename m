Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA919898462
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 11:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6022941BB1;
	Thu,  4 Apr 2024 09:49:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QZUyeryl5pJ1; Thu,  4 Apr 2024 09:49:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D75B41B78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712224142;
	bh=mOD4XN6k5lvgEZVWY50LqKC3d5fme/LNCUhScKA09QA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BBAwY/DkRiTzxC9hCPu8etDZWXDTQL48CDypRJJruom32Y2tKRiIdFlxFXgiA8wCH
	 INQBoKY+kbdb4JBzJ2B0SzVKkzgFVHEkd2o7L1ny0KVAjWBjxzAh49uMs93pmmiGqd
	 hj84WcI6w9ti+v+JxCZHZTe6t8ka+2rfYKqyZeQSVyJlUp97v+H/VSXGQjbefR4eg7
	 vLIlrY3aYjV1JPA92XaEVU+wnF54rD/FUPUrEoJRy1FZXK0AyAAclfJp3t2/iOKYFH
	 lbTYloBOWi9XG5t+mJUsTV5yQcEB+DXcLcEPe0iCgSs5e0PAgRV6tDFvGzSQgpt9UY
	 Oz7jFbqjhB/XA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D75B41B78;
	Thu,  4 Apr 2024 09:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 857AF1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D55B41B9B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:49:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oc7_qlUn5wiB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 09:48:59 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 87D0A41B78
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87D0A41B78
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 87D0A41B78
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:48:57 +0000 (UTC)
X-CSE-ConnectionGUID: cMCofUY2QjuyxxyVzqO8yA==
X-CSE-MsgGUID: WwhZvUU6S1W7PphUdvJ0kw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7393423"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; 
   d="scan'208";a="7393423"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:46:13 -0700
X-CSE-ConnectionGUID: ++d9YZT8TDytdMV2c2L46w==
X-CSE-MsgGUID: WqeOzf9OQeK8oCmECxYFYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="41898069"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:46:09 -0700
Date: Thu, 4 Apr 2024 11:45:54 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <Zg520gCPr+65sf5l@mev-dev>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-20-aleksander.lobakin@intel.com>
 <701f8f93-f5fb-408b-822a-37a1d5c424ba@app.fastmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <701f8f93-f5fb-408b-822a-37a1d5c424ba@app.fastmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712224139; x=1743760139;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HtkXVwM+iFAGGvr+kUD0dRiyp1DbZhZOQzSip15beRo=;
 b=Vn0ArSfvSGoeJUumBUUw/lbhEsgB7Y8IGUAZC3GdKolULmez9YkHOq3A
 qZQGq2GLbITe5V7oVDfq1/i3a7BU7TpTzlkpOwLgxIFIHMHDQr3/o6EbU
 YJNNghmREgzKRTeTFcdkNLUa4nczbmZgx2cgSM2Duay8NlQTk2XAvl/PM
 1Rvody8yODVWxAe1BdIFdZVEMnkej9Jh16Viae9+nIzkfZrGdcxyPBAbu
 07D7vQ6pItlRiHDtleM87lq4eYlXS1xtXToX9mUHuO2ptT6OheOjQAU9u
 JF1o+rpIiaCa2Fm+QJ/jsw3GKZzr7VqpXmeDnkATI5wMLuhzdplveC95F
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vn0ArSfv
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 19/21] pfcp: always set
 pfcp metadata
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
Cc: Kees Cook <keescook@chromium.org>, Yury Norov <yury.norov@gmail.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Netdev <netdev@vger.kernel.org>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 03, 2024 at 10:59:36PM +0200, Arnd Bergmann wrote:
> On Wed, Mar 27, 2024, at 16:23, Alexander Lobakin wrote:
> 
> > +static int pfcp_encap_recv(struct sock *sk, struct sk_buff *skb)
> > +{
> > +	IP_TUNNEL_DECLARE_FLAGS(flags) = { };
> > +	struct metadata_dst *tun_dst;
> > +	struct pfcp_metadata *md;
> > +	struct pfcphdr *unparsed;
> > +	struct pfcp_dev *pfcp;
> > +
> > +	if (unlikely(!pskb_may_pull(skb, PFCP_HLEN)))
> > +		goto drop;
> > +
> > +	pfcp = rcu_dereference_sk_user_data(sk);
> > +	if (unlikely(!pfcp))
> > +		goto drop;
> > +
> > +	unparsed = pfcp_hdr(skb);
> > +
> > +	ip_tunnel_flags_zero(flags);
> > +	tun_dst = udp_tun_rx_dst(skb, sk->sk_family, flags, 0,
> > +				 sizeof(*md));
> > +	if (unlikely(!tun_dst))
> > +		goto drop;
> > +
> > +	md = ip_tunnel_info_opts(&tun_dst->u.tun_info);
> > +	if (unlikely(!md))
> > +		goto drop;
> > +
> > +	if (unparsed->flags & PFCP_SEID_FLAG)
> > +		pfcp_session_recv(pfcp, skb, md);
> > +	else
> > +		pfcp_node_recv(pfcp, skb, md);
> > +
> > +	__set_bit(IP_TUNNEL_PFCP_OPT_BIT, flags);
> > +	ip_tunnel_info_opts_set(&tun_dst->u.tun_info, md, sizeof(*md),
> > +				flags);
> > +
> 
> The memcpy() in the ip_tunnel_info_opts_set() causes
> a string.h fortification warning, with at least gcc-13:
> 
>     In function 'fortify_memcpy_chk',
>         inlined from 'ip_tunnel_info_opts_set' at include/net/ip_tunnels.h:619:3,
>         inlined from 'pfcp_encap_recv' at drivers/net/pfcp.c:84:2:
>     include/linux/fortify-string.h:553:25: error: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
>       553 |                         __write_overflow_field(p_size_field, size);
> 
> As far as I can tell, the warning is caused by the
> ambiguity of the union, but what I noticed is that
> it also seems to copy a buffer to itself, as 'md'
> is initialized to tun_dst->u.tun_info as well.
> 
> Is this intentional?

I used ip_tunnel_info_opts_set() to set options_len and flags.
You are right that it can and probably should be changed to:

__set_bit(IP_TUNNEL_PFCP_OPT_BIT, tun_dst->u.tun_info.key.tun_flags);
tun_dst->u.tun_info.options_len = sizeof(*md);

instead of copying the buffer. Thanks for pointing it.

Should I sent a fix to the net or patch to the maintainer? Sorry, don't
know how this kind of situations are being solved.

Michal

> 
>       Arnd
