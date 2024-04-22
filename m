Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D01B8AD3FC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 20:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 495E160AAF;
	Mon, 22 Apr 2024 18:32:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3DyqNAoXwIF; Mon, 22 Apr 2024 18:32:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77B16608D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713810736;
	bh=MrE/HwIhJZZFHOBIDTvwb6PfJPVpZg+ixZaEUwQxYbY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KIKLGsUxC2a6/u2UrIs0+jjhgnBGpXUmA6ozUKJCskgEU75wJ5u6KKHyM0Q2Z4+hx
	 Zjhn+kNiJIRMdAjXpKXT/SJAL9L2h2qB8ZOny2frIayYx852FTzOiJzVCGwY2BgaGj
	 0FNExapCS7I52NTliPM08XLejm8qBJGzzyTXCQ5Gu2Z1xKLoTQY3JmdZKakmvx2GGG
	 SFSDZljLCiz0bztrQ2IJfp9IFwDnhtx/WuXVmTLYsDX9qMVBlNUAHAM6U0xBIUdJnw
	 i/tKMpyPCYWRrAK3zWfbO7AixQWfTv4HnToVaeDMOjSGarHvdMQ2LDHdQygb9/DvOq
	 cLfuA2997LLAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77B16608D8;
	Mon, 22 Apr 2024 18:32:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21CA91BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 18:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C3CC4062B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 18:32:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9CKFPXRztWR1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 18:32:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A240340515
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A240340515
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A240340515
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 18:32:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 69DF760F18;
 Mon, 22 Apr 2024 18:32:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 596FDC113CC;
 Mon, 22 Apr 2024 18:32:09 +0000 (UTC)
Date: Mon, 22 Apr 2024 19:32:06 +0100
From: Simon Horman <horms@kernel.org>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Message-ID: <20240422183206.GE42092@kernel.org>
References: <20240415103435.6674-1-piotr.kwapulinski@intel.com>
 <20240415103435.6674-3-piotr.kwapulinski@intel.com>
 <20240420181826.GA42092@kernel.org>
 <DM6PR11MB461069F903C65507AB64228BF3122@DM6PR11MB4610.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6PR11MB461069F903C65507AB64228BF3122@DM6PR11MB4610.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713810731;
 bh=kXqg48OQIw7Y2/Rm0Gf0L41p9Mxor/5YuKqrYipPbXQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=so5WSWIfseLg9jSBsYDq8G3T2sxBCeXkKqa3RwnUj8v67Wk4MzcIjJyHR1+heGvWm
 GSOBe/ttAJqknImtTQ2rN7j7Q4TmkT2YrYSWlDZ+KdlAGLTD53Q6XhVDJ+HO0qgXgo
 mGx3XcWTI4uRiiqpe0Vb/hljLcXo0cJht9bVOsiW2ZxLiCemiQzPzsluUp4YHQkkqD
 tGRIh7Nho+pjvj45i7hmi3PzZQhSNrPY9sGCVAoygNN7wV/PACL4Ts3xWyFpwwDC/s
 cKkPoiUEMGCh+5Yjc0BKhQIhZm/M4CHlJ9/lJ7Mv0qLEKb/oClzAgHa5LAgX0WbNEa
 +euGn6Ld3w79g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=so5WSWIf
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Wegrzyn,
 Stefan" <stefan.wegrzyn@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 22, 2024 at 10:41:47AM +0000, Kwapulinski, Piotr wrote:
> >-----Original Message-----
> >From: Simon Horman <horms@kernel.org> 
> >Sent: Saturday, April 20, 2024 8:18 PM
> >To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> >Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Gomes, Vinicius <vinicius.gomes@intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Sokolowski, Jan <jan.sokolowski@intel.com>
> >Subject: Re: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610 device capabilities detection
> >
> >On Mon, Apr 15, 2024 at 12:34:32PM +0200, Piotr Kwapulinski wrote:
> >> Add low level support for E610 device capabilities detection. The 
> >> capabilities are discovered via the Admin Command Interface. Discover 
> >> the following capabilities:
> >> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
> >> - device caps: vsi, fdir, 1588
> >> - phy caps
> >> 
> >> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> >> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> >> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> >> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> >> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> >> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> >
> >Hi Pitor,
> >
> >A few minor nits from my side.
> >No need to respin just because of these.
> >
> >> ---
> >>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 517 
> >> ++++++++++++++++++  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  
> >> 11 +
> >>  2 files changed, 528 insertions(+)
> >> 
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c 
> >> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> >
> >...
> >
> >> +/**
> >> + * ixgbe_get_num_per_func - determine number of resources per PF
> >> + * @hw: pointer to the HW structure
> >> + * @max: value to be evenly split between each PF
> >> + *
> >> + * Determine the number of valid functions by going through the 
> >> +bitmap returned
> >> + * from parsing capabilities and use this to calculate the number of 
> >> +resources
> >> + * per PF based on the max value passed in.
> >> + *
> >> + * Return: the number of resources per PF or 0, if no PH are available.
> >> + */
> >> +static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max) {
> >> +	const u32 IXGBE_CAPS_VALID_FUNCS_M = 0xFF;
> >
> >nit: Maybe this could simply be a #define?
> Hello,
> will do
> 
> >
> >> +	u8 funcs = hweight8(hw->dev_caps.common_cap.valid_functions &
> >> +			    IXGBE_CAPS_VALID_FUNCS_M);
> >
> >nit: Please consider using reverse xmas tree order - longest line to shortest -
> >     for local variables in new Networking code
> Will do
> 
> >
> >> +
> >> +	return funcs ? (max / funcs) : 0;
> >> +}
> >
> >...
> >
> >> +/**
> >> + * ixgbe_aci_disable_rxen - disable RX
> >> + * @hw: pointer to the HW struct
> >> + *
> >> + * Request a safe disable of Receive Enable using ACI command (0x000C).
> >> + *
> >> + * Return: the exit code of the operation.
> >> + */
> >> +int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw) {
> >> +	struct ixgbe_aci_cmd_disable_rxen *cmd;
> >> +	struct ixgbe_aci_desc desc;
> >> +
> >> +	cmd = &desc.params.disable_rxen;
> >> +
> >> +	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_disable_rxen);
> >> +
> >> +	cmd->lport_num = (u8)hw->bus.func;
> >
> >nit: This cast seems unnecessary.
> >     AFAICT the type of hw->bus.func is u8.
> Will do

Thanks. FWIIW, I think I noticed a similar cast at least once more
elsewhere in the patchset

> 
> >
> >> +
> >> +	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0); }
> >
> >...
> Thank you for review
> Piotr
> 
