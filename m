Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 993C0D02A3B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 13:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F14E0811E8;
	Thu,  8 Jan 2026 12:31:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OcqRSrWaDBUe; Thu,  8 Jan 2026 12:31:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5529081226
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767875478;
	bh=9C+0gaGY7Mb59Mi+E3nDG9jqRS/hv69rVkGGarx9BK8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X4IH1G2uZr65tD7eRT1aszzgTFItQc131J26iKUgLGR7BhRTlQUA2imBoHzAYfLy2
	 l6E66XvKeFT4YWbN1ota4N5CkN4JeBcqSeRbzJrqkRx5mGnuiENa5Pjsy7gFJs2niu
	 CTAQ12uNNIVHxQqebdQIE95KgtEoAkdiyqvcrZIE4umDlOFA6hs5e4IVa21Viz37V6
	 Tq3+wKg+/wbxraXtunLoFaUydQ3SjbNrPY/WHKgFgMmNIrztMwRWTGX2ljRDLxZr+I
	 um2b3z9yjBuJkCIeYS3NJfDZP2JPykGKt5B+NDSExCnOdkNbKJrHS+0MK43hod92HP
	 nyY7PfUanerGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5529081226;
	Thu,  8 Jan 2026 12:31:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D68A2C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAB5881226
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:31:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HUT9HDpEPKlh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 12:31:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E8910811E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8910811E1
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E8910811E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:31:14 +0000 (UTC)
Received: from [192.168.2.217] (p5dc552de.dip0.t-ipconnect.de [93.197.82.222])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9D117236E401C;
 Thu, 08 Jan 2026 13:27:58 +0100 (CET)
Message-ID: <2ad8d26a-794c-498b-a09b-5791acb0a9d5@molgen.mpg.de>
Date: Thu, 8 Jan 2026 13:27:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Takashi Kozu <takkozu@amazon.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Kohei Enju <enjuk@amazon.com>
References: <20260108052020.84218-5-takkozu@amazon.com>
 <20260108052020.84218-6-takkozu@amazon.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260108052020.84218-6-takkozu@amazon.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for RSS
 key get/set support
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

Dear Takashi,


Thank you for the patch.

Am 08.01.26 um 06:20 schrieb Takashi Kozu:
> Store the RSS key inside struct igb_adapter and introduce the
> igb_write_rss_key() helper function. This allows the driver to program
> the E1000 registers using a persistent RSS key, instead of using a
> stack-local buffer in igb_setup_mrqc().
> 
> Tested-by: Kohei Enju <enjuk@amazon.com>
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
>   drivers/net/ethernet/intel/igb/igb.h         |  3 +++
>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 12 ++++++++++++
>   drivers/net/ethernet/intel/igb/igb_main.c    |  6 ++----
>   3 files changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index 0fff1df81b7b..8c9b02058cec 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -495,6 +495,7 @@ struct hwmon_buff {
>   #define IGB_N_PEROUT	2
>   #define IGB_N_SDP	4
>   #define IGB_RETA_SIZE	128
> +#define IGB_RSS_KEY_SIZE	40
>   
>   enum igb_filter_match_flags {
>   	IGB_FILTER_FLAG_ETHER_TYPE = 0x1,
> @@ -655,6 +656,7 @@ struct igb_adapter {
>   	struct i2c_client *i2c_client;
>   	u32 rss_indir_tbl_init;
>   	u8 rss_indir_tbl[IGB_RETA_SIZE];
> +	u8 rss_key[IGB_RSS_KEY_SIZE];
>   
>   	unsigned long link_check_timeout;
>   	int copper_tries;
> @@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *);
>   void igb_reinit_locked(struct igb_adapter *);
>   void igb_reset(struct igb_adapter *);
>   int igb_reinit_queues(struct igb_adapter *);
> +void igb_write_rss_key(struct igb_adapter *adapter);
>   void igb_write_rss_indir_tbl(struct igb_adapter *);
>   int igb_set_spd_dplx(struct igb_adapter *, u32, u8);
>   int igb_setup_tx_resources(struct igb_ring *);
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 10e2445e0ded..8695ff28a7b8 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -3016,6 +3016,18 @@ static int igb_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
>   	return ret;
>   }
>   
> +void igb_write_rss_key(struct igb_adapter *adapter)
> +{
> +	struct e1000_hw *hw = &adapter->hw;
> +	u32 val;
> +	int i;
> +
> +	for (i = 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
> +		val = get_unaligned_le32(&adapter->rss_key[i * 4]);

Why is `get_unaligned_le32()` needed?

> +		wr32(E1000_RSSRK(i), val);

I probably wouldn’t get rid of `val`.

> +	}
> +}
> +
>   static int igb_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
>   {
>   	struct igb_adapter *adapter = netdev_priv(netdev);
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 85f9589cc568..da0f550de605 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4525,11 +4525,9 @@ static void igb_setup_mrqc(struct igb_adapter *adapter)
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 mrqc, rxcsum;
>   	u32 j, num_rx_queues;
> -	u32 rss_key[10];
>   
> -	netdev_rss_key_fill(rss_key, sizeof(rss_key));
> -	for (j = 0; j < 10; j++)
> -		wr32(E1000_RSSRK(j), rss_key[j]);
> +	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
> +	igb_write_rss_key(adapter);
>   
>   	num_rx_queues = adapter->rss_queues;

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul

