Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 718C78BDE10
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 11:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D39840209;
	Tue,  7 May 2024 09:24:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2WT4hKZp7ZWw; Tue,  7 May 2024 09:24:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC4074027F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715073864;
	bh=L+nK70gt6qYfXCC8GaVCochZ/g6jNnBIwcw8pbcit5Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rDU/Re6o7ESu/patW6vR0pWKO3XlTrOnIV76rnQ5aZhELCilKR9VdW6qXdu5o37EO
	 r3xpFGPlJXQ79c4dvnIum4OrmBZY3aFkjXeYeyyGQdeZGhuhvhPJ3I0lCMSO49KBTw
	 BQwDauTGmAXjrwdMYuiB16xx4PvP5taML3IyfXeK2WTguAf2hU7zcn8bTHrYkwPtt4
	 wmS94h2tYgnvBmh+r13XLsjyRnpTLS9Naw0HAfed/wWrV4AERc2z8Cf204ihYUvZSN
	 Vif7gEBbb4mMHIr1+S+Gm3LKynkO5E+qOhtFWRtRLm6K6xKbo+elyQgm1sdQjvHV12
	 NdUfyHJnuX/OA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC4074027F;
	Tue,  7 May 2024 09:24:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 443FA1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 09:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CF9C40120
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 09:24:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GDcVlb9PKLJJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 09:24:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8070640012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8070640012
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8070640012
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 09:24:20 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2210D3F6E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 09:24:17 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-34d91608deaso2081272f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 May 2024 02:24:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715073856; x=1715678656;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=L+nK70gt6qYfXCC8GaVCochZ/g6jNnBIwcw8pbcit5Q=;
 b=GwPxim7eypTIH2qN8ox6qxaRcnHXV1rUXAlnrZ0k+Az5JYNiP11X+IbAUlqLs7eQcx
 +OZOoq1+5/KnjVUWiQkq/LzvY9snbso4vjiqOO7HZsUFIulYi1kBIgwy1HjRDUgyrql/
 gXL52AyOGgsz5nvE3YJC8jdM+zDM08BZONB2fwpM5AIzrazTrnFt2SMuIO+HpdhiRSVq
 yHOilrEklJs3HILTgOTuK96iOyGCbbQsIwVNF1rZsCCQXYYmu5soGKrNT5kAuIT2Dw+t
 K/R65qUa/uFBLBtozgBn2RHLrG43FJeeLDjqRA5HVbNkpW7Ki+Lh0FZKSOYx/NMRaEBX
 JPjA==
X-Forwarded-Encrypted: i=1;
 AJvYcCURwyHltMFZX+AeHcjzQtasonlcuis9yf+hQA8CHduhp61PCMRwf7qyvMGDHwKMxnqilLfsE+EN2eenBbrxhSMrJhDgYJuawJBIbKMCPYb+rg==
X-Gm-Message-State: AOJu0YxUB+JmcxrQw6psLkcGIs/GH+5zRYIliUlRHXW8VI6+h5WVDVCS
 YIZVJLPv0jY8bO40HbhUH7VbAPY80hc10TuplLR2nUWVjKSQeBu1LQqV0uBzDWkyuNCyVowZvWj
 DZ+v6bZER+QkuOM1ZIbSqJwpQgbd3Umhgq6BEaATfNNHQgZ27TIiimQsIHtH0Euw41+oYicG6R5
 5aU0p9ljOTa/miSM8B/Vr1l9VND/JfjwN0Ng7NucrIcyvGpJistfoxdNZzTA==
X-Received: by 2002:a5d:55c3:0:b0:34c:6b36:33e5 with SMTP id
 i3-20020a5d55c3000000b0034c6b3633e5mr7548851wrw.71.1715073856786; 
 Tue, 07 May 2024 02:24:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJawWFBRi2pUGfZ2AxzikXotCoi+SGcm4po3SlZ4MEuw3m5XCHXhPk5jDnRdkoqcxw9Tms4qQp5r+6576BHgA=
X-Received: by 2002:a5d:55c3:0:b0:34c:6b36:33e5 with SMTP id
 i3-20020a5d55c3000000b0034c6b3633e5mr7548841wrw.71.1715073856520; Tue, 07 May
 2024 02:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240502091215.13068-1-en-wei.wu@canonical.com>
 <f47e0bb6-fb3f-4d0e-923a-cdb5469b6cbe@lunn.ch>
In-Reply-To: <f47e0bb6-fb3f-4d0e-923a-cdb5469b6cbe@lunn.ch>
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Tue, 7 May 2024 11:24:05 +0200
Message-ID: <CAMqyJG0kMFShx8Kir17mNZ1rD7SaBt2f_Wpv4ir+5-92v3bNaA@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1715073857;
 bh=L+nK70gt6qYfXCC8GaVCochZ/g6jNnBIwcw8pbcit5Q=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=QLgOEwMW8B+O+PGNDksSKzMS2xYmiwFHdG8TQT65kP6vFf51FtRMKbeuVsyGL87vu
 m4EudJfjAiPXS7IRGEJ3TRXFfokWcT19bQlvWf+7BEnIW0ed7Wh0mQ6J0YGlO8K4vr
 oQ9SUi6h4iDKcILhrE7FLoT1N8pJ7J/kfpiDRdu+kRCZkF1xEaiKtkl+pR/JJ1uXE3
 mZbPiOlywNcYln2n7msO0Nnlp+8lHaePBskKXY/1N1oL+WaM1s5UMU0fEqqt8ObIi5
 THT3PPep7zmLcKcwFNLZnEoyV+31FWUfVyOdTFIM14XMesIXH/j5ReO6FpWHwO1Zh9
 gqDFv+w7Ne8HQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=QLgOEwMW
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: fix link fluctuations problem
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
Cc: jesse.brandeburg@intel.co, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Why PHY is this?
It's the Intel I219-LM, and I haven't found any other device having
the same issue.

> It might be the PHY manufacture has an errata, since
> this is probably not the MAC causing the problem, but the PHY itself.
Yes. The problem seems to be a PHY problem. I'm wondering if doing a
workaround on MAC like this patch is suitable.

For further information, please check here:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240503101836.32755-1-en-wei.wu@canonical.com/

On Tue, 7 May 2024 at 03:39, Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, May 02, 2024 at 05:12:15PM +0800, Ricky Wu wrote:
> > As described in https://bugzilla.kernel.org/show_bug.cgi?id=218642,
> > some e1000e NIC reports link up -> link down -> link up when hog-plugging
> > the Ethernet cable.
> >
> > The problem is because the unstable behavior of Link Status bit in
> > PHY Status Register of some e1000e NIC.
>
> Why PHY is this? It might be the PHY manufacture has an errata, since
> this is probably not the MAC causing the problem, but the PHY itself.
>
>         Andrew
