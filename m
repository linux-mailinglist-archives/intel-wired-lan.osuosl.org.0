Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GGosNeP9KmoT0wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 20:26:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB1D6746AA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 20:26:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=eRAuadky;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57B7382023;
	Thu, 11 Jun 2026 18:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i8f7TZMpMb0z; Thu, 11 Jun 2026 18:26:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C631282027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781202400;
	bh=RjO+U1+VNdBV2gUvNtl1hA8qIVDLyU6x+S8pv+zOymo=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=eRAuadkyfcVM6nKhOKmcJx6d178f94foCNwcv87F0ucZ1h0PwR8EiN3bimhnAXCfI
	 bXiWDLHTd0qvvFHjHn3Kmea76EcOF/iq54UClc48k2GP1/47dF7iBcz3+kHOqie6vY
	 t1ZPUwaeTuxyzXz3CI54EwgdYXS0qz27Akri6Xw1fXTTJuLl53fixjN0jqMzvETSZ1
	 R9TkiJAF+6t9IE9vxtJaBRUdIbJ2zPNPTOxFY3Jlf6FHDaHNZit5r8hprD+KeWiwrm
	 qSpWhkEzDcGWmiFe6xnx8rDUYAAiuc8z5g0+25u5mdto/GbOAhcVPHAZV/jCzUtw7w
	 N85Flh4XiEP2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C631282027;
	Thu, 11 Jun 2026 18:26:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EEE3237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 18:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44CBA40AD7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 18:26:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wm8_2QZVG_VD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 18:26:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::833; helo=mail-qt1-x833.google.com;
 envelope-from=digonzal@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B69F740A26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B69F740A26
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B69F740A26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 18:26:33 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id
 d75a77b69052e-51765531803so89241cf.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 11:26:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781202392; cv=none;
 d=google.com; s=arc-20240605;
 b=DCT8bc4kdnAiu6FvMWb4b6PMkDvlyxMmQNW14Ed/Msc3iIiqIbESTKA/2ZaWS2Aowz
 OU13HMFmeTsxor+FGLp2VFRF8wL6R5gUb9pZAk0RVEuirvYY9Cm5v1RKUVFZmCIDSzW1
 zKRwhOzp18VCetQouibm8RJMW3ECJy9PN+Idz3nQtc50rXRc/ovthRM3A5MFk2dObZnk
 9Uy2MRHJ4RNinCx40w50hXh/ecmf9peYEk4cApGwDF1nsIgrS2i0u0GHWWzdKso5TvAw
 /vbgn4ZteDvh7HteeR2l4tOHFe3folHnJdEktA4cjgbg8gPbkNyrCwzzZlfakye92DKu
 k++Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=RjO+U1+VNdBV2gUvNtl1hA8qIVDLyU6x+S8pv+zOymo=;
 fh=A1GUK50m7F8eW59DDrVPb5ke+2FkLAnKGhJbl8C+y34=;
 b=BKm+WfPHKwzNW8AvUnbfQ5GuYJGHlcjhYOT5z0+huziByw/W02JNWqXnWub5oDs3xr
 NbanWwAFIksXNtaTJ+LiSyRxk79c9wSGIO3N7SmcxG8/iEr5rTtIWpt0xBr5cvuFJsfT
 zHHkmOQMSAfiUX8B4Thex1PAicnIHDFBBqiIq+PiP//fFTxRlRnET0TW7LzCTiaQncUj
 fPFEPDBvztA8AywaYVO6bIHn8DgdzRO642hjElwDTeoUznE4XIi8yVvujAr99EuB+lNk
 w6RZmj8RE4DDWSGEJ8fqU051eFyrggRhlhZWcfqkx8oJKQwdQNlNsKTk585SnUEEOYpa
 5Ydg==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781202392; x=1781807192;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RjO+U1+VNdBV2gUvNtl1hA8qIVDLyU6x+S8pv+zOymo=;
 b=G6Xgo/P8NyXgmwFe/AprYq3vzzV1ZJ24UL1rQ8vN94u3M8a/hTdaS9XRJy4hRStOOE
 y+M6VHqk9H1JgtmThYjDsSqixKOzvNduEyn2VcZlaYBpx4WkNlYb72VPHkkE8qr1evUq
 uT+Uj2p8FIt1/8XjYDCWvRRoooyh3jDyPOvDOCg580q05XrVNSKoyUot4ywt5jZs2eXg
 +RKCPwsqGFvh0f5H2AJphoFPrImyCBX0hICXABfc8Vt7Z/A8URJJEho5QeB68L/NwvHe
 cIjfhLKmkWjWdxTuZzHpjEcR+U+0hE12pOMWEzecB4wSZ0cbG58EYN0c5T8rCQShTIem
 LulA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8YfgGgSYig2072QJ/8yuYZcXrj/a+rOXQLEWgcq+WeLItd0Jx0292eLAd+NHPddcjyNv1esPZ35w3jcN/Yhmc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxaxEm7rYRq9O91z4JooUHT7D8DCua+My/bgJh2WtB0gmp0BSc+
 Do75OwTH/mk24Tp+o2WcZZ0ixX/Om3tEIaz734GfwdTh/0daEg32QNhdedy5klgaR3HugO89LWd
 S/kRE5en/jmwtuhMbKPxRbav6hjCDEMQXn7o7ARvT
X-Gm-Gg: Acq92OFp4cuiU6C5MSXQCbuxhOY/qFKsTlKSn6kPI2lHnEuyY7L7CF3X4TVnKhEFk9q
 Er6m+kakDvxQQsvXrewhcFQdtRULtMtMjyg3r1aQVeqlnfQb6uH45mH5G+QtMF20LoxMtysches
 cJ06V4pezaLUu6ZNwDpsXBEU7gV3wTNnVdEkK/EYoQXupQKLtwNz++SkxmPES5NCyJ+R9Tfni/V
 X6CLE9R8z/eL3SS9UDn+Q6i5qjM/DqG9gmxsimb0EyboJZJN1G4j1npE/P9uUTnMlFdJbL0ybJG
 RDF1NiEO/5NW7+FJbe73qsaUiBSjQSojf8NfaQ==
X-Received: by 2002:a05:622a:130e:b0:510:f9b:fb5f with SMTP id
 d75a77b69052e-517fb08448bmr937311cf.16.1781202391118; Thu, 11 Jun 2026
 11:26:31 -0700 (PDT)
MIME-Version: 1.0
References: <20260611002437.1671401-1-digonzal@google.com>
 <b601d0d4-d472-450d-a966-e18c9642a433@intel.com>
In-Reply-To: <b601d0d4-d472-450d-a966-e18c9642a433@intel.com>
Date: Thu, 11 Jun 2026 11:26:18 -0700
X-Gm-Features: AVVi8CeVv_8rnqLZqyyC2rJzhiRpf4iydHkPcuGojuZUr1GdzQIsaDm1AuaaoYo
Message-ID: <CAH1CuA-zQveU_pzopVMnDM11Kbz8wTzMP=SvSDBEq8Tk3RaebQ@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1781202392; x=1781807192; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RjO+U1+VNdBV2gUvNtl1hA8qIVDLyU6x+S8pv+zOymo=;
 b=HyDBOE0Z0mdAIYeoWnkSSDfViWgNob6fu51mEgkKQlg0yIsjGRIN1tgm5nxZN1e1xh
 RykeD9KIw54dDpjF80261bhxmjtxa6PmC05Ia4BX8f02yEpymlG4psz8k8fxU0BbFGn3
 dTh+VNJlrbz8CUXYkBfcNc8qc6AT1ryRUSFki2LTyDf2l3h8NXMbvqwS8XHZI5F7XYpZ
 P8LNGPGG3t7gd3xbfXfYAxWiJswpJTcvfAjihZmqMJXDA30d7lhcsxq+CBCJj5u0Ropv
 zlexQTu14nB+uFrxLwYS7De5o9phrf0nr+cK2dVTXrjZ7oXC3QX3Hiu1EPUb6VYz5m1B
 GEpA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=HyDBOE0Z
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: decrease statistics
 refresh interval
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
From: Danny Gonzalez via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Danny Gonzalez <digonzal@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime,uso.py:url,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[digonzal@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0EB1D6746AA

On Thu, Jun 11, 2026 at 8:57=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Danny Gonzalez <digonzal@google.com>
> Date: Thu, 11 Jun 2026 00:24:37 +0000
>
> > The default 10s statistics refresh interval is too slow for real-time
> > monitoring and causes network selftests (e.g., uso.py) to fail when
> > verifying traffic immediately after transmission.
> >
> > A 10s delay also causes aliasing in telemetry tools polling at shorter
> > intervals (e.g., 5s), leading to inaccurate rate calculations on
> > high-throughput NICs.
> >
> > Decrease the refresh interval to 250ms to ensure fresh stats and fix
> > test failures.
>
> Have you tried a bit more conservate value like 1s? Wouldn't it be
> enough for tests to pass?
>
> 250 ms is also okay, just curious.

Yes, 1s also allows the tests to pass.

We have a preference for 250 ms since High-Freq Telemetry (1s poll)
1s driver refresh rate causes aliasing:

# sar -n DEV 1 | grep eth1
10:52:15         eth1    390.00    339.00     51.92     55.54
0.00      0.00      0.00      0.00
10:52:16         eth1    409.00    360.00     54.72     58.64
0.00      0.00      0.00      0.00
10:52:17         eth1      0.00      0.00      0.00      0.00
0.00      0.00      0.00      0.00

Thanks,
Danny


>
> >
> > Tested: drivers/net/hw:uso.py now passes
> > Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
> > Signed-off-by: Danny Gonzalez <digonzal@google.com>
>
> Thanks,
> Olek
