Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BAB3182B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 01:40:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5603586D08;
	Thu, 11 Feb 2021 00:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V9BhP2XmLmzw; Thu, 11 Feb 2021 00:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B39186D0F;
	Thu, 11 Feb 2021 00:40:49 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD8FD1BF487
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 00:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9130872DA
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 00:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4cjXMXzg58aE for <intel-wired-lan@osuosl.org>;
 Thu, 11 Feb 2021 00:40:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 04DFC87297
 for <intel-wired-lan@osuosl.org>; Thu, 11 Feb 2021 00:40:47 +0000 (UTC)
IronPort-SDR: T2DiWLwEGJ5WA7iYikvHFRqkshm3+8R2AofLjVPC/1pO6RQzcsweLv+OfniDgSOp2rueA1wxp8
 5hG7dpKv+5Ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169850251"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="169850251"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:40:47 -0800
IronPort-SDR: 38UNhqCndIcrYuqCGYXENhkNagRbhsyqJpKXyhn6fxZ+QL6rSnT5zX6+Tj9Q7NOxVNYsIPLox0
 E0KtBUsMctiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="436883471"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga001.jf.intel.com with ESMTP; 10 Feb 2021 16:40:45 -0800
Date: Thu, 11 Feb 2021 01:31:13 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Vedang Patel <vedang.patel@intel.com>
Message-ID: <20210211003113.GA44042@ranger.igk.intel.com>
References: <20210209024243.23406-1-vedang.patel@intel.com>
 <20210209024243.23406-3-vedang.patel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209024243.23406-3-vedang.patel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/9] igc: Refactor
 igc_xdp_run_prog()
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
Cc: intel-wired-lan@osuosl.org, Andre Guedes <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 08, 2021 at 06:42:36PM -0800, Vedang Patel wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> Refactor igc_xdp_run_prog() helper, preparing the code for AF_XDP
> zero-copy support which is added by upcoming patches.
> 
> With AF_XDP zero-copy support, igc_poll() will have a dedicated path
> when rx ring's memory model is MEM_TYPE_XSK_BUFF_POOL. To avoid code
> duplication as much as possible, encapsulate the code specific to
> handling XDP program actions into a local helper so it can be reused by
> the zero-copy path.

Hey Vedang, I'm not sure why you didn't include my reviewed-by tag for the
series from v2, so I'm looking at that again.

Please mention that the ZC path can assume that bpf_prog will always be
!NULL and we don't have to check that explicitly, therefore it makes sense
to pull out the common logic.

> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 56 +++++++++++------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 59a341566bc6..151ac078df48 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2012,38 +2012,22 @@ static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
>  	return res;
>  }
>  
> -static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> -					struct xdp_buff *xdp)
> +/* This function assumes rcu_read_lock() is held by the caller. */
> +static int igc_xdp_do_run_prog(struct igc_adapter *adapter,

nit: I feel like __igc_xdp_run_prog would be a better fit

> +			       struct bpf_prog *prog,
> +			       struct xdp_buff *xdp)
>  {
> -	struct bpf_prog *prog;
> -	int res;
> -	u32 act;
> -
> -	rcu_read_lock();
> -
> -	prog = READ_ONCE(adapter->xdp_prog);
> -	if (!prog) {
> -		res = IGC_XDP_PASS;
> -		goto unlock;
> -	}
> +	u32 act = bpf_prog_run_xdp(prog, xdp);
>  
> -	act = bpf_prog_run_xdp(prog, xdp);
>  	switch (act) {
>  	case XDP_PASS:
> -		res = IGC_XDP_PASS;
> -		break;
> +		return IGC_XDP_PASS;
>  	case XDP_TX:
> -		if (igc_xdp_xmit_back(adapter, xdp) < 0)
> -			res = IGC_XDP_CONSUMED;
> -		else
> -			res = IGC_XDP_TX;
> -		break;
> +		return igc_xdp_xmit_back(adapter, xdp) < 0 ?
> +			IGC_XDP_CONSUMED : IGC_XDP_TX;
>  	case XDP_REDIRECT:
> -		if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
> -			res = IGC_XDP_CONSUMED;
> -		else
> -			res = IGC_XDP_REDIRECT;
> -		break;
> +		return xdp_do_redirect(adapter->netdev, xdp, prog) < 0 ?
> +			IGC_XDP_CONSUMED : IGC_XDP_REDIRECT;
>  	default:
>  		bpf_warn_invalid_xdp_action(act);
>  		fallthrough;
> @@ -2051,9 +2035,25 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
>  		trace_xdp_exception(adapter->netdev, prog, act);
>  		fallthrough;
>  	case XDP_DROP:
> -		res = IGC_XDP_CONSUMED;
> -		break;
> +		return IGC_XDP_CONSUMED;
>  	}
> +}
> +
> +static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> +					struct xdp_buff *xdp)
> +{
> +	struct bpf_prog *prog;
> +	int res;
> +
> +	rcu_read_lock();
> +
> +	prog = READ_ONCE(adapter->xdp_prog);
> +	if (!prog) {
> +		res = IGC_XDP_PASS;
> +		goto unlock;
> +	}
> +
> +	res = igc_xdp_do_run_prog(adapter, prog, xdp);
>  
>  unlock:
>  	rcu_read_unlock();
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
