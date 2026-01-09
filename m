Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 275EFD0B577
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 17:45:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDB74408D3;
	Fri,  9 Jan 2026 16:45:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KYy8pl9KS1hP; Fri,  9 Jan 2026 16:45:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9F1C40894
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767977107;
	bh=KYFnK9M2AIQkRcKaK9Bzkhziz5Pcw9IZvYQQgIQcJrE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zq0MgX/Sft4jjDjOTOSF/WvkbE0XMTagUoBon9zJQz0MN9XIcH7PM3aP6mobMGaXu
	 up8+qw/iCXDKNaXb6LkfPp0PAkheyn1vguqQtv2cw9g010xmhmNHANkjiwYwfwCHzS
	 nPzNoBivXLM5EwikyujCMqyD4y4ZDK3nH9m5x66OXCpIGt4Vb1ZAXwHqSAFqt2RgrJ
	 Y6vHHypK5FjU+AgkNdVbbZG4ojFiMpT/eHiZ4VfQ7RlPZ8kSs4rieoJA8p/CaPYfFw
	 ooQVTEmUwt63bikLu5a+9ZaJuQLWqdHcohmAIa0C/Acu8bn+ZV6nikJfPVa3F/vIUv
	 5v11W01vIYSYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9F1C40894;
	Fri,  9 Jan 2026 16:45:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DBCF7278
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 16:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD60B83B69
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 16:45:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id faE-9pPBKcMm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 16:45:06 +0000 (UTC)
X-Greylist: delayed 1956 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 09 Jan 2026 16:45:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AB3B2833AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB3B2833AF
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b5; helo=out-181.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b5])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB3B2833AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 16:45:05 +0000 (UTC)
Message-ID: <ddd25fe0-a6a8-4ba9-8cb1-3f91ca562928@linux.dev>
Date: Fri, 9 Jan 2026 16:44:55 +0000
MIME-Version: 1.0
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20260109085339.49839-1-marcin.szycik@linux.intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20260109085339.49839-1-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1767977102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KYFnK9M2AIQkRcKaK9Bzkhziz5Pcw9IZvYQQgIQcJrE=;
 b=tQr+GUqEnapX9C1zO0lUW5erwG29kre6jbLHTyx2Yve3hPA0P7fr+QG8LCobaUq6803Hbv
 9MUPPp3zoFVtMM/lTSQB97z2ik8JD/kwZ63Icj/QogUhANTqGefeTOkTwFeimfBwSMHvBG
 WUobxEp3hsj/yh54jBYPcyLKEJR2IEI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=tQr+GUqE
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix setting RSS VSI hash for
 E830
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

On 09/01/2026 08:53, Marcin Szycik wrote:
> ice_set_rss_hfunc() performs a VSI update, in which it sets hashing
> function, leaving other VSI options unchanged. However, ::q_opt_flags is
> mistakenly set to the value of another field, instead of its original
> value, probably due to a typo. What happens next is hardware-dependent:
> 
> On E810, only the first bit is meaningful (see
> ICE_AQ_VSI_Q_OPT_PE_FLTR_EN) and can potentially end up in a different
> state than before VSI update.
> 
> On E830, some of the remaining bits are not reserved. Setting them
> to some unrelated values can cause the firmware to reject the update
> because of invalid settings, or worse - succeed.
> 
> Reproducer:
>    sudo ethtool -X $PF1 equal 8
> 
> Output in dmesg:
>    Failed to configure RSS hash for VSI 6, error -5
> 
> Fixes: 352e9bf23813 ("ice: enable symmetric-xor RSS for Toeplitz hash function")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index cf8ba5a85384..08268f1a03da 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -8038,7 +8038,7 @@ int ice_set_rss_hfunc(struct ice_vsi *vsi, u8 hfunc)
>   	ctx->info.q_opt_rss |=
>   		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hfunc);
>   	ctx->info.q_opt_tc = vsi->info.q_opt_tc;
> -	ctx->info.q_opt_flags = vsi->info.q_opt_rss;
> +	ctx->info.q_opt_flags = vsi->info.q_opt_flags;

The very same typo pattern is in ice_vc_handle_rss_cfg() in
ice/virt/rss.c

I believe both places have to be fixed.

>   
>   	err = ice_update_vsi(hw, vsi->idx, ctx, NULL);
>   	if (err) {

