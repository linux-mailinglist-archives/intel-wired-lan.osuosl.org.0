Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WANiGh+632mOYQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 18:17:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCFB406516
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 18:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B698685311;
	Wed, 15 Apr 2026 16:17:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HzKZHF9CkMiQ; Wed, 15 Apr 2026 16:17:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2707E8530F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776269849;
	bh=OuXxctMtyNo02fkMsbc2VQF2aWvPAE1tCryv+34LPQw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OGa+ELsW2PX6w47c1BGowm2Fiti9j37qaTxSg/kzgNi+UpkmHWq22xUfigc560ybx
	 fdHPdZ+s7koLTwLnKTrr7Sd5pP2e3NrEs97+PCSnGgF9pOE5raF2U92N6N46kXgyIl
	 Bzh8QYEL7BkxLmVsJ50mcHZMivpuNK0eL7mkPfMjI+cdHqA5l89AnSb4kJxpV+gYAu
	 IfNb/ddT7oIPv9V/D4rTuf3/paF33Lr5dj8swJMwMpe8M5fLq8ms2CM69cMDvcxw0q
	 wPAaPIzLO3xNhrI7LA08fCEg6pLEn+zlRNGZs8JVLa1+y7gusdVYcq7QvXHMAia+MV
	 4lZpv5d9oCKwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2707E8530F;
	Wed, 15 Apr 2026 16:17:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D7E5F283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDB0B60E74
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q2Bi655jOL22 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 16:17:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2D69560702
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D69560702
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D69560702
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 16:17:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 21BAC43A00;
 Wed, 15 Apr 2026 16:17:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9425C19424;
 Wed, 15 Apr 2026 16:17:22 +0000 (UTC)
Date: Wed, 15 Apr 2026 17:17:20 +0100
From: Simon Horman <horms@kernel.org>
To: Michael Bommarito <michael.bommarito@gmail.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20260415161720.GN772670@horms.kernel.org>
References: <20260413182427.298513-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260413182427.298513-1-michael.bommarito@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776269845;
 bh=ObP4Q43FL+RVMu+5SHEP0abI1ltYtBb2y+YqFs2GNog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W+kJeeA4kRw6T6Xd5VUPhpj+GBA6M+PwTxrEsPI6gmd8rrwSgPfC2wqw3hPwG3Pox
 fzaxnFfveEjcbMGKJMZVYE8HdniTTwCAhpTIsaNNagQ8VVFqIJadE3BKtBm3KeRZj2
 zOB1yCfqRULFsaeBiQRktKEajgJXnASbWFqfLX1KSN2LZNH8frOAq8+JMOrINW1fbM
 sfBKq2fhACstl3pAZA+QYGETa2ywRCTBGgGLkFTwa/ZvdVfzlWpyIAFLukm1i2jA3b
 iuYSv9QmKvV5AIkF94KpBXTymzCdgJvaQJ9w/6GecXPgvYoopmNl3aRmHrEe6+NEq2
 yp4gE3oI6ATuA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W+kJeeA4
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbevf: fix use-after-free in
 VEPA multicast source pruning
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:michael.bommarito@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:michaelbommarito@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4CCFB406516
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 02:24:27PM -0400, Michael Bommarito wrote:
> ixgbevf_clean_rx_irq() prunes frames whose source MAC matches the VF's
> own address (VEPA multicast workaround) by freeing the skb and
> continuing to the next descriptor:
> 
>     dev_kfree_skb_irq(skb);
>     continue;
> 
> The skb pointer is declared outside the while loop and persists across
> iterations.  Because the continue skips the "skb = NULL" reset at the
> bottom of the loop, the next iteration enters the "else if (skb)" path
> and calls ixgbevf_add_rx_frag() on the freed skb, dereferencing
> skb_shinfo(skb)->nr_frags — a use-after-free in NAPI softirq context.
> 
> The sibling driver iavf already handles this correctly by nulling the
> pointer before continuing.  Apply the same pattern here.
> 
> I do not have ixgbevf hardware; the bug was found by static analysis
> (scan_drop_continue_loops.py + semgrep drop_continue_in_loop, multi-tool
> corroboration with the highest score in the scan).  The UAF was confirmed
> under KASAN by loading a test module that reproduces the exact code
> pattern (alloc skb, kfree_skb, then read skb_shinfo(skb)->nr_frags):
> 
>   BUG: KASAN: slab-use-after-free in ixgbevf_uaf_test_init+0x100/0x1000
>   Read of size 8 at addr 000000006163ae78 by task insmod/30
>   freed 208-byte region [000000006163adc0, 000000006163ae90)
> 
> QEMU emulates igb (82576) but not ixgbe (82599), and the igbvf VF
> driver does not include the VEPA source pruning path, so a full
> end-to-end reproduction with emulated hardware was not possible.
> 
> Fixes: bad17234ba70 ("ixgbevf: Change receive model to use double buffered page based receives")
> Cc: stable@vger.kernel.org
> Assisted-by: Claude:claude-opus-4-6
> Assisted-by: Codex:gpt-5-4
> Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>

Reviewed-by: Simon Horman <horms@kernel.org>

Sashiko flags a number of issues in the same function that
do not seem related to your patch.

I'd suggest looking over them if you are interested in
follow-up work in this area.

...
