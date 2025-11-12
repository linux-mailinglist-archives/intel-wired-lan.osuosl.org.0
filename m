Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1876BC51B17
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 11:36:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5AC440890;
	Wed, 12 Nov 2025 10:36:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YVvi0S2L_ADL; Wed, 12 Nov 2025 10:36:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48DFE408F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762943807;
	bh=c/AYQm2kRak7eKZCwpx6uE8V9ErSBlZSQReAuLr17xM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CuNW25EszmAGgRBEJpHHKET5R7iy1mo6VzaEAff5gSdNbVK5TDD3YGW8ycBe2f2ra
	 8+6izs6ofEB2cCcEaCq0vxJczvcjtNl2wQDw2VM94KHmPXQa9Y73xvglzQ+jTjYoW9
	 KFU6Fo3hRMbHvbWisTE25L79SJYy7xjF+w9rjtF8SHpOerZW5JtcZ0WYOcgS5jtzCB
	 SEoQrTViV6STOpju9nYxSrme2T65xNcwQ8Wni/DFMVc+zxhO4vfxiD8PpS9pz2EjoE
	 DHafLzOifGeSolpkSS1ZCIDjpuvM05T4M3Sp+6WKThHg7MqtGKaarFaYNU63FGnVPF
	 WHWaoQqtl/hpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48DFE408F2;
	Wed, 12 Nov 2025 10:36:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 30E5EFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 10:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2315740418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 10:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J_h36Hs5NnK7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 10:36:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E74504031C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E74504031C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E74504031C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 10:36:43 +0000 (UTC)
Received: from [192.168.44.32] (unknown [185.238.219.100])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 496CC617C4FA5;
 Wed, 12 Nov 2025 11:36:04 +0100 (CET)
Message-ID: <73e29237-4937-4cc7-9830-427bf7464591@molgen.mpg.de>
Date: Wed, 12 Nov 2025 11:35:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Breno Leitao <leitao@debian.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-team@meta.com
References: <20251112-ixgbe_gxrings-v1-1-960e139697fa@debian.org>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251112-ixgbe_gxrings-v1-1-960e139697fa@debian.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: ixgbe: convert to use
 .get_rx_ring_count
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

Dear Breno,


Thank you for your patch.

Am 12.11.25 um 11:23 schrieb Breno Leitao:
> Convert the ixgbe driver to use the new .get_rx_ring_count ethtool
> operation for handling ETHTOOL_GRXRINGS command. This simplifies the
> code by extracting the ring count logic into a dedicated callback.
> 
> The new callback provides the same functionality in a more direct way,
> following the ongoing ethtool API modernization.

Maybe add a paragraph how you tested this.

> Signed-off-by: Breno Leitao <leitao@debian.org>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 15 ++++++++++-----
>   1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 2d660e9edb80..2ad81f687a84 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -2805,6 +2805,14 @@ static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
>   		return 64;
>   }
>   
> +static u32 ixgbe_get_rx_ring_count(struct net_device *dev)
> +{
> +	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
> +
> +	return min_t(u32, adapter->num_rx_queues,
> +		     ixgbe_rss_indir_tbl_max(adapter));
> +}
> +
>   static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
>   			   u32 *rule_locs)
>   {
> @@ -2812,11 +2820,6 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
>   	int ret = -EOPNOTSUPP;
>   
>   	switch (cmd->cmd) {
> -	case ETHTOOL_GRXRINGS:
> -		cmd->data = min_t(int, adapter->num_rx_queues,
> -				  ixgbe_rss_indir_tbl_max(adapter));
> -		ret = 0;
> -		break;
>   	case ETHTOOL_GRXCLSRLCNT:
>   		cmd->rule_cnt = adapter->fdir_filter_count;
>   		ret = 0;
> @@ -3743,6 +3746,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops = {
>   	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
>   	.get_coalesce           = ixgbe_get_coalesce,
>   	.set_coalesce           = ixgbe_set_coalesce,
> +	.get_rx_ring_count	= ixgbe_get_rx_ring_count,
>   	.get_rxnfc		= ixgbe_get_rxnfc,
>   	.set_rxnfc		= ixgbe_set_rxnfc,
>   	.get_rxfh_indir_size	= ixgbe_rss_indir_size,
> @@ -3791,6 +3795,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
>   	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
>   	.get_coalesce           = ixgbe_get_coalesce,
>   	.set_coalesce           = ixgbe_set_coalesce,
> +	.get_rx_ring_count	= ixgbe_get_rx_ring_count,
>   	.get_rxnfc		= ixgbe_get_rxnfc,
>   	.set_rxnfc		= ixgbe_set_rxnfc,
>   	.get_rxfh_indir_size	= ixgbe_rss_indir_size,

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
