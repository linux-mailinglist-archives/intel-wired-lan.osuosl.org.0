Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBCD80BA6F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Dec 2023 12:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45CEB61062;
	Sun, 10 Dec 2023 11:44:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45CEB61062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702208688;
	bh=fXSxAHDGYs1BOZkObhTqUHIUKfgXMAUXBLn8Nas0JoQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WZUzu4/59DPM6A20Lz5DfFRvmKlF+MVh9dmKcHBM0v5EHlNZHclLENQ+7xrBG1C31
	 xycSYCtFBDRGXjA5ONGvTCyp0jBXs62iDa7ZqhR045EH958mitm3TSCE/3IqJ8uyXx
	 HziMj4xKxUWeBNRjM48F8FuuZWTEDod+lO/iEpzEY7eLNcxYahkMCwRu97W3iyAnfl
	 LHMMdjarWZO5FPg1QgxeaSrMXgzN3AWXfMq1pPtxci3mJMpv/5qrNGAwalikAHdO7Q
	 QUGORih2/LT+ngW9Nas9wuT5HpRJh8Ixyyuh+MDbi8xgdyZJKqXvqtwTAE+A5effMZ
	 NPdTkWHRwlquQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XsgxqBbgWmc0; Sun, 10 Dec 2023 11:44:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCCE361034;
	Sun, 10 Dec 2023 11:44:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCCE361034
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B2A11BF593
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39162409B5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39162409B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9jcfpo0zum7 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Dec 2023 11:44:40 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD214400D6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:44:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD214400D6
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 0E0EBB80A4E;
 Sun, 10 Dec 2023 11:44:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36A27C433C8;
 Sun, 10 Dec 2023 11:44:34 +0000 (UTC)
Date: Sun, 10 Dec 2023 11:44:31 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20231210114431.GG5817@kernel.org>
References: <20231206201905.846723-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206201905.846723-1-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702208675;
 bh=kdBLoAjjIs/FLrxJuUWkVq0Dh/+ngOXVVslrqDTXYY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p4+pgFo1CTvbw62XVJm43KD2KFk3ccVkmULsvKIRZslSEP0Znk4r3i4mRI9BT2mAA
 FCC2SbDVBABkTKprMHO69akdVBDYHzc1SZVOFO5Q0glpWCkwKUb/hVDPyy6kutyVBT
 n+hcLfPUtOu2HJXx7OlEHrD90Wd2eXcb7+nMtd0lnTvUic+HPFyuEh6fZt8JpPF7F0
 mwRNU0VzGEiDe6IfD8/0exSEjl6Il8KzcbFKs2V+V5jc4qXMEs7C4xOcdEpPynVHtC
 t3rjzcd8MLuCOpTyZ60akmjENnyy+LVv6d7PdLg95Q42/Qi2J9IeMy8To2+K6GrW9/
 PfGHzKLyIG9og==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=p4+pgFo1
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: stop trashing VF VSI
 aggregator node ID information
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Ivan Vecera <ivecera@redhat.com>

On Wed, Dec 06, 2023 at 12:19:05PM -0800, Jacob Keller wrote:
> When creating new VSIs, they are assigned into an aggregator node in the
> scheduler tree. Information about which aggregator node a VSI is assigned
> into is maintained by the vsi->agg_node structure. In ice_vsi_decfg(), this
> information is being destroyed, by overwriting the valid flag and the
> agg_id field to zero.
> 
> For VF VSIs, this breaks the aggregator node configuration replay, which
> depends on this information. This results in VFs being inserted into the
> default aggregator node. The resulting configuration will have unexpected
> Tx bandwidth sharing behavior.
> 
> This was broken by commit 6624e780a577 ("ice: split ice_vsi_setup into
> smaller functions"), which added the block to reset the agg_node data.
> 
> The vsi->agg_node structure is not managed by the scheduler code, but is
> instead a wrapper around an aggregator node ID that is tracked at the VSI
> layer. Its been around for a long time, and its primary purpose was for
> handling VFs. The SR-IOV VF reset flow does not make use of the standard VSI
> rebuild/replay logic, and uses vsi->agg_node as part of its handling to
> rebuild the aggregator node configuration.
> 
> The logic for aggregator nodes stretches  back to early ice driver code from
> commit b126bd6bcd67 ("ice: create scheduler aggregator node config and move
> VSIs")
> 
> The logic in ice_vsi_decfg() which trashes the ice_agg_node data is clearly
> wrong. It destroys information that is necessary for handling VF reset,. It
> is also not the correct way to actually remove a VSI from an aggregator
> node. For that, we need to implement logic in the scheduler code. Further,
> non-VF VSIs properly replay their aggregator configuration using existing
> scheduler replay logic.
> 
> To fix the VF replay logic, remove this broken aggregator node cleanup
> logic. This is the simplest way to immediately fix this.
> 
> This ensures that VFs will have proper aggregate configuration after a
> reset. This is especially important since VFs often perform resets as part
> of their reconfiguration flows. Without fixing this, VFs will be placed in
> the default aggregator node and Tx bandwidth will not be shared in the
> expected and configured manner.
> 
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> This is the simplest fix to resolve the aggregator node problem. However, I
> think we should clean this up properly. I don't know why the VF VSIs have
> their own custom code for replaying aggregator configuration. I also think
> its odd that there is both structures to track aggregator information in
> ice_sched.c, but we use a separate structure in ice.h for the ice_vsi
> structure. I plan to investigate this and clean it up in next. However, I
> wanted to get a smaller fix out to net sooner rather than later.

Less is more, for now :)

Reviewed-by: Simon Horman <horms@kernel.org>

I've added Ivan to the CC list in case he wants to review this too.

> 
>  drivers/net/ethernet/intel/ice/ice_lib.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 4b1e56396293..de7ba87af45d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2620,10 +2620,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
>  	if (vsi->type == ICE_VSI_VF &&
>  	    vsi->agg_node && vsi->agg_node->valid)
>  		vsi->agg_node->num_vsis--;
> -	if (vsi->agg_node) {
> -		vsi->agg_node->valid = false;
> -		vsi->agg_node->agg_id = 0;
> -	}
>  }
>  
>  /**
> -- 
> 2.41.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
