Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 437778C1434
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 19:40:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFA8B405EF;
	Thu,  9 May 2024 17:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ryfbyCtWlew9; Thu,  9 May 2024 17:40:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AEDA405D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715276426;
	bh=ainzmkdiFZatTBBNnswuHUf0cvHV/VEu7RERUQouf94=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NulZ/BPVhrZh4VeIZRF9/BpzA8LfaWWab3DTt8y0JVuA+FccayE6KvoTHHR1LGhJX
	 rmtXK0QorAhgr3PsraRqPh6bDlShh3+8LDnYzimlTaIvfN4AP4GRu4pue1aydgiMOx
	 m/gPjTL0LLrkJeQ0Ege0urprHtBMVtG0XFa67yuZw0YsN16y1ru1vVbsxQF/wgr5Mw
	 Ng8USP/yynCiYgkB2m+Lu6TultMnvkbi72WG831Qn7sKHtsmtV+wCAqTEK621mkVqY
	 O+Nleh9r2Zhkcxj7a1YDzLp3dD4V8P98msk0hYYXlqxbA+sDe2/UWOSlNq4wzdVo4P
	 zc+2dF5WsWoIQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AEDA405D3;
	Thu,  9 May 2024 17:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF98A1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5FE183EBD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:40:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D86yKzraxrMd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 17:40:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 94F9783EBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94F9783EBA
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94F9783EBA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:40:21 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D1D4D411F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:40:14 +0000 (UTC)
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-34d9deebf38so707760f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 May 2024 10:40:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715276414; x=1715881214;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ainzmkdiFZatTBBNnswuHUf0cvHV/VEu7RERUQouf94=;
 b=h9sJRJsmw40f1ljMgbRCatMX9kYBhR9mEcFNYlr/7KtXTf9Rzx7Ebt5g3Zky8ioV2P
 IJF0HMSYf7DkGUDMJyFIgvVbI6OUc+bgT+A3G6l4/UJOtw7pesatEdNoHGPbeFib+JZw
 79CzJXua8nKWl1rdTH/zdkzgMtzynetplAiJR+gqnW4O5iAq3ZFMECAmzN7n8aq9lNpu
 Hpi+SumAxw4mjU+QJHLLa5d13Jbzod4aAHXAwjuppwuB2LiKLzzXwr1wDrefy1zsYfmO
 k8JpZn+THui7v7//H2QxYLUFcfBEI0jhJvQHkHWvvYFpIPFmfRO0Tvwh/zNK3tmt0SvE
 MCTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUaYuwo7UTGGuU2iP1/I2rEPPH//dXtjhZYelx+tztK7uFoU+Jf4kPVPTA+BNMGtMSvD+3rYC78gtAiPIC+EY5QQhbFKafZj55QTYjvDak8cw==
X-Gm-Message-State: AOJu0Yw/eJC7Fa+TTkjUxGWY4tt2o6jHZDwxCAEwsVnpIRXfuJ5sHmzT
 C4jefxJ+DpBjj4VbK93XYPywN9ec+BijWPX00RStPSR4qXDt2/YeO3tdyup6a/DtLOMjT4lLB4f
 scuKMm1by7sZYviTkbPOOPVbPm+GfVJWptu5E2E1ihJaF+II5rzsDCFgaE4f6ZcEIEsSe4OlEwM
 8GTigMCIqUX4/9KoPDy9HAmYbRFIbLjImQDIetBAWmBdLNvxxCREuU0kjNDQ==
X-Received: by 2002:a5d:45d1:0:b0:349:ffed:792d with SMTP id
 ffacd0b85a97d-3504a7372a1mr278051f8f.30.1715276414422; 
 Thu, 09 May 2024 10:40:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGadpoJUBLPLrGbKTI6NrhfHgQFMupVGgJHWXb6ctPt9UXT1JRQDQhiYxpWoe+IrnBQi24ZmA5VglKX5yH9fA4=
X-Received: by 2002:a5d:45d1:0:b0:349:ffed:792d with SMTP id
 ffacd0b85a97d-3504a7372a1mr278029f8f.30.1715276414106; Thu, 09 May 2024
 10:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240503101836.32755-1-en-wei.wu@canonical.com>
 <83a2c15e-12ef-4a33-a1f1-8801acb78724@lunn.ch>
 <514e990b-50c6-419b-96f2-09c3d04a2fda@intel.com>
 <334396b5-0acc-43f7-b046-30bcdab1b6fb@intel.com>
 <cc58ecfc-53f1-4154-bc38-e73964a59e16@lunn.ch>
In-Reply-To: <cc58ecfc-53f1-4154-bc38-e73964a59e16@lunn.ch>
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Thu, 9 May 2024 19:40:02 +0200
Message-ID: <CAMqyJG2Xnn7VtT1CrCXK7ojuUmP+ig8uwB30uK3nprPo5hLiUQ@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1715276414;
 bh=ainzmkdiFZatTBBNnswuHUf0cvHV/VEu7RERUQouf94=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=YZi/LcCQr1YYasisWBZyh0SM/lE8xac9Kfyc51R1SKeSsOTaFFgrZGdSHcJxpzdZI
 KTCQ3A4UD6hVu8MQ0tOMsglwa7qz8fDnk3Z5rqu7ZGVYEpGFoTZxEUsecIxcHWSaP+
 G3yH3NjEN4f1vyKqH4EGGOYRxiphcykaUvozuQWO9QjJTHjrjwbHGo4hbhjwB5NMWm
 le/+9G+aR4SBuwpTloslpdOsXubK4aL/XLqkOj9nUKDORasD7fuTW6Bd1ytki9ay/d
 7V0KkxOUVNzv9N4AUqo4z3SWV3XI/MAResqcjrr5hvuWWZ3Uut1E0Z65Tnif5kSd7G
 OqaC2AvxNHKxg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=YZi/LcCQ
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: fix link fluctuations
 problem
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
Cc: Sasha Neftin <sasha.neftin@intel.com>,
 "naamax.meir" <naamax.meir@linux.intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 "Avivi, Amir" <amir.avivi@intel.com>, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, kuba@kernel.org, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> En-Wei, My recommendation is not to accept these patches. If you think
> there is a HW/PHY problem - open a ticket on Intel PAE.

> I concur. I am wary of changing the behavior of some driver
> fundamentals, to satisfy a particular validation/certification flow, if
> there is no real functionality problem. It can open a big Pandora box.
OK. Thanks for your help. I think we can end this patchset now.

> It is normally a little over 1 second. I
> forget the exact number. But is the PHY being polled once a second,
> rather than being interrupt driven?
If I read the code correctly, the PHY is polled every 2 seconds by the
e1000e watchdog. But if an interrupt occurs and it's a
link-status-change interrupt, the watchdog will be called immediately
and the PHY is polled.

> What does it think the I219-LM is advertising? Is it advertising 1000BaseT_Half?
> But why would auto-neg resolve to that if 1000BaseT_Full is available?
I'm also interested in it. I'll do some checking later to see what's
advertising by us and the link partner.

> Agreed. Root cause this, which looks like a real problem, rather than
> apply a band-aid for a test system.
OK. I think there is a clue which is related to auto-negotiation. I'll
work on it later.

Thank all of you for your help, I really appreciate it.

On Thu, 9 May 2024 at 15:46, Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, May 09, 2024 at 12:13:27PM +0300, Ruinskiy, Dima wrote:
> > On 08/05/2024 8:05, Sasha Neftin wrote:
> > > On 07/05/2024 15:31, Andrew Lunn wrote:
> > > > On Fri, May 03, 2024 at 06:18:36PM +0800, Ricky Wu wrote:
> > > > > As described in https://bugzilla.kernel.org/show_bug.cgi?id=218642,
> > > > > Intel I219-LM reports link up -> link down -> link up after hot-plugging
> > > > > the Ethernet cable.
> > > >
> > > > Please could you quote some parts of 802.3 which state this is a
> > > > problem. How is this breaking the standard.
> > > >
> > > >     Andrew
> > >
> > > In I219-* parts used LSI PHY. This PHY is compliant with the 802.3 IEEE
> > > standard if I recall correctly. Auto-negotiation and link establishment
> > > are processed following the IEEE standard and could vary from platform
> > > to platform but are not violent to the IEEE standard.
> > >
> > > En-Wei, My recommendation is not to accept these patches. If you think
> > > there is a HW/PHY problem - open a ticket on Intel PAE.
> > >
> > > Sasha
> >
> > I concur. I am wary of changing the behavior of some driver fundamentals, to
> > satisfy a particular validation/certification flow, if there is no real
> > functionality problem. It can open a big Pandora box.
> >
> > Checking the Bugzilla report again, I am not sure we understand the issue
> > fully:
> >
> > [  143.141006] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 1000 Mbps Half
> > Duplex, Flow Control: None
> > [  143.144878] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Down
> > [  146.838980] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 1000 Mbps Full
> > Duplex, Flow Control: None
> >
> > This looks like a very quick link "flap", following by proper link
> > establishment ~3.7 seconds later. These ~3.7 seconds are in line of what
> > link auto-negotiation would take (auto-negotiation is the default mode for
> > this driver).
>
> That actually seems slow. It is normally a little over 1 second. I
> forget the exact number. But is the PHY being polled once a second,
> rather than being interrupt driven?
>
> > The first print (1000 Mbps Half Duplex) actually makes no
> > sense - it cannot be real link status since 1000/Half is not a supported
> > speed.
>
> It would be interesting to see what the link partner sees. What does
> it think the I219-LM is advertising? Is it advertising 1000BaseT_Half?
> But why would auto-neg resolve to that if 1000BaseT_Full is available?
>
> > So it seems to me that actually the first "link up" is an
> > incorrect/incomplete/premature reading, not the "link down".
>
> Agreed. Root cause this, which looks like a real problem, rather than
> apply a band-aid for a test system.
>
>       Andrew
