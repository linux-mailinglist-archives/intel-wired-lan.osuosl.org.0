Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF25B331B1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Aug 2025 20:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91B1460B36;
	Sun, 24 Aug 2025 18:01:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iPf0-QbwsVQb; Sun, 24 Aug 2025 18:01:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF9EF60B38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756058478;
	bh=FiEitSaZcZxQ/RrRee1DQ1uD7tO16ytWuBrqNnWPLQ4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sSHdmMmj0y4Nmq2ubwoUGX1mkJ0wXdhvW3u8h31enyD+s1UwHSMti6nPIgXDP5yNg
	 wQ8euD/bwlJxYJKoN0ytWICqcx6CpLraWyp/+wX7c49Qsd/kljVhXe3+HWkPsKbYu6
	 4A0MEu68BmOI860JLMcfVd54+c2b5l9H4vHmGgr/xz33/UsoKrA4JNTWZsgWxdNkkV
	 vsNFgCKzR4f9I8dPg0zNp3zPc+fsyL2TxAcNzfNwoRUDyRzP56ZpkTStI6NG9edE7U
	 9YJNNb7+ubi5yhJs0eK6/JSyg8TgRyLS5d8yMV7V6fSR65+m8fgyzxnAhkkCsvPe1T
	 HrDayljnA/oMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF9EF60B38;
	Sun, 24 Aug 2025 18:01:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 313961D9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 18:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2304360B35
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 18:01:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jd6fFQKg83JX for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Aug 2025 18:01:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D358D60B2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D358D60B2B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D358D60B2B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 18:01:15 +0000 (UTC)
Received: from [10.0.49.230] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2E2C161E6484C;
 Sun, 24 Aug 2025 20:00:36 +0200 (CEST)
Message-ID: <b83c21c4-f379-47ff-9dd2-9d2fc0779d8f@molgen.mpg.de>
Date: Sun, 24 Aug 2025 20:00:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com
References: <20250824112037.32692-1-enjuk@amazon.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250824112037.32692-1-enjuk@amazon.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: preserve RSS
 indirection table across admin down/up
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

Dear Kohei,


Thank you for your patch.

Am 24.08.25 um 13:20 schrieb Kohei Enju:
> Currently, the RSS indirection table configured by user via ethtool is
> reinitialized to default values during interface resets (e.g., admin
> down/up, MTU change). As for RSS hash key, commit 3dfbfc7ebb95 ("ixgbe:
> Check for RSS key before setting value") made it persistent across
> interface resets.
> 
> By adopting the same approach used in igc and igb drivers which
> reinitializes the RSS indirection table only when the queue count
> changes, let's make user configuration persistent as long as queue count
> remains unchanged.
> 
> Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network
> Connection.
> 
> Test:
> Set custom indirection table and check the value after interface down/up
> 
>    # ethtool --set-rxfh-indir ens5 equal 2
>    # ethtool --show-rxfh-indir ens5 | head -5
> 
>    RX flow hash indirection table for ens5 with 12 RX ring(s):
>        0:      0     1     0     1     0     1     0     1
>        8:      0     1     0     1     0     1     0     1
>       16:      0     1     0     1     0     1     0     1
>    # ip link set dev ens5 down && ip link set dev ens5 up
> 
> Without patch:
>    # ethtool --show-rxfh-indir ens5 | head -5
> 
>    RX flow hash indirection table for ens5 with 12 RX ring(s):
>        0:      0     1     2     3     4     5     6     7
>        8:      8     9    10    11     0     1     2     3
>       16:      4     5     6     7     8     9    10    11
> 
> With patch:
>    # ethtool --show-rxfh-indir ens5 | head -5
> 
>    RX flow hash indirection table for ens5 with 12 RX ring(s):
>        0:      0     1     0     1     0     1     0     1
>        8:      0     1     0     1     0     1     0     1
>       16:      0     1     0     1     0     1     0     1
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 37 +++++++++++++------
>   2 files changed, 27 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 14d275270123..d8b088c90b05 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -838,6 +838,7 @@ struct ixgbe_adapter {
>    */
>   #define IXGBE_MAX_RETA_ENTRIES 512
>   	u8 rss_indir_tbl[IXGBE_MAX_RETA_ENTRIES];
> +	u16 last_rss_i;
>   
>   #define IXGBE_RSS_KEY_SIZE     40  /* size of RSS Hash Key in bytes */
>   	u32 *rss_key;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 80e6a2ef1350..dc5a8373b0c3 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -4318,14 +4318,22 @@ static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
>   	/* Fill out hash function seeds */
>   	ixgbe_store_key(adapter);
>   
> -	/* Fill out redirection table */
> -	memset(adapter->rss_indir_tbl, 0, sizeof(adapter->rss_indir_tbl));
> +	/* Update redirection table in memory on first init or queue count
> +	 * change, otherwise preserve user configurations. Then always
> +	 * write to hardware.
> +	 */
> +	if (adapter->last_rss_i != rss_i) {
> +		memset(adapter->rss_indir_tbl, 0,
> +		       sizeof(adapter->rss_indir_tbl));
> +
> +		for (i = 0, j = 0; i < reta_entries; i++, j++) {
> +			if (j == rss_i)
> +				j = 0;
>   
> -	for (i = 0, j = 0; i < reta_entries; i++, j++) {
> -		if (j == rss_i)
> -			j = 0;
> +			adapter->rss_indir_tbl[i] = j;
> +		}
>   
> -		adapter->rss_indir_tbl[i] = j;
> +		adapter->last_rss_i = rss_i;
>   	}
>   
>   	ixgbe_store_reta(adapter);
> @@ -4347,12 +4355,19 @@ static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
>   					*(adapter->rss_key + i));
>   	}
>   
> -	/* Fill out the redirection table */
> -	for (i = 0, j = 0; i < 64; i++, j++) {
> -		if (j == rss_i)
> -			j = 0;
> +	/* Update redirection table in memory on first init or queue count
> +	 * change, otherwise preserve user configurations. Then always
> +	 * write to hardware.
> +	 */
> +	if (adapter->last_rss_i != rss_i) {
> +		for (i = 0, j = 0; i < 64; i++, j++) {
> +			if (j == rss_i)
> +				j = 0;
> +
> +			adapter->rss_indir_tbl[i] = j;
> +		}
>   
> -		adapter->rss_indir_tbl[i] = j;
> +		adapter->last_rss_i = rss_i;
>   	}
>   
>   	ixgbe_store_vfreta(adapter);

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
