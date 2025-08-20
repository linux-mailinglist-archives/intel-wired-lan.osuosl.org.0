Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D34B2E423
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 19:42:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF5EC412CC;
	Wed, 20 Aug 2025 17:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sT4IXcOjBFsE; Wed, 20 Aug 2025 17:42:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7217A412AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755711725;
	bh=NzSUbaH+VOCVOUqJqJIjK5ALNlf0wJhYr4X2y+q08mw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8UlZ6CYrxWj1L/OJCKIImBZwR/k5kO7Bi7KEsbly9DUeXSeRrobs6rlNuoyAkKY3J
	 0+os2+SW0naNzrVYmcqWein8yut8ikjCRblq8J0xeoHVX16AYcji5JUzlF+2Bhp06p
	 cenzROIFXmR+o/zkQjVlv98miiR0nU0Pf/nbX8Gj4ffQj5nwjV/jtau3KnM0wGJcaM
	 TPneiakQpbZ3mo1akJO+8YlkqlOQEmznQvv5Ll3/q/hLbMsdwDfRtsdYCn5U1T5uVP
	 QcGitdPsE8i5JMoA56ot+IK12e93ZmNiBKZbQWAjs37wQYDwXg3g/K3pjYvw9nVnqj
	 aDvFmLNYR2w9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7217A412AD;
	Wed, 20 Aug 2025 17:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EC00E0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 17:42:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0108E40D49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 17:42:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QsWqxcYzZvuH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 17:42:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 595F440D3C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 595F440D3C
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 595F440D3C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 17:42:03 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-2445811e19dso987995ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 10:42:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755711723; x=1756316523;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NzSUbaH+VOCVOUqJqJIjK5ALNlf0wJhYr4X2y+q08mw=;
 b=SDKyd+piYEKTWexzZlwhQBbkpNDR9bpM5mLCwJptci/W1c+27yRUjegfWa0VY6Ctim
 uQabATZWR/q8Iivh95A50V24BBADYTaoIGirD3kQmbHwLIUTeZBBo8epAJKwN6mg/MN0
 QYsADes+hbysMxK1LGj7pLky7Zs1sqRyX3z/fYoVdNzmT6DLGLzoH0yAtI99CyceTRRR
 AfxmidzJZUmDNRuxqoF1rM2v7ogg22iai89Z/UArsOS/7ikBveh7JXrpQ+Uefbd+293C
 /25+dnYlL8ctTO660xkfk3tpcrpkcADxZp9FN35JdoDFmX7pH3jVBFvkLOVdtexkJt0T
 cIzg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWo7hn14JKuFfR/t5UUsWXwQVupP6Nckou4nYFf0D1HjcPX89Th7BUYetAPfod92koARO7kg03rfJY5Qn1DK7U=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyowj2w6oLp2zkuGigzGqMn9deS4Nq/szgM3Sq8nbf+Zj7sSBRg
 nJBdy4c7NB8K0//HsFAxcPQ6izktSYJQjpEODlQFg1vTpQUVF+qlXl3Yb98br40FP88=
X-Gm-Gg: ASbGncsGQhzs6OCvaUkqN/ZaCTL1QO+tNgaF3Ke546mWJQ+MWy8iRF8SVJWX0NAzuMz
 KQuBMS+lp531xEWiEdCVfm0qu8qYlLiNyW6HVTWQKoGIiCKo7AKXoPDRXkvqCQj3vPxShqZjr30
 LUkfNr3cUhweNn2ecptyJDRMIFql/q96k+FK0rNwhTKTh4loqOt9QZgaF3lVo4x2CrHQWfewmj5
 nXITrrCvPtXZsfmzS6goi/Cia8AGsAfkB6UUHf8mvQmJIILs8rpM+aXTGzmUVXnomVp6VuSOavk
 kQGWPaXg56cMp4AMk5t4h1hOaLRMONRn0UJ3jnq+HZ/+W43y68E/d2D/xDR3jf7TYsbyyJ17c9a
 QIrDpL7yGNGauqEfQhwUkcIz8
X-Google-Smtp-Source: AGHT+IH4K4sRE7Fqgoy2HD4viykgQc0Xtxey922nomAwSvR23t0KFZi18mrd09Tt1Z+vQ9Ddj3lPkQ==
X-Received: by 2002:a17:903:2ac5:b0:240:1bdc:afc3 with SMTP id
 d9443c01a7336-245ef2520ecmr42859755ad.44.1755711722603; 
 Wed, 20 Aug 2025 10:42:02 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-245ed339fa8sm32386365ad.20.2025.08.20.10.42.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Aug 2025 10:42:02 -0700 (PDT)
Date: Wed, 20 Aug 2025 10:41:59 -0700
From: Calvin Owens <calvin@wbinvd.org>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Ivan Vecera <ivecera@redhat.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <aKYI5wXcEqSjunfk@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aKXqVqj_bUefe1Nj@mozart.vkv.me>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1755711723; x=1756316523; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=NzSUbaH+VOCVOUqJqJIjK5ALNlf0wJhYr4X2y+q08mw=;
 b=FTb9ZjfPCrw3ljf0DCgvuj7hruRBfX73i3x6jBQv0pE2gt41MCcPvw0VDbLfQT3mhB
 Qkiyk/j3ydSyRX2H5g43sRbGdGGEOxU7f3X8putuYZQOGTsH9YGGWz+nVa4P4SQotPym
 Am+aYGUu39h4/MZJiaDH2CeV3unDvDcBSg3L5Zx9r+XCOSzsKqnpDM/U8+fMe6AoBhaa
 +ovFOINqILspysqSlUsPpf3cARegQuyZ6ojmHW8F1uHM4ywAEcNL9Y70AajQrgTQNss1
 /xpyeliZlWCnDhD0y7cORr0ul/iOkf+uDr8d+/IOok9f9XqM9D+AG7OF69a9tLm33g0T
 fqcw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wbinvd.org header.i=@wbinvd.org header.a=rsa-sha256
 header.s=wbinvd header.b=FTb9ZjfP
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

On Wednesday 08/20 at 08:31 -0700, Calvin Owens wrote:
> On Wednesday 08/20 at 08:42 +0200, Michal Schmidt wrote:
> > On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
> > > The same naming regression which was reported in ixgbe and fixed in
> > > commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> > > changes") still exists in i40e.
> > >
> > > Fix i40e by setting the same flag, added in commit c5ec7f49b480
> > > ("devlink: let driver opt out of automatic phys_port_name generation").
> > >
> > > Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> > 
> > But this one's almost two years old. By now, there may be more users
> > relying on the new name than on the old one.
> > Michal
> 
> Well, I was relying on the new ixgbe names, and I had to revert them
> all in a bunch of configs yesterday after e67a0bc3ed4f :)

And, even if it is e67a0bc3ed4f that introduced it, v6.7 was the first
release with it. I strongly suspect most servers with i40e NICs running
in the wild are running older kernels than that, and have not yet
encountered the naming regression. But you probably have much better
data about that than I do :)
