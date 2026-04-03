Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OoAKVt9z2mvwgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 10:42:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AE53923C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 10:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E533607CB;
	Fri,  3 Apr 2026 08:42:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U_jJAPDZxBqy; Fri,  3 Apr 2026 08:42:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 126216086A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775205720;
	bh=3g6IcMWKVUBoqLmwic0ACVsxjnrasv48ZxbOmX/qmgU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RqoL8xyiHoE94/4E4Bar/Zw5DpVwpM2dfbFZzdYxzBM2ki3W0up/+iyVrHoYeLOeD
	 3gz4Xp9CHKaKoHfMlqzFXgoeHtNFQf1xnt2B/aY6LDBXTyYbC7W4j7cffYq8oRLlUu
	 c1ERcbE974UiXu/8SEpLpCgOxWpjdq2HvfkyU7PPY1CfR92wfLHoO95Xm9IWpvmsBF
	 aQ1Cnq52aGucPcghm9v3Z9U6vLPEeh+65k3v6QZk2P7UWNBgfD1dqcpmApCi5Ez1cb
	 Vjk9+cKMTaLPJm0cMY4lzvY5zU9h+ulciDbTmzfgf0hRvezvtWBZ8vWF1dk2BGiBrN
	 kO6CnZ9i8wFeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 126216086A;
	Fri,  3 Apr 2026 08:42:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A3A822CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 08:41:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 854A7400E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 08:41:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id korQik0h80o1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 08:41:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC432400A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC432400A0
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC432400A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 08:41:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 033B64345B;
 Fri,  3 Apr 2026 08:41:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECA4EC4CEF7;
 Fri,  3 Apr 2026 08:41:55 +0000 (UTC)
Date: Fri, 3 Apr 2026 09:41:53 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260403084153.GA18306@horms.kernel.org>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-10-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327073046.134085-10-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775205716;
 bh=t4B5nxYfc/0Isd7sIgSmwbGveNKqQ2CZvNKcMjwldZo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aR8PIdc/0OYUWDHYLfzYOL7T+43v0LiELV1mJRUJFsno+S5We93x0eKxVC+dE5RJ9
 6RCEI0GiY/CQTNm/+8p65OJ11f8XQSrVHotYNBrecnRFs/qYFHn2cGeYk4/2UBs50s
 0Nc/ivsvphyiV7weLu/jnEQq3nMNqzXgE8cpkp1lB/QZN3zyv8h6k6WBoMesRkt91m
 z9hGLuPKOw2/7hE9ybpcbt1yoq+PSc98aGQi2MERu1SOen9pgBIOP/toxfmwQFbA+1
 kTiA1eTK9WvqcJOl57y63IkkyA71wjKttDSWyG5yk0bPffol8t/GUAhs3LzvcLcxc3
 oz44ZXBfHjY2A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=aR8PIdc/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: fix integer overflow
 and wrong bit position in ixgbe_validate_rtr()
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 98AE53923C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:30:44AM +0100, Aleksandr Loktionov wrote:
> Two bugs in the same loop in ixgbe_validate_rtr():

If these are bugs then they should have a Fixes tag.
If there is more than one bug, possibly split into two patches.
And if these are present in net, then probably they are iwl-net material.

OTOH, if they are not bugs, then please don't describe them as such.

> 
> 1. When extracting 3-bit traffic class values from the IXGBE_RTRUP2TC
>    register the shifted value was assigned directly to a u8, silently
>    truncating any bits above bit 7.  Mask with IXGBE_RTRUP2TC_UP_MASK
>    before the assignment so only the intended 3 bits are kept.
> 
> 2. When clearing an out-of-bounds entry the mask was always shifted by
>    the fixed constant IXGBE_RTRUP2TC_UP_SHIFT (== 3), regardless of
>    which loop iteration was being processed.  This means only the entry
>    at bit position 3 was ever cleared; entries at bit positions 0, 6, 9,
>    ..., 21 were left unreset.  Use i * IXGBE_RTRUP2TC_UP_SHIFT to target
>    the correct field for each iteration.

This describes the effect at the register level.
But I think it would be useful to describe the effect that
users will experience.

> 
> Also replace the hardcoded 0x7 literal with the IXGBE_RTRUP2TC_UP_MASK
> constant for consistency with other parts of the driver.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

This does seem ripe for use of FIELD_GET and FIELD_PREP.

But if these are bug fixes, then this minimalist approach looks good to me.


> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 9aec66c..53b82a5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -9798,11 +9798,12 @@ static void ixgbe_validate_rtr(struct ixgbe_adapter *adapter, u8 tc)
>  	rsave = reg;
>  
>  	for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
> -		u8 up2tc = reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT);
> +		u8 up2tc = IXGBE_RTRUP2TC_UP_MASK &
> +			   (reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT));
>  
>  		/* If up2tc is out of bounds default to zero */
>  		if (up2tc > tc)
> -			reg &= ~(0x7 << IXGBE_RTRUP2TC_UP_SHIFT);
> +			reg &= ~(IXGBE_RTRUP2TC_UP_MASK << (i * IXGBE_RTRUP2TC_UP_SHIFT));
>  	}
>  
>  	if (reg != rsave)
> -- 
> 2.52.0
> 
