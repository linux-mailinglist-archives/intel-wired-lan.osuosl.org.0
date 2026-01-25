Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIGIKiUXdml1LgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jan 2026 14:14:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4056809B1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jan 2026 14:14:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1C4082275;
	Sun, 25 Jan 2026 13:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZmGl7RtaR159; Sun, 25 Jan 2026 13:14:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AB3D8224E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769346849;
	bh=lTKJGbCrPaEbSFAuvPIh6CkaeFRE7NCkoh+SsrCk7jc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yA3O9fxCMX8Y6/r3FeKN7ZNwkNUQ0lfiVxaquHDN2jExWVKTy84emaVWzZOIilxzy
	 XbSmWzndS1onltTbJMGuduakji/O8DFDJk06da+aLpdP5vjx+mKcNNQeBgcDVao55v
	 bZGGhFHVt1oDMYKuz8cEuqHdqws4J1RuGIPmVPclJuP4jCS8yrlchQVVcAk3IxCOg9
	 nkbwQfAkWpMcIi1UAVbncughczJP5qa0fOAzACBGjneuCcHTp54C0ZEM4RUCQHh+LC
	 wvwroqv8svnj0+94n+Ke0lQ75yBEE5KD5VcVeXIPAyg5RoO8BuocdnCL1F/tSrbt2N
	 AXpuhv7XjPhgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AB3D8224E;
	Sun, 25 Jan 2026 13:14:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AA5F711B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 13:14:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DD5982243
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 13:14:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TkLZhD8lHHyD for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Jan 2026 13:14:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 748588223E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 748588223E
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 748588223E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 13:14:05 +0000 (UTC)
Received: from ms-a2 (188.53.30.125.dy.iij4u.or.jp [125.30.53.188])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 60PDDRms093033
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 25 Jan 2026 22:13:28 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: takkozu@amazon.com
Cc: aleksandr.loktionov@intel.com, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 enjuk@amazon.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, piotr.kwapulinski@intel.com,
 pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com
Date: Sun, 25 Jan 2026 13:12:37 +0000
Message-ID: <20260125131327.4469-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260120093441.70075-8-takkozu@amazon.com>
References: <20260120093441.70075-8-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=lTKJGbCrPaEbSFAuvPIh6CkaeFRE7NCkoh+SsrCk7jc=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1769346809; v=1;
 b=uB8lTu7ocXcmDtNk/A60xi+YGO/4iaX865u5/sa2MRHW8FHIYlmuDPxli9aaYiNj
 noFuNXbU2hhqfdGIlieuANVIltFmI4TAi7C/Xr5380DJbnzp+qkwHwMJ0UpUcsfN
 xLZG+CQnc+QR+HyDEgaJrs1RGaUncr5cwVzmCxOv0m959J/Kqqp0B0C8t+5NuodI
 ecHtHrD8gacWbNZx+O0my8pi2NagMPYyk0zxiBqo8Xj0AsCacx5gaHJlY4DDtXKm
 MvbtQPNy1wC1OekSZJaB+oiJQPIe6TFnU4J9o7QrPMzZq2uqblwgal/pFskEls9J
 FjKnAp5FPUjnnBnHsMtdHw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=uB8lTu7o
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:enjuk@amazon.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: A4056809B1
X-Rspamd-Action: no action

On Tue, 20 Jan 2026 18:34:40 +0900, Takashi Kozu wrote:

> Change igc_set_rxfh() to accept and save a userspace-provided
> RSS key. When a key is provided, store it in the adapter and write the
> E1000 registers accordingly.
> 
> This can be tested using `ethtool -X <dev> hkey <key>`.
> 
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
>  drivers/net/ethernet/intel/igb/igb.h         |  1 +
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 49 +++++++++++---------
>  drivers/net/ethernet/intel/igb/igb_main.c    |  3 +-
>  3 files changed, 30 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index 8c9b02058cec..2509ec30acf3 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -657,6 +657,7 @@ struct igb_adapter {
>  	u32 rss_indir_tbl_init;
>  	u8 rss_indir_tbl[IGB_RETA_SIZE];
>  	u8 rss_key[IGB_RSS_KEY_SIZE];
> +	bool has_user_rss_key;

Hi Kozu-san.

While preparing for testing, I noticed that now 'has_user_rss_key' is
not necessary.

Since netdev_rss_key_fill() is called in igb_sw_init() and igb_sw_init()
is called only once for the adapter's lifetime, adapter->rss_key
wouldn't be changed except for user-intended change.

I'd drop that flag and related code (see below)

>  
>  	unsigned long link_check_timeout;
>  	int copper_tries;
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index b387121f0ea7..1db9c2447c91 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -3357,35 +3357,40 @@ static int igb_set_rxfh(struct net_device *netdev,
>  	u32 num_queues;
>  
>  	/* We do not allow change in unsupported parameters */
> -	if (rxfh->key ||
> -	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
> -	     rxfh->hfunc != ETH_RSS_HASH_TOP))
> +	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
> +	    rxfh->hfunc != ETH_RSS_HASH_TOP)
>  		return -EOPNOTSUPP;
> -	if (!rxfh->indir)
> -		return 0;
>  
> -	num_queues = adapter->rss_queues;
> +	if (rxfh->indir) {
> +		num_queues = adapter->rss_queues;
>  
> -	switch (hw->mac.type) {
> -	case e1000_82576:
> -		/* 82576 supports 2 RSS queues for SR-IOV */
> -		if (adapter->vfs_allocated_count)
> -			num_queues = 2;
> -		break;
> -	default:
> -		break;
> -	}
> +		switch (hw->mac.type) {
> +		case e1000_82576:
> +			/* 82576 supports 2 RSS queues for SR-IOV */
> +			if (adapter->vfs_allocated_count)
> +				num_queues = 2;
> +			break;
> +		default:
> +			break;
> +		}
>  
> -	/* Verify user input. */
> -	for (i = 0; i < IGB_RETA_SIZE; i++)
> -		if (rxfh->indir[i] >= num_queues)
> -			return -EINVAL;
> +		/* Verify user input. */
> +		for (i = 0; i < IGB_RETA_SIZE; i++)
> +			if (rxfh->indir[i] >= num_queues)
> +				return -EINVAL;
>  
>  
> -	for (i = 0; i < IGB_RETA_SIZE; i++)
> -		adapter->rss_indir_tbl[i] = rxfh->indir[i];
> +		for (i = 0; i < IGB_RETA_SIZE; i++)
> +			adapter->rss_indir_tbl[i] = rxfh->indir[i];
> +
> +		igb_write_rss_indir_tbl(adapter);
> +	}
>  
> -	igb_write_rss_indir_tbl(adapter);
> +	if (rxfh->key) {
> +		adapter->has_user_rss_key = true;

here

> +		memcpy(adapter->rss_key, rxfh->key, sizeof(adapter->rss_key));
> +		igb_write_rss_key(adapter);
> +	}
>  
>  	return 0;
>  }
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index c703011b19ec..8dab133296ca 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4051,7 +4051,8 @@ static int igb_sw_init(struct igb_adapter *adapter)
>  	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
>  
>  	/* init RSS key */
> -	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
> +	if (!adapter->has_user_rss_key)
> +		netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));

and this diff.

>  
>  	/* set default ring sizes */
>  	adapter->tx_ring_count = IGB_DEFAULT_TXD;
> -- 
> 2.52.0
