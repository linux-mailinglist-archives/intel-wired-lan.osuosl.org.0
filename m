Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BFCC45237
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 07:56:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2ED780CFE;
	Mon, 10 Nov 2025 06:56:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i_Iefc4WUr0u; Mon, 10 Nov 2025 06:56:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1161D80D2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762757796;
	bh=1WY1CcuShlRk2we91Kyt0bCpaTxBq3s2lFYDIeGQFjc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PV12IpyPW1ipNkEQYWkB0ivvkMii24vfHC3+wPbz8OBLgIpLoSiQiJQ5izOMKA9Gf
	 Et9ryKEuuCBBTqDXKi2/Evv34JAZItnEK4WESW7Ay3hpyPSPIERFKPRA+lOW1C8BaK
	 o+DxB070s9YTSqAJ2l+ptPJimsBbdRqUKm6ch4bRs9km54d4EqdaYm96LC49OXtxHN
	 sNt/KqFws3AkJ+oxobzrZfDQkrltGzyIsG2zd4RK3K5iLdNUGj4NTILQBcgEL3yteE
	 SqMggWneN/t01DeR3LkT60krPETkT9LH+WOkKQgPfghaJVsBY+Hv67rdRJmCW9GuXS
	 rLO2/Hr1n+BFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1161D80D2A;
	Mon, 10 Nov 2025 06:56:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 35B801CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 06:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27387608D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 06:56:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id INcr-pp7H68h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 06:56:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102e; helo=mail-pj1-x102e.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C2B8608D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C2B8608D7
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C2B8608D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 06:56:34 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 98e67ed59e1d1-343514c7854so2373599a91.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Nov 2025 22:56:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762757794; x=1763362594;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1WY1CcuShlRk2we91Kyt0bCpaTxBq3s2lFYDIeGQFjc=;
 b=vsaLTzGvxZI2iwMm9A6Zbv3aV+NZTX9/CZtxzRbnNplDasgvFQ+g5oLnQvOLqgIJap
 qt1nrROgAtC91ybRe89jbxcUCDBdxjgbzXqLldGXx2/yw3mCspU+ibb+lS6St64knIVG
 +sCYSD3N+5q9PGqW4rduyU2ixfD67RzN2VLQVKeW65teayDvt3+HKFs5OmNX/PeAezSp
 hkK2k1wdqJYcoOlGn0SyMj3Sk6Ogv8qJ/yLfFjG/J8UpGf7640pNu899XT5mVUq8+PIV
 u8gcryUEr5gmipOBfl/4d0+2LdephBVkp+ahtPA3y3x3Sn7F7mvNmjfqQOVDF+shypG+
 q1uQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFAL0/fJOtm3bfrQ6GWkNKh6AQbrJRt1ZMVZg3WDexAF/NvyYy/VsIlNEan5AfhVhdl8NnEQG0lHX+gcE7mi4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzcQpD/HVUCe+WuEvVtP5XAYUxkJbdhIJLAGXLoUilFAurPJgd9
 H5zA+CSthU3j4m8U5XBuVO2ByBJ6s/ZqcGTLAt79YELqBwP3AAG/aYEs
X-Gm-Gg: ASbGncsa7Zs+MqLJt1/KJjOziq+nopXXaVHtfxVcSeKxGeQtGtjn7UjDRDNbazP1OC2
 04p1oyeMqBGNqH/xWFfZvPQiWQ06J1Rveq2XDUGI5/3n7iO1g7unmTvQQ9lnLtGZ/RHfbK13VqE
 P7sMmBEj2nGMZNqx9oThCsaZNF2PGtOL1nTJORo8jvMgaIE8yx7BTYJWABcqccfzkIIFke3zRBH
 Ve25KWW13vT95cHBHqlUKs4YH/JQH+mc93+VRLQxWlw+sHC2Iqu+/LqYg6sontch09mO5P9Sq6s
 zABFAGXolc+bxjinn4r4WLl0Mh5dwilx2mb5+9EvSRRDRZysPg4hJeuGr/Mznv2IUNa107dQqAr
 1bDkN8mrmno///ONJf3Q7+PpV4UubAipvIubxbCfDH1nHVsyG0CzgKhDImS5kZZoWpbQALx1FY2
 NFhPctpAiIteKjCFdrEnIkhW56HrhN/eDyUH38AY0tMTKfsAA2nWDlTR3oZw==
X-Google-Smtp-Source: AGHT+IHO/HHwLn1ypxfIScvlrVfWexbtPhQMjjTTwSmPh9HSJNcv+2vgzbGH5WKsvvttQQePqFv3dw==
X-Received: by 2002:a17:90b:1d90:b0:340:9d78:59 with SMTP id
 98e67ed59e1d1-343535f6b33mr12883342a91.3.1762757793661; 
 Sun, 09 Nov 2025 22:56:33 -0800 (PST)
Received: from ?IPv6:2401:4900:92ea:6c8b:9820:381d:1e5e:1579?
 ([2401:4900:92ea:6c8b:9820:381d:1e5e:1579])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-ba8f9ce9645sm11854081a12.10.2025.11.09.22.56.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Nov 2025 22:56:33 -0800 (PST)
Message-ID: <726395fa54b40f117edc0a72285d28a70c156912.camel@gmail.com>
From: ally heev <allyheev@gmail.com>
To: Simon Horman <horms@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel	
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>,  Paolo Abeni <pabeni@redhat.com>, "K. Y.
 Srinivasan" <kys@microsoft.com>, Haiyang Zhang	 <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui	 <decui@microsoft.com>, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org, Dan Carpenter	
 <dan.carpenter@linaro.org>
Date: Mon, 10 Nov 2025 12:26:24 +0530
In-Reply-To: <aQ9xp9pchMwml30P@horms.kernel.org>
References: <20251106-aheev-uninitialized-free-attr-net-ethernet-v3-1-ef2220f4f476@gmail.com>
 <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
 <aQ9xp9pchMwml30P@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762757794; x=1763362594; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=1WY1CcuShlRk2we91Kyt0bCpaTxBq3s2lFYDIeGQFjc=;
 b=mejCjlJT7jbhVcTh5HlgruZqY7tRCwMQx4bJnxnwoAb3JxDSNPQfOvxJnhnIEOi/yC
 lXnwSHxoZxgayivbpsk4BuGRxfWCPFGFBC9URJpXSR3rkdFgr2y4042iumlokibDJs9U
 qYku8UJSywVAGiP84Q2Kw6inchWA6uvA2BP3nYZ52XJJQgQCHPcfpR4Xb8PX7y0iGsej
 dojb5tkglLz8J8XOXM9ERs+jexRzFgDWF9IOiroJJjMhZcHhePMmBx73J+PXL8pFvg6z
 eoWM0aYrAxSttiutG8O8BYPy4Yp+hRRnf3vcyge6NjXdzl6DtH21L0LgHDTNXLMwszBM
 iBxA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=mejCjlJT
Subject: Re: [Intel-wired-lan] [PATCH v3] net: ethernet: fix uninitialized
 pointers with free attribute
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

On Sat, 2025-11-08 at 16:36 +0000, Simon Horman wrote:
[..]
> > Please don't do it that way. It's not C++ with RAII and
> > declare-where-you-use.
> > Just leave the variable declarations where they are, but initialize the=
m
> > with `=3D NULL`.
> >=20
> > Variable declarations must be in one block and sorted from the longest
> > to the shortest.
> >=20
> > But most important, I'm not even sure how you could trigger an
> > "undefined behaviour" here. Both here and below the variable tagged wit=
h
> > `__free` is initialized right after the declaration block, before any
> > return. So how to trigger an UB here?
>=20
> FWIIW, I'd prefer if we sidestepped this discussion entirely
> by not using __free [1] in this driver.
>=20
> It seems to me that for both functions updated by this
> patch that can easily be achieved using an idiomatic
> goto label to free on error.
>=20
> [1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-m=
anaged-and-cleanup-h-constructs
>=20
> ...

Understood. I will come-up with a new patch series for removing these
two instances

Regards,
Ally
