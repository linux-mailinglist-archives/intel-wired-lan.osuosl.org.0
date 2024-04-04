Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92713898475
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 11:57:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D4A141BAA;
	Thu,  4 Apr 2024 09:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8-6OTR5ibmta; Thu,  4 Apr 2024 09:57:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66C85409E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712224621;
	bh=xuGEupRjONI3/9Bj9JBG8NZZIsRmxtq+xC+1/iOYIIY=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xsJhQIpjx4CZ2k8ZejKoSzYPoECN6sL3vi/6LVfVqJAVhk7B+B++6HEOArZClMKbU
	 VVSJCb6cJGM0grI5U52ONyJBrSLBNQN0mFvdWgJm1aw1oJN8SI963TAEmtGwm7Yxpu
	 lSnfVhBw8eD6z8z/bzxpHEQMOwxWu855FIeabekIcjMeeC59I738CXNZEa9Wm3Mt89
	 hhBf64uE8yusZiIpn5usrikf+YUmTNy2BMMJxomsn22yyERfJGUEPgI+JA8pgVCn63
	 siVg2LJYd/BJl0D5vi70qzbZqkTLOIIdan7Jh3Sl8FBpnQSd/LymD7YNsLkuddAw/G
	 5cRftK9vTucHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66C85409E9;
	Thu,  4 Apr 2024 09:57:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A6741BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9213440948
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:56:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OhtxLuiWnSip for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 09:56:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=64.147.123.157;
 helo=wfhigh6-smtp.messagingengine.com; envelope-from=arnd@arndb.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4162A40837
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4162A40837
Received: from wfhigh6-smtp.messagingengine.com
 (wfhigh6-smtp.messagingengine.com [64.147.123.157])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4162A40837
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 09:56:56 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.west.internal (Postfix) with ESMTP id C982A18000F1;
 Thu,  4 Apr 2024 05:56:51 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Thu, 04 Apr 2024 05:56:53 -0400
X-ME-Sender: <xms:YnkOZnSzCYkIbr3sGXaHD2EMAG1DB6wd8t8IqaOU_wnBaiJ7UP3BUw>
 <xme:YnkOZoy8QV8euZrJFlG9zv9-LueW0Xi_SMVsrxUyEAnJuwh13gY-QjQi7Tny-TzeW
 cSO69xyT4sMYRAA5G8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudefkedgvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
 teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:YnkOZs1n084geko71JJ82l1xv17Jr7g7x7EJOFG6UEtf1Z70AmVNSA>
 <xmx:YnkOZnDMJLvctudT2q7GY1jcWwOdHc1xrjb7SZmhjvYtoAqqcOle6g>
 <xmx:YnkOZghw25GVfUA2eXePWyIQqjuv5SZ79GnOrJJTJ5zaMqjV68xJ1g>
 <xmx:YnkOZrp_XPkbPC6Z7VDDtUIvetpzuAQdm02O6BBx9ZgPq7vx3DQe4g>
 <xmx:Y3kOZsz-1GTGfCUj0clQnjK97P10dksR8igJUggUCgEgpRqBD8bZil4r>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B001AB6008D; Thu,  4 Apr 2024 05:56:50 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-333-gbfea15422e-fm-20240327.001-gbfea1542
MIME-Version: 1.0
Message-Id: <5afd6f21-4f0e-442f-a970-77195b355a0e@app.fastmail.com>
In-Reply-To: <Zg520gCPr+65sf5l@mev-dev>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-20-aleksander.lobakin@intel.com>
 <701f8f93-f5fb-408b-822a-37a1d5c424ba@app.fastmail.com>
 <Zg520gCPr+65sf5l@mev-dev>
Date: Thu, 04 Apr 2024 11:56:29 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Michal Swiatkowski" <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1712224611; x=1712311011; bh=xuGEupRjON
 I3/9Bj9JBG8NZZIsRmxtq+xC+1/iOYIIY=; b=BAoGdNb42QfcwNN7Csg6JLP7DK
 Neh3zpvrK9U9sS1j7hYqNwdCQHX3mD+Mu5u10DUZiCBEbedePzo0fsAAvBe3BaeE
 mX708+ccAmi3zdEcPB4WGW6GlnhmGFZ4xurzva7jZd5tlkU96tMKliVX5HMxbkVC
 z4qdyzFL9V8DAcAU5g+h/O5ckooreCKK79oEDyqOZwwF01DuxgxNWflRPqsgpeDZ
 mS9WezAV84wpSMGUvYpZYfW0rJH4x1CouQqFas2zWfQ4BUgPEtPBu46vjJb282TR
 +2RW1cWTTBePNY590/oREwrJGb9RkDwitjiyAUpVZ4YEHRz1g231Rcc6RVYQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1712224611; x=1712311011; bh=xuGEupRjONI3/9Bj9JBG8NZZIsRm
 xtq+xC+1/iOYIIY=; b=Qq0VR2x95Db6eL8takRYuUyy68jNIfiByIuUgZX/PszG
 a8h+6CB5q1v8z2K5Y4mCYDYwD8uxp3lW9SkQ/CWJaW+rx6KvDJW0sRgU85YyJcGQ
 z3hf0wAdowMXn2ohM9of0UNCxprVMx0lI+R9w0SqKVj9N9WGbcccn/U4yJPbOgTu
 RGiVbHkcJ8+zbdCEc81L4tAj4afBvwSUFhZimEr1yZSJjRsEaYssRrREo2JTo0sS
 TVZN0ZCzl7f6nXi0aaaS65gl5an0B1irYNF7nXq45Cmp1SAWv/QuWS3ImoXUrxx4
 aGHWrKSyvrxTSbwnczcXk565M+A+oSrf3UElzM2iiw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=arndb.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de
 header.a=rsa-sha256 header.s=fm1 header.b=BAoGdNb4; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=Qq0VR2x9
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

On Thu, Apr 4, 2024, at 11:45, Michal Swiatkowski wrote:
> On Wed, Apr 03, 2024 at 10:59:36PM +0200, Arnd Bergmann wrote:
>> On Wed, Mar 27, 2024, at 16:23, Alexander Lobakin wrote:
>> 
>> The memcpy() in the ip_tunnel_info_opts_set() causes
>> a string.h fortification warning, with at least gcc-13:
>> 
>>     In function 'fortify_memcpy_chk',
>>         inlined from 'ip_tunnel_info_opts_set' at include/net/ip_tunnels.h:619:3,
>>         inlined from 'pfcp_encap_recv' at drivers/net/pfcp.c:84:2:
>>     include/linux/fortify-string.h:553:25: error: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
>>       553 |                         __write_overflow_field(p_size_field, size);
>> 
>> As far as I can tell, the warning is caused by the
>> ambiguity of the union, but what I noticed is that
>> it also seems to copy a buffer to itself, as 'md'
>> is initialized to tun_dst->u.tun_info as well.
>> 
>> Is this intentional?
>
> I used ip_tunnel_info_opts_set() to set options_len and flags.
> You are right that it can and probably should be changed to:
>
> __set_bit(IP_TUNNEL_PFCP_OPT_BIT, tun_dst->u.tun_info.key.tun_flags);
> tun_dst->u.tun_info.options_len = sizeof(*md);
>
> instead of copying the buffer. Thanks for pointing it.
>
> Should I sent a fix to the net or patch to the maintainer? Sorry, don't
> know how this kind of situations are being solved.

I tend to just send fixes when I run into build problems like this,
but since you already know what's going on, I think it's best if
you send the fix as well, citing the warning I mention in the commit
log, and explaining that the warning can be avoided by the simpler
code but is otherwise a false-positive.

     Arnd
