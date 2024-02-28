Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C30786B43F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:11:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F259940A7A;
	Wed, 28 Feb 2024 16:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hq8r2uztz6xJ; Wed, 28 Feb 2024 16:11:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1153841497
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136666;
	bh=UM7fB83xrY7g3CIrUJgpt+5lWVhOTXwWDbWvr1lXm3o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ulawt8DlQFVx2i3SsicsoZ61Si3xJan8/hd3fRjiG90NZ0Qt7Sjlh0S6VVFxMfClw
	 8ZP+dtfYsmKYaqnjXuftxNaP2W43KtKGvsV5aP6SiMCixNUG3soOZhWjNI2iCsWfht
	 cCpwmLyaVfyT9ZUPMyTC42z4xthZWCg972lt1+0u9ECPyRxHr2vYyld9FmHzVbHjsl
	 ZXWHW615UunVDUr60CGS3Hjq+ZbbgPUb8BVZmhziXxq5ixAuyrh7SLm97coCgcWF2D
	 aPsY87IBP3LhWzrjuNCBvvD1UksMcgltb6f081HfqLu2TYw1+knvQXV+6IdIpiyTNX
	 7cj4bJ8XBGvGQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1153841497;
	Wed, 28 Feb 2024 16:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7641BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79B0481BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lz2xE6ei6jaP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:11:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c29; helo=mail-oo1-xc29.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 253CA81BA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 253CA81BA9
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com
 [IPv6:2607:f8b0:4864:20::c29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 253CA81BA9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:01 +0000 (UTC)
Received: by mail-oo1-xc29.google.com with SMTP id
 006d021491bc7-5a095237eefso1584798eaf.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:11:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709136661; x=1709741461;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UM7fB83xrY7g3CIrUJgpt+5lWVhOTXwWDbWvr1lXm3o=;
 b=K/RZv7jjGjKFRr4TdU7yrCQC/pXo9tg693Rnt5bRDTwKNNd5VV+7TTMS3taS0xJdlH
 sDiGvomngLiHQEQbnPFZVpdQTtTuITJwYJYz+fPRiVXOvDyCtP/6hhEsAlKcrEULbcdm
 gW5XeZFKckCdluumFKXMWslq74ZeVtlVByf2sQ+oL3Jrha9i9N7dDVV9Cbt9Pbdl/CI4
 uMzCShOnUhW2t8UIJAyefBCWPG9Ge7W/bOsAUQJadr5QedoMXqxgUT0pmamy9k65ldqW
 xEeN3Tj/nBYh+VsEG9x0b1lCjAJoLgVjPyVrXKwWt9WxmA+afkhFeIdpzXM5UGGst6aQ
 xbFA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU9FbQ9pQBcJv0tVa+m/WXz8rHCwbIsk+9PxWz1q1OyyEfgwVWXhLWMZRDPoLkqbXGIrvSPnX77M5PZtUltAkYuVABsuiqtk3i19h/nGhBmEg==
X-Gm-Message-State: AOJu0YzUtcmHjz5vjhR+mR0+JfzLxuPCKr0MGQ2cNBkRaRpo8M4xHoyw
 1mxDjZO5j09oK/iMhzbgkT75k6mE/5f4C1qyFU2dEKSqXUYeu1PH
X-Google-Smtp-Source: AGHT+IHVqmXgCjjpeT3Ayfgm29V7pLwkYccA07WjeKQIvCijKqteNCHyaFrBaReNdiJYMkPFdwfJlQ==
X-Received: by 2002:a05:6359:4c0f:b0:178:94bc:72ef with SMTP id
 kj15-20020a0563594c0f00b0017894bc72efmr17459234rwc.25.1709136660774; 
 Wed, 28 Feb 2024 08:11:00 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 h8-20020a255f48000000b00dcda5ddeccasm1939107ybm.30.2024.02.28.08.10.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:11:00 -0800 (PST)
Date: Wed, 28 Feb 2024 08:10:59 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <Zd9bE0Z3djvj3+As@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-2-aleksander.lobakin@intel.com>
 <3f6df876-4b25-4dc8-bbac-ce678c428d86@app.fastmail.com>
 <CAG_fn=Wb81V+axD2eLLiE9SfdbJ8yncrkhuyw8b+6OBJJ_M9Sw@mail.gmail.com>
 <b4309c85-026c-4fc9-8c26-61689ac38fa1@app.fastmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b4309c85-026c-4fc9-8c26-61689ac38fa1@app.fastmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709136661; x=1709741461; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=UM7fB83xrY7g3CIrUJgpt+5lWVhOTXwWDbWvr1lXm3o=;
 b=kw4sbL0gUjPSkFCeLEydjA7gynINL9cbRB723ZTmqZKTTENgwz+2snU8UL6sxjA7Ay
 8iY8FgY9oYefpScf+q+7diJxMGXGM/EDexQUFIOpza1wEu7Cs5fdkKEfB43MhZmm2qXJ
 TJgefQltQo5ZLE5SDIm2QqfiY5olZwsUqxmAH9orojYpoq8d9888lXVqcbploWk3hz6b
 Kws58NK0CK9ajizxxd80ckWbj249H/YkuTHQBdfvI+4T/yDlsP1aOLwQP3AELSP4v4Kp
 cRCrm8K265SAM7YJ0GjtCBxuxStVOTek2wEp3SWt47ZrdxxbAXjCb1qECpz8sAN0Cxkz
 xUwg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=kw4sbL0g
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 01/21] lib/bitmap: add
 bitmap_{read, write}()
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 Alexander Potapenko <glider@google.com>, Jiri Pirko <jiri@resnulli.us>,
 linux-s390@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 William Breathitt Gray <william.gray@linaro.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Ido Schimmel <idosch@nvidia.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, ntfs3@lists.linux.dev,
 Syed Nayyar Waris <syednwaris@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 03:02:50PM +0100, Arnd Bergmann wrote:
> On Thu, Feb 1, 2024, at 14:45, Alexander Potapenko wrote:
> > On Thu, Feb 1, 2024 at 2:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >> On Thu, Feb 1, 2024, at 13:21, Alexander Lobakin wrote:
> >>
> >> As far as I can tell, the header ends up being included
> >> indirectly almost everywhere, so just parsing these functions
> >> likey adds not just dependencies but also compile time.
> >>
> >
> > Removing particular functions from a header to reduce compilation time
> > does not really scale.
> > Do we know this case has a noticeable impact on the compilation time?
> > If yes, maybe we need to tackle this problem in a different way (e.g.
> > reduce the number of dependencies on it)?
> 
> Cleaning up the header dependencies is definitely possible in
> theory, and there are other places we could start this, but
> it's also a multi-year effort that several people have tried
> without much success.
> 
> All I'm asking here is to not make it worse by adding this
> one without need. If the function is not normally inlined
> anyway, there is no benefit to having it in the header.
> 
>       Arnd

Hi Arnd,

I think Alexander has shown that the functions are normally inlined.
If for some target that doesn't hold, we'd use __always_inline.

They are very lightweight by nature - one or at max two word fetches
followed by some shifting. We spent quite some cycles making sure
that the generated code looks efficient, at least not worse than the
existing bitmap_{get,set}_value8(), which is a special case of the
bitmap_{read,write}.

I agree that bitmap header is overwhelmed (like many other kernel
headers), and I'm working on unloading it.

I checked allyesconfig build time before and after this patch, and
I found no difference for me. So if you're concerned about compilation
time, this patch doesn't make things worse in this department.

With all that, Alexander, can you please double-check that the
functions get inlined, and if so:

Signed-off-by: Yury Norov <yury.norov@gmail.com>
