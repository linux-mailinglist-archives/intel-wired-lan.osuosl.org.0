Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED658C329B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 May 2024 18:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AF8142486;
	Sat, 11 May 2024 16:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i0Z5Xsh3ZMaO; Sat, 11 May 2024 16:56:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A0234246D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715446590;
	bh=c8JAEkFmDuX+LpzrW3IWol5zU3ANwkuCDlj7BaPojHU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JFmNbvSmYAJfBjxrt+WXPRy/Z2P86fVyn2S/iL3+KBNHWiaGE+loVlJnMq80Vc9e+
	 Q0OKTyABBTieetILLvnemVVBHzbfu2OnryGZMZR84ySBX98HpccUE0YFUhlL0xhXQk
	 jEqSq1kWk21zB3ftg66JJIi9j0uSlM8IyytrH4q1lUGs+GAYTAG5mw8giFRA08Chbq
	 44mZYKG7XE3Z2ExewVlF28yBdqUtaE9KxPNut/JBqkWQga+wpVofI0sQP8sowPKynx
	 nJ5/+G7C/6vhzcHGt5oFPdJ9W6suWG49mDMfEZ6lu96v0+EMxbXKjNgBFzlozd8plz
	 3TOOnsfvtLDeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A0234246D;
	Sat, 11 May 2024 16:56:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E45EE1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF51B40189
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:56:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wgNzdK5yuhVI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 May 2024 16:56:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C842940168
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C842940168
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C842940168
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:56:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 86F75CE04AE;
 Sat, 11 May 2024 16:56:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49E59C2BBFC;
 Sat, 11 May 2024 16:56:19 +0000 (UTC)
Date: Sat, 11 May 2024 17:56:16 +0100
From: Simon Horman <horms@kernel.org>
To: Anil Samal <anil.samal@intel.com>
Message-ID: <20240511165616.GO2347895@kernel.org>
References: <20240510065243.906877-1-anil.samal@intel.com>
 <20240510065243.906877-4-anil.samal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240510065243.906877-4-anil.samal@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715446581;
 bh=yehxKsTcJixa47K5qCB6QJ5OG1nz+0o9cOwyFMRSRiM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dij6wF4+C7Tt7VycjvdgcMOGqii8D+8fC6sHcpU4FWAvD47lxMYwvBEHZCoCmvXQU
 KzDcgdFPUtPjl/aiYxA1Zy/tKEZ7anjmn/2wbIrN9nXY+feXm9pJBT+hvmUWl9YY7a
 aodsqRgmS9OH6goPG6oGRQaKbYGTe570uV2S3KbMi+K3gQD/vjTzZ/fyKpw0qvdsNN
 tjW0X2JuDbaO6bkZa2XC4GbhkC1AC7Dho5YXjRu0nlat4b7x4vYTZt8oGq8rdtRliS
 VaeBPX+SdIELf8ApxLGwLnTjrR0nw+6dfeEwiO5zsGB8ivrLhF/+GB977NRpA3Bhil
 oo/ZzZOdY1QoQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Dij6wF4+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com, leszek.pepiak@intel.com,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[ Fixed CC list by dropping '--cc=' from start of addresses. ]

On Thu, May 09, 2024 at 11:50:42PM -0700, Anil Samal wrote:
> To debug link issues in the field, serdes Tx/Rx equalizer values
> help to determine the health of serdes lane.
> 
> Extend 'ethtool -d' option to dump serdes Tx/Rx equalizer.
> The following list of equalizer param is supported
>     a. rx_equalization_pre2
>     b. rx_equalization_pre1
>     c. rx_equalization_post1
>     d. rx_equalization_bflf
>     e. rx_equalization_bfhf
>     f. rx_equalization_drate
>     g. tx_equalization_pre1
>     h. tx_equalization_pre3
>     i. tx_equalization_atten
>     j. tx_equalization_post1
>     k. tx_equalization_pre2
> 
> Reviewed-by: Anthony L Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Anil Samal <anil.samal@intel.com>

The nit below notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c

...

> +/**
> + * ice_get_extended_regs - returns FEC correctable, uncorrectable stats per
> + *                         pcsquad, pcsport
> + * @netdev: pointer to net device structure
> + * @p: output buffer to fill requested register dump
> + *
> + * Return: 0 on success, negative on failure.
> + */
> +static int ice_get_extended_regs(struct net_device *netdev, void *p)
> +{
> +	struct ice_regdump_to_ethtool *ice_prv_regs_buf;
> +	struct ice_netdev_priv *np = netdev_priv(netdev);

nit: Please arrange local variables in reverse xmas tree order -
     longest line to shortest.

     It's probably not necessary to repost just because of this.

     This tool can be of use here: https://github.com/ecree-solarflare/xmastree

> +	struct ice_port_topology port_topology = {};
> +	struct ice_port_info *pi;
> +	struct ice_pf *pf;
> +	struct ice_hw *hw;
> +	unsigned int i;
> +	int err;

...
