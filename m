Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EB0566EAF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 14:51:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDB1E40A9A;
	Tue,  5 Jul 2022 12:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDB1E40A9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657025485;
	bh=83eYfrrjilrLQHRueO6M7BXtNuNuGnGM8Ii16OnBgqE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TU7gb8JhPJRVuGe19r07JkpTsklpa0rx4cHIufD16fl8nJu34xU6RynpmZyAhEesM
	 3kzwuYYGPLJJZUZB4SBoYNhFGlmp6VGCctjA+ZAHbj7Tjfk0qtiLz5QlA+A2ZtkYey
	 5wFYRZ2c2iibjCm5Ev8Ko4oe68DBUpFgbUNGxZjvV+8SCY7mC4OyatZFCNncBMRO9D
	 0z3CrtMVAhGIFg2E4V43UO2e8AYVUbmX/U/w6E7K0OnHVj/8EzzVw9de79ipBgTsDU
	 kkoxxvl9PhEzrX5RtvP8R/ux2tXw7XlKGnlZNozoiQq0ElKn/xcwQnFatxgTytoQi3
	 AYfsJtoZWwdMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LRkKdX6xckL; Tue,  5 Jul 2022 12:51:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9349640141;
	Tue,  5 Jul 2022 12:51:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9349640141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED1AA1BF284
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 23:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5A7C40B48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 23:10:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5A7C40B48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCk9pxzoE9h4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 23:10:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59E0A40B43
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59E0A40B43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 23:10:23 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-641-I6i5lWL2N_-AFiheA9N4iw-1; Thu, 30 Jun 2022 19:10:20 -0400
X-MC-Unique: I6i5lWL2N_-AFiheA9N4iw-1
Received: by mail-wm1-f72.google.com with SMTP id
 e24-20020a05600c219800b003a0471b1904so2119161wme.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 16:10:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EnyaAXgd8G1Jiycor/ytC2X3rf2YRxyQ760krhEkaYo=;
 b=Tb8CQZfJWIXYvkLkKpoNhvW8MYMbl6KbCAJxeEmzlc8cx0nE5fGE7HG8r33CxKWvff
 MEboUXNU/sjxyeB83QQieeYGv9jvpFV9HqvpyE7DuRF9yCoZBvOZKnpe/OBzA2bEJ09R
 YMCwyJ50dsKoXSHIXzj9oM4Q53IObxF7r0xRk9UFnf76Hcx+a0PD3uVrub3YztAEZyKO
 6c5TQDJ765/5qK382ZSEFFFJFN1Np0c//uFErl1HMHuMWHD+Vkio51r3wgWSZt1wW6Ni
 FfI3M2Fnfyv+spLjUrUEgheQZUqKzP4qCJ6Xq6cmTNpw3y2RKw7c+5l43xjd12oijgXP
 Jq5g==
X-Gm-Message-State: AJIora99IOLldNkDzKEUZmgXfP9Wuu1dqirClh6YOLZx/k4vYXSr4ic0
 ulFCEzm7d/VhlfzyqObD7ebJFIjrdECFjxyNW1WnjCPUghVEn2sAPQ+KZrqV/aSZH+5+PU+3VvG
 gBtC0qpSMfG1Q3LTzaO5D/NWYKAs0AQ==
X-Received: by 2002:a05:600c:3492:b0:3a1:70dd:9a14 with SMTP id
 a18-20020a05600c349200b003a170dd9a14mr10651019wmq.177.1656630619553; 
 Thu, 30 Jun 2022 16:10:19 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uk01pkc2nbFZ14+mldws4wiQLdxtDiJBxBf4NkJYbqJDFCSCJHdEErYcIXwQJBlFN8hjSvCg==
X-Received: by 2002:a05:600c:3492:b0:3a1:70dd:9a14 with SMTP id
 a18-20020a05600c349200b003a170dd9a14mr10650975wmq.177.1656630619248; 
 Thu, 30 Jun 2022 16:10:19 -0700 (PDT)
Received: from debian.home
 (2a01cb058d1194004161f17a6a9ad508.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8d11:9400:4161:f17a:6a9a:d508])
 by smtp.gmail.com with ESMTPSA id
 r16-20020a05600c35d000b003a0375c4f73sm8495461wmq.44.2022.06.30.16.10.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jun 2022 16:10:18 -0700 (PDT)
Date: Fri, 1 Jul 2022 01:10:16 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220630231016.GA392@debian.home>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
 <20220629143859.209028-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20220629143859.209028-2-marcin.szycik@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Tue, 05 Jul 2022 12:51:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1656630622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EnyaAXgd8G1Jiycor/ytC2X3rf2YRxyQ760krhEkaYo=;
 b=TWUfgsKJ5QYpiURR3NRpUcJ8IFXzTQMuC9qpykG09Q4Oqu6cCBshiTRrdHM5kbDfLokTmz
 tP2ofo3qNg44syCWwrWThVKESNkIsUB0f4evfJ4sVAj1do2qyJAIYjj8yh4aWtpv85DfO4
 HF1q/jTHlg+edgk5/mbvPbgEbWSHqaA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TWUfgsKJ
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v3 1/4] flow_dissector:
 Add PPPoE dissectors
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

On Wed, Jun 29, 2022 at 04:38:56PM +0200, Marcin Szycik wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Allow to dissect PPPoE specific fields which are:
> - session ID (16 bits)
> - ppp protocol (16 bits)
> 
> The goal is to make the following TC command possible:
> 
>   # tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses \
>       flower \
>         pppoe_sid 12 \
>         ppp_proto ip \
>       action drop
> 
> Note that only PPPoE Session is supported.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v3: revert byte order changes in is_ppp_proto_supported from previous 
>     version, add kernel-doc for is_ppp_proto_supported
> v2: use ntohs instead of htons in is_ppp_proto_supported
> 
>  include/net/flow_dissector.h | 11 ++++++++
>  net/core/flow_dissector.c    | 55 ++++++++++++++++++++++++++++++++----
>  2 files changed, 60 insertions(+), 6 deletions(-)
> 
> diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
> index a4c6057c7097..8ff40c7c3f1c 100644
> --- a/include/net/flow_dissector.h
> +++ b/include/net/flow_dissector.h
> @@ -261,6 +261,16 @@ struct flow_dissector_key_num_of_vlans {
>  	u8 num_of_vlans;
>  };
>  
> +/**
> + * struct flow_dissector_key_pppoe:
> + * @session_id: pppoe session id
> + * @ppp_proto: ppp protocol
> + */
> +struct flow_dissector_key_pppoe {
> +	u16 session_id;
> +	__be16 ppp_proto;
> +};

Why isn't session_id __be16 too?

Also, I'm not sure I like mixing the PPPoE session ID and PPP protocol
fields in the same structure: they're part of two different protocols.
However, I can't anticipate any technical problem in doing so, and I
guess there's no easy way to let the flow dissector parse the PPP
header independently. So well, maybe we don't have choice...

>  enum flow_dissector_key_id {
>  	FLOW_DISSECTOR_KEY_CONTROL, /* struct flow_dissector_key_control */
>  	FLOW_DISSECTOR_KEY_BASIC, /* struct flow_dissector_key_basic */
> @@ -291,6 +301,7 @@ enum flow_dissector_key_id {
>  	FLOW_DISSECTOR_KEY_CT, /* struct flow_dissector_key_ct */
>  	FLOW_DISSECTOR_KEY_HASH, /* struct flow_dissector_key_hash */
>  	FLOW_DISSECTOR_KEY_NUM_OF_VLANS, /* struct flow_dissector_key_num_of_vlans */
> +	FLOW_DISSECTOR_KEY_PPPOE,  /* struct flow_dissector_key_pppoe */
>  
>  	FLOW_DISSECTOR_KEY_MAX,
>  };
> diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
> index 6aee04f75e3e..42393af477a2 100644
> --- a/net/core/flow_dissector.c
> +++ b/net/core/flow_dissector.c
> @@ -895,6 +895,39 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
>  	return result == BPF_OK;
>  }
>  
> +/**
> + * is_ppp_proto_supported - checks if inner PPP protocol should be dissected
> + * @proto: protocol type (PPP proto field)
> + */
> +static bool is_ppp_proto_supported(__be16 proto)
> +{
> +	switch (proto) {
> +	case htons(PPP_AT):
> +	case htons(PPP_IPX):
> +	case htons(PPP_VJC_COMP):
> +	case htons(PPP_VJC_UNCOMP):
> +	case htons(PPP_MP):
> +	case htons(PPP_COMPFRAG):
> +	case htons(PPP_COMP):
> +	case htons(PPP_MPLS_UC):
> +	case htons(PPP_MPLS_MC):
> +	case htons(PPP_IPCP):
> +	case htons(PPP_ATCP):
> +	case htons(PPP_IPXCP):
> +	case htons(PPP_IPV6CP):
> +	case htons(PPP_CCPFRAG):
> +	case htons(PPP_MPLSCP):
> +	case htons(PPP_LCP):
> +	case htons(PPP_PAP):
> +	case htons(PPP_LQR):
> +	case htons(PPP_CHAP):
> +	case htons(PPP_CBCP):
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  /**
>   * __skb_flow_dissect - extract the flow_keys struct and return it
>   * @net: associated network namespace, derived from @skb if NULL
> @@ -1221,19 +1254,29 @@ bool __skb_flow_dissect(const struct net *net,
>  		}
>  
>  		nhoff += PPPOE_SES_HLEN;
> -		switch (hdr->proto) {
> -		case htons(PPP_IP):
> +		if (hdr->proto == htons(PPP_IP)) {
>  			proto = htons(ETH_P_IP);
>  			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> -			break;
> -		case htons(PPP_IPV6):
> +		} else if (hdr->proto == htons(PPP_IPV6)) {
>  			proto = htons(ETH_P_IPV6);
>  			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> -			break;

1)
Looks like you could easily handle MPLS too. Did you skip it on
purpose? (not enough users to justify writing and maintaining
the code?).

I don't mean MPLS has to be supported; I'd just like to know if it was
considered.

2)
Also this whole test is a bit weak: the version, type and code fields
must have precise values for the PPPoE Session packet to be valid.
If either version or type is different than 1, then the packet
advertises a new version of the protocol that we don't know how to parse
(or most probably the packet was forged or corrupted). A non-zero code
is also invalid.

I know the code was already like this before your patch, but it's
probably better to fix it before implementing hardware offload.

3)
Finally, the PPP protocol could be compressed and stored in 1 byte
instead of 2. This case wasn't handled before your patch, but I think
that should be fixed too before implementing hardware offload.

> -		default:
> +		} else if (is_ppp_proto_supported(hdr->proto)) {
> +			fdret = FLOW_DISSECT_RET_OUT_GOOD;
> +		} else {
>  			fdret = FLOW_DISSECT_RET_OUT_BAD;
>  			break;
>  		}
> +
> +		if (dissector_uses_key(flow_dissector,
> +				       FLOW_DISSECTOR_KEY_PPPOE)) {
> +			struct flow_dissector_key_pppoe *key_pppoe;
> +
> +			key_pppoe = skb_flow_dissector_target(flow_dissector,
> +							      FLOW_DISSECTOR_KEY_PPPOE,
> +							      target_container);
> +			key_pppoe->session_id = ntohs(hdr->hdr.sid);
> +			key_pppoe->ppp_proto = hdr->proto;
> +		}
>  		break;
>  	}
>  	case htons(ETH_P_TIPC): {
> -- 
> 2.35.1
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
