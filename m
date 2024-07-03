Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B9592643A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 17:03:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66D5960EE5;
	Wed,  3 Jul 2024 15:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8W7WZe6414Bq; Wed,  3 Jul 2024 15:03:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B32060EED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720019012;
	bh=q5dHnvGOCiLE58BQH98kqxOSBBgTLwwkNkKWSMWcDsI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FEq6rnBjo7ZeSVftottKEYC7NZVbh38nC0UB3HkBwnjifbfDuxw9r/dw6SOKTY5/r
	 6cYEwp3ZCmSpK7cpWA8IBWdeDFIPBt7vtg49TjehcXCXhAryUt+sM33uWQCrTC68es
	 g38D5f6/DzhiygTi3iZ8hu8mc5uyezPXFgeUNUzugwhaVg8c6Roan8ne3hizgDgUyz
	 l3nBEDyIziyLpLjo6hG4wPP/gdzAgwMZI4rrH7s8V7ebY2nApnCa47avhRnudEihFp
	 ClBXC+p9CFqj5vwm4dnv54NOZpDDP1ugS4J8fp713MKjmeWbkRxrWqPVwO7f5l7Vum
	 zJqG8cu0APZLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B32060EED;
	Wed,  3 Jul 2024 15:03:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0DBA1BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:03:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98ADA60BE7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:03:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uVB5Rc3XfkCe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 15:03:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3CA0F6072C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CA0F6072C
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CA0F6072C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:03:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3399DCE2B04;
 Wed,  3 Jul 2024 15:03:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BCD9C32781;
 Wed,  3 Jul 2024 15:03:20 +0000 (UTC)
Date: Wed, 3 Jul 2024 16:03:18 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Message-ID: <20240703150318.GN598357@kernel.org>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
 <20240702040926.3327530-3-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702040926.3327530-3-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720019003;
 bh=FoeiMXNWygQHXGa/435t5CfC/zmEoNiICB+QwCj3c/E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NcJTnO6nmkVfC0ALn0oTGFLCMNHrRvb6GNLJW75ya9R2xkUGZvDawJi9SFlHKG0Sx
 aCXF2Sltzp8fBmUhkWlBVYni3OKaW5WqhaPLP2IaS6f+9Zo4NIPaxiEIjK6bmnTHmF
 IxsXgUsjfnKTZ/by4PY8qZbn/aoqNZUNsGZT943/Ta9EBKoORh7CFqAL8LDDjVOSmq
 AV4PXOljdV4Q4kmmJ5vPMryNExBmkhJoJYC/rxGT0tgcs7oYluk23dRSElR6kVaCsm
 qL8913WAiI6zDqk+1+ieA7zYqs8N0gLycgPp4PWiWvLardPjuBY+4o/8UOzDXzh8bU
 JWSWGuvVvUkSg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=NcJTnO6n
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/4] igc: Fix reset adapter
 logics when tx mode change
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 12:09:24AM -0400, Faizal Rahim wrote:
> Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
> remaining issues with the reset adapter logic in igc_tsn_offload_apply()
> have been observed:
> 
> 1. The reset adapter logics for i225 and i226 differ, although they should
>    be the same according to the guidelines in I225/6 HW Design Section
>    7.5.2.1 on software initialization during tx mode changes.
> 2. The i225 resets adapter every time, even though tx mode doesn't change.
>    This occurs solely based on the condition  igc_is_device_id_i225() when
>    calling schedule_work().
> 3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
>    resets adapter for legacy->tsn tx mode transitions.
> 4. qbv_count introduced in the patch is actually not needed; in this
>    context, a non-zero value of qbv_count is used to indicate if tx mode
>    was unconditionally set to tsn in igc_tsn_enable_offload(). This could
>    be replaced by checking the existing register
>    IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.
> 
> This patch resolves all issues and enters schedule_work() to reset the
> adapter only when changing tx mode. It also removes reliance on qbv_count.
> 
> qbv_count field will be removed in a future patch.
> 
> Test ran:
> 
> 1. Verify reset adapter behaviour in i225/6:
>    a) Enrol a new GCL
>       Reset adapter observed (tx mode change legacy->tsn)
>    b) Enrol a new GCL without deleting qdisc
>       No reset adapter observed (tx mode remain tsn->tsn)
>    c) Delete qdisc
>       Reset adapter observed (tx mode change tsn->legacy)
> 
> 2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
>    to confirm it remains resolved.
> 
> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Hi Faizal,

Nits below not withstahdning, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/ethernet/intel/igc/igc_tsn.c | 26 +++++++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 02dd41aff634..61f047ebf34d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -49,6 +49,13 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>  	return new_flags;
>  }
>  
> +static bool igc_tsn_is_tx_mode_in_tsn(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +
> +	return (bool)(rd32(IGC_TQAVCTRL) & IGC_TQAVCTRL_TRANSMIT_MODE_TSN);

Perhaps it is more a question of taste than anything else.
But my preference, FIIW, is to avoid casts.
And I think in this case using !! is a common pattern.

(Completely untested!)

	return !!(rd32(IGC_TQAVCTRL) & IGC_TQAVCTRL_TRANSMIT_MODE_TSN);

> +}
> +
>  void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
>  {
>  	struct igc_hw *hw = &adapter->hw;
> @@ -334,15 +341,28 @@ int igc_tsn_reset(struct igc_adapter *adapter)
>  	return err;
>  }
>  
> +static bool igc_tsn_will_tx_mode_change(struct igc_adapter *adapter)
> +{
> +	bool any_tsn_enabled = (bool)(igc_tsn_new_flags(adapter) &
> +			       IGC_FLAG_TSN_ANY_ENABLED);

Ditto.

> +
> +	if ((any_tsn_enabled && !igc_tsn_is_tx_mode_in_tsn(adapter)) ||
> +	    (!any_tsn_enabled && igc_tsn_is_tx_mode_in_tsn(adapter)))
> +		return true;
> +	else
> +		return false;

Likewise, this is probably more a matter of taste than anything else.
But I think this could be expressed as:

(Completely untested!)

	return (any_tsn_enabled && !igc_tsn_is_tx_mode_in_tsn(adapter)) ||
		(!any_tsn_enabled && igc_tsn_is_tx_mode_in_tsn(adapter));

Similarly in the previous patch of this series.

> +}
> +
>  int igc_tsn_offload_apply(struct igc_adapter *adapter)
>  {
>  	struct igc_hw *hw = &adapter->hw;
>  
> -	/* Per I225/6 HW Design Section 7.5.2.1, transmit mode
> -	 * cannot be changed dynamically. Require reset the adapter.
> +	/* Per I225/6 HW Design Section 7.5.2.1 guideline, if tx mode change
> +	 * from legacy->tsn or tsn->legacy, then reset adapter is needed.
>  	 */
>  	if (netif_running(adapter->netdev) &&
> -	    (igc_is_device_id_i225(hw) || !adapter->qbv_count)) {
> +	    (igc_is_device_id_i225(hw) || igc_is_device_id_i226(hw)) &&
> +	     igc_tsn_will_tx_mode_change(adapter)) {
>  		schedule_work(&adapter->reset_task);
>  		return 0;
>  	}
> -- 
> 2.25.1
> 
> 
