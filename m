Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E1C7A9416
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 14:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1D1383C51;
	Thu, 21 Sep 2023 12:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1D1383C51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695298367;
	bh=Dw7jmdGJS66nV9gtnPllT4j+Yl61jT/aGwjf8G6L6I4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cYeRwzZu4bsBTOrXnAq8n2KIzNfyuQgath3DpnwNJKT1oaUn9bg1uv/oF1fcLf8N4
	 t0/IOLNtYTKf+toa5c94O1COjCGtWMmfncpZAgo4jkQ11wNy/8zUXb0AY2MUZsmQtX
	 2G1/yO/elgP6zBwiPyBF8KE8FiU3dmYfrxhvyLVeppIaUm81FdQmhnC+QOUxIDYlK5
	 h2ZIdolHvl+TEwCR0CKnE4uidcPOuVyKY4YFxrGDkVGL06OwdSg+YPTE4LeX4PnJXj
	 MjQZ8Fr6FFa7kf4m74gWdqw/KJjpOg8WrNdZrwCpkZ6Ta178BH7mHju5Z+kG46tKfM
	 BBHdROXWgKM/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4XV-WQR_kJHV; Thu, 21 Sep 2023 12:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEB3E83C3D;
	Thu, 21 Sep 2023 12:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEB3E83C3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D93B1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 12:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9D9383C3D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 12:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9D9383C3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RKByVdSix422 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 12:12:40 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC01A83C3C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 12:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC01A83C3C
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 94F86B82053;
 Thu, 21 Sep 2023 12:12:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 935E3C4E67B;
 Thu, 21 Sep 2023 12:12:33 +0000 (UTC)
Date: Thu, 21 Sep 2023 13:12:29 +0100
From: Simon Horman <horms@kernel.org>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <20230921121229.GK224399@kernel.org>
References: <20230915145522.586365-1-pawel.chmielewski@intel.com>
 <20230915145522.586365-2-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230915145522.586365-2-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1695298356;
 bh=bQL3AQl35z0Mpm0hsevXA7UcZACqEF2ZtoPTHLG435A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cnze4tx8zonhwLGPuVWJlYD/J8Z8SjpOelH9sguQ/zee1GHefOl0qQH7bweVMRiVc
 oxEFaOOEplGiioMRPANC4yRen/RuEaJ4OWitH001ZuzyRAsr4GsnFreOkqEVZTK9RX
 ZuKwDcQ1uj+vouaq/P/W8ck2wmg2R0mjkyDv2AswDZA8Qz5XmqPERgUHMbVRs3meLl
 2A2bbVBzbhlPBaIe7GWsOFHXHG50mBFxBbWqPZqbuO7jgc5ZMWS5izSI95vCl48Q5j
 ZObPars069RIUsoBOKnyRFCI+I2VpVpoSyR6UqMg6K6ZPik0FxcATsVdOKeuCM8hmB
 6f2B6JAMABm4w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Cnze4tx8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ethtool: Add forced
 speed to supported link modes maps
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paul Greenwalt <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 15, 2023 at 04:55:21PM +0200, Pawel Chmielewski wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> The need to map Ethtool forced speeds to Ethtool supported link modes is
> common among drivers. To support this, add a common structure for forced
> speed maps and a function to init them.  This is solution was originally
> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
> maps on module init") for qede driver.
> 
> ethtool_forced_speed_maps_init() should be called during driver init
> with an array of struct ethtool_forced_speed_map to populate the mapping.
> 
> Definitions for maps themselves are left in the driver code, as the sets
> of supported link modes may vary betwen the devices.

nit: between

> 
> The qede driver was compile tested only.
> 
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  .../net/ethernet/qlogic/qede/qede_ethtool.c   | 24 ++++---------------
>  include/linux/ethtool.h                       | 20 ++++++++++++++++
>  net/ethtool/ioctl.c                           | 15 ++++++++++++
>  3 files changed, 39 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
> index 95820cf1cd6c..9e0e73602abe 100644
> --- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
> +++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
> @@ -201,14 +201,6 @@ static const char qede_tests_str_arr[QEDE_ETHTOOL_TEST_MAX][ETH_GSTRING_LEN] = {
>  
>  /* Forced speed capabilities maps */
>  
> -struct qede_forced_speed_map {
> -	u32		speed;
> -	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
> -
> -	const u32	*cap_arr;
> -	u32		arr_size;
> -};
> -
>  #define QEDE_FORCED_SPEED_MAP(value)					\
>  {									\
>  	.speed		= SPEED_##value,				\
> @@ -263,7 +255,7 @@ static const u32 qede_forced_speed_100000[] __initconst = {
>  	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
>  };
>  
> -static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
> +static struct ethtool_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
>  	QEDE_FORCED_SPEED_MAP(1000),
>  	QEDE_FORCED_SPEED_MAP(10000),
>  	QEDE_FORCED_SPEED_MAP(20000),
> @@ -275,16 +267,8 @@ static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
>  
>  void __init qede_forced_speed_maps_init(void)
>  {
> -	struct qede_forced_speed_map *map;
> -	u32 i;
> -
> -	for (i = 0; i < ARRAY_SIZE(qede_forced_speed_maps); i++) {
> -		map = qede_forced_speed_maps + i;
> -
> -		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
> -		map->cap_arr = NULL;
> -		map->arr_size = 0;
> -	}
> +	ethtool_forced_speed_maps_init(qede_forced_speed_maps,
> +				       ARRAY_SIZE(qede_forced_speed_maps));
>  }
>  
>  /* Ethtool callbacks */
> @@ -565,7 +549,7 @@ static int qede_set_link_ksettings(struct net_device *dev,
>  {
>  	const struct ethtool_link_settings *base = &cmd->base;
>  	struct qede_dev *edev = netdev_priv(dev);
> -	const struct qede_forced_speed_map *map;
> +	const struct ethtool_forced_speed_map *map;
>  	struct qed_link_output current_link;
>  	struct qed_link_params params;
>  	u32 i;

nit: please preserve reverse xmas tree order - longest line to shortest -
     for local variable declarations in Networking code.

> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index 62b61527bcc4..3d23a8d78c9b 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -1052,4 +1052,24 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
>   * next string.
>   */
>  extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
> +
> +/* Link mode to forced speed capabilities maps */
> +struct ethtool_forced_speed_map {
> +	u32		speed;
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
> +
> +	const u32	*cap_arr;
> +	u32		arr_size;
> +};
> +
> +/**
> + * ethtool_forced_speed_maps_init
> + * @maps: Pointer to an array of Ethtool forced speed map
> + * @size: Array size
> + *
> + * Initialize an array of Ethtool forced speed map to Ethtool link modes. This
> + * should be called during driver module init.
> + */
> +void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
> +				   u32 size);

nit: the indentation here is not correct.
     'u32' should align with the inside of the opening '(' on the preceding
     line.

void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
				    u32 size);

>  #endif /* _LINUX_ETHTOOL_H */
> diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
> index 0b0ce4f81c01..1ba437eff764 100644
> --- a/net/ethtool/ioctl.c
> +++ b/net/ethtool/ioctl.c
> @@ -3388,3 +3388,18 @@ void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
>  	kfree(flow);
>  }
>  EXPORT_SYMBOL(ethtool_rx_flow_rule_destroy);
> +
> +void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
> +				   u32 size)

Ditto

> +{
> +	u32 i;
> +
> +	for (i = 0; i < size; i++) {
> +		struct ethtool_forced_speed_map *map = &maps[i];
> +
> +		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
> +		map->cap_arr = NULL;
> +		map->arr_size = 0;
> +	}
> +}
> +EXPORT_SYMBOL(ethtool_forced_speed_maps_init);
> \ No newline at end of file
> -- 
> 2.37.3
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
