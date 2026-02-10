Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCYkKaUgi2lBQQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 13:12:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B03B11A945
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 13:12:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61A316106D;
	Tue, 10 Feb 2026 12:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MAXB6dVAV1Eq; Tue, 10 Feb 2026 12:12:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3EEC61080
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770725536;
	bh=tI8rachHCW1YrsKlENUN2dkik2zbYzc6d1Scl8Q1OUA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3jEoIBNw398r/xiCv4rx7lF9dEces2MeLI84ZUOKTZJy2fhk7tltFI2huKBOgDdv/
	 C4qsqXeLMiaCGITEULg8eK2v1qVk9LFGxtxjmqDrJKpHaGQDTYazoOT/hki4sYXax+
	 ave/OeUgt4C1OnW252mnfScMCY6uS+baMc8nLNKoMNvYnil16tC6hDd7hO1GzwRXJ+
	 CKvVfn0szmsNuQ3UWns4x6i9kV9BslEufBYbNbPBnKfYDbCHuIffE4ZpVMM/9hbJcX
	 7CernzDNp8iWxj9pYObDG35inTd0QS8VRZvUniNBEPGtsdhClXjVLEzUxji74Qi5EE
	 ruqIxxy0kdk6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3EEC61080;
	Tue, 10 Feb 2026 12:12:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 72C44219
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 12:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54DFC81DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 12:12:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kUQ2c1xgCWIp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 12:12:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 82EB581DCB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82EB581DCB
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 82EB581DCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 12:12:14 +0000 (UTC)
Date: Tue, 10 Feb 2026 13:12:07 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Willem de Bruijn <willemb@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20260210121207.9kLHroS0@linutronix.de>
References: <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
 <willemdebruijn.kernel.459b2672b1e7@gmail.com>
 <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
 <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
 <20260209090621.GiZqTiMJ@linutronix.de>
 <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
 <20260209114836.GPU-vnnh@linutronix.de>
 <78e2af2c-40e6-43f1-9471-42f350e69389@linux.dev>
 <willemdebruijn.kernel.2e6213a98660b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <willemdebruijn.kernel.2e6213a98660b@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1770725529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tI8rachHCW1YrsKlENUN2dkik2zbYzc6d1Scl8Q1OUA=;
 b=4cBXjqmEwfbym2UMalBRUx1DCMtvXGMDsMYZ5QihD2VOdj3vY9K2+Q5Hn4feWU3tHsNT3H
 6XQvAOjUmW61/f8pQGN0jxgsi/IrNPmrcUlnBLrnX4eSWqv23C2S+9J+sHbxEeqmhvgVRD
 XNjLA/LpqpJ8NILOhwHvgtPGpKaixCUIxcBfSxAT9p42zaoN99orCG5MoWo7rsR2BdCrYV
 xctRhc2Irim8DAKSgDA2B5PA/2Og/97rlrOyPRxI4tpsBGQiwGBqZ+Pqg1lzES9NasmLec
 1Mb2wVE7EcbLKoBysM9sDYPPSvFlKFq5cmP4h4j19zxkbnSAG5pthDp5gIHHHQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1770725529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tI8rachHCW1YrsKlENUN2dkik2zbYzc6d1Scl8Q1OUA=;
 b=h7rNchUaqkwxuTXB6Jov+Fu/QIRlWJljNkNAJuX5BAyfCpviifZupK2Dl9CuYm8nIOYQe+
 t8OpHnTnnOkMirAg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=4cBXjqmE; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=h7rNchUa
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:willemdebruijn.kernel@gmail.com,m:vadim.fedorenko@linux.dev,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[linux.dev,google.com,kernel.org,redhat.com,davemloft.net,intel.com,linutronix.de,molgen.mpg.de,vger.kernel.org,gmail.com,lunn.ch,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9B03B11A945
X-Rspamd-Action: no action

On 2026-02-09 07:46:01 [-0500], Willem de Bruijn wrote:
> > > Yeah, but what is the legacy user here? If you enable HW-timestamps but
> > > never set OPT_TSONLY and the sysctl is also 0 then you reply on the
> > > CAP_NET_RAW later on. Right?
> > 
> > Legacy users here means users of HW TX timestamps expecting full skb to 
> > be returned back with the TX timestamp. Legacy here means that skb will 
> > be returned with headers modified by stack, which is kind of exposure of
> > data, which requires CAP_NET_RAW...

Ah okay. I assumed the err-queue was the standard way of receiving
timestamps.

> > > I just try to justify the CAP_NET_RAW check and if it is required to
> > > move it earlier (where HW timestamps are enabled). And if the sysctl
> > > check is enough then maybe it is not needed.
> > 
> > Capabilities should not change during lifetime of the process, should be
> > fine to move. On the other, sysctl can be changed system-wide which may 
> > affect users.
> 
> Ignore the hardware configuration. That is entirely optional. Some
> devices will timestamp every packet.
> 
> The capability check here is per-socket, independent from the system
> hardware configuration.
> 
> I don't see how it could be moved.
> 
> Before OPT_TSONLY was introduced packets were always queued with their
> payload. The sysctl check was added to optionally disallow this. The
> check could arguably be moved earlier in the socket lifecycle and the
> decision cached in the socket. But then flipping the sysctl would not
> affect existing sockets, so that is a change in ABI behavior.

You could cache only the part under sk_callback_lock.
Any other suggestions?
The access from IRQ is quick and avoids any detours.
The alternative would be to move the whole routine into an aux_worker.
For every driver doing it from the IRQ handler.

Sebastian
