Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17547AA5AAE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 07:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7E8042556;
	Thu,  1 May 2025 05:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aIuYfiNCefCr; Thu,  1 May 2025 05:49:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4889A42430
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746078568;
	bh=m0z6MkOgBU+LT4W6B+sZ205E+19g+QaAfs+sF8KYmZQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Il+Rwh1PBcepmHHchtpBO7Yow/2W0yY6GQrlzSbnwPBJqaYrz/yrZWuVQGNTxk0oK
	 scwqS6flmezLRBXka8GSQntXEFjDoZhsZGiEohkYfkjgF+BvgDJNjbgO3capzzsR++
	 rhHRS7hFp2RJyZx2YxKJqAs1p+/5ee2eFHOkzv/QirJLERVWMesVDfaVREaNbuOmKX
	 rBx0n5nQh4bgyP6odvmLZn1aZIIVGR6Qok/GHC79tZMi2COYGvZezGliQ/SmKk15xi
	 06p7mHXmjVMrsHIQljleszAJlzRFCty8kJBI6zqRrYh0PyLPkMHJJjG1k7jfgGO5qS
	 cu0IftftPQKEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4889A42430;
	Thu,  1 May 2025 05:49:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DA58E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 05:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24C4F83D02
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 05:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RLsPeziISrxL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 05:49:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2BAD813E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2BAD813E7
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2BAD813E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 05:49:24 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aea87.dynamic.kabel-deutschland.de
 [95.90.234.135])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6F60F61E6478F;
 Thu, 01 May 2025 07:49:06 +0200 (CEST)
Message-ID: <6b4ddead-ab12-4dea-9b02-1943d6330c01@molgen.mpg.de>
Date: Thu, 1 May 2025 07:49:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>
References: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
 <20250430-kk-tspll-improvements-alignment-v3-15-ab8472e86204@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250430-kk-tspll-improvements-alignment-v3-15-ab8472e86204@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v3 15/15] ice: change default clock
 source for E825-C
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

Dear Jacob,


Thank you for the patch. For the summary, I suggest the more specific:

ice: Default to clock source TIME_REF for E825-C over TCXO

or

ice: E825-C: Default to clock source TIME_REF over TCXO

Am 01.05.25 um 00:51 schrieb Jacob Keller:
> The driver currently defaults to the internal oscillator as the clock
> source for E825-C hardware. While this clock source is labeled TCXO,
> indicating a temperature compensated oscillator, this is only true for some
> board designs. Many board designs have a less capable oscillator. The
> E825-C hardware may also have its clock source set to the TIME_REF pin.
> This pin is connected to the DPLL and is often a more stable clock source.
> The choice of the internal oscillator is not suitable for all systems,
> especially those which want to enable SyncE support.
> 
> There is currently no interface available for users to configure the clock
> source. Other variants of the E82x board have the clock source configured
> in the NVM, but E825-C lacks this capability, so different board designs
> cannot select a different default clock via firmware.
> 
> In most setups, the TIME_REF is a suitable default clock source.
> Additionally, we now fall back to the internal oscillator automatically if
> the TIME_REF clock source cannot be locked.
> 
> Change the default clock source for E825-C to TIME_REF. Longer term, a
> proper interface (perhaps through dpll subsystem?) to introspect and
> configure the clock source should be designed.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index e5099a3ccb854424f98c5fb1524f49bde1ca4534..bfa3f58c1104def9954073501012bb58a13e8821 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2302,7 +2302,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
>   		info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
>   	} else {
>   		info->clk_freq = ICE_TSPLL_FREQ_156_250;
> -		info->clk_src = ICE_CLK_SRC_TCXO;
> +		info->clk_src = ICE_CLK_SRC_TIME_REF;
>   	}
>   
>   	if (info->clk_freq < NUM_ICE_TSPLL_FREQ) {

As there are now Linux kernels configured with different clock sources, 
and there is apparently no way to introspect it from a running system, 
does it make sense to log it?


Kind regards,

Paul

