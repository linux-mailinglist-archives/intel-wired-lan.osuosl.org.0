Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGuHEV838mk0pAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 18:52:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C37E3497CD2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 18:52:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B29642387;
	Wed, 29 Apr 2026 16:52:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nh5QRGGkiLYk; Wed, 29 Apr 2026 16:52:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 747A44237E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777481559;
	bh=X8peeioOaRdZ2UtVYC342XZJGCHJrhC0RFeeWhKiG/0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RuU9FGJA8UlYwLC5Lw4hlaoUa/v8qG6VNJqmFF4vlH9sTX31ElefV7IysCwGNAcyK
	 8fIfwBe0G7dDgGwZ0h/rkvuIy7bEPVlYJ5iSnzF8CTCF9xrkfdMfh2jU6Mpzk7s4CF
	 MfpoqeSEZ2kf7OkaBHHhHoSPI8XA74hJXyB/W9x+8vJxbrKtffRsslTDmh8+nMWIT8
	 +gkCUWZZajVjylYvri1J7vp23n+v66gxxTeGymGukZl+rVC3+4oVHS4uLhYe8tLyIs
	 WJUMM1WBEIBxM75r1r5D/17xYKUGiNh0U3j5tiyIBuVzym/pGptgrCejf4eorjoYhh
	 A0goay1rK+Ujw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 747A44237E;
	Wed, 29 Apr 2026 16:52:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 689501B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 16:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E53683FF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 16:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id neSWHLKuOMUS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 16:52:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1034; helo=mail-pj1-x1034.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 13C3583FED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13C3583FED
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13C3583FED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 16:52:36 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 98e67ed59e1d1-35fc0d7c310so8266551a91.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:52:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777481556; x=1778086356;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X8peeioOaRdZ2UtVYC342XZJGCHJrhC0RFeeWhKiG/0=;
 b=FfO3nMpYWIk1quEqaYf/A3VAWKXe7lOPDtZDCQoTEUPD0Itka/bCdly2R6m+us6gz0
 CQe3AGL24z4IHHGWoub4Cx4mN7SszkIRQecFHM75v1mnP2ksA7cmscZFDHHDWhv6kZBG
 GLIDycJUhyrB0JtHfalSohGoDAatW+qrmVEESN9pgW2twfUly9uSiFuhWxmNCRcbxL5L
 p3rm1LhBh10lgqahkCr+wSCE9Z1F7t61hwCOs6goUDC1zlaNuWX/Y8Jv/OkWcrfh8Ubp
 twdyXigGfVtGxdx0eYrXkXlsurfZ/Z0lRTSuxIs5iWi2HX9Mq7Is4ItlSknbslx/fSmQ
 RPyQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/wSTY1sjv5FjDSKPSSg2WPNcDrlRspbL9bILar92Cap3Yux0/Mvd10B53QG/MPsrKzUc13yQC76p7qjG/LlA4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxvPN7e/F/wD2y4cZPb/tnJfyOehfvZGSWR8P3mmqH3P+dy7Y+f
 YDBceKY3fYaU84JB001Pt8saqZ25pJXVcFAcoMswpTXG7x50qQkLQ6TRQBOgf6bqRgI=
X-Gm-Gg: AeBDiet9kVr1AUAWqf7qUqHj9XlLK//d7j1o6O0jlICJFGuIxlOq8Pexh0ANqDSOyLZ
 OrQHHHuAee6mfZxSy0GYcpUY8U/se1Glkc6tTRn3Ju29cWPvgnSnIVIygUslI6ve6K6xf+Akt4r
 qAIsQvyUOM9cAu1DvUTHZFOxx/wYZUwTov8YuUUZ1Z0JEFNDPKY9ol3VZt4DiQwMCifwDe7eX86
 Oxw7tQFyo8K/9dBnRAoav+N2WSInNPZCyS7AUv+UagUFKVSxD73xEYXk1J7ENb3jssAXgvc3hU6
 w1Hovu2UZ0Y+cEMvm2Ofwv2lMXuMjkKWkogMRg0UjlE0eikkPTqccCfhJiyhjBBeSNm8oUXIhyw
 yXQ3tIdVIvVKEIaUFcirxFX7bZzDxW3AacjbOUDwMfwlE5LdU4wdceg/XJ41qQuaKylqcilUDrN
 vVPeSIuFcxZSfdoNQtJx5oiLn/LkqWhazSk263Zrwpc8wR+dh1vKf8PsMDc3N6npt/xA==
X-Received: by 2002:a17:90b:35c4:b0:361:423d:2026 with SMTP id
 98e67ed59e1d1-36491fce3b5mr10406200a91.12.1777481555639; 
 Wed, 29 Apr 2026 09:52:35 -0700 (PDT)
Received: from medusa.lab.kspace.sh ([208.88.152.253])
 by smtp.googlemail.com with ESMTPSA id
 98e67ed59e1d1-364bdf69d61sm158848a91.12.2026.04.29.09.52.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2026 09:52:35 -0700 (PDT)
Date: Wed, 29 Apr 2026 09:52:29 -0700
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20260429165229.GF2686-mkhalfella@purestorage.com>
References: <20260428181450.2622899-1-mkhalfella@purestorage.com>
 <558971b7-caea-471a-8fe2-73ba6cc0790a@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <558971b7-caea-471a-8fe2-73ba6cc0790a@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1777481556; x=1778086356;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=X8peeioOaRdZ2UtVYC342XZJGCHJrhC0RFeeWhKiG/0=;
 b=Obwfgu7LPgZIVwMT++Tx3AEZbPGkWHmsUxqqto3C4WO40c1LfJOAIXjJ3CMREtJmNk
 oILAdLpmtD1oEJbs+nMlJIopTOePcZqNOa02FUN7ZZLgCQT516f4vK/fpBF3PIIdFMhr
 nhpZ8RrBTyYTMeYouo4hgvOWSKc5uP+UEuLcXGTrXk3ZtrNWPEs+e3vreAKjYsoSeoRo
 Y/TfyQX7eYKSEl4jQy2JIRSkHoKuVAIzh5MscfLUECJCfsd0bjhRukfSwDEANnyw8dHb
 /Jy3u452vlSSQDx4oV0QMEkJPaYpKm82ga6RyjN1mFnRVEoL3veSBGnS3ZO9IPiEZz6K
 9lIQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=Obwfgu7L
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix i40e_debug() to use struct
 i40e_hw argument
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
X-Rspamd-Queue-Id: C37E3497CD2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[purestorage.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,mpg.de:email,purestorage.com:mid,purestorage.com:email];
	FORGED_SENDER(0.00)[mkhalfella@purestorage.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mkhalfella@purestorage.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

On Wed 2026-04-29 13:02:00 +0200, Paul Menzel wrote:
> Dear Mohamed,
> 
> 
> Thank you for your patch.
> 
> Am 28.04.26 um 20:14 schrieb Mohamed Khalfella:
> > i40e_debug() macro takes struct i40e_hw *h as first argument. But the
> > macro body uses hw instead of h. This has been working so far because hw
> > happen to be the name of the variable in the context where the marco is
> 
> marco → ma*cr*o

Good catch. Also 'happen' should be 'happens'

> 
> > expanded. Fix the macro to use the passed argument.
> 
> I’d add a Fixes: tag, but the maintainers might have more input.

Yes, I should have added Fixes: tag. I will leave it to the maintainer
to decide if v2 is needed to fix the spelling mistakes and add Fixes
tag.

Fixes: 5dfd37c37a44 ("i40e: Split i40e_osdep.h")

> 
> > Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_debug.h | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_debug.h b/drivers/net/ethernet/intel/i40e/i40e_debug.h
> > index e9871dfb32bd..01fd70db9086 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_debug.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_debug.h
> > @@ -42,7 +42,7 @@ struct device *i40e_hw_to_dev(struct i40e_hw *hw);
> >   #define i40e_debug(h, m, s, ...)				\
> >   do {								\
> >   	if (((m) & (h)->debug_mask))				\
> > -		dev_info(i40e_hw_to_dev(hw), s, ##__VA_ARGS__);	\
> > +		dev_info(i40e_hw_to_dev(h), s, ##__VA_ARGS__);	\
> >   } while (0)
> >   
> >   #endif /* _I40E_DEBUG_H_ */
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul
> 
> 
> PS: gemini/gemini-3.1-pro-preview embargoed it’s review until the 
> evening [1].
> 
> 
> [1]: 
> https://sashiko.dev/#/patchset/20260428181450.2622899-1-mkhalfella%40purestorage.com
