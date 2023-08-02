Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2204A76D1A9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 17:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B30F414E2;
	Wed,  2 Aug 2023 15:19:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B30F414E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690989566;
	bh=K69sIGcSSfUNVZc7X8Ga3lFRGugNiS41+80vZsaCIzU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AI7Wtjbj7yAGph9NCdcmbxl40TUHG6KwrjjDZYd+fvLhrGs5ZbKi/1aN1/l4cAEn6
	 sRXYFfXG9QIGqjU7lb8pqqEqzW8y3OlgauWINCFJnaggqsJWTZZ2yseKzYBq+zWXEB
	 9CmLaCP6hWMCM85BtBoPfG8HMtgzY8i8BkI82Tetffmn5JjEOBH6yJy+acQR/tHUdA
	 ntNfYwvs37rBXv3oGFb+DRRyxn7iCaigjlYwEXaiJruTWMFabNnRG3x/JBmJmK69jK
	 8spxtNiSBPAcGj4B24NOg7g+EnO/oAmcD2Lo+o8Yxwh4LxiOc+QVOg2vxCGeztDwax
	 PQ5OrdYWY213A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id juxHtvsZHRmF; Wed,  2 Aug 2023 15:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AE88414C0;
	Wed,  2 Aug 2023 15:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AE88414C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 640D41BF372
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EDFE61263
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EDFE61263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s2Bpc8Q2HJ87 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 15:19:00 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7417461242
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:19:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7417461242
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 53A24619F1;
 Wed,  2 Aug 2023 15:18:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5061C433C8;
 Wed,  2 Aug 2023 15:18:56 +0000 (UTC)
Date: Wed, 2 Aug 2023 17:18:54 +0200
From: Simon Horman <horms@kernel.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <ZMpz3re48diGmG/Z@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <768db2c3764a490118f6850d24f6e49998494b6c.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <768db2c3764a490118f6850d24f6e49998494b6c.1690938732.git.gustavoars@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690989538;
 bh=MpJddWF59Y3r4C5rdMlYJbaG4nJtsvWkijQnPbA5m0M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jKbDOd95vbAuoKLM9gIV+Ydy+T7t+w4aZttd+5ACEgtOVn8oXIQ9aIyq3Zdy9jkox
 nLfQpbtiRyULUYFp93OcLWKzpTUfWTgZNZpOfjCVAbZ47ccxRwCbXsQ3HZtAlcEF4q
 Ewv46l78pDi2bLYuxCehVV542hX1VDjUwpobgK0d69Ar4+OyLU0mogxf4slCutbHDg
 LlZWlZIR/OwONvKJJJ4HX/5GpRxfQs0UeuCyHvj9U1DUzJo+tfyDw0v40Zw8FINGIa
 mMDCrqYbO2CqB5N5/YCODYb9jXHYECCcdPzn8t37faCcZdKixaaxgwLmmn4FLXg6y2
 uenMUm+byM7kQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jKbDOd95
Subject: Re: [Intel-wired-lan] [PATCH 1/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_package_header
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 01, 2023 at 11:05:31PM -0600, Gustavo A. R. Silva wrote:
> One-element and zero-length arrays are deprecated. So, replace
> one-element array in struct i40e_package_header with flexible-array
> member.
> 
> The `+ sizeof(u32)` adjustments ensure that there are no differences
> in binary output.
> 
> Link: https://github.com/KSPP/linux/issues/335
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c  | 4 ++--
>  drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
> index 7e8183762fd9..0db6f5e3cfcc 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
> @@ -220,7 +220,7 @@ static bool i40e_ddp_is_pkg_hdr_valid(struct net_device *netdev,
>  		netdev_err(netdev, "Invalid DDP profile - size is bigger than 4G");
>  		return false;
>  	}
> -	if (size < (sizeof(struct i40e_package_header) +
> +	if (size < (sizeof(struct i40e_package_header) + sizeof(u32) +

Hi Gustavo,

would it make more sense to use struct_size() here?

>  		sizeof(struct i40e_metadata_segment) + sizeof(u32) * 2)) {
>  		netdev_err(netdev, "Invalid DDP profile - size is too small.");
>  		return false;
> @@ -281,7 +281,7 @@ int i40e_ddp_load(struct net_device *netdev, const u8 *data, size_t size,
>  	if (!i40e_ddp_is_pkg_hdr_valid(netdev, pkg_hdr, size))
>  		return -EINVAL;
>  
> -	if (size < (sizeof(struct i40e_package_header) +
> +	if (size < (sizeof(struct i40e_package_header) + sizeof(u32) +
>  		    sizeof(struct i40e_metadata_segment) + sizeof(u32) * 2)) {
>  		netdev_err(netdev, "Invalid DDP recipe size.");
>  		return -EINVAL;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
> index 388c3d36d96a..c3d5fe12059a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> @@ -1456,7 +1456,7 @@ struct i40e_ddp_version {
>  struct i40e_package_header {
>  	struct i40e_ddp_version version;
>  	u32 segment_count;
> -	u32 segment_offset[1];
> +	u32 segment_offset[];
>  };
>  
>  /* Generic segment header */
> -- 
> 2.34.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
