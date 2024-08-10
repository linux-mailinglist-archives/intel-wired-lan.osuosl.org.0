Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA9094DBCA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2024 11:10:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38CE141488;
	Sat, 10 Aug 2024 09:10:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4XU7QJW0M-zq; Sat, 10 Aug 2024 09:10:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 338834146F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723281026;
	bh=Ol5ANs+U/a0i2lbGU0JF63v7sVxvV2UVjcfqmERwff8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=45uUbbTcmI1O5nwj23ZDgMPz6nqL6DDh6Q9pCBLtejYBDywDJ2y04LLsKnNhDmdeC
	 YjNCatF6GM16DCEZyDSivj7lkXLhuhRJyvoB+mCRBQzJYy96S0zjPB8qihPXJ1V1Cv
	 1w1ryCHmLjJGScYfUhkm0/8hVeTTzlhHoseLMCZsiE6BlQmw1mIg6ibgX9epYjFDP8
	 EGuqMSgrl/FKcYY6foDuf/B6PCv1oJZL9QhdyL5N8Zql3cQiF0lIM3Up+7rwC7tiT8
	 7RzKsDxJBHsIbM6eas1Hpfy6k9h8r4Kwre8SyXwwl0KdvY7xChD3A7skdLDP6LIViV
	 0q0P6GH/PL+ZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 338834146F;
	Sat, 10 Aug 2024 09:10:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB8AA1BF85D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 09:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D322580DB4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 09:10:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qbA8L27B4SPv for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 09:10:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F27E380DA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F27E380DA9
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F27E380DA9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 09:10:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4BFF8CE1736;
 Sat, 10 Aug 2024 09:10:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04231C32781;
 Sat, 10 Aug 2024 09:10:17 +0000 (UTC)
Date: Sat, 10 Aug 2024 10:10:15 +0100
From: Simon Horman <horms@kernel.org>
To: Gui-Dong Han <hanguidong02@outlook.com>
Message-ID: <20240810091015.GF1951@kernel.org>
References: <SY8P300MB0460412FE86859FF97DE6342C0BA2@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SY8P300MB0460412FE86859FF97DE6342C0BA2@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723281020;
 bh=WXVJCXwzW1I64R/W1MgTk/3ACJlurBYFgx0Z/peXnpg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vG6OR5PyBUb0T2jL8vh9GqW3U7h4zQlB2AlJP6piU89z4nevU4SxV+ZrzvpXJV8c7
 0DdJYWt+8M0cEeCDsKaOrN5l5/hf9Zf8R+rmlly+rgAp7Ybvrp1zhwM81SIe7cJhTF
 XmvIyJtSWAxHfCIOweNktdNQQKW2CI0s/D8ZZAez6IU+q7xfDjFp+LHG50EkxF0B/+
 AiD39UOxZPHTxCXPOulIUPQatB8QE0usuAe5dZ3gx0NuCjrUASvmYj2ZtxKv/XdrHs
 R9eFKfjGgFfW8WN1WKOTyNs0dd8Tsx51yEPvS3ovPpCDFNvnLO1kfVx06+j6dgSEpN
 GsDyyXcTDNRog==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=vG6OR5Py
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix improper handling of
 refcount in ice_sriov_set_msix_vec_count()
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
Cc: przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 baijiaju1990@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 09, 2024 at 12:59:11PM +0800, Gui-Dong Han wrote:
> This patch addresses an issue with improper reference count handling in the
> ice_sriov_set_msix_vec_count() function. Specifically, the function calls
> ice_get_vf_by_id(), which increments the reference count of the vf pointer.
> If the subsequent call to ice_get_vf_vsi() fails, the function currently
> returns an error without decrementing the reference count of the vf
> pointer, leading to a reference count leak.
> 
> The correct behavior, as implemented in this patch, is to decrement the
> reference count using ice_put_vf(vf) before returning an error when vsi
> is NULL.
>  
> This bug was identified by an experimental static analysis tool developed
> by our team. The tool specializes in analyzing reference count operations
> and identifying potential mismanagement of reference counts. In this case,
> the tool flagged the missing decrement operation as a potential issue,
> leading to this patch.
> 
> Fixes: 4035c72dc1ba ("ice: reconfig host after changing MSI-X on VF")
> Cc: stable@vger.kernel.org
> Signed-off-by: Gui-Dong Han <hanguidong02@outlook.com>

Thanks Gui-Dong Han,

I agree with your analysis.
However, I wonder if the same resource leak can occur
in the unroll label, if the if clause results in a return.

It is around line 1444 without your patch applied.

	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
	if (vf->first_vector_idx < 0)
		return -EINVAL;

> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 55ef33208456..eb5030aba9a5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1096,8 +1096,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
>  		return -ENOENT;
>  
>  	vsi = ice_get_vf_vsi(vf);
> -	if (!vsi)
> +	if (!vsi) {
> +		ice_put_vf(vf);
>  		return -ENOENT;
> +	}
>  
>  	prev_msix = vf->num_msix;
>  	prev_queues = vf->num_vf_qs;
> -- 
> 2.25.1
> 
> 
