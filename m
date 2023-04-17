Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3AF6E3EAE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 06:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BC2E410C8;
	Mon, 17 Apr 2023 04:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BC2E410C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681707540;
	bh=yog3/V2z7qFqe5/iFYzwvsslv5O56g0JPg3uPmPG97I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JovyDWrDoVQMxnN+rVsG9AXUFRbCplYEfTFa3lIRt9GElsmKmsxGjCIUft3hae/pC
	 kn4fxP2svUIauoCtUSZKCC0PI4lx1FQ8eFcOqUN0BBV+DZmgB7Y7yaZsFyvzUoy1Eu
	 e/rrgVICsByqjIHP2JJZyqeKkzrkPr7JNwZC9esAq+EiAlFzWHaLLzL+1lGiCfONFM
	 YWyxLl9ujAHBbRlo2TuDinvSLcqRt66bHl/4JtSsxOvIjyFvsOnLE529a2UvKaURVk
	 SdCHDXCrOZqz2FdOIZr72XlcMVROXGkl1nWGumbzYf1xF36b7u36tH41DcBZSCD/aE
	 oQgyDteu13JkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SAsHADcudYzF; Mon, 17 Apr 2023 04:58:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3F6C410A2;
	Mon, 17 Apr 2023 04:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3F6C410A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B90F01C4152
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 04:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DC0581AD1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 04:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DC0581AD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02dB2YmzndIC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 04:58:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C71D381A6A
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C71D381A6A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 04:58:51 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id lh8so11387289plb.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 21:58:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681707531; x=1684299531;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mA+zvZSeTro/W/zKL49HqImDv+6gr9fahAFA7D1nBm4=;
 b=GWy8n9hDYhvbXNcq9RKfh77RijFR0t6qNSFZI/rhHX1ZO+M6QUhWmGkFR9aD9nZNv7
 u7JoPXsXSrTMX9auCF6dMsyJd729lGyA+pVcpYC8uOz/JH4e3QTVpQF4LDsQXKDg+wGa
 lfRYKbrvw3T8AWR+jYs4eEhqkby/4nN55dgGFZXCYTFPpCRDv2sn5uy/KVaXeNQRBdTz
 y4xdbH8ecNk3CDMtChKCccVynVyZQNzOuC3U64Ci4vknWbMAZ3ukoJKBhDztnDJ77FZb
 5Br7r0K069Go29KD1eLe8fjFfenpVBNo8pDQU78ePuG9GF98vBalAcLU4mX2iIq66JRm
 WcBQ==
X-Gm-Message-State: AAQBX9cbB5euYznCcgH8Ee6n+Bh95jU3sxhQWhpVITc9vH1sJhK4c7E4
 A9v26+Dv8Uf0SV54L0oQckOEtghChKj0qtSLuPrg6NtRXepO6+Xl/fdREtmHPq9ROwah/35nM8+
 ozeJ53CCltXMH99JmwER0SXdWJcwCmYqFeHv8oA7A6lkSP9gu+8OnlC9k4mf9IMPDPkcSGXkMMs
 X/h0nEFTfklRY=
X-Google-Smtp-Source: AKy350Y+gA00hNvHY7bE0uJKvpa1y5qWUXMvBE6UUJKf10RwOZ5IBBYKkasGbbgRjIP2zRN9IRKWrw==
X-Received: by 2002:a17:902:e5c5:b0:1a2:9ce6:6483 with SMTP id
 u5-20020a170902e5c500b001a29ce66483mr13306564plf.64.1681707530615; 
 Sun, 16 Apr 2023 21:58:50 -0700 (PDT)
Received: from fastly.com (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 p11-20020a1709026b8b00b001a6467cfbeasm6638460plk.53.2023.04.16.21.58.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Apr 2023 21:58:50 -0700 (PDT)
Date: Sun, 16 Apr 2023 21:58:48 -0700
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20230417045847.GB43796@fastly.com>
References: <20230416191223.394805-1-jdamato@fastly.com>
 <20230416191223.394805-3-jdamato@fastly.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230416191223.394805-3-jdamato@fastly.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1681707531; x=1684299531;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mA+zvZSeTro/W/zKL49HqImDv+6gr9fahAFA7D1nBm4=;
 b=ePPqS7Tv1lGG85UAD9vtzT4oBDINQ+DO97hkj1xE1GjpwqZXkrHHJv/5hLYuRkhuIk
 O9lqa5t72Wl9EOnqBigNe2R1bML3n2tQx5rci15++QkQvUivUqTzUinryCLsxt/l9Fxm
 6JZiXbEttM3ytFwSqLoAafNgfh2cUrtGxs/Ys=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=ePPqS7Tv
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] ixgbe: Enable setting RSS
 table to default values
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Apr 16, 2023 at 07:12:23PM +0000, Joe Damato wrote:
> ethtool uses `ETHTOOL_GRXRINGS` to compute how many queues are supported
> by RSS. The driver should return the smaller of either:
>   - The maximum number of RSS queues the device supports, OR
>   - The number of RX queues configured
> 
> Prior to this change, running `ethtool -X $iface default` fails if the
> number of queues configured is larger than the number supported by RSS,
> even though changing the queue count correctly resets the flowhash to
> use all supported queues.
> 
> Other drivers (for example, i40e) will succeed but the flow hash will
> reset to support the maximum number of queues supported by RSS, even if
> that amount is smaller than the configured amount.
> 
> Prior to this change:
> 
> $ sudo ethtool -L eth1 combined 20
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 20 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:      0     1     2     3     4     5     6     7
>    24:      8     9    10    11    12    13    14    15
>    32:      0     1     2     3     4     5     6     7
> ...
> 
> You can see that the flowhash was correctly set to use the maximum
> number of queues supported by the driver (16).
> 
> However, asking the NIC to reset to "default" fails:
> 
> $ sudo ethtool -X eth1 default
> Cannot set RX flow hash configuration: Invalid argument
> 
> After this change, the flowhash can be reset to default which will use
> all of the available RSS queues (16) or the configured queue count,
> whichever is smaller.
> 
> Starting with eth1 which has 10 queues and a flowhash distributing to
> all 10 queues:
> 
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 10 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9     0     1     2     3     4     5
>    16:      6     7     8     9     0     1     2     3
> ...
> 
> Increasing the queue count to 48 resets the flowhash to distribute to 16
> queues, as it did before this patch:
> 
> $ sudo ethtool -L eth1 combined 48
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:      0     1     2     3     4     5     6     7
> ...
> 
> Due to the other bugfix in this series, the flowhash can be set to use
> queues 0-5:
> 
> $ sudo ethtool -X eth1 equal 5
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>     0:      0     1     2     3     4     0     1     2
>     8:      3     4     0     1     2     3     4     0
>    16:      1     2     3     4     0     1     2     3
> ...
> 
> Due to this bugfix, the flowhash can be reset to default and use 16
> queues:
> 
> $ sudo ethtool -X eth1 default
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:      0     1     2     3     4     5     6     7
> ...

Fixes: 91cd94bfe4f0 ("ixgbe: add basic support for setting and getting nfc
controls")

> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 821dfd323fa9..0bbad4a5cc2f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -2665,6 +2665,14 @@ static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
>  	return 0;
>  }
>  
> +static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
> +{
> +	if (adapter->hw.mac.type < ixgbe_mac_X550)
> +		return 16;
> +	else
> +		return 64;
> +}
> +
>  static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
>  			   u32 *rule_locs)
>  {
> @@ -2673,7 +2681,8 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
>  
>  	switch (cmd->cmd) {
>  	case ETHTOOL_GRXRINGS:
> -		cmd->data = adapter->num_rx_queues;
> +		cmd->data = min_t(int, adapter->num_rx_queues,
> +				  ixgbe_rss_indir_tbl_max(adapter));
>  		ret = 0;
>  		break;
>  	case ETHTOOL_GRXCLSRLCNT:
> @@ -3075,14 +3084,6 @@ static int ixgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
>  	return ret;
>  }
>  
> -static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
> -{
> -	if (adapter->hw.mac.type < ixgbe_mac_X550)
> -		return 16;
> -	else
> -		return 64;
> -}
> -
>  static u32 ixgbe_get_rxfh_key_size(struct net_device *netdev)
>  {
>  	return IXGBE_RSS_KEY_SIZE;
> -- 
> 2.25.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
