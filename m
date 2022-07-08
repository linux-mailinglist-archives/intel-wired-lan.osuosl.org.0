Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E8B56C10D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jul 2022 21:23:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 314AA84821;
	Fri,  8 Jul 2022 19:23:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 314AA84821
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657308187;
	bh=u8DH2ZmMwj4ec96OadNFvW/jhpEJO6XdaMiaujH56uI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AiT7ToQuz4gN8JfuvaKXTZDqaQUSjSOh3HnAfuxufkXAILgynHCP0XIa5mHrnC1Dm
	 0/ke6UzWf3Ptxj2Isamg0BYeH5ileXuH/eBNjCwYz3z+tfSw4+25OzAIQCDWEwE0Xi
	 +jUGon0wr9hWxTKappn1x+yK3S5yxwdzQ9Y3WElIIxa9eknxRD4xIdoc6Nz0tKTLTC
	 jgrItBxrGMSwrbY620vuA5qWhGO8marNc/+CHafezrHwNWTnzM9wy0PhmyyG+nZOsK
	 dIp1CPb0gMxRoSiSMTzEa+haKQO46XfFlZ337WgMHvlJLGKYnmlAUOegww37nrgiEL
	 7SG3hnbY02ZHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bu0qsTwSqMzx; Fri,  8 Jul 2022 19:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAA6184819;
	Fri,  8 Jul 2022 19:23:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAA6184819
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 278DB1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 19:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0155C84819
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 19:23:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0155C84819
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4IidLfAQTy6F for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jul 2022 19:23:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0253F8480E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0253F8480E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 19:22:59 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-57-RkDYOzGIM0-Asxq13PNYyQ-1; Fri, 08 Jul 2022 15:22:57 -0400
X-MC-Unique: RkDYOzGIM0-Asxq13PNYyQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 j23-20020adfb317000000b0021d7986c07eso2023401wrd.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Jul 2022 12:22:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SAGmHIi9d4MTiTBpkqka/Yr866bAJGlVWmHa5DziQ4A=;
 b=nxnatZv2NrMUhhMeLQDqKIBYEfjKakaSaPZaeHZ8h7ynjE4lT5MXprtQoNfQS5tkA6
 LomkkVlBpqdwuVgDwa4S3OOGu5NF9aaaH+rq95A7AqA+cIO2iyl6H796M5MaYaElkD5g
 SNZd4IoPzQpHInSt0T2ZDo+UGGV/gVhHbCdXFdLcCNVdnoUaf4TK0L5xqN+ke6ODm27n
 5bKvGTEGw1b81aTELJY2nQpt5cduZjS2tKn0g90iocufv50RivcLjOEqTWJoIyUiEj3N
 ddUSK57JstQGxOzkLIjpHZVvYtUjXA9/gz+qPFPolJnaWhvZqOecqln40ZE8s+GGnVd7
 +pMQ==
X-Gm-Message-State: AJIora9s5xhOV+Sm88GJs6pmLIelQWRbTgRr0uTHdYn2ns2rbHL8J76k
 vsA/0w20XxhYsqbVrPLw35qfy5KCye04oyFRzmuVmFi7ddZFQIre0WK1UE5xsF3dAzbUV+9wFeN
 fLKgcUU5k2AQvjLwwYwTKOtFqqwf7iQ==
X-Received: by 2002:adf:eec9:0:b0:21d:7ab0:340 with SMTP id
 a9-20020adfeec9000000b0021d7ab00340mr5187964wrp.673.1657308176389; 
 Fri, 08 Jul 2022 12:22:56 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tH3PyDOHhcBHMdJ1QveLMP3RrTXah9ejTWQ+o8iIMow54AaqW81EGSGfCEzlevUsZo++ZTug==
X-Received: by 2002:adf:eec9:0:b0:21d:7ab0:340 with SMTP id
 a9-20020adfeec9000000b0021d7ab00340mr5187937wrp.673.1657308176181; 
 Fri, 08 Jul 2022 12:22:56 -0700 (PDT)
Received: from debian.home
 (2a01cb058d1194004161f17a6a9ad508.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8d11:9400:4161:f17a:6a9a:d508])
 by smtp.gmail.com with ESMTPSA id
 k1-20020a5d6281000000b0021b9e360523sm42693934wru.8.2022.07.08.12.22.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jul 2022 12:22:55 -0700 (PDT)
Date: Fri, 8 Jul 2022 21:22:53 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220708192253.GC3166@debian.home>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
 <20220708122421.19309-3-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20220708122421.19309-3-marcin.szycik@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1657308178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SAGmHIi9d4MTiTBpkqka/Yr866bAJGlVWmHa5DziQ4A=;
 b=d/LlO7tWwnhr2F4ovn+4XoXguIjKP2JUqFUr/uFRemBkZvIRKTWHiGwDeAhwjNECcv+EzY
 4+8YTc7sdcwy+aYcpX+JW1VlZtFRvrhDq4OFCUja3KlVhtHb57IsfRBeSVcJtOuhMBB0YI
 we/XWVx+ka4ONCUmQ3jd8TR8jUhUAzs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=d/LlO7tW
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v4 2/4] net/sched:
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

On Fri, Jul 08, 2022 at 02:24:19PM +0200, Marcin Szycik wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Add support for PPPoE specific fields for tc-flower.
> Those fields can be provided only when protocol was set
> to ETH_P_PPP_SES. Defines, dump, load and set are being done here.
> 
> Overwrite basic.n_proto only in case of PPP_IP and PPP_IPV6,

... and PPP_MPLS_UC/PPP_MPLS_MC in this new patch version.

> otherwise leave it as ETH_P_PPP_SES.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v4:
>   * support of MPLS inner fields
>   * session_id stored in __be16
> 
>  include/uapi/linux/pkt_cls.h |  3 ++
>  net/sched/cls_flower.c       | 61 ++++++++++++++++++++++++++++++++++++
>  2 files changed, 64 insertions(+)
> 
> diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
> index 9a2ee1e39fad..c142c0f8ed8a 100644
> --- a/include/uapi/linux/pkt_cls.h
> +++ b/include/uapi/linux/pkt_cls.h
> @@ -589,6 +589,9 @@ enum {
>  
>  	TCA_FLOWER_KEY_NUM_OF_VLANS,    /* u8 */
>  
> +	TCA_FLOWER_KEY_PPPOE_SID,	/* be16 */
> +	TCA_FLOWER_KEY_PPP_PROTO,	/* be16 */
> +
>  	__TCA_FLOWER_MAX,
>  };
>  
> diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
> index dcca70144dff..2a0ebad0e61c 100644
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
> @@ -1041,6 +1045,50 @@ static void fl_set_key_vlan(struct nlattr **tb,
>  	}
>  }
>  
> +static void fl_set_key_pppoe(struct nlattr **tb,
> +			     struct flow_dissector_key_pppoe *key_val,
> +			     struct flow_dissector_key_pppoe *key_mask,
> +			     struct fl_flow_key *key,
> +			     struct fl_flow_key *mask)
> +{
> +	/* key_val::type must be set to ETH_P_PPP_SES
> +	 * because ETH_P_PPP_SES was stored in basic.n_proto
> +	 * which might get overwritten by ppp_proto
> +	 * or might be set to 0, the role of key_val::type
> +	 * is simmilar to vlan_key::tpid

Didn't you mean "vlan_tpid"?

> +	 */
> +	key_val->type = htons(ETH_P_PPP_SES);
> +	key_mask->type = cpu_to_be16(~0);
> +
> +	if (tb[TCA_FLOWER_KEY_PPPOE_SID]) {
> +		key_val->session_id =
> +			nla_get_be16(tb[TCA_FLOWER_KEY_PPPOE_SID]);
> +		key_mask->session_id = cpu_to_be16(~0);
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
> +		} else if (key_val->ppp_proto == htons(PPP_MPLS_UC)) {
> +			key->basic.n_proto = htons(ETH_P_MPLS_UC);
> +			mask->basic.n_proto = cpu_to_be16(~0);
> +		} else if (key_val->ppp_proto == htons(PPP_MPLS_MC)) {
> +			key->basic.n_proto = htons(ETH_P_MPLS_MC);
> +			mask->basic.n_proto = cpu_to_be16(~0);
> +		}
> +	} else {
> +		key->basic.n_proto = 0;
> +		mask->basic.n_proto = cpu_to_be16(0);
> +	}
> +}
> +
>  static void fl_set_key_flag(u32 flower_key, u32 flower_mask,
>  			    u32 *dissector_key, u32 *dissector_mask,
>  			    u32 flower_flag_bit, u32 dissector_flag_bit)
> @@ -1651,6 +1699,9 @@ static int fl_set_key(struct net *net, struct nlattr **tb,
>  		}
>  	}
>  
> +	if (key->basic.n_proto == htons(ETH_P_PPP_SES))
> +		fl_set_key_pppoe(tb, &key->pppoe, &mask->pppoe, key, mask);
> +
>  	if (key->basic.n_proto == htons(ETH_P_IP) ||
>  	    key->basic.n_proto == htons(ETH_P_IPV6)) {
>  		fl_set_key_val(tb, &key->basic.ip_proto, TCA_FLOWER_KEY_IP_PROTO,
> @@ -1923,6 +1974,8 @@ static void fl_init_dissector(struct flow_dissector *dissector,
>  			     FLOW_DISSECTOR_KEY_HASH, hash);
>  	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
>  			     FLOW_DISSECTOR_KEY_NUM_OF_VLANS, num_of_vlans);
> +	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
> +			     FLOW_DISSECTOR_KEY_PPPOE, pppoe);
>  
>  	skb_flow_dissector_init(dissector, keys, cnt);
>  }
> @@ -3051,6 +3104,14 @@ static int fl_dump_key(struct sk_buff *skb, struct net *net,
>  	    fl_dump_key_ip(skb, false, &key->ip, &mask->ip)))
>  		goto nla_put_failure;
>  
> +	if (mask->pppoe.session_id &&
> +	    nla_put_be16(skb, TCA_FLOWER_KEY_PPPOE_SID, key->pppoe.session_id))
> +		goto nla_put_failure;
> +
> +	if (mask->basic.n_proto && mask->pppoe.ppp_proto &&
> +	    nla_put_be16(skb, TCA_FLOWER_KEY_PPP_PROTO, key->pppoe.ppp_proto))
> +		goto nla_put_failure;
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
