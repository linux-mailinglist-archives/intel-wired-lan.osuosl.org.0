Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AE75A7AF5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 12:07:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BCAD41863;
	Wed, 31 Aug 2022 10:07:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BCAD41863
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661940451;
	bh=v41p0LNCh2Xo44zHCxfgpFIv5NpO3WIN3ERlf4+JmV0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MB8nRs69AA7Es+BSyC9wMa2SaYN4sElm8F49bmXZSTf4dzIOXuBP1bdctSkDZp78M
	 myKOxyEY1kZEY1a8cgE/Y+YCewUVRzXzBC3PATMk0dvLpULdK+Gt32KxFNdWlZiRCx
	 p3452OrUlvvM90a+q4/RAqLuCybOtJLz8Kg1Ebd82ZJnIcbhW5N+RIhvcpz6GF6vvm
	 8HlcnbfBGcHaSUNOUqb0rh51axSk/qkB5XajszCkR+bp+Vz/m2hqYx6FV8LLa16jjk
	 Hd3RIvANAyskGOpZe0yWBtpEAKB4L38gonbUjL4m/TEMF9QH4GQau1IGuy/WWo4DU7
	 rjWPrs/eNPhDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7kQFszsO0_WJ; Wed, 31 Aug 2022 10:07:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BD224183F;
	Wed, 31 Aug 2022 10:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BD224183F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 15E8A1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E390361083
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E390361083
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t-EwachRUUGX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 10:07:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A79E60B6C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A79E60B6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:07:23 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-509-rgYDELznNpKtlnxaqGExeg-1; Wed, 31 Aug 2022 06:07:19 -0400
X-MC-Unique: rgYDELznNpKtlnxaqGExeg-1
Received: by mail-wm1-f72.google.com with SMTP id
 h133-20020a1c218b000000b003a5fa79008bso11501728wmh.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 03:07:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=N6qTg3zNKwUeekagaUfED5pDaKwZg5a4Zk5uKz1rgHU=;
 b=qLPNDme3RAbgrOHIqd0tvhxJCu9n9k3GOCFolbr1C3Z6/EmtVBhxp778Flf2DuMTaP
 1Jtfp1yYlDB1EZeSd5XdrtN/vY9sZjXoxM/QXVakIYeJh/O5YxydhkbbOkpm1dI+HO66
 jKuQ/1G/cK6EObPFUd3IapcX7VZcsmPaqMyFPdN2gKGG/8WjYclhEqjiBmIusPY1MCSn
 auur/6zGD00pOqwztSqbKW3txR7qXCeVB/70LQonwBFo/8I2EM2jrta0vgZqY8teO1vi
 w9pd8CPfH2Jit8EI6n3pcY/FWyMgU1hzpjEzji7xlAd614+TyXf51Ai8NcuaDNMy2L10
 Ge1w==
X-Gm-Message-State: ACgBeo2qA79kV5nq8q3nvX3pBqDwnzjjLATpCu6W+6csCm6HsZaGQnZM
 Hnd/b+uUCgJuggmqmdck23qgl64CjAR/eLTbTsK8XpC1487k07vKwsvRnYngVa5rIvKWxjDVUXO
 UNH2V2zM0u1k+R8NaPIHFZjkP+H0VvA==
X-Received: by 2002:a5d:4601:0:b0:21d:8db4:37c with SMTP id
 t1-20020a5d4601000000b0021d8db4037cmr11399424wrq.390.1661940438333; 
 Wed, 31 Aug 2022 03:07:18 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6kHs+Sp137BQe+CSjnCGyd7UQhlMUbSrC1+biZ71oz51MxP8zhkNF8F0zWk3I3qThpWDFz7A==
X-Received: by 2002:a5d:4601:0:b0:21d:8db4:37c with SMTP id
 t1-20020a5d4601000000b0021d8db4037cmr11399392wrq.390.1661940438091; 
 Wed, 31 Aug 2022 03:07:18 -0700 (PDT)
Received: from pc-4.home (2a01cb058918ce00dd1a5a4f9908f2d5.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8918:ce00:dd1a:5a4f:9908:f2d5])
 by smtp.gmail.com with ESMTPSA id
 x4-20020a5d4904000000b0021e30e9e44asm11634009wrq.53.2022.08.31.03.07.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 03:07:17 -0700 (PDT)
Date: Wed, 31 Aug 2022 12:07:15 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20220831100715.GB18919@pc-4.home>
References: <20220829094412.554018-1-wojciech.drewek@intel.com>
 <20220829094412.554018-3-wojciech.drewek@intel.com>
MIME-Version: 1.0
In-Reply-To: <20220829094412.554018-3-wojciech.drewek@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1661940442;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=N6qTg3zNKwUeekagaUfED5pDaKwZg5a4Zk5uKz1rgHU=;
 b=XQWouDKENT5kivYZwMmsDBEGDBQoM6fH8fTsED4FHtuDAtfbA1+mXJwAwnLKYEI3BWwIPV
 7s+4DgL9BHFhS+aHnBadGrS48C64TtvNSeRKt90Z5drfM/DicOW1hjxxub1qQGwc5nk4JJ
 qat1iioCuYs6ej/vkncV0KKsUNZi3Us=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=XQWouDKE
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v2 2/5] flow_dissector:
 Add L2TPv3 dissectors
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, komachi.yoshiki@gmail.com,
 jchapman@katalix.com, edumazet@google.com, boris.sukholitko@broadcom.com,
 louis.peens@corigine.com, intel-wired-lan@lists.osuosl.org, vladbu@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, maksym.glubokiy@plvision.eu, jiri@resnulli.us,
 paulb@nvidia.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 29, 2022 at 11:44:09AM +0200, Wojciech Drewek wrote:
> Allow to dissect L2TPv3 specific field which is:
> - session ID (32 bits)
> 
> L2TPv3 might be transported over IP or over UDP,
> this ipmplementation is only about L2TPv3 over IP.
> IP protocold carries L2TPv3 when ip_proto is

s/protocold/protocol/

> +static void __skb_flow_dissect_l2tpv3(const struct sk_buff *skb,
> +				      struct flow_dissector *flow_dissector,
> +				      void *target_container, const void *data,
> +				      int nhoff, int hlen)
> +{
> +	struct flow_dissector_key_l2tpv3 *key_l2tpv3;
> +	struct {
> +		__be32 session_id;
> +	} *hdr, _hdr;
> +
> +	hdr = __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, hlen, &_hdr);
> +	if (!hdr)
> +		return;
> +
> +	if (!dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_L2TPV3))
> +		return;

I'd find it more logical to test !dissector_uses_key() first, then call
__skb_header_pointer(). But that probably just a personnal preference.

In any case the code looks good to me.

Acked-by: Guillaume Nault <gnault@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
