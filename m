Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BF3AB994F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:48:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C452F81C44;
	Fri, 16 May 2025 09:48:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7RNuE8_OVZCC; Fri, 16 May 2025 09:48:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4631681414
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388928;
	bh=os73Fv5dyqXqqpAvu7HzafHqtvu6cpi8sd0sMXDbjWY=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rrFsJNji31SFTdMZahQc1DNhRj49eOWdqb/CnJz2fTqhdYgNbclFdLuduzzRLedne
	 SsqQnwmNxrukTdCs96gc4iZ2mwdoc50YgQydrMDBe1uHdJZ1gKr+Z9bejW2uBxU9EM
	 tmP16EDODGRfxajChGw7oY8YiS9qNvXUqte6oiy65+7dACHRKl/zQ12wt9x+t902CO
	 kuOGEvfo4pn1Gidh5P+T2Y+wvrwDXg2Npn24r73P0bfHFyV7rPY5sBp2xHOSaj21r9
	 T1bg+3ARKi8D5C8Z1J6RmeGLjO0WBKDVJn2aBLZv6ARvQB8BSbQgRiY1Uxuq5gQTL7
	 Rjjl8BF7kNNNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4631681414;
	Fri, 16 May 2025 09:48:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6622D185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:48:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C75A60687
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:48:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IIzCEYfi3_Zh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:48:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A62176068F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A62176068F
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A62176068F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:48:45 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0762F3F2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:48:44 +0000 (UTC)
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-ad540ac3219so20001066b.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 02:48:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747388923; x=1747993723;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=os73Fv5dyqXqqpAvu7HzafHqtvu6cpi8sd0sMXDbjWY=;
 b=VFBR+diyeklrm6dOI9hbwpOvF6Y9zqMYSXThWR59Tx0wJeiJckt+lsGLZo63nTOQ+K
 V4aJ9kEqKtB280sVjZxMZaQzeqqAGC6VM4j+O0DcO39zQo39vzC85ZV4NjGuYCFb3bvO
 ZG25DhmhpDUbeUO3tvsvWD11L7QK6tliULpzDqcYOIrH/7GeJdl8EJQddiQ57NGfkUrr
 0371sf1lBSZsBR0GlOAXDIvKB02qTwCw4DPXR4snSz1nTKHqGGSpAOoiTM4EHzRLHGxZ
 /iplh6MmwXh5K9Lj/3V3rXMN54W151PSW4agp5g0kQLKw5fyiKbsZ+eVzKUBTTyXst1N
 vohA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV2td/9exhY8SUhtkTMBjx2pBvPVKwxXsTAfS+C98WR2rIzo2p2pYNHdwzqcjpL8SGbY2MvAqy/vhdT2XiTCuY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxvOWXpXnYB1SOoC77OV+3b27scX8bAuTpJyi7R5N3YmAsShAwk
 h/CGjw/IcsUDvuwSfRsqw30mw7Vwv8FR695k/L55ZFPQNetNgdkIIHVnX8ow3455TqtlfhVQqr4
 P1vxJkDM9k8nDPnIbrIadzmI2uLimAB448ZRMuFCkh4azr1etnDTlNI3RPNI5l+L61638a0GbdI
 4VhC3aD6ZFTepqlsruhBf+F+hX6xCuUbvlrHomMl5V9U2o4GqdTM/kJmFo0A5zEg==
X-Gm-Gg: ASbGncsEmgQa34fUtv0fmGvzRfJNSIt2MSTjXpoDQwctPY/GYCVeQZ/h0Tqe/IDdaBl
 jaivIk9ucaeWsyukHqZxMo49G9fgvq8OvIhnjQC98hQKaOvIfEILa+Gx1FkV6Edk8Zz8m4g==
X-Received: by 2002:a17:907:7b97:b0:ad2:39a9:f1b8 with SMTP id
 a640c23a62f3a-ad536f3867fmr178676666b.57.1747388923343; 
 Fri, 16 May 2025 02:48:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjlz0pShlD+rWAV89gS8KIz+HoZeHIdmI5xKxGlkhwEtwqyull9K9qQ9xnRAnU0PTsJff/CwFG41SXRc4j8Xg=
X-Received: by 2002:a17:907:7b97:b0:ad2:39a9:f1b8 with SMTP id
 a640c23a62f3a-ad536f3867fmr178675466b.57.1747388922975; Fri, 16 May 2025
 02:48:42 -0700 (PDT)
MIME-Version: 1.0
References: <20250514145720.91675-1-robert.malz@canonical.com>
 <20250514145720.91675-3-robert.malz@canonical.com>
 <fbf72244-873e-44f2-8974-76be6f7118e6@amd.com>
In-Reply-To: <fbf72244-873e-44f2-8974-76be6f7118e6@amd.com>
From: Robert Malz <robert.malz@canonical.com>
Date: Fri, 16 May 2025 11:48:31 +0200
X-Gm-Features: AX0GCFu3yAoLyjsy7f1ZgWGyedybKqFtqEYT2WelD-OPoIkfTxAFdFs8oq-Pi4w
Message-ID: <CADcc-bx=0eAQmndocG4B+PWnzLKOajDT=9E6kM_XLZ4XR1rekg@mail.gmail.com>
To: "Nelson, Shannon" <shannon.nelson@amd.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com, 
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747388924;
 bh=os73Fv5dyqXqqpAvu7HzafHqtvu6cpi8sd0sMXDbjWY=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=LcXKJZ4tK5EtOsIi4G8f9oPjGQpE6TUg3sJBWy26F3GqB58w9CiaLxu8cCHed3cbr
 XENxzbShuFjyjPhynu/Zloqwl9coiWFcs7GQ3MG2jr5ULNOPYQle6mv9of92/Y/Dtt
 +Lgvx+M6LyPSNCNl/MeAL0CO9gYoVE/sulahoupT5jHKi13AtQows7Pj8gWUvvxDli
 fn9Aq+m36xENjnQUWQ9sl9OE2RQjtrqOnHAbqSbu8rJ9ZcilndKsMD9n2xzPHNPUYb
 MBO3+skTSWVGEZPceSGwAUGmAZ7dEC4Fkf4IS2vZzQeO7GoUZcUvVf1BMIas6Uthru
 VdXLLcVMWj1RQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=LcXKJZ4t
Subject: Re: [Intel-wired-lan] [PATCH 2/2] i40e: retry VFLR handling if
 there is ongoing VF reset
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

On Fri, May 16, 2025 at 12:40=E2=80=AFAM Nelson, Shannon <shannon.nelson@am=
d.com> wrote:
>
> On 5/14/2025 7:57 AM, Robert Malz wrote:
> >
> > When a VFLR interrupt is received during a VF reset initiated from a
> > different source, the VFLR may be not fully handled. This can
> > leave the VF in an undefined state.
> > To address this, set the I40E_VFLR_EVENT_PENDING bit again during VFLR
> > handling if the reset is not yet complete. This ensures the driver
> > will properly complete the VF reset in such scenarios.
> >
> > Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on anot=
her VF")
> > Signed-off-by: Robert Malz <robert.malz@canonical.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 9 ++++++---
> >   1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drive=
rs/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > index abd72ab36af7..6b13ac85016f 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > @@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf =
*vf)
> >    * @vf: pointer to the VF structure
> >    * @flr: VFLR was issued or not
> >    *
> > - * Returns true if resets are disabled or was performed successfully,
> > - * false if reset is already in progress.
> > + * Returns true if reset was performed successfully or if resets are
> > + * disabled. False if reset is already in progress.
>
> You also changed this wording in patch 1/2.  Let's keep the
> i40e_reset_vf() description changes in the other patch where that
> function is changed.
>
> sln

Thanks for pointing this out, fixed in v2

Robert
