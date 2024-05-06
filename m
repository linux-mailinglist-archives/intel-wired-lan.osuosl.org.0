Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F3B8BD308
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 18:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A1B660854;
	Mon,  6 May 2024 16:47:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OpMGMMkk_wcE; Mon,  6 May 2024 16:47:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E1BB60774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715014039;
	bh=lBDhS1Ebaa+YuFiVFmddrCNWvRnay3hvunupCOY2htE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MDMNlZiBjPyOAx5vt1pb7lQ0J3y6/PJMKBiJ2z3fzZebRvhQp7HgVL3SA8xSN6BWc
	 xwKottzkz5BS5DtR1KjGyxULSFTcPk5oAv/S1caHU58Uniflv6RPPUQZ7cPuGYkbBy
	 l4cye1jyPah/M8W18xSDhyoIxiF5AYNX07v82o+pYzSQEeIP3IKUvKO0l0YbfZN2rE
	 lxFy99H/AgNAXkkZZSqZqFFN+VUaW7P5Z2bheX+zjCRWH9XCfVTGcLog12OrrqTEEA
	 /6N3R7C6hQNGwyiMTXFZ1eY95jrYW4gachhMh17r8kjNFxDkg17Z/HZD9HG6nQ15C9
	 CweHZD2QdhWIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E1BB60774;
	Mon,  6 May 2024 16:47:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 187B21BF947
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 16:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F3644057A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 16:47:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMaD7PlFEEUl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 16:47:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A569440304
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A569440304
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A569440304
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 16:47:14 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 333A4400F8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 16:47:11 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-34dce5456c3so2035266f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 May 2024 09:47:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715014028; x=1715618828;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lBDhS1Ebaa+YuFiVFmddrCNWvRnay3hvunupCOY2htE=;
 b=H/UEX5vmcURMMXfSssQhE/MchIFqgMYncgE/sW321yXVzQXTU1F3TkbQ0BhpUHXmIv
 MpkFGmck+w9wsAUcCkvnH1drLcbNNZWJbcIcg5a0Tpejt0+eqRPENYYEaa10LTzAzOjc
 dv+9sbtPzwBTJy4QvB0pPLru0wPlo0vx3uyQccx6XFLECgRL1sfkXWujRrN0UT45aVMU
 zDZID/ULbz/KwRaDwRsLFQ3cc3GU8z1w8vyCTGJzlgL5a5Xzcvsd6P+tXkIdgNtNpBFt
 vScf/MBuZZ03xvAQ3y1EyG86+eyVdpBWmci7dMSTTDQGDXRWenFuzRVoJ86WNs61D2N5
 pgXg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVLl/wIPNQ5JIN8LCoIf14X6rktp3xlhFuYwLNHyxLS8FByThWD5fwj9Nf4XJQpxaviHIpM1bcGZSRiN15/VtXTXI5eBEWeJD5ylTdQSMSclg==
X-Gm-Message-State: AOJu0YzsOHgMKBk23dxq/An/cllZFY3wq4UAn22rgzLJH+OeP26S2wMD
 dbCueyymXYO6A5iOg0I3ezt9QeBM7LN/T/p+4wuRzygPf14ImkEgSIJHKWavM8ehnW0CLdIjjli
 TKYq8vvqa0tYiaASgkYRK7IzeKoOgbimqSqELCkyd/W2XIFi/aZjYvcAlMZ2KNtqkdD2Ivu9+nI
 H6+b8G1WN0tHhfoFbXYixl2Q/FnNGvySzZF4wlWmnuqv0qxxy+31urkgIv6Q==
X-Received: by 2002:a5d:5445:0:b0:343:6b09:653c with SMTP id
 w5-20020a5d5445000000b003436b09653cmr9213433wrv.43.1715014028034; 
 Mon, 06 May 2024 09:47:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELDM24XgpFlJfKqTrie0KzqLju4QkFgMrMwyxkhc8UujUz4TrH5RzyaUIOGAI1gDgrRnTn9pHTWWPlV8jlkw0=
X-Received: by 2002:a5d:5445:0:b0:343:6b09:653c with SMTP id
 w5-20020a5d5445000000b003436b09653cmr9213423wrv.43.1715014027737; Mon, 06 May
 2024 09:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20240503101824.32717-1-en-wei.wu@canonical.com>
 <7f533913-fba9-4a29-86a5-d3b32ac44632@intel.com>
In-Reply-To: <7f533913-fba9-4a29-86a5-d3b32ac44632@intel.com>
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Tue, 7 May 2024 00:46:56 +0800
Message-ID: <CAMqyJG1Fyt1pZJqEjQN_kqXwfJ+HnqvW1PnAOEEpzoS9f37KBg@mail.gmail.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1715014031;
 bh=lBDhS1Ebaa+YuFiVFmddrCNWvRnay3hvunupCOY2htE=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=vYUOCHKZJNztDWgZBVJITlMj8GL00YNGL6exwytIi0uruhrlzsneC1YuRi4QnAoih
 X6ddky6+/enbppoKRT16W7OUW2O9BNT4kjB4LqnDOwYwoQTsEKyQFJjZwZgGknsWZq
 bWrEsvN5yX9DYnUgoj7NO/sqAS4aMvIKgFYOoFNtVbh5zDUM6AkY/N2CVnDcPC0Q5H
 jce54ggZm6tDdD0svYKChd1mMfl2dzGg443MfknztX4yC7bnQR6sLaS3sJdGfFlHLE
 DPyxTOzUqTGl60w9WZFVaF4pquuTXWnwLoHQhAxNlUuvC4yTbCUuA6mb11XJPradhH
 c7GTWAss8Hk+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=vYUOCHKZ
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] e1000e: let the sleep codes
 run every time
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thank you for your time.

Originally, sleep codes would only be executed if the first read fails
or the link status that is read is down. Some circumstances like the
[v2,2/2] "e1000e: fix link fluctuations problem" would need a delay
before first reading/accessing the PHY IEEE register, so that it won't
read the instability of the link status bit in the PHY status
register.

I've realized that this approach isn't good enough since the purpose
is only to fix the problem in another patch and it also changes the
behavior.

Here is the modification of the patch [v2,2/2] "e1000e: fix link
fluctuations problem":
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1428,7 +1428,17 @@  static s32
e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
- ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
/* comments */
+ ret_val = e1000e_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT,
100000, &link);

Do you think we can just add a msleep/usleep_range in front of the
e1000e_phy_has_link_generic() instead of modifying the sleep codes in
e1000e_phy_has_link_generic()?

Thanks.

On Mon, 6 May 2024 at 23:53, Sasha Neftin <sasha.neftin@intel.com> wrote:
>
> On 03/05/2024 13:18, Ricky Wu wrote:
> > Originally, the sleep codes being moved forward only
> > ran if we met some conditions (e.g. BMSR_LSTATUS bit
> > not set in phy_status). Moving these sleep codes forward
> > makes the usec_interval take effect every time.
> >
> > Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> > ---
> >
> > In v2:
> > * Split the sleep codes into this patch
> >
> >   drivers/net/ethernet/intel/e1000e/phy.c | 9 +++++----
> >   1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> > index 93544f1cc2a5..4a58d56679c9 100644
> > --- a/drivers/net/ethernet/intel/e1000e/phy.c
> > +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> > @@ -1777,6 +1777,11 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
> >
> >       *success = false;
> >       for (i = 0; i < iterations; i++) {
> > +             if (usec_interval >= 1000)
> > +                     msleep(usec_interval / 1000);
> > +             else
> > +                     udelay(usec_interval);
> > +
>
> I do not understand this approach. Why wait before first
> reading/accessing the PHY IEEE register?
>
> For further discussion, I would like to introduce Dima Ruinskiy (architect)
>
> >               /* Some PHYs require the MII_BMSR register to be read
> >                * twice due to the link bit being sticky.  No harm doing
> >                * it across the board.
> > @@ -1799,10 +1804,6 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
> >                       *success = true;
> >                       break;
> >               }
> > -             if (usec_interval >= 1000)
> > -                     msleep(usec_interval / 1000);
> > -             else
> > -                     udelay(usec_interval);
> >       }
> >
> >       return ret_val;
>
