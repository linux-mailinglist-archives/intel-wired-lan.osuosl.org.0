Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1CE8984D6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 12:13:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A33B983026;
	Thu,  4 Apr 2024 10:13:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1LGYHYzlaX6N; Thu,  4 Apr 2024 10:13:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05FBB82FDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712225580;
	bh=Lr6yHlvo8H8DrHGotBAwG96Apwp5piBhDx+Xg8NsA3I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MMUTojsHs3EY0iiJdQmwinqOfcRYZevSFJenUZEZk4GEpQgl2kSsjfevIPCqY23ze
	 UPgsCQ+pXTVzvqJsuPu/r6JLTR9PWz72jY6BuIdByxm3t48rVanf+LcurzqbveErtk
	 Sp6FN1AOwnZsrAu9jbxtA98dpmgrRv/Dbbr27yDilJititit/xVvdLvpdD0pq650YV
	 ldX77OAWdT/szYZMk433NKcUfsj+TtBXUURbHxtSzWcL5SbQwEmvWLMSA95mJCoGbR
	 BJaIhUADzom+WduR3KWaZdYxWBBSwLqgkLfFgWQMRBmQIfiR6V6N1Gq673eoV7SLAw
	 OGN1H6IQ2Oa2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05FBB82FDE;
	Thu,  4 Apr 2024 10:13:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E4CE1BF232
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 10:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85EEE82FE7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 10:12:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FsDZHCpLi-As for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 10:12:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 82B3B82FDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82B3B82FDE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 82B3B82FDE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 10:12:57 +0000 (UTC)
X-CSE-ConnectionGUID: bS07fOHqT9O2wkDFLvQ1lA==
X-CSE-MsgGUID: 4Xh7ejbzTI6uPcW2VQrdEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18852575"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="18852575"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 03:12:56 -0700
X-CSE-ConnectionGUID: NvVrsfnTQOOCA8SlitGbUA==
X-CSE-MsgGUID: lAbIT/5FSwS+rqoDjBoEFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="18856074"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 03:12:53 -0700
Date: Thu, 4 Apr 2024 12:12:38 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <Zg59Ck+XBO5vhlOL@mev-dev>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-20-aleksander.lobakin@intel.com>
 <701f8f93-f5fb-408b-822a-37a1d5c424ba@app.fastmail.com>
 <Zg520gCPr+65sf5l@mev-dev>
 <5afd6f21-4f0e-442f-a970-77195b355a0e@app.fastmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5afd6f21-4f0e-442f-a970-77195b355a0e@app.fastmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712225577; x=1743761577;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4fg9inJNbedbRInZaMC4enjH7MPlO1J/oWaP14XD6d8=;
 b=Tt15vZGr2dPHHlVpGhXIS7X+Iokg6zBE6NrzX4OraF9NIouONhnIzNHh
 Jqgd9b4dNnNc8WrYotNQyPJGuGZf1fgfGX2HpzsfcbnUyAy/lGgtSTg4y
 sOXuyiYTL3MCtJgRQyAmrge7aRG+rAZdRAKrWWyEorsWI9WD8Znqnp0od
 rCcdgkwmkPSc+ulb4898NgLQm1TKxkzKTcaXDozIeBZIlxSy+OaCAFrr2
 bBgXSle6+ciTbAvo+4amJGZc012jDi+UZkoK71XDHxJxgjdaYdZ6ro+O4
 G4iKP1RFFvf6NyK2bFMfYQPsJ7ZHqaPCzUyqIhwwKmh/lX4aChgp70F6E
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tt15vZGr
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
Cc: Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
 Yury Norov <yury.norov@gmail.com>, Netdev <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <horms@kernel.org>, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 04, 2024 at 11:56:29AM +0200, Arnd Bergmann wrote:
> On Thu, Apr 4, 2024, at 11:45, Michal Swiatkowski wrote:
> > On Wed, Apr 03, 2024 at 10:59:36PM +0200, Arnd Bergmann wrote:
> >> On Wed, Mar 27, 2024, at 16:23, Alexander Lobakin wrote:
> >> 
> >> The memcpy() in the ip_tunnel_info_opts_set() causes
> >> a string.h fortification warning, with at least gcc-13:
> >> 
> >>     In function 'fortify_memcpy_chk',
> >>         inlined from 'ip_tunnel_info_opts_set' at include/net/ip_tunnels.h:619:3,
> >>         inlined from 'pfcp_encap_recv' at drivers/net/pfcp.c:84:2:
> >>     include/linux/fortify-string.h:553:25: error: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
> >>       553 |                         __write_overflow_field(p_size_field, size);
> >> 
> >> As far as I can tell, the warning is caused by the
> >> ambiguity of the union, but what I noticed is that
> >> it also seems to copy a buffer to itself, as 'md'
> >> is initialized to tun_dst->u.tun_info as well.
> >> 
> >> Is this intentional?
> >
> > I used ip_tunnel_info_opts_set() to set options_len and flags.
> > You are right that it can and probably should be changed to:
> >
> > __set_bit(IP_TUNNEL_PFCP_OPT_BIT, tun_dst->u.tun_info.key.tun_flags);
> > tun_dst->u.tun_info.options_len = sizeof(*md);
> >
> > instead of copying the buffer. Thanks for pointing it.
> >
> > Should I sent a fix to the net or patch to the maintainer? Sorry, don't
> > know how this kind of situations are being solved.
> 
> I tend to just send fixes when I run into build problems like this,
> but since you already know what's going on, I think it's best if
> you send the fix as well, citing the warning I mention in the commit
> log, and explaining that the warning can be avoided by the simpler
> code but is otherwise a false-positive.
> 

Thanks, I will sent the fix ASAP.

Michal
>      Arnd
