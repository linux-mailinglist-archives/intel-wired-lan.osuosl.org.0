Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17931897A5F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 23:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62CF2418A3;
	Wed,  3 Apr 2024 21:06:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n_nUUy6_u-ou; Wed,  3 Apr 2024 21:06:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8824F4189A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712178384;
	bh=TkyKpF4n3Cq52s0X3ZL3E7R1KrZzCnoADc0YqLDsh/k=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4isvnaA3EJh/wEdJpzVRbIL5HnjPeTubMnSNDljSRaemcyBDLXStsnZpp968gnZwJ
	 03mzTvMUSkIiYwyf+RmCxKBf9doLBXiSfKEtXcKo0ZdBuaD6jTrh26BpeDx+NQxkpG
	 rbEf50jjNdYmp8xh2qrK+wpqo8oh11pwFx8HOhn8ulCBYrkGfqaDuUyzjZzECdekbd
	 p57et9tb1NHS/kMWleUC5m+i8ptWQnjQ980WHFlt035ryoo4qx7g/rhfJUirQMamU9
	 x6NzHVnSS6eQrknDJJ/mxVg93hbuHqWyV/9UcfZ7sVqVxcgI/Jc1OFMaAgZYViW9EW
	 F2/a+Qdk+1obQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8824F4189A;
	Wed,  3 Apr 2024 21:06:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A70F51BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 21:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 925D982267
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 21:06:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1pUbMHPaNyJX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 21:06:22 +0000 (UTC)
X-Greylist: delayed 379 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 03 Apr 2024 21:06:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A15DB82266
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A15DB82266
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=64.147.123.157;
 helo=wfhigh6-smtp.messagingengine.com; envelope-from=arnd@arndb.de;
 receiver=<UNKNOWN> 
Received: from wfhigh6-smtp.messagingengine.com
 (wfhigh6-smtp.messagingengine.com [64.147.123.157])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A15DB82266
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 21:06:21 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.west.internal (Postfix) with ESMTP id 506BD180010E;
 Wed,  3 Apr 2024 16:59:58 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Wed, 03 Apr 2024 16:59:59 -0400
X-ME-Sender: <xms:TcMNZvjGxtVaQ7lJjPrnjJiTRcLqVvdevj2JGj5ygxkyvaxZTq-XgQ>
 <xme:TcMNZsCj-2Cg0iMiPgYRpqHhfvGdEB9yBlad668jZ-4CemOPfrP93fsBvHPVn709S
 WLbvOnbNIIlgnQNirg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudefiedguddufecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdet
 rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
 htthgvrhhnpeffheeugeetiefhgeethfejgfdtuefggeejleehjeeutefhfeeggefhkedt
 keetffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:TcMNZvGQo8zIv4XpkRoy1AW70Hn1lLnDuoKeh7BaArgh2j3x8KRF4Q>
 <xmx:TcMNZsSo7PaGRkdKyfCOrEEhQYGxMzdS9B_wky1316eTKOsQGv_gzg>
 <xmx:TcMNZsy3V4u7Ht2CEsSf1pQF8CxUAU3s06Fo95V0PBgEmgUVe73JZQ>
 <xmx:TcMNZi4mcfwK233dblrueIHu9lqApYhCEdnUP2bH5oTQyYtwjBFpWA>
 <xmx:TcMNZoDtsp2EnYCMaV-GyvV6o6vcniCi6pZD5YwF8kZEoqBIUsKE_tNZ>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 251F5B6008D; Wed,  3 Apr 2024 16:59:57 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-333-gbfea15422e-fm-20240327.001-gbfea1542
MIME-Version: 1.0
Message-Id: <701f8f93-f5fb-408b-822a-37a1d5c424ba@app.fastmail.com>
In-Reply-To: <20240327152358.2368467-20-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-20-aleksander.lobakin@intel.com>
Date: Wed, 03 Apr 2024 22:59:36 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Alexander Lobakin" <aleksander.lobakin@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1712177997; x=1712264397; bh=TkyKpF4n3C
 q52s0X3ZL3E7R1KrZzCnoADc0YqLDsh/k=; b=bMjpQfbVCi8Fq8X/stkrxnmNLa
 a9eEqq1QgwOAfhJa8IBNoTc9TmPgl8k37iGa3Plj+yL82KuU/DHLiW+B0EgYL82c
 02tVQS6fGmyZwYLxqYe78UZVRUV2mMN5Esd/08WwqhNyFJnJG5un/99DDmFMwWJW
 Az5K6oBjccQ59rLVezsvSSIgR8itvVTkbtC7jvrMY7NfxDzqNxrboKzUGqXNJQNi
 YyEsWKJ6or2z1WSTEA2riV00U8oJRsjYk9nuZTZA0u6iQkwzng051T0bgvZmXXPP
 VRHZnfJUFtIoxLojPbaHAglzRdn7e1lXGHeVQhMviK/+OorI/43OpHbHQFVA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1712177997; x=1712264397; bh=TkyKpF4n3Cq52s0X3ZL3E7R1KrZz
 CnoADc0YqLDsh/k=; b=CIQGSrnFZRNZgMpARGSyCT5M46ioL1XGSw7MA0g7Rydv
 zQYYjGI4sejaWCkb1bXdvVklGyJXheHuMfcxVjySSplR2bL7EkH3oyVUTIcl3Gai
 GRPNR2tZJraIWZvwn5KzpR22QuKSAe+H/q/bRz04wgH0bXdpjj0tB9CO4CCBuABc
 JG6u7OvcvJPWSiT9jPR78+639l1b3s8ex+E/W3xiVe/aTUxK9Sv6x4pVOmIGaBI3
 2bEcxjq0cO+cB5msjHtB12nJhcKNH0JPZEy/brteYOce2+8Nno6d0bwX3DLJrcdy
 m4VzX7YEp2FHkgYzSIWEumxrId/cRz6NUlyjxfgMOQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=arndb.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de
 header.a=rsa-sha256 header.s=fm1 header.b=bMjpQfbV; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=CIQGSrnF
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
 Netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024, at 16:23, Alexander Lobakin wrote:

> +static int pfcp_encap_recv(struct sock *sk, struct sk_buff *skb)
> +{
> +	IP_TUNNEL_DECLARE_FLAGS(flags) = { };
> +	struct metadata_dst *tun_dst;
> +	struct pfcp_metadata *md;
> +	struct pfcphdr *unparsed;
> +	struct pfcp_dev *pfcp;
> +
> +	if (unlikely(!pskb_may_pull(skb, PFCP_HLEN)))
> +		goto drop;
> +
> +	pfcp = rcu_dereference_sk_user_data(sk);
> +	if (unlikely(!pfcp))
> +		goto drop;
> +
> +	unparsed = pfcp_hdr(skb);
> +
> +	ip_tunnel_flags_zero(flags);
> +	tun_dst = udp_tun_rx_dst(skb, sk->sk_family, flags, 0,
> +				 sizeof(*md));
> +	if (unlikely(!tun_dst))
> +		goto drop;
> +
> +	md = ip_tunnel_info_opts(&tun_dst->u.tun_info);
> +	if (unlikely(!md))
> +		goto drop;
> +
> +	if (unparsed->flags & PFCP_SEID_FLAG)
> +		pfcp_session_recv(pfcp, skb, md);
> +	else
> +		pfcp_node_recv(pfcp, skb, md);
> +
> +	__set_bit(IP_TUNNEL_PFCP_OPT_BIT, flags);
> +	ip_tunnel_info_opts_set(&tun_dst->u.tun_info, md, sizeof(*md),
> +				flags);
> +

The memcpy() in the ip_tunnel_info_opts_set() causes
a string.h fortification warning, with at least gcc-13:

    In function 'fortify_memcpy_chk',
        inlined from 'ip_tunnel_info_opts_set' at include/net/ip_tunnels.h:619:3,
        inlined from 'pfcp_encap_recv' at drivers/net/pfcp.c:84:2:
    include/linux/fortify-string.h:553:25: error: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
      553 |                         __write_overflow_field(p_size_field, size);

As far as I can tell, the warning is caused by the
ambiguity of the union, but what I noticed is that
it also seems to copy a buffer to itself, as 'md'
is initialized to tun_dst->u.tun_info as well.

Is this intentional?

      Arnd
