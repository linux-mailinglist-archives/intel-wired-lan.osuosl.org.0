Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 677B082CDA7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Jan 2024 17:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 626BE8341E;
	Sat, 13 Jan 2024 16:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 626BE8341E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705162047;
	bh=toCA9Aqe/cYNfbtclX3vRffhXiywzpEGJ6zEe2bbbxg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=79XHhuBUHi2or1l93XSBWmg7qUSJ0U8u7JYd8kSyMIp5/Xs65h79G5TFj7YLdDNlg
	 5gk73FGjRUV2qqfZUeOnORR0qz5/BJvrLPHRp3aQeEYTdgDrvwpnBN97HJouM6v+b0
	 Af2fa6z2s8wNgyujGBCS0nnvR7DKNr9L1/dPySqAkhA3xHz5GUu2UoyRxVLX3SjVLE
	 dHSpKZfvSZ4IvyT10G8SS+GFd7vLq1qTdH/ad+LQXP1jQvpP6xAC6YUgSE8hUIzU/R
	 MlpN4aqTavp9DZwMP6SzL/24W/EjYN6N7yEbvMP6BfLB7L2jKfDKjykMe3kLPYaPXV
	 osKIz2EAc+0cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XJmJ0RfRvhi1; Sat, 13 Jan 2024 16:07:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 690DA831F5;
	Sat, 13 Jan 2024 16:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 690DA831F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 339141BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jan 2024 16:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 087684061F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jan 2024 16:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 087684061F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u_-NZ3LQSRdF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Jan 2024 16:07:19 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 320B7405B8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jan 2024 16:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 320B7405B8
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 6143CB823AB;
 Sat, 13 Jan 2024 16:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87599C433F1;
 Sat, 13 Jan 2024 16:07:13 +0000 (UTC)
Date: Sat, 13 Jan 2024 16:07:11 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20240113160711.GK392144@kernel.org>
References: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
 <20240112095945.450590-2-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240112095945.450590-2-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705162034;
 bh=5GQBHlI5NK+kObariSZGsmsDAQBcXLBxEc91wBGox/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kb7hxkxuwgVTEr4GOxbq8NLUrwbhDyUAU08vl35eeeK6b30ZMXZ2ZSIS0/bFn040l
 V3H559XWEV8EST9K2X1dCWfqJHhrJ27SXgvXtv1ROQajxV0BBbdnjJq3gmioBgfalt
 iqaFsVMW/RnL8LDTa+SLnzfWvcIRcHj6WDU8N4nq5e6JebkZsSYdJJDGAhYJ683LNq
 gIxdFHxnvwqx9t3NnKqABGs+Dyo+tsCYbN8eqvsDL1h4ZWjAw1uPr5J+RWAFZYHPJt
 9VlAGJGY91qD7FNLPcGhjC0lW8l4u4mmepc9zXFTEZaeeLAxI9fjshHHx839Gldzix
 h68sOcTOp4k7g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Kb7hxkxu
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] i40e: Add read
 alternate indirect command
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 anthony.l.nguyen@intel.com,
 Przemyslaw R Karpinski <przemyslaw.r.karpinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 12, 2024 at 10:59:44AM +0100, Jedrzej Jagielski wrote:
> From: Przemyslaw R Karpinski <przemyslaw.r.karpinski@intel.com>
> 
> Introduce implementation of 0x0903 Admin Queue command.
> This indirect command reads a block of data from the alternate structure
> of memory. The command defines the number of Dwords to be read and the
> starting address inside the alternate structure.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemyslaw R Karpinski <przemyslaw.r.karpinski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index de6ca6295742..93971c9c98cc 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -4375,6 +4375,46 @@ static int i40e_aq_alternate_read(struct i40e_hw *hw,
>  	return status;
>  }
>  
> +/**
> + * i40e_aq_alternate_read_indirect
> + * @hw: pointer to the hardware structure
> + * @addr: address of the alternate structure field
> + * @dw_count: number of alternate structure fields to read
> + * @buffer: pointer to the command buffer
> + *
> + * Read 'dw_count' dwords from alternate structure starting at 'addr' and
> + * place them in 'buffer'. The buffer should be allocated by caller.
> + *
> + **/
> +int i40e_aq_alternate_read_indirect(struct i40e_hw *hw, u32 addr, u32 dw_count,
> +				    void *buffer)
> +{
> +	struct i40e_aqc_alternate_ind_read_write *cmd_resp;
> +	struct i40e_aq_desc desc;
> +	int status;
> +
> +	if (!buffer)
> +		return -EINVAL;
> +
> +	cmd_resp = (struct i40e_aqc_alternate_ind_read_write *)&desc.params.raw;
> +
> +	i40e_fill_default_direct_cmd_desc(&desc,
> +					  i40e_aqc_opc_alternate_read_indirect);
> +
> +	desc.flags |= cpu_to_le16(I40E_AQ_FLAG_RD);
> +	desc.flags |= cpu_to_le16(I40E_AQ_FLAG_BUF);
> +	if (dw_count > I40E_AQ_LARGE_BUF / 4)
> +		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);

nit: Maybe the cast to (u16) can be dropped?
     It isn't present in usage of I40E_AQ_FLAG_LB a few lines further up.

> +
> +	cmd_resp->address = cpu_to_le32(addr);
> +	cmd_resp->length = cpu_to_le32(dw_count);
> +
> +	status = i40e_asq_send_command(hw, &desc, buffer,
> +				       lower_16_bits(4 * dw_count), NULL);
> +
> +	return status;
> +}
> +
>  /**
>   * i40e_aq_suspend_port_tx
>   * @hw: pointer to the hardware structure

...
