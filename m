Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEuvF1/biWndCgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 14:04:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAAF10F615
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 14:04:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D90D831DB;
	Mon,  9 Feb 2026 11:48:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fUjqEAES0mBx; Mon,  9 Feb 2026 11:48:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B15C8832FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770637724;
	bh=bii6nDpRq3u0mpk5uwFaoKraWGApqndaiRM8N5c949k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dBWmvce2/9b1J5GC5NYIeu9JuTARl+Rnamd4n/nZclAJuKf84p5KL/yfwCcmthFEv
	 KA62o40qv/tUEDXC1xweRjUzJJ4y7j9o8eLHjo2YBBd9Rl0ZucjdMQtRiUH153u+Hw
	 5bcUGLk2xlZ9S/T7oQ8fQ9poEzJVz9jIm8KtIYpM7Z1M46811TqluQnwUA4llPEXTn
	 s0Uorgk70y97qPouBKHQGFZqS54Zg6CrT5WPyGPRrspZPUmWZ4Y64gM/OziiNQkZhX
	 EDirlzC/IwlYSSaiRdtwE18CrwcqZNF7ZRzhnw3ZHWjYHJS3ouSQioPZuNnE0r4Cl/
	 gLF78kNKr/Ekw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B15C8832FF;
	Mon,  9 Feb 2026 11:48:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B6C50219
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 11:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A791C40109
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 11:48:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id beJpmqMHwuTo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Feb 2026 11:48:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DC2E54005C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC2E54005C
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC2E54005C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 11:48:41 +0000 (UTC)
Date: Mon, 9 Feb 2026 12:48:36 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
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
Message-ID: <20260209114836.GPU-vnnh@linutronix.de>
References: <6a0f4cbb-e8b3-4f0e-b7f1-7f9ca5cba97d@linux.dev>
 <20260205145104.iWinkXHv@linutronix.de>
 <66925f09-ef9f-4401-baec-7d4c82a68ce3@linux.dev>
 <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
 <willemdebruijn.kernel.459b2672b1e7@gmail.com>
 <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
 <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
 <20260209090621.GiZqTiMJ@linutronix.de>
 <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1770637718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bii6nDpRq3u0mpk5uwFaoKraWGApqndaiRM8N5c949k=;
 b=A31THiiXz/ZEIBWBv9USPdzhGFjS+SGL92Q7iViSw2762PATFFUy6ZZgX3AxSH4CAXs/DF
 9EEk+SyCQZzPKjl9g2IIGUxwQyGQP3EZIyhixke96C998lAB8bo0rUPRh35UImFZokyOHI
 qKEWWe32YXtrlsFKkyKNskEvQI3UwxOgactbVBQzJHknxz99jxc1I30DZkaJWyJ1RVMtRS
 s44DgJou9Kx/YRZSO5O2sENh10/dAVxGadEIaTz+lJ1fS9LCB7Wzw+NMOrzgaIpNgDTURF
 TKdTCVSdlfeJWzCWJwFNQbqKNHtSXLe8Bii6uBJIAUwM8JGIdvLeTxj6+z9/oQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1770637718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bii6nDpRq3u0mpk5uwFaoKraWGApqndaiRM8N5c949k=;
 b=l0fcvTmRCFEA7JLnK8XN1VpILVOQ5rHWlrEEm4fFMfqcV8w9osP7VJYir6sXCGjcsLC+8l
 +fLT7xoD74c8vIDQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=A31THiiX; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=l0fcvTmR
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vadim.fedorenko@linux.dev,m:willemdebruijn.kernel@gmail.com,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,google.com,kernel.org,redhat.com,davemloft.net,intel.com,linutronix.de,molgen.mpg.de,vger.kernel.org,lunn.ch,lists.osuosl.org];
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9BAAF10F615
X-Rspamd-Action: no action

On 2026-02-09 10:43:55 [+0000], Vadim Fedorenko wrote:
> On 09/02/2026 09:06, Sebastian Andrzej Siewior wrote:
> > On 2026-02-08 11:25:40 [-0500], Willem de Bruijn wrote:
> > > > > > But it's more like a question to maintainers whether it is acce=
ptable
> > > > > > way of "fixing" drivers or it's no-go solution
> > > > >=20
> > > > > Requiring OPT_TSONLY unless CAP_NET_RAW would break legacy users.
> > > >=20
> > > > Well, they are kinda broken already. Without OPT_TSONLY and CAP_NET=
_RAW all TX
> > > > timestamps are silently dropped.
> > >=20
> > > Are you referring to sysctl_tstamp_allow_data?
> > >=20
> > > That is enabled by default.
> >=20
> > Yes. If so, then we don't need the check below which requires
> > sk_callback_lock.
> >=20
> > Are SIOCSHWTSTAMP the legacy users or the ones which do not set
> > OPT_TSONLY?
> >=20
> > I would suggest to move the CAP_NET_RAW check to the point where
> > timestamping is getting enabled.
> > Also if ndo_hwtstamp_set is the preferred method of getting things done,
> > I could check how many old ones are can be easily converted=E2=80=A6
>=20
> Looks like you are mixing things. SIOCSHWTSTAMP/ndo_hwtstamp_set are HW
> configuration calls while OPT_TSONLY is socket option, which is setup via
> setsockopt, you can find points searching for
> SOF_TIMESTAMPING_OPT_TSONLY in the sources, basically
> sock_set_timestamping() is the function to check

Yeah, but what is the legacy user here? If you enable HW-timestamps but
never set OPT_TSONLY and the sysctl is also 0 then you reply on the
CAP_NET_RAW later on. Right?

I just try to justify the CAP_NET_RAW check and if it is required to
move it earlier (where HW timestamps are enabled). And if the sysctl
check is enough then maybe it is not needed.
=20
> > > > To receive these timestamps users have to get
> > > > CAP_NET_RAW permission, and it will work with the updated logic as =
well...

Sebastian
