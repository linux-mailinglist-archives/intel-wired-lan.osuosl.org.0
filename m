Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CCA6440E5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 11:02:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 889C241603;
	Tue,  6 Dec 2022 10:02:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 889C241603
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670320969;
	bh=6kZ14D7RzBzX8TS6Ci90n9YEkQQqg/ll4JTZYCxWcuI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vp11mLjQgdQHj22uUbhLGSSskSL9R8yUuuzN/+ytS3aImgAJ23oz3aATpgg9Dxivn
	 OBXGEhkdOSWgEoYSJ20MGA+puiXv6/41B4mD2iTfrorU1fR/9UjHbbE5MYHu3y9KBW
	 0oXOBSFjz6T2u3ZlQJqOeg9e/u1mZa6pLduYokB9vt2qqt+BlF0N6LPqpKQK2k88Ff
	 fs99euzDDT2VRarW10K0LsOgF69BCd32o8IsX/8uFYELUPmtbsyZVMe97DXJ+QB4P0
	 A/eOGSUKeXmc8hkaqfzrmQZtGkq1+OMg0gSF67MesJZXCAteRWXUkkYtKH3CbKLmwY
	 Krq4pCHPlPK9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l-IZwYSHuAW0; Tue,  6 Dec 2022 10:02:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F69E4155E;
	Tue,  6 Dec 2022 10:02:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F69E4155E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C4ED1BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:02:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1320781329
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1320781329
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o_eh0tYc3oDa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 10:02:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 446EF81251
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 446EF81251
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:02:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 78485B81690;
 Tue,  6 Dec 2022 10:02:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6A79C433C1;
 Tue,  6 Dec 2022 10:02:38 +0000 (UTC)
Date: Tue, 6 Dec 2022 12:02:35 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Yuan Can <yuancan@huawei.com>
Message-ID: <Y48TO7s0K9J0kVh0@unreal>
References: <20221206092613.122952-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221206092613.122952-1-yuancan@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1670320959;
 bh=W+U4g9oT9hoz6TyxcYb6WtqTgSP2tm3BeDOnNiaWctw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y8uIOsvjzvGdysVIxHgoZY8WSqBlgd7Ug5oGoEdouyeegqJp5Y/uHYC+nVhBs2IV5
 V4azNNlOtLf6AlS/SyqVaSVmENRCiNmxuTMNdnF5oGYwNx0tSr9mGAas1dTmn1g7a2
 6DX9hJn5zSxWOgPUkjCSGUFm7cBq0Hv87Q4jfnxhPvnv23zD8fdo1RKOro5yURIdUn
 pAxDUuWtPwxazrksTc4xApsfCibJKvnxWZqGe/hJEGKJA7l9y/H31AxaPG5RCiizy7
 MvDFrLa9HBGIRh/O54u+92MB+ZZKjYIzFkoutUdGDulvDm28ei6YO+oxXCjUusl4Qv
 2lkyFZWRtKtJg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Y8uIOsvj
Subject: Re: [Intel-wired-lan] [PATCH] intel/i40e: Fix potential memory leak
 in i40e_init_recovery_mode()
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jeffrey.t.kirsher@intel.com, piotr.marczak@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 06, 2022 at 09:26:13AM +0000, Yuan Can wrote:
> If i40e_vsi_mem_alloc() failed in i40e_init_recovery_mode(), the pf will be
> freed with the pf->vsi leaked.
> Fix by free pf->vsi in the error handling path.
> 
> Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
>  1 file changed, 1 insertion(+)

The patch title needs to be "[PATCH net]..." 

> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b5dcd15ced36..d23081c224d6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -15536,6 +15536,7 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
>  	pci_disable_pcie_error_reporting(pf->pdev);
>  	pci_release_mem_regions(pf->pdev);
>  	pci_disable_device(pf->pdev);
> +	kfree(pf->vsi);
>  	kfree(pf);
>  
>  	return err;

The change is ok, but it is worth to cleanup error flow of i40e_probe and i40e_remove
as they are not really in the same order.

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
