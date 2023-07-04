Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A29746E49
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 12:10:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F185F40977;
	Tue,  4 Jul 2023 10:10:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F185F40977
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688465426;
	bh=x3tZCZezSI0i7uLWJ7QXwFU7VlfaLIxq0mEQFML+MhA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ux198iafpiZfTMxvSZs2aLVzXohurNdBMbaMHbSg4guom9DO+X7gmwQoV5pQ34N1B
	 ifn11YLO2UJyjFNRpAqZ8IWiCeXP41Td1XudCKFYjXoqpQ08IfLOwBD6ZjnftWnYhA
	 XzUXMjnonz6S7gtV9Td8p+bxp/BiOrZvV7BySd0xJ+YbD34FD9sJ3InGSwAHl8fYUZ
	 0mti7OHR+RkXHAaGyTPsjrIfUL6oD0OPwU4XNFVoESTjl6ipvEi/lrdZA5rqt9NyDe
	 iqI3yFDrzK9rzalRoSkzBOjHcDBNUbwmvBsbmucKto5ygoykkq48slR6B5IFmRIF8y
	 edHoTCjWaNXzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GLiCVS4FaHS5; Tue,  4 Jul 2023 10:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 596154093B;
	Tue,  4 Jul 2023 10:10:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 596154093B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C62A01BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 10:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C9384093B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 10:10:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C9384093B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bLD-XynLZFZk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 10:10:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41B9140937
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41B9140937
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 10:10:17 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-633-E2xGHmMNNeyhJ5IWz5rIaA-1; Tue, 04 Jul 2023 06:10:15 -0400
X-MC-Unique: E2xGHmMNNeyhJ5IWz5rIaA-1
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-7673887b2cfso150759585a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Jul 2023 03:10:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688465414; x=1691057414;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rwDSntNr5wEEbcV6kdAG97wPrmyPp7RMUEimzXt++K8=;
 b=P826gZsq9pUP4UL1Gdm6MHWYdfttgW4yEaWPIhfWGOgIw4nG74LwOOtdkuj0CDaPD7
 pJNF7DGkFou/Rr8HmUVEh5INYv6UkrddXV1Fa7QOIt1HVaUOqn9xp8hhtAURPutCPi1g
 tq6m5BaGFIDpXIuyxQgo42etcQo05O1zg3nWKfETfWIP/PrTm0o4K+NsBfLrZXjHKJwb
 OC09fHvUgQt/ieXUDqOF/q8TLhsWz4YHy3fWEHkvCOvBcIoUAZlsmiBeBrKoV0ijmx5W
 ch0vuAVvFcMxyvG8lB7Yn0suEAa5WVYi9EQ1u3SpQME4vLk3AtaiCzseBIO5OjuYMWxv
 tFtw==
X-Gm-Message-State: AC+VfDydAgaJbv61nj9NP3cNWSYX2MKWYriGXQJe3tA/BQRFpPvcKPBa
 +W+9CgmlMSck4+8T/VCYpTfdelEnD2aetvfeuE6BeLj+uE00lHvYmfmSgk/G5Tn5bC+zAeAejW/
 08AUWN15+IUMrZOfdlaLQrKehKJelLw==
X-Received: by 2002:a05:620a:45a7:b0:767:1a23:137 with SMTP id
 bp39-20020a05620a45a700b007671a230137mr15037646qkb.2.1688465414355; 
 Tue, 04 Jul 2023 03:10:14 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5lFZqFiRa5rblBT821TamXePsU5poL/pAZQagGwI12ATgJwdlndUduhu0Q/jSAUq02yi0A2Q==
X-Received: by 2002:a05:620a:45a7:b0:767:1a23:137 with SMTP id
 bp39-20020a05620a45a700b007671a230137mr15037629qkb.2.1688465414006; 
 Tue, 04 Jul 2023 03:10:14 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-247-156.dyn.eolo.it.
 [146.241.247.156]) by smtp.gmail.com with ESMTPSA id
 g16-20020a05620a13d000b0076753219bb1sm4115061qkl.29.2023.07.04.03.10.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Jul 2023 03:10:13 -0700 (PDT)
Message-ID: <92a4d42491a2c219192ae86fa04b579ea3676d8c.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Tue, 04 Jul 2023 12:10:10 +0200
In-Reply-To: <CAA85sZs_H3Dc-mYnj8J5VBEwUJwbHUupP+U-4eG20nfAHBtv4w@mail.gmail.com>
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
 <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
 <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
 <ffb554bfa4739381d928406ad24697a4dbbbe4a2.camel@redhat.com>
 <CAA85sZunA=tf0FgLH=MNVYq3Edewb1j58oBAoXE1Tyuy3GJObg@mail.gmail.com>
 <CAA85sZsH1tMwLtL=VDa5=GBdVNWgifvhK+eG-hQg69PeSxBWkg@mail.gmail.com>
 <CAA85sZu=CzJx9QD87-vehOStzO9qHUSWk6DXZg3TzJeqOV5-aw@mail.gmail.com>
 <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
 <CAA85sZuuwxtAQcMe3LHpFVeF7y-bVoHtO1nukAa2+NyJw3zcyg@mail.gmail.com>
 <CAA85sZurk7-_0XGmoCEM93vu3vbqRgPTH4QVymPR5BeeFw6iFg@mail.gmail.com>
 <486ae2687cd2e2624c0db1ea1f3d6ca36db15411.camel@redhat.com>
 <CAA85sZsJEZK0g0fGfH+toiHm_o4pdN+Wo0Wq9fgsUjHXGxgxQA@mail.gmail.com>
 <CAA85sZs4KkfVojx=vxbDaWhWRpxiHc-RCc2OLD2c+VefRjpTfw@mail.gmail.com>
 <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
 <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
 <CAA85sZs2biYueZsbDqdrMyYfaqH6hnSMpymgbsk=b3W1B7TNRA@mail.gmail.com>
 <CAA85sZs_H3Dc-mYnj8J5VBEwUJwbHUupP+U-4eG20nfAHBtv4w@mail.gmail.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688465416;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dji8hAs7cBpwFX8AofIUQNoOgd28YSA/w6cr+c2a454=;
 b=EPsP6mOpMVWb2/3e8tcc3/IM0Qn92UZe+V3x2IEZdmiadcYTbQbbTwa/+VZpYeiE1vyeug
 Sg0viFfCrN0oncIWLOXNzazHfVNzvGUueMMqON9yEMqo4X26dVNAmEl2x1Vc6pAfvLxJgQ
 jSNKXdkVtGitz1V84kR/GdO+MaxVSSY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EPsP6mOp
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-07-03 at 11:37 +0200, Ian Kumlien wrote:
> So, got back, switched to 6.4.1 and reran with kmemleak and kasan
> 
> I got the splat from:
> diff --git a/net/core/skbuff.c b/net/core/skbuff.c
> index cea28d30abb5..701c1b5cf532 100644
> --- a/net/core/skbuff.c
> +++ b/net/core/skbuff.c
> @@ -4328,6 +4328,9 @@ struct sk_buff *skb_segment_list(struct sk_buff *skb,
> 
>         skb->prev = tail;
> 
> +       if (WARN_ON_ONCE(!skb->next))
> +               goto err_linearize;
> +
>         if (skb_needs_linearize(skb, features) &&
>             __skb_linearize(skb))
>                 goto err_linearize;
> 
> I'm just happy i ran with dmesg -W since there was only minimal output
> on the console:
> [39914.833696] rcu: INFO: rcu_preempt self-detected stall on CPU
> [39914.839598] rcu:     2-....: (20997 ticks this GP)
> idle=dd64/1/0x4000000000000000 softirq=4633489/4633489 fqs=4687
> [39914.849839] rcu:     (t=21017 jiffies g=18175157 q=45473 ncpus=12)
> [39977.862108] rcu: INFO: rcu_preempt self-detected stall on CPU
> [39977.868002] rcu:     2-....: (84001 ticks this GP)
> idle=dd64/1/0x4000000000000000 softirq=4633489/4633489 fqs=28434
> [39977.878340] rcu:     (t=84047 jiffies g=18175157 q=263477 ncpus=12)
> [40040.892521] rcu: INFO: rcu_preempt self-detected stall on CPU
> [40040.898414] rcu:     2-....: (147006 ticks this GP)
> idle=dd64/1/0x4000000000000000 softirq=4633489/4633489 fqs=53043
> [40040.908831] rcu:     (t=147079 jiffies g=18175157 q=464422 ncpus=12)
> [40065.080842] ixgbe 0000:06:00.1 eno2: Reset adapter

Ouch, just another slightly different issue, apparently :(

I'll try some wild guesses. The rcu stall could cause the OOM observed
in the previous tests. Here we the OOM did not trigger because due to
kasan/kmemleak the kernel is able to process a lesser number of packets
in the same period of time.

[...]
> [39914.857231] skb_segment (net/core/skbuff.c:4519)

I *think* this could be looping "forever", if gso_size becomes 0, which
is in turn completely unexpected ...


> [39914.857257] ? write_profile (kernel/stacktrace.c:83)
> [39914.857296] ? pskb_extract (net/core/skbuff.c:4360)
> [39914.857320] ? rt6_score_route (net/ipv6/route.c:713 (discriminator 1))
> [39914.857346] ? llist_add_batch (lib/llist.c:33 (discriminator 14))
> [39914.857379] __udp_gso_segment (net/ipv4/udp_offload.c:290)
> [39914.857413] ? ip6_dst_destroy (net/ipv6/route.c:788)
> [39914.857442] udp6_ufo_fragment (net/ipv6/udp_offload.c:47)
> [39914.857472] ? udp6_gro_complete (net/ipv6/udp_offload.c:20)
> [39914.857498] ? ipv6_gso_pull_exthdrs (net/ipv6/ip6_offload.c:53)
> [39914.857528] ipv6_gso_segment (net/ipv6/ip6_offload.c:119
> net/ipv6/ip6_offload.c:74)
> [39914.857557] ? ipv6_gso_pull_exthdrs (net/ipv6/ip6_offload.c:76)
> [39914.857583] ? nft_update_chain_stats (net/netfilter/nf_tables_core.c:254)
> [39914.857612] ? fib6_select_path (net/ipv6/route.c:458)
> [39914.857643] skb_mac_gso_segment (net/core/gro.c:141)
> [39914.857673] ? skb_eth_gso_segment (net/core/gro.c:127)
> [39914.857702] ? ipv6_skip_exthdr (net/ipv6/exthdrs_core.c:190)
> [39914.857726] ? kasan_save_stack (mm/kasan/common.c:47)
> [39914.857758] __skb_gso_segment (net/core/dev.c:3401 (discriminator 2))
> [39914.857787] udpv6_queue_rcv_skb (./include/net/udp.h:492
> net/ipv6/udp.c:796 net/ipv6/udp.c:787)
> [39914.857816] __udp6_lib_rcv (net/ipv6/udp.c:906 net/ipv6/udp.c:1013)

... but this means we are processing a multicast packet, likely skb is
cloned. If one of the clone instance enters simultaneusly
skb_segment_list() the latter would inconditionally call:

	skb_gso_reset(skb);

clearing the gso area in the shared info and causing unexpected results
(possibly the memory corruption observed before, and the above RCU
stall) for the other clone instances.

Assuming there are no other issues and that the above is not just a
side effect of ENOCOFFEE here, the following should possibly solve,
could you please add it to your testbed? (still with kasan+previous
patch, kmemleak is possibly not needed).

Thanks!
---
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 6c5915efbc17..ac1ca6c7bff9 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -4263,6 +4263,11 @@ struct sk_buff *skb_segment_list(struct sk_buff *skb,
 
 	skb_shinfo(skb)->frag_list = NULL;
 
+	/* later code will clear the gso area in the shared info */
+	err = skb_header_unclone(skb, GFP_ATOMIC);
+	if (err)
+		goto err_linearize;
+
 	while (list_skb) {
 		nskb = list_skb;
 		list_skb = list_skb->next;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
