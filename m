Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF027F9C52
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 10:05:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E7E060B1F;
	Mon, 27 Nov 2023 09:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E7E060B1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701075911;
	bh=nqbPQk2s3H83s8ZeVjKLt8C3PjVd1rNHq9MJ+/9NuRo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n5/Rmf4xLNjjOObTo/9UtZpB2SWsSGogmT9fx3Mij6P2xjnx/xIi/knPRI+iFSG7t
	 12KRvO88YKe8tOBvYomsxKLDFyKuaQJfjFW3nCzxbkqRacJqgL2opJe2b5dW9qUWfl
	 idBcPGCqZO5WoBCAPUtIqEz05Dqx4eC1A/C1AsHhtpZof/Km2OFemQTeR1Wuq4VRRC
	 iZO+TdtDcwbeHaTGT1GzP05CU7ETUQCTbsaZVnMBAelbwBeKi5pW5S5p13Pia8Wx2p
	 8N2zL9s7Vmu8SlQemdxG69sd+Um9j3/CucgU+RBN5AAWjHI1q1t2nvh2OIpE4VSv0c
	 lZEROeWWvOjMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K-UqWT_DS6nU; Mon, 27 Nov 2023 09:05:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2809760A88;
	Mon, 27 Nov 2023 09:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2809760A88
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E7C21BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 09:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B7A981284
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 09:05:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B7A981284
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2S6RSS1PA5K6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 09:05:03 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74E0C81282
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 09:05:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74E0C81282
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-a0f49b31868so87375666b.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 01:05:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701075900; x=1701680700;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HI0TOtQb9c447DbOQLQ1/RG9mFnY5yOZxPwrai0TcrQ=;
 b=v6KfDmKcuZ0wsJzhsmYEofS0YefPQuE70I22LAglk/QgAtTHZYUf0WGIw+sBmpgtBR
 wVUe1RwKr3RtOFVDmpU6v8cQk+SCnCUsTpPrsIHQjaQ3mjABRZHrL/eYc54eXYyaF0zM
 IS3v68WmPxzwCinQO48qd6EL9tt7Sc8CM5l5r1qbsCMehxnE7kv3OEFVXmDWKLwxpXSy
 mTTofur4xYPZBodpuVPBcccpJY2Tj2yJaqk2C62oCnvKs05kJh73L3cXiXyySEUOBX2y
 v2wg6jdf8w5covHYfKWGn+u23gig3AH+9wRuJ5of1aL/x75YM64Yz5ZXKzI6j0+y43Az
 Sx4Q==
X-Gm-Message-State: AOJu0YxWcDJvVsCtXZYaxVZvoia9xPkEDvkteUUqD3bttb2W8iIlCFeC
 6y0cy0SlDhjDNxHvEUapG/SBNA==
X-Google-Smtp-Source: AGHT+IGMN9QxP+tvYaW8enwn4HK0hNu5SbKLzvuHC5a2fj6GapL9xeT02R6kafwcgd/VY4ZU0ooFsg==
X-Received: by 2002:a17:906:9d05:b0:9ff:6257:1b4c with SMTP id
 fn5-20020a1709069d0500b009ff62571b4cmr6439371ejc.37.1701075900268; 
 Mon, 27 Nov 2023 01:05:00 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 j10-20020a170906050a00b009fc54390966sm5508751eja.145.2023.11.27.01.04.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Nov 2023 01:04:59 -0800 (PST)
Date: Mon, 27 Nov 2023 10:04:58 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZWRbusSZ4v0SuWmF@nanopsycho>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1701075900; x=1701680700;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HI0TOtQb9c447DbOQLQ1/RG9mFnY5yOZxPwrai0TcrQ=;
 b=urtRGzL6yvtF7GuuD1KFTotKHzZ7fcOBC16z+pH3OGZ8PNlFaP6FqKfcg7oxfFaZT4
 jPga8FyUHlp+C6Btxvk/Jjj/GrtyuX1h++rb+DlTYqwq3AI+3DN5Ehkp8YQfosLBbn2j
 wc8CXlQ3xw05pgcOVXZmxNMrnNBrHPBwNf+zsPFtXjGjksJ6a+tAy30VdBFQ8rn91mk5
 yi48XiSbk7u6t4vMDiZ4QLp/cYyYMn3McrFNxmcsH+Lf2a9qrWGqxymymxjxguHNIqlL
 dLgV7f2Ubhn7S0JWeN/b6qh1Opu+n83uX/l2Z//GCdYLKQSDp2b7ipTwcYI//cX30XmB
 Nlfg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=urtRGzL6
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/14] net: intel: start
 The Great Code Dedup + Page Pool for iavf
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Nov 24, 2023 at 04:47:18PM CET, aleksander.lobakin@intel.com wrote:
>Here's a two-shot: introduce Intel Ethernet common library (libie) and
>switch iavf to Page Pool. Details are in the commit messages; here's
>a summary:
>
>Not a secret there's a ton of code duplication between two and more Intel
>ethernet modules. Before introducing new changes, which would need to be
>copied over again, start decoupling the already existing duplicate
>functionality into a new module, which will be shared between several
>Intel Ethernet drivers. The first name that came to my mind was
>"libie" -- "Intel Ethernet common library". Also this sounds like
>"lovelie" (-> one word, no "lib I E" pls) and can be expanded as
>"lib Internet Explorer" :P
>The series is only the beginning. From now on, adding every new feature
>or doing any good driver refactoring will remove much more lines than add
>for quite some time. There's a basic roadmap with some deduplications
>planned already, not speaking of that touching every line now asks:
>"can I share this?". The final destination is very ambitious: have only
>one unified driver for at least i40e, ice, iavf, and idpf with a struct
>ops for each generation. That's never gonna happen, right? But you still
>can at least try.
>PP conversion for iavf lands within the same series as these two are tied
>closely. libie will support Page Pool model only, so that a driver can't
>use much of the lib until it's converted. iavf is only the example, the
>rest will eventually be converted soon on a per-driver basis. That is
>when it gets really interesting. Stay tech.

The world would not be the same without intel driver duplicates :/

Out of curiosity, what changed? I always thought this is
done for sake of easier out of tree driver development and old device
support dropping.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
