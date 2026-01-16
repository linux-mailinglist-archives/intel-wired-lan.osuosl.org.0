Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D54D31AC4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 14:18:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30B124EC49;
	Fri, 16 Jan 2026 13:18:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aF3tFkP9VDUE; Fri, 16 Jan 2026 13:18:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A826B4EC4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768569484;
	bh=3BngD21F39cE1QOOqTtwuBxQINNw2rUhORgasdEzRdE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w8b3THsKVRqmOvAVECOK16vWfGtT0B4SFVagGaO8XXlxK4NM0Q/Tby3HCOh2Wwfks
	 MPDOwK10J0Kwsz9P7HZQZ5gfgc5cfBr07ic3iVGixWxn8ElmyZibTaTiv9fBS1rRCC
	 bW1qBdLX2MbiQvVYLbZ0Q5xYK7j4x7ZR5o4YW5OjIuTmg6ybhxB6AXxYA+qOQHvxey
	 /KFVFbd5JNr621t+kkuntydDtaRcJYZn8amNyPO+8EoYFQuu8gpI4IEx4UO/Jj/9ae
	 wglAdC7R4R2Pan2aYGwuHzJ9c63K3sb0o3i6TPM6hBizKwvd/InWSSyi4Q932NMjVE
	 V8DTmxxjNJIBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A826B4EC4F;
	Fri, 16 Jan 2026 13:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C1A41C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 13:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62C6D4EC4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 13:18:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Crr75PkGIbUU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 13:18:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 38E034EC46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38E034EC46
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38E034EC46
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 13:17:59 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7FCDB4C442FC79;
 Fri, 16 Jan 2026 14:17:31 +0100 (CET)
Message-ID: <c2a61a49-e84a-447e-a45a-61a44a5393d0@molgen.mpg.de>
Date: Fri, 16 Jan 2026 14:17:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 dan.carpenter@linaro.org, horms@kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ixgbe: e610: add missing
 endianness conversion
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

Dear Piotr,


Thank you for your patch.

Am 16.01.26 um 13:23 schrieb Piotr Kwapulinski:
> Fix a possible ACI issue on big-endian platforms.

Please elaborate, why this is needed, and `raw_desc[i]` needs to be 
converted.

For the summary/title, you could also be more specific. Something like:

 > ixgbe: e610: Convert ACI descriptor buffer(?) to little endian

> Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index c2f8189..f494e90 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>   
>   	/* Descriptor is written to specific registers */
>   	for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
> -		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
> +		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
> +				le32_to_cpu(raw_desc[i]));
>   
>   	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
>   	 * PF_HICR_EV
> @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>   	if ((hicr & IXGBE_PF_HICR_SV)) {
>   		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>   			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -			raw_desc[i] = raw_desc[i];
> +			raw_desc[i] = cpu_to_le32(raw_desc[i]);
>   		}
>   	}
>   
> @@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>   	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>   		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>   			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> -			raw_desc[i] = raw_desc[i];
> +			raw_desc[i] = cpu_to_le32(raw_desc[i]);
>   		}
>   	}


Kind regards,

Paul
