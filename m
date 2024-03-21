Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D67885C80
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 16:49:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7069460EC6;
	Thu, 21 Mar 2024 15:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TBcRxWBLEvL3; Thu, 21 Mar 2024 15:49:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6369E60E9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711036180;
	bh=nn0KXLTmKo1UAHS+ioXMLgSp1Jk0+gNJVUyK//P+Ags=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bLsyNLP8ViKXe4r4vVYGFpHXAVK4z//x01gN6pbJ9hqL3O9+/CiGSr2nFTQED5CXh
	 OqVOg6MHU+1Gim3xIYaWWivmBdGQLPuLQLe2lzRbYAx/AoqdMYJP9BgYQq3SpPg+hu
	 0UZGj/Vwuu/44oM+lE90q1QY6rAd9LQfV7wYpvoI1bFyGwZvj3fK2Zxxnesj7MRzUh
	 /PM/ikLMs2/jKpAlaC5u2LsnpNRxdhOdW9WcY98zEufIcy7CMXBepYRqotU0sweLkA
	 dHIOxdfO4OJvPDJJD1PT3pSBzEOq3b3rLNiguSaU0fbvamA2q2J67g0BbzILwYq3Bc
	 ijOKB+cJ856nA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6369E60E9A;
	Thu, 21 Mar 2024 15:49:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2A2C1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 15:49:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D63FF820DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 15:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQYreja10of1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 15:49:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68FCF81440
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68FCF81440
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68FCF81440
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 15:49:35 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-414787c73c7so177365e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 08:49:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711036173; x=1711640973;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nn0KXLTmKo1UAHS+ioXMLgSp1Jk0+gNJVUyK//P+Ags=;
 b=nQMrL8MHZB3xEBLQMaLdOM5qW0aew7doYEGw7pc3miHX08fTIgdbBnO+x15MUnHoMU
 BS3Jf0LdH9iT+NN3OyRjyEIJqA2lSmKBR/jNQrPNzQVeECPbMwOEXCP8S5/E974vSKBM
 YFS+eMiJA5CtiO0GpHcUcV6CihbedIMSv/OQ6odOjNsUsGJm+dGTTGbe1tva0XnPdwxF
 kTUDtm0yUd8Nqkx89q58qLImeJ1TZ/9RNX8cBCoGwnS51/JfA8WhGROIJQg67zzRPsVt
 WO/4niBZ3rMPnrWLS5N9DPV4+SjM64za/wbCryG6LFdKxUyjSA8CDFsGbMGwBql2bPaD
 MW4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXv4u8uUbU4smEIqgDLkhrmp7JUDMmG4wx2tJkAIbkOi6sByuMLAzzmcX5y4itTCjSzgIqCceNWXUPUcG5zhqrvJi+nqkj6XTIAa4F8YURIaQ==
X-Gm-Message-State: AOJu0YzmYZKJlUaCCqtBj04kyKrJwJj3OpQTCPZ3xxOno5NptdESYTdx
 VI3zTUyz99RLMqChUODOJlIVINv+FzqZC/rfN11etetDpksof7cVPOCLyAlXjTk=
X-Google-Smtp-Source: AGHT+IHS0COvGmxGWKzVrLFKmJH2kCt88HgGRRr5C/qE0aKfK7wiVDsrmhkHV9SjTOUK91PmmME4Iw==
X-Received: by 2002:a05:600c:218e:b0:414:a6d:52d8 with SMTP id
 e14-20020a05600c218e00b004140a6d52d8mr1687053wme.17.1711036172968; 
 Thu, 21 Mar 2024 08:49:32 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 jh2-20020a05600ca08200b00413e63bb140sm5997582wmb.41.2024.03.21.08.49.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Mar 2024 08:49:32 -0700 (PDT)
Date: Thu, 21 Mar 2024 18:49:29 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <dd392ed9-9f68-4364-bc9a-ab95d6b54cda@moroto.mountain>
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
 <ZfxTjYUPAFz_LRlk@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfxTjYUPAFz_LRlk@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1711036173; x=1711640973; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nn0KXLTmKo1UAHS+ioXMLgSp1Jk0+gNJVUyK//P+Ags=;
 b=HbAUaUJcsc7rL4AfmrdGO7I0fcOZX5Zzc4vjzo5NTYF3v1s0DodGZZW07KMHU6wmgH
 j4BrFPX1DjFgnkUx/N/5fx/shOh4mTMF2bHFQp29n5pLHS4Nf1r5MK+3wz6+ScsqcRWN
 eRrbqkzLt3LWbFsAE8WZOO8atktOBLNA8ndUDyrJpV0L1rexnfVEm2Gw+Mlz8Z5UuPUo
 edfJH9xzkN6tCHhcek3latFYtcJ0VCKgU7g0CaFc8JmKu+makHe0Kf0WlSy5vgJayUfn
 MWzIoputxt0ePy19qvG1uf+Fvm+iyfkgnSJcr3asx+wKM9xny91FriUaLh8ZTxxn/F6M
 +yew==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=HbAUaUJc
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Fix freeing uninitialized
 pointers
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 21, 2024 at 04:34:37PM +0100, Jiri Pirko wrote:
> >The change to ice_update_link_info() isn't required because it's
> >assigned on the very next line...  But I did that because it's harmless
> >and makes __free() stuff easier to verify.  I felt like moving the
> >declarations into the code would be controversial and it also ends up
> >making the lines really long.
> >
> >		goto goto err_unroll_sched;
> >
> >	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) =
> >		kzalloc(sizeof(*pcaps), GFP_KERNEL);
> 
> Yeah, that is why I'm proposing KZALLOC_FREE helper:
> https://lore.kernel.org/all/20240315132249.2515468-1-jiri@resnulli.us/
> 

I like the idea, but I'm not keen on the format.  What about something
like?

#define __ALLOC(p) p __free(kfree) = kzalloc(sizeof(*p), GFP_KERNEL)

	struct ice_aqc_get_phy_caps_data *__ALLOC(pcaps);

I'm not a huge fan of putting functions which can fail into the
declaration block but I feel like we're going to officially say that
small allocations can't fail.

https://lwn.net/Articles/964793/
https://lore.kernel.org/all/170925937840.24797.2167230750547152404@noble.neil.brown.name/

Normally we would try to delay the allocations until after all the
sanity checks have run but that's optimizing for the failure case.  In
the normal case we're going to want these allocations.

regards,
damn carpenter
