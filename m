Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLMjD14/BGoqFgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 11:07:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 486105303D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 11:07:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DDBA41450;
	Wed, 13 May 2026 09:07:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w8RzSiP3PQmO; Wed, 13 May 2026 09:07:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C6264144E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778663259;
	bh=qN/W8ebLgutWz02+3OnJOFBU8z3ZOcJD73mdZlWwDCo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K6jKZYy4AjSi+QX+XU2Zdk1n2tCgn940/yUfCdKzqqJ8mQhW8xg1wEWN95ChMZ8vz
	 BAY+ury7ShOvV3SZ2N+vO8Rc1Y6dOw2QZwNykbyjcZrYgTvyTfE6aIC6RwogLFHPKc
	 VSYzK7k3XywsvhGNMEZ+L5tiqVSMKQG6uTuOBnTl5xni8CzLjUBwRRbkRRjC5bjl/0
	 i+Zd2l/3zRGF/invDR3H7neToom1PKsjwE0NDSTMJPnVGe02tn1tK1UJlKl00XgN1j
	 E8IZ/E3cbG/p2Bwqn+FOzyvdnwSYhbLrWbsR0c+JaYNsbt5IgZB/gL6UENBMfUvina
	 e6qbDWBQHOf6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C6264144E;
	Wed, 13 May 2026 09:07:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B12C4223
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 09:07:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9730781270
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 09:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ok2kawrReSTX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 09:07:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::332; helo=mail-wm1-x332.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 974128123D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 974128123D
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 974128123D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 09:07:36 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-488ba840146so58527135e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 02:07:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778663254; x=1779268054;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=qN/W8ebLgutWz02+3OnJOFBU8z3ZOcJD73mdZlWwDCo=;
 b=YafJ82jzqg3CEhIIYdkf5A/6iXZm5TWHpe2ffYN4CApVkOT+a9ecwAyUYFX5QK5PLO
 FogF8A9RQpMEBGt1CEmm4y6aDDQTMSOf1yfr4Dm9Cr3s0Z8BrucT5m6L0QpwR1mdr8KX
 eSLJeRuYgbghRXBKP2ZhwpTRQftp+LVXBDbSqZZ5c5waI1fuZUA2+t2ejbcO2EJ6IZgf
 odOKH7SLONzPsJzD5PwUr6b/wytxdPn4ZG//7Ub/9la9/VkpgtSzfDf0839kldUYJ8u4
 5jP6LVH/6FsdmmtDRNSU1G0kmdnALsfQgFtzle0U7ZFYKXXpWeJVv6pphT7pGkSAdcqk
 gO5w==
X-Forwarded-Encrypted: i=1;
 AFNElJ/AXaQUrS+soqmbGoNYIT3rXZk1FRrKj72aKeTz0Py2YOScs021Wm8HlCtXhU4pgQYhAxzIusQb5MCH32tKzUs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyHNrhDqIFfTsZJnqkJj0fwaaiNRpsH4QXKaQCeeyFMfvH68ejh
 LxjDQ/c2B2Ce9c511LaZYMiWOd0w9cHbUT4VgTUJpZTz35ZIBZgbKZOb
X-Gm-Gg: Acq92OHmXfORNBLAKxaG0yePgp6qhdKlpNHCc29sZGCXsWnb1GRJDUHXMQaUgYt614t
 uID3CJUGp3o5dOkag+rVTJtP2LN7fxuWPIetWxGwsODJeXelCSN455r6PpNdUqBylQoLiB2/UDK
 rqsakoTOvDGCKdaSg/2eqVTgmcz55FaUyu7UGTyU4wjrWp+Fez4Ojv65DWNvdhfQ3w2mmRXsDrz
 r0ejQDpqM2F34T+GAesxKS26oXH49OYvexZgP0DWX8fnry6c+6QOK0D1qljwv7n9LteLbm9hoO2
 1S6vn3rNontNXMqIGMjZoG7N3nOQ9NVYp6sC/RP8HJPI9ZxEnfNYhYQOQZaFEw33mxas/RLS2Uj
 uhpwR3v0U11p3MZAdtfvHszIyTrLZ44Q/mqlBo1Ukbo3qQjDsFou9MnwhIGrq/wKXeYCyuXLAkk
 FV5qQROyRFFeGMDd5YxmWHl5+3C878GsBY4ddWQ6cUdMn1gE5v5WcyGo9Qi6VV
X-Received: by 2002:a05:600c:3b84:b0:48a:8b02:ae91 with SMTP id
 5b1f17b1804b1-48fc9a0e266mr36229105e9.11.1778663254336; 
 Wed, 13 May 2026 02:07:34 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48fce06ca2csm30681655e9.8.2026.05.13.02.07.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2026 02:07:34 -0700 (PDT)
Date: Wed, 13 May 2026 10:07:32 +0100
From: David Laight <david.laight.linux@gmail.com>
To: John Ousterhout <ouster@cs.stanford.edu>
Cc: stable@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 netdev@vger.kernel.org, jacob.e.keller@intel.com
Message-ID: <20260513100732.499e3f49@pumpkin>
In-Reply-To: <20260512181953.1689-1-ouster@cs.stanford.edu>
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778663254; x=1779268054; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qN/W8ebLgutWz02+3OnJOFBU8z3ZOcJD73mdZlWwDCo=;
 b=MKs30MeoYJU+JLI+0wDHfgEMObXQ5HyuhpZylSUGFFTF48700dVSlPZW7XIewV9Q2I
 pYSuGYIsPXKx1ggmrvxFtUY/9b/UIO1YlxYsElWSA/LpD6RuauH0J3YXM1SyzaJjCj+l
 F+lwu0DQLckdkrRRCmxTDMSp+pPNLZSLjl00fDJ0tdRSwM3y9O1scw2DVUOGhyNw+Ljt
 nKXrOpJ+XOe3+OsKPyP0mtRVNKYZ8eaoccfVN3ydSsanWnIkL2PyL/tCXmdQSavJQqNY
 0VFlUiZwtrrFRwWwd888+OubcOUSjj2/zudjFde7cgDHqmi1uNXOy7b0JGarZH0K+zhd
 LLjA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=MKs30Meo
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption due
 to extraneous page flip
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
X-Rspamd-Queue-Id: 486105303D8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ouster@cs.stanford.edu,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,stanford.edu:email];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Tue, 12 May 2026 11:19:53 -0700
John Ousterhout <ouster@cs.stanford.edu> wrote:

> Consider the following sequence of events:
> * The bottom half of a buffer page is filled with data from
>   packet A. The page has a net reference count (reference count
>   - bias) of 1. The page is returned to the NIC, flipped to
>   use the top half.
> * Before the reference on the page is released, the NIC returns
>   the page with no data in it ('size' is zero in ice_clean_rx_irq).
>   In this case the bias does not get decremented. The page still
>   has a net reference count of 1, so it gets returned to the NIC.
>   However, ice_put_rx_mbuf flipped the page so that the bottom
>   half is active.
> * If the NIC stores another packet in the page before packet A
>   has released its reference, the data in packet A will be
>   overwritten with data from the new packet.
> * Unfortunately zero-length buffers occur frequently: they seem
>   to occur whenever a packet uses every available byte in a
>   buffer, ending precisely at the end of the buffer. When this
>   happens the NIC seems to generate an extra zero-length
>   buffer.
> The fix is for ice_put_rx_mbuf not to flip pages that have a
> size of 0.

How is this different from packet B (in the top half) being
freed before packet A (in the bottom half)?

> This patch applies directly to longterm stable versions 6.18.27
> and 6.12.86; it also seems relevant for 6.6.137 but would need
> modifcations for that version. I have not examined earlier
> versions.
> 
> Unfortunately there is no upstream commit id for this patch because
> the ICE driver has undergone a major revision (libeth refactor and
> pagepool conversion) that eliminated the buggy code. Thus the
> problem no longer exists in the main line.
> 
> Cc: stable@vger.kernel.org # 6.12+
> Signed-off-by: John Ousterhout <ouster@cs.stanford.edu>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 23 ++++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 51c459a3e722..081c7a7392b7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1215,6 +1215,13 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>  		xdp_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
>  
>  	while (idx != ntc) {
> +		union ice_32b_rx_flex_desc *rx_desc;
> +		unsigned int size;
> +
> +		rx_desc = ICE_RX_DESC(rx_ring, idx);
> +		size = le16_to_cpu(rx_desc->wb.pkt_len) &
> +		       ICE_RX_FLX_DESC_PKT_LEN_M;
> +

Looks like you only need to calculate 'size' for the !ICE_XDP_CONSUMED path.
You could also use the (likely cheaper) test for zero:
		if (!(rx_desc->wb.pkt_len & cpu_to_le16(ICE_RX_FLX_DESC_PKT_LEN_M))

-- David

>  		buf = &rx_ring->rx_buf[idx];
>  		if (++idx == cnt)
>  			idx = 0;
> @@ -1224,10 +1231,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>  		 * To do this, only adjust pagecnt_bias for fragments up to
>  		 * the total remaining after the XDP program has run.
>  		 */
> -		if (verdict != ICE_XDP_CONSUMED)
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -		else if (i++ <= xdp_frags)
> +		if (verdict != ICE_XDP_CONSUMED) {
> +			/* Don't "flip" the page if size is 0: in this case
> +			 * the data in the current half will not be used so
> +			 * it's OK to reuse that half. And, since the bias
> +			 * didn't get decremented for this half, the page can
> +			 * be returned to the NIC even if the other half is
> +			 * still in use, so flipping the page could cause
> +			 * live packet data to be overwritten.
> +			 */
> +			if (size != 0)
> +				ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> +		} else if (i++ <= xdp_frags) {
>  			buf->pagecnt_bias++;
> +		}
>  
>  		ice_put_rx_buf(rx_ring, buf);
>  	}

