Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFZoGKqsb2ncEwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:26:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC44947765
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:26:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC5A680F6D;
	Tue, 20 Jan 2026 16:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y9zuxgPN8vCf; Tue, 20 Jan 2026 16:26:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37CEA80F74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768926373;
	bh=q8D+nrqZsm9DrZObP52Gb97lohlLVUehKhiIohn1eHw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tEPiDGHXmtvPb5fQ7qP0Vew80Ks7IanDz3zGRjgwLvuRX+GQCynKwpoFFN2GufRF6
	 doH8fYiwaEFTO10tzUyZlzr7BGMBLyuFgJMz84OiyGD8Os4ooDrzcrV1C7kVrfnhHq
	 dH7xroXDR8Tfz883DJzk/ev90HULOhpJkELHEhB7EmJGEV6/UjziJFhxmcNvpkqLZv
	 nnAt+JqGLg2t3aPrwAsSkq4yyj7xlwzxAyt0cRcNy62VNrM8u9h5qVM2M04/8GkHzO
	 jFo2fIpTtN8ug8cwPL/DOqhOAZcy1FvX8UaLGZZiopZndypCMAx5Y+ENmcgxR4Cbjr
	 EAkpSyEDYCZDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37CEA80F74;
	Tue, 20 Jan 2026 16:26:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 64A522CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 18:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F59B415DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 18:08:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8bmvSm3xlSZ6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 18:08:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::329; helo=mail-ot1-x329.google.com;
 envelope-from=mmyangfl@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6FC7E415D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FC7E415D7
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FC7E415D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 18:08:25 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 46e09a7af769-7cfdf0c8908so2098355a34.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:08:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768846104; cv=none;
 d=google.com; s=arc-20240605;
 b=T8YQilZa95QAJY+xknF/pwK+vVe36aSi6lmjQT9GSKQPBIkjO3IGIj45jWtBM4/qIY
 XAHfhweEKU8WBF5QyRnzGCLNuiA1+dMfloc0P+vzx+PnoIoex1d/htccj9Kpdl/kGCrX
 /qPKyDOHnU3aE/PG7iarlvB4ViibrssV7eGPRa/FPeD3/TdiGtbJpXGCieQ6e5ETmzoF
 Npv+wrg2i788rfUKPuiPGCmwCkFYs0rfLiayW/PaLee1lJcu0Co/jyxW2wA0qRHwxi4w
 jB3WHYkyJiZJEee/grWfErT1Ce2c2sWV6ReGGZe6UAHY8etw5eDuc6wzbQqYo7HUYKdL
 iFow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=q8D+nrqZsm9DrZObP52Gb97lohlLVUehKhiIohn1eHw=;
 fh=f251vxVJiP3276P+l+Dz2kVTvMhvKiHJaIDj4tFoS8o=;
 b=iEsiC0nMHQj4UxBDgPGJowEXWBerxz7iwm68s+RdjFkqAjKvcPp83Xkl3l9lETtqHH
 YNy5Wmkz00ri4jWRTAwT1uK+SQpjAIj+LnTdc9HUP9ZqA8iOWU8s4Kk1SLVcouvAxy8p
 OYHadpRnPCrsNhcOEC6ZC04uGiXTa/70LfpW5HfWzXJ6m7dd3XRYT5+19nXpntogbdFV
 FwELP1tKDxEqyiv6pTIogzG4Pdb88JmJnz7N8T8VNS8aDPSS9iTz0DQdsgxVRQq5NoYl
 iFyTmkfOIZufsX5fE7mi8s6loApzitqb7EzDJf9ypuGjdWJCzYOQrR8CPKN2PGhcTx1J
 Y+Hg==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768846104; x=1769450904;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=q8D+nrqZsm9DrZObP52Gb97lohlLVUehKhiIohn1eHw=;
 b=voNUpI3Z9BiSVAUWPaIRPWu8VCLwZzbPg4PqL82DBQUmAcdc+SeYgl2sS02sVsFhBP
 hSqi/F1zupD/Q/8qWTvk/CjBPhR3f5jp1TavsZN6uOWQL3fofkd5WUf7vUPTPVQKrx39
 w/hD7x1ztl8eGUYFaKVOHnUBlIh806Vk52qu1wpjHMeR3tsESxGC4iBr1mq4qwp4DO6y
 hn5nVzcWVi1JFiGun5YpupMP6ibR2xYF/5d0o9G57cQ/0+KWP2oDlY+x9U7Gx7S0yls+
 XAepnxpbaO0m99DjYOQD91f9ziz998dYD4sTni+sjfEflUwmyyz6615sMycLd0tkq8U1
 y42g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXAu5vHZlII5hZIkUSr+iZelyFpzZ7182hKECcp+S4DEaxZO4UrBJSgvneWPi4Jlw3vSb4OgFvjs8MOQx5cf+s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzJ3qPM2MrayUYkoVssgvvNIwJtYPSoorGzHbY8GZ3d/L7aPVZB
 knyAsOJV6jBRWpKjVHNgHscVrawTg8zKsEwRd7ZP1jV0oSxohnrsF3470tYAdOhSljFJ2ESb/0N
 9hQBDYO1++GBI8IrQ+8iWzGgruVJYry8=
X-Gm-Gg: AY/fxX4muqJrDh9Qig6XsAtvn5cl5H7mrLnCY1sa6n1oumRdQW1kYS8LbOPkjL9ivMF
 Ngtx5Wmka4ELujtekAagcn+iVOSDpfqpv/BJdC9rneGkFwq4bcIxgkVyeZ0r6tQlg1G0dzYDtmE
 ZdSo7W785RC9Q92RocdM+lgUob+PDDUacCqL8WM/RLXnpvrBNoBOXU4RS4Zk6Tq+1SDaL3u19AE
 XmfhCHTYz2PcN7aL1zQgP5cQq9OEYDVHirJswm9i8c82gL0XnQSbEfjYJS/flqWyWQdAd1QfptI
 ylWxnEQgMP8wp5TrnWGsB7uIM0TdLmsG2fekPuPKCroJAlcdcTdgprBVUDI5
X-Received: by 2002:a05:6820:1787:b0:65f:64f5:5b79 with SMTP id
 006d021491bc7-6611793d4bcmr5481444eaf.16.1768846104301; Mon, 19 Jan 2026
 10:08:24 -0800 (PST)
MIME-Version: 1.0
References: <20260119162720.1463859-1-mmyangfl@gmail.com>
 <CANn89iLuo+A3M0BSXKJwwsd4T+crXe8u0KiAns7=ks1TXnWaeQ@mail.gmail.com>
In-Reply-To: <CANn89iLuo+A3M0BSXKJwwsd4T+crXe8u0KiAns7=ks1TXnWaeQ@mail.gmail.com>
From: Yangfl <mmyangfl@gmail.com>
Date: Tue, 20 Jan 2026 02:07:48 +0800
X-Gm-Features: AZwV_QgYa-0zOYsjzwo8YEi6ZVG9_cSElG1hlh5M9B3SsCMIK1usQ7MzaKlTl6c
Message-ID: <CAAXyoMMbfUL78oq3MOk0G0sjgA6jSXHYz2m6SbXqk-cpB+P4ig@mail.gmail.com>
To: Eric Dumazet <edumazet@google.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Phani Burra <phani.r.burra@intel.com>, 
 Willem de Bruijn <willemb@google.com>, Alan Brady <alan.brady@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 20 Jan 2026 16:26:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768846104; x=1769450904; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=q8D+nrqZsm9DrZObP52Gb97lohlLVUehKhiIohn1eHw=;
 b=KPkXT68tePPsLdFRyvfhA3BwL5GNeMaXb0FVI4ZhPb6CsxaKYB2UpbHFpok9lhOcVP
 U6OyAHUbLcBdUO4rmAg/soNJ4pG9OGLCyDh2iAeVEmwnYbZk1uQBqRJR8l/NYIKvpZwb
 2saQ+6h/IGIOhz30CbHlkgwrsENsqiVLvnw/2sL3E1gYuNGMSmDo3XSkKPloAOvFPmQE
 +8ffCmNlt6PQXnHJp0ONA0TAgcj+78mO6h4uQ8bJOA4uaRJWA5PCwMQfDxAtl3EL9z9A
 O75F7GBnCTungGIUILoxLqLw4P55xSciaAZlo/EaHILKrI+sn7MU8kK84E3+Xr77wH50
 jooQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=KPkXT68t
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: Fix data race in
 idpf_net_dim
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:pavan.kumar.linga@intel.com,m:phani.r.burra@intel.com,m:willemb@google.com,m:alan.brady@intel.com,m:sridhar.samudrala@intel.com,m:joshua.a.hay@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[mmyangfl@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mmyangfl@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: AC44947765
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 1:59=E2=80=AFAM Eric Dumazet <edumazet@google.com> =
wrote:
>
> On Mon, Jan 19, 2026 at 5:28=E2=80=AFPM David Yang <mmyangfl@gmail.com> w=
rote:
> >
> > In idpf_net_dim(), some statistics protected by u64_stats_sync, are rea=
d
> > and accumulated in ignorance of possible u64_stats_fetch_retry() events=
.
> > The correct way to copy statistics is already illustrated by
> > idpf_add_queue_stats(). Fix this by reading them into temporary variabl=
es
> > first.
> >
> > Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> > Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> > Signed-off-by: David Yang <mmyangfl@gmail.com>
> > ---
>
> Reviewed-by: Eric Dumazet <edumazet@google.com>
>
> It seems ovs_vport_get_upcall_stats() has a similar bug, are you
> interested to fix it as well ?
>
> Thanks !

Sure, I'll take a look at it.
