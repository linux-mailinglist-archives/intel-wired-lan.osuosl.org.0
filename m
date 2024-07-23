Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84653939CA1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 10:28:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34A178109E;
	Tue, 23 Jul 2024 08:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id foIs_B0VSHrN; Tue, 23 Jul 2024 08:28:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9990A810BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721723313;
	bh=VpSaIJz7Dz5ilWwBGo8KpfrsI22OPQJ5ujE4om0cTig=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UNRSXhBJMnRyFU7K8A786zEwWQqklTGSRZb8RiGDAs1uCN9vUQx9ApDwfNFfSNvfN
	 db35DUDaNixP3nWBTbpPfRVlYHxi0RAq/k1uFalZ8hn4DI2M0mAA7fvT+ht5XKI9IX
	 LVR9kUjXQiBpNEm6kGonOvpcGcU6L2w+rI/xnlGXk3WSWOEcpxmXOIbh6EyUIZ37PL
	 4vfBWFdgumUwyUH5LZRepzORf8KKz14GBCN0/3Zyyq6/gBUKQhYZ3p7fOYmmZGhfWf
	 XrIKBs23lfjtoxJz/Cnd+Mq7tzOkg3QUPBK+y2BRaxgCRHNnuq9JRFXul3Fj1M7t83
	 BiDsvAfaQ0wfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9990A810BE;
	Tue, 23 Jul 2024 08:28:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 215381BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D4FC403E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RCMNRawOeKsN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 08:28:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::533; helo=mail-ed1-x533.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EA1A3403DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA1A3403DF
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA1A3403DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:28:30 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-5a28b61b880so8400a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 01:28:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721723309; x=1722328109;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VpSaIJz7Dz5ilWwBGo8KpfrsI22OPQJ5ujE4om0cTig=;
 b=e48ulHbErC6ZIsOpq3iZnuvXdOCeexUgQqkrZeRlviBk6aTkpKdiVy8UR+IvRosYI5
 cyOAbgQ9ytUiaLT2ICRnJZm0JQ7SOehbk9HKOTm+riwg+XV5YjYdVtEqilgunNcxgVD9
 tecWHiahLYL8r9wb5HxwlVwvg1sqjEMGJ5lg8i7972C7eUlCGPk96OrCPtuYx0eV7OcH
 qPDmvvRA9z6GZvBdhUc5ncYRr5K4x2mh5gB70pH1Kt82FI21wGMYwakTDzLAh2waJ6i4
 hOmhhSaBFdzuAo//FLvvs4PJXKSCkp77nIeA0F63Y420gnNrDqEw6JmxV/L+gq2Jh7Ex
 RFEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVxz9YiO1SDshCScSy04j8Qg2gc84YlV70DRuRCnf1IHqrPd4MmmsTNf0iMjdrJn5R8pOICwAj3S++GqFCnFNHdMo28YyT5Fwnu64irgOydDw==
X-Gm-Message-State: AOJu0YyyvDI6pa9FXYD0m5AF2T3IUJKNr98ChkAtjfAqyN/Z31unQ4GO
 zmDWQrbT5ey7K3AleXT6IryEIMyatdTOEkQzDwj3RDeRaHbHIok9mXyn1dSRfuX+TUOWozWBHJF
 kmdK9k/IdCAhmLJbjRP9a0O3sAZQ5ZpNNWIXh
X-Google-Smtp-Source: AGHT+IGUsJ23axFKbLw/h6tDqgKvi522rkbCed2vAtvFeqISi98yaE8W5qB6MxniPm++JgNUlpTnM+19V3FpqmmP1to=
X-Received: by 2002:a05:6402:5254:b0:57c:b712:47b5 with SMTP id
 4fb4d7f45d1cf-5a456a63b69mr461088a12.4.1721723308479; Tue, 23 Jul 2024
 01:28:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240718085633.1285322-1-vinschen@redhat.com>
In-Reply-To: <20240718085633.1285322-1-vinschen@redhat.com>
From: Eric Dumazet <edumazet@google.com>
Date: Tue, 23 Jul 2024 10:28:17 +0200
Message-ID: <CANn89iK60X=ugZysD3Njs2FUQth0-s3anEHUv50EKzqZvDm6jw@mail.gmail.com>
To: Corinna Vinschen <vinschen@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1721723309; x=1722328109; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VpSaIJz7Dz5ilWwBGo8KpfrsI22OPQJ5ujE4om0cTig=;
 b=i7pNgWCcToe59GZf/uapb8XrQ9WvZcfThGeFfnbqI+rj/mZB52l8xe36DbeTXpfeOu
 WFm53zglViMFh+8gDWGaKwucfMMuxPp7SvsPlqxcV6e77Ztu/0Ssa1+X/JOsHCfXtu91
 Og72utUDn0iTI+J+oY6p/kEJS3pBBiTJWIgvehoa848bOB8onktjKDKhUqPMn5dKorSI
 XPSyj/eI1eoF2EddeNVe+U2Ngxh8iqkZR9VZdHX4PtKINgp/X6q31gjBIJTO8AqnPqZm
 6oNLNL6hBhnpTIdyzlOwP2UkSXr8mZ4lVmw9PXlaFM6MN4nBuN4IFsEbYuQBZUkqS153
 0cMA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=i7pNgWCc
Subject: Re: [Intel-wired-lan] [PATCH net v3] igb: cope with large
 MAX_SKB_FRAGS.
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Jason Xing <kerneljasonxing@gmail.com>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 18, 2024 at 10:56=E2=80=AFAM Corinna Vinschen <vinschen@redhat.=
com> wrote:
>
> From: Paolo Abeni <pabeni@redhat.com>
>
> Sabrina reports that the igb driver does not cope well with large
> MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> corruption on TX.
>
> An easy reproducer is to run ssh to connect to the machine.  With
> MAX_SKB_FRAGS=3D17 it works, with MAX_SKB_FRAGS=3D45 it fails.
>
> The root cause of the issue is that the driver does not take into
> account properly the (possibly large) shared info size when selecting
> the ring layout, and will try to fit two packets inside the same 4K
> page even when the 1st fraglist will trump over the 2nd head.
>
> Address the issue forcing the driver to fit a single packet per page,
> leaving there enough room to store the (currently) largest possible
> skb_shared_info.
>
> Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRA=
GS")
> Reported-by: Jan Tluka <jtluka@redhat.com>
> Reported-by: Jirka Hladky <jhladky@redhat.com>
> Reported-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>

Reviewed-by: Eric Dumazet <edumazet@google.com>
