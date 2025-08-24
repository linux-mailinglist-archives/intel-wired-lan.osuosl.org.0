Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8D2B3322D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Aug 2025 20:59:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E37381E27;
	Sun, 24 Aug 2025 18:59:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1dK0KKmd6VCp; Sun, 24 Aug 2025 18:59:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF88681DF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756061975;
	bh=WgUhXr4F5aTrg6STFBoaBNVOBpBCCAFD9jOjviiLi7U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6DaWeB1q1mEAZY1l6S8FqcqlYpm4y3Z/2erIQYLrFONuB2npue1S2Xu+xwSN2YKcn
	 MLIdvGvr9d3wzkHcSx8/0rIro4tqqfO9qK65O5ckqOf6sdfpkGRpupab0vgl+wkLLY
	 v4mswIS0iLU6MIQXnlP15+c5Cx09ljU3RD0Jysjt1swO4ptZjmk9fTvdAHsokgDrpp
	 6yADiNecWRVDdtPEVKbvR1OtuVT2MsBAUcgPFOs5vue8dKo9DFLUv0YchikUDb+7Oe
	 floPnLwa2tQr2z6loPY6NtOdBTfnm17C5Ugyva+TGKbJH0/NtkkDQuajmgWDp3TpC5
	 8ImIFuLj5alyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF88681DF1;
	Sun, 24 Aug 2025 18:59:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48583CA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 18:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E1B240C8F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 18:59:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kiE5JhNBHob9 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Aug 2025 18:59:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102f; helo=mail-pj1-x102f.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D451240068
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D451240068
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D451240068
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 18:59:31 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 98e67ed59e1d1-32326e09f58so4312763a91.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 11:59:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756061971; x=1756666771;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WgUhXr4F5aTrg6STFBoaBNVOBpBCCAFD9jOjviiLi7U=;
 b=oF7q08/NAM4TZLNaoZAf5siLOqPnz+p12KTTuUyBtA4d6raKHHZdUK/4e+Vyprp3By
 dE8S1ZjWp7/cS2l4s/if0+dcvIBAmrmWsp67Iivatpw4U2gFfT3y96mAdFwokObo4PEI
 hPv/i3gCHjvrM5/YWnObK9sQLsmsNH0XosMvDS/qPXMZxobGWRgtMOlGnrtiuhSmlTTn
 SaWc/3Y+jSb0GQ69tAsN2vmBASE8Ua4yc9Vrq1Rx/2iJm/+sazABf+GBPx6Si9Tl0/7V
 44Rh5PyEJf9YTp6hp0RKk6+szsc0Hi28NRKEjacRsdpJnzdx2EQroDJIqRVx+UbhufpK
 45jQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVb4f+8Ol1Be7/Os1te0HiuPXtbDWBdP5pUQFPMSxaLye8Zj4HQ2v6qDEqzjWTpPUZXbaFnou0Cit4tH62lHFU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyuCVQl5X9q5jOxmHuGFtc9saoTVSdlikEfmfhjUSemP7OgAVGN
 7Vgcv3sI7AY39EfSwFY4/0dOcK98qp/IzbkaqY3YeTKLKvwOSlN0imJQ4afR/rqICSA=
X-Gm-Gg: ASbGncuddBBaA5V3xPmfgdVxDsCCaxW+RBHdTT6AHYpnMt9t6h/RgnYtT4dNj0u/KEV
 M5JqRzED5LefaVRFpFdWzobJM72FtmMZtKshWUFCkEViW1dKrGUGats2Losro0MbjGZ4yrY9BMB
 9iMp/7mP5dvu2AgU7q2hPaHxXcreCEs6eFdKkmD5zp9IHu+x1bLuljNKVWzH7dXeCCP4cyGeH7j
 hGi/ucYRetVsVz+WANqkWHeg9rO2xrkiP/9p8wznyWst3/xerZHUDPvBz/RpV6d8qqTN09NRVCk
 IgREUe3Et3JM+dDWcbwmTakhQMqrZT9AnLomm5AbzccHC4EXlkzUgSVyFkasE+Hvvq8RDj9ZDA/
 S9DR1JoNo3nb2DI/oBqJE8EeeWQOIjaPSI24=
X-Google-Smtp-Source: AGHT+IEBnPJSYGQSDsTaSJ2fe+K+NSUWm5ONkS7xAAjriSULC2FqOnxhgD/A++McgxcezIJd+A99AA==
X-Received: by 2002:a17:90b:1f91:b0:325:83:e1d6 with SMTP id
 98e67ed59e1d1-32515ee21bbmr11146129a91.2.1756061971113; 
 Sun, 24 Aug 2025 11:59:31 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3254aa503dasm5021039a91.15.2025.08.24.11.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Aug 2025 11:59:30 -0700 (PDT)
Date: Sun, 24 Aug 2025 11:59:27 -0700
From: Calvin Owens <calvin@wbinvd.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <aKthD02IN3-l-Rbj@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me> <aKYI5wXcEqSjunfk@mozart.vkv.me>
 <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
 <aKcr7FCOHZycDrsC@mozart.vkv.me>
 <8f077022-e98a-4e30-901b-7e014fe5d5b2@intel.com>
 <aKfwuFXnvOzWx5De@mozart.vkv.me>
 <20250822072326.725475ef@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250822072326.725475ef@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1756061971; x=1756666771; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WgUhXr4F5aTrg6STFBoaBNVOBpBCCAFD9jOjviiLi7U=;
 b=W4nue+r4bcffugt8gOiZGeG4DGdxmNzTjdOGu2MXXFLzFbX0SS39zz793P2pWTizz3
 bzv38In06JttX4IDWZtlh7mKPiODciMjYK0u2WK6OIyx+qVE/AXkfNmjw643vFdwQ4zJ
 4UgphVQSQ3EEOPLRP7IWd96s5O7jWhqFAyU4zii2D297OxrUvb0SluwBkxoxO1NtwdxK
 R9+2NoE174vQ9CBs3DVc+fybrKxcQm3xBUb8u16VWEN4tAMT5QUC++zSSSSn3k17o8KP
 Y7c4dPUjBmRPJQThOLL1K40hjbdEdUED36kJoe73a7wbHmX8nT77M9QuK9hBY6It7obM
 76iw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wbinvd.org header.i=@wbinvd.org header.a=rsa-sha256
 header.s=wbinvd header.b=W4nue+r4
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
Cc: Ivan Vecera <ivecera@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Friday 08/22 at 07:23 -0700, Jakub Kicinski wrote:
> On Thu, 21 Aug 2025 21:23:20 -0700 Calvin Owens wrote:
> > > > If you actually have data on that, obviously that's different. But it
> > > > sounds like you're guessing just like I am.  
> > > 
> > > I could only guess about other OS Vendors, one could check it also
> > > for Ubuntu in their public git, but I don't think we need more data, as
> > > ultimate judge here are Stable Maintainers  
> > 
> > Maybe I'm barking up the wrong tree, it's udev after all that decides to
> > read the thing in /sys and name the interfaces differently because it's
> > there...
> 
> Yeah, that's my feeling. Ideally there should be a systemd-networkd
> setting that let's user opt out of adding the phys_port_name on
> interfaces. 99% of users will not benefit from these, new drivers or
> old. We're kinda making everyone suffer for the 1% :(

Thanks Jakub.

I let myself get too worked up about this, I apologize for being such a
pig in this thread. My frustration is not directed at anybody here, I
hope it hasn't come across that way.
