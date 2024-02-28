Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9560986B53F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:46:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19E5760BF2;
	Wed, 28 Feb 2024 16:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNOPq09MFLMD; Wed, 28 Feb 2024 16:46:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51DE760E86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709138795;
	bh=DxwTMwCJVFMBDDvjxN0uaNIVMWBc/m50PoGk4vNalyY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1y/OLy2iwPQGnxaUrCVaKfjR5ekSxd6ZsyHhHdYWyaI9ib2xK4taQI7ycMXsRMZ97
	 TOfNX5VpAqiNazjqgR78Qd9PN7Eju3HpKz2nt+Nx8Ih9VDHdaAVKELwCWOSUcXn5lq
	 lYO0u4z4k3S41BxPdHhlwTA1UB/ZggNahabr4wUYd0fklFPjoKEnR2w0rEAHiGwr4I
	 NSpX6L26+hhViKsOpxDjHy9bR4v9zxReI8e6TfVgmRct0hunyD7VdKc0QSXteTp6ej
	 RX8sIcMHrY/rsWS6+1vLzUlJeJWQsAMLmwSHziQEZF/FZbf14JLrhrGiw5POwjx2Ta
	 3HT6wW8qrmYwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51DE760E86;
	Wed, 28 Feb 2024 16:46:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C54A41BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0B06415BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqBFVLODk0pe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:46:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b2d; helo=mail-yb1-xb2d.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B0DE6415B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0DE6415B0
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0DE6415B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:46:32 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id
 3f1490d57ef6-dc6cbe1ac75so902017276.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:46:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709138791; x=1709743591;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DxwTMwCJVFMBDDvjxN0uaNIVMWBc/m50PoGk4vNalyY=;
 b=hGaM0IentW7KCM0irGiW4mkLNdUpM4nETvfKMnOz8/V1hk1MJxoanI1OfsHtbsP9mR
 jJUukBJYJVjchSNJH4F6eUPm7nDNrjQ39A2tYxIeNbQG0Ao0F+BUQh4CRCsm1cWNPW6z
 eOus5R14ReBHa6uh3ihcDTgZtxRl6d9YtbNJ7Vla57frcxL2L3GENEnBO6zGQr0TO9T/
 GvTo5JrXdqgIHyESAMk1C64DDE5QYtmf/cEQIH0l0lxvur3Akqylslnh7D6tangRjGdn
 Btpwny7nViXKxSGNvpAjPn1ZPkeHX6ERiIt84IPYOB2upHxGieflrgCcTrm2AjR1VW/1
 mBnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUemXTiZrhOwYrKcVGLwPFO+wDIR3RgsSSdnQGwx7jb2mscYvaXE7xZ73iFCvFlXYptVrVJCxKPfx9jQXauyRbTgViKwrmDro2+eQawTwdJUQ==
X-Gm-Message-State: AOJu0Yw3+/NrXqTQ/Dzf+BGYlX6xFdtmadlwLYfTKjRBbf7PlY3F9ES8
 Uxp1v82qCD/kGsqamuDkqYtSLRsSUFxJv5kC82vZdZWpoqmHCJR5
X-Google-Smtp-Source: AGHT+IG+T6i0Kg6hK0OXQQpUI7eVIpugJ4UsU/eSwtZUJTDnNAIjX3r6X/tjo8tk0qDTO98RF+EAJQ==
X-Received: by 2002:a25:72c1:0:b0:dc7:3362:4b2f with SMTP id
 n184-20020a2572c1000000b00dc733624b2fmr2053330ybc.13.1709138791147; 
 Wed, 28 Feb 2024 08:46:31 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 t13-20020a25aa8d000000b00dcc620f4139sm2082379ybi.14.2024.02.28.08.46.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:46:30 -0800 (PST)
Date: Wed, 28 Feb 2024 08:46:29 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9jZZafcVyDGOTw@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <c90e7c78-47e9-46d0-a4e5-cb4aca737d11@intel.com>
 <20240207070535.37223e13@kernel.org>
 <4f4f3d68-7978-44c4-a7d3-6446b88a1c8e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4f4f3d68-7978-44c4-a7d3-6446b88a1c8e@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709138791; x=1709743591; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=DxwTMwCJVFMBDDvjxN0uaNIVMWBc/m50PoGk4vNalyY=;
 b=lA2aw43t1sv53N+RzKBoAjevpUaKSSmq9EXCsALJHdWt2qWoIcO7n7P8tXEjH3e/CY
 iaQviL9S7xCbGKIZbivO2yPcQp8z6wsiQBO5jRdDlzLXo/UDpRP+C3gTxgSsILGQ7Dl/
 0UJXSLYUawTkjxDIdRFgqkQ890uowCzxB7afrnd9BZYUrQxR9nJdACvgjbWmGKGVVVbR
 MtX2//Pck3XxEikLgyPcpRYFOHypNIuQrjVfpjYfhkpI+uyA3jgPAOig79Q86fLmv9ta
 eFqNAqeTkzD7HM1SMr4BRjL8rWqGXhMyPC0DtQK2L1M1xJI+qI9p8qIU3B6PbmCCw+Z5
 ReXQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=lA2aw43t
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/21] ice: add PFCP
 filter support
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
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 dm-devel@redhat.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Alexander Potapenko <glider@google.com>,
 ntfs3@lists.linux.dev, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 12, 2024 at 12:35:38PM +0100, Alexander Lobakin wrote:
> From: Jakub Kicinski <kuba@kernel.org>
> Date: Wed, 7 Feb 2024 07:05:35 -0800
> 
> > On Tue, 6 Feb 2024 13:46:44 +0100 Alexander Lobakin wrote:
> >>> Add support for creating PFCP filters in switchdev mode. Add pfcp module
> >>> that allows to create a PFCP-type netdev. The netdev then can be passed to
> >>> tc when creating a filter to indicate that PFCP filter should be created.  
> >>
> >> I believe folks agreed that bitmap_{read,write}() should stay inline,
> >> ping then?
> > 
> > Well, Dave dropped this from PW, again. Can you ping people to give you
> 
> Why was it dropped? :D
> 
> > the acks and repost? What's your plan?
> 
> Ufff, I thought people read their emails...
> 
> Yury, Konstantin, s390 folks? Could you please give some missing acks? I
> don't want to ping everyone privately :z

Hi Alexander, Jakub,

I reviewed the series again and added my SOBs for bitmap-related
patches, and Acks or RBs for the rest, where appropriate.

Regarding the patch #17, I don't think that network-related tests
should be hosted in lib/test-bitmap. This is not a critical issue,
but Alexander, can you find a better place for the code?

The rest of the series is OK for me. I think Jakub wants to pull this
as a whole in his -net branch? If so please go ahead, if not - I can
pull bitmap-related part in bitmap-for-next.

Thanks,
Yury
