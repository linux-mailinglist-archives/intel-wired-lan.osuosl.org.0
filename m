Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5511469DCCF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Feb 2023 10:23:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2ABA82612;
	Tue, 21 Feb 2023 09:23:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2ABA82612
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676971411;
	bh=Wtm9u1FFJgbIcbP14dSyH3vl7tibeAqojDGDffJ93SM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DwtH0Rf8LxilMfxcmKtfizTff+j8onsIcOeU2CGa0gA0QSMpj1hKiUr4A7FYehPSV
	 d8bulE0Q/EObUD1h0Xe8ZL6GsuU5C9slRLpHA5EE1MJNA93GXRFfMPfoXpNcuV7d5F
	 MHkD7QMuNpMAs6IHA+zM8yV8CkbftMgoY4xxUMMSr6yJdIKiY/ITaSyG3eSsXuJsSe
	 AIDAJq4ybb3/yORYyolv01xZVNjdP9TwHbpLlkQ6RCX2iruH94EBtw5QCE/C1XJ6RO
	 w33cOcmvAMuTIuxhlcAVMZNNQBXNPc40ZbStYIljobSPR9Og+ngi/Mxo1t09upYcHq
	 aNptSE2H0nEVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nV2EWd1S5SLT; Tue, 21 Feb 2023 09:23:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3C9E81F28;
	Tue, 21 Feb 2023 09:23:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3C9E81F28
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51C321BF578
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 09:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2ABEE40242
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 09:23:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ABEE40242
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZmAWGTamnss for <intel-wired-lan@osuosl.org>;
 Tue, 21 Feb 2023 09:23:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EDFD400DC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4EDFD400DC
 for <intel-wired-lan@osuosl.org>; Tue, 21 Feb 2023 09:23:23 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EAA8161CC457B;
 Tue, 21 Feb 2023 10:23:19 +0100 (CET)
Message-ID: <14182338-15eb-4cef-6b4f-a76f448434e1@molgen.mpg.de>
Date: Tue, 21 Feb 2023 10:23:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
References: <20230217220359.987004-1-pawel.chmielewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230217220359.987004-1-pawel.chmielewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/1] ice: Change assigning
 method of the CPU affinity masks
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
Cc: netdev@vger.kernel.org, intel-wired-lan@osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Pawel,


Thank you for your patch.

Am 17.02.23 um 23:03 schrieb Pawel Chmielewski:
> With the introduction of sched_numa_hop_mask() and for_each_numa_hop_mask(),
> the affinity masks for queue vectors can be conveniently set by preferring the
> CPUs that are closest to the NUMA node of the parent PCI device.

Please reflow the commit message for 75 characters per line.

Additionally, you could be more specific in the commit message summary:

ice: Prefer CPUs closest to NUMA node of parent PCI

In the commit message, please elaborate, how you tested and benchmarked 
your change.

> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> ---
> Changes since v2:
>   * Pointers for cpumasks point to const struct cpumask
>   * Removed unnecessary label
>   * Removed redundant blank lines
> 
> Changes since v1:
>   * Removed obsolete comment
>   * Inverted condition for loop escape
>   * Incrementing v_idx only in case of available cpu
> ---
>   drivers/net/ethernet/intel/ice/ice_base.c | 21 ++++++++++++++++-----
>   1 file changed, 16 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 1911d644dfa8..30dc1c3c290f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -121,9 +121,6 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
>   
>   	if (vsi->type == ICE_VSI_VF)
>   		goto out;
> -	/* only set affinity_mask if the CPU is online */
> -	if (cpu_online(v_idx))
> -		cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
>   
>   	/* This will not be called in the driver load path because the netdev
>   	 * will not be created yet. All other cases with register the NAPI
> @@ -662,8 +659,10 @@ int ice_vsi_wait_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx)
>    */
>   int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
>   {
> +	const struct cpumask *aff_mask, *last_aff_mask = cpu_none_mask;
>   	struct device *dev = ice_pf_to_dev(vsi->back);
> -	u16 v_idx;
> +	int numa_node = dev->numa_node;
> +	u16 v_idx, cpu = 0;

Could you use `unsigned int` for `cpu`?

     include/linux/cpumask.h:static inline bool cpu_online(unsigned int cpu)

>   	int err;
>   
>   	if (vsi->q_vectors[0]) {
> @@ -677,7 +676,19 @@ int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
>   			goto err_out;
>   	}
>   
> -	return 0;
> +	v_idx = 0;
> +	for_each_numa_hop_mask(aff_mask, numa_node) {
> +		for_each_cpu_andnot(cpu, aff_mask, last_aff_mask) {
> +			if (v_idx >= vsi->num_q_vectors)
> +				return 0;
> +
> +			if (cpu_online(cpu)) {
> +				cpumask_set_cpu(cpu, &vsi->q_vectors[v_idx]->affinity_mask);
> +				v_idx++;
> +			}
> +		}
> +		last_aff_mask = aff_mask;
> +	}
>   
>   err_out:
>   	while (v_idx--)


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
