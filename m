Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AzvMWGuhGk14QMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 15:51:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B9BF440B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 15:51:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07230411DE;
	Thu,  5 Feb 2026 14:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KAKsovGsjwPZ; Thu,  5 Feb 2026 14:51:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B7FB40BF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770303070;
	bh=+XoniR1si/Fc1Mse1sltdw+xLs5P1HKQG4eFrinu7Jk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QZjVqtWRCWafAiA57MjOmY5hHItuN7F4P377HfRotsX6iZR86km0HqTwLyavvXbnP
	 KJjCQuEu8Z/h1PsL6KSjHrQqYmS07Bhrwrp7fOgNShgiPifvHmrd+H32cgsrQbpreJ
	 TPi/C4otsDAVGzfEruwPjNq7DZzdAMpIy2DGLUkVIOH2jC5XtmbLY9M4xyARJlWok/
	 hni73tLSXkLKEjR0wQgOIwuSc4BvQ/5KJB3u/j73Omj8DqK3K+7V/7lh80sgTgcBqn
	 QiHw2B8OrY0UqOn+dXZTZPycZu5JuniUGfBI4XP0zGGvSwWBeZHVUimf0dp5j0+P2P
	 61yYBnZw0yfCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B7FB40BF2;
	Thu,  5 Feb 2026 14:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 97095117
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 14:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78F6740BE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 14:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 31Oiyd1DOuxA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 14:51:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B984440BF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B984440BF2
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B984440BF2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 14:51:08 +0000 (UTC)
Date: Thu, 5 Feb 2026 15:51:04 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Message-ID: <20260205145104.iWinkXHv@linutronix.de>
References: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
 <IA3PR11MB898652699383BA265C5747A5E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260205100347.ssTBDAI_@linutronix.de>
 <IA3PR11MB89865B46DCBEB496BE28703BE599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <6a0f4cbb-e8b3-4f0e-b7f1-7f9ca5cba97d@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <6a0f4cbb-e8b3-4f0e-b7f1-7f9ca5cba97d@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1770303066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+XoniR1si/Fc1Mse1sltdw+xLs5P1HKQG4eFrinu7Jk=;
 b=hxRSq51++0xlBWxa+vAr3WU6zi1Cx2N1v11kBsREHr333phA4SBWpw/pi7pLn6UKlRydp4
 /UJ/uthoIywH2LzEbe1IL0qirDEQxPrd0w0HxPrggonk5xRldfIZWn+l0BmbKU0qvKFDwa
 6FB4w4LFBBROkw0UTDRT7xa9KYCHMscj66Q+IejM5jXOaxOTk2Tte6UvTjOa5SOckfTKFf
 RNbzg4M619l37cPv+/z4sEhXmoUm0YZ64Nz4Uijfl+xJw2AX+3YyujPMyAoaT2/vnIdEAG
 GSiQYtXbv2ybfSdleBvReBWyH9lbTUwVwm2CkHHlcY6XyqF4X0Si0JLPUpP4Ew==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1770303066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+XoniR1si/Fc1Mse1sltdw+xLs5P1HKQG4eFrinu7Jk=;
 b=YWDckvJak0H7GkqEAg1T3ok8Jm0bZmUK2IYfQB2/LYPLzqTjhEUOuhLccbijxJnZWQRSo8
 vZfKl5/Vfs7bDrCw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=hxRSq51+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=YWDckvJa
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vadim.fedorenko@linux.dev,m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[intel.com,linutronix.de,molgen.mpg.de,vger.kernel.org,gmail.com,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F2B9BF440B
X-Rspamd-Action: no action

On 2026-02-05 11:56:44 [+0000], Vadim Fedorenko wrote:
> On 05/02/2026 10:37, Loktionov, Aleksandr wrote:
> > spin_lock_irqsave(&wq_head->lock, flags);  <- RT mutex can sleep
>=20
> Hmm... that actually means we have some drivers broken for RT kernels if
> they are processing TX timestamps within a single irq vector:
> - hisilicon/hns3
> - intel/i40e (and ice probably)
> - marvell/mvpp2
>=20
> For igb/igc/i40e it's still OK to process TX timestamps directly in
> MSI-X configuration, as ring processing has separate vector, right?

The statement made above is not accurate. Each and every driver does
request_irq() and here on PREEMPT_RT you can freely acquire spinlock_t.

But !RT looks problematic=E2=80=A6

__skb_tstamp_tx() invokes skb_may_tx_timestamp() which should exit early
most of the time due to the passed bool (which is true) or
sysctl_tstamp_allow_data which is true. However, should both be false
then it tries to
	read_lock_bh(&sk->sk_callback_lock);

where lockdep will complain because this lock is now acquired with
disabled interrupts.

The function will attempt do free the fresh/ cloned skb in error case
via kfree_skb(). Since it is fresh skb, sk_buff::destructor is NULL and
the warning in skb_release_head_state() won't trigger.

So the only thing that bothers me is the read_lock_bh() in
skb_may_tx_timestamp() which deadlocks if the socket is write-locked on
the same CPU.

> But in general skb_tstamp_tx should be moved to BH processing (NAPI poll
> callback).

Sebastian
