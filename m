Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D2E878175
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 15:15:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EE4D40645;
	Mon, 11 Mar 2024 14:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGVCB_tbsgfM; Mon, 11 Mar 2024 14:14:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D7EA405FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710166498;
	bh=jIYeR1Oyinzk8LmsKNaS9tv/vdeJGDriFC9oXdn2s/c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aMGJqJ07g2ONOOJupuA35MdOJNVqJPiKeLhirHyJjnNzZfYVGM6Wcq8diE5lEKJZH
	 HSoTqGugYTJsZQYiTnlzfw72HJha8d9mooLkH1IvX6p/aOYKPtKWN9GecwlhX+Qc4C
	 9slHVFlTVp9g2MiR4GnyB2VHwr5tPoqjPogTxRYNxHj2ASVi1pNwJQAvtW2hkGVwQt
	 q7Ywtpo+GsJ+RuqlE4vj8zqyBx5xj6zPc5lGsLrZicsn1oT+/d03Wu4PBjD6jyplLr
	 ipXLYVmEkLt6w7krFPleKg+iHWf9PbG89g9KTnSbg7rTVL4hF9xWCgkxfPI60TweAt
	 4PCmpPMGVJsAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D7EA405FB;
	Mon, 11 Mar 2024 14:14:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2C9A1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 14:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE1C9402D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 14:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GqnLgQ7nShE0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 14:14:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EBE4140264
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBE4140264
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBE4140264
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 14:14:52 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3AC3761E5FE04;
 Mon, 11 Mar 2024 15:14:32 +0100 (CET)
Message-ID: <e7b69483-24d6-44a0-af00-fb796ba07dff@molgen.mpg.de>
Date: Mon, 11 Mar 2024 15:14:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20240311112503.19768-1-aleksandr.loktionov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240311112503.19768-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix vf may be used
 uninitialized in this function warning
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for the patch.


Am 11.03.24 um 12:25 schrieb Aleksandr Loktionov:
> To fix the regression introduced by 52424f974bc5 commit, wchich causes

1.  by commit 52424f974bc5
2.  s/wchich/which/

> servers hang in very hard to reproduce conditions with resets races.

Is there a public report for this?

> Remove redundant "v" variable and iterate via single VF pointer across
> whole function instead to guarantee VF pointer validity.

Could you please elaborate how the VF pointer currently gets invalid?


Kind regards,

Paul


> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 34 +++++++++----------
>   1 file changed, 16 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index b34c717..f7c4654 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1628,105 +1628,103 @@ bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr)
>   {
>   	struct i40e_hw *hw = &pf->hw;
>   	struct i40e_vf *vf;
> -	int i, v;
>   	u32 reg;
> +	int i;
>   
>   	/* If we don't have any VFs, then there is nothing to reset */
>   	if (!pf->num_alloc_vfs)
>   		return false;
>   
>   	/* If VFs have been disabled, there is no need to reset */
>   	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
>   		return false;
>   
>   	/* Begin reset on all VFs at once */
> -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> -		vf = &pf->vf[v];
> +	for (vf = &pf->vf[0]; vf < &pf->vf[pf->num_alloc_vfs]; ++vf) {

Shouldn’t pointer arithmetic be avoided?

>   		/* If VF is being reset no need to trigger reset again */
>   		if (!test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
> -			i40e_trigger_vf_reset(&pf->vf[v], flr);
> +			i40e_trigger_vf_reset(vf, flr);
>   	}
>   
>   	/* HW requires some time to make sure it can flush the FIFO for a VF
>   	 * when it resets it. Poll the VPGEN_VFRSTAT register for each VF in
>   	 * sequence to make sure that it has completed. We'll keep track of
>   	 * the VFs using a simple iterator that increments once that VF has
>   	 * finished resetting.
>   	 */
> -	for (i = 0, v = 0; i < 10 && v < pf->num_alloc_vfs; i++) {
> +	for (i = 0, vf = &pf->vf[0]; i < 10 && vf < &pf->vf[pf->num_alloc_vfs]; ++i) {
>   		usleep_range(10000, 20000);
>   
>   		/* Check each VF in sequence, beginning with the VF to fail
>   		 * the previous check.
>   		 */
> -		while (v < pf->num_alloc_vfs) {
> -			vf = &pf->vf[v];
> +		while (vf < &pf->vf[pf->num_alloc_vfs]) {
>   			if (!test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states)) {
>   				reg = rd32(hw, I40E_VPGEN_VFRSTAT(vf->vf_id));
>   				if (!(reg & I40E_VPGEN_VFRSTAT_VFRD_MASK))
>   					break;
>   			}
>   
>   			/* If the current VF has finished resetting, move on
>   			 * to the next VF in sequence.
>   			 */
> -			v++;
> +			++vf;
>   		}
>   	}
>   
>   	if (flr)
>   		usleep_range(10000, 20000);
>   
>   	/* Display a warning if at least one VF didn't manage to reset in
>   	 * time, but continue on with the operation.
>   	 */
> -	if (v < pf->num_alloc_vfs)
> +	if (vf < &pf->vf[pf->num_alloc_vfs])
>   		dev_err(&pf->pdev->dev, "VF reset check timeout on VF %d\n",
> -			pf->vf[v].vf_id);
> +			vf->vf_id);
>   	usleep_range(10000, 20000);
>   
>   	/* Begin disabling all the rings associated with VFs, but do not wait
>   	 * between each VF.
>   	 */
> -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> +	for (vf = &pf->vf[0]; vf < &pf->vf[pf->num_alloc_vfs]; ++vf) {
>   		/* On initial reset, we don't have any queues to disable */
> -		if (pf->vf[v].lan_vsi_idx == 0)
> +		if (vf->lan_vsi_idx == 0)
>   			continue;
>   
>   		/* If VF is reset in another thread just continue */
>   		if (test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
>   			continue;
>   
> -		i40e_vsi_stop_rings_no_wait(pf->vsi[pf->vf[v].lan_vsi_idx]);
> +		i40e_vsi_stop_rings_no_wait(pf->vsi[vf->lan_vsi_idx]);
>   	}
>   
>   	/* Now that we've notified HW to disable all of the VF rings, wait
>   	 * until they finish.
>   	 */
> -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> +	for (vf = &pf->vf[0]; vf < &pf->vf[pf->num_alloc_vfs]; ++vf) {
>   		/* On initial reset, we don't have any queues to disable */
> -		if (pf->vf[v].lan_vsi_idx == 0)
> +		if (vf->lan_vsi_idx == 0)
>   			continue;
>   
>   		/* If VF is reset in another thread just continue */
>   		if (test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
>   			continue;
>   
> -		i40e_vsi_wait_queues_disabled(pf->vsi[pf->vf[v].lan_vsi_idx]);
> +		i40e_vsi_wait_queues_disabled(pf->vsi[vf->lan_vsi_idx]);
>   	}
>   
>   	/* Hw may need up to 50ms to finish disabling the RX queues. We
>   	 * minimize the wait by delaying only once for all VFs.
>   	 */
>   	mdelay(50);
>   
>   	/* Finish the reset on each VF */
> -	for (v = 0; v < pf->num_alloc_vfs; v++) {
> +	for (vf = &pf->vf[0]; vf < &pf->vf[pf->num_alloc_vfs]; ++vf) {
>   		/* If VF is reset in another thread just continue */
>   		if (test_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
>   			continue;
>   
> -		i40e_cleanup_reset_vf(&pf->vf[v]);
> +		i40e_cleanup_reset_vf(vf);
>   	}
>   
>   	i40e_flush(hw);
