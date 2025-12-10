Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A87D6CB18E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 01:58:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30C57605C8;
	Wed, 10 Dec 2025 00:58:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OBxMp6u5-yKl; Wed, 10 Dec 2025 00:58:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8897A6060B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765328281;
	bh=tl9HQoJJHfF0UVdoBJcE1XlRpDwFjAh5aCNInx8N6+M=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UjLHqrugUdR0nUtCWqdSQP4l08ehI2CIogjzmS9XvdHE3nlJBR4awK+26jnOpj+Tw
	 3HaA8RbK9a/zOrk5FqMtJ3p7F8vLkgNWDx0g3N3uhxz5c4aTfXenQ6bAr2ynpSQC6v
	 OUWRy4Eoiy1hBy9BAImqCYSCAgHkYdXs2KY6pnF9yotLGzAmAwx8U45fzKYUvR2EIE
	 Rcl+hqASo1s+jvGx5JKURH6o1VbNoAUbExxSa0fkOrLkCvJ26doLE9CH+EzbSQmwNx
	 1+wY89xx3wp8DV5hugaMcO4a3AgNL9wySvlenCuSPixLVaUujRJEXbDcbSF7ftWxYE
	 RcIF5ZYSPsTZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8897A6060B;
	Wed, 10 Dec 2025 00:58:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E4BE2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 00:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0FACE847FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 00:58:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2doBtziLNY2q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 00:57:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1131; helo=mail-yw1-x1131.google.com;
 envelope-from=chaas@riotgames.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DCD3E847FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCD3E847FB
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com
 [IPv6:2607:f8b0:4864:20::1131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DCD3E847FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 00:57:57 +0000 (UTC)
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-78c6a53187dso3460807b3.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Dec 2025 16:57:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765328276; x=1765933076;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=tl9HQoJJHfF0UVdoBJcE1XlRpDwFjAh5aCNInx8N6+M=;
 b=BEk+vCtHc7R0iAE8Wloi+cbmYktU8M7DGIQOMD6U9cmjQoMT5Cc/Gcod8McWFs/E70
 mUjzot6GGqXpurjfb3miIPmV/92KBbUFwKOwoCKXssgCRW4jo2wtxQFTHteo1+Tu9Ebe
 CHv0gwB01yMJAKbuQcuxuQs51TfkNcyKPHjdEz8O20jE86mXCWa3XuvsF0ShjoCGKhHM
 xEzr8D4YRDWx8G2zjHux2Js4kCnIkOFeeZxWw8GRB/pP008YKXpZFvCQQH1Dob9DG9WA
 AUNTEDvoU4Tm4Ym7cCEdqVxaJVUafftqSfoUfcohee0vXE8GcOuTO3BmYJASLgYRDaUt
 orDg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWoMeFJ5HVXttoxqjHYGgjAzWrS+llQLBJzTMigK4Aiv8Gykm11dCz8utQ84tpLq7cimJh/ocq64I8EFs0zlBA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YweTujl3dMJjUcY5DG+w2mri6P3HUGLx8BKVNyXDf5T+BlC9HwV
 CLFi5QJh4tTBKlKJJVWgDqDANduCLXAb2dp8RkJyAGgi6gaWGDLN6swvzI7L2CaSm4b5W2Ew7Al
 DqnX/UdGgKzrsRTmZRtp6LWvTBdhY7lehy+fk1kmjXA==
X-Gm-Gg: AY/fxX7439W0wVnfZfhzTgY4wEqlHenIuu60j0pXhseFMjgbG/FudctzfYaFvM8x1w+
 qek8VpDYwjeW+TdeBe9l8hezT+cRuee6n6GlIGu6L/D6wuJVtii7Vzyu2yQDpzQX0Hot1F9UOuj
 1kZbgGf7RydFA5ytrnMBolUj1NHeHplCfhQxyY96uqId/GXW/LBBW8ePFR9++th11tB0e4FxXmq
 blkPhebTOmH+uZwerQzlgKSgRb+zApBkBXn2SOpBCbKL+PwlkooMwH33ZSh5zcf1iNhd6IjBKCb
 g6rkJS8r
X-Google-Smtp-Source: AGHT+IEhIWA9h+HCi5nUxtPHlwVU+Co1FUkf57FGZPD215aGGaS5M7cPz6X3fKiQ2+h/63IHbhwLXOs6YbrHiSbY8/M=
X-Received: by 2002:a05:690c:610a:b0:787:d0a2:1cb1 with SMTP id
 00721157ae682-78c9d85f3bfmr5504187b3.53.1765328276337; Tue, 09 Dec 2025
 16:57:56 -0800 (PST)
MIME-Version: 1.0
References: <20251203184909.422955-1-chaas@riotgames.com>
 <20251203184909.422955-2-chaas@riotgames.com>
 <0dd3d9d5-2e44-4a6b-a8f6-d997a979e128@intel.com>
In-Reply-To: <0dd3d9d5-2e44-4a6b-a8f6-d997a979e128@intel.com>
From: Cody Haas <chaas@riotgames.com>
Date: Tue, 9 Dec 2025 16:57:45 -0800
X-Gm-Features: AQt7F2pkB3kPftzT1blYPKdiletMZfEa9NP2_sfzNnQ4yvveslI0EG4-AwdauMQ
Message-ID: <CAH7f-UKnU7AhcB-JMqMcaw3vpYN7mi=xQXjQUENp1A+QSpVseg@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 kuba@kernel.org, pabeni@redhat.com, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames; t=1765328276; x=1765933076; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tl9HQoJJHfF0UVdoBJcE1XlRpDwFjAh5aCNInx8N6+M=;
 b=TdNKVqjIvTx2f3XYk8E/F8/DN0AclmxlqgobKlGqWTkdZ/aT0r8HWhvZBFDm6icyMo
 Z2x3ltaTcKBjKSM6uowRZFOA7etXMyD+7O9Gi0R021A/2aePv03KfkFCfBHaLgeSn1qi
 Nc6hay6qaIGSHwIel70RpdPj3D7Cmd17ZY3sM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=riotgames.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=TdNKVqjI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] ice: Fix persistent
 failure in ice_get_rxfh
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

On Fri, Dec 5, 2025 at 2:36=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
> thank you again for the report, and thank you for the fix, it looks good
> just some little nitpicks from me:

Thank you for the response, I'll get working on the feedback right away.

> 1. this is a bugfix, so you should add a Fixes: tag with the commit that
> added the regression (I remember you have a "slow to rebuild" platform,
> so just let me know how far you have reached with bisection/looking for
> the root cause)

We recently moved the e810 NICs we have onto a server with a much larger CP=
U so
compilation time is no longer a concern. I believe the regression was
introduced in b66a972.
So I'm currently in the process of bisecting to verify my assumption.
Just running into an
issue with building the 5.12 kernel. I'll be reaching out to the
kernel newbies mailing list for
some advice on handling the compilation issues.

> 2. bugfixes should have [PATCH iwl-net] in the Subject
> 3. you should CC netdev mailing list on IWL submissions too:
>         netdev@vger.kernel.org

Acking these two pieces of feedback, I'll add them.

> nit: you could simply "return 0" here
> then the status variable initialization during declaration could be
> removed
>
> yet another thing: for new code I would name such variable "err"

Acking these two pieces of feedback, I'll update the code accordingly.

Thank you for your time

Cody
