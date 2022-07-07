Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 325D856A530
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 16:14:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9126083FC0;
	Thu,  7 Jul 2022 14:14:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9126083FC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657203269;
	bh=Dk/++dgv+MupuxtH8OMp/k6YJ0BD0rn36w1a7pfdTvw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MovgAKtoHHnV2HYSP21oXjAbj9IITqLOeJceoJoj+akRiMIf3a434Ksh+XqyStk5Y
	 8llcNX9w1Pl9Ve8KhpYPE+7k5iWbvbykThwnudEaCma1JTuHCk/gBWYm4Ls4vtbLM6
	 vZ4UNiVTZxPLxCoqSjyhFpUI1VySeoIo9BZmXP+mm5ivfO0pyGMczWgGkc0LDQE35i
	 LDYPYe33+RfCv7G4uBBl9k9nAlHhkXOLoyBf32foJu5n3JSMsq3/pTCkedw1l6nIsU
	 W+NjOrMeJoOduMy0u6r4daZKj/rLw2WjKpDdsa2K08WXtKbjKwibiTIq1lsZxlFpjB
	 G8lGKJOK2A1QA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Imw0egwW4aY2; Thu,  7 Jul 2022 14:14:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C26A83FC2;
	Thu,  7 Jul 2022 14:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C26A83FC2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B491B1BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 14:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D87040FD3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 14:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D87040FD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oZK4aiKQiDhG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 14:14:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A57EA40D99
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A57EA40D99
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 14:14:22 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-wYldcAoYPL2J0HO3H6MOSA-1; Thu, 07 Jul 2022 10:14:20 -0400
X-MC-Unique: wYldcAoYPL2J0HO3H6MOSA-1
Received: by mail-wr1-f69.google.com with SMTP id
 e6-20020adfc846000000b0021d2af9adb6so3334592wrh.18
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Jul 2022 07:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iKA2qidqE9pif8xksazqs8JG1hIHW8krOJ1dxi9lmZ8=;
 b=ukAlvotNt3TUeEPrSAM+x9HRZhwh6Kw9PJY7yiLQzNKKAdIpPvzGap+2CbCGXaAMYv
 mP3/mVKlP4+Ocz7wi2z1DEMH3NtclsUbDpqVC9srPiFDm0VDPP30F37mZx0dWzjr3Lly
 m3kNmPhrr0cUf8wJjd6wi6WrA6F4sfyvQIMfJiL6FArlM2BFOvtdHM8ChSjcLxpOuRgZ
 MWxWpdzPxLOXwnkUZedOW5ycpaSmFmHG7a9fB65Mir2SGCgIMMvcrlXmqZrDcc+kwDzd
 LpVRGWg3O6fuyv2Xe0zBvEiHxnzhsOiTW8YZF3U3QUwqjWmdTK9ZANVyRaBr+m1E89XP
 h3nw==
X-Gm-Message-State: AJIora+RlU4UVkLgHN4eFGxeme55ooViydbr7vUl78fwD8t8Pzo8X4c0
 gp2NY7qKxeWXrmukit/e53NuHh+CKfQJOxCeu6vP28jp92ocCQLCW3p9tpYDJjcwnNcfUpHfvT1
 ZooTck9JZEwSXSymXL3uorKfFbqq3GA==
X-Received: by 2002:adf:e949:0:b0:21d:89d4:91b3 with SMTP id
 m9-20020adfe949000000b0021d89d491b3mr2094524wrn.162.1657203259005; 
 Thu, 07 Jul 2022 07:14:19 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1t0tC7akjIJ0A2ue8fgkY10fu239iXuCRNeR9TTMvlyyTI5Zl5gI7Am80XPsX5PUO/VLRRMWw==
X-Received: by 2002:adf:e949:0:b0:21d:89d4:91b3 with SMTP id
 m9-20020adfe949000000b0021d89d491b3mr2094472wrn.162.1657203258587; 
 Thu, 07 Jul 2022 07:14:18 -0700 (PDT)
Received: from debian.home
 (2a01cb058d1194004161f17a6a9ad508.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8d11:9400:4161:f17a:6a9a:d508])
 by smtp.gmail.com with ESMTPSA id
 b4-20020a5d6344000000b0021d68a504cbsm12517211wrw.94.2022.07.07.07.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jul 2022 07:14:17 -0700 (PDT)
Date: Thu, 7 Jul 2022 16:14:15 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220707141415.GB7483@debian.home>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
 <20220629143859.209028-5-marcin.szycik@linux.intel.com>
 <20220630231244.GC392@debian.home>
 <7a706a7e-d3bd-b4da-fa68-2cabf3e75871@linux.intel.com>
 <7aa3a974-6575-ade6-b863-feb25736ec0f@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <7aa3a974-6575-ade6-b863-feb25736ec0f@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1657203261;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iKA2qidqE9pif8xksazqs8JG1hIHW8krOJ1dxi9lmZ8=;
 b=F97WQ0ih57hOiHcfRQZ85dvtfLGuWlDSyV1idzYhdZ3k8vsrAf1jcXhOPGgEtoUB8vOpmk
 Ny5pl9e2IjZUGWMJjr8F7g3C18BBcC2XOLn/p1HJTHij5LehmPw9OZiqOnNNs+474zHUkt
 Gu01uGQYU5HaZyKpGhjD3YFb8ZU4C6Q=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=F97WQ0ih
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v3 4/4] ice: Add support
 for PPPoE hardware offload
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 paulus@samba.org, jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, zhangkaiheb@126.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, komachi.yoshiki@gmail.com, jhs@mojatatu.com,
 mostrows@earthlink.net, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 netdev@vger.kernel.org, gustavoars@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 05, 2022 at 11:54:08AM +0200, Marcin Szycik wrote:
> 
> 
> On 01-Jul-22 18:12, Marcin Szycik wrote:
> > 
> > 
> > On 01-Jul-22 01:12, Guillaume Nault wrote:
> >> On Wed, Jun 29, 2022 at 04:38:59PM +0200, Marcin Szycik wrote:
> >>> Add support for creating PPPoE filters in switchdev mode. Add support
> >>> for parsing PPPoE and PPP-specific tc options: pppoe_sid and ppp_proto.
> >>>
> >>> Example filter:
> >>> tc filter add dev $PF1 ingress protocol ppp_ses prio 1 flower pppoe_sid \
> >>>     1234 ppp_proto ip skip_sw action mirred egress redirect dev $VF1_PR
> >>>
> >>> Changes in iproute2 are required to use the new fields.
> >>>
> >>> ICE COMMS DDP package is required to create a filter as it contains PPPoE
> >>> profiles. Added a warning message when loaded DDP package does not contain
> >>> required profiles.
> >>>
> >>> Note: currently matching on vlan + PPPoE fields is not supported. Patch [0]
> >>> will add this feature.
> >>>
> >>> [0] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220420210048.5809-1-martyna.szapar-mudlaw@intel.com
> >>
> >> Out of curiosity, can ice direct PPPoE Session packets to different
> >> queues with RSS (based on the session ID)?
> > 
> > Hardware should support it, but I'm not sure if it's possible with the current driver and how to configure it. I'll try to find out.
> 
> From what I understand, currently it's not possible to configure RSS for PPPoE session id, because ethtool does not support PPPoE.

Thanks, that's interesting. PPPoE support in RSS would have been useful
to me a few years ago. I've heard some former collegues tried to use
eBPF to work around this limitation and spread packets to different
cores.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
