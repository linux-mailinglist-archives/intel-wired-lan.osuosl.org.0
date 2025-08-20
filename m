Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C58B2E887
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 01:16:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA54B4118F;
	Wed, 20 Aug 2025 23:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N7hL7jJ9vhP4; Wed, 20 Aug 2025 23:16:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E833411C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755731779;
	bh=fdmO92QeKFhs1Z4CeOhnLytcdLJZgHdRK99IKc3sAMA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hbxZf666ubik4B/J2CyQB7J1t6e9h/PtVYug8+uilw3nk2+CfUPq9Kc7hhqecVVsW
	 TUy3+WO2FNe7FWq1wFqcYpMTPJ6pT+IH+CwK/upICGSlgsEj+wFtc++mOudrXNvVXz
	 dT7EwwHpSF2+wGHv39Rp8u2R9vIG2IBIlsjhlEjHpeMyWFevdbXoC5Ky4iCnEFC6Ej
	 ePiHwZBCC5f2B8iZ8RuS38emUZhF/2Tpl89Du6KPv1XruOqcg7Eoekc6cKZmDNluVO
	 M2oFZnUy+nMuHr4lUvF/u/Ax37tJYGCw+OllH7akKAjyLzfY7xFO1mXVcyPs9FTW88
	 kR6kFSrHiO4zA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E833411C0;
	Wed, 20 Aug 2025 23:16:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F9F27AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21A564118B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V8rM-jW4ZcET for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 23:16:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 816C241185
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 816C241185
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 816C241185
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:16:16 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-76e2eb09041so425715b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 16:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755731776; x=1756336576;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fdmO92QeKFhs1Z4CeOhnLytcdLJZgHdRK99IKc3sAMA=;
 b=jcU56hJR28SxE3Ku023ZYkq0Cj3oEa1x/qLKwglRaLGXEvsr+aKjO1gBweU5Ktdc5R
 XsmMgE5NZOe6GFNQBsSIHvR2lLkAfszWrqHUEJOmWhG3XGpjVtynx+NgmpzpzcBZSOrL
 G22YRIcslcAueeDAXylHqtFtFE+aBoCXE3j8LaafPtjhtRZ6YssMgw71COjekpk5bijj
 p/OR7Ws5baSvn4JAjiyUsRhMz6OeXz0j0z3XAC+AlxopVHKvh82x6/0E1zdWmfDJcThk
 0vVujgyP+vFqiFvHvD7vAlVY5mOTDlgHsDcjWva2OWzLftV+DFIz3jUA/dGiZED+p08L
 NLqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIbYYyBhUiqbRrQUciY/7J2vjYuss1m+XqSC9Q0gfgsLOE3HrbkNY044GTkbQsZDoCdVGDUfRLEVVYrKJlINI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyLF0UUzH+kdNKLAxEEpZqCGnnrt1gou2sEMRwFdawGgG/UH/7Y
 yhNdT7M/IkLUiA03Ck51Axzw4ptea/9Ddr+IlGTfezd1mQeo4bEwTOXv0C3tCQv4sT8=
X-Gm-Gg: ASbGncvsBCy5LLHnsdpPTtyBAe8TjeaflBYKfOLn59RS1MYaGg0q7OIKdEZlTgNfBCb
 TBCF6+ClgHZztzEe6jyLe4ETR02Rx9bXpitTa1h4MBWIOzR6B/lGX4rbBEPb3EYvQ8rZsirpea3
 UfduhCY5uGye1+Tfd7sfqNLacvNFKM3nmufcR7JMcoYH5YLIzgV/r3KVXHEH9LczjeD1lY2THGI
 rdEIq5+rQBIWohuGLBocumO+k6dluhL1A45OIJPVLbbp8gh0mgTyGRtyCXNxPctCUeqVXrupmtY
 BWc5ad8XuwSgnrjWqVyO2a7NzI1RN6kcBBKZrKEw5ZrhT8QFfdfc0IE1c0JJyaoKaQ6tdi/LM4M
 Qla2u78eWxlow4rLl18CCrSwo
X-Google-Smtp-Source: AGHT+IEKHsFSPmxTNhzwI6KtHFTxUhdcM6HLPvQhyeSQbdETk31i7U+6s5u/zjJ0+1bHbJoJ9YlFCw==
X-Received: by 2002:a05:6a00:189f:b0:76b:dee5:9af4 with SMTP id
 d2e1a72fcca58-76ea319b6admr398666b3a.13.1755731775792; 
 Wed, 20 Aug 2025 16:16:15 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76e7d4fa87esm6403467b3a.65.2025.08.20.16.16.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Aug 2025 16:16:15 -0700 (PDT)
Date: Wed, 20 Aug 2025 16:16:12 -0700
From: Calvin Owens <calvin@wbinvd.org>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "Vecera, Ivan" <ivecera@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <aKZXPF3VgmwSA2up@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <IA3PR11MB898643CA16052892963547F2E533A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <IA3PR11MB898643CA16052892963547F2E533A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1755731776; x=1756336576; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fdmO92QeKFhs1Z4CeOhnLytcdLJZgHdRK99IKc3sAMA=;
 b=iaKXqNH6MKHoJTwPvQPtWK4ukKg/iBMI7+6bHoZvrirsxWgMhTseWEDIMPVNHQD4HY
 yF7WNwyUUWz9spk8ysN4Vy+bUL0FAO0XXiUWDPP0YwfQRkWu0Yq/SC6+2llThQ6biQdV
 CFDJ8TwviDtBsnJML5T7rHAlKE0DM1R9e6Sl1iOKoAv72jhBj16wyMTdjRv82waqzhFl
 WVr0bRGmhl7tS5oBaxZgkc834a5mnL7NkdOongv/BW4Myp1hTBjvag7V4cJzp97QAhGd
 bd47XN0nzRJd8L17EULvW19QIrCkZc1EKAa9qoOw+DHhKhhWv7XuwdhYOAXtcS0RGiWx
 U2VA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=wbinvd.org header.i=@wbinvd.org
 header.a=rsa-sha256 header.s=wbinvd header.b=iaKXqNH6
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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

On Wednesday 08/20 at 15:51 +0000, Loktionov, Aleksandr wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Calvin Owens
> > Sent: Wednesday, August 20, 2025 6:29 AM
> > To: netdev@vger.kernel.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> > Abeni <pabeni@redhat.com>; Jagielski, Jedrzej
> > <jedrzej.jagielski@intel.com>; Vecera, Ivan <ivecera@redhat.com>;
> > intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted
> > interface name changes
> > 
> > The same naming regression which was reported in ixgbe and fixed in
> > commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> > changes") still exists in i40e.
> > 
> > Fix i40e by setting the same flag, added in commit c5ec7f49b480
> > ("devlink: let driver opt out of automatic phys_port_name
> > generation").
> > 
> > Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> > Signed-off-by: Calvin Owens <calvin@wbinvd.org>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_devlink.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> > b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> > index cc4e9e2addb7..40f81e798151 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> > @@ -212,6 +212,7 @@ int i40e_devlink_create_port(struct i40e_pf *pf)
> > 
> >  	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
> >  	attrs.phys.port_number = pf->hw.pf_id;
> > +	attrs.no_phys_port_name = 1;
> 1 is acceptable, but kernel style prefers true for boolean fields.
> Can you use 'true' instead?

Sure, if this ends up going forward I'll do that in v2.

> >  	i40e_devlink_set_switch_id(pf, &attrs.switch_id);
> >  	devlink_port_attrs_set(&pf->devlink_port, &attrs);
> >  	err = devlink_port_register(devlink, &pf->devlink_port, pf-
> > >hw.pf_id);
> Thank you for the patch aligning i40e with ixgbe behavior to prevent unwanted interface renaming. This is correct and minimal.
> 
> You're adding attrs.no_phys_port_name = 1; but there's no comment in the function explaining why. While not strictly required, maintainers often expect a short inline comment like:
> /* Prevent automatic phys_port_name generation (see ixgbe fix) */
> 
> This will help future readers understand why this flag is set, what do you think?

Hmm, it feels a bit redundant to me: "no_phys_port_name" is already
pretty descriptive, and the details (with SHAs) are one git-blame away
in the commit message.

> > --
> > 2.47.2
> 
