Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7C8CC9EFB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 01:57:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F02E83CD5;
	Thu, 18 Dec 2025 00:57:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EBEVV6bbXAvs; Thu, 18 Dec 2025 00:57:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCB4783C93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766019424;
	bh=Wn8IVSKBKjdKQd+Seeo1vN6CZx6+S91YD2RyKFE3rmk=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=wFUCvSvOFTN1nC9t2GXL2kO84f586OXnTsJG7a9QMQUdCKO9osZu7sfLw7oCFDlz5
	 PGpS2FKDSXnM7T+ySKmh+OIt0Xx0Lti/ImgpZX5KjinaeQV5ZG6/QsUExaBnbJCFCy
	 xy6ZvQ3WYukKiq8VunX6NuXPNoK1nqPn6wW2ayo0T5hL44iLOT4UX2v5f8S3ijaoc6
	 g3PmBuTUTjkKVHvL66t8I+C/SGXDNaYCWCcidgbM7JbArfzE+2NTl4S7Xaq4/hjnqY
	 R0Agv8JutsFYai4wT0fPMOoqHxKq0dQeAihF3DBFojlsHypswwIXZtRLnULNhZzelb
	 5hNe6+g2M3Xig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCB4783C93;
	Thu, 18 Dec 2025 00:57:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B413F361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AD4F4051C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z64EJ7HoM1c6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 00:57:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::132; helo=mail-lf1-x132.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BBCBE40507
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBCBE40507
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBCBE40507
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 00:57:01 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-597ceef6eebso3793e87.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 16:57:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1766019419; cv=none;
 d=google.com; s=arc-20240605;
 b=K1Xh7Su7GbDsthEIkcJZWSvLUFZ5bZl+xaCAzxeok68XZ051qtaabjm7N863NKrn5U
 3zZr7lsxgobjFx9vlDnPNAW3LjuFe6H3CFI8/N7/SWEqlKcRD88z1SZJoEaipdp4x4C1
 J8K9VMCG/aUo/tsISbggNbX1UGowk9+C5GopBdXQq/I778W/rdJ3Lto2QbGl6f0BbvXY
 OhQ0kLX15gX/7IeQ9ejRVAvmngS1hL5x3hecz4B7q3Ejrv0qlHl8oYMTUARyHgqfOhrs
 Erzb93BpbCQBy9AHPOqIUZpHU+cKn3S8B3Cc+VNzRwTcuZva/+KzHBCVV3lfvQ4wGeR3
 MiPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=Wn8IVSKBKjdKQd+Seeo1vN6CZx6+S91YD2RyKFE3rmk=;
 fh=JQEHgC+BBp7Oyf/X2FyuKpaQ0KRnw/h7s5bSty4C0Cs=;
 b=dh3KBDAmCe3R78ei19KbCSrpDLTSIjjSTY+tpjM3UxsrFRbaeXGUvotXi9QMr+26zr
 +aybDpk/XUq5k6uAx3/e1R0zXbnjSmOhWJ3UO1KExxbtdKPNxri3xz7Hh7fc2w2/oAJK
 Cm8w/GYLkUJqak9N7cFYTLf5Ds3pl86eqmYx8bjRti2ECEraX3zs04qJ91oMKGPSmULl
 FlEhDXa5AHtNFei+FrISvu+3rRfX7T7mVY/u21AQJHdQApsjOQnSXx6a3ZGJ/uqSobHt
 b/egm2deApXO2deWR/0ZG5iEwBjTQe8c2oQrh5rWC2JnP2O2IJfgcJ11wHAIHSt6t8Y8
 hJzQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766019419; x=1766624219;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Wn8IVSKBKjdKQd+Seeo1vN6CZx6+S91YD2RyKFE3rmk=;
 b=kAQcXLAQM0AD3sql7fF7zPRbAtkEXfx4B4j1GgHUGpUx7WhQnGD5FOCdDZkv95tgdV
 dUO8s6yDP054u2SRE2ZX2hnR2TE9iCobCWDPFj8UVZQGW4/pXxoqrxa4/Ikq/TdBum90
 Cdt6zSUFQbaIQAyViWyz+iLP+SP7v3KHcDcYjv9EkbcNancCGtL1CHWeOBDJxoKHsiCS
 Uyz6QggZYCIgxM4aTowVqjd/cf7pt8e3qaVEpm4gHkSoGovLvksyqTFS6iTAOFsnZdO+
 lXb5diVULQYNmfQyTq3YdzkJnefT+3UUemYTy3wri9/6eL4QkmnsrKMx4m6GycLZwoGE
 UcMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXF7wTGJlCUCgcI8OwA3P1L7il3+EvIcF4wYq6TD+HnoLa1AdgJoaSdvFIh9cXy06LmtWV9vXbngfD2ZyQHesA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwHwnzBBMDP5nZDPsGuy3vuVwx1oEFPAk+qhAuCf02I5PXSXhRC
 oc6V6OAEmkH9m8lTpcbiTXO8ytHaz2TxvSlH9r37DwtctYhVoW/cYabtQzP6n72x0AddFjWZiNk
 CHErkOdCKwI0uqU1qJrJXKgnZVFuwcdJfoxQslYaxrcQ251LJ9xQXfBzK
X-Gm-Gg: AY/fxX7GyzJ7SfDKIMxTvvGu4F6kjlXYWCv9Mu0t/vuaPJmGRdVGKqvAyZpBWmUzM+n
 BmkJ7IrWmJiFqQ5ZMsWOOlCl5CTZDYG5QBF8s/qFdbJDU8jlzrZH/oy5SVu65VAcVz6zSEefSr1
 XKiQmFtRnr2veWd+C1ijA7psAjBd/0jhmzy2w19UfN+jrNyy0rUPDPaWZXeNnv3TWu8FAaJjAVY
 CprGTIqOHM9fykQJWx5gl7pNQc1bOedp3561IJpj9e3QrXW1tm0Ie+AAlM0eYUQJ33oHAY=
X-Google-Smtp-Source: AGHT+IGGEASVHyPQ467f8qGv1ai9GzsgjLRnI7PhI1cmjlZrbY5wbMZyqExpji4t46A3XTEUAxJBJfUnsDWD8VEYR2U=
X-Received: by 2002:ac2:41d0:0:b0:59a:1205:9c86 with SMTP id
 2adb3069b0e04-59a143f4227mr7675e87.5.1766019419289; Wed, 17 Dec 2025 16:56:59
 -0800 (PST)
MIME-Version: 1.0
References: <20250930212352.2263907-1-sreedevi.joshi@intel.com>
 <20250930212352.2263907-2-sreedevi.joshi@intel.com>
 <aN1MOnqvkl7nZxZ7@horms.kernel.org>
In-Reply-To: <aN1MOnqvkl7nZxZ7@horms.kernel.org>
Date: Wed, 17 Dec 2025 16:56:47 -0800
X-Gm-Features: AQt7F2pjn7YrRxFFZxTO5s7_cgbOTqFkxgvLmV7-sRm-KXT3E1OnbII5d1Z5Hm0
Message-ID: <CAHS8izOW+TxLU9dzy08g8MBE+cZGeXwsPnrq7wWH_XrCzHHp7A@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Sreedevi Joshi <sreedevi.joshi@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1766019419; x=1766624219; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Wn8IVSKBKjdKQd+Seeo1vN6CZx6+S91YD2RyKFE3rmk=;
 b=qmAQ88yOQ3ophjj83z0EOE6slOoHGv5EAhDWzzlonhqYNKAmGNByXz8nF0FREy3C7f
 Nfyz4/iMEo6XUsLuSmtpXJSncWzD6z2OydT23iNTJfP9P1C303ep32LRdh4mVwC7hA5B
 O/p1i3FGAFYfXwB74y/fCMGwV9SOWzPc0XtmVWBVrALLM9kxPKo1m4rljaMJk6c3Jnvc
 f/BmA37tpW6wtnhzlDd5iQavkX3LqXCBkPYqE7AOIPr2xVIRb46UYnC2cwILNY1G+lYb
 PnYLpHuDkeLhU6V3/YXpgD7I/u/0SBgYh9gVGGlQXWVPtPrVQOmR3Pd2bb8ncoxEEOHJ
 h8FA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=qmAQ88yO
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 1/2] idpf: fix memory leak
 of flow steer list on rmmod
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

On Wed, Oct 1, 2025 at 8:44=E2=80=AFAM Simon Horman <horms@kernel.org> wrot=
e:
>
> On Tue, Sep 30, 2025 at 04:23:51PM -0500, Sreedevi Joshi wrote:
> > The flow steering list maintains entries that are added and removed as
> > ethtool creates and deletes flow steering rules. Module removal with ac=
tive
> > entries causes memory leak as the list is not properly cleaned up.
> >
> > Prevent this by iterating through the remaining entries in the list and
> > freeing the associated memory during module removal. Add a spinlock
> > (flow_steer_list_lock) to protect the list access from multiple threads=
.
> >
> > Fixes: ada3e24b84a0 ("idpf: add flow steering support")
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
>
> Reviewed-by: Simon Horman <horms@kernel.org>
>

Tested-by: Mina Almasry <almasrymina@google.com>


--=20
Thanks,
Mina
