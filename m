Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07184926457
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 17:08:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A52B86066D;
	Wed,  3 Jul 2024 15:08:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 73Bg-OugzAOp; Wed,  3 Jul 2024 15:08:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5F1860E9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720019320;
	bh=u5yAmtc3TRMmp7hr2GNP8JbJrlYW5rIwyz/979AH6xM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ruK5/PgEb3Nm06ZDebNRbGvC8PJdhSJk7GtJUCS584IB5wMUFwl0sHb17r+/ljnCS
	 TZ5If92nSlMaiTuAg0aPMyu6AaEyf1cUxc73EQFNg2hyMO1tVMqza/R1atFrMAG6LI
	 WaLBTZQ+RhjHuI+WqQCcanrAbbiqlQB7PxEC77u1DlAEPsW4WP5arrKMSSCA7yHUqd
	 liKBhaGEuP0qdzT4rMHgkSSHXgPMzGsJNoR6yJlhBA5MZMaSu4PadjsvRfSiRNuAg6
	 C+iGB6RHrNInvAFYDdhDHNO4baCXbi5K++FRv1s/VULqbbfZojIjZvNYJxRUYumx/4
	 kEUvmlwK1ef6w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5F1860E9A;
	Wed,  3 Jul 2024 15:08:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB7431BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B70D940536
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:08:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CSa0apkO0U9G for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 15:08:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0CE8403DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0CE8403DC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0CE8403DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:08:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7ABD262310;
 Wed,  3 Jul 2024 15:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C11F9C2BD10;
 Wed,  3 Jul 2024 15:08:32 +0000 (UTC)
Date: Wed, 3 Jul 2024 16:08:30 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Message-ID: <20240703150830.GO598357@kernel.org>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
 <20240702040926.3327530-2-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702040926.3327530-2-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720019315;
 bh=lAX7AD5BLSxqIQUwHe6xLlpQ2JbfV2Twnsd17wFHnnA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WDEq7msq+dt6Fu6rj8PED1k/VmxDrbkjC5MhrEbatrm7NUkDuD16Gc6u1EC+CeABl
 i8dbrvDwdvJcUp7qqcmUlgb1va59/INITxOSX8/oe2EH6lG0Pwq6YMvwYIJ8mEyaiP
 TG8xKk0eTNZyJHK+bB7PFdiRUXOdrDTOVqc3u0Q0GySc21XZD9s/wNMQg8GfcIU2aA
 Ba2MvPpYxnsbZQwSFfJC4jqeCiWWmsyFWVhGyIJGaS18ImwK2XTq7qngSqj7bfEqxK
 2sREfTTwSKo6ELP+W5UybPGfSMJz77FKLfk9GaU6tWt4W5Iy1kM8u3e89ya2F3Fqai
 UB+d2JxBWhbqA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WDEq7msq
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/4] igc: Fix
 qbv_config_change_errors logics
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

On Tue, Jul 02, 2024 at 12:09:23AM -0400, Faizal Rahim wrote:
> When user issues these cmds:
> 1. Either a) or b)
>    a) mqprio with hardware offload disabled
>    b) taprio with txtime-assist feature enabled
> 2. etf
> 3. tc qdisc delete
> 4. taprio with base time in the past
> 
> At step 4, qbv_config_change_errors wrongly increased by 1.
> 
> Excerpt from IEEE 802.1Q-2018 8.6.9.3.1:
> "If AdminBaseTime specifies a time in the past, and the current schedule
> is running, then: Increment ConfigChangeError counter"
> 
> qbv_config_change_errors should only increase if base time is in the past
> and no taprio is active. In user perspective, taprio was not active when
> first triggered at step 4. However, i225/6 reuses qbv for etf, so qbv is
> enabled with a dummy schedule at step 2 where it enters
> igc_tsn_enable_offload() and qbv_count got incremented to 1. At step 4, it
> enters igc_tsn_enable_offload() again, qbv_count is incremented to 2.
> Because taprio is running, tc_setup_type is TC_SETUP_QDISC_ETF and
> qbv_count > 1, qbv_config_change_errors value got incremented.
> 
> This issue happens due to reliance on qbv_count field where a non-zero
> value indicates that taprio is running. But qbv_count increases
> regardless if taprio is triggered by user or by other tsn feature. It does
> not align with qbv_config_change_errors expectation where it is only
> concerned with taprio triggered by user.
> 
> Fixing this by relocating the qbv_config_change_errors logic to
> igc_save_qbv_schedule(), eliminating reliance on qbv_count and its
> inaccuracies from i225/6's multiple uses of qbv feature for other TSN
> features.
> 
> The new function created: igc_tsn_is_taprio_activated_by_user() uses
> taprio_offload_enable field to indicate that the current running taprio
> was triggered by user, instead of triggered by non-qbv feature like etf.
> 
> Fixes: ae4fe4698300 ("igc: Add qbv_config_change_errors counter")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Thanks Faizal,

My nit below notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

...

> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 22cefb1eeedf..02dd41aff634 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -78,6 +78,17 @@ void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
>  	wr32(IGC_GTXOFFSET, txoffset);
>  }
>  
> +bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +
> +	if ((rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
> +	    adapter->taprio_offload_enable)
> +		return true;
> +	else
> +		return false;

As per my response to patch 2/4, I think something like this is a bit
nicer:

(Completely untested!)

	return (rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
		adapter->taprio_offload_enable;


> +}
> +
>  /* Returns the TSN specific registers to their default values after
>   * the adapter is reset.
>   */

...
