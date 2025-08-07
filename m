Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8988BB1DEEE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 23:40:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0683B4070F;
	Thu,  7 Aug 2025 21:40:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WDciTHBUjnGB; Thu,  7 Aug 2025 21:40:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6769940714
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754602825;
	bh=eY/JbdM33Nmf8Dzyj0quK1IVSM+ROy9ILN9aQwzCROQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9pDD0WFFsEeZm1JBu430AHYODoJNO7pjPK4+c6y+rdrxHYIWX7shWCyRGZIBGYKis
	 T2pwC9nF6o/7OS1YMHuavjjYLnvZU3seFyQMtV1tzBfh4JBbyfZnK3zvgrkbLmV16z
	 or7b8Qk+jOlYXGarKes3eDhEE2N3Tp5yUCPOwvbTgzXnNeTCX+VvKGe77wCteNsuKH
	 Ci/AdPj1xl72C3ewW9DoBdF5EfA0sL7VxrU2LDWIoqER58jNqeoqZSBwx1fSvgJR4B
	 SJhHwsyBYwxA00WyMmZClcqYf9zVZsv1JP/kZbT1rETyiWoVtaFTXZGFUHUuECJHKa
	 GpYPuqhsuhSpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6769940714;
	Thu,  7 Aug 2025 21:40:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 29C739CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 21:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1BB61402E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 21:40:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GgTBLfdffnu8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 21:40:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 05C7E4026C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05C7E4026C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05C7E4026C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 21:40:21 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7c7.dynamic.kabel-deutschland.de
 [95.90.247.199])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E5BF860288277;
 Thu, 07 Aug 2025 23:32:06 +0200 (CEST)
Message-ID: <7961b079-fb26-4541-b7d3-63bddd484e2a@molgen.mpg.de>
Date: Thu, 7 Aug 2025 23:32:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-2-730fe20bec11@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-2-730fe20bec11@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix NULL access of
 tx->in_use in ice_ll_ts_intr
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


Thank you for the patch.

Am 07.08.25 um 19:35 schrieb Jacob Keller:
> Recent versions of the E810 firmware have support for an extra interrupt to
> handle report of the "low latency" Tx timestamps coming from the
> specialized low latency firmware interface. Instead of polling the
> registers, software can wait until the low latency interrupt is fired.
> 
> This logic makes use of the Tx timestamp tracking structure, ice_ptp_tx, as
> it uses the same "ready" bitmap to track which Tx timestamps.

Is the last part “to track which Tx timestamps” complete?

> Unfortunately, the ice_ll_ts_intr() function does not check if the
> tracker is initialized before its first access. This results in NULL
> dereference or use-after-free bugs similar to the issues fixed in the
> ice_ptp_ts_irq() function.
> 
> Fix this by only checking the in_use bitmap (and other fields) if the
> tracker is marked as initialized. The reset flow will clear the init field
> under lock before it tears the tracker down, thus preventing any
> use-after-free or NULL access.
> 
> Fixes: 82e71b226e0e ("ice: Enable SW interrupt from FW for LL TS")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++++-----
>   1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 8e0b06c1e02b..7b002127e40d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3176,12 +3176,14 @@ static irqreturn_t ice_ll_ts_intr(int __always_unused irq, void *data)
>   	hw = &pf->hw;
>   	tx = &pf->ptp.port.tx;
>   	spin_lock_irqsave(&tx->lock, flags);
> -	ice_ptp_complete_tx_single_tstamp(tx);
> +	if (tx->init) {
> +		ice_ptp_complete_tx_single_tstamp(tx);
>   
> -	idx = find_next_bit_wrap(tx->in_use, tx->len,
> -				 tx->last_ll_ts_idx_read + 1);
> -	if (idx != tx->len)
> -		ice_ptp_req_tx_single_tstamp(tx, idx);
> +		idx = find_next_bit_wrap(tx->in_use, tx->len,
> +					 tx->last_ll_ts_idx_read + 1);
> +		if (idx != tx->len)
> +			ice_ptp_req_tx_single_tstamp(tx, idx);
> +	}
>   	spin_unlock_irqrestore(&tx->lock, flags);
>   
>   	val = GLINT_DYN_CTL_INTENA_M | GLINT_DYN_CTL_CLEARPBA_M |
> 

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
