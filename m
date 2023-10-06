Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 916157BB62E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:16:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BAC541E7B;
	Fri,  6 Oct 2023 11:16:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BAC541E7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696591005;
	bh=fAY7Z7nzUYV5koPYz2yz3YrgB2qSm3NK/qMW9T5wxxQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GKTEkdBp6AQcYDIoca7hrDyht86jKtXJUYZsbkHS6nQyE+YeKW5JaPnT/YgUdotU8
	 QHwbcGAdsOjPSNFbprWzHC7YKKSWCZUyJoGo5KLKxEbHxWeUYvYRtG9HVDCo+M+D5F
	 j3rrF1T9De0CdUJUFbyrKJzD03Qmx25u72WmmUG8MQBdgi8EbntJFu8mQk3RO0sNV+
	 bX2RPryL3pIZdlvPRSGEU/46lAWSeUzfen+BgosQ4z9VfeScxzkoBx4ut73NEazMG9
	 37OxnV+Xz8zIU/HPCkjzovf1/iw7admmEQnNUHurRVWQLbVUA2apKmPUWSpvaEnV+h
	 QPhsoKjdZ2w4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6xIemb7GIvGR; Fri,  6 Oct 2023 11:16:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E38341DFB;
	Fri,  6 Oct 2023 11:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E38341DFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 511481BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 296B881E9D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 296B881E9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sXXzIwRwfuG9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:16:37 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D62C981E62
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D62C981E62
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6BABDCE26ED;
 Fri,  6 Oct 2023 11:16:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 684E9C43397;
 Fri,  6 Oct 2023 11:16:29 +0000 (UTC)
Date: Fri, 6 Oct 2023 13:16:27 +0200
From: Simon Horman <horms@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZR/si/di5IbSB9Gq@kernel.org>
References: <3cee09b8-4c49-4a39-b889-75c0798dfe1c@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3cee09b8-4c49-4a39-b889-75c0798dfe1c@moroto.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696590991;
 bh=/9ry5KltDfiR7VrvMhHB0ZYHyVGwugubCOANKdLFAf4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E6tGswAjsXMdB6tRqQ2T0pnrSjTOgtO5Jhu8lFi6WFuMYQfgghdZjv7iBzYcstWWx
 btkRhHPzjKM8my2Waw0lXE3MN7xHnTzI7lt8BAlwpIbgpLUT2Lp3LqeBX8YEkPm2jy
 d8XeBihAfvwjQDJ7jbgBqbOYeUcH6Ng1keExewCTitN/Og0RKyI13c3FQKXw0Uc5Vi
 +3fH5fhxKfLqdFce9pmy64pfz3dniuX3TQ4le5qR6j4wPD6NcDO5j8eUDNCOPXuDb0
 BYbth7IhYR1MXprOPdyIF9hEcLmQWePVuBTtNC4q+7nxAPMN9DPxTK1xZpvNfuPt1/
 7H7mHHA67/U1g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=E6tGswAj
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix crash with empty VF
 macvlan list
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Greg Rose <gregory.v.rose@intel.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 05, 2023 at 04:57:02PM +0300, Dan Carpenter wrote:
> The adapter->vf_mvs.l list needs to be initialized even if the list is
> empty.  Otherwise it will lead to crashes.
> 
> Fixes: c6bda30a06d9 ("ixgbe: Reconfigure SR-IOV Init")

Hi Dan,

I see that the patch cited above added the line you are changing.
But it also seems to me that patch was moving it from elsewhere.

Perhaps I am mistaken, but I wonder if this is a better tag.

Fixes: a1cbb15c1397 ("ixgbe: Add macvlan support for VF")

> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> index a703ba975205..9cfdfa8a4355 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> @@ -28,6 +28,9 @@ static inline void ixgbe_alloc_vf_macvlans(struct ixgbe_adapter *adapter,
>  	struct vf_macvlans *mv_list;
>  	int num_vf_macvlans, i;
>  
> +	/* Initialize list of VF macvlans */
> +	INIT_LIST_HEAD(&adapter->vf_mvs.l);
> +
>  	num_vf_macvlans = hw->mac.num_rar_entries -
>  			  (IXGBE_MAX_PF_MACVLANS + 1 + num_vfs);
>  	if (!num_vf_macvlans)
> @@ -36,8 +39,6 @@ static inline void ixgbe_alloc_vf_macvlans(struct ixgbe_adapter *adapter,
>  	mv_list = kcalloc(num_vf_macvlans, sizeof(struct vf_macvlans),
>  			  GFP_KERNEL);
>  	if (mv_list) {

I'm not sure it it is worth it, but perhaps more conventional error
handling could be used here:

	if (!mv_list)
		return;

	for (i = 0; i < num_vf_macvlans; i++) {
		...

> -		/* Initialize list of VF macvlans */
> -		INIT_LIST_HEAD(&adapter->vf_mvs.l);
>  		for (i = 0; i < num_vf_macvlans; i++) {
>  			mv_list[i].vf = -1;
>  			mv_list[i].free = true;
> -- 
> 2.39.2
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
