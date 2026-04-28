Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CMXHsY68WlyewEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 00:55:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA3348CDBE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 00:55:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2F2040435;
	Tue, 28 Apr 2026 22:54:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_zIcmYT2DBk; Tue, 28 Apr 2026 22:54:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1B5E4047E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777416897;
	bh=Xjifj32lQV5b+bLCm2NY5OLnoNmHIUz/l7KlvEd3nhA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yN5/ZF4xqOf5ga6F05meRDurb+tjc2RYEOt0D64I/JpQQ3+fenbzQpTUHQrJg8XB7
	 lG4Mb8fRF/cEPKK5tZvrr/8jY7L6MBvSYYmmENKQ0iiw4pVYHPUSeZvyM1hbQLaXzn
	 pSNQAkULRxqNCGjjstX6V/u+DwQ6vXLwAb8+9y4mdqw1aPNz4DXQOuPnL48PuClPiv
	 3TPryfxMF3YDt4ZZMgqbHzvDvBSEUtzyroVp4bD4KPHmb+tX/Q9WvWbgggDAzJRHM3
	 bobzSULh+FbRTi0uumld/7Dfg1sNxFqlkGJ0j6oMsdnc62uOINn6XsI+HbNeyvPeXS
	 Cu/MFEy4JEeqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1B5E4047E;
	Tue, 28 Apr 2026 22:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 060FE231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D77F2409B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:59:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o4dbvTQTmpVT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 14:59:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=error27@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EEDC3409B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEDC3409B0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEDC3409B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:59:20 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-48984d29fe3so140205095e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:59:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777388359; x=1777993159;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Xjifj32lQV5b+bLCm2NY5OLnoNmHIUz/l7KlvEd3nhA=;
 b=Di0b4syhHl7Lv3uIGUx4eX3sK8AvB9j20WXIQ8GaQmn2s7xZq90/yKd/Cs4ljyygHG
 zQItEt4DtvP7B2f9cZSAMPUN+Z4kjHuuQSn928UU6qo0KuwIG4eEnk03U05hPSxqFXke
 KoV59EQZ7w3Ye1kEE9dcvaf8qE/2rHzWuSV8YUafHXMKFd/LTwXt8CoKJuDVjSm7U1jm
 n9UvTDCHJY5mP4dvQHsdMvNTqcyko/LjqMRGeWCQ6QmSln/L24VtI2A3oc3rJwTz714c
 DDoiPGRjKSCq+UI7CH/kOfYidPYl/QwBAY+16jw8ZX160neK7kkqu684b03syg3OeDWC
 AlIQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8JihgiOvGgBMT567mNlcau/5V1tLYHDLYtgEkSzgXJFT093ifAjPIedxkuJQ8PwrGYuLF2Bp8p4sbpDMT+T5c=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw54YB9WIB4hPn0qkk/PVPg3WxINS2QV57mah1wvwppOVhco2KW
 i5ArJSBfPJbT5spLJJvVrr3gucbTvtGFEouGQj3TK0vabi4QXstztZTF
X-Gm-Gg: AeBDieswlzYKsV/aABSBS1AvYRtloxsDF0s5qtdH0Tg+HTLE5mT1/SbLs3bqQaCN8Ii
 V1vZ+Fv2Acw8x9BAozZjMQDYzX/4bNHMcmM65icOcu2J/io4dO+r78D1Z/EVkOcXQjwr082Ngo8
 KgvKMRRN8vFIdOs74KiTJDj3jS3+tK0Qf7n3FnSeODMQFVhDPOflgrgdKH5UVWMyhkx5znO0L4V
 xaYqHWetGal3h/t248ya89e4xC3bNabwrwLyXmNQE2ClHQFgslphcsubZDN4znG00WCIRKxSI+m
 rUuKzqdYSywP11swcJaPz6M6tBsTWiG7VvHPyFFSCBcH/Pyws0Odaeb5Pl1vN5qazbq34B5KbTL
 KjzC6iKn1A17SPWORKR+m4Yw+yBqoWsabKMZzf34kLwXsGwZa/UIBkzM8BcEkJGjAjqAtuJvhNa
 1mbe1g2J+7b+pp9nTWqailY+WOalGT9w==
X-Received: by 2002:a05:600c:a315:b0:488:9e54:94c0 with SMTP id
 5b1f17b1804b1-48a77adc73dmr39426575e9.8.1777388358658; 
 Tue, 28 Apr 2026 07:59:18 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48a775ea85bsm31476575e9.6.2026.04.28.07.59.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 07:59:17 -0700 (PDT)
Date: Tue, 28 Apr 2026 17:59:13 +0300
From: Dan Carpenter <error27@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Jakub Raczynski <j.raczynski@samsung.com>, netdev@vger.kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <afDLQUjaQ4Zs_9D_@stanley.mountain>
References: <CGME20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931@eucas1p1.samsung.com>
 <20260428103653.3539239-1-j.raczynski@samsung.com>
 <ef61b770-ebf4-406a-90a0-8a49aba02aee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef61b770-ebf4-406a-90a0-8a49aba02aee@intel.com>
X-Mailman-Approved-At: Tue, 28 Apr 2026 22:54:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777388359; x=1777993159; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Xjifj32lQV5b+bLCm2NY5OLnoNmHIUz/l7KlvEd3nhA=;
 b=qcuXjbDFpBWHmQBMMtJJqMIfJc0ODHQMnbD0851txtSqxX3SyAA7yDlie87VQQZLUm
 J2So3kO7YDUOuUWI8cQpgLbiP+HmmIXRqd4qfYDMYS9bVthHHzR8Vb87dzhkfIP/iXmr
 A8HTT+C6IK22mZVYQ6iE0Wv2kU6CLkEDXy1SPCglipeV2e3WJlHBcHmmRf9zR4Px7iTW
 ZH0XuO0lXGYXir01JRXYNdJjAkOpDo4dmdWiRFHtfJNdVAeQvfbfi2omtAqT5UzPsn5Z
 MZT16GjELmkYm+RNf+ynkbKzm2H7uEN4l10a0CSIafMmhsfStph9STb8V/pob9yeTt2J
 6Vrw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=qcuXjbDF
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] net/intel: Replace manual
 array size calculation with ARRAY_SIZE
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
X-Rspamd-Queue-Id: ABA3348CDBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,samsung.com:email,intel.com:email];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:j.raczynski@samsung.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:kernel-janitors@vger.kernel.org,s:lists@lfdr.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[error27@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[error27@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

On Tue, Apr 28, 2026 at 04:06:48PM +0200, Przemek Kitszel wrote:
> On 4/28/26 12:36, Jakub Raczynski wrote:
> > There are still places in the code where manual calculation of array size
> > exist, but it is good to enforce usage of single macro through the whole
> > code as it makes code bit more readable.
> > While at it, beautify condition surrounding it by reversing check and remove
> > unnecessary casting.
> > 
> > Signed-off-by: Jakub Raczynski <j.raczynski@samsung.com>
> > Reviewed-by: Dan Carpenter <error27@gmail.com>
> 
> thank you,
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> (next time use "iwl-next" in the title, no need to repost just for that)
> 

These prefixes are a headache.  It seems like no big deal if you only
work on one subsystem, but if you're dealing with tree wide code then
we're dealing with 418 trees.

These days I have a script for net and net-next because they are a
high volume list and the original prefix subsystem.  But otherwise
it just automatically puts [PATCH next] if it's in linux-next or
[PATCH] if it's in Linus's tree.

These are all automatic on my end, right?  So it would be totally
possible to automate in the recieving side instead.

Although in this case, my script would net-next in the subject because
I had no idea that Intel was managing their own ethernet drivers...  It
used to be that wireless had their own tree and everything else went
through net.  So it's just seems like a in impossible task to keep track
of it all even if you are not a newbie.  :/

regards,
dan carpenter

