Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA6BB0068E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jul 2025 17:25:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCCEB611E5;
	Thu, 10 Jul 2025 15:25:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wV5uBEqi6IUF; Thu, 10 Jul 2025 15:25:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 580D96119D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752161122;
	bh=Yr9GbybC/w2sH7/MIXF4I5fw9NjZp0rHNpJWYgnlE+o=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XrbV6AaZhwPGRQDFMo1saKf3FSGBYXOKpTsUYbtNVF5fB48Lzj4R88o6fAPWG7640
	 Q/LPH6EFnaOBwSCZWDTMaWBRuPwclKwFBrJbff/we/3+p+XalFhWiW/2CyvPIkFRln
	 a51UcNdh1ambMCQNqU/0NgV875dFX7D5Ght10/Hc8VpaErqCwz79gmfTrsXRyrLPT4
	 mO3aH6Bhc/eToUhgCvymL7ylhdbXbvKwGh6awJNsydny9n69//l6RGiF4ci11AwW8L
	 t7NpgE7V8ggqknMSxfdIctDXiMEyHswc3l2sErhDQW9N/MHXSUusuS2q/JR5LhVspS
	 tsKTYrpapjOWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 580D96119D;
	Thu, 10 Jul 2025 15:25:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C8AE69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 02:10:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69EB74084C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 02:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KSkY-0VmEKat for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jul 2025 02:10:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com;
 envelope-from=jstultz@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 92C9A4012D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92C9A4012D
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 92C9A4012D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 02:10:36 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-54d98aa5981so609900e87.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Jul 2025 19:10:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752113434; x=1752718234;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Yr9GbybC/w2sH7/MIXF4I5fw9NjZp0rHNpJWYgnlE+o=;
 b=B2oOTQPj+QpilkN6ZxFbe9QIuzCJxyRU5dmGZ2v1sd9o2cvrZ/+A/cDZScGCjRPe7i
 0EJgwXTRFKGuGPlUnskK4XOyifHnpPm/8edO+x9ZkCJzZkgtzUuJZwImTDnscvw8mDic
 Ru4vJbswVip8D9mtdN/ITdZ9lSXE1EBOImBUpJ7l2wVejnf/DG7X3x+3SfiuK/kHV9As
 49qryR/J2gsN0hF/PhACMICkP7nNIxqC+tLDT2Kg7Dj4Okj1v7iKi/I+/qIe000XHsBq
 AaSKmX9CAb9oTVP40m3O+T2ODCvTYAvmzDqji8zY/uI+DNYQp11eoyfYG54f7hUJAlBF
 UpnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXPl7ks7NH3RIteOvvIe3wa5EOwyzVlAjPnkgBoRb6aYOTkfd2TEb+Q52MjYV68D8RgqgfGOxREQ6rAZWa5BIM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxkguzK6cFpuRks4I7WR00bB3dKT2W1SLN8flYj6/MohL/p5pGA
 urIY01jlZMhj4xTP/9/GMJlpcdGnt6W8inhoFxgiIrXvKvhQfs+TA1Xra1n3GQCFXCj8RxqmFEX
 yH+YLBqp1Cz0KpxiY72PBY0KfmfKjvfxSiHoQ4nk=
X-Gm-Gg: ASbGncuKnDdhPW7HJNbKUKz/dPrkHs8j0yKIP6ex2YUa2r30TnB+FfjJa5p/sRAdprz
 0qiLCzwl0839l8BAhzaXehtGRndsQ/ik2m3oiIRd5TTH2ZBgvAoEtZcfZ4o42RHb+UfW7iHSaH2
 akLuiKl0BR/5S+WFd4vn9uBlfQA/noK0GdZcjNgpFjtRP4h2cpyux+clc7mfUOQz20xYoXYA/N
X-Google-Smtp-Source: AGHT+IF7CSRMfXUjWAwZfGydsjg8g4cFnxch3Xoi14AEJwAmrBxN3hebeIFO3GyVLoADPLLKkeaVoOM8ZqUO+Qdos3Y=
X-Received: by 2002:a05:6512:74e:b0:553:263d:ab97 with SMTP id
 2adb3069b0e04-5592e2ebbf9mr191604e87.1.1752113433736; Wed, 09 Jul 2025
 19:10:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250709-e1000e_crossts-v1-1-f8a80c792e4f@blochl.de>
In-Reply-To: <20250709-e1000e_crossts-v1-1-f8a80c792e4f@blochl.de>
From: John Stultz <jstultz@google.com>
Date: Wed, 9 Jul 2025 19:10:21 -0700
X-Gm-Features: Ac12FXyw_-ZFqOEmEG4gp9Vh5ErvO2eH8QSE_aH1c-f2EfnXicZgK4MYIbiWaVc
Message-ID: <CANDhNCqQ0JgCN+5sThMT3nnNxVHR351LM75eUMqMaHucGyhneg@mail.gmail.com>
To: =?UTF-8?Q?Markus_Bl=C3=B6chl?= <markus@blochl.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, 
 Thomas Gleixner <tglx@linutronix.de>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 markus.bloechl@ipetronik.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 10 Jul 2025 15:25:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1752113434; x=1752718234; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Yr9GbybC/w2sH7/MIXF4I5fw9NjZp0rHNpJWYgnlE+o=;
 b=M6gQdG1ctyQoWFEDka18b+fSqlgaxb2EbDnoRMdZoZlhlujMjO/DuxvbcTikdJNrYP
 pdGM99grF6Cm7htv7F+t4vhu1w9//oZGiafdb03JSJT08PwCZqau33m1tXqtP99lzN1s
 Cp4J/2GLRAi0jazxZztDRsE9LJYIROiWA/d1D5/Bb/OFhwMQ36BD7nz6sOsU0uhUHPEc
 o3KnkcJfeGVCNUC/6/mfGxFZr4dfoKJ31/Adv3tSVk0pE1DshytRJtQF3AURu11UNHog
 pDMEP1S0RiJ9LdELcCmNCW1RGS2khifr1HkC7Ln+bQTYQtZDL89nrC5zl07Fe8XGNt6S
 nSlg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=M6gQdG1c
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Populate entire
 system_counterval_t in get_time_fn() callback
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

On Wed, Jul 9, 2025 at 7:34=E2=80=AFAM Markus Bl=C3=B6chl <markus@blochl.de=
> wrote:
>
> get_time_fn() callback implementations are expected to fill out the
> entire system_counterval_t struct as it may be initially uninitialized.
>
> This broke with the removal of convert_art_to_tsc() helper functions
> which left use_nsecs uninitialized.
>
> Assign the entire struct again.
>
> Fixes: bd48b50be50a ("e1000e: Replace convert_art_to_tsc()")
> Cc: stable@vger.kernel.org

Acked-by: John Stultz <jstultz@google.com>

thanks
-john
