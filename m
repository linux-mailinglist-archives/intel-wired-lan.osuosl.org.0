Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60457B18E2C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 13:18:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B14C684191;
	Sat,  2 Aug 2025 11:18:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6bdm_555Z0bO; Sat,  2 Aug 2025 11:18:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3EDA8418B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754133496;
	bh=zh9fhS4DA5T/Q9Qc4ABhc8Ib03FoAkDlWjkXjxwByOY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tOZ1mZ8sTJzrAHSO2fapBZ1qx7UbPCuf0upzDZy0zVNIW+WX4TBK1U9VvBTpygU6k
	 YV0VeK8heNLIlOFkZyTbuPpMjqgO+yGkW9KleewCc/Fttt2PSsxPMcZn58SgUtjRNT
	 BxD1hUI6/4TnaCAHb6YJP0pYwOvmBL9vR97kS9CiN/1ILMfJoF4fceIRwgTnAH7OeZ
	 pM+hpiWBwgRLM5q4+Ph9A3pQVu6tu72EF2tB1dTKNWrJmfu/YfBcoifHyyC9vrGO2B
	 aRp7nfiig9pZgiT5pcuLMV3UFffQJuSKavH0pFwObcMoWxuzROIJ6RTF/0Ca2n3GIV
	 cjBLIN/sb6TTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3EDA8418B;
	Sat,  2 Aug 2025 11:18:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EB1113D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 11:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3049F4016F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 11:18:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B6ZWTgVhErK4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 11:18:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 608F540028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 608F540028
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 608F540028
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 11:18:12 +0000 (UTC)
Received: from [192.168.2.202] (p5dc5571a.dip0.t-ipconnect.de [93.197.87.26])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7960061E6479F;
 Sat, 02 Aug 2025 13:17:57 +0200 (CEST)
Message-ID: <5665468f-4ea1-45ad-8b73-47b028ef5e83@molgen.mpg.de>
Date: Sat, 2 Aug 2025 13:17:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
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

Dear Jedrzej,


Thank you for your patch.

Am 31.07.25 um 14:50 schrieb Jedrzej Jagielski:
> Currently, during locating the CIVD section, the ixgbe driver loops
> over the OROM area and at each iteration reads only OROM-datastruct-size
> amount of data. This results in many small reads and is inefficient.
> 
> Optimize this by reading the entire OROM bank into memory once before
> entering the loop. This significantly reduces the probing time.

Awesome. For posterity, could you please add the measurements without 
and with your patch to the commit message.

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 58 +++++++++++++------
>   1 file changed, 39 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 87b03c1992a8..048b2aae155a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -3006,50 +3006,70 @@ static int ixgbe_get_nvm_srev(struct ixgbe_hw *hw,
>    * Searches through the Option ROM flash contents to locate the CIVD data for
>    * the image.
>    *
> - * Return: the exit code of the operation.
> + * Return: -ENOMEM when cannot allocate memory, -EDOM for checksum violation,
> + *	   -ENODATA when cannot find proper data, -EIO for faulty read or
> + *	   0 on success.
> + *
> + *	   On success @civd stores collected data.
>    */
>   static int
>   ixgbe_get_orom_civd_data(struct ixgbe_hw *hw, enum ixgbe_bank_select bank,
>   			 struct ixgbe_orom_civd_info *civd)
>   {
> -	struct ixgbe_orom_civd_info tmp;
> +	u32 orom_size = hw->flash.banks.orom_size;
> +	u8 *orom_data;
>   	u32 offset;
>   	int err;
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
>   	/* The CIVD section is located in the Option ROM aligned to 512 bytes.
>   	 * The first 4 bytes must contain the ASCII characters "$CIV".
>   	 * A simple modulo 256 sum of all of the bytes of the structure must
>   	 * equal 0.
>   	 */
> -	for (offset = 0; (offset + SZ_512) <= hw->flash.banks.orom_size;
> -	     offset += SZ_512) {
> +	for (offset = 0; (offset + SZ_512) <= orom_size; offset += SZ_512) {
> +		struct ixgbe_orom_civd_info *tmp;
>   		u8 sum = 0;
>   		u32 i;
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
>   		/* Skip forward until we find a matching signature */
> -		if (memcmp(IXGBE_OROM_CIV_SIGNATURE, tmp.signature,
> -			   sizeof(tmp.signature)))
> +		if (memcmp(IXGBE_OROM_CIV_SIGNATURE, tmp->signature,
> +			   sizeof(tmp->signature)))
>   			continue;
>   
>   		/* Verify that the simple checksum is zero */
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
>   	}
>   
> -	return -ENODATA;
> +	err = -ENODATA;
> +cleanup:
> +	kfree(orom_data);
> +	return err;
>   }
>   
>   /**

The diff looks good. With the commit message amended:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
