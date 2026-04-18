Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JU2H3R442lHHQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 14:26:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93523421150
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 14:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBDD682203;
	Sat, 18 Apr 2026 12:26:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TfZ9GDTej9AU; Sat, 18 Apr 2026 12:26:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A91182205
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776515185;
	bh=7fT+wGUr7PJlX1wWyBJFZOf92ux3V43314zx+zb0kPM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DzuP8ZEU7QGVxa4H08FUAOAAQfSGMW0tPjVF3RyKz2FA3nLGmWaIESSs2KdJgUR7w
	 8sAz+t/bN0WOAfznnGaIbVUu2P9GXJYy+amDiIlT4xfVmchszSiggHaXAgnhgd4XsO
	 uwbNt5P7ZDGHF41pJP+LG5xdKsFE8XU93DRfrRT+QSafv9Y1E4NRT/FBxAhbD8r5Wg
	 yWBXSjw9OOpe7guA11Deb1yqLlnK23JkiQjbEq0dK7KyghyMG3CebEa/CCFM35681c
	 eyWD4HjSFOrcuNVIfIBJ085y4viziAUzp3jm4GPD5sdyefT8ybzMPbIqsvB5sdgNZg
	 /B22DiEBPV5rA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A91182205;
	Sat, 18 Apr 2026 12:26:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 72C24347
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 12:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5BB4060D50
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 12:26:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwZ91nWiF1ez for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Apr 2026 12:26:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AD5B360E85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD5B360E85
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD5B360E85
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 12:26:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E11BD60138;
 Sat, 18 Apr 2026 12:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91DDEC19424;
 Sat, 18 Apr 2026 12:26:19 +0000 (UTC)
Date: Sat, 18 Apr 2026 13:26:16 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260418122616.GC280379@horms.kernel.org>
References: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
 <20260415142841.3222399-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415142841.3222399-6-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776515180;
 bh=HWqdLCoCTZqiCrLr9u4qrUUcnDgqwBoxhU21yZ6mtlI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ozWhwrOFH1J0gopSPh/j36j8gnog6t9LlP644uOsvC6YNbcK6BddYXLvld5NLJabP
 17R7bcOzeoBodoNVESMX7cDZV+j+/uyvU6CLCR8k6LQ+riyH17PUFzjK2lvpfPcrDb
 jdnJjvIkxij5xc0dFqo4Weyv0g/IbbfmrJ2u3AOF4Xor39+1KYm/AF0JwY2GdffUXU
 Zje7Tt4Z1GNUXdK0CWdeUdXIsppS5QOZ3Ybvbr1fDx5IxcD0JByjP2/ZwRymbuqS/V
 Kx/+imAe95ENuVisPa5DqwHimzd33gQ8iuq1/mX/+hUSs+/mwWiVh/+kthBqnUdCIz
 UKesces87sREA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ozWhwrOF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 5/6] ixgbe: fix ITR value
 overflow in adaptive interrupt throttling
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 93523421150
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 04:28:40PM +0200, Aleksandr Loktionov wrote:
> ixgbe_update_itr() packs a mode flag (IXGBE_ITR_ADAPTIVE_LATENCY,
> bit 7) and a usecs delay (bits [6:0]) into an unsigned int, then
> stores the combined value in ring_container->itr which is declared as
> u8.  Values above 0xFF wrap on truncation, corrupting both the delay
> and the mode flag on the next readback.
> 
> Keep the mode bit (IXGBE_ITR_ADAPTIVE_LATENCY) and the usec delay as
> separate operands in the final store expression.  Clamp only the usecs
> portion to [IXGBE_ITR_ADAPTIVE_MIN_USECS, IXGBE_ITR_ADAPTIVE_MAX_USECS]
> using clamp_val() so that:
>  - overflow cannot bleed into the mode bit (bit 7),
>  - the delay cannot exceed 126 us (IXGBE_ITR_ADAPTIVE_MAX_USECS),
>  - the delay cannot drop below 10 us (IXGBE_ITR_ADAPTIVE_MIN_USECS).
> 
> Fixes: b4ded8327fea ("ixgbe: Update adaptive ITR algorithm")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2 -> v3:
>  - Use clamp_val() instead of min_t() to also guard the lower bound
>    (IXGBE_ITR_ADAPTIVE_MIN_USECS); keep mode and delay as separate
>    operands until final store; use IXGBE_ITR_ADAPTIVE_MAX_USECS (126)
>    as upper bound instead of IXGBE_ITR_ADAPTIVE_LATENCY - 1 (127)
>    (Simon Horman).

FTR: I think the code would be easier to reason with if
mode and delay were kept separate during earlier calculation
of itr. But I also think that can be handled as a follow-up.
as this patch does improve things.

Reviewed-by: Simon Horman <horms@kernel.org>
