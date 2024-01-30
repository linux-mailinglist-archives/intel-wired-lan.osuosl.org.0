Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4D18425EA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 14:13:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B677081AF3;
	Tue, 30 Jan 2024 13:13:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B677081AF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706620431;
	bh=bzxo/lDZ3dkRGuml3CrorRLN1KbJUvXLlh0xbZvfwvI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BdhWETGfPiLUpeLI7FKa1XYEeg0vC2GZn0wMhEIDxmBQxXzETP2XBxo1omKlxCy4j
	 oggDKaZ9xi7TjZ2l8GDiytI9Lj+zXZayi/HWpMgEok8L+BC3lKcsaNXziKANR4xn1N
	 EB4Esb9iPgnRUCIWWC+1j9KpjUpmxLBVX0Uo7GvpYCq4/qZ1xWRyPMRHfjmnnjHcdi
	 KchmUugMJAlLzEIW679oeCBxzm1+NVeuC3Jhrc+vfhdERU6u9L64RNrAGI3qSIafS3
	 Dy/087IPazsV0r9djvjeVPci2+ewk2JMX8oE3QoDUCpOOLuHc4MvcEBU5eTxFxcsED
	 Y6w92/A/mkhEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ABE2IlR724EA; Tue, 30 Jan 2024 13:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4A288194A;
	Tue, 30 Jan 2024 13:13:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4A288194A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61EC71BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47C3A60BCC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:13:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47C3A60BCC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PaMaGCDwl7WM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 13:13:45 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A09F60586
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:13:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A09F60586
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6DC93CE182E;
 Tue, 30 Jan 2024 13:13:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94848C433C7;
 Tue, 30 Jan 2024 13:13:40 +0000 (UTC)
Date: Tue, 30 Jan 2024 13:13:34 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20240130131334.GJ351311@kernel.org>
References: <20240126130503.14197-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240126130503.14197-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706620422;
 bh=t1VWMZfJ75RGQ7+F+W1zBcnuaV/kXgLyDNxdFeyW1cs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eIoZ9wM3Ddnh/7gh2UHyCgNu09jL9SkYngIvWVs9wXWTwRoXn6rfRG4aaoy8viXdt
 ZQlgsiQ0Iy1x9dsN5WWUIbQVNCfM5LR3IRyb2MRxEeE3HXdvp/cevBJkaGr1yVv6id
 NRlF71KGCx6PyZ+R7tU2GoNumrDt4e0NlHy4FKnd13vy+tWOySi+Wb05k/4BOgVO4h
 dgIJmX+rHkLEIRGKQdud9EU/5bChMLflxeswrDxFFYK4ilZWZYl6i+aGlwQPBKX5lr
 Gg57+WUjwvLj7pnIuCc2Xesx2rEAvQziJ5NjIKVFVSXLBE5owmMTs2rwF64mWcJzZ5
 XrwAmtnj0Zxjw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eIoZ9wM3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/3] ixgbe: Convert ret
 val type from s32 to int
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 26, 2024 at 02:05:01PM +0100, Jedrzej Jagielski wrote:
> Currently big amount of the functions returning standard error codes
> are of type s32. Convert them to regular ints as typdefs here are not
> necessary to return standard error codes.
> 
> Fix incorrect args alignment in touched functions.
> 
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Thanks Jedrzej,

this looks good to me.
With the nit below resolved, please feel free to add:

Reviewed-by: Simon Horman <horms@kernel.org>

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c

...

> @@ -115,7 +110,7 @@ s32 ixgbe_dcb_config_tx_desc_arbiter_82598(struct ixgbe_hw *hw,
>  }
>  
>  /**
> - * ixgbe_dcb_config_tx_data_arbiter_82598 - Config Tx data arbiter
> + * xgbe_dcb_config_tx_data_arbiter_82598 - Config Tx data arbiter

nit: ixgbe_dcb_config_tx_data_arbiter_82598

>   * @hw: pointer to hardware structure
>   * @refill: refill credits index by traffic class
>   * @max: max credits index by traffic class
> @@ -124,11 +119,8 @@ s32 ixgbe_dcb_config_tx_desc_arbiter_82598(struct ixgbe_hw *hw,
>   *
>   * Configure Tx Data Arbiter and credits for each traffic class.
>   */
> -s32 ixgbe_dcb_config_tx_data_arbiter_82598(struct ixgbe_hw *hw,
> -						u16 *refill,
> -						u16 *max,
> -						u8 *bwg_id,
> -						u8 *prio_type)
> +int ixgbe_dcb_config_tx_data_arbiter_82598(struct ixgbe_hw *hw, u16 *refill,
> +					   u16 *max, u8 *bwg_id, u8 *prio_type)
>  {
>  	u32 reg;
>  	u8 i;

...
