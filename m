Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D93C3B0E299
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 19:29:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AB6C413CE;
	Tue, 22 Jul 2025 17:29:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Kv1O_Khw4mP; Tue, 22 Jul 2025 17:29:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F7004105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753205373;
	bh=wAsiexFpJG29+h65JJPZFpAJdqh8AwtAuRFszUNX74E=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xB0T8VOcASsnOnTDN+KwVlUt4GFDpQSSWLb5iiJlv/wDVbL1KKJqnP8WGUBflzKuM
	 xwaK4SVEyCocuLlX+98Crku64/Y7bTUuiTPjsdU6rwmh+aDW/C8kHnN4JA/aNgUexk
	 YAUVqZNvO8Cv35uwe7+aMcx8xYfd8JQtsNzKqBR1rvUxiNsBI9pV7MLhDwJQxuIrwB
	 i/Ygh8rTWv7F5I72EH1eqVof3u+CJMz2/pMXPRoEPtYytA/wbuTH95eA1NEXCT+zTL
	 RgPW6mtEcKRmBI6f1antU5NxprvcPwrmB0Ju3sWmgmGvGYLiQagRuLt6FtECYd/8Cn
	 aBr+yg6qwH38A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F7004105B;
	Tue, 22 Jul 2025 17:29:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A3CDE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 17:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5BACD403EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 17:29:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QQf2hn9FGXHS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 17:29:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1136; helo=mail-yw1-x1136.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AFAFF40072
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFAFF40072
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com
 [IPv6:2607:f8b0:4864:20::1136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFAFF40072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 17:29:30 +0000 (UTC)
Received: by mail-yw1-x1136.google.com with SMTP id
 00721157ae682-7196cb401d4so32602157b3.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 10:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753205369; x=1753810169;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=wAsiexFpJG29+h65JJPZFpAJdqh8AwtAuRFszUNX74E=;
 b=EtGB7qkssPvSnLRW+4h0cf5yu0NlNZjRYXPROOyvOlLAiO0zXWEuzgnTiTJf14hoI6
 opyem/ZhLhjUkudxBGKl8o1wHreaU8Y6RvD0YJzM0/tX+A7N/MQH3p9w2/m2RdYiK3ta
 UZlV9f2QAjWTHBLsaefTDsWJO8p5coc92FPB5IOujlRVjJPOUrreWJ1W2I9vBI22Q3Um
 iQziTRp8uRA7yREVFZxCJQn8EsfXxKLjVaSBZV+jRu/yiXWYXyxJB+4GzBqG8LPSTjNu
 3vwC2h1ZswjdXFvvNkF03STsIuGIcqJhhb7KG+I894ikaxGT/LoxnEp6FecVQIEcTeTM
 vjzA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVv54ZWu89YikbV+45QUKkqFdf90ygFfCeVLWIkiGVjE8OMFESEC+f4hz5a2YtLgIBrvg1zgUPEaS2cq08TYCw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzGHSQRmEBzxPKVY4x0TVsbiZ0KNLbLkfsVDOAULkvhytoP0d0y
 IKwZrt3uY7vGj8aq1rWPXCZqtwn+VYoNxoetTMXu8reaz9f35pcnmnLh
X-Gm-Gg: ASbGnctw+7+DFFlTY7Dh7wkDlPc37zB+hsTc3S0pgPfR0mrM26/da2rysojDY6z6qrG
 YwVV61TgqkZzvjPzUcdRWymkPUgVGsarxlsEwzYnw+I4IWqtETpb4C6y0q5TAZ5TNgKWHbfRv42
 tVISUGIQsuNolodLOxo47w56eugdCHSv+DJo5OGq7nchrSGfRhMFIdUal1gNXgRfcrVSouRwP+l
 LwVxUvloXG4zGqru7t0I8e1Yx3DpySbDByXjr6Bc8sM53IZYjqZYJseh3PcASCtgDYl6AOn0edh
 lECtLJYRT45acFzkD2nn+0hD/Xk7pmsr/sn+loIBv4OH/uKOudUevGzaN5ZYP8VRL5rztgs6kLO
 kmBgQRY3EwnWqpwalfRcbzNuPm4LKz8/jViARS2//PM7HJX4zbKzXuGt8Sk7GLpzoYCyhQg==
X-Google-Smtp-Source: AGHT+IF7A13lSEqts+dgqsU65x9gG5+n8sudziRUQP5o9tvzg5UXPLY2Xux38fUj0ahxVpgCIrZuJA==
X-Received: by 2002:a05:690c:8c08:b0:719:4bd6:8ba6 with SMTP id
 00721157ae682-7194bd68c99mr168256107b3.20.1753205369278; 
 Tue, 22 Jul 2025 10:29:29 -0700 (PDT)
Received: from localhost (23.67.48.34.bc.googleusercontent.com. [34.48.67.23])
 by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-719532c7cc0sm26018107b3.70.2025.07.22.10.29.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jul 2025 10:29:28 -0700 (PDT)
Date: Tue, 22 Jul 2025 13:29:28 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Jason Xing <kerneljasonxing@gmail.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 bjorn@kernel.org, magnus.karlsson@intel.com, 
 maciej.fijalkowski@intel.com, jonathan.lemon@gmail.com, sdf@fomichev.me, 
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org, 
 john.fastabend@gmail.com, mcoquelin.stm32@gmail.com, 
 alexandre.torgue@foss.st.com, linux-stm32@st-md-mailman.stormreply.com, 
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Message-ID: <687fca7852e84_2cbf622949d@willemb.c.googlers.com.notmuch>
In-Reply-To: <CAL+tcoC5KnTuWKxKcUqFGh-nBSF+X+RWzr=RkkK86+jY1Q20Kw@mail.gmail.com>
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-2-kerneljasonxing@gmail.com>
 <8c9e97e4-3590-49a8-940b-717deac0078d@molgen.mpg.de>
 <CAL+tcoAP7Zk7A4pzK-za+_NMoX11SGR3ubtY6R+aaywoEq_H+g@mail.gmail.com>
 <687f9d4cf0b14_2aa7cc29443@willemb.c.googlers.com.notmuch>
 <CAL+tcoC5KnTuWKxKcUqFGh-nBSF+X+RWzr=RkkK86+jY1Q20Kw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753205369; x=1753810169; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wAsiexFpJG29+h65JJPZFpAJdqh8AwtAuRFszUNX74E=;
 b=T8aNFCxuTTbXpVIZRsj3ps9JqBtulRQ3AgS7Q27tgNDykvnzzD5rUpXtMu8NsZvwii
 RQBVMsQ/TpG1psSdlw9HCdgnDKqnw6NZW/MmzGFUB98kGHOVK2gBh/ioYX0CBIyoDZJe
 gSjObagZJ6mSJjuFA9JoJfloeWqeumU2OhaRF4asLcMLL/2H8z+TLGeaX0lHU9ak/wRQ
 KHDbbD+d+h/jMKIQoAusMZfYaofN6MuPsy3rCamZ69y7oUvj9+RpNCal5bS8THWD+tXz
 jtIBh4SKfWGeLpnUhc5MiGfMadlq7P8mUucfYPCMtm/ZuDL4mSbwRl4mGZBrTcyPNouj
 ziMA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=T8aNFCxu
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] stmmac: xsk: fix
 underflow of budget in zerocopy mode
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

Jason Xing wrote:
> On Tue, Jul 22, 2025 at 10:16=E2=80=AFPM Willem de Bruijn
> <willemdebruijn.kernel@gmail.com> wrote:
> >
> > Jason Xing wrote:
> > > Hi Paul,
> > >
> > > On Mon, Jul 21, 2025 at 4:56=E2=80=AFPM Paul Menzel <pmenzel@molgen=
.mpg.de> wrote:
> > > >
> > > > Dear Jason,
> > > >
> > > >
> > > > Thank you for your patch.
> > >
> > > Thanks for your quick response and review :)
> > >
> > > >
> > > > Am 21.07.25 um 10:33 schrieb Jason Xing:
> > > > > From: Jason Xing <kernelxing@tencent.com>
> > > > >
> > > > > The issue can happen when the budget number of descs are consum=
ed. As
> > > >
> > > > Instead of =E2=80=9CThe issue=E2=80=9D, I=E2=80=99d use =E2=80=9C=
An underflow =E2=80=A6=E2=80=9D.
> > >
> > > Will change it.
> > >
> > > >
> > > > > long as the budget is decreased to zero, it will again go into
> > > > > while (budget-- > 0) statement and get decreased by one, so the=

> > > > > underflow issue can happen. It will lead to returning true wher=
eas the
> > > > > expected value should be false.
> > > >
> > > > What is =E2=80=9Cit=E2=80=9D?
> > >
> > > It means 'underflow of budget' behavior.
> >
> > A technicality, but this is (negative) overflow.
> >
> > Underflow is a computation that results in a value that is too small
> > to be represented by the given type.
> =

> Interesting. Thanks for sharing this with me:)
> =

> I just checked the wikipedia[1] that says " Underflow can in part be
> regarded as negative overflow of the exponent of the floating-point
> value.". I assume this rule can also be applied in this case? I'm
> hesitant to send the v3 patch tomorrow with this 'negative overflow'
> term included.

My point is very pedantic. I think these cases are not underflow.

But it is often called that, understandably. So choose as you see fit.
