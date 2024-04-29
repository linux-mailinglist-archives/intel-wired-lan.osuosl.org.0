Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD78B594F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2024 15:05:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B84E780F24;
	Mon, 29 Apr 2024 13:05:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ewMCpq7icX54; Mon, 29 Apr 2024 13:05:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89C3380FA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714395928;
	bh=jcGGYxR/wcR1/GKC59wZgbZHJHnON98qCG3tGOf36NM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B3lm+fc6VeJBVRK5nHsDiemwOPvrMsJNhBqqOJtHn/tEzjadoQqS6/PtRRHBH2Tyn
	 jpNkQ1enYFduOg/zFXbg2RbcqfcRnBNTjf+QfLHhVVelET53B8DypDJ9VX0EB4fsHK
	 nWHGPBm1hmqUEZw/qUvOccT1PJz73JSVsQxMcbdaa07kgaXaRFwIkKj72fqFVfhJDg
	 k7qUaiNZNOrYUDY197/MvZYc/KXmxrizVdGvBt57+ZhS1ODa5U7Eppbv2etMwx0mJW
	 yt8Ly1AAB0eZKST69FrA3hzvmhZQz0Ia5QsUT9Tmm06j6iBYpg3rWobiR5E2G2MsAg
	 gGDgzTdKL8kbA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89C3380FA1;
	Mon, 29 Apr 2024 13:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D84091BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 13:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3E2480DC0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 13:05:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VVTtZTDUVMCn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2024 13:05:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 46DD480E87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46DD480E87
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46DD480E87
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 13:05:23 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aed0f.dynamic.kabel-deutschland.de
 [95.90.237.15])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E0E0861E5FE05;
 Mon, 29 Apr 2024 15:04:48 +0200 (CEST)
Message-ID: <a0359435-7e0f-4a48-9cc6-3db679bde1ac@molgen.mpg.de>
Date: Mon, 29 Apr 2024 15:04:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ross Lagerwall <ross.lagerwall@citrix.com>
References: <20240429124922.2872002-1-ross.lagerwall@citrix.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240429124922.2872002-1-ross.lagerwall@citrix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix enabling SR-IOV with Xen
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
Cc: netdev@vger.kernel.org, Javi Merino <javi.merino@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Ross,


Thank you for your patch.

Am 29.04.24 um 14:49 schrieb Ross Lagerwall:
> When the PCI functions are created, Xen is informed about them and
> caches the number of MSI-X entries each function has.  However, the
> number of MSI-X entries is not set until after the hardware has been
> configured and the VFs have been started. This prevents
> PCI-passthrough from working because Xen rejects mapping MSI-X
> interrupts to domains because it thinks the MSI-X interrupts don't
> exist.

Thank you for this great problem description. Is there any log message 
shown, you could paste, so people can find this commit when searching 
for the log message?

Do you have a minimal test case, so the maintainers can reproduce this 
to test the fix?

> Fix this by moving the call to pci_enable_sriov() later so that the
> number of MSI-X entries is set correctly in hardware by the time Xen
> reads it.

It’d be great if you could be more specific on “later”, and why this is 
the correct place.

> Signed-off-by: Ross Lagerwall <ross.lagerwall@citrix.com>
> Signed-off-by: Javi Merino <javi.merino@kernel.org>
> ---
> 
> In v2:
> * Fix cleanup on if pci_enable_sriov() fails.
> 
>   drivers/net/ethernet/intel/ice/ice_sriov.c | 23 +++++++++++++---------
>   1 file changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index a958fcf3e6be..bc97493046a8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -864,6 +864,8 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
>   	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
>   	struct device *dev = ice_pf_to_dev(pf);
>   	struct ice_hw *hw = &pf->hw;
> +	struct ice_vf *vf;
> +	unsigned int bkt;
>   	int ret;
>   
>   	pf->sriov_irq_bm = bitmap_zalloc(total_vectors, GFP_KERNEL);
> @@ -877,24 +879,20 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
>   	set_bit(ICE_OICR_INTR_DIS, pf->state);
>   	ice_flush(hw);
>   
> -	ret = pci_enable_sriov(pf->pdev, num_vfs);
> -	if (ret)
> -		goto err_unroll_intr;
> -
>   	mutex_lock(&pf->vfs.table_lock);
>   
>   	ret = ice_set_per_vf_res(pf, num_vfs);
>   	if (ret) {
>   		dev_err(dev, "Not enough resources for %d VFs, err %d. Try with fewer number of VFs\n",
>   			num_vfs, ret);
> -		goto err_unroll_sriov;
> +		goto err_unroll_intr;
>   	}
>   
>   	ret = ice_create_vf_entries(pf, num_vfs);
>   	if (ret) {
>   		dev_err(dev, "Failed to allocate VF entries for %d VFs\n",
>   			num_vfs);
> -		goto err_unroll_sriov;
> +		goto err_unroll_intr;
>   	}
>   
>   	ice_eswitch_reserve_cp_queues(pf, num_vfs);
> @@ -905,6 +903,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
>   		goto err_unroll_vf_entries;
>   	}
>   
> +	ret = pci_enable_sriov(pf->pdev, num_vfs);
> +	if (ret)
> +		goto err_unroll_start_vfs;
> +
>   	clear_bit(ICE_VF_DIS, pf->state);
>   
>   	/* rearm global interrupts */
> @@ -915,12 +917,15 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
>   
>   	return 0;
>   
> +err_unroll_start_vfs:
> +	ice_for_each_vf(pf, bkt, vf) {
> +		ice_dis_vf_mappings(vf);
> +		ice_vf_vsi_release(vf);
> +	}

Why wasn’t this needed with `pci_enable_sriov()` done earlier?

>   err_unroll_vf_entries:
>   	ice_free_vf_entries(pf);
> -err_unroll_sriov:
> -	mutex_unlock(&pf->vfs.table_lock);
> -	pci_disable_sriov(pf->pdev);
>   err_unroll_intr:
> +	mutex_unlock(&pf->vfs.table_lock);
>   	/* rearm interrupts here */
>   	ice_irq_dynamic_ena(hw, NULL, NULL);
>   	clear_bit(ICE_OICR_INTR_DIS, pf->state);


Kind regards,

Paul
