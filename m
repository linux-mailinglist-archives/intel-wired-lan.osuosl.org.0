Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KG/aH+eeimniMQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 03:58:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CC9116919
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 03:58:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B58240D46;
	Tue, 10 Feb 2026 02:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8WdeVjzTFSYC; Tue, 10 Feb 2026 02:58:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85E1C40D52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770692324;
	bh=1BdGlTwEli3lugkkGzY2UmQ9sP2pwEoB5g3RrPsU/xk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tZpyqgaewGDxMQ49RBuQrccTePZg3fPk3dpJhLucVbCz6A7M3acTFisfeqCe5GHaL
	 rPioCQ1Tagx2c1yiStz9rbXUUlvnp9t2IYm8g05SPEs9tm3v0mh67LfTFSahsyvih+
	 BACb2GV100qtqTJuFCkZJFSHkDE2N/gjKiaFhtQY9whgJWYEonWopobkPTtBDLBb6h
	 5S4BGj6QHUzerTTU0ukD/IL5AfgwEHX9ca+ZD1XEjrN989wNgIQ1nfLV0vxmBme3pj
	 pIJV+shFqMWh7QSpOi7RV/J6PJ5LCbYJvAl1blQENvkMKg5xX7yL6D+TH6ohW1Vmw7
	 YDBJZGQIN5f/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85E1C40D52;
	Tue, 10 Feb 2026 02:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DAC45F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 02:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB96E40D4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 02:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Uvc8wL11tgk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 02:58:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132c; helo=mail-dy1-x132c.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F16340D44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F16340D44
Received: from mail-dy1-x132c.google.com (mail-dy1-x132c.google.com
 [IPv6:2607:f8b0:4864:20::132c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F16340D44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 02:58:40 +0000 (UTC)
Received: by mail-dy1-x132c.google.com with SMTP id
 5a478bee46e88-2ba6f43fb37so317885eec.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Feb 2026 18:58:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770692319; x=1771297119;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1BdGlTwEli3lugkkGzY2UmQ9sP2pwEoB5g3RrPsU/xk=;
 b=Y7uSnXCUJwhJQ8YGvsIzE4OL7Yu0A51xidmRT1JR/7VjF+yChVnI3kwmgOwdqzKJyi
 B6iytyi3c+bbsy9QooOvs3nKY1+Z7ic+CggJd0LBcCmsNrrImBhGqJqh5KJ6SHuuIVtE
 k11C/VYYbzSzkT2fqZ6WC+/m2L3I20Dljud9kcH49UcTpQxhCBHNMpNw6s5H1GSChlko
 LAZVg7GfujEfsk7MhOEgvdmyqMydML5k99QUSLW43SWPNrPqvt159nv3fPeJBnjpEJai
 UGz3/7QQYWAm7mhGy8J16nZ/fzDm736NkzSg1bHUsUoA/vp/ibjStR13zY9hFkXgB1m2
 9I8g==
X-Gm-Message-State: AOJu0Yz8GepIR5bPFTNsslfCdlIfHh6e02V+V/O4mm58ciNAtVERQuAr
 0KPpLFcu11sFyLI9UPJhTfL6tdrnhwBqLfKm5mjaBZCoFv/FxqeQBoJTgW2R8VST7xM=
X-Gm-Gg: AZuq6aJwNeCP4Tjr9G6NlQ7vRUo9Yk1uj6qfeLw4BQ0DV7YMa2TPJNqHO1lmetFZTMV
 a6C1QNhZTsNtIfqOyesUoGTLse7RM/HoEsxiQaHAEba+I8LG49MoTA0RyxX/IZTzCkOMOAx9DA8
 U6patfWwgUifoueUwkzPgHNpQr/lDWHELxIZ0co4qw4CtWpLlTejx7AY64F3WuFTGSit08yiTI7
 9K1X4AD0FFQ5p3IM20lqEla5VjuW475zPh1RZPczxef1SlWqkQTkJEnjmNm8dSdqXIiW7SWXzWR
 Ln3TDLSAjNw1ijLV8uJBwde+XShKJFeNtdd8upFc4ZXbGtkPCnSDykt2DjSJYTsgptX9qZJ4VEr
 N+WeISCEDXUTTqU+QU5D9Vcf4XWjyelmO0xKjwbi/Cg480sC+R2qqFmIDwvxL75kSUPaBcPCgEq
 A4xNoL7w8UYW13of52goMUynTbm+USA/VHS21zaCFzg0ZMHzz9P9Zw8TNqEkvvZli4SIuVr89V3
 fM=
X-Received: by 2002:a05:7301:1f0d:b0:2a4:3593:466d with SMTP id
 5a478bee46e88-2b85642ee82mr5949384eec.9.1770692319502; 
 Mon, 09 Feb 2026 18:58:39 -0800 (PST)
Received: from MacBook-Air-2.local (c-73-222-201-58.hsd1.ca.comcast.net.
 [73.222.201.58]) by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2b855af7806sm8719678eec.10.2026.02.09.18.58.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Feb 2026 18:58:37 -0800 (PST)
Date: Mon, 9 Feb 2026 18:58:35 -0800
From: Joe Damato <joe@dama.to>
To: Thomas Gleixner <tglx@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Message-ID: <aYqe20qJ9sKc30K3@MacBook-Air-2.local>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Thomas Gleixner <tglx@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org
References: <87v7g8zv2o.ffs@tglx>
 <aYpalNvTIiD4nym4@devvm20253.cco0.facebook.com>
 <87a4xhbk6a.ffs@tglx> <877bslbg2g.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877bslbg2g.ffs@tglx>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1770692319; x=1771297119;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1BdGlTwEli3lugkkGzY2UmQ9sP2pwEoB5g3RrPsU/xk=;
 b=jVukaqBhTehHvqVvm9ZrWqHcsWXQ0x+NAKZgOy+/0SQrAI74J2BpAg7npWkNrTBEco
 jLAZVL6RCNQMtqJuPNG4g527pqb2ydH5aiY+Z16X9sF275KoUaN2I0VUxXvkRFvSe4CR
 Vt5tOyJakgi7UB7QJhQbUkNR4XGH9gkjKA2Eo3eVPoIhAKCMpGp44YXC0Aon9Hnue78W
 9kfiakSt8uXHa6owGZIiej8C36whfFugJtxeFHhwL/GWwvxaDa39sCH7lUvJX7leuaZG
 zBGHe1cmppRJ+wWVW4JqLz6qocoYaKSk1mrczGSf1SRDXnI9AqPFbQV7BqinELZfWChR
 vDdA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=jVukaqBh
Subject: Re: [Intel-wired-lan] i40e: Fix preempt count leak in napi poll
 tracepoint
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[dama.to];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:tglx@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 99CC9116919
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 01:25:11AM +0100, Thomas Gleixner wrote:
> On Mon, Feb 09 2026 at 23:56, Thomas Gleixner wrote:
> > On Mon, Feb 09 2026 at 14:07, Joe Damato wrote:
> >
> >> On Sat, Feb 07, 2026 at 11:50:23AM +0100, Thomas Gleixner wrote:
> >>> Using get_cpu() in the tracepoint assignment causes an obvious preempt
> >>> count leak because nothing invokes put_cpu() to undo it:
> >>> 
> >>>   softirq: huh, entered softirq 3 NET_RX with preempt_count 00000100, exited with 00000101?
> >>> 
> >>> This clearly has seen a lot of testing in the last 3+ years...
> >>
> >> I'm the author who introduced the bug. FWIW, I did use it quite a bit when I
> >> had i40e devices.
> >
> > Right, but always with PREEMPT_NONE and no debug option which would
> > enforce PREEMPT_COUNT ...
> 
> Forgot to mention that's what is required before submitting patches
> according to Documentation/process/submit-checklist.rst

This is a very helpful reply, thanks!

> But who cares about documentation aside of the people who write it?

I've written a lot of documentation, too, but sometimes people just make
mistakes.

- Joe
