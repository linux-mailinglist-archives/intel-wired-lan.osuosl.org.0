Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F194B1DEED
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 23:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D677340714;
	Thu,  7 Aug 2025 21:35:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0-9T0cCYsOPa; Thu,  7 Aug 2025 21:35:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D85F40715
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754602525;
	bh=Nq9rAK01l4mF2RtgU99830yG0wKgJCIUYvDXKgqAyos=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xeGTOY4I2qQNpG5nWQRyWC1KQpRP7yMvwyMOkLZnwdfy5BdtuYke9WCT7uV8nixpT
	 nZtw6zLr7T5WcsJKjPuHHZgauAdS4UeMpewDgMrC1RVmiEi5uhj6AfJ56ARwhRmEY9
	 tkHMtsABdjOG03pP8IFF2GD1tgwa4dGxTc7sMsjBVA0aA4zk5xb6HtXlPWoeA1LJ+t
	 /0Ue2VAj++JU/NzAXw4dvIhDk61O2W+OmzOP6B6G7A6Y1LYX80CPfdoIxLMLTuhlTk
	 fuFvfHc1ZHo2pPjI0iKoVzUtLYyX9YVs9F3jjIVBloJwL3Q0u7kJFEMhajyZam/Znc
	 sWaK19lbB3dLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D85F40715;
	Thu,  7 Aug 2025 21:35:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 740C610A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 21:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7122680BB8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 21:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hNXZA31FHhXL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 21:35:22 +0000 (UTC)
X-Greylist: delayed 353 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 07 Aug 2025 21:35:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB71480B80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB71480B80
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB71480B80
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 21:35:21 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7c7.dynamic.kabel-deutschland.de
 [95.90.247.199])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C3D6460288276;
 Thu, 07 Aug 2025 23:29:10 +0200 (CEST)
Message-ID: <9e72404e-ab66-43dc-8065-1c7008178db6@molgen.mpg.de>
Date: Thu, 7 Aug 2025 23:29:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
Content-Language: en-US
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
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
> The E810 device has support for a "low latency" firmware interface to
> access and read the Tx timestamps. This interface does not use the standard
> Tx timestamp logic, due to the latency overhead of proxying sideband
> command requests over the firmware AdminQ.
> 
> The logic still makes use of the Tx timestamp tracking structure,
> ice_ptp_tx, as it uses the same "ready" bitmap to track which Tx
> timestamps.
> 
> Unfortunately, the ice_ptp_ts_irq() function does not check if the tracker
> is initialized before its first access. This results in NULL dereference or
> use-after-free bugs similar to the following:
> 
> [245977.278756] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [245977.278774] RIP: 0010:_find_first_bit+0x19/0x40
> [245977.278796] Call Trace:
> [245977.278809]  ? ice_misc_intr+0x364/0x380 [ice]
> 
> This can occur if a Tx timestamp interrupt races with the driver reset
> logic.

Do you have a reproducer?

> Fix this by only checking the in_use bitmap (and other fields) if the
> tracker is marked as initialized. The reset flow will clear the init field
> under lock before it tears the tracker down, thus preventing any
> use-after-free or NULL access.

Great commit message. Thank you for taking the time to write this down.

> Fixes: f9472aaabd1f ("ice: Process TSYN IRQ in a separate function")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 13 ++++++++-----
>   1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index e358eb1d719f..fb0f6365a6d6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2701,16 +2701,19 @@ irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
>   		 */
>   		if (hw->dev_caps.ts_dev_info.ts_ll_int_read) {
>   			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
> -			u8 idx;
> +			u8 idx, last;
>   
>   			if (!ice_pf_state_is_nominal(pf))
>   				return IRQ_HANDLED;
>   
>   			spin_lock(&tx->lock);
> -			idx = find_next_bit_wrap(tx->in_use, tx->len,
> -						 tx->last_ll_ts_idx_read + 1);
> -			if (idx != tx->len)
> -				ice_ptp_req_tx_single_tstamp(tx, idx);
> +			if (tx->init) {
> +				last = tx->last_ll_ts_idx_read + 1;
> +				idx = find_next_bit_wrap(tx->in_use, tx->len,
> +							 last);
> +				if (idx != tx->len)
> +					ice_ptp_req_tx_single_tstamp(tx, idx);
> +			}
>   			spin_unlock(&tx->lock);
>   
>   			return IRQ_HANDLED;
> 

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
