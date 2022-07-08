Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD4456C108
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jul 2022 21:05:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 348CD4162B;
	Fri,  8 Jul 2022 19:05:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 348CD4162B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657307145;
	bh=FYp63cjZ5T+esTVl5a8DCh40826cOMwbT/0R3ce60Bo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8tZYBs1UExjXMAirN4J0AZ7Ev5JIHEraXjqRzsx6+zcudToIA//yqdBw1Syjv54s1
	 8n5fwiIWaZ88KlpBdS8zyvSz8+S+k/xWSy6HY5btu/C1jlE99xPdqubJf5i3OMKkes
	 BaxNHYc7iMLkMNj0lzkT0dm3ZdkisLoQ7olCz70SvbRPhvb3x+w6dC6WmZGiJUHy07
	 sXnaDY3Q8UTJwNPcTKFnQRf/EtkngJ85HcbxjoMd9Ex4LY8N9KP8dNQfLPBEPE7SSt
	 MTQL90gXdCvVpxMMkYFQDnXVk45s5E2D5CKvW0R27L6Vc7HvecoNSNrsdDvNcU9P6K
	 RxceWVch6H/SA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TPaoDlZMdmrd; Fri,  8 Jul 2022 19:05:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E024C4049B;
	Fri,  8 Jul 2022 19:05:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E024C4049B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15AC41BF38D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 19:05:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA0C384899
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 19:05:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA0C384899
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RS_HXOMSUD35 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jul 2022 19:05:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 195D8808A9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 195D8808A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 19:05:34 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-344-mj9NJ_3UOVKzGSiaW_XZrQ-1; Fri, 08 Jul 2022 15:05:32 -0400
X-MC-Unique: mj9NJ_3UOVKzGSiaW_XZrQ-1
Received: by mail-wm1-f72.google.com with SMTP id
 c187-20020a1c35c4000000b003a19b3b9e6cso1347929wma.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Jul 2022 12:05:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/LtUZ1p7iDStBuk6eZV+7te3JF5akZlDsTLYGSAakjo=;
 b=mcHEmsby6eHzw1MuBo9KSiNm/mOSUzgojMlK51OVHWKP6bJn9lEnZxz7Qi8ZJkBkqI
 Hvsh6OUIe7OLy43YSZDD0fIEx3NpNeXymp326/a/eXMjmJRw6D5zBmkeEc6tIh0Pz/0w
 /1SEi0eBcFVbW1WlllnbdTd1V63vMFnk2BiYBmxceyYQzYucNhss50vY1fcydrBvUzS3
 D56+4N+v/GYTaVeU24ceMN+eKZd7EgUVJD/BdUyF2WthHTSyWmxcB8mQg8m+IxniVDVS
 tnu5pouINc/4BuQicL6fju49Npq923Hj0DsOgRdFNw/mq7+HB/as6anba18EEFCEALNV
 ocYg==
X-Gm-Message-State: AJIora9RbfrlwpswxULWhRs7+Nw1CvNgqeeX55NHFC5oqbyWE8lVsSio
 1Aan21uibFE0FgXqT5twWvsWzTL+PET7sQDAksrO0s2tAlryeue9SO/UURGy/kmxHiYjZVhP2CE
 r3hfJDSjDIk58a+NcR753N9VfT86Szw==
X-Received: by 2002:a05:600c:3505:b0:3a1:9fbb:4d59 with SMTP id
 h5-20020a05600c350500b003a19fbb4d59mr1363158wmq.165.1657307131417; 
 Fri, 08 Jul 2022 12:05:31 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vkVsZBVD+BagsA8GvwTezhU7Tl9GrK9TwhOHHD1nXvIkwIe1fTwWJdE5d3QaektCCcP6hopg==
X-Received: by 2002:a05:600c:3505:b0:3a1:9fbb:4d59 with SMTP id
 h5-20020a05600c350500b003a19fbb4d59mr1363115wmq.165.1657307131065; 
 Fri, 08 Jul 2022 12:05:31 -0700 (PDT)
Received: from debian.home
 (2a01cb058d1194004161f17a6a9ad508.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8d11:9400:4161:f17a:6a9a:d508])
 by smtp.gmail.com with ESMTPSA id
 q8-20020adff508000000b0021d6d9c0bd9sm13191345wro.82.2022.07.08.12.05.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jul 2022 12:05:30 -0700 (PDT)
Date: Fri, 8 Jul 2022 21:05:28 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220708190528.GB3166@debian.home>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
 <20220708122421.19309-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20220708122421.19309-2-marcin.szycik@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1657307133;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/LtUZ1p7iDStBuk6eZV+7te3JF5akZlDsTLYGSAakjo=;
 b=Hxn33yJsx+zv8cQ04eCOQvhNUBFLvAsPFzAGBARhEIgNZk32XAlEiQxYSWpeyzwiItNMJG
 /YXbRRYGTq3OFFkcIWVpImWGFaZNe9Le4Ni7pjQprkLO8NlvXymHNHZbs893pseFObuPJs
 FAtPgN5H8JZ+DEY1nwShks+r/yDyP54=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Hxn33yJs
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v4 1/4] flow_dissector:
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

On Fri, Jul 08, 2022 at 02:24:18PM +0200, Marcin Szycik wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Allow to dissect PPPoE specific fields which are:
> - session ID (16 bits)
> - ppp protocol (16 bits)
> - type (16 bits) - this is PPPoE ethertype, for now only
>   ETH_P_PPP_SES is supported, possible ETH_P_PPP_DISC
>   in the future
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
> v4:
>   * pppoe header validation
>   * added MPLS dissection
>   * added support for compressed ppp protocol field
>   * flow_dissector_key_pppoe::session_id stored in __be16
>   * new field: flow_dissector_key_pppoe::type
> v3: revert byte order changes in is_ppp_proto_supported from
>     previous version
> v2: ntohs instead of htons in is_ppp_proto_supported
> 
>  include/net/flow_dissector.h | 13 ++++++
>  net/core/flow_dissector.c    | 84 +++++++++++++++++++++++++++++++++---
>  2 files changed, 90 insertions(+), 7 deletions(-)
> 
> diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
> index a4c6057c7097..af0d429b9a26 100644
> --- a/include/net/flow_dissector.h
> +++ b/include/net/flow_dissector.h
> @@ -261,6 +261,18 @@ struct flow_dissector_key_num_of_vlans {
>  	u8 num_of_vlans;
>  };
>  
> +/**
> + * struct flow_dissector_key_pppoe:
> + * @session_id: pppoe session id
> + * @ppp_proto: ppp protocol
> + * @type: pppoe eth type
> + */
> +struct flow_dissector_key_pppoe {
> +	__be16 session_id;
> +	__be16 ppp_proto;
> +	__be16 type;

I don't understand the need for the new 'type' field.

> +};
> +
>  enum flow_dissector_key_id {
>  	FLOW_DISSECTOR_KEY_CONTROL, /* struct flow_dissector_key_control */
>  	FLOW_DISSECTOR_KEY_BASIC, /* struct flow_dissector_key_basic */
> @@ -291,6 +303,7 @@ enum flow_dissector_key_id {
>  	FLOW_DISSECTOR_KEY_CT, /* struct flow_dissector_key_ct */
>  	FLOW_DISSECTOR_KEY_HASH, /* struct flow_dissector_key_hash */
>  	FLOW_DISSECTOR_KEY_NUM_OF_VLANS, /* struct flow_dissector_key_num_of_vlans */
> +	FLOW_DISSECTOR_KEY_PPPOE, /* struct flow_dissector_key_pppoe */
>  
>  	FLOW_DISSECTOR_KEY_MAX,
>  };
> diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
> index 6aee04f75e3e..3a90219d2354 100644
> --- a/net/core/flow_dissector.c
> +++ b/net/core/flow_dissector.c
> @@ -895,6 +895,42 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
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
> +static bool is_pppoe_ses_hdr_valid(struct pppoe_hdr hdr)
> +{
> +	return hdr.ver == 1 && hdr.type == 1 && hdr.code == 0;
> +}
> +
>  /**
>   * __skb_flow_dissect - extract the flow_keys struct and return it
>   * @net: associated network namespace, derived from @skb if NULL
> @@ -1214,26 +1250,60 @@ bool __skb_flow_dissect(const struct net *net,
>  			struct pppoe_hdr hdr;
>  			__be16 proto;
>  		} *hdr, _hdr;
> +		__be16 ppp_proto;
> +
>  		hdr = __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, hlen, &_hdr);
>  		if (!hdr) {
>  			fdret = FLOW_DISSECT_RET_OUT_BAD;
>  			break;
>  		}
>  
> -		nhoff += PPPOE_SES_HLEN;
> -		switch (hdr->proto) {
> -		case htons(PPP_IP):
> +		if (!is_pppoe_ses_hdr_valid(hdr->hdr)) {
> +			fdret = FLOW_DISSECT_RET_OUT_BAD;
> +			break;
> +		}
> +
> +		/* least significant bit of the first byte
> +		 * indicates if protocol field was compressed
> +		 */
> +		if (hdr->proto & 1) {
> +			ppp_proto = hdr->proto << 8;

This is little endian specific code. We can't make such assumptions.

> +			nhoff += PPPOE_SES_HLEN - 1;
> +		} else {
> +			ppp_proto = hdr->proto;
> +			nhoff += PPPOE_SES_HLEN;
> +		}
> +
> +		if (ppp_proto == htons(PPP_IP)) {
>  			proto = htons(ETH_P_IP);
>  			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> -			break;
> -		case htons(PPP_IPV6):
> +		} else if (ppp_proto == htons(PPP_IPV6)) {
>  			proto = htons(ETH_P_IPV6);
>  			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> -			break;
> -		default:
> +		} else if (ppp_proto == htons(PPP_MPLS_UC)) {
> +			proto = htons(ETH_P_MPLS_UC);
> +			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> +		} else if (ppp_proto == htons(PPP_MPLS_MC)) {
> +			proto = htons(ETH_P_MPLS_MC);
> +			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> +		} else if (is_ppp_proto_supported(ppp_proto)) {
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
> +			key_pppoe->session_id = hdr->hdr.sid;
> +			key_pppoe->ppp_proto = ppp_proto;
> +			key_pppoe->type = htons(ETH_P_PPP_SES);
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
