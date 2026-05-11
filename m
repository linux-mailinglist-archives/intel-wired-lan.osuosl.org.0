Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJwsFGL7AWomnAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 17:53:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D645119D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 17:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34B6F41776;
	Mon, 11 May 2026 15:53:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fv4tfJITUXQI; Mon, 11 May 2026 15:53:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DF0641779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778514782;
	bh=rEvlzg1hZ+8Ut3bCvsy9A92KUl4m/27B8sKFGhxTwHU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vtFnCHHA6UoOYGYSBeh9PUY+bmALvhMYIAJB6vOXqwldhDkHfhMRR41iRipyqmAsS
	 h3ufHaeQuVp3Wl79bGnjHEkXNpIah1VmiyaDSiF8pF4u9GvDcZDfrHDrXdZvBB+Rcr
	 jA1AfdAdxwKqealFzWbdSHz6N2cBLCkxn7jI/pB6Es9STAK+8A2YsQRFwb2MONYR25
	 hQvA0O4715IncxsN3ZEICvNgz4+FvjCN9gsRONTr2VyzzTcIyKnE49v6LrOfgi03vY
	 l30M4+oQ6zm1VWcocof0KhhmHgBiFpRqsWwpKQ6hgvLTBWgMjCB3HhNA/gAr9xZ75n
	 Beae2E/cFXrmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DF0641779;
	Mon, 11 May 2026 15:53:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 351C9223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23EFC41774
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:53:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GiJZSrApYI6M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 15:52:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B1FD041735
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1FD041735
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1FD041735
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:52:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 91FD46001A;
 Mon, 11 May 2026 15:52:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 564B6C2BCB0;
 Mon, 11 May 2026 15:52:57 +0000 (UTC)
Date: Mon, 11 May 2026 16:52:54 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260511155254.GE27589@horms.kernel.org>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
 <20260508031226.3601800-9-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260508031226.3601800-9-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778514778;
 bh=GhFo6kYdkj/hhSAzd8kvExucZWLwHP9doK3My8Cloeg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pmvjtsWUnA/+Wv1/hk8OxOLxwwdOF9RUmJsi2iGmmWAaPI9Nd5LmcSisiKE9SPoeI
 pna86ZZKsllzgTpH+h5lJm5oJKUpk8q/kEUBioWdEbJf900S40jBi0iZ2mdi/hcMIC
 iyAuYCmiCWgXff1nPEpJ8u/3Cb1mjESKOGMJTY9TDQk3m9PPa5tAfYnGEzrXy2OOGJ
 NdSe8WbxlEuQrPy+JFd0i2q/+uAyN2p0g/JDI9CXPeeqxOVGqESkBD1NA7kVszyWdL
 hh81CwIJpt/HZ4l8nYj67L1QQQTBPJCOxa/1i12K13gPlk++zp8CsYFgag81B3civp
 EPAwtG83CYxyA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pmvjtsWU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 8/8] ixgbe: add
 IXGBE_ITR_ADAPTIVE_MASK_USECS constant
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
X-Rspamd-Queue-Id: A9D645119D3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,horms.kernel.org:mid,intel.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:12:26AM +0200, Aleksandr Loktionov wrote:
> From: Alexander Duyck <alexander.h.duyck@intel.com>
> 
> ixgbe_set_itr() clears the mode flag (IXGBE_ITR_ADAPTIVE_LATENCY, bit 7)
> with the open-coded complement expression ~IXGBE_ITR_ADAPTIVE_LATENCY.
> This is equivalent to keeping only bits [6:0], i.e. the usecs sub-field.
> 
> Add IXGBE_ITR_ADAPTIVE_MASK_USECS = IXGBE_ITR_ADAPTIVE_LATENCY - 1 =
> 0x7F to name this mask explicitly and replace the open-coded AND-NOT
> operation with the cleaner AND form.  The two expressions are
> arithmetically identical; the change improves readability.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ba7b013..be40655 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2959,7 +2959,7 @@ static void ixgbe_set_itr(struct ixgbe_q_vector *q_vector)
>  	new_itr = min(q_vector->rx.itr, q_vector->tx.itr);

FTR: The AI-generated review of this patch points out that
     the correct comparison above should mask the above values
     first. I did not look carefully, but given my recollection
     of this function that does make sense. And perhaps it is something
     that could be considered as a follow-up. (I am not suggesting
     expanding the scope of this patch or patch-set.)

>  
>  	/* Clear latency flag if set, shift into correct position */
> -	new_itr &= ~IXGBE_ITR_ADAPTIVE_LATENCY;
> +	new_itr &= IXGBE_ITR_ADAPTIVE_MASK_USECS;
>  	new_itr <<= 2;
>  
>  	if (new_itr != q_vector->itr) {
> -- 
> 2.52.0
> 
