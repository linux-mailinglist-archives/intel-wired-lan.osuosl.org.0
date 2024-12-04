Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFE99E3DB3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 16:05:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A28E7842EC;
	Wed,  4 Dec 2024 15:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 907gxapum-61; Wed,  4 Dec 2024 15:05:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D3ED84293
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733324728;
	bh=5ZnMxaX4w+stg8SRWigJq/WdwL6dy6vnjpszAEsKOJY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dt/b19ur1tE/JhXmGVEKlrrs6A4fQbcLdd9W0UIVEWmIpuVdRiANt+iGoeRbhRZ/f
	 mh1Nx3E0WYtLSMzHS3bo7bWfxC6i7Dzo33swLVnLOjZ82jcdTl90d21n6ROosRZoXH
	 oW8XsY8fTK7OwbWaxVvryuVa6aNoLD+bPYs0uboHslmmNa9nl4cjxZA0FhyXd+2RwA
	 TDXHcAMTbGSPhzj099/atOvMfjuw9eLfMFpaF9Uexupqn/5oRU0Qs5jPYLjF0hmSqR
	 VgWScL4pptCa8t7XwjkhtBzguKAF/P7mfbveCueqMnsI5FIAD1HZlPAqVZkBNtFOIr
	 6CZPKXdSXLeIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D3ED84293;
	Wed,  4 Dec 2024 15:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 56B691DC8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 15:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4468984274
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 15:05:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r2fOKmjMLmIS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 15:05:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 977568425B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 977568425B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 977568425B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 15:05:24 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af1e1.dynamic.kabel-deutschland.de
 [95.90.241.225])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 34F6F61E64778;
 Wed, 04 Dec 2024 16:05:05 +0100 (CET)
Message-ID: <f684e517-19c5-4dd9-9de6-34aefe289552@molgen.mpg.de>
Date: Wed, 4 Dec 2024 16:05:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20241204150224.346606-1-mateusz.polchlopek@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241204150224.346606-1-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: move static_assert to
 declaration section
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

Dear Mateusz,


Thank you for the patch.

Am 04.12.24 um 16:02 schrieb Mateusz Polchlopek:
> static_assert() needs to be placed in the declaration section,
> so move it there in ice_cfg_tx_topo() function.
> 
> Current code causes following warnings on some gcc versions:

Please list the versions you know of.

> error: ISO C90 forbids mixed declarations and code
> [-Werror=declaration-after-statement]

The above could be in one line, as it’s pasted.

> Fixes: c188afdc3611 ("ice: fix memleak in ice_init_tx_topology()")
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ddp.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 69d5b1a28491..e885f84520ba 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -2388,6 +2388,8 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
>   	int status;
>   	u8 flags;
>   
> +	static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
> +
>   	if (!buf || !len)
>   		return -EINVAL;
>   
> @@ -2482,7 +2484,6 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
>   	}
>   
>   	/* Get the new topology buffer, reuse current topo copy mem */
> -	static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
>   	new_topo = topo;
>   	memcpy(new_topo, (u8 *)section + offset, size);

The diff looks good.


Kind regards,

Paul
