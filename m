Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E785776A3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Jul 2022 16:19:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0745040002;
	Sun, 17 Jul 2022 14:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0745040002
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658067558;
	bh=m6pbsJ5ef9kELa9rbJhbx/lqzHieO1WZCPWdAc1HOVI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QDxiCdz997HYkcZP9xAIgF0Jmj2Z9sKAlB6V2mfspOvxbs7RCmV+eDgE6qMgdWnoM
	 jnFLsl76B7Gxxt/vIfDj97j5kjWLi+3DepDco3opnx4ESBON6Rk4acYtNDm2D5cewF
	 49zLJFq3V/hykbTj6mQJ9PmY2jXPdKKfbvhFyliXNIHyJvobJjT+rCZfzcxpjFgx/h
	 zkKcAeDDuQmqC5lHwB7MMbQlXrbKIylYAzSS8aqIANK/GhYyFKeQtTeiosU2ajrZHg
	 c3Ybhmsn2s3lfikmqHAuJ1mMCQJgwb6QPMzVKljHY55rWojyysCWVutdgxgAPJtWWr
	 ProojE+A2sRBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gV-f1bkZj92B; Sun, 17 Jul 2022 14:19:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB7CC40136;
	Sun, 17 Jul 2022 14:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB7CC40136
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DB161BF281
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 14:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1650260B26
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 14:19:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1650260B26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ot6uo7c5nt7 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Jul 2022 14:19:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8730606FF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8730606FF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 14:19:09 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-RD6mH8cxP-eJ0ZFV0_r4Sw-1; Sun, 17 Jul 2022 10:19:01 -0400
X-MC-Unique: RD6mH8cxP-eJ0ZFV0_r4Sw-1
Received: by mail-wm1-f72.google.com with SMTP id
 r10-20020a05600c284a00b003a2ff6c9d6aso6096524wmb.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 07:19:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZXN5d9PmR1bWxOtQJJuDS0yvq9ORJNM/o9bv7t0FtfM=;
 b=QGvZXD1UOQdQNTutLp0hRJhwcGsUjGS0ZsezDx0AS7t/pn2Qp8NcZ1h1e37jjCkD7h
 mut0zj2YDWs44gFRqi/TAWkRPR5BqSiPWz5P/bk0tgM+oEDtt9ieBWwGDxFrdv6+IZLw
 9wZUPgCPibQpfly4HhK4s4FthogiEEZUQu52/NIOCRM8GKELai2xCQT1D4lbI2apgkFA
 49V6Yiayzf8nktpmWkdTXv03RIYhxclgTgRB6u54T4Q2efnPYm3Jvxhr1uGRIr4llePk
 OoY4SolT02wuF1uuUcxdX2tT4zqdgWgK/oL6iNNTam93XXtCJe50yAJMZbucLirFBq1J
 PnOA==
X-Gm-Message-State: AJIora81uZTMlC9MnzocwO/X0DPbDCr8QM0Zlx468ivrmR5cJCtU8HbC
 RcZmFxPO/dxLXT1TCOvDKCal0Jt2GfmpyOyKxlKOXmu4RFX+Sb1CCLf1CjEJ1sRnd//HW66ov2X
 /kHJoFz7bKF34p08RO8Uvqpy/2JcKeA==
X-Received: by 2002:a5d:4b87:0:b0:21d:7019:80c6 with SMTP id
 b7-20020a5d4b87000000b0021d701980c6mr19219079wrt.234.1658067540052; 
 Sun, 17 Jul 2022 07:19:00 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1sNaEvKbutpZ/BTubwQTUJVx19iGzoNuTHgO/zaFD31SqJMlb5VplfxKgnDPMz9VTFHe9C5rg==
X-Received: by 2002:a5d:4b87:0:b0:21d:7019:80c6 with SMTP id
 b7-20020a5d4b87000000b0021d701980c6mr19219051wrt.234.1658067539794; 
 Sun, 17 Jul 2022 07:18:59 -0700 (PDT)
Received: from localhost.localdomain ([185.233.130.50])
 by smtp.gmail.com with ESMTPSA id
 d2-20020a5d5382000000b0021d7122ab80sm8264967wrv.110.2022.07.17.07.18.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 07:18:59 -0700 (PDT)
Date: Sun, 17 Jul 2022 16:18:56 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220717141856.GB3118@localhost.localdomain>
References: <20220715130430.160029-1-marcin.szycik@linux.intel.com>
 <20220715130430.160029-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20220715130430.160029-2-marcin.szycik@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1658067548;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZXN5d9PmR1bWxOtQJJuDS0yvq9ORJNM/o9bv7t0FtfM=;
 b=cyhQqKAXSMaQd7pRl8yo1HzG4dogTstinflxasnxm9p2rx0N+I27fGN8XbS/RD5lB7ikP8
 Gfy+qPgJPdmwcQnrfvQcpaMKaqNvrtiiVfreq1GUgkPS6hr/nllCw/JE8Vx+lkLuW0YhKl
 t7NLcZ+WwEaMV/TlVi3Kp1daWamckXs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cyhQqKAX
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v5 1/4] flow_dissector:
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
 xiyou.wangcong@gmail.com, pabeni@redhat.com, netdev@vger.kernel.org,
 gustavoars@kernel.org, mostrows@speakeasy.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 15, 2022 at 03:04:27PM +0200, Marcin Szycik wrote:
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

The more I think about it, the more I believe we should make this
function more generic by following the Protocol field definition found
in section 2 of RFC 1661:
https://datatracker.ietf.org/doc/html/rfc1661#section-2

I mean, it's very surprising that is_ppp_proto_supported() returns
false for protocols like PPP_IP or PPP_IPV6, which certainly are
supported. Of course, in the context of your patch, PPP_IP and PPP_IPV6
have been tested first, but that makes the code a bit unclear.

We could define a simpler and more generic helper function (probably in
a ppp header file). Something like (unstested):

/* Assumes proto isn't compressed. */
static bool ppp_proto_is_valid(u16 proto) /*
{
	/* Protocol must be odd and the least significant bit of the
	 * most significant octet must be 0 (see RFC 1661, section 2).
	 */
	return !!(proto & 0X0101 == 0x0001)
}

BTW, we don't have to restrict the list of supported protocols to the
PPP_* numbers defined in the kernel as we have no indication that the PPP
frame is going to be handled locally.

> +static bool is_pppoe_ses_hdr_valid(struct pppoe_hdr hdr)
> +{
> +	return hdr.ver == 1 && hdr.type == 1 && hdr.code == 0;
> +}
> +
>  /**
>   * __skb_flow_dissect - extract the flow_keys struct and return it
>   * @net: associated network namespace, derived from @skb if NULL
> @@ -1214,26 +1250,61 @@ bool __skb_flow_dissect(const struct net *net,
>  			struct pppoe_hdr hdr;
>  			__be16 proto;
>  		} *hdr, _hdr;
> +		u16 ppp_proto;
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
> +		/* least significant bit of the least significant octet

That's the least significant bit of the _most significant_ octet (the
one of the least significant octet must always be 1).

> +		 * indicates if protocol field was compressed
> +		 */
> +		ppp_proto = ntohs(hdr->proto);
> +		if (ppp_proto & 256) {

Using hex would improve readability in my opinion (that is,
s/256/0x0100/).

> +			ppp_proto = htons(ppp_proto >> 8);

I don't get why you convert ppp_proto back to network byte order.
That contradicts the type annotation (u16).

> +			nhoff += PPPOE_SES_HLEN - 1;
> +		} else {
> +			ppp_proto = htons(ppp_proto);

Same here. We could leave ppp_proto untouched in this branch.

> +			nhoff += PPPOE_SES_HLEN;
> +		}
> +
> +		if (ppp_proto == htons(PPP_IP)) {

With ppp_proto kept in host byte order, the htons() call would need to
go.

>  			proto = htons(ETH_P_IP);
>  			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> -			break;
> -		case htons(PPP_IPV6):
> +		} else if (ppp_proto == htons(PPP_IPV6)) {

Same here, and in the following 'if' branches.

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

With ppp_proto being u16, we'd now need to call htons(ppp_proto).

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
