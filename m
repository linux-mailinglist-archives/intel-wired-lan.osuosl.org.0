Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3AAD0FA0D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Jan 2026 20:19:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1FEC608BA;
	Sun, 11 Jan 2026 19:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uBSuVywqQSgY; Sun, 11 Jan 2026 19:19:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97F20608C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768159145;
	bh=o3N2ccNOiCXPwAFzm5HRCPw881IHfs+lbmruDzyx/rw=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=9C5DXZAgW8NUQUjE9BOIvBsThCZBF7Bh8fN6M79XQ16X3oa5IbqMZeWxLSBhY8uAZ
	 ns+6cNDNI0iCVmobYu7F20vpds41Yvo9ueH9xMzTIXvWZX5+cL6Hc87zeWMrPVpO62
	 GJ7+kUyllO+iRCZ8SvxjcaQHgdWz40MnTWS4Jv4OTdkmCSXnDXQBr+SkaZ4J4AkvJS
	 PGFzUBUr1hSze2hwftNCTbsNMK6YdXFjXGbs1tkLENL7oniLu1T+5JjosG8LDaIxgb
	 O2h3CZ3y1WRY9Na3qUL7McTa+QGrFKc+vA07Cv+yb0piJz78yg4hUJ6hij3LCn0M16
	 mv+tSNXCjAZ0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97F20608C2;
	Sun, 11 Jan 2026 19:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C3AFF18D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jan 2026 19:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9BF680EFC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jan 2026 19:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3NSweITSUfth for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Jan 2026 19:19:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12a; helo=mail-lf1-x12a.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0D9280EE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0D9280EE9
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0D9280EE9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jan 2026 19:19:02 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id
 2adb3069b0e04-59b737450f6so4185e87.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jan 2026 11:19:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768159140; cv=none;
 d=google.com; s=arc-20240605;
 b=JiN8AfQdIYnvakRTsi38dAAEZAjqOiCJxWwShltLfmZRXwtyMZeUC+Gz0UPAe7B3es
 e7sOaE5Q7xp5S4xp+G7dCwCYaeGW8pNIa6NG34KY+/EsAr9UtfMxGi4nu4iiiFhaQN8M
 7vmOrxxx279fJ4CKQl7viLa9r5VMpZMHYADhNsIjzNmMqEMiqU91OnGowFnHRm2Nlcwq
 P7nMk62sQg+gjGct25SkEihz0XluNwIOZvS4aWBNir1PBPp7aCu6wMq25BgEc6UCq3QX
 E9t38yDklLVcAW2sy2qgXLnK/EqQoB40oT8g3bgsBNNkCFygrfVToRuiN+H7xjYyyUzR
 83FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=o3N2ccNOiCXPwAFzm5HRCPw881IHfs+lbmruDzyx/rw=;
 fh=B0RPDviJP2j65Jjmu95RyRARQPz9FZpfO1a3+5ELqIA=;
 b=ddbc7ToqVN+8+oez4P0zZK3q+rwVN5KooWKerh1Gi8Yk2WgRov8hUz1Lu7g7qqhM5K
 IHa2R0jWLdUA1novWqo2kQFRu7mU+Dz7nIwNZAtbuimn8xKY01/nM+FUDkECpJ+v1IEq
 geBICzdEYMCznSkS1SPO+KXrYWLGNfmOBEZdggf9m5r1up3pIWRW3wg4lg7YWpbHJrSK
 oT9OrrCRAKd0POqTq208sIC03M0Pq5ZbLAlXxmdvMie/l2b5WiiqI3SnTJlpV2UApKP4
 cncSAkiG7C7BUONYST+n3/ghE8KakYMbGC350t7xAH29BhnoSWmxgwOuIrvh/+1aFLm2
 heWQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768159140; x=1768763940;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=o3N2ccNOiCXPwAFzm5HRCPw881IHfs+lbmruDzyx/rw=;
 b=Y5bBFyx8ofYs+gYk1YsPlZKhhABjAscXRcHGPSTdhM1XjhOuf5qwubWVq6OSlvY+Gs
 PbfvFTwBWqB9raW3XgXcgys6NPFBwWPiLxMzbru1djJAwQSyd/MzUHuGK1jpTZsSm7uf
 7xf/Om8gHGVgiB/uQjJzgO+6lTcDj8M4cpoU4jj90G8q96oN8NOBIQDw1pSjJnKQdhZm
 0dQpdiMJ83karE3GUokVHIi519Jzf8hQt8FC2XyJpiTkJL8nXlZ3CkOPMdtseeK9uBLR
 BF5QkxbbZygDABKEDyJvcdcqRy47/oHBqJrDs4qqQ0GR1Nfsi4iGuqZBc1Q/sotjOSCw
 /VWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVDhDXqtsjbkW4w85b5MzSx+iHgbs8fVlrk3/7CKQUOCbwBUFUtHr8YOify0CFS2btqnFyaRVRUDyRV/skpQVY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy3ZaA3AKpYAZeLahxhr0wJyndvXz9XODpfptqNCLMEcYvQMNw0
 D7jVH855VAWuYjfwlOWcrIkwaE7RpnvxZ7jheLXlMNQn0oZ1ngQAjlbewcn7Ru4+5rOYdxMIJcw
 5HxhgOGTBUuSM1CkXeG0lrnh9B7BHjg9EjXdy5v6U
X-Gm-Gg: AY/fxX4Iy90VG31x/1ZC2NFR4yAXZFTT6xKCsKGH8EVqm/gSBqnxsyitCNAMirM3x+6
 dNKq8aJhBBAFHecPo2zwc64kgSz5QXHE6RZeXWCLLhBhCI6xiue+Yc67767ljVzOFKhnF0UxVbP
 L4gSSq7/PwMiJXxCIS3c4CiNq+85y1m+clpweEa0Y5dtUfq7NiojuZ6xgm8pRcmWI3arVeJW2zM
 m8nikUYTJkLGrPME66uXS2kNWxilWjpiQ73lY9s0lSMnuw+mZQchi6V7NSEL5zdGnCLpWQ=
X-Received: by 2002:a05:6512:639b:20b0:59b:57ed:3622 with SMTP id
 2adb3069b0e04-59b87c43391mr83611e87.1.1768159139730; Sun, 11 Jan 2026
 11:18:59 -0800 (PST)
MIME-Version: 1.0
References: <20251223194649.3050648-1-almasrymina@google.com>
 <43dafae2-e1f1-44ce-91c1-7fc236966f58@molgen.mpg.de>
In-Reply-To: <43dafae2-e1f1-44ce-91c1-7fc236966f58@molgen.mpg.de>
Date: Sun, 11 Jan 2026 11:18:45 -0800
X-Gm-Features: AZwV_QjQhMoevwA58NGfYpT2i-RPV2KkpfFJ2IlmuJKbZfsyf_TMKOH2OuGi6DA
Message-ID: <CAHS8izO2fjT3DuqHzQQiF2LUvcAPuR4Spav5Ap9wG=VgsAtDbQ@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, 
 YiFei Zhu <zhuyifei@google.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, 
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Richard Cochran <richardcochran@gmail.com>, intel-wired-lan@lists.osuosl.org, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768159140; x=1768763940; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o3N2ccNOiCXPwAFzm5HRCPw881IHfs+lbmruDzyx/rw=;
 b=nngI+OI5rhguiZrIjYk1ansYTqpFkwz2jRpe3ju7V8nY5ZKWI/IeTVLOh58FgdO3Uf
 FodcL1gcTs9BqBawjgpEzX8Uu99UhYcZuTvms+qf/M5F9uPjfmouS1wUprc77HAm4txd
 F60VGFIGy0KsWEAPjmmvyYKGE3mV1ce1fUKYpYpU5f0FP8PVf2tvEf+m6aT7iBTvVFub
 foYmS+LMiNEsdlXo1FX/0rlCJb3f8VMX56MlUEGUfjNRtWI3y1/LkxZ9DhFVKahLSI6X
 lB/4gYdAYbFSxBhZgrKyRgwKPsjyqGb4PHPV/QEiAfj77Jl+v+9gnNPh2UlMEPaIi23a
 qhYQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=nngI+OI5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] idpf: export RX hardware
 timestamping information to XDP
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
From: Mina Almasry via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Mina Almasry <almasrymina@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jan 10, 2026 at 12:36=E2=80=AFAM Paul Menzel <pmenzel@molgen.mpg.de=
> wrote:
>
> Dear Mina,
>
>
> Thank you for your patch. Some minor comments, should you resend.
>

Thanks, looks like I have reviews and this is on its way, but should I
resend I will fix the minor comments.

> Am 23.12.25 um 20:46 schrieb Mina Almasry via Intel-wired-lan:
> > From: YiFei Zhu <zhuyifei@google.com>
> >
> > The logic is similar to idpf_rx_hwtstamp, but the data is exported
> > as a BPF kfunc instead of appended to an skb to support grabbing
> > timestamps in xsk packets.
> >
> > A idpf_queue_has(PTP, rxq) condition is added to check the queue
> > supports PTP similar to idpf_rx_process_skb_fields.
> >
> > Tested using an xsk connection and checking xdp timestamps are
> > retreivable in received packets.
>
> retr*ie*vable
>
> It=E2=80=99d be great if you could share the commands.
>

I don't have easy repro to share in the commit message. The test
involves hacking up the xsk_rr Sami used for his busypolling patch to
enable xdp metadata and retrieve timestamps, or (what I did) actually
set up openonload with this patch and test onload can get the
timestamps. Let me see what I can do, but it's likely too much context
for someone unfamiliar to piece together.

--=20
Thanks,
Mina
