Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95489974A7C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 08:41:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38EB460A57;
	Wed, 11 Sep 2024 06:41:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xrsnrTXl-_6n; Wed, 11 Sep 2024 06:41:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88DE860A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726036865;
	bh=tkac7h9Q6eEGvjOc9IKtB7BZ+G9gUMhVsWg7CjMTrQQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3XW1iVA0IPlSi4oFODDhhElwYt52S6eWA75C9IxZO3/1bBIRBJceVQnxiXZPys0pL
	 rCL/Lpqzd9LWEwgQKeTjnKGwdhlaytcOttbtKAQ+QJpB+Pj23OlFHjRvJ3BvtJ7gXQ
	 jm94ajRZiVRa9ogyTBNnbiissmrgERQ1q0gVXPh8gkKAQ+pj6ul5i1WKKxs2MRGWpH
	 gWWTOFiBNsyZABQafotRLax8oVhk4pIux9voR6Sf6ecqjslnfvmbFPCKvbkrbrHZzR
	 RbADWON9sIfTgdosDH4rx+sqGHnAdbiJRB1M9L9kZ87foynhooRHK7t6KtynRHV75D
	 joAr0sN8Bg4Ow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88DE860A45;
	Wed, 11 Sep 2024 06:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CCC41BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 06:41:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57D5081027
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 06:41:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HXZaWjLWhdEt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 06:41:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 83D4980FA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83D4980FA9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 83D4980FA9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 06:41:01 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5ae914.dynamic.kabel-deutschland.de
 [95.90.233.20])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 006B961BA1847;
 Wed, 11 Sep 2024 08:40:45 +0200 (CEST)
Message-ID: <300e36d4-92f9-4732-992d-8d427a06272d@molgen.mpg.de>
Date: Wed, 11 Sep 2024 08:40:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
References: <20240910232934.675274-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240910232934.675274-1-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll's pins
 frequencies
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Arkadiusz,


Thank you for your patch. It’d be great if you used a more specific 
summary. Maybe:

ice: Allow full frequency range of 1 Hz–25 MHz for dpll pins

Some more nits below:

Am 11.09.24 um 01:29 schrieb Arkadiusz Kubalewski:
> Dpll's pins frequencies were hardcoded in the driver to the 1Hz/10MHz.

1.  Is “Dpll’s pins frequencies” a common term, or would “Dpll pin 
frequencies” also work?
2.  I’d use present tense: *are* hardcoded
3.  Remove *the*: to 1 Hz/10 MHz

> Fix it be allowing users to set full range of supported frequencies
> which is a range 1Hz-25MHz.

the range …

Where is the range documented? Please reference the source like the 
datasheet.

> Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 11 +++++------
>   1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 3a33e6b9b313..496bd588525b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -9,8 +9,7 @@
>   #include "ice_cgu_regs.h"
>   
>   static struct dpll_pin_frequency ice_cgu_pin_freq_common[] = {
> -	DPLL_PIN_FREQUENCY_1PPS,
> -	DPLL_PIN_FREQUENCY_10MHZ,
> +	DPLL_PIN_FREQUENCY_RANGE(1, 25000000),
>   };
>   
>   static struct dpll_pin_frequency ice_cgu_pin_freq_1_hz[] = {
> @@ -63,9 +62,9 @@ static const struct ice_cgu_pin_desc ice_e810t_sfp_cgu_outputs[] = {
>   	{ "PHY-CLK",	    ZL_OUT2, DPLL_PIN_TYPE_SYNCE_ETH_PORT, },
>   	{ "MAC-CLK",	    ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT, },
>   	{ "CVL-SDP21",	    ZL_OUT4, DPLL_PIN_TYPE_EXT,
> -		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
> +		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
>   	{ "CVL-SDP23",	    ZL_OUT5, DPLL_PIN_TYPE_EXT,
> -		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
> +		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
>   };
>   
>   static const struct ice_cgu_pin_desc ice_e810t_qsfp_cgu_outputs[] = {
> @@ -77,9 +76,9 @@ static const struct ice_cgu_pin_desc ice_e810t_qsfp_cgu_outputs[] = {
>   	{ "PHY2-CLK",	    ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
>   	{ "MAC-CLK",	    ZL_OUT4, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
>   	{ "CVL-SDP21",	    ZL_OUT5, DPLL_PIN_TYPE_EXT,
> -		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
> +		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
>   	{ "CVL-SDP23",	    ZL_OUT6, DPLL_PIN_TYPE_EXT,
> -		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
> +		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
>   };
>   
>   static const struct ice_cgu_pin_desc ice_e823_si_cgu_inputs[] = {

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
