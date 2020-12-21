Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6462E02B2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Dec 2020 23:55:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1E77868A2;
	Mon, 21 Dec 2020 22:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IapF3ACDWhh8; Mon, 21 Dec 2020 22:55:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A575B868A8;
	Mon, 21 Dec 2020 22:55:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6E751BF97A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 22:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2667870C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 22:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T1i7-4F7VrGv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 22:55:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B7D4B870B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 22:55:37 +0000 (UTC)
IronPort-SDR: edmYUZ0PVt5KhqUOIqhBqsgGwuG6Jd6W4756hwrPh22D/byR+q9gW8SuZW9b2zs4Qj4j+/8iom
 FiksVCguSjHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="239878663"
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="239878663"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 14:55:36 -0800
IronPort-SDR: OHOeL+VgqEsO+GZ6sEwnNhKWNO4pLP6sIARu1BTzNI5zoV25RPEFQ0mOOEe0mFBCHrwXej8rg9
 f630QWaz8TWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="372927779"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2020 14:55:35 -0800
Date: Mon, 21 Dec 2020 23:45:12 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201221224512.GA2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-3-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217202415.77891-3-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 02/10] igc: Refactor igc_xdp_run_prog()
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 17, 2020 at 12:24:07PM -0800, Andre Guedes wrote:
> This patch refactors igc_xdp_run_prog() helper, preparing the code for

s/This patch refactors/Refactor

to follow the guideline of using the imperative mood in commit msgs.

> AF_XDP zero-copy support which is added by upcoming patches.
> 
> With AF_XDP zero-copy support, igc_poll() will have a dedicated path
> when the rx ring has zero-copy is enabled. To avoid code duplication as

The end of this sentence is a bit bogus.

What about:

With AF_XDP zero-copy support, igc_poll() will have a dedicated path
when rx ring's memory model is MEM_TYPE_XSK_BUFF_POOL.

?

> much as possible, this patch encapsulates the code specific to handling

s/this patch encapsulates/encapsulate

git grep "This patch" Documentation/process/submitting-patches.rst

as a refresher :)

> XDP program actions into a local helper so it can be reused by the
> zero-copy path.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 56 +++++++++++------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 0e582a4ee986..56b791b356dc 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2029,38 +2029,22 @@ static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
>  	return res;
>  }
>  
> -static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> -					struct xdp_buff *xdp)
> +/* This function assumes rcu_read_lock() is held by the caller. */
> +static int igc_xdp_do_run_prog(struct igc_adapter *adapter,
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
> @@ -2068,9 +2052,25 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
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
> 2.29.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
