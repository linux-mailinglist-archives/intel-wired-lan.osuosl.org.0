Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIzsLH36vGmd5AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:42:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDA12D6BBC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:42:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAE5181E06;
	Fri, 20 Mar 2026 07:42:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7dzq4eG_SRJL; Fri, 20 Mar 2026 07:42:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60EE481E0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773992571;
	bh=MshMtRZGT4p94HZtMOMgVziJMH9fBPmkrzXedqSzHHE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c3AGWk87WaevspiV8JZ9qomLuQP/n1Otl4gSCevOI164o28F5EUIBS5s4tkbZeKXY
	 esQX4ggIE65M/8rYYqtcaEeeik/Yc5yCUMlWrWrPRBs/vch5sJ5jrU+7PQkxqvNhSN
	 63+Tit7hn5O+1zBwFKaaCP3EIgUtTkzROD80rqUNLNQjzQTJKbtkq1tPcF2yW65/W7
	 REBkDz54fN/I88S62JD9Ad8HWEv3UXGIfXzhj5OHPrrtHMlkWBQRZELX0WZpQw+ziW
	 Yi1n9KnTfXMZIMKnEvp9bVh6PqkqMxWDp8YveEsLsU7yUaW0EUF/yIFmDPbFtbd8wp
	 2JIpL6ZWZhFaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60EE481E0D;
	Fri, 20 Mar 2026 07:42:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 580BC1B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D94B60FCE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:42:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UBmDTtp7tO9D for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 07:42:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 77D6C60F05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77D6C60F05
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77D6C60F05
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:42:49 +0000 (UTC)
Date: Fri, 20 Mar 2026 08:42:45 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, clrkwllms@kernel.org, rostedt@goodmis.org,
 linux-rt-devel@lists.linux.dev, sgzhang@google.com,
 boolli@google.com, stable@vger.kernel.org
Message-ID: <20260320074245.f8dPuv4j@linutronix.de>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
 <20260319211335.23236-3-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260319211335.23236-3-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1773992566;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MshMtRZGT4p94HZtMOMgVziJMH9fBPmkrzXedqSzHHE=;
 b=YIOJN0GfnmtovTSZTpcfroGQxeM66sH4Yrhdl5VvWOh9FQo4A7czDOMHHQohWcSBK7m3EP
 R8gV8i4mcq+sWBedgy9kV8liceIdoB91dmT2/axGJr90Jrq4HM/fvEcVlk2sAPCtOwmqXu
 dxeAeOQBbBtmmcNl5ATN1MP63yRgc/XdoTFIYJCRF76pdAY3g9+N0pU9HdHVOBrYTwAOoC
 R0EyuU/ONlLVqNLZCWSmugffS0I7rECLSfyn3mbeo9XotGS7gZA3z1RtmO2Gc+Bv5VEpE7
 nYUZxplpa5Y0odolF7hNasjFNxtNc/UOwkyHqgduL1txuGG6UgKe/dLAm7m60A==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1773992566;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MshMtRZGT4p94HZtMOMgVziJMH9fBPmkrzXedqSzHHE=;
 b=ElOMsQclM26S3Ox7+9FT1+gr1Xuy1uzdrOR2tkwl7bvcxy7j3TCN9R1jfYyQER4pH5rhWS
 4gecTzup0E+/A9CQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=YIOJN0Gf; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=ElOMsQcl
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] idpf: improve locking
 around idpf_vc_xn_push_free()
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3CDA12D6BBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-19 14:13:34 [-0700], Emil Tantilov wrote:
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 582e0c8e9dc0..fbd5a15b015c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -402,7 +402,9 @@ static void idpf_vc_xn_push_free(struct idpf_vc_xn_manager *vcxn_mngr,
>  				 struct idpf_vc_xn *xn)
>  {
>  	idpf_vc_xn_release_bufs(xn);
> +	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
>  	set_bit(xn->idx, vcxn_mngr->free_xn_bm);

If all of your bit manipulations happen under the same lock you could
replace atomic set_bit()/ clear_bit() with their non-atomic counter
parts __set_bit()/ __clear_bit().

The lockless alternative would be find_first_bit() +
test_and_set_bit() loop. Probably another atomic op for salt. Using the
__ is free with this change.

> +	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
>  }

Sebastian
