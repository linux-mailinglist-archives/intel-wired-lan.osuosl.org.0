Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3C02CFC4C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Dec 2020 18:43:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59B408767E;
	Sat,  5 Dec 2020 17:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkTkSrH+Th+J; Sat,  5 Dec 2020 17:43:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87FBF8768B;
	Sat,  5 Dec 2020 17:43:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CD3C1BF3AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8721A86946
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XHX3bF1rrZIz for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Dec 2020 17:43:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D937A86943
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 17:43:26 +0000 (UTC)
Date: Sat, 5 Dec 2020 09:43:25 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607190206;
 bh=NsgD2LcgtN1aqnXL816NviWBVSH9uR21h6KTOZFn01I=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=jU9oI3v235hXaxa4SevgOB3aDzL+T4tNoDhQOgNMlN8z3Jc73uKGXjEQ4w4BDw4aj
 bWzPsXtY1DkK0pU38qfkzhZyl/4pJKYD0iSsXb8UAPMZF+93y48Dv6bwGKju0K6ZVb
 RL3x6HW1xuJrr6aMKgql9yBi0FeA8lJG0NrWp48jXW+HnLZ4aEuRHjA19R9nqkCLfP
 kkp82V6AODHdC1AY0afgBaO/Uz3i5rl+SzyQjAsuk5YD+hY1zHbkVkTVpoeROk6xa0
 dKQkjZ+OqtexDI6xr+iisGSO4QMV8/OR4GYVqSsMitUDPhY+uwfot5T1IahAP+AW/Y
 o0nNF3QWxtGMg==
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201205094325.790b187f@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201202045325.3254757-2-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-2-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/9] ethtool: Add support
 for configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  1 Dec 2020 20:53:17 -0800 Vinicius Costa Gomes wrote:
> Frame preemption (described in IEEE 802.3br-2016) defines the concept
> of preemptible and express queues. It allows traffic from express
> queues to "interrupt" traffic from preemptible queues, which are
> "resumed" after the express traffic has finished transmitting.
> 
> Frame preemption can only be used when both the local device and the
> link partner support it.
> 
> Only parameters for enabling/disabling frame preemption and
> configuring the minimum fragment size are included here. Expressing
> which queues are marked as preemptible is left to mqprio/taprio, as
> having that information there should be easier on the user.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  include/linux/ethtool.h              |  19 ++++
>  include/uapi/linux/ethtool_netlink.h |  17 +++
>  net/ethtool/Makefile                 |   2 +-
>  net/ethtool/netlink.c                |  19 ++++
>  net/ethtool/netlink.h                |   4 +
>  net/ethtool/preempt.c                | 151 +++++++++++++++++++++++++++
>  6 files changed, 211 insertions(+), 1 deletion(-)
>  create mode 100644 net/ethtool/preempt.c
> 
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index e3da25b51ae4..16d6ee29a6ac 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -263,6 +263,19 @@ struct ethtool_pause_stats {
>  	u64 rx_pause_frames;
>  };
>  
> +/**
> + * struct ethtool_fp - Frame Preemption information
> + *
> + * @enabled: Enable frame preemption.
> + *

The empty line between members seems unnecessary.

> + * @min_frag_size_mult: Minimum size for all non-final fragment size,
> + * expressed in terms of X in '(1 + X)*64 + 4'

Is this way of expressing the min frag size from the standard?

> + */
> +struct ethtool_fp {
> +	u8 enabled;
> +	u8 min_frag_size_mult;
> +};

> +	int	(*get_preempt)(struct net_device *,
> +			       struct ethtool_fp *);
> +	int	(*set_preempt)(struct net_device *,
> +			       struct ethtool_fp *);

Since this is a new op we should probably pass extack to the drivers?

>  extern const struct nla_policy ethnl_header_policy[ETHTOOL_A_HEADER_FLAGS + 1];
>  extern const struct nla_policy ethnl_header_policy_stats[ETHTOOL_A_HEADER_FLAGS + 1];
> @@ -375,6 +376,8 @@ extern const struct nla_policy ethnl_tsinfo_get_policy[ETHTOOL_A_TSINFO_HEADER +
>  extern const struct nla_policy ethnl_cable_test_act_policy[ETHTOOL_A_CABLE_TEST_HEADER + 1];
>  extern const struct nla_policy ethnl_cable_test_tdr_act_policy[ETHTOOL_A_CABLE_TEST_TDR_CFG + 1];
>  extern const struct nla_policy ethnl_tunnel_info_get_policy[ETHTOOL_A_TUNNEL_INFO_HEADER + 1];
> +extern const struct nla_policy ethnl_preempt_get_policy[ETHTOOL_A_PREEMPT_MAX + 1];
> +extern const struct nla_policy ethnl_preempt_set_policy[ETHTOOL_A_PREEMPT_MAX + 1];

Let's make the size

ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE_MULT + 1

for set, and

ETHTOOL_A_PREEMPT_HEADER + 1

for get, like the other tables

> +const struct nla_policy
> +ethnl_preempt_get_policy[ETHTOOL_A_PREEMPT_MAX + 1] = {
> +	[ETHTOOL_A_PREEMPT_UNSPEC]		= { .type = NLA_REJECT },

Unnecessary, NLA_REJECT is 0.

> +	[ETHTOOL_A_PREEMPT_HEADER]		= { .type = NLA_NESTED },

Please specify nested policy

> +	[ETHTOOL_A_PREEMPT_ENABLED]		= { .type = NLA_REJECT },
> +	[ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE_MULT]	= { .type = NLA_REJECT },

Unnecessary

> +const struct nla_policy
> +ethnl_preempt_set_policy[ETHTOOL_A_PREEMPT_MAX + 1] = {
> +	[ETHTOOL_A_PREEMPT_UNSPEC]			= { .type = NLA_REJECT },
> +	[ETHTOOL_A_PREEMPT_HEADER]			= { .type = NLA_NESTED },
> +	[ETHTOOL_A_PREEMPT_ENABLED]			= { .type = NLA_U8 },

Set the right netlink policy to check the value is <= 1.

> +	[ETHTOOL_A_PREEMPT_MIN_FRAG_SIZE_MULT]		= { .type = NLA_U8 },
> +};
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
