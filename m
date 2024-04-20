Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2FD8ABCAA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Apr 2024 20:18:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E450A80B6F;
	Sat, 20 Apr 2024 18:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CUwFKplRQ87y; Sat, 20 Apr 2024 18:18:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24CF88002D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713637120;
	bh=89K/uveBwVgh7Jk+Ruu1l/saElwpcBmJfQgUf6f/F8w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GKFb4+xj8bhtqrTl8XeXyuAzlQnw1i5bA1kDTE7mLd7H27HRUqllJoIb7kOW3xT7+
	 TzUeh0yTSar2DvByKHHO9Nq6kM3h1vx9WrOoqD6M+dKEVdJU66ZhtHEK1WR7Q719yV
	 IOgDD2emkXf2O/AwWzPSkt+I2U/JEeQ9LlHu8bdVhWJ/zUNCxiuFO598p+JjpkAmWz
	 vlZC+d2GP1/tPuyb2FRzb33XAN+5/Ot/cN3/u/J9iXSq6ff+iq0hygXMClXQ9btbIN
	 kDNOifCWqpi5gv1D8c0QemhZ5r2cjXZHVn33qJcOTeWwGARR9FtVPChnlrgdEracBw
	 QpecN4VHZkw0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24CF88002D;
	Sat, 20 Apr 2024 18:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91CC41BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 18:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88F2940150
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 18:18:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TLQ6emOIozOe for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Apr 2024 18:18:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BDC5440148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDC5440148
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDC5440148
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 18:18:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 08E55CE0176;
 Sat, 20 Apr 2024 18:18:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84A95C072AA;
 Sat, 20 Apr 2024 18:18:28 +0000 (UTC)
Date: Sat, 20 Apr 2024 19:18:26 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240420181826.GA42092@kernel.org>
References: <20240415103435.6674-1-piotr.kwapulinski@intel.com>
 <20240415103435.6674-3-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240415103435.6674-3-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713637110;
 bh=ts4FPlOyzVKMxbCvwKM4YpkwOuRdKBgIVy0ksYAFLwk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AmaCgrOVGiKi7yhckHOvlXcC3eOgXdiYgKk49e+u3FuePFZxOWL+vNWe0JGHfYa2Y
 JOak8FPZx3Xm6eMyWhswILqzP0mRn2qo/tyys9bZUw7yzsjyeL8S9NtiLErFUSNunV
 VqcygiTUG1Z8MXzZw25MRI8Otkp+h2YDF3/dfyjNn7sgYYbYktdY5djHjFsa2Lj/z5
 bRZQB95ZcxQ9O26gbdsfU50VrWfi6HFkPQFKY+Q0aW9kM8PpgfkNx6sdpzIpZ8Mx+y
 og6sL7afteF/L45R1ysiZlaexNmMFBaTEU27Jc5VkdXhc0VOl8mFZONQSnUDjzf8bY
 7Is4osfDNX9Lw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AmaCgrOV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ixgbe: Add support
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, vinicius.gomes@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 15, 2024 at 12:34:32PM +0200, Piotr Kwapulinski wrote:
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

Hi Pitor,

A few minor nits from my side.
No need to respin just because of these.

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 517 ++++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  11 +
>  2 files changed, 528 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c

...

> +/**
> + * ixgbe_get_num_per_func - determine number of resources per PF
> + * @hw: pointer to the HW structure
> + * @max: value to be evenly split between each PF
> + *
> + * Determine the number of valid functions by going through the bitmap returned
> + * from parsing capabilities and use this to calculate the number of resources
> + * per PF based on the max value passed in.
> + *
> + * Return: the number of resources per PF or 0, if no PH are available.
> + */
> +static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max)
> +{
> +	const u32 IXGBE_CAPS_VALID_FUNCS_M = 0xFF;

nit: Maybe this could simply be a #define?

> +	u8 funcs = hweight8(hw->dev_caps.common_cap.valid_functions &
> +			    IXGBE_CAPS_VALID_FUNCS_M);

nit: Please consider using reverse xmas tree order - longest line to shortest -
     for local variables in new Networking code

> +
> +	return funcs ? (max / funcs) : 0;
> +}

...

> +/**
> + * ixgbe_aci_disable_rxen - disable RX
> + * @hw: pointer to the HW struct
> + *
> + * Request a safe disable of Receive Enable using ACI command (0x000C).
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw)
> +{
> +	struct ixgbe_aci_cmd_disable_rxen *cmd;
> +	struct ixgbe_aci_desc desc;
> +
> +	cmd = &desc.params.disable_rxen;
> +
> +	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_disable_rxen);
> +
> +	cmd->lport_num = (u8)hw->bus.func;

nit: This cast seems unnecessary.
     AFAICT the type of hw->bus.func is u8.

> +
> +	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
> +}

...
