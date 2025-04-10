Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8435AA85026
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 01:34:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F6B480EFB;
	Thu, 10 Apr 2025 23:34:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ra-fo8AdQeqW; Thu, 10 Apr 2025 23:34:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D1E680DF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744328044;
	bh=4n/FwtPj3AAf74gbLffBrAWfSmzkE40dm/SUrEqLig8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3FK8dRdQ1jKnwPcPpCZKbs3ttTvJKcB4r2inql0jQ2xx+Hkvs8dIyXpiW/sDYX23L
	 kDHMvHBRouFB1zu3a6BENa3pSZt0YM1PAyLIrEqfBPyrsS4NVCb0TpdCxAcywtyEsB
	 PZIbaHzc3rljVCWZnmRWqzBjePQLtiQIvYfNJauyeVahvm3gXQcjfBs/Dfzloz6oiT
	 +n2ZRyRrxh6+FbJvAmh4+oLKCqlBQiz+roxpEpiGkpUrkb06EfI+nZd1C18MFwiU0R
	 VXxm3nSF30S8iYK4uBs3mi1JX7IF3sB4gT4Fb2DAgFAk4sHY7ilhfFGG7eA+DaVJck
	 U3g4IcosPSqAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D1E680DF1;
	Thu, 10 Apr 2025 23:34:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 18541138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 22:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE78441F31
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 22:29:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jyyyl4f7Iu96 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 22:29:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3DC1E40514
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DC1E40514
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DC1E40514
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 22:29:00 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-ac3b12e8518so225866566b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 15:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744324138; x=1744928938;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4n/FwtPj3AAf74gbLffBrAWfSmzkE40dm/SUrEqLig8=;
 b=N2Bqr3/3q/UndOuUbKq62EOucuoATXJYm3CBz5GiJe7R6qh5EAo7risZonD4m7eEpu
 w5ceWX2sphy8Gqzc2D0JY+ODFuZid7kXrgMbdFwhQiuR4pHWEmfp5SpYn4fto3LvNSCZ
 jt+FALEOC6qViQHsRy8ibYQURgcgbaUU7lx537s4YKUhf8TZiSweK8WdOzhe/q0djQTc
 Z8cQ4cum57vWFHgxUFcn/JaX+Oyuf4akLQ18Ouxcn3/KCQaZRhDnFOA2ZWtn+ITl0PEh
 yWnThn2layPG+9gwaqtEfMS+wZn1wCo86uKFPGnwwqmSIYbScWWCbyE41sgWML72nMs4
 brTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWERQppq+IRcQbsu3BkJ5NVsWZ4Dzzb/IZ97j32fWVSKPxsBbDSTTnHulcqCut5LADcvImynp6H6UUnD1LdT/w=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywo32WLCxgDDZFbtBn5/tgDI/oS8E6pjjW0FC1f4UITqdD9u1RB
 CexcBB8ci3kXJqc6OlfYed1jTdFOtNS7FW9sSpUPts7hL2T2d/PTeJE037CHX+19ZoJmucHF832
 gs5kEj4MVWwR/D2piliZkTmIg9HCtW1MxGaS9BA==
X-Gm-Gg: ASbGncvIdAeLaqW4eJsP/IymG2LoSBx8qkTzH5ukM0sHlpObFYQtj7WLXO1SfVU6Suj
 uFN/64A7hFnSUD0S8G1giBGKv+T/lznB5SU0rvqYsEkp43GiSYAhRjXDYKG4pGe/dH+ZhgYLvIp
 U6GoVfDNhuTcC6qq2jCfelo64a0gGjgTiuV2th/g==
X-Google-Smtp-Source: AGHT+IEPSCK0d+fSYNjqn96/dj4+5mPpvYHcyJ0yLDuA6dnarQOi/CVsvuSExvJEyZAY7mhwfsL1Ulq/JS7+j6fbYkE=
X-Received: by 2002:a17:906:6a0f:b0:ac6:bf3d:bf45 with SMTP id
 a640c23a62f3a-acad352f4edmr32885666b.36.1744324138189; Thu, 10 Apr 2025
 15:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250407232017.46180-1-jbrandeb@kernel.org>
 <afcafd64-d7d8-41cd-8979-c76aaf4c1b04@intel.com>
 <8580a516-0bf0-49f0-9431-cb8f79fc4f83@intel.com>
In-Reply-To: <8580a516-0bf0-49f0-9431-cb8f79fc4f83@intel.com>
From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Date: Thu, 10 Apr 2025 15:28:47 -0700
X-Gm-Features: ATxdqUEHlXoVSViGR1ujxyLA1yqOXe9xtZpBR8XJBQkjnvrlvbDwJHyxoEjLCEM
Message-ID: <CAB1XECUHTeA30j=NpLSQxTNx-KFaDzo55Bksj9UCZg=pHHNCCw@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jbrandeb@kernel.org>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 10 Apr 2025 23:34:03 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1744324138; x=1744928938;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4n/FwtPj3AAf74gbLffBrAWfSmzkE40dm/SUrEqLig8=;
 b=fDRBM8Q3EGr5SVjJZB7kzlzRvpmiAfkklDgpBi6SztAyrXo0obrIbdbWepIWPXHuen
 BMYlqlO9/dssQyFpGvxcTnG7oGpyYlNIdtSx2/jbHCCLhiw2pRax55LdiDhOfR1wGHx/
 LGjygdgMZqZHq3sV5ro+tWkr7xpuOkxw0C7gZ/a51HnjNBW4gJseARtoRV2dwewkil22
 tU5bpHyu9Ob5gbBDceBiXVf5iMUk4dR8DHWDpRQbhc7amRoZjlEf/KdMLrtJTz/JVesq
 xiCtlPBFdTCwIU2b48fpafjR7s09Wd+sjFr5TDE6q/R1spJLYqb56T7+12vOk0OHoNlS
 N6TQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=fDRBM8Q3
Subject: Re: [Intel-wired-lan] [PATCH intel-next v1] ice: be consistent
 around PTP de-registration
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

On Wed, Apr 9, 2025 at 10:01=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.=
com> wrote:
> On 4/9/2025 2:54 PM, Tony Nguyen wrote:
> > On 4/7/2025 4:20 PM, Jesse Brandeburg wrote:
> >
> > iwl-next, not intel-next :)

The brain rot on unused cells is severe it seems :-)

> >> -    if (pf->ptp.clock)
> >> +    if (pf->ptp.clock) {
> >>              ptp_clock_unregister(pf->ptp.clock);
> >> +            pf->ptp.clock =3D NULL;
> >> +    }
> >> +    pf->ptp.state =3D ICE_PTP_UNINIT;
> >
> > Hi Jesse,
> >
> > It looks like we get a proper removal/unregister in ice_ptp_release()
> > which is called from ice_deinit_features(). From what I'm seeing, I
> > don't think the unregister should be done here at all.
> >
> > Thanks,
> > Tony
> >
>
> +1, I think a v2 should just remove the entire call to
> ptp_clock_unregister here. It's the wrong place to do it. It causing
> problems is further evidence of this.

Ok, thanks to both, I'll see if I can spin a v2 and eliminate the
extra cruft. This might also explain why a second load of the driver
fails to register the clock after the double unregister.
