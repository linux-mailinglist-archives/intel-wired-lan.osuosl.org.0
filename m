Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF73986B4F0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:29:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 938AE60E92;
	Wed, 28 Feb 2024 16:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PVyV8p0PKog2; Wed, 28 Feb 2024 16:29:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8B3D60E7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137793;
	bh=kj3zQ1lBxACrFRnKWFxYbPf2tKrEF/iMipPYB2aWh/I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YO80ogTcaiCimE9Vb+TpelDnyCPdLOBVYzMwSzxCzam/ERLYKzso35DB8lM/iwvRL
	 0AtVOiO7sv1+Xbv3LBZaM2Ofz2dQaSFK1BzBAQntaHIPK0Z5OVSqD0rCsCCHH+HIf4
	 tYKwck203HB/PMxS3WOyclbk5hm3edqiwGJRI1hnjnAjutNocpe0LN0TKiy1jO8jIS
	 +sSDccIQXc+MUhnUFYBORH/vMk+uPODMvTmjlKOtbshqRKkcPgSvwH6bbIy1q4fMm1
	 PxcyEBckiamUy6ghNrNpnAGfiIn2vz/8+mv5dIe+aTDdGLxt7+rXrLuJpA1pielTn6
	 t+orYvoL+S4yw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8B3D60E7F;
	Wed, 28 Feb 2024 16:29:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29E391BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:29:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 143F6415AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nOnReK3BLf3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:29:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112e; helo=mail-yw1-x112e.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F3CA6400D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3CA6400D9
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F3CA6400D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:29:49 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-607eefeea90so10525167b3.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:29:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137789; x=1709742589;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kj3zQ1lBxACrFRnKWFxYbPf2tKrEF/iMipPYB2aWh/I=;
 b=NBMlLmFYwvbxuIswXyBQiVUp3bwyeN3/kJ+JrxKwFmfuitXibuaBjL+/G1xTPKmuvr
 rTxx+L3/d8THWtiB08+RRcP25bWXscYEXxLDKTxiUnw7UEknmrbN99ZLDV/assFqOKq2
 pBIzuLmnhDDNYPXZz2IhgnKHYEMMf/PDd47C7J/DDiFHoCWOboT9Dcxwleku0piidZ9x
 X9taLZArYMlqxQ3Gkv42I7baHq5vOMJGFT4q9YRIjHJp/N/SeNnC0rQRT4cZTqb6Nvvb
 6cOG6q2gVp/oKXrNuBFU2o2WakdI3Pse98BOcQLNGdKdLwfW9G6TsvmzI4QEt2xSZ7Sg
 KfPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUuuGqWe6+xZDDPwQE3EbrktD0L78umi6HFFCs+r2YACbGfw4jebHQFyrG3YjaS0LrFC9Er5nRW5OAvwd13w2kvZMmshA8xLTVf3cVd9v7u4A==
X-Gm-Message-State: AOJu0YzW646JPQIMKCTF4uQaNWHoh0bvbqvKKTXghnQF2Mpop65+dbAY
 D/BGfehLOhFlnfReTOafYUdIADW7fT6l6ePsf1m2mW/I9/sxf5kU
X-Google-Smtp-Source: AGHT+IGa1uVu1QGKwzBN/ugqWSb5R7kpDXIVH6fnycyAQSPeZdMmpMkJiKarLdELLKFo76CJJMn2/A==
X-Received: by 2002:a81:b284:0:b0:608:cc10:f4f4 with SMTP id
 q126-20020a81b284000000b00608cc10f4f4mr1884717ywh.16.1709137788712; 
 Wed, 28 Feb 2024 08:29:48 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 i126-20020a0df884000000b00608a88ba3c7sm2471750ywf.79.2024.02.28.08.29.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:29:48 -0800 (PST)
Date: Wed, 28 Feb 2024 08:29:47 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9fe8o9zkwoW8Cf@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-12-aleksander.lobakin@intel.com>
 <Zd9fLYP0uzqqwOdO@yury-ThinkPad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zd9fLYP0uzqqwOdO@yury-ThinkPad>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137789; x=1709742589; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=kj3zQ1lBxACrFRnKWFxYbPf2tKrEF/iMipPYB2aWh/I=;
 b=c0g34qxLIWfQEke6S6sdB9iFgwvldRrvSVLMhsOOhkqNRo0eKdtwJ6Yezpdmid/FlE
 pyzWU0KhAYZlymQAejxJOdVyURpwKKabtDXdRmLBB68iIYMDHrDGIKKe3/lD1rhH4uMB
 WObxH6XXtzA6RI/6nmdRKemu2QBOIWizQd+EZdpBtvB7Rf46hJT5C5gE9+nTuIQV02UY
 p3/o8iEWxOfLZ9JyyjGl616cNylirQcJF6cqbM5RYplZHiuFhq1GD+JPX1i6q/3UgGvW
 9i5ynle5M8qpWzbzdXpUS+fjVDPrx/UFxI+qNA+cnqC1SF196QmNZBVsnMVNAVz++OHi
 HdVA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=c0g34qxL
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 11/21] tools: move
 alignment-related macros to new <linux/align.h>
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 ntfs3@lists.linux.dev, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dm-devel@redhat.com, linux-kernel@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 28, 2024 at 08:28:31AM -0800, Yury Norov wrote:
> On Thu, Feb 01, 2024 at 01:22:06PM +0100, Alexander Lobakin wrote:
> > Currently, tools have *ALIGN*() macros scattered across the unrelated
> > headers, as there are only 3 of them and they were added separately
> > each time on an as-needed basis.
> > Anyway, let's make it more consistent with the kernel headers and allow
> > using those macros outside of the mentioned headers. Create
> > <linux/align.h> inside the tools/ folder and include it where needed.
> > 
> > Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> Reviewed-by: Yury Norov <yury.norov@gmail.com>

Sorry, please read this as: 

Signed-off-by: Yury Norov <yury.norov@gmail.com>
