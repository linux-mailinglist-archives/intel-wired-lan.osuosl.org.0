Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1A297723C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 21:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF45F4238F;
	Thu, 12 Sep 2024 19:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5e5lOFWpZNJg; Thu, 12 Sep 2024 19:45:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D068941DE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726170357;
	bh=uSdO8RSbMs44j1H6G+dzfYRIDRqi5dt9sRxSxgubzu4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MDuBC+Zh57Dcs0+KpcN01AF1ey9YFpmOBc6OK15gtSiPSoAWdE4jRXTqRlNnaAf9R
	 gEG5ufeWUeXICxP2JpTvVBUmYjQ6T4bLE8hI+ZPjTiUoJn8bjyVNybsjkwOXbVWsAw
	 YDiQID61HF6vvtxXkhfas9alQZqN+HB/4gcfU4J8OohFTTHQSkB/QizVD9bRuqiCdc
	 1KAIMZMTgin+VsNjboFW1Z1XbeD22qLIYSAMhZiKt/wvwIVccBc3Uu6TPXZqO7Xx/M
	 1SDifPYSFS24NxfAfnU7haCGEf13AU03aN1jk1pUM/5F54bpZBM4TsL1Anvn5vFnDg
	 EE1JgVfJRgeEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D068941DE7;
	Thu, 12 Sep 2024 19:45:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 393A61BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 19:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2666740118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 19:45:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yrZJC0rB78YP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 19:45:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::430; helo=mail-pf1-x430.google.com;
 envelope-from=jesperjuhl76@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2B9BA40065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B9BA40065
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B9BA40065
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 19:45:54 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-718f28f77f4so1261295b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 12:45:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726170353; x=1726775153;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uSdO8RSbMs44j1H6G+dzfYRIDRqi5dt9sRxSxgubzu4=;
 b=CxvM2wNzC5hlemBY8xq+hzsALQoaNwZTv+e3DW+M9sZMWzzlrfj9ULfA6unPj27kFT
 29+AZMXfep8Rpx2ZmToBJAnL37LXrmwEeifHC7I9j+NPaZTydc0kCNrFCnDwHEtUNIEr
 3QwKmc8sSwTcgakOB8OodtDVvuINDdFWP7rpikrsEbZ1ZVEVawrXpF1OvL3yFWyncarY
 IA/i+gZVjM05P39oRaTutyNet0mDnqNRVLsSy7R5iEgAD9K2nxNZb8ytm2+48H6U9LtN
 jZ9MQE6LRBM2NLkn0udewPT8fPthKOcFaY64ls9VYEEiaeeWuSNCsxnMOWpSPPy18kJy
 gKUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUXsJNR+Qwj8ICHJqd+AWpIZ21cECU7TgS2MqD60GvqojvIQ0H67tZPzPO8hrkCWGJ0jpManc5hGN2OVNM1dY0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz/XX2XUG9ZK0tZ/sNi2ThpzWgUlKuW2nyx8Xl4gLx3CJpT26OU
 f80OyYNIeJ3KDRiDDEWr1trEkE9eoPRM2gAlhXqEaV/IcZuMT1CQFDOVqERbmsU0frASSZ+Ep+l
 6I2XSUqygLW8WV88uqrOnbko67OGV+fZ30tI=
X-Google-Smtp-Source: AGHT+IHKH6rubc5bszysFyN/+dOoARVsJ2z8te8iybKycrCFJobGOy5Etl6v/DFKqtfrQv2HGaoZAXDrVKFJhQH6/js=
X-Received: by 2002:a05:6a00:2e11:b0:710:bd4b:8b96 with SMTP id
 d2e1a72fcca58-719262077e3mr6264905b3a.28.1726170353359; Thu, 12 Sep 2024
 12:45:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
 <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
 <20240912083746.34a7cd3b@kernel.org>
In-Reply-To: <20240912083746.34a7cd3b@kernel.org>
From: Jesper Juhl <jesperjuhl76@gmail.com>
Date: Thu, 12 Sep 2024 21:45:17 +0200
Message-ID: <CAHaCkmekKtgdVhm7RFp0jo_mfjsJgAMY738wG0LPdgLZN6kq4A@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726170353; x=1726775153; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=uSdO8RSbMs44j1H6G+dzfYRIDRqi5dt9sRxSxgubzu4=;
 b=XNiQU88jpKpltA7qNc4oTKLC8WnxBP68zSs4Afj28k+BSw8RgYJKiL4hbD+Owl6Daz
 zEGrvzTKyBRJZ6NgDDgDAcM6iioPkYPOsGHGLkPEZD1y4TrZgbBvNaOrqc8mc4ZLe3jM
 7k5nscC3qY9PovCDYv0KEc2fdvIffg64+PyMV9jsXyGvq4vTM9iTYI0bPw4Xpvq4jr4/
 D9S8nFQictS9bMwU141oYUpGbwDDzN4HnuJJzGiNMVd7J1K6Y74LaQ4E+74/H80KB6Ef
 WQkGsdW3rfWgDyZFwag02xikhHOt1Cei5ocURWpevb316+ONDNrmh5lzoqJczsCqeKZ8
 BWVA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=XNiQU88j
Subject: Re: [Intel-wired-lan] igc: Network failure,
 reboot required: igc: Failed to read reg 0xc030!
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Would you be able to decode the stack trace? It may be helpful
> to figure out which line of code this is:
>
>  igc_update_stats+0x8a/0x6d0 [igc
> 22e0a697bfd5a86bd5c20d279bfffd
> 131de6bb32]

Of course. Just tell me what to do.

- Jesper

On Thu, 12 Sept 2024 at 17:37, Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Thu, 12 Sep 2024 15:03:14 +0200 Jesper Juhl wrote:
> > It just happened again.
> > Same error message, but different stacktrace:
>
> Hm, I wonder if it's power management related or the device just goes
> sideways for other reasons. The crashes are in accessing statistics
> and the relevant function doesn't resume the device. But then again,
> it could just be that stats reading is the most common control path
> operation.
>
> Hopefully the Intel team can help.
>
> Would you be able to decode the stack trace? It may be helpful
> to figure out which line of code this is:
>
>   igc_update_stats+0x8a/0x6d0 [igc
> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
