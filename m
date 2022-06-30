Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB3E566EB1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 14:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D468260F1E;
	Tue,  5 Jul 2022 12:51:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D468260F1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657025489;
	bh=4+kqTdTTQ7rAP3HAzp48Y0IpFwJo7J4pLRdYdN4xleQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nqgE4GdYVHhygpZuNVjZ290GXryokzhAsIqBL1gLtfJDXoHznAt0KFexOITKA0cNO
	 DBXKb7Ft4WoGzWvF6w1JU0w/RIDZy514EXpzLs29MaQgYL+nT4ALb5bGmAKA05dxLq
	 85kndSK4MDWVRnAUmXuX2SpbIALRka5p/jDA905Vet0t0fcem8jxPzCOTPoBP1TZ64
	 ctzXzLgc3rPyuojWDa2mgwTzNLN7p0YsZwCPbmRUqcx9B2X9gj5+Fq7iSibij1Qc/s
	 guHTBl+2rXLm12lcK4zgaMmGruEKONwfGacp1ol+267do5MdBzv53Ew7r7o3YoE1Mz
	 ccfu6QJ3e/yiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ayxvawYXB8Rh; Tue,  5 Jul 2022 12:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95BE360EFF;
	Tue,  5 Jul 2022 12:51:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95BE360EFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B3181BF284
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 23:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 037F741727
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 23:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 037F741727
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KnlDM5Hbog08 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 23:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77EE741706
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77EE741706
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 23:11:53 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-557-Ih1MNTWYO5m2NW9zdE1Aqg-1; Thu, 30 Jun 2022 19:11:51 -0400
X-MC-Unique: Ih1MNTWYO5m2NW9zdE1Aqg-1
Received: by mail-wr1-f69.google.com with SMTP id
 n5-20020adf8b05000000b00219ece7272bso61741wra.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 16:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qbPBUmvK6wYEp85KbixKxSh0oKKcf09knZROWjKJDO4=;
 b=YA1tR9CzFn734of6FNur3ultdrIM9HTjt55Exg7Sc6wpJkqc12usKJx9kX9Pq34170
 RHjMNA44YS2vI4BUUCbfFYjAfy+FH9KwhyH2IPqNVUjFIZjT5XBMQusmTMs7kkXnkGUT
 uNaSglm0i3mnRzjxqnFM2aFjqxB+74kXnUwmNfufIsxUoJQsF5ix+3mGKalT+q2pj5Q9
 fkzXVwZCeyMtidCPPjhj8dG95DZUpxKnzTKp5P0HXiCZqpLmuyy7+tvpSYjmnoxCCFoo
 KhUoP4z0rulmwLog0TOnlFkM3JDH/XNH0HW5d/dTdtqrjN0yOyr345ozb/GrrUgtwrRJ
 FBUw==
X-Gm-Message-State: AJIora9n6Z9QwGOzg4bbbsa6Xq3AJxiHtqVNNkpUXrrr9sV+6K7XHlNk
 yAAFImQV1h5FWvl2Zi4JLK/1x8mCZxGcZNwL9LMZa0W08yarZZD0qheECbN76s1+VThyQEiMRTv
 6P6X3aTJwa96feU1oMavq1B3tbjLstw==
X-Received: by 2002:a05:600c:4304:b0:3a1:7673:636c with SMTP id
 p4-20020a05600c430400b003a17673636cmr9899095wme.131.1656630709982; 
 Thu, 30 Jun 2022 16:11:49 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uAvzLb9OXq14FxhjbPZ/lOdlJyKaLlURWehvY0gsK9XPoGU+Yr6ldzNwBJ+o4g672O8TY7Gg==
X-Received: by 2002:a05:600c:4304:b0:3a1:7673:636c with SMTP id
 p4-20020a05600c430400b003a17673636cmr9899074wme.131.1656630709789; 
 Thu, 30 Jun 2022 16:11:49 -0700 (PDT)
Received: from debian.home
 (2a01cb058d1194004161f17a6a9ad508.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8d11:9400:4161:f17a:6a9a:d508])
 by smtp.gmail.com with ESMTPSA id
 r185-20020a1c2bc2000000b003a0484c069bsm9005514wmr.41.2022.06.30.16.11.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jun 2022 16:11:49 -0700 (PDT)
Date: Fri, 1 Jul 2022 01:11:47 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220630231147.GB392@debian.home>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
 <20220629143859.209028-3-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20220629143859.209028-3-marcin.szycik@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Tue, 05 Jul 2022 12:51:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1656630712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qbPBUmvK6wYEp85KbixKxSh0oKKcf09knZROWjKJDO4=;
 b=iW+SSYB4s/9YvWYc6aCTK55p+BDqZr2QkVG0eWIfPL0daLrzKSR9wNg1TcY1IZ/aV6KYm5
 nk7OGqgqQ+0zttMWeThJGI9c3YK4M3D6PNAlxG2Oj2LLmhsCY1rpyVETLLZkQQ1awk4z9Q
 FhNTZV5Shify2bWMpXJ1ZDSOuRY9C1A=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iW+SSYB4
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v3 2/4] net/sched:
 flower: Add PPPoE filter
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

On Wed, Jun 29, 2022 at 04:38:57PM +0200, Marcin Szycik wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Add support for PPPoE specific fields for tc-flower.
> Those fields can be provided only when protocol was set
> to ETH_P_PPP_SES. Defines, dump, load and set are being done here.
> 
> Overwrite basic.n_proto only in case of PPP_IP and PPP_IPV6,
> otherwise leave it as ETH_P_PPP_SES.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  include/uapi/linux/pkt_cls.h |  3 +++
>  net/sched/cls_flower.c       | 46 ++++++++++++++++++++++++++++++++++++
>  2 files changed, 49 insertions(+)
> 
> diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
> index 9a2ee1e39fad..a67dcd8294c9 100644
> --- a/include/uapi/linux/pkt_cls.h
> +++ b/include/uapi/linux/pkt_cls.h
> @@ -589,6 +589,9 @@ enum {
>  
>  	TCA_FLOWER_KEY_NUM_OF_VLANS,    /* u8 */
>  
> +	TCA_FLOWER_KEY_PPPOE_SID,	/* u16 */
> +	TCA_FLOWER_KEY_PPP_PROTO,	/* be16 */

Same as for patch 1, should PPPOE_SID be a be16?

>  	__TCA_FLOWER_MAX,
>  };
>  
> diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
> index dcca70144dff..f6a0bb87f869 100644
> --- a/net/sched/cls_flower.c
> +++ b/net/sched/cls_flower.c
> @@ -16,6 +16,7 @@
>  #include <linux/in6.h>
>  #include <linux/ip.h>
>  #include <linux/mpls.h>
> +#include <linux/ppp_defs.h>
>  
>  #include <net/sch_generic.h>
>  #include <net/pkt_cls.h>
> @@ -73,6 +74,7 @@ struct fl_flow_key {
>  	struct flow_dissector_key_ct ct;
>  	struct flow_dissector_key_hash hash;
>  	struct flow_dissector_key_num_of_vlans num_of_vlans;
> +	struct flow_dissector_key_pppoe pppoe;
>  } __aligned(BITS_PER_LONG / 8); /* Ensure that we can do comparisons as longs. */
>  
>  struct fl_flow_mask_range {
> @@ -714,6 +716,8 @@ static const struct nla_policy fl_policy[TCA_FLOWER_MAX + 1] = {
>  	[TCA_FLOWER_KEY_HASH]		= { .type = NLA_U32 },
>  	[TCA_FLOWER_KEY_HASH_MASK]	= { .type = NLA_U32 },
>  	[TCA_FLOWER_KEY_NUM_OF_VLANS]	= { .type = NLA_U8 },
> +	[TCA_FLOWER_KEY_PPPOE_SID]	= { .type = NLA_U16 },
> +	[TCA_FLOWER_KEY_PPP_PROTO]	= { .type = NLA_U16 },
>  
>  };
>  
> @@ -1041,6 +1045,32 @@ static void fl_set_key_vlan(struct nlattr **tb,
>  	}
>  }
>  
> +static void fl_set_key_pppoe(struct nlattr **tb,
> +			     struct flow_dissector_key_pppoe *key_val,
> +			     struct flow_dissector_key_pppoe *key_mask,
> +			     struct fl_flow_key *key,
> +			     struct fl_flow_key *mask)
> +{
> +	if (tb[TCA_FLOWER_KEY_PPPOE_SID]) {
> +		key_val->session_id =
> +			nla_get_u16(tb[TCA_FLOWER_KEY_PPPOE_SID]);
> +		key_mask->session_id = 0xffff;
> +	}
> +	if (tb[TCA_FLOWER_KEY_PPP_PROTO]) {
> +		key_val->ppp_proto =
> +			nla_get_be16(tb[TCA_FLOWER_KEY_PPP_PROTO]);
> +		key_mask->ppp_proto = cpu_to_be16(~0);
> +
> +		if (key_val->ppp_proto == htons(PPP_IP)) {
> +			key->basic.n_proto = htons(ETH_P_IP);
> +			mask->basic.n_proto = cpu_to_be16(~0);
> +		} else if (key_val->ppp_proto == htons(PPP_IPV6)) {
> +			key->basic.n_proto = htons(ETH_P_IPV6);
> +			mask->basic.n_proto = cpu_to_be16(~0);
> +		}

Again, is the lack of MPLS support voluntary?

> +	}
> +}
> +
>  static void fl_set_key_flag(u32 flower_key, u32 flower_mask,
>  			    u32 *dissector_key, u32 *dissector_mask,
>  			    u32 flower_flag_bit, u32 dissector_flag_bit)
> @@ -1651,6 +1681,9 @@ static int fl_set_key(struct net *net, struct nlattr **tb,
>  		}
>  	}
>  
> +	if (key->basic.n_proto == htons(ETH_P_PPP_SES))
> +		fl_set_key_pppoe(tb, &key->pppoe, &mask->pppoe, key, mask);
> +
>  	if (key->basic.n_proto == htons(ETH_P_IP) ||
>  	    key->basic.n_proto == htons(ETH_P_IPV6)) {
>  		fl_set_key_val(tb, &key->basic.ip_proto, TCA_FLOWER_KEY_IP_PROTO,
> @@ -1923,6 +1956,8 @@ static void fl_init_dissector(struct flow_dissector *dissector,
>  			     FLOW_DISSECTOR_KEY_HASH, hash);
>  	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
>  			     FLOW_DISSECTOR_KEY_NUM_OF_VLANS, num_of_vlans);
> +	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
> +			     FLOW_DISSECTOR_KEY_PPPOE, pppoe);
>  
>  	skb_flow_dissector_init(dissector, keys, cnt);
>  }
> @@ -3051,6 +3086,17 @@ static int fl_dump_key(struct sk_buff *skb, struct net *net,
>  	    fl_dump_key_ip(skb, false, &key->ip, &mask->ip)))
>  		goto nla_put_failure;
>  
> +	if (mask->pppoe.session_id) {
> +		if (nla_put_u16(skb, TCA_FLOWER_KEY_PPPOE_SID,
> +				key->pppoe.session_id))
> +			goto nla_put_failure;
> +	}
> +	if (mask->basic.n_proto && mask->pppoe.ppp_proto) {
> +		if (nla_put_be16(skb, TCA_FLOWER_KEY_PPP_PROTO,
> +				 key->pppoe.ppp_proto))
> +			goto nla_put_failure;
> +	}
> +
>  	if (key->control.addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS &&
>  	    (fl_dump_key_val(skb, &key->ipv4.src, TCA_FLOWER_KEY_IPV4_SRC,
>  			     &mask->ipv4.src, TCA_FLOWER_KEY_IPV4_SRC_MASK,
> -- 
> 2.35.1
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
