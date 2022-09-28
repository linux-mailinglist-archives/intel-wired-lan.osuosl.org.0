Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C225ED16D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 02:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D1BB60B03;
	Wed, 28 Sep 2022 00:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D1BB60B03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664323902;
	bh=O4mmR74nopILpFkDbW2XyGwXj0eLd0YlOU1kmD43RkM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wGZHyVWlCuG8cfaeNbAHJBq8wFp8HyS+mCl2tB5XzNrim203cdp/F4oJ1hDpgCoUG
	 YI+5Ny2bS3nWAvVNvegxszojvr9Mr18UUTuWyddVnEsb+8jzvQKwfxVZPfx8WEBJJI
	 3Z0Ka0UCzXXiv5Mx25VL4Kh336GuOUk6cpKK2mVF0GggLSujzTKlveaispbTwemALV
	 o4KExwssX1TBmty/M3nj/54VFC2xxdWx0107oPI3+51rnHC/DoVXxlmJkE2I5Pb2kQ
	 p3GDOwYUJ8kGGVz1ZDyLwbfOUyqZnFdgeNEcIWYsGrKRdPFTD2vSv6GsL50cr2k9JN
	 Tc5OZLAdqIzNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9dM2sQOTnfgq; Wed, 28 Sep 2022 00:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 290C760AE6;
	Wed, 28 Sep 2022 00:11:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 290C760AE6
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 324BD1BF85D
 for <intel-wired-lan@osuosl.org>; Wed, 28 Sep 2022 00:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BCB940328
 for <intel-wired-lan@osuosl.org>; Wed, 28 Sep 2022 00:11:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BCB940328
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DbDo2HNSAjBI for <intel-wired-lan@osuosl.org>;
 Wed, 28 Sep 2022 00:11:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 591E240320
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 591E240320
 for <intel-wired-lan@osuosl.org>; Wed, 28 Sep 2022 00:11:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A797261C03;
 Wed, 28 Sep 2022 00:11:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD0A6C433D6;
 Wed, 28 Sep 2022 00:11:33 +0000 (UTC)
Date: Tue, 27 Sep 2022 17:11:32 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20220927171132.2b3ca71a@kernel.org>
In-Reply-To: <20220927130656.32567-2-muhammad.husaini.zulkifli@intel.com>
References: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
 <20220927130656.32567-2-muhammad.husaini.zulkifli@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1664323894;
 bh=nQ03Qy7c64PkcHAC2OFXKdvbEwognZwOc02ZO4R5rp4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rvqL45utcplwzT1WjjH0T8mYT77UgbrlDLyE2anhuXdYrhbD8mWIktoUd+rI99tvB
 3uRJM02bS0mgG7nccwNMBk54lNDSju2PUYYxlLr9QVHfLDp4bHwc07N26Clrrs9v7g
 sZmiNpH4yolLLRmCmAtvNOXMhKQsd7L+4Llh8fU+shgOdvKdt1Z3bLhIsABJELhCx6
 sjmcyz72FU7OjfHNeKlGRC52zmnbEVHAcobmnSWH67zh9r8yAJI15kQYBU/iZIPT7Y
 L+VOV4/YlYC7iSdIeIbRwZ4B+Q0ID5Xp7BPacj60W6WeNBv1kCyI503ys6DgSl1V+D
 YY54yZ7Wh7LbA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rvqL45ut
Subject: Re: [Intel-wired-lan] [PATCH v1 1/4] ethtool: Add new hwtstamp flag
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
Cc: intel-wired-lan@osuosl.org, edumazet@google.com, netdev@vger.kernel.org,
 davem@davemloft.net, noor.azura.ahmad.tarmizi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 27 Sep 2022 21:06:53 +0800 Muhammad Husaini Zulkifli wrote:
> --- a/include/uapi/linux/ethtool.h
> +++ b/include/uapi/linux/ethtool.h
> @@ -675,6 +675,7 @@ enum ethtool_link_ext_substate_module {
>   * @ETH_SS_MSG_CLASSES: debug message class names
>   * @ETH_SS_WOL_MODES: wake-on-lan modes
>   * @ETH_SS_SOF_TIMESTAMPING: SOF_TIMESTAMPING_* flags
> + * @ETH_SS_HWTSTAMP_FLAG: timestamping flags
>   * @ETH_SS_TS_TX_TYPES: timestamping Tx types
>   * @ETH_SS_TS_RX_FILTERS: timestamping Rx filters
>   * @ETH_SS_UDP_TUNNEL_TYPES: UDP tunnel types
> @@ -700,6 +701,7 @@ enum ethtool_stringset {
>  	ETH_SS_MSG_CLASSES,
>  	ETH_SS_WOL_MODES,
>  	ETH_SS_SOF_TIMESTAMPING,
> +	ETH_SS_HWTSTAMP_FLAG,
>  	ETH_SS_TS_TX_TYPES,
>  	ETH_SS_TS_RX_FILTERS,
>  	ETH_SS_UDP_TUNNEL_TYPES,
> @@ -1367,6 +1369,7 @@ struct ethtool_ts_info {
>  	__u32	cmd;
>  	__u32	so_timestamping;
>  	__s32	phc_index;
> +	__u32	flag;
>  	__u32	tx_types;
>  	__u32	tx_reserved[3];
>  	__u32	rx_filters;
> diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
> index 408a664fad59..58d073b5a6d2 100644
> --- a/include/uapi/linux/ethtool_netlink.h
> +++ b/include/uapi/linux/ethtool_netlink.h
> @@ -452,6 +452,7 @@ enum {
>  	ETHTOOL_A_TSINFO_UNSPEC,
>  	ETHTOOL_A_TSINFO_HEADER,			/* nest - _A_HEADER_* */
>  	ETHTOOL_A_TSINFO_TIMESTAMPING,			/* bitset */
> +	ETHTOOL_A_TSINFO_FLAG,				/* bitset */
>  	ETHTOOL_A_TSINFO_TX_TYPES,			/* bitset */
>  	ETHTOOL_A_TSINFO_RX_FILTERS,			/* bitset */
>  	ETHTOOL_A_TSINFO_PHC_INDEX,			/* u32 */

You can't add stuff into the middle of an enum or a struct in uAPI.
What's worse for the struct ethtool_ts_info you can't actually add
anything in, period. You can reuse reserved fields but even that
requires extra legwork. If the fields were not previously validated on
input to the kernel (ie. kernel didn't check they are zero) the ioctl
path can't use them, because some application may had been passing in
garbage.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
