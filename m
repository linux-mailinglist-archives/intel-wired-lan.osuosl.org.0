Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OR+MHjo1PmrtBQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 10:15:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6EC6CB40D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 10:15:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=sjy1cbQo;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FC8840A58;
	Fri, 26 Jun 2026 08:15:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id etiqtZdLfYAV; Fri, 26 Jun 2026 08:15:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39DBB40A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782461750;
	bh=OgQYhnBPA9xSingLmEVDWnoZ9cbftBXdPmeGfHhGAH0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=sjy1cbQo9HlE1rTtFrEThOZdVjH/eQnn+Sxetl4of9c/QevtDhpc8uc5KvCohg/vv
	 NbVJZ8ClNl5TDegSu7Oj2CUR7UPUppOH8qDaeFylfDcNNppgC6hSIHx/FMXcT/a2az
	 xMSsJ814SVmW2guCE9JyYEVwLenOttUh7No1TTL3wnkHCRXW3n2fJh6gFceW1ysQeP
	 z38mJflMx3Xup8KNpSdAsuDp2vhu+DtS7FuuS0rPLOkKYv1oZxi6Q9VNJL8qZPQJ/k
	 sla/gVJtLmOSiGSkYcejPDnifSe0pXBet9tDks2lgOqiJp+thlMK/CCS0cTi84kUX3
	 vXAw+ybJdUNJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39DBB40A69;
	Fri, 26 Jun 2026 08:15:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1624B369
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 08:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D108940519
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 08:15:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y2S2Wi3YrDqs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 08:15:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0FAD8403F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FAD8403F1
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0FAD8403F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 08:15:46 +0000 (UTC)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 636EE3F983
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 08:15:43 +0000 (UTC)
Received: by mail-lj1-f198.google.com with SMTP id
 38308e7fff4ca-399c5ee9eeeso2247191fa.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 01:15:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782461742; cv=none;
 d=google.com; s=arc-20260327;
 b=A8EZ/lOfWOFvUS4SodSGxzOwzqvboPA+8HvVBuKIxnbAemraTfItCH64xSqeJMsYmS
 2CUnYXio609AokziitULs5N/Gs64AK1KYgApGQRgONECKC8UZVurTFGTLvJ4D+UOHCAN
 AvtlCOJroNwoa3v8mcuMJgqx01FJH5FsOUQT5XiNYFAE9kml0usoPP5A66n14WHD4UP9
 47SIEDSRtlhpA2jkdO05Qriit7OGGiqC6zgkQ7Z33AALNrid1J6hq+w5ay6hs9UwQ9IJ
 2jLJaxT1Z9SNq9mf0k6+KdFSZISV1IaamhzLBbCBsZCLO+4wqr6Rp36Q59V4+DMTDVcD
 6g9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20260327; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=OgQYhnBPA9xSingLmEVDWnoZ9cbftBXdPmeGfHhGAH0=;
 fh=Pv9KgD+NkU6KsZBSVEr4LpXJHrc7vrvgg00Xkm4xJ9c=;
 b=hFyR3cQ5PNqWeMmG6r0CG2mVO/dgqjdz96O4w2T/4LGNTOKtrxRfaxHXJEbr2BaakJ
 NiK2ZJjqVc6Y6bG5rt8m5UlmPebgy9CGSoBmJY4hqdY8wy4H15G3rHXeIY4dZuoEs4Fu
 b+VJs9V6leo+dwNiLIrfA2+uS88vkzHuekvvrUcqu9yI4eKnHqxzpYR16VxUDYAYXyeT
 VH+E8wDQf4Sgtx4JuY2+VC8evwTd9wbwI0/j0Ts3y4WOaYLprdJxPoFBgY6IDZmqDBKQ
 wnmghowWK0v0aYkl3jFJhDVmfoyjcWt6HM8OMu9AeMkh6ABMlfcfAGkzoVE8sTEhpSY+
 8Cvw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782461742; x=1783066542;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=OgQYhnBPA9xSingLmEVDWnoZ9cbftBXdPmeGfHhGAH0=;
 b=gWedaFO/YfOsK5sPQBPLlJNdv7BhnTbTzXwLNVbikcC+ZV/oCzcHp0xLCUOLc9lj0l
 KE+rjJn0HY+thXFRY7D0U8dMbrFgQrx1V+2ybuBLTMs98p0Nx/E3mIWPJkXm1kTHlZDQ
 nkrR5h8DX+fmh2/24RB/Q1SVjCaRMUPZYCCrVGTxLFt7xarZHZkXgopPr8PGUccwMt7c
 FS1YqwcIXsLOF3M1rY5jKlc5MZhpYwJcrJQKXP0/PP5pl+WWkDRfXdQs/AjCyNMQglfr
 hc7PT7WXmjaHS7yfWHK+39EIL9dyDXkrO0XIeGMsLZ7hoBf9jbbrgtMmT9AjYMTWKPcp
 p+hw==
X-Forwarded-Encrypted: i=1;
 AHgh+Rp8L7e9CW48ck1BjB2mhmAeZoCUEhY3yyRUNSUEV+Z6RTtapzPJOYqLs9/jGk/6+0cRtZthHUnx9XQdwbmBYYc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy8QeBs1RHVHQfRo1ZrhaTpfvBlMkKwLxnsNOsyVIAQDZfCbCRH
 OyjznSkwSGIF4yb8zgZ+iQVdKsjTg0bRVLwdg4Jqj2J/M3OLV4EEJNeVDiBBw0icd2NI+HfSf+F
 HMFyOz+GLLUrkegpBLxJWO5mGgHR+wnpNiyJFLNosy9JUxVhZAdWQcDEPWPym082CHkzNiOC/zd
 bQBeHjp9CDUk2Al4v32LTf7DMtJfelS3xcPMPj9jW9w08tTDTBIPCwMAm8sWyjbg==
X-Gm-Gg: AfdE7clFac3eyhFwFbItkvdgGtJzL33BHpXlE9GwgvX1LYqPtd2ZB0VmJlVH6MsPlJY
 /W8dsLNKFAmAH2R1+MTV6DmnbTJjlE7HExrvEUYKcDp7MtdOYuLfwy2ruoSD7soLg+7rzm03mOu
 4QHOIhRmz6Zymb18BFJ7i0mbMslUJsG+xHnK+tjNo7Mmxgu8znUd9+owZfi4s64iY0TQ==
X-Received: by 2002:a05:651c:212a:b0:396:76f9:ac7e with SMTP id
 38308e7fff4ca-39acb9235b0mr18271371fa.18.1782461742242; 
 Fri, 26 Jun 2026 01:15:42 -0700 (PDT)
X-Received: by 2002:a05:651c:212a:b0:396:76f9:ac7e with SMTP id
 38308e7fff4ca-39acb9235b0mr18271151fa.18.1782461741730; Fri, 26 Jun 2026
 01:15:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260617120753.1785565-1-robert.malz@canonical.com>
 <20260618152003.909400-1-horms@kernel.org>
 <CADcc-bydFL4KNDQEznStE41NFXuCey9S+kyXg0usbonwyWpiAQ@mail.gmail.com>
 <5658849b-0425-4132-ba32-5801e2907c60@intel.com>
 <CADcc-bwd2CcWJ1AFDm1GR1HBzo2OOh=Xr3moNS+-RVuai6yVBA@mail.gmail.com>
In-Reply-To: <CADcc-bwd2CcWJ1AFDm1GR1HBzo2OOh=Xr3moNS+-RVuai6yVBA@mail.gmail.com>
Date: Fri, 26 Jun 2026 10:15:30 +0200
X-Gm-Features: AVVi8CdsJw9dyW9R50Ina3FFrRwP7Eb30UB2Bd0WBDmOtq6je4hSoJyp5G--v_4
Message-ID: <CADcc-bwC4FGQSGyRcnj2ZpGT5+0Q6mjQd-FTCB-mCmmwYrC8Qw@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1782461743;
 bh=OgQYhnBPA9xSingLmEVDWnoZ9cbftBXdPmeGfHhGAH0=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=RlPf++VJd/ixzaA2SQzpY8aiFX1GsRn/rDe+AFrWxZZRCV3BbaYaRAgPhI+GAnacv
 70JTBaBCHv1uTXd0Ybcdbo98tCy0vhgOHAiAc1cBxp/+5S/rIY8wleDbCDrKhStE2G
 ouQdLSThEpYa/yIHAwefEuiqN3aUue+Xcp99O6hS7AKAt37+cVfpliyuFjYfWtnDtl
 YqcTAdm7suz+Z+B0TnTJlS+QTtCnoYCn+fD7/fBSkHCnzGy2OInbrOtLGoi2D6rsM3
 l3weTOctJUHuGrSuslzLIjwaLMfpHFCGQZo0sEAw1wjaBCT4M2UtaOr2FM5VtBqp+i
 ZIQPmm+APCogHMuK2vF0JI2sm89mRpadionM3EBneZvZwFvE1+qa6QG4L3DljwOerW
 kv2hSQ5k+BfC9EpaUZAadMVWUO6S15KzDcp7qixsNZIf7KuGyEeflomQi3wRKyxJxj
 1t2DVO4fbB3uHy/ATJgVVEDu73XYmt/YDQiFiT4B/T+oyRq5vDbC2rEATY+qalTRQR
 WE0ztUZZsjeMnslbv5xo3nGmHFdE4IanV348PmXrHf5LxkSiNBC96h4+P/93bB7C1h
 XsmFy4LdfMTqNePQ3PJblHUe5XDel2yjnADjVuMK8k7zahHH+33BkN9C8ZAY+Ndjz3
 9PLjUn3IYwVvOHQBxWJD+9Fc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=RlPf++VJ
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
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
X-Rspamd-Queue-Id: EB6EC6CB40D

Hey Przemek,
I ran some tests and unfortunately, the following sentence from the
datasheet is true:
"For specific resources, such as Change Lock (0x0003) and Global Config Loc=
k
(0x0004), this field is used by software to override the default timeout fo=
r the
operation, and also to specify the timeout used for this operation."

This means we can only change a default timeout for 0x0003 and 0x0004
but not for 0x0001 (NVM resource).
Whatever timeout I provide FW defaults to 0xB88
Input:
[ 2209.656758] ice 0000:31:00.0: CQ CMD: opcode 0x0008, flags 0x2000,
datalen 0x0000, retval 0x0000
[ 2209.656760] ice 0000:31:00.0:        cookie (h,l) 0x00000000 0x00000000
[ 2209.656761] ice 0000:31:00.0:        param (0,1)  0x00010001 0x00000BB9
Output:
[ 2209.656927] ice 0000:31:00.0: CQ CMD: opcode 0x0008, flags 0x2003,
datalen 0x0000, retval 0x0000
[ 2209.656929] ice 0000:31:00.0:        cookie (h,l) 0x00000000 0x00000000
[ 2209.656931] ice 0000:31:00.0:        param (0,1)  0x00010001 0x00000BB8

Correct me If I'm wrong, but the only way to properly handle it is to
ensure the resource is locked and released between every
ice_acquire_nvm call.
I'll start working on this.

Regards,
Robert


On Thu, Jun 25, 2026 at 12:14=E2=80=AFPM Robert Malz <robert.malz@canonical=
.com> wrote:
>
> Hey Przemek,
> Thanks a lot for the feedback.
> I was sure that we use ICE_NVM_TIMEOUT (180s) as a timeout every time
> (ice_acquire_nvm) but your proposal made me rethink it a little.
> First of all, the datasheet for E810 specifies the timeout as: "As an
> input, the software might specify timeout longer than the default
> taken for this resource, and up to one minute."
> 180s is greater than one minute so I took a look into AQC logs:
> [  110.698471] ice 0000:05:00.0: CQ CMD: opcode 0x0008, flags 0x2000,
> datalen 0x0000, retval 0x0000
> [  110.698474] ice 0000:05:00.0:        cookie (h,l) 0x00000000 0x0000000=
0
> [  110.698477] ice 0000:05:00.0:        param (0,1)  0x00010001 0x0002BF2=
0
> [  110.698480] ice 0000:05:00.0:        addr (h,l)   0x00000000 0x0000000=
0
> [  110.698645] ice 0000:05:00.0: ATQ: desc and buffer writeback:
> [  110.698648] ice 0000:05:00.0: CQ CMD: opcode 0x0008, flags 0x2003,
> datalen 0x0000, retval 0x0000
> [  110.698651] ice 0000:05:00.0:        cookie (h,l) 0x00000000 0x0000000=
0
> [  110.698654] ice 0000:05:00.0:        param (0,1)  0x00010001 0x00000BB=
8
> [  110.698657] ice 0000:05:00.0:        addr (h,l)   0x00000000 0x0000000=
0
> Based on the above, the driver requested a 0x0002BF20 timeout (180 000
> ms) but the FW returned only 0x00000BB8 (3s).
> I'm assuming this is expected behavior since the maximum timeout for
> NVM read should be 60,000 ms.
>
> If changing the timeout requested by the driver to 60s for read ops is
> handled correctly by the FW and the FW respects that lock, the retry
> patch submitted in this email thread might not be required at all.
> Let me quickly prepare a new patch and test it. I'll update this
> thread once I have a results.
>
> Regards,
> Robert
>
>
> On Thu, Jun 25, 2026 at 9:51=E2=80=AFAM Przemek Kitszel
> <przemyslaw.kitszel@intel.com> wrote:
> >
> > >> This is an AI-generated review of your patch. The human sending this
> >
> >
> > >> [Severity: Low]
> > >> Does this check allow an extra retry execution? Since retry_cnt star=
ts at 0,
> > >> using a strictly greater-than check allows the loop to retry 4 times
> > >> (5 total executions) instead of the 3 executions intended by
> > >> ICE_SQ_SEND_MAX_EXECUTE.
> > >>
> > >>> +                             break;
> > >>> +                     ice_debug(hw, ICE_DBG_NVM,
> > >>> +                               "NVM read EBUSY error, retry %d\n",
> > >>> +                               retry_cnt + 1);
> > >>> +                     last_cmd =3D false;
> > >>> +                     ice_release_nvm(hw);
> > >>> +                     msleep(ICE_SQ_SEND_DELAY_TIME_MS);
> > >>
> > > The review is correct that this allows one extra execution. However, =
I
> > > intentionally kept this verbatim from the OOT driver (1.15.4) to
> >
> > This OOT change was made entirely by Grzegorz, for E825C. Would be grea=
t
> > to acknowledge his authorship (+ SoB ofc, below).
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> >
> > What was the platform that you have encountered the bug on?
> >
> > > retain the significant test exposure it has there. The absolute worst
> > > case is one harmless extra retry before giving up. If you strongly
> > > prefer strict adherence to ICE_SQ_SEND_MAX_EXECUTE, I can update the
> > > condition in a v4.
> >
> > Please update (to have one attempt less).
> >
> > >
> > >> [Severity: High]
> > >> Does dropping the NVM lock here violate the caller's assumption of m=
utual
> > >> exclusion?
> > >>
> > >> Callers of ice_read_flat_nvm() typically acquire the NVM lock before=
hand to
> > >> ensure an atomic read of multiple sectors without interleaved writes=
. By
> > >> explicitly dropping the lock during the msleep() window, another thr=
ead, VF,
> > >> or PF could acquire the NVM lock and modify the NVM before the read =
resumes,
> > >> potentially resulting in reading torn or inconsistent NVM data.
> > >>
> > >>> +                     status =3D ice_acquire_nvm(hw, ICE_RES_READ);
> > >>> +                     if (status)
> > >>> +                             break;
> > >>
> > >
> > > I don't think this is an issue. The NVM resource (req_res 0x0008) is
> > > an ownership lease, not a content snapshot. The FW grants it with a
> > > hold timeout (see the timeout field handling in ice_aq_req_res). It
> > > never guaranteed a point-in-time view of the flash.
> > > Very similar behavior already exists in ice_devlink_nvm_snapshot(),
> > > which reads the NVM in chunks via ice_read_flat_nvm() and deliberatel=
y
> > > acquires/releases the lock between chunks (with a comment explaining
> > > the FW reclaim).
> > > Additionally, the lock is only dropped on the failure path, where
> > > neither bytes_read nor offset have been advanced. The driver simply
> > > re-reads the failed chunk after re-acquiring. So no data that is
> > > returned to the caller is committed across the drop window.
> > > Overall the lock drop does not weaken any guarantee callers actually
> > > have. If we wanted to introduce a true snapshot guarantee, that would
> > > probably require different approach and separate patch.
> > >
> > >
> > >> [Severity: High]
> > >> Can this lead to an unbalanced NVM resource lock release and potenti=
al data
> > >> corruption?
> > >>
> > >> If ice_acquire_nvm() fails here, the loop breaks and returns an erro=
r with the
> > >> lock currently unheld. However, callers like ice_read_flash_module()=
 are
> > >> unaware of this internal lock state change and will unconditionally =
call
> > >> ice_release_nvm() upon failure:
> > >>
> > >> drivers/net/ethernet/intel/ice/ice_nvm.c:ice_read_flash_module() {
> > >>          status =3D ice_acquire_nvm(hw, ICE_RES_READ);
> > >>          if (status)
> > >>                  return status;
> > >>
> > >>          status =3D ice_read_flat_nvm(hw, start + offset, &length, d=
ata, false);
> > >>
> > >>          ice_release_nvm(hw);
> > >>      ...
> > >>
> > >> Because firmware tracks resource locks per-PF rather than per-OS-thr=
ead, this
> > >> errant second release could forcefully strip the lock from another t=
hread on
> > >> the same PF that successfully acquired it, exposing the NVM to concu=
rrent
> > >> modification.
> > >>
> > >
> > > Agreed, this might be a real bug, and the one of the three I think is
> > > worth investigating.
> > > If ice_acquire_nvm() fails after the drop, ice_read_flat_nvm() return=
s
> > > with the lock unheld while callers unconditionally call
> > > ice_release_nvm(), so a stray release is issued.
> > >
> > > On probability, though, the window is very small. Reaching it require=
s
> > > sustained EBUSY across the retry budget plus a failed re-acquire
> > > (which itself polls up to ICE_NVM_TIMEOUT), and concurrently another
> > > requester taking the lock. Most reads happen during init (ice_probe,
> > > and reset/rebuild via ice_init_nvm), and NVM writes only happen on an
> > > already initialized driver. The devlink/ethtool nvm_read paths are
> > > also exposed, but hitting this race would require precise timing
> > > against a concurrent NVM owner on the device.
> > >
> > > I'd prefer to keep the scope of this patch limited to the EBUSY retry
> > > path and not take on the unbalanced-release fix here. A proper fix
> > > should change the lock-ownership contract of ice_read_flat_nvm() (on
> > > error, the lock must be released by ice_read_flat_nvm(), callers
> > > release only on success) and update all callers. Code change sould be
> > > simple for all callers but ice_discover_flash_size(), it intentionall=
y
> > > holds one lease across a read loop and would need to re-acquire after
> > > each expected boundary failure.
> > >
> > > Given how small the original window is, I'd rather not trade tested
> > > OOT behavior for the risk of a complex unbalanced NVM lock fix. I
> > > actually have a patch mostly ready that fixes the lock-ownership
> > > contract, but I really don't like it. It changes the design of
> > > ice_read_flat_nvm(), making it less intuitive for callers. More
> > > importantly, I just don't have the resources or test coverage right
> > > now to properly verify such change.
> > >
> > > However, I can modify the failure path for ice_acquire_nvm inside
> > > ice_read_flat_nvm. Instead of bailing out immediately, we can just
> > > retry it within the existing retry budget. In this case, the
> > > probability of leaving ice_read_flat_nvm without holding the lock is
> > > reduced even further without needing a refactor.
> > >
> > > Please let me know what you think about my thought process on this.
> >
> > I think that both AI-reported issues against the lock are valid
> > concerns.
> >
> > I think that sleep was the actual fix, and re-locking were merely
> > a necessity due to their expiration (as you said).
> >
> > A proper fix would be to just increase lock-timeout to accommodate all
> > attempts (and still do the retries&sleep, but without unlocking).
> >
> >
> > >
> > >
> > >
> > >>> +                     retry_cnt++;
> > >>> +             } else {
> > >>> +                     bytes_read +=3D read_size;
> > >>> +                     offset +=3D read_size;
> > >>> +                     retry_cnt =3D 0;
> > >>> +             }
> > >>>        } while (!last_cmd);
> > >>>
> > >>>        *length =3D bytes_read;
> > >
> > > Thanks,
> > > Robert
> >
