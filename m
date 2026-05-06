Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGVQBbAM+2mbVQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 11:41:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F824D8C3C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 11:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 611D240DEB;
	Wed,  6 May 2026 09:41:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JRXdTXxacaWO; Wed,  6 May 2026 09:40:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2B8D40DE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778060459;
	bh=3sQT2FfXZ9a1rTbGvEQSWacP8U0CUvSTZQ/TjI8giX0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fF4BtDIwNsYm86Gead7aRzxCTKy4TDrbO3oS5ooCOedSnFgWaukplhgKChviEMMYp
	 DAVlmKiz8B6P4TCTdZ6qB49EJfzN4EWH6n9J0SM3cu58aQjgB/4w/ek2BcJl2Wu8Ay
	 LqfbmOWNz5pW3TcOal4Gt66dCNjDv1kTKn5B2lTFOZMFqH2Yf7x8LoUqOQskOnddrp
	 PN4pLm4X37RPttk4HV17rcqbbXu+XOf8YOyQXe6E64t8aP7AEJJOuCdhePtsfyOPie
	 SMbajjcCapIoe84NaqTrK/fN4sX0jvK9kkaQNueRscYUVty7+u7Y64mEAfTDlK/uOf
	 qsC7oGihd0XWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2B8D40DE9;
	Wed,  6 May 2026 09:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E18BF317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 09:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C796860E02
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 09:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ntU-0U46tPKz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 09:40:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9F2860DF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9F2860DF7
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9F2860DF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 09:40:57 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-4891e86fabeso74607945e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 May 2026 02:40:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778060456; x=1778665256;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=3sQT2FfXZ9a1rTbGvEQSWacP8U0CUvSTZQ/TjI8giX0=;
 b=oYKevxSqdAx2q1og/l0XHLqH2tKcXP0EPwHDugMk9xzLfcGgsl+2jEgLy04UD9sRrg
 Qre13wCXDvhxnGSgZH9jVYQd0GuUFQguQ2g8wEB9WlL1nEg5OLXj2AjNJLmSWEKBFakj
 F0cG+5PaTO6279qmHCPzoj/RHAlc3PCzWIaer/gMZ62V7BJY5MhvNhRCpP6jW26IlKfY
 ORBxWHftRMeOwZYtvEMh+/QjelHrwD6U37X4JYhb+BN0ROCLnkStAftSq04ceqi9pEjW
 HD+vToQlGA0G83YcWjz0BQ9GzGG88EOk6zuqUgw5MjdB60VL9y3RDMTG6G3k3V0fcNuC
 bo7Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ+nuyxixU+uhP1wtxhywxjCJoM6l1KgnubQD1ZfCCBW4iDW0VRP9asqZkbrAjX8uFhkt8Q03gKy419N4vSSIjE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzztt8rC6m1mgUE7N2u6lWz1otlPbUEU7B2RcLjP/o7MvI+bDKL
 q7JSS6S8+r//R0qIZuqJ/xZ82t4kIi9t8X20Sat9HOsOLkbFd1IzUxn8
X-Gm-Gg: AeBDiesM28bT9dkOWqhE1tV7SZT+gSC6DH00F60RzUJXEfgPBTcvncitbGQ02SBeAMV
 nWfWqRKxWIy0rFpsxUgBAGPUWbzUCTL0MLljcwEBMTe0FfQwrG+wDjo6lSKqvVT1/csss+6j/gB
 QIUOMkHzeDHFjWRr8PqZ7M+ZFdlhCJad3K97p9ZTXOYi+u5ZwZ+EM7URkVylsPqwXPsBhHNmIoX
 5MqtBukilAH7HXIrSVZ4vuOPX9s3ogYVVhtQxoJO5vBTHtyIl0kA4qNu5kGE+ga8OGigbPGw6Jc
 kcV9nxoVL+JlSnJR9iMw72bkSxqbAmbuFsNvMGGNAIuLMF4gwRF6FJNqa2Cy9yAOdO8aBSNFp4C
 +Rma98PF7GIVpjPDsIijkqQ67ChLBK/iThTXxO7Y16yC2wFDC0jJLpTyRy9vaMhx7vgHDmWLC2O
 nLtY7rvQMr1uUgb/6hsdl599abxs9vtleuPAOsnFn6LoKvIlvCWD6sAyv4j7BCDKz5JerBmpFc/
 hTJmFA9Wqy39A==
X-Received: by 2002:a05:600c:a305:b0:48a:5970:2005 with SMTP id
 5b1f17b1804b1-48e51e08362mr30882515e9.2.1778060455466; 
 Wed, 06 May 2026 02:40:55 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48e530b2947sm12667845e9.4.2026.05.06.02.40.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2026 02:40:55 -0700 (PDT)
Date: Wed, 6 May 2026 10:40:53 +0100
From: David Laight <david.laight.linux@gmail.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: KhaiWenTan <khai.wen.tan@linux.intel.com>, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hong.aun.looi@intel.com,
 khai.wen.tan@intel.com
Message-ID: <20260506104053.7a4f5bf5@pumpkin>
In-Reply-To: <63b186e0-046d-496e-8ae4-d68cd5eb5817@linux.intel.com>
References: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
 <20260430154105.505739ac@pumpkin>
 <63b186e0-046d-496e-8ae4-d68cd5eb5817@linux.intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778060456; x=1778665256; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3sQT2FfXZ9a1rTbGvEQSWacP8U0CUvSTZQ/TjI8giX0=;
 b=J4VUM8cNO8Bit7qBtM8eu83zcVGSV47fFgB4hcja/nHAhohWZB7wZV26wwMOhpV9ui
 CVTktXxC1RonqWLiuM0FQqJbsmRvlgEMxIRn6mWNAhZkKShehIdzS8z4+5qQ2kWgon9i
 fIyD+IrCapPfVlj+Ie1XYvPZsRmOeAJjtTwM4UOHc/hYFh2sXZAFtd3oRKCuEbgKI4XU
 l3Iwu7hlc2WJLMplSOYy4Syww7pnO5SMivKkuzwR0DZMIumjwI8p5prPMZ8M6+ZJ1Myy
 0eemdtIN73nxGm43gEfd+DxeHC1oa+RxC832EoC+FirKzMAIA/e13YK1m/NdK5UyNq03
 vSJQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=J4VUM8cN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/3] igc: add support for
 forcing link speed without autonegotiation
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
X-Rspamd-Queue-Id: E7F824D8C3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:faizal.abdul.rahim@linux.intel.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

On Wed, 6 May 2026 14:21:59 +0800
"Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com> wrote:

> On 30/4/2026 10:41 pm, David Laight wrote:
> > On Tue, 28 Apr 2026 14:00:06 +0800
> > KhaiWenTan <khai.wen.tan@linux.intel.com> wrote:
> >   
> >> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> >>
> >> This series adds support for forcing 10/100 Mb/s link speed via ethtool
> >> when autonegotiation is disabled on the igc driver.  
> > 
> > I'll ask 'why' ?
> > 
> > In particular forcing half/full duplex has always been a very good way
> > of 'breaking' a network connection.
> > 
> > It really is much better to restrict the advertised link modes and let
> > the autodetect/autonegotiation logic in the phy/mac do its job.
> > 
> > About the only think I can think of is to force 10M HDX when connected
> > to a remote system that supports 10M/100M HDX.
> > In that case you need to send out single link test pulses, not the
> > burst used to identify 100M HDX, or the pattern encoded on the burst
> > used by autonegotiation.
> > But you need to got back to the mid 1990s to find such systems.
> > Anything that supports FDX will do autonegotiation.
> > 
> > 	David
> >   
> 
> There's a use case requested:
> 
> Profinet Certification tool reports that forcing a link speed without
> auto-negotiation is not working.
> Forcing the link speed is a critical feature for the industrial automation
> "fast-start" use case. When there is a connection lost, the system must
> come back up as fast as possible. In PROFINET, that means to force the
> speed and rejoin the controller loops. Without supporting forcing the speed
> to 100M in Foxville, the certification tool would not be able to certify
> the availability of this feature.
> 
> I'm hoping this context is enough to justify the need?

Is auto-negotiation of the 'low' speed actually that slow?
IIRC detecting 10G and above requires a lot of signal processing.
But 10/100 and hdx/fdx just uses the ANAR register value sent in the
link test pulses.
(IIRC 1G uses the ANAR pattern, but requires extra signal processing as well.
The higher speeds didn't exist when I was writing ethernet drivers.)

I've been on the 'wrong end' of hdx/fdx mismatches - you really don't
want to let people get there, it is terribly confusing.

There actually ought to be a way of setting the auto-negotiation
registers to 100M (HDX and/or FDX) and then transmitting as (say) 100M HDX
even before negotiation completes.
Then correcting hdx/fdx based on the received ANAR register.
Or, at least, sending out an ANAR that only contains what you are using.

The problem I always had was that the actual operating mode of the phy
wasn't in one of the standard registers.
So if you connected to a system that didn't do auto-negotiation the
phy would be using (say) 10M HDX, but the received ANAR register would
still contain a value from an earlier connection.
If the driver read that register from the phy it used the wrong duplex mode.
(The speed for 10/100 doesn't matter, the phy clocks the interface to the
mac at the right speed and the mac doesn't care.)

	David





