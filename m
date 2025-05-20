Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C60FABD20B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 10:33:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 142F24091B;
	Tue, 20 May 2025 08:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BnSXwDbGZ6Rr; Tue, 20 May 2025 08:33:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87093408C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747730011;
	bh=CwADa1/5fzM71NAaC+Jbeng4RK+1Y3vai9r6LkZ/myw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SZJKNrgJWe3J8FRqalRM+uYh+RDuzqQjDf0glh1/TCcX3hzOyGP18RcDmSpqfWv8t
	 0r4KMbDXm4fQyvCXnKVfrHkZ7UaFOs/dPkaUcBFX2vOHhqfxxGbM8o8FYhpmjz2lxH
	 xih0+dOF5OtJeYM7d6zXTW6ja0YB0hEZnimlQKyEq1ZnWMEYUU2+bk4OoPNunCieEA
	 +Mr9SNY8qQxCpPjyZrr/4IqNdJIFDSmh4+A9aNRdxb+l78J7Kt+qANE0BgSjc+JSk9
	 vGUyEp0DIDW+b9euTFbH6mMZZqJPdUkFWzYLuWmqxvFxrKc95Rg4ZL8V2IuU5/BWuz
	 AAnHz9Ozjjv/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87093408C5;
	Tue, 20 May 2025 08:33:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 081A9D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE1E24088F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqBxIJiQ8wql for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 08:33:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 105F74084E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 105F74084E
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 105F74084E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:33:26 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6C0C4405F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:33:25 +0000 (UTC)
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-acbbb00099eso454015166b.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 01:33:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747730003; x=1748334803;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CwADa1/5fzM71NAaC+Jbeng4RK+1Y3vai9r6LkZ/myw=;
 b=Y8Etl9L116+/U98r2RamDw3lSc+SGoGm7MpYtFrqEU6XZJPMQfMyQraKQfnQlkk0Wy
 G8yLHdtqPAYRHrOwAKHqLt+Dp+Ao4mPh887ChXT8Sc7l4FyVSUuwNUjXhcAOyPi//ZGv
 dRGk5nLegdS1HNkG9hqnfMEauuAWhKQHLctngHAoOhFBwkb8Xwut/HsXDZmLe2+cf8hN
 FT070/SV3FKKxKCXYrwAGAEuLVdRxVGYD0BlFqhbXUtRsEn8ZOHQQoFeZhAjgftUse/K
 Tw7+kHlTZW0Eqt714lRAogD9mUFSPY4NEG5ZOrTEqK/c838HIQw/z5MkzvP2zx3rKjWL
 tSRg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7uj02V8hcFINyrRpBEsR0pUpS7Dyvcx4xyS6T9hRomBlfjClmxb2Et+QSnKOTZqTp0T83s6V8cfRA99paHQo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzzBdb68PUrgSAhS3e8Lp0sRMhuiO5PjeiI0Ty+sXuUwcni9UfF
 ddgDKwUEaU8nrlcNVhg/l9X80yLrKqEkMFDlFsqO7YOEL9XaVadek8OF5Pgqo7uXPd+3vJwRxz2
 wM+vkumvN7P12wdoyM5CtGIW9e2piPeOO6DnLsvpK+s92yUmvPxcTqk59c9Pq2Cr8x2hruJM5BB
 rwB7NqWfAZvDOA6tB2zKaGyfSEYoYCh1ztcdPJfmF7aAD7OT3dECQCu/qaIBq/rw==
X-Gm-Gg: ASbGncsS/2z2gFseW1+sfWT5FAP3zdsW4j6AIpe3qSCsiHnDsUIwf4Tk4jpSKoy20xw
 k0EpLUi+fLdTHqrJ32w+q6m46/ewV8p6+pyK8vMCT48B93NBavARpAntf62QDzFQ4LtQ=
X-Received: by 2002:a17:907:706:b0:ad5:a16:93ce with SMTP id
 a640c23a62f3a-ad536c21b39mr1214784266b.30.1747730002534; 
 Tue, 20 May 2025 01:33:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQIsOrzCoa9fMsKQOb5KamtkzPaDDCi/jrmWuZ6PrGIGkdsOlmhtpc/GBvgPIjQylHYiG+HYC1L59uxS62rc0=
X-Received: by 2002:a17:907:706:b0:ad5:a16:93ce with SMTP id
 a640c23a62f3a-ad536c21b39mr1214771866b.30.1747730002172; Tue, 20 May 2025
 01:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250516094726.20613-1-robert.malz@canonical.com>
 <20250516094726.20613-2-robert.malz@canonical.com>
 <72004e1c-d327-4a69-98fe-24336aa66e8b@intel.com>
In-Reply-To: <72004e1c-d327-4a69-98fe-24336aa66e8b@intel.com>
From: Robert Malz <robert.malz@canonical.com>
Date: Tue, 20 May 2025 10:33:10 +0200
X-Gm-Features: AX0GCFuR-LKy0Ar_XhfMUwJ-oSOq2GX0rFRIlGT6BKqkZgl6o-QxnOE2IVpPQQ4
Message-ID: <CADcc-bzq2BCL07SOjzdMXypE8Y4bLkAuurwZ0YwHuffdpar_OA@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 sylwesterx.dziedziuch@intel.com, mateusz.palczewski@intel.com, 
 jacob.e.keller@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747730005;
 bh=CwADa1/5fzM71NAaC+Jbeng4RK+1Y3vai9r6LkZ/myw=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=HZRYKps4zPT+GqiitOzD8N9RP5641aFArhTHWNJxWIPb+IIGIKh9aPBm/y7hBWpjx
 AAsHtt+l4O/ohosy3cxYsKwHUn/ozunWqRyrWub10N7clIsUf3cbuXb85/Ob7gB9yU
 bbfNa4gC/hyn/VLHsVUwyJO4hpbdiJSgHb245p/uoDKcLT+np7kt9Moeu+S0nfxe8j
 YOiS3e5lduZDJJ36yP6Qf/saCR4eRR0N78rSjw6ms9uHIt8Vgo+dnx9x+ONuKkzk26
 3HuyM734j3S9FnQnElKGe2hZxkkrT+RQYsTccBqb3H4Ku4ZZkEFYDUs2Tzzxp3u2w3
 QVd8vB8Yfp37Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=HZRYKps4
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] i40e: return false from
 i40e_reset_vf if reset is in progress
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

On Mon, May 19, 2025 at 11:22=E2=80=AFPM Tony Nguyen <anthony.l.nguyen@inte=
l.com> wrote:
>
>
>
> On 5/16/2025 2:47 AM, Robert Malz wrote:
> > The function i40e_vc_reset_vf attempts, up to 20 times, to handle a
> > VF reset request, using the return value of i40e_reset_vf as an indicat=
or
> > of whether the reset was successfully triggered. Currently, i40e_reset_=
vf
> > always returns true, which causes new reset requests to be ignored if a
> > different VF reset is already in progress.
> >
> > This patch updates the return value of i40e_reset_vf to reflect when
> > another VF reset is in progress, allowing the caller to properly use
> > the retry mechanism.
> >
> > Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on anot=
her VF")
> > Signed-off-by: Robert Malz <robert.malz@canonical.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 6 +++---
> >   1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drive=
rs/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > index 1120f8e4bb67..2f1aa18bcfb8 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > @@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf =
*vf)
> >    * @vf: pointer to the VF structure
> >    * @flr: VFLR was issued or not
> >    *
> > - * Returns true if the VF is in reset, resets successfully, or resets
> > - * are disabled and false otherwise.
> > + * Returns true if reset was performed successfully or if resets are
> > + * disabled. False if reset is already in progress.
>
> nit but if we are editing this, let's make kdoc happy. Please start with
> Return: or Returns:
>
> Thanks,
> Tony
>

Hey Tony, thanks for the review. Fixed in v3.
Regards,
Robert
