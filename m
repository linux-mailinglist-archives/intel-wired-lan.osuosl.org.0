Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5558555F552
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 06:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98F99405A5;
	Wed, 29 Jun 2022 04:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98F99405A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656477629;
	bh=y+0Y8ncOpPI7I7fvTd2wH6AazUVld1g6Qk6Rj2xby74=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B4JbB6bGcI9ZpRqvGQR7297JJs/zkdNXyNS9z/pE2gDOSl8bXbBgzFtpmhVx0IThs
	 eQx4VhGZQdXp+WgucNUidH8XV1u4oKPF5OKvGJs7tD5CBH4XWkWUmtQSxD7zdao6hD
	 f49DiAM4+vfr9+h23AfRQdfm2q9BvzY0eIf089oMv00Boll6jxdAm7OXSGvSvqMwQp
	 nhLX80+665tPv40GRGlOhoyTk2SE3sgCyWDYrXDEDosdeE/R1yM54EXGX4rhRUie4L
	 c7VKYWO6W7x8qOl4IxkP8z7SV3XZg6QOlNTtQNxSM4B6x/yzC1yLGtBqPnDJDOqz5w
	 6FNycQIO1qaGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kj50UqXDnVdK; Wed, 29 Jun 2022 04:40:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8842C40320;
	Wed, 29 Jun 2022 04:40:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8842C40320
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A43E11BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B33460BFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:40:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B33460BFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tEAzJgDJyC8L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 04:40:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E03A660B2A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E03A660B2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:40:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2497961236;
 Wed, 29 Jun 2022 04:40:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0627DC3411E;
 Wed, 29 Jun 2022 04:40:20 +0000 (UTC)
Date: Tue, 28 Jun 2022 21:40:20 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220628214020.0f83fc21@kernel.org>
In-Reply-To: <20220628112918.11296-2-marcin.szycik@linux.intel.com>
References: <20220628112918.11296-1-marcin.szycik@linux.intel.com>
 <20220628112918.11296-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1656477621;
 bh=iHw9bd8s4EekjXNRbJp+UlyFG/OqrDWm5kUz2JiIYjM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GD4Q6OAPWtS2tJDYyq+B7IwLHgSANFRKHGUT4Saed8lSn1NUhBWXev69bFxTercB6
 bIGPDAXbVWHucBIs96tei3pdmPkZvfrqbBTKusg0Mg5LmXRi/sxIJRRYifZpS5idhD
 w/V7bLpfIHjd4jK+zsqo4GpKqzz9rl6RixbAh6DRu+7tTeZe5yNvVWTMa/HJcSyh++
 xIrkYg5ueBsONBT7aBLBOUHxBwHNSMKFQes23nRhGFPQjjvHLw/ZkBebgPSCBGH+aI
 byZ5JVdByHN///4+qc6uiu5eOj5/MsqacmbFuWnIjEfwq0kB3/1usSXBZV3a3YtxZs
 LWWZq7oUrDdLg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GD4Q6OAP
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v2 1/4] flow_dissector:
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
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 zhangkaiheb@126.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 komachi.yoshiki@gmail.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, netdev@vger.kernel.org, gustavoars@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 28 Jun 2022 13:29:15 +0200 Marcin Szycik wrote:
> +static bool is_ppp_proto_supported(__be16 proto)

What does supported mean in this context?

> +{
> +	switch (ntohs(proto)) {
> +	case PPP_AT:

Byte swap on the constant.

> +	case PPP_IPX:
> +	case PPP_VJC_COMP:
> +	case PPP_VJC_UNCOMP:
> +	case PPP_MP:
> +	case PPP_COMPFRAG:
> +	case PPP_COMP:
> +	case PPP_MPLS_UC:
> +	case PPP_MPLS_MC:
> +	case PPP_IPCP:
> +	case PPP_ATCP:
> +	case PPP_IPXCP:
> +	case PPP_IPV6CP:
> +	case PPP_CCPFRAG:
> +	case PPP_MPLSCP:
> +	case PPP_LCP:
> +	case PPP_PAP:
> +	case PPP_LQR:
> +	case PPP_CHAP:
> +	case PPP_CBCP:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
