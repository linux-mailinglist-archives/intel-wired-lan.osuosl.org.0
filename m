Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN/SD0W2c2liyAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 18:56:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DB4793ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 18:56:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 583C883C3C;
	Fri, 23 Jan 2026 17:56:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x2UEXUKFL1B7; Fri, 23 Jan 2026 17:56:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEF1E83C33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769190975;
	bh=hPEm2oRsWZ5WyQi5AvSh+MQur1z7+e5R6KmqSEmzJEk=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=7q55eIoTh4P1hvL9ruvFLQGOfNCY4ewP5ZpvW15cb3+4egOEslPTmjSTdWkexCuz7
	 PUqCVGEgKCrbd2cymN25wZu9goFskKRs17qqfjntPZhaP1P7wvwFfUo3OLbiWWwTz8
	 lYtK1R7ZNO+H7fLU7WE48pNpgNzO5dI4JUwclPJHchCi8HwD7O29iBMtFiYv7cQbuM
	 BgzklDi9qyeI731wN+qOfQ3hLzIph0AjwB5ol2mnhFpQR0oCFt9PjgXWFH/pngRxQM
	 RtgfXp0mFgK2SyWyk9eAs4Er50mWBn05+QUjuAtC6P9BbT3489KVfXbBKXwyQB4rf9
	 xCoR2iRATPypA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEF1E83C33;
	Fri, 23 Jan 2026 17:56:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 870C4A3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 17:56:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76A2383C31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 17:56:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYTbp1oc8d2W for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 17:56:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112c; helo=mail-yw1-x112c.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BA4EC83AD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA4EC83AD3
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com
 [IPv6:2607:f8b0:4864:20::112c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA4EC83AD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 17:56:12 +0000 (UTC)
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-7942b9663f8so22660467b3.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 09:56:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769190971; cv=none;
 d=google.com; s=arc-20240605;
 b=XUAnpIUJz4KSqFMCO1LcFD085k3dtJUbZ55GzRpjTle6iGlDzTzRxeCO4ROBT4ndwG
 2FF96MSaoF6u2FyfsuoV4fx6Ryjg9y/dL778M9A6DPVSsNNy56IILcjfuYqfWYo7tlRu
 zpzsILx95oZTql8YCvUGP/hQ3k+EQf2mbYfW6j/nORcvWwDedSpGuWuqeLgoxU1k8Qih
 daAOWfrDVQc9rRDw97DsXrwIaHVznQG8gfANBuJA/6qRJGfkuNpLaBb8Ov3X33KiTP01
 JcSJGyj+4RlG5Inzvkv+ieRdzhc3Ipck1A4he67lsBMm/tl/WeY2DFxRcnRYNpuaD+qO
 EQmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=hPEm2oRsWZ5WyQi5AvSh+MQur1z7+e5R6KmqSEmzJEk=;
 fh=qrYubhA9mVSATtZN0afI5jIXRemZuCxGZJ0g8zbDUYI=;
 b=HKB5b9gjRByhCuR7x5wq9DbTOLGZqOCnQIHTXjt/3DlH2mxGgSqWQ3A8RpJb3AHwae
 MUvREVcqfuX1meOOHzA93ijy9PHL7CWE2js+5/QkRAndchcpsWlGWDTO+whqBqaIzFiW
 qNzcCKwWDMOuCI1Y3URXEL6o3W/Kp9nO8kU1nrrflVlghF8Fi9DVs7kKHGf3hxVbzBtX
 qfHNUExA3yG2j7BBWIzYCqHeDFWJk1oQSdEUmkiarLzYKs95wvTT7F2kpmTyknDLKaH8
 zIO0yCwKuuvFue1svRyInEjYE6T++R7teKsGLMJmP39rzBafjhzMy1gt6bJnPzCU+y2R
 qEOA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769190971; x=1769795771;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=hPEm2oRsWZ5WyQi5AvSh+MQur1z7+e5R6KmqSEmzJEk=;
 b=oMLbTdWgRaoVxRDwJsKYQBOaXVXFyV4r8d+/pKrLA0P2O7p1aENhTOfSSFNccfHIYJ
 up0nXZ4f3/GLBxhICAghfUDpwDQjwj9wwbdGYDDtMPza085+es7CsAaYHbJE/k+Hx8N/
 n1CTQGrwKm4Q7puf8gZjWehH6pANrFpRcfys2ML0Xc3UOwT+I3oWEjtH8A1QrsO+JYeD
 H5Fz5p/QEQoHoWL1YBy5yye119GnpNlhf4yRAPS4FgH112RPp6/QCLPGiGG2ked6T59T
 cteN4z7txoXrJkbmB7VAPAOi8um1ctCoN7OGDxBLgzd+7CKr+Ugy3ScEGX4XlSy7mbdM
 M1Uw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCQ2CoDm5Ba8CURDR+8KWnA5+agsh53/L2DM7Uv7uZeJ9VxtKljdIBptvlgFj7fjiuW2qnBTbh9WKV1NPmgeM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxt2sqtbQUS6bPesqi6wRJqVIt5REAm9sfiDEy3GYxGCdA12DyY
 d4YJlqTjGDyHvb0XVVYGDeZ1pYthLIAnHQIJJs74RowWrlEjC9UBXYpZO+A30ON2RKJ2CgK+zcg
 3yk2TRHp2TfPsd0E3eKYEjLPJIEWUKi0CyYSDktM5
X-Gm-Gg: AZuq6aK/xqxj9ARKinwJN4kC/fLBCXg7UFZWSEMqxPI84SKcVMZE1Kk4l6eKRVNK2Yl
 3HiZDk/JjSkeWVReiWTw2nqyaTieosWz0LfinECJhjGZPKMb45E0g9FPOgaUdBmjGH8KZDotTju
 KubGAvrYsuGMfaFMWbUkYHYYD18B9VtROZEjY5Q/4+HIrWznCNlYlC2z6gyAaEZq0u78sN8DcV2
 +ZoKxeUP3KZ4BtOo2jp3WDW0HwN7pYyX/HhQaLACeOKY+sJu07G+Xq0zzHFwB31yPreBWou
X-Received: by 2002:a05:690c:c4cc:b0:794:146c:8bc4 with SMTP id
 00721157ae682-79439a0e8d1mr29143857b3.50.1769190971110; Fri, 23 Jan 2026
 09:56:11 -0800 (PST)
MIME-Version: 1.0
References: <20260123052721.3765743-1-boolli@google.com>
 <CANn89i+ocUUpwzf-0t6_H9eZo3cikwrKd4ymtDkRL8W7g7uz0A@mail.gmail.com>
In-Reply-To: <CANn89i+ocUUpwzf-0t6_H9eZo3cikwrKd4ymtDkRL8W7g7uz0A@mail.gmail.com>
Date: Fri, 23 Jan 2026 09:55:59 -0800
X-Gm-Features: AZwV_QhidTXbFyW0hdKyy7IVS5RYP3NzTkHkHl0LvpKQD21odQoCxfOhDcfs-j8
Message-ID: <CAODvEq6NXpwYZbXiQeisYEE-sJaaG-tN1u-rq+RTSi=gPY+EAQ@mail.gmail.com>
To: Eric Dumazet <edumazet@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Decotigny <decot@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769190971; x=1769795771; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hPEm2oRsWZ5WyQi5AvSh+MQur1z7+e5R6KmqSEmzJEk=;
 b=bIz/B23sQ8/MuLPra6ZAK+rzBhWEsI/ee7crvvxh2EBtX1EBqTaXYXsZtuhD0dO1DA
 ZWT96JjKFLfOH3VPSbggJKOxVZQFxJCGeUSLGJIjnpAO+LjoTlSUspik+DX/bj8q9f33
 i0bDkuk5a8/wL7u0JqUIz34LQI9N7j9Odu/Pnb+Ki8zYcBvDqoWGyVmvccXDu76Rv1vw
 3lE+sG4L+BFu3MyYwk1pWyK2a6REf2RIr1SCix5gOPuA7xUFvSyNqCIwFilU2N8yyFZg
 lzL7jnLnYXkcBOfnKpqtt3mFQJRn6FeyRAtJpPJYAIo2sYtft+GKNMGI5zEs0ug7YaNV
 k8Pw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=bIz/B23s
Subject: Re: [Intel-wired-lan] [PATCH] idpf: nullify pointers after they are
 freed
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: D0DB4793ED
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 1:19=E2=80=AFAM Eric Dumazet <edumazet@google.com> =
wrote:
>
> On Fri, Jan 23, 2026 at 6:27=E2=80=AFAM Li Li <boolli@google.com> wrote:
> >
> > rss_data->rss_key and vport->q_vector_idxs need to be nullified after
> > they are freed. Checks like "if (!rss_data->rss_key)" and
> > "if (!vport->q_vector_idxs)" in the code could fail if they are not
> > nullified.
> >
> > Tested: built and booted the kernel.
> >
> > Fixes: 83f38f210b85 ("idpf: Fix RSS LUT NULL pointer crash on early eth=
tool operations")
> > Fixes: 8a558cbda51b ("idpf: fix potential memory leak on kcalloc() fail=
ure")
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_lib.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/e=
thernet/intel/idpf/idpf_lib.c
> > index 131a8121839bd..7af4214ec44de 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > @@ -1308,8 +1308,10 @@ static struct idpf_vport *idpf_vport_alloc(struc=
t idpf_adapter *adapter,
> >
> >  free_rss_key:
> >         kfree(rss_data->rss_key);
> > +       rss_data->rss_key =3D NULL;
> >  free_vector_idxs:
> >         kfree(vport->q_vector_idxs);
> > +       vport->q_vector_idxs =3D NULL;
>
> vport is freed right after this line.
>
> vport->q_vector_idxs content is not relevant.
>
> If anything tries to deref vport->any_field ater at this point, there
> is another bug. KASAN might help.

Thank you Eric! I realized this after this patch and have sent out a
v2 patch with this line removed as well.

>
> >  free_vport:
> >         kfree(vport);
> >
> > --
> > 2.52.0.457.g6b5491de43-goog
> >
