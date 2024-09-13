Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3B2978ADD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2024 23:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12B4B4070A;
	Fri, 13 Sep 2024 21:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0sCWStopt56; Fri, 13 Sep 2024 21:53:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E50EC40724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726264395;
	bh=Mo+N/W667eEINY143EiHKlaxZURxS+IB8LyZfXkFx1Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KKKjigUx0Ha2s7jDFKutzocCqmptnSXBDeUVQeqt7GQcdWQQdlETRnwUVM2UCqiJg
	 rCjkBW7r+MuLqPYVJG5XNtKkgpJVr8ekRxvDGufJ48rwga6cL3Sco9pm3rfeJ1jsfu
	 dehRhI9o9DdkD+Sdhc8MwxnAkkHJE31ckBhOT7Blc30i3N46FRnfcns/zYw6N5rhYO
	 JwkoZEayoB3mDoolx4VnGLLL5q8Wvf/C38t+EaiIut6WwthPw3rhRobqNm6hpI3zYH
	 H1sboIJqF0FgdLjQA/xHKMCvROE+ZTRjQrJFi8BOKjn6ts3lXb4btT+wxKOVXs4pX9
	 HUdj0bVHpeDIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E50EC40724;
	Fri, 13 Sep 2024 21:53:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3F651BF852
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 21:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B209B84720
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 21:53:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lEydSaONEr4j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2024 21:53:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=jesperjuhl76@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2E8F8471F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2E8F8471F
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2E8F8471F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 21:53:11 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-71781f42f75so2217391b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 14:53:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726264391; x=1726869191;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Mo+N/W667eEINY143EiHKlaxZURxS+IB8LyZfXkFx1Q=;
 b=eurRYBY3BTmaD773JMmRcrxsPGeUwJuAB6O/uzMHz6SgMg+43T4ru5sk8uNvo/ojHg
 XDy2w+TYRqZ0nrnmlXwIUt1v2urmYLws1XGL+Li3vqoyMS7fYYbWvLtpiLwqRSV81r3h
 PV4jUJPKXr1nOhsnPYDFgTRakqIQ/D77SN7OOfHF8yYK/YaT0egtJURvkaT4DY2odDq2
 qiCSoRkmSDKs6OeKOJ0SJYhJiMNk9qPijf3jcJWAGdUSMxjWpKuYW8Xun5gBKUrIainy
 A3b94IKo0NRoSIfApYqk49Y+Tfk5HfhgV+yc9ieckZahsMSmR9dEP84uU8V9Jpp71IER
 +U3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVgaIqYigZ63e//8ZpuYoJyv3rdnswt4xwseh61JBQoUUvYsdNHro6Tf3GHOhA3I8M7Swwf2rOdGjhtdqvb6Js=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzMCjgwZ2fHbwZVTwG71TTwidfoPgSjLNUoZRXLF+wKO3IcTqIQ
 rRncrsY5CcTkgV+sUld7N7F3f/3fBbEwRI+a3XhV35grjDSad0y5t6Zzxqi53AQwzc7X77cTu47
 ujnGTp2PoFuV3ny5QqGCafZuFXcA=
X-Google-Smtp-Source: AGHT+IHIIM3s9b0RG6Ya8X+Wu2PmJfg8oj1TJs0N7c2FeMGYp8eNLPoyuwqlUB21hchDOIuZd1ZV1F3l8aSKlkOEF1Y=
X-Received: by 2002:a05:6a00:a01:b0:70b:176e:b3bc with SMTP id
 d2e1a72fcca58-71926213bb8mr11895426b3a.28.1726264390946; Fri, 13 Sep 2024
 14:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
 <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
 <20240912083746.34a7cd3b@kernel.org>
 <CAHaCkmekKtgdVhm7RFp0jo_mfjsJgAMY738wG0LPdgLZN6kq4A@mail.gmail.com>
 <656a4613-9b31-d64b-fc78-32f6dfdc96e9@intel.com>
In-Reply-To: <656a4613-9b31-d64b-fc78-32f6dfdc96e9@intel.com>
From: Jesper Juhl <jesperjuhl76@gmail.com>
Date: Fri, 13 Sep 2024 23:52:34 +0200
Message-ID: <CAHaCkmfkD0GkT6OczjMVZ9x-Ucr9tS0Eo8t_edDgrrPk-ZNc-A@mail.gmail.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726264391; x=1726869191; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Mo+N/W667eEINY143EiHKlaxZURxS+IB8LyZfXkFx1Q=;
 b=GXWCgxHOZtdqijR1GU4t6NnDgIrUC58zjodzMSp8bJLDJ7EIzY+DDs7043i3pTJ/bO
 aXTbF+Cd1sWgtoAoO2efhaU8e4BWLEBB3Wuo2kMKTowotD6WQoOWtrMnE1225w3cEfVe
 M3tR977aJFmXH4qE5XxyCNA/XXmuSP62k9Sw5rWv0vTBfCYFdUbJ0FlabiBL3sVTNrEW
 RbgdRZWDq0zMGDN8SI65qxGuJhR+9tvmcjrGnDIejuYsijk5n8H+bOQkHLUM5O9MmDPT
 G8ycFsmzy2sUp5+b+P+X/6TQfg869U9WA6IRrCJOG4izw77zjoBmLl3fQQrCAZ3Sj95B
 NClQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=GXWCgxHO
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
Cc: Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 13 Sept 2024 at 09:02, Lifshits, Vitaly
<vitaly.lifshits@intel.com> wrote:
>
> On 9/12/2024 10:45 PM, Jesper Juhl wrote:
> >> Would you be able to decode the stack trace? It may be helpful
> >> to figure out which line of code this is:
> >>
> >>   igc_update_stats+0x8a/0x6d0 [igc
> >> 22e0a697bfd5a86bd5c20d279bfffd
> >> 131de6bb32]
> >
> > Of course. Just tell me what to do.
> >
> > - Jesper
> >
> > On Thu, 12 Sept 2024 at 17:37, Jakub Kicinski <kuba@kernel.org> wrote:
> >>
> >> On Thu, 12 Sep 2024 15:03:14 +0200 Jesper Juhl wrote:
> >>> It just happened again.
> >>> Same error message, but different stacktrace:
> >>
> >> Hm, I wonder if it's power management related or the device just goes
> >> sideways for other reasons. The crashes are in accessing statistics
> >> and the relevant function doesn't resume the device. But then again,
> >> it could just be that stats reading is the most common control path
> >> operation.
> >>

I doubt it's related to power management since the machine is not idle
when this happens.

> >> Hopefully the Intel team can help.
> >>
> >> Would you be able to decode the stack trace? It may be helpful
> >> to figure out which line of code this is:
> >>
> >>    igc_update_stats+0x8a/0x6d0 [igc
> >> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
>
I didn't manage to decode it with the distro kernel. I'll build a
custom kernel straight from the git repo and wait for the problem to
happen again, then I'll report back with a decoded trace.

> Hi Jasper,
>
> I agree with Kuba that it might be related to power management, and I
> wonder if it can be related to PTM.
> Anyway, can you please share the following information?
>
> 1. Is runtime D3 enabled? (you can check the value in
> /sys/devices/pci:(pci SBDF)/power/control)

$ cat /sys/devices/pci0000\:00/power/control
auto

> 2. What is the NVM version that your NIC has? (ethtool -i eno1)

$ sudo ethtool -i eno1
driver: igc
version: 6.10.9-arch1-2
firmware-version: 1082:8770
expansion-rom-version:
bus-info: 0000:0c:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

> 3. Can you please elaborate on you bug?
> Does it happen while the system is in idle state?

I don't know. It might, but I've only ever observed it while actively
using the machine. I usually notice the problem when watching a
youtube video or playing an online game and suddenly the network
connection dies.

> Does it run any
> traffic?

Yes, there's usually always network traffic when the problem occurs.

> What is the system's link partner (switch? other NIC?)

It's a "tp-link" switch: TL-SG105-M2 5-Port 2.5G Multi-Gigabit Desktop Switch

Kind regards
 Jesper Juhl
