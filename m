Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DFAB24409
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 10:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 689334122E;
	Wed, 13 Aug 2025 08:19:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6bsvcx1rRk7a; Wed, 13 Aug 2025 08:19:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C502A4121F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755073147;
	bh=J6g7oqGu9+82rVios+AYVDJsGIgmwlMiUxe20Xdke4w=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a8Iv+AeHXHrrfVTE2DumlAFHLcqDtR91SWSVlyVEk4vZ2iPWGQhQNW/bI8D6oySL+
	 n/9pssRXlO4vJG2OsFagSFDjFaMG/1k55zLDuYAHyhNbk+dDR7yEeCkNvxu6y0btP7
	 AdtHM+vSNXehWC33veHUuoFUb5iqZC4jLPh42CNQoisMhjqPTl5zczhP2jz5HpLjju
	 WQvmTnOhG+nXdhEzKuAKAKf0ZwbCp8pZBhx6B7ISHT8u/zPN+qlXFYFCe0sMp0w1T5
	 0AuIJbREiRokKP/PlKpItaHISj1Z+4A/+z1AQALDJJQHWef2Q1RqO6yH70oqBf+L05
	 G2rbcBBp/kBlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C502A4121F;
	Wed, 13 Aug 2025 08:19:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 603D51B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5245341060
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 763xON1f9W7v for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 08:19:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D441241217
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D441241217
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D441241217
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:19:04 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7c8.dynamic.kabel-deutschland.de
 [95.90.247.200])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5389461E647B3;
 Wed, 13 Aug 2025 10:18:30 +0200 (CEST)
Message-ID: <9b44df93-acec-4416-9f32-f97d0bfaaa7b@molgen.mpg.de>
Date: Wed, 13 Aug 2025 10:18:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com
References: <20250813075206.70114-1-enjuk@amazon.com>
 <20250813075206.70114-2-enjuk@amazon.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250813075206.70114-2-enjuk@amazon.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next 1/2] igbvf: add
 lbtx_packets and lbtx_bytes to ethtool statistics
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

Am 13.08.25 um 09:50 schrieb Kohei Enju:
> Currently ethtool shows lbrx_packets and lbrx_bytes (Good RX
> Packets/Octets loopback Count), but doesn't show the TX-side equivalents
> (lbtx_packets and lbtx_bytes). Add visibility of those missing
> statistics by adding them to ethtool statistics.
> 
> In addition, the order of lbrx_bytes and lbrx_packets is not consistent
> with non-loopback statistics (rx_packets, rx_bytes). Therefore, align
> the order by swapping positions of lbrx_bytes and lbrx_packets.
> 
> Tested on Intel Corporation I350 Gigabit Network Connection.
> 
> Before:
>    # ethtool -S ens5 | grep -E "x_(bytes|packets)"
>         rx_packets: 135
>         tx_packets: 106
>         rx_bytes: 16010
>         tx_bytes: 12451
>         lbrx_bytes: 1148
>         lbrx_packets: 12
> 
> After:
>    # ethtool -S ens5 | grep -E "x_(bytes|packets)"
>         rx_packets: 748
>         tx_packets: 304
>         rx_bytes: 81513
>         tx_bytes: 33698
>         lbrx_packets: 97
>         lbtx_packets: 109
>         lbrx_bytes: 12090
>         lbtx_bytes: 12401
> 
> Tested-by: Kohei Enju <enjuk@amazon.com>

No need to resend, but I believe, you only add a Tested-by: tag, if the 
person differs from the author/Signed-off-by: tag.

> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/igbvf/ethtool.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
> index 773895c663fd..c6defc495f13 100644
> --- a/drivers/net/ethernet/intel/igbvf/ethtool.c
> +++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
> @@ -30,8 +30,10 @@ static const struct igbvf_stats igbvf_gstrings_stats[] = {
>   	{ "rx_bytes", IGBVF_STAT(stats.gorc, stats.base_gorc) },
>   	{ "tx_bytes", IGBVF_STAT(stats.gotc, stats.base_gotc) },
>   	{ "multicast", IGBVF_STAT(stats.mprc, stats.base_mprc) },
> -	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
>   	{ "lbrx_packets", IGBVF_STAT(stats.gprlbc, stats.base_gprlbc) },
> +	{ "lbtx_packets", IGBVF_STAT(stats.gptlbc, stats.base_gptlbc) },
> +	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
> +	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },
>   	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
>   	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },
>   	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc) },

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
