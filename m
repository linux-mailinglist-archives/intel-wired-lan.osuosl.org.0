Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0951559CEA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 17:02:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3502B41550;
	Fri, 24 Jun 2022 15:02:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3502B41550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656082936;
	bh=Se1SHnWU3p7IxoR04v5+tbvBAeoNeQcRtNaZDqRnjZ8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=40SLRQU6M3+n7Ol5mKXjfGKinLo1LalIiSNIYWkYHZhlQyxeoRlPh9YugxjF1T+3x
	 cyxRHRigW+QBStg/kRyoz3U1P5UdG3qJCCEnmjBEe0Dfh+vtqp8nT81ELPxD5iVzwB
	 JEzJytTLm48eIFJHukkI0o+px5ZmH3ILrCo+zQj46W+x1HZNaax+k/HMP9/bo2vban
	 rZlIzlSwfqORhmV23KywbZG+6Fw5NTZC6krMtWme9xuSEb05YlTx0sascjU3FJle3f
	 1kmfGwm7RGV9bbc0DjtaqufmC57bt7lWiCL8tCgKaFKm0CoJsVAofGXuPAchjtdqI4
	 EMo5VlpdfNFQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3CrdZ5m_X8YC; Fri, 24 Jun 2022 15:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 556144154A;
	Fri, 24 Jun 2022 15:02:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 556144154A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9AE01BF40F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 15:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1BA6408DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 15:02:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1BA6408DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cHR02_8bYVCA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 15:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B244400BB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B244400BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 15:02:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="342706383"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="342706383"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:01:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835153652"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jun 2022 08:01:39 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25OF1bg8021554; Fri, 24 Jun 2022 16:01:37 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Fri, 24 Jun 2022 17:01:26 +0200
Message-Id: <20220624150126.2386014-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220624134134.13605-2-marcin.szycik@linux.intel.com>
References: <20220624134134.13605-1-marcin.szycik@linux.intel.com>
 <20220624134134.13605-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656082927; x=1687618927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PrFLT/KCX2v4BMLbU9yZP8Ck2zN3y12fBkOxf0nJ6lI=;
 b=IzNpwWD5mQ3uYCWtkcWWCQdBjpnNCnRlLdrtW8FXwGA8NRzUo5i7gwf+
 ZQQlElleT6vDt1OU7QN50GUOi+lnU5LxSdizT5Ar5FBNfOURzYEUQQmtI
 Qsh7PC/Lr1nR+9zvJZPEr4vMvIyAiKirFZmmMdPC2sXSvN1hGt4I4sazu
 KjLHTDV3IIXh2LnAReiUzL51Wl58AvVNOP2xFHEl+90686/wICuRc5lIq
 aahD2soWo8cRm6qwmRqkQbBuWvuroPeKiX1wFTANyB27Jz5VEgE3V34Y7
 A+ymwr7iAA6KBlBJ8CBZUnMPxQNifTEtLPtuXFoSS7/hK3TAZ/XKn5DI0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IzNpwWD5
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next 1/4] flow_dissector: Add
 PPPoE dissectors
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
 edumazet@google.com, boris.sukholitko@broadcom.com, elic@nvidia.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, zhangkaiheb@126.com,
 pablo@netfilter.org, baowen.zheng@corigine.com, jiri@resnulli.us,
 komachi.yoshiki@gmail.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, netdev@vger.kernel.org, gustavoars@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Fri, 24 Jun 2022 15:41:31 +0200

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
>  include/net/flow_dissector.h | 11 ++++++++
>  net/core/flow_dissector.c    | 51 +++++++++++++++++++++++++++++++-----
>  2 files changed, 56 insertions(+), 6 deletions(-)
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
> +
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
> index 6aee04f75e3e..41933905f90b 100644
> --- a/net/core/flow_dissector.c
> +++ b/net/core/flow_dissector.c
> @@ -895,6 +895,35 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struct bpf_flow_dissector *ctx,
>  	return result == BPF_OK;
>  }
>  
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
> @@ -1221,19 +1250,29 @@ bool __skb_flow_dissect(const struct net *net,
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
> -		default:

Oh, sorry for missing this previously. This switch -> if-else
conversion looks redundant.
You can add `if (is_ppp_proto_supported()) GOOD; else BAD` to the
`default` label without modifying the rest of code (to skip the
actual dissecting block you can add a condition there that @fdret
must not equal BAD).

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

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
