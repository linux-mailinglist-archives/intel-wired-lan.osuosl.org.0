Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MRdOyby3GnZYQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 15:39:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD0E3ECA3C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 15:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBC1984756;
	Mon, 13 Apr 2026 13:39:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ItErDGlp4-L0; Mon, 13 Apr 2026 13:39:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 555C78476B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776087586;
	bh=caQLH2eQA+cVj6L+jPl6I978k2jvHU4IalKwYY1AlgU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nSMna1mnFD2vlJsNjHZ0xj0SBlrSCoGxN0/I0Yh2H9kJ/iM3Z37Sg3GzWVkAEpOzq
	 uuyhkLQGGD3RMZFhQvZurOKlrurswdoEWcpQ4jeybH95W9KgS1rKGzzFMfbPzXTBMY
	 KlQuNUpUcvHdIotcYx16yCncE+Ryme+FwgZHrNw9Zi6pnR4bwnuAtVTxrgS9hXMl+u
	 IwQGfevy1o/vEUop6EIh+donWzdpxllzmrkIFrXUH5RkWdCrpGAbrty2Caxo8OC1ux
	 0JeKLrS7ysA0iFi+vaZbqB8F+rYnZBR7II/VHQ1urVGCBnrhi/JRqDgZXEb2aX2LKi
	 dgmI+er3lMq8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 555C78476B;
	Mon, 13 Apr 2026 13:39:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FEDD237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 13:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88A534039D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 13:39:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4s6QbVmhpB-s for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 13:39:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C7077400C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7077400C2
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7077400C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 13:39:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 55AF260172;
 Mon, 13 Apr 2026 13:39:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15330C2BCAF;
 Mon, 13 Apr 2026 13:39:40 +0000 (UTC)
Date: Mon, 13 Apr 2026 14:39:38 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260413133938.GO469338@kernel.org>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
 <20260408131154.2661818-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260408131154.2661818-6-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776087582;
 bh=0X3mZWOmxnCPoruGCJnthAxCGMk/6xAlSVH+ODrnXMU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PSCwuu5v+KZUBwaW+KFZWQ8FGHtXNfvmLmhpOWwIbY4daYzEdpafJN/VzbSqZcCoL
 E76fubZyK5z/NGghsczaofX5rDQ0F3a/w5vMD92sJDRva95AqHrHG4PhMwMx8Xg/kg
 fYq51iYvhFGj2b8HxWDTyadgD7eO3aerOPMBmu/GawBCZ4TZzLLihHnnVbwIOo3Aa0
 dEG44rBsRx8KWLx8pzFiOQ2gH9jUZb5taiTZatbS7R8XZp6foHwfEEQQKGtKqmi5R9
 koC05GjLDhALLEbF769DkfwRo2wA03Gv6FmhHL/FeCcaQQjpglMdhJQvvoSK8MNFSr
 zVFWhKWBFWIlg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PSCwuu5v
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 5/6] ixgbe: fix ITR value
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1CD0E3ECA3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 03:11:53PM +0200, Aleksandr Loktionov wrote:
> ixgbe_update_itr() packs a mode flag (IXGBE_ITR_ADAPTIVE_LATENCY,
> bit 7) and a usecs delay (bits [6:0]) into an unsigned int, then
> stores the combined value in ring_container->itr which is declared as
> u8.  Values above 0xFF wrap on truncation, corrupting both the delay
> and the mode flag on the next readback.
> 
> Separate the mode bits from the usecs sub-field; clamp only the usecs
> portion to [0, IXGBE_ITR_ADAPTIVE_LATENCY - 1] (= 0x7F) using min_t()
> so overflow cannot bleed into bit 7.
> 
> Fixes: b4ded8327fea ("ixgbe: Update adaptive ITR algorithm")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2:
>  - Add proper [N/M] numbering so patchwork tracks it as part of the set;
>    no code change.
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 210c7b9..9f3ae21 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2889,8 +2889,9 @@ static void ixgbe_update_itr(struct ixgbe_q_vector *q_vector,
>  	}
>  
>  clear_counts:
> -	/* write back value */
> -	ring_container->itr = itr;
> +	ring_container->itr = (itr & IXGBE_ITR_ADAPTIVE_LATENCY) |
> +		min_t(unsigned int, itr & ~IXGBE_ITR_ADAPTIVE_LATENCY,
> +		      IXGBE_ITR_ADAPTIVE_LATENCY - 1);

* It is not clear to me that the mode flag bit (IXGBE_ITR_ADAPTIVE_LATENCY)
  is always set in itr when reaching this code. But with this patch that
  bit will always be set in ring_container->itr.

* Perhaps no such case exists, but it's not clear to me how this handles a
  case where the usec delay has overflowed into the mode flag bit.

  As a hypothetical example, consider the case where the delay overflows to
  exactly 0x80.  The resulting delay is 0 (both with and without this
  patch).

  I would suggest an approach of keeping the delay and mode bits separate
  during calculation - in separate local variables - and only combining
  them when ring_container->itr is set.

  This may turn out to be more verbose. But I expect it is easier to reason
  with.

* Looking over the code, it looks like the maximum allowed udelay is
  IXGBE_ITR_ADAPTIVE_MAX_USECS (126) rather than
  IXGBE_ITR_ADAPTIVE_LATENCY - 1 (127).

* The calculation does not guard against delay values less
  than IXGBE_ITR_ADAPTIVE_MIN_USECS. Which looking over the code seems
  to be something that matters. (And which occurred in the hypothetical
  example above).

* As itr is an unsigned int, and IXGBE_ITR_ADAPTIVE_LATENCY - 1 is a
  compile time constant, I expect that min() is sufficient.
  IOW, I don't think min_t is needed here.

* It looks like using FIELD_PREP is appropriate to construct
  ring_container->itr. But that may be overkill if you end up with
  something like:

	ring_container->itr = mode | clamp(delay, IXGBE_ITR_ADAPTIVE_MAX_USECS,
					   IXGBE_ITR_ADAPTIVE_MIN_USECS);

>  
>  	/* next update should occur within next jiffy */
>  	ring_container->next_update = next_update + 1;
> -- 
> 2.52.0
