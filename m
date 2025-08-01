Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7E6B180FC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 13:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35E4D61BB6;
	Fri,  1 Aug 2025 11:21:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uol9H469Pkw1; Fri,  1 Aug 2025 11:21:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98BB461BB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754047292;
	bh=oJ2zrDD5Ak4/OQTTH+tqwEf2tZzeoGO94gGPpDLct3Y=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mjDi/eajxyBmVUukB6C/P5tSPiw/sn+0VFnItYv5YYWtjLYO5WGj/2wUZ7hbuJUII
	 Jpsi9beGZ3+oEZ4bVe6kuMxfuL2ENg2sXeFVqMcKOeZH8CQW4SnOIn6XQ0HeOVHPAb
	 cqq+POPy5lxgTh2RqoLjKXuuggAckePzicJyjeG6Hwmon+//snDLkZBmHukEfWGBUr
	 gqAtvZOJ/DE+OXAwOkRVixSqvDN02putHdJO/AzQWIqD2OBBXEJHQHuAyrZDEF5Xto
	 gdzOXUFI5cVjfz1D6pSNZiUrdutqKA0dKUYQYyiayZ4jwuVcGoatrs48Sx2y5vuYAv
	 oWfRm/fd9j49A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98BB461BB2;
	Fri,  1 Aug 2025 11:21:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EB7013D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 11:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BE4461BAB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 11:21:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f2DtouILZvnW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 11:21:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5F3BD61169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F3BD61169
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F3BD61169
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 11:21:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DC68C6111F;
 Fri,  1 Aug 2025 11:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 760B7C4CEE7;
 Fri,  1 Aug 2025 11:21:27 +0000 (UTC)
Date: Fri, 1 Aug 2025 12:21:25 +0100
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250801112125.GO8494@horms.kernel.org>
References: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754047288;
 bh=pEp65GNdz3/656yb3ezhgbsXx5CGqU2Gt3GmTVnoYxY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ERzDBUPFX+gAzf/5o01l60KcG5wcIGEB7V8Nv4UZc5t9OszFE5rDzqMyqx2lPsJ4M
 +VX6TPf4eMh59JZMwPhHGFRWODj3bzGTN1NcE7B3OJRGrCmm5vgPTyHtTHOoegC8ow
 f88r5s1hj75Z9/FXhYRhBxLqEdmKBKM7E2pKR2xHyC/GaF/PMu4zu8E6IJz8dq/kkt
 ydJLyFcXOAzMX+LF3bNt6qt5tfPWIONpkT0JzeXb5JKS4SbvAmzovI7cXuvB945Ept
 IIoaW3azFOjyRVq6Gi7sLBOa7IEGRxOvdrq5uqqBtYO+ruMN8u8e8+zc6AfDyeOKEU
 KVzXsm7kbIhUg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ERzDBUPF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: reduce number of
 reads when getting OROM data
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 31, 2025 at 02:50:25PM +0200, Jedrzej Jagielski wrote:
> Currently, during locating the CIVD section, the ixgbe driver loops
> over the OROM area and at each iteration reads only OROM-datastruct-size
> amount of data. This results in many small reads and is inefficient.
> 
> Optimize this by reading the entire OROM bank into memory once before
> entering the loop. This significantly reduces the probing time.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Thanks, nits below not withstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 58 +++++++++++++------
>  1 file changed, 39 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 87b03c1992a8..048b2aae155a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -3006,50 +3006,70 @@ static int ixgbe_get_nvm_srev(struct ixgbe_hw *hw,
>   * Searches through the Option ROM flash contents to locate the CIVD data for
>   * the image.
>   *
> - * Return: the exit code of the operation.
> + * Return: -ENOMEM when cannot allocate memory, -EDOM for checksum violation,
> + *	   -ENODATA when cannot find proper data, -EIO for faulty read or
> + *	   0 on success.
> + *
> + *	   On success @civd stores collected data.
>   */
>  static int
>  ixgbe_get_orom_civd_data(struct ixgbe_hw *hw, enum ixgbe_bank_select bank,
>  			 struct ixgbe_orom_civd_info *civd)
>  {
> -	struct ixgbe_orom_civd_info tmp;
> +	u32 orom_size = hw->flash.banks.orom_size;
> +	u8 *orom_data;
>  	u32 offset;
>  	int err;
>  
> +	orom_data = kzalloc(orom_size, GFP_KERNEL);
> +	if (!orom_data)
> +		return -ENOMEM;
> +
> +	err = ixgbe_read_flash_module(hw, bank,
> +				      IXGBE_E610_SR_1ST_OROM_BANK_PTR, 0,
> +				      orom_data, orom_size);
> +	if (err) {
> +		err = -EIO;
> +		goto cleanup;
> +	}
> +
>  	/* The CIVD section is located in the Option ROM aligned to 512 bytes.
>  	 * The first 4 bytes must contain the ASCII characters "$CIV".
>  	 * A simple modulo 256 sum of all of the bytes of the structure must
>  	 * equal 0.
>  	 */
> -	for (offset = 0; (offset + SZ_512) <= hw->flash.banks.orom_size;
> -	     offset += SZ_512) {
> +	for (offset = 0; (offset + SZ_512) <= orom_size; offset += SZ_512) {

nit: while we are here the inner parentheses could be removed

> +		struct ixgbe_orom_civd_info *tmp;
>  		u8 sum = 0;
>  		u32 i;
>  
> -		err = ixgbe_read_flash_module(hw, bank,
> -					      IXGBE_E610_SR_1ST_OROM_BANK_PTR,
> -					      offset,
> -					      (u8 *)&tmp, sizeof(tmp));
> -		if (err)
> -			return err;
> +		BUILD_BUG_ON(sizeof(*tmp) > SZ_512);
> +
> +		tmp = (struct ixgbe_orom_civd_info *)&orom_data[offset];
>  
>  		/* Skip forward until we find a matching signature */
> -		if (memcmp(IXGBE_OROM_CIV_SIGNATURE, tmp.signature,
> -			   sizeof(tmp.signature)))
> +		if (memcmp(IXGBE_OROM_CIV_SIGNATURE, tmp->signature,
> +			   sizeof(tmp->signature)))
>  			continue;
>  
>  		/* Verify that the simple checksum is zero */
> -		for (i = 0; i < sizeof(tmp); i++)
> -			sum += ((u8 *)&tmp)[i];
> +		for (i = 0; i < sizeof(*tmp); i++)
> +			sum += ((u8 *)tmp)[i];
>  
> -		if (sum)
> -			return -EDOM;
> +		if (sum) {
> +			err = -EDOM;
> +			goto cleanup;
> +		}
>  
> -		*civd = tmp;
> -		return 0;
> +		*civd = *tmp;
> +		err = 0;
> +		goto cleanup;

nit: maybe it's just me, but break feels more natural here.

>  	}
>  
> -	return -ENODATA;
> +	err = -ENODATA;
> +cleanup:
> +	kfree(orom_data);
> +	return err;
>  }
>  
>  /**
> -- 
> 2.31.1
> 
> 
