Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9D88D64D7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 16:50:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 101DF41A00;
	Fri, 31 May 2024 14:50:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FT8QXtDTYfSw; Fri, 31 May 2024 14:50:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD7B341A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717167053;
	bh=5I0zC0t12Ss4maW4CjEupGDNCKaze33H/nyjgyOHMQE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fh0cxkuHfK9GJx5AnQtVRVAZxTeZYKv7nDSkVBSqXydZS68/JM0Q7XCg/WvWzcVY8
	 3hJd+bCfqAsnNEUWJMcxProVlszUZd96jjkiJqZcPTMtRCV3P0al638e3Oat8fNP3P
	 H92Y2wx3ixPemVS7spBHwxvgGPM6ZyuwujMZOr8/Hgpl3kxjXYlWq7wRh8FNqz1cgC
	 roPQPnsW34Z513+3w16EqkBCVI35OQ30B5HqPs71Y5AtPXzIkzXIVWs3MhcMiq+mzV
	 Aa0AQRmSWf/pFyBM+2cjUAdkfnkTFyoFxJiRj2aWdOlzad/Z50tHq4eKGXsr/uN57+
	 cK0HP9Cp2INyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD7B341A69;
	Fri, 31 May 2024 14:50:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B06361D53B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A72D9419DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:50:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9a5puaY-vAV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 14:50:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96A73419CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96A73419CF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96A73419CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:50:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6A52062CE5;
 Fri, 31 May 2024 14:50:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6CFEC32781;
 Fri, 31 May 2024 14:50:26 +0000 (UTC)
Date: Fri, 31 May 2024 15:50:24 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240531145024.GI123401@kernel.org>
References: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
 <20240527151023.3634-3-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527151023.3634-3-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717167028;
 bh=V3c+3Y5HJA8ik51zRIjpUeJRb0Yr+J6Q6zHt1I6UsDE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nbzoTH+MJV127ZPsLgWBPWRwSMJcFWhnRsN2MO7rM7Bb1EmITxFdRMYuNY/AdnGoB
 qHhKhS+X+w3tb8OcLfibCGTphISCpYdgEtLFtSFg28NvUHND7Xff3bhALvymR/BMnT
 nkANUGUrlwPrQAX5XYLE3qO4I6hw1WJHJ7nfbjaFqj3RsbTxAidGLsErApgWzNSSNq
 r6wKHRaTjaUmOs2NFKUX4v/hZ8ChZgKH/9Gyo2/t91V+R1w2rPNqx+mQa+NsI/Vya/
 O24VyJbpgkhp3rwSObWLV+f5Z5nUfa8sYUBjUPsF9ori6TGmVynyU6uOFhcgP7bZwJ
 DKruvewWldLsA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nbzoTH+M
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 2/7] ixgbe: Add support
 for E610 device capabilities detection
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 27, 2024 at 05:10:18PM +0200, Piotr Kwapulinski wrote:
> Add low level support for E610 device capabilities detection. The
> capabilities are discovered via the Admin Command Interface. Discover the
> following capabilities:
> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
> - device caps: vsi, fdir, 1588
> - phy caps
> 
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 517 ++++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  11 +
>  2 files changed, 528 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c

...

> +/**
> + * ixgbe_discover_dev_caps - Read and extract device capabilities
> + * @hw: pointer to the hardware structure
> + * @dev_caps: pointer to device capabilities structure
> + *
> + * Read the device capabilities and extract them into the dev_caps structure
> + * for later use.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_discover_dev_caps(struct ixgbe_hw *hw,
> +			    struct ixgbe_hw_dev_caps *dev_caps)
> +{
> +	u8 *cbuf __free(kfree);
> +	u32 cap_count;
> +	int err;
> +
> +	cbuf = kzalloc(IXGBE_ACI_MAX_BUFFER_SIZE, GFP_KERNEL);
> +	if (!cbuf)
> +		return -ENOMEM;
> +	/* Although the driver doesn't know the number of capabilities the
> +	 * device will return, we can simply send a 4KB buffer, the maximum
> +	 * possible size that firmware can return.
> +	 */
> +	cap_count = IXGBE_ACI_MAX_BUFFER_SIZE /
> +		    sizeof(struct ixgbe_aci_cmd_list_caps_elem);
> +
> +	err = ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
> +				  &cap_count,
> +				  ixgbe_aci_opc_list_dev_caps);
> +	if (!err)
> +		ixgbe_parse_dev_caps(hw, dev_caps, cbuf, cap_count);
> +
> +	return err;

Hi Piotr, all,

A minor nit from my side.

It would be more idiomatic to write this such that the main flow of
execution is the non-error path, while errors are handled by conditions. In
this case, something like this (completely untested!):

	err = ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
				  &cap_count,
				  ixgbe_aci_opc_list_dev_caps);
	if (err)
		return err;

	ixgbe_parse_dev_caps(hw, dev_caps, cbuf, cap_count);

	return 0;

Likewise in ixgbe_discover_func_caps()

> +}
> +
> +/**
> + * ixgbe_discover_func_caps - Read and extract function capabilities
> + * @hw: pointer to the hardware structure
> + * @func_caps: pointer to function capabilities structure
> + *
> + * Read the function capabilities and extract them into the func_caps structure
> + * for later use.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_discover_func_caps(struct ixgbe_hw *hw,
> +			     struct ixgbe_hw_func_caps *func_caps)
> +{
> +	u8 *cbuf __free(kfree);
> +	u32 cap_count;
> +	int err;
> +
> +	cbuf = kzalloc(IXGBE_ACI_MAX_BUFFER_SIZE, GFP_KERNEL);
> +	if (!cbuf)
> +		return -ENOMEM;
> +
> +	/* Although the driver doesn't know the number of capabilities the
> +	 * device will return, we can simply send a 4KB buffer, the maximum
> +	 * possible size that firmware can return.
> +	 */
> +	cap_count = IXGBE_ACI_MAX_BUFFER_SIZE /
> +		    sizeof(struct ixgbe_aci_cmd_list_caps_elem);
> +
> +	err = ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
> +				  &cap_count,
> +				  ixgbe_aci_opc_list_func_caps);
> +	if (!err)
> +		ixgbe_parse_func_caps(hw, func_caps, cbuf, cap_count);
> +
> +	return err;
> +}

...
