Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BBBB2441E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 10:21:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E91DD60741;
	Wed, 13 Aug 2025 08:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id re8qlxKbIzcg; Wed, 13 Aug 2025 08:21:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F13860742
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755073260;
	bh=B0pOHjp391FUwD4sVIrjnjzeGJUk9SPqyCpFIs34HDs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=42T6Rv05PT+gPyav5wBxUM1xgEzYZBNPDSZtrewbuDvu8BnR0xKpkmKlLM/8nwz4T
	 w4hpSybYBzOTIoQOze6a3c6s6gr1GdDS6d2HAEeiQbBeyXP2Z7c4ylFsIRQb4ePf8p
	 AHy0Co/7FBJbNKcLxRYFtWAw3EK1Vf6ZFhpkojfHVj5zXSZLoYPVgigBPFS6Mnf1J7
	 3qmn0t/G5EAXXELctLd02c2f85Q/Kl/nGsxkBJJkznkkqIc9XSgERZeR+ohY9bvra1
	 P+8+ZgugQD1saw5WZe0/LE6G3m7BRSsHNqs5OTfMvn2sKdXUaxp8Xf/jEtVVt9jB+t
	 o4bMUvX6SmZSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F13860742;
	Wed, 13 Aug 2025 08:21:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B675B1B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A83E740173
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:20:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YmBueEtqDusn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 08:20:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 36E6640166
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36E6640166
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 36E6640166
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:20:57 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7c8.dynamic.kabel-deutschland.de
 [95.90.247.200])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A4D2C61E647BA;
 Wed, 13 Aug 2025 10:20:33 +0200 (CEST)
Message-ID: <785b380c-d4ba-423c-93ed-059d0aebc6be@molgen.mpg.de>
Date: Wed, 13 Aug 2025 10:20:33 +0200
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
 <20250813075206.70114-3-enjuk@amazon.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250813075206.70114-3-enjuk@amazon.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next 2/2] igbvf: remove
 duplicated counter rx_long_byte_count from ethtool statistics
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
> rx_long_byte_count shows the value of the GORC (Good Octets Received
> Count) register. However, the register value is already shown as
> rx_bytes and they always show the same value.
> 
> Remove rx_long_byte_count as the Intel ethernet driver e1000e did in
> commit 0a939912cf9c ("e1000e: cleanup redundant statistics counter").
> 
> Tested on Intel Corporation I350 Gigabit Network Connection.
> 
> Tested-by: Kohei Enju <enjuk@amazon.com>
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/igbvf/ethtool.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/ethernet/intel/igbvf/ethtool.c
> index c6defc495f13..9c08ebfad804 100644
> --- a/drivers/net/ethernet/intel/igbvf/ethtool.c
> +++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
> @@ -36,7 +36,6 @@ static const struct igbvf_stats igbvf_gstrings_stats[] = {
>   	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },
>   	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
>   	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },
> -	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc) },
>   	{ "rx_csum_offload_good", IGBVF_STAT(hw_csum_good, zero_base) },
>   	{ "rx_csum_offload_errors", IGBVF_STAT(hw_csum_err, zero_base) },
>   	{ "rx_header_split", IGBVF_STAT(rx_hdr_split, zero_base) },

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul


PS: Should you resend, *redundant* instead of *duplicated* might better 
describe the removed counter.
