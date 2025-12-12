Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B68CCB9825
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 19:04:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B07B660B1B;
	Fri, 12 Dec 2025 18:04:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 888g1nT8b0la; Fri, 12 Dec 2025 18:04:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35D5760B49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765562640;
	bh=vLJwiOzd5QBWEOcNOqO5WOFZpxkRhHNUYE/AiDEwtTg=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MTyebOp0VKlq0dyU91I9QMN6f95JGlieOJp5nxOJYu8+5PfVuRdFsS+532hZDU656
	 nmipYCdLQJSx4ZZsx9JULsHB/IE+BHgZ2b04yAaB9VPa5aHZU3XD4qe3Bs4Gp6Fk2a
	 0li34WeEf6frUU3g5eOND5RY7DtfiyT5Bx/ZtMHbIn8EmEiyTNkBZr7q8zW4YfMlBN
	 yno+o6KSH4qpMJn48lhnypegEENVJZu/gjhejeGDzPUZeNbCKKsmCBHgWqNMx6oZC9
	 E+IN0wis6e7whr6klqYio3MZGFbcK05XZs9+HL868p6ugaX5NCzjdAbFXB7rB/vFEF
	 uiI69hTav3g1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35D5760B49;
	Fri, 12 Dec 2025 18:04:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B0992C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 18:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57BA6411AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 18:03:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z5REmEtWKHGR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 18:03:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b130; helo=mail-yx1-xb130.google.com;
 envelope-from=chaas@riotgames.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 584AE40377
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 584AE40377
Received: from mail-yx1-xb130.google.com (mail-yx1-xb130.google.com
 [IPv6:2607:f8b0:4864:20::b130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 584AE40377
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 18:03:56 +0000 (UTC)
Received: by mail-yx1-xb130.google.com with SMTP id
 956f58d0204a3-642fcb38f35so1379584d50.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 10:03:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765562636; x=1766167436;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vLJwiOzd5QBWEOcNOqO5WOFZpxkRhHNUYE/AiDEwtTg=;
 b=nQItmUNEu/t4j9r7jEgpp93yF1uxtB4GMPUZb9f480GP/uwZQV4aLjrDOgaVxL1yuU
 mn5hZ1SVn+gImBxuNfuLM+GYOoCDLizE50epCVwPRqu3+UlQs/ajegfdftq5bPkzja+f
 yNSn023fg9ZZ6PJwVnXnyVCnnHWDOpoWpdYSenH+ILJIPbPEK2N/I/isfXUPBBIGDleY
 x40emmqu652UzDHBreNXvqedxepXmmEalCnlrWsrmiEwmIRy5jss1n2CrW/Sy8MEQ2rP
 OIXCuG/J6VJydHF3Hi6dPc8XScTkZguS4RP3JWLjoOuMMyI90TYAUuCPgTtk/IknPH0t
 Xv7A==
X-Gm-Message-State: AOJu0YzYx71lkBHxPbTQNay4EOgaa46VbVVokN6Z8oSSZDyvVP0D3xNN
 xV+bFU+2cuM7o05AIrfxXT3lFFRZcZf/w8wPqP7qkGHF+vwJ+VU998vFAJc+etgmxoke/h5oiBn
 SYAWRr9vD0g8N+/bPkC1xmCPE95qOZZVjd5oJZDZGdQ==
X-Gm-Gg: AY/fxX4UkFax4UKmeH6x/hi8haPHfjZry8K4POPhrb7GySClS0LnY2GGPMx9OeLlcfl
 4IqStLg6tq9O4mfOiudOXvD5XiNPGMgIVH2Bdptrox6MWW9Kp7gT9EfdOtD1RFDjeLg59Lg3jVW
 rtb9BSjMEPfTDVqwf74OfIymLTu/vgBuld4ZOhODXiYc2lACUDRMIglN47RFuinE2PfuiZYo6+P
 +jufFzjkUDXQRtNQv1y6Wv4kOeZ/HrPIzerQOgdqCvWCvJt0zalieZPSA8VeJM4Zu4XmCAkDw==
X-Google-Smtp-Source: AGHT+IG9Wmaj9tGrg5LrQ6ymPfAHjhtNIoT2ICSF6GvnuoqK/qbnwIHHXChfKBJF1XHooPBfmeOXyvVc3aXYOtBtyGA=
X-Received: by 2002:a05:690e:bc9:b0:640:b501:d7dc with SMTP id
 956f58d0204a3-645555db887mr2136024d50.23.1765562635668; Fri, 12 Dec 2025
 10:03:55 -0800 (PST)
MIME-Version: 1.0
References: <20251203184909.422955-1-chaas@riotgames.com>
 <20251203184909.422955-2-chaas@riotgames.com>
 <fb53b7bf-9d4e-4492-9d99-90e7e8105205@linux.intel.com>
In-Reply-To: <fb53b7bf-9d4e-4492-9d99-90e7e8105205@linux.intel.com>
From: Cody Haas <chaas@riotgames.com>
Date: Fri, 12 Dec 2025 10:03:44 -0800
X-Gm-Features: AQt7F2r5UAKw7uigZ48Mry0BFUUaBjZleqxyLgA3XinwLRDFSiv0KSoqJjAWuGc
Message-ID: <CAH7f-UKky3CCzDXB42eyCagBMLML-0isyQpf5iW0sFMoEE9Ymw@mail.gmail.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 kuba@kernel.org, pabeni@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames; t=1765562636; x=1766167436; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vLJwiOzd5QBWEOcNOqO5WOFZpxkRhHNUYE/AiDEwtTg=;
 b=AM+gm63D+8kCmf/aH+GDghwZDji7SuLqqbSIg8e0Ml1FNZRx7S23txSi54HnQc3zW2
 zSwgnDK+WGGbJw0f9wxr0s//zGiNscfLRMWVPIDvoGjIPozEAXU7LKrBy739hIPONSXC
 /llOYfN8yyVlul58yk1l94G0lnC2Dfc9zgM2k=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=riotgames.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=AM+gm63D
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] ice: Fix persistent
 failure in ice_get_rxfh
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

Thanks for the review, Dawid,

On Tue, Dec 9, 2025 at 12:51=E2=80=AFAM Dawid Osuchowski
<dawid.osuchowski@linux.intel.com> wrote:
> typo s/iotctl/ioctl

Acked =E2=80=94 I'll go ahead and fix this.

> punctuation: missing space after "For example,"

I'll fix this as well.

> nit: in function arguments "seed" appears first, maybe consider
> switching the order of the if statements so they appear in the same
> order as in function declaration? It would also match the i40e
> implementation then

Same with this one. Thanks for taking the time to review it.

Cody
