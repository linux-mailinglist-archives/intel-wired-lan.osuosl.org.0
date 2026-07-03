Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wMfeNBOTR2rFbQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 12:46:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C99B1701646
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 12:46:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=7TJbi1+Q;
	dmarc=pass (policy=none) header.from=osuosl.org;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B8A540A82;
	Fri,  3 Jul 2026 10:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JzwhNkIPfKUP; Fri,  3 Jul 2026 10:46:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7F5240A8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783075600;
	bh=4epk5w1esZe4maLqLH3hcvb3jGEQbCU8XPkEVfv0wsQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=7TJbi1+Q/nQwuErg0hHXJ49eiYLrxO0gfu9AhYzJ/dkWW0iimlpEZZ9ALo3k3FPwM
	 jcn0nWuvDY3/BDQ0MoSgWYw66oL05Si/5ltt25/1tuxy75rAjCgfL2m40E/juPtNHg
	 SROacoCI8dvE22Finm/0c3Pc9R0vI+BNL9f4VxyMb6PcelqNEPOXXXG+BQJnsmTA2S
	 38XMyso3190htUjvLLJ/EaXnCqq+xqoKnUipEsK5UOdozAvsEIdKXLsdRF1UBhpRuv
	 0hqscj+3D2trdhHgtyhZqOnPVcLGrRlmOEm/++C5JxHPM9rlfJC4yU6jSx0xiwCiDs
	 MD1yScB+EhrXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7F5240A8F;
	Fri,  3 Jul 2026 10:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C3FC9316
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B609D40084
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:46:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ceT59IudH1Vq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2026 10:46:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 18EF1401C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18EF1401C2
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18EF1401C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:46:36 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 901153F974
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:46:33 +0000 (UTC)
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-c1280d28bf5so48967166b.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Jul 2026 03:46:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783075593; cv=none;
 d=google.com; s=arc-20260327;
 b=o4ToJBBVdjw/xmy8Ji1ur9YclYqaCQ3dIeGmXwGpXNjfidQb6gGzaDoyFLxtVk0Cnr
 LEBv4BnyDx4M3Dbq0SXxkBBdvtAVuUTMZviBMaFO0qu1rMo3nWK3X/AaPLx0QaQMUwhT
 NczA7EhKf1IqRt+jlA4yQVomRl94xYxazSAvH1ZkDZ3Su+BBX76fnAy9re4OT9gC5HiI
 6GeZmaFtqlxcrIcKt6DU4f9TF00zWY6miY+sPBvfjeTkFgyU8K9DDTs0GZkdK+Nef6OK
 WRQoILfsta4G0qARp/7QAwnqkyWVKNfYlxoPzQFhjQNonwVUL7yuPEyHd2yYB8YJZp3U
 Fr7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20260327; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=4epk5w1esZe4maLqLH3hcvb3jGEQbCU8XPkEVfv0wsQ=;
 fh=DUx+51XdVP3Hpz4AyrGWTIeQESPUBFd1XhFEuqaSZYY=;
 b=jhSIyERvt88kd5tWLBITfCvG9vtf3ps1+vuM5nvOAy9cEyPiWj4aRwJMEu/En3J+t/
 aB73vKUJIAqfmMIQDrVP9wJEG3593t8K3njUFBpupHgmYPUOY+dOGQ/iMMPhdkYrN6Gw
 hETCeLd+mrnLCvsBilh9XuJPf+4dRRO46OQan5t9CnVDT64Ss6dsChYJuiSkYFJgseEI
 nS/xqoPYpYtDsmMPn2WW0cL8sLlFEX0eFOh1IANg6J4UE6xATXEYYW6z1pHrZiCUF0Zq
 U9oBKYRXO+kAl5c/V+r5hcqy3VJfddkCM+19T1gEd2RI9TGGW1aw5JdXYQn1q3n0l8+i
 /4JQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783075593; x=1783680393;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4epk5w1esZe4maLqLH3hcvb3jGEQbCU8XPkEVfv0wsQ=;
 b=JBliGv0g+pnZq+9V3ZNyrDGXdkKYb7Dq70vdfIx8Ugw0Z8dLvnJCq3kWGHoMFkIBfF
 Au/AOeG88jyS0pkol2eH8iasV2tmn19l3N2KbemUucYTRT/rJreFItVN4YJ8Q702L5Ev
 iAtVlG2WRskOHfyWNH2NeJjiuEHwTD3jcmGF3GPSJFzH1Zi11aSF5UcUFwQbPBC6PvAl
 NUMzwP2y8x4WX5G4A1L0UXWZ7IC+rI3rQDsfab1vzQAJyaiM4YfR5d9qlvzwZVjRJ6+D
 DlSjGHVlk9RhAeUIi1hyJqM/ITOio7Vq5Qyv3pEDkB1w+PD1p/wkLbUaTeKOGQrPIjZy
 rJfw==
X-Forwarded-Encrypted: i=1;
 AHgh+RqlTpulhOo1a2ImNp5tffmSBc0QQrC5CdAZD8t0in+4OqRvh5OqsIHD/NDjbZ+pg6g9t6xaVdvpAyMDJ3vegH4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxlEmJ7CT4KP9otsWJvW5RA+9aVwBsM13x+vMuHxhFbLAVePGiI
 gctXBNuKS5BB6zf6bLHXBDEP3fK7n2kymzVczoQF3lPBE9+xYMqCzAaZqh2fRBXDpBse73l2Tbf
 pcx+KdPOfVI5Avwi9j3qAbfnzTf07XKSH0AGw3uJTFCgIxWWylK8SjmYWAhyT2gk73AW09JgU+Q
 XYtkD0238n8EonfwDbKd+dQy5p4pWNpl7fPKpmv1BvYllj0URDrxHbif2X5++QSQ==
X-Gm-Gg: AfdE7cm53LpbGNjorwVzkN02njN5Bt9Jkv3tST3/g3NMp4nxHKvVMZFEKLAuUtPe7iT
 mK/p5C4BT3jz2chGIxhoDsmnKAwwKz7X9E1F9ffM1UW2E81czq0hh+9k2nq5WMzBqc+yn/kBto6
 WRoNuBnOq2N+J2s6qSS1vKufsynBLAS9W+y/vKBauVOvLwRToMv3O1PWjrYuQZLle2dg==
X-Received: by 2002:a17:907:c205:b0:c12:15b5:876a with SMTP id
 a640c23a62f3a-c12a9efd3b2mr412864466b.17.1783075592940; 
 Fri, 03 Jul 2026 03:46:32 -0700 (PDT)
X-Received: by 2002:a17:907:c205:b0:c12:15b5:876a with SMTP id
 a640c23a62f3a-c12a9efd3b2mr412862966b.17.1783075592453; Fri, 03 Jul 2026
 03:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260617120753.1785565-1-robert.malz@canonical.com>
 <20260618152003.909400-1-horms@kernel.org>
 <CADcc-bydFL4KNDQEznStE41NFXuCey9S+kyXg0usbonwyWpiAQ@mail.gmail.com>
 <5658849b-0425-4132-ba32-5801e2907c60@intel.com>
 <CADcc-bwd2CcWJ1AFDm1GR1HBzo2OOh=Xr3moNS+-RVuai6yVBA@mail.gmail.com>
 <CADcc-bwC4FGQSGyRcnj2ZpGT5+0Q6mjQd-FTCB-mCmmwYrC8Qw@mail.gmail.com>
 <abe7fbc3-522c-4eb4-989d-21270f1ef2af@intel.com>
In-Reply-To: <abe7fbc3-522c-4eb4-989d-21270f1ef2af@intel.com>
Date: Fri, 3 Jul 2026 12:46:20 +0200
X-Gm-Features: AVVi8CdT0MhvGIVXGg5KjVEJtXlAzPLAX9gHi81brHAzWLdEyecittxMY28qi9o
Message-ID: <CADcc-bysA531q2Wh=TD_oFqxivLLdnCRNY5jy7mkZuO0cwJwvg@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1783075593;
 bh=4epk5w1esZe4maLqLH3hcvb3jGEQbCU8XPkEVfv0wsQ=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=T8LbvGFwjHKUSZxCdMDTOlvPDMI9r0rne2vIL9tly7fpiLKjrOKi92OrHB3+KG+dE
 0uiaz+eL6Cb/z9jhaQf6fzAugrz/aRfTMlcMwG+OQ+DINogjdOZMux1bYiucyARZq4
 JVhICpwCcZp4QsnO+eMsVBb46JcpgR6G+u0NQaETF5fORfSbV9Wt5HlTKpzfhV+5V5
 OmKDwBqJkyJxDdSyXx9eIDDDUraU1AFDcA+KtosyyLchVklcVrYxrUhOba257ZiuXS
 UlIv8VNSthXJcfSBjy6ChXeowcPUhwHLDyTfMnrTj6rWeHCfKUuG2rpFG50Y2MyvWX
 hzrs0k+0DmEJGGsd8lpt3K0RFECwBbLGHp6qYRIplpDEjABpJ8LTcNoGF6WQLLgYlL
 zaderGOHoAAU/TGG5ZVngjaRCqmVO6wbjdhl4j/5oq4WOCIxGZBmJQ8Fcd8D+CTCS5
 X3hhLLHvOrAKLr5GUFp5Hd9T3dBRyzE+ovoWLoPLb88ltPRKpT9NVn4VOIX7hCgtOb
 kY3Y70h7L/AMCQUNumzyPD4m/FG+2xkgC8m0OncLYJKUnjGk85uaf6l0mG8z31j6ix
 D/f28iH2AH3+dLtRSgEzs+kc2HxA6kBSRtGrmHqzA6pWkhh44WayTYhedxv4fDET2N
 ELSmJ15+X2/SgRMJjU9BAZfs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=T8LbvGFw
Subject: Re: [Intel-wired-lan] [PATCH iwl v3] ice: retry reading NVM if
 admin queue returns EBUSY
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
From: Robert Malz via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Robert Malz <robert.malz@canonical.com>
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:from_smtp,osuosl.org:url,osuosl.org:from_mime,osuosl.org:dkim,mail.gmail.com:mid];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	HAS_REPLYTO(0.00)[robert.malz@canonical.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C99B1701646

Hey Przemek,
I have submitted a new patch to solve the current issue:
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260629/055=
891.html
I ran numerous tests on it and also verified it against the setup
which initially triggered the issue.
This system had a problem where ice_discover_flash_size read time was
greater that 3 seconds and as a result failed with EBUSY status (FW at
asome point releases the lock).
With new patch issue was not reproduced even when the read time was
much higher than normally expected:
[   75.999353] ice 0000:05:00.0: CQ CMD: opcode 0x0008, flags 0x2000,
datalen 0x0000, retval 0x0000 <- First lock acquisition
[   82.152231] ice 0000:05:00.0: Predicted flash size is 10485760
bytes <- ice_discover_flash_size finished reading (7 seconds).
In this case, the driver properly read the NVM contents without
needing any retries.

I also analyzed the overhead of adding an acquire/release lock between
each 0x0701 call and based on my observations it did not negatively
impact the driver in any way.
Execution time for ice_discover_flash_size in normal scenario
increased from around 0,02s to 0,05s which should still be acceptable.

Regards,
Robert


On Fri, Jun 26, 2026 at 1:46=E2=80=AFPM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> On 6/26/26 10:15, Robert Malz wrote:
> > Hey Przemek,
> > I ran some tests and unfortunately, the following sentence from the
> > datasheet is true:
> > "For specific resources, such as Change Lock (0x0003) and Global Config=
 Lock
> > (0x0004), this field is used by software to override the default timeou=
t for the
> > operation, and also to specify the timeout used for this operation."
> >
> > This means we can only change a default timeout for 0x0003 and 0x0004
> > but not for 0x0001 (NVM resource).
> > Whatever timeout I provide FW defaults to 0xB88
> > Input:
> > [ 2209.656758] ice 0000:31:00.0: CQ CMD: opcode 0x0008, flags 0x2000,
> > datalen 0x0000, retval 0x0000
> > [ 2209.656760] ice 0000:31:00.0:        cookie (h,l) 0x00000000 0x00000=
000
> > [ 2209.656761] ice 0000:31:00.0:        param (0,1)  0x00010001 0x00000=
BB9
> > Output:
> > [ 2209.656927] ice 0000:31:00.0: CQ CMD: opcode 0x0008, flags 0x2003,
> > datalen 0x0000, retval 0x0000
> > [ 2209.656929] ice 0000:31:00.0:        cookie (h,l) 0x00000000 0x00000=
000
> > [ 2209.656931] ice 0000:31:00.0:        param (0,1)  0x00010001 0x00000=
BB8
> >
> > Correct me If I'm wrong, but the only way to properly handle it is to
> > ensure the resource is locked and released between every
> > ice_acquire_nvm call.
> > I'll start working on this.
>
> thank you for checking out!
>
> I agree that simple retries with improved (refactored) locking will be
> good solution.
> Failure to lock should count as an unsuccessful attempt, with possible
> retry after a sleep.
>
> >
> > Regards,
> > Robert
>
>
