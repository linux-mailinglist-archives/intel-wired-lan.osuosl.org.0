Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 739298BDD89
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 10:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 229E3405F1;
	Tue,  7 May 2024 08:55:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPk8oj8b2dNQ; Tue,  7 May 2024 08:55:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 803F24065C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715072126;
	bh=Jo8OYnmn4OC8OiXlkwsI28aekX0eSHBqnnXbWjkcswQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1L+vD/RA5mUj35iwyqdh/AjWg8MStoY11f7/Au1pd9HGE5bQ0SJbH5FKr1qQY79zE
	 +ybmLrTu3EPPvsYAwdtAPSA3ZO9IXOQbOEkJEbl+30qAkVhVa6g4ngawKxSal5w46a
	 qimDffOHqQpRHbi1O7zPxvCLxKLVDvCREvBhjLFFcP+/3h28Calnu2mVzyawEQj6kO
	 XO2QHqyyWBSDc/rxbuNSVBX+GfuShofyvZ+/LewiOI5MGKVLqRfSM/KXiobT4TQ9Az
	 C+CReBCOTj8flXVQTnEakep7hDJZh+ylqDK0WFgnsdnZpLDf5+4Anxc4U4wxVVjo3v
	 4jCegrMaqgD4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 803F24065C;
	Tue,  7 May 2024 08:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D45A1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 08:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 84AFE4060C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 08:55:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BkvAQiViiTPm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 08:55:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2A721405F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A721405F1
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A721405F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 08:55:20 +0000 (UTC)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3156F400F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 08:55:08 +0000 (UTC)
Received: by mail-lf1-f72.google.com with SMTP id
 2adb3069b0e04-51f8aadbf04so3200639e87.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 May 2024 01:55:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715072104; x=1715676904;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Jo8OYnmn4OC8OiXlkwsI28aekX0eSHBqnnXbWjkcswQ=;
 b=qNOpe9tTLwgtwQ0bjXoP+Ph8TxislJtkHCd3mG5nUcPaLr8+W/LDOKdxAP/On4fryT
 99q9UFGadFqwGmN9e2k1vKGRovfMsubYva4W8VKADx+38cQtJqwI1pc2E4VM3t5QXkqI
 cNAWiv1ngiAp7BqPr+ixCaeh0N4FmQOvtj6Eli/k7mp5pq0feEHA/e5zhhe8oCL0BU6f
 hYGy4V2AEnry/GdRYpiz50ma7uxKufNz3tEuM5gBYXlu+GNY/BAWhqJw2s5SQCVn+iO9
 0huWsJ4BPmATIDruboCC63F/QIHnHHOfc65udJuRRwtn3XqeOmofx2z3COoBNZer34w1
 GMtg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtzca815D7NJzKkQhp1OJpyLJjds98m0AVeZH7zn7t0PG0vNX3HC+7SyTcNeFoU/SHDJ6FcQ/8CYunxTuzFFsmvO4cxb8rGc3ocETpvSP0yQ==
X-Gm-Message-State: AOJu0Yyl8LwZ+dMEEuY0Xyis1Uv4Cx29spL4LYmYwz8ENLkhoel+LiTJ
 fJWYukZPMxstNc/FL9OAhq7W5mYfuRI8d52mrIb1cN67C+Z8sswtVn0FPxZQpyHpoHK3cbTh3LV
 LVymNdGF+IesqJiF1BLPup53RtIPjVN8WdtsDlkeclZnHAHeaKjX6qXqTT84NMUfWxwuroYdEkz
 KZp/HIR08CRG4WJNxNwYcXUAfL9h7aXV/o5n5m72X5Jjfit1d7HW5BwcxKUw==
X-Received: by 2002:a19:5e55:0:b0:513:e63c:cfe7 with SMTP id
 z21-20020a195e55000000b00513e63ccfe7mr7624854lfi.66.1715072103923; 
 Tue, 07 May 2024 01:55:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcHr569y8CXVv1K6jlp8zJO7oa0VJugnPkcRf2d/9ahiU6CQowCeVXshdDc2dOJTtspM4xzmgndcLovNTDPwk=
X-Received: by 2002:a19:5e55:0:b0:513:e63c:cfe7 with SMTP id
 z21-20020a195e55000000b00513e63ccfe7mr7624834lfi.66.1715072103481; Tue, 07
 May 2024 01:55:03 -0700 (PDT)
MIME-Version: 1.0
References: <20240503101824.32717-1-en-wei.wu@canonical.com>
 <7f533913-fba9-4a29-86a5-d3b32ac44632@intel.com>
 <CAMqyJG1Fyt1pZJqEjQN_kqXwfJ+HnqvW1PnAOEEpzoS9f37KBg@mail.gmail.com>
 <d2d9c0a8-6d4f-4aff-84f3-35fc2bff49b7@intel.com>
In-Reply-To: <d2d9c0a8-6d4f-4aff-84f3-35fc2bff49b7@intel.com>
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Tue, 7 May 2024 10:54:52 +0200
Message-ID: <CAMqyJG2S4yvO-UiCiWydO+9uzOWpeKR9tmMDWrw=m6O7pd3m0w@mail.gmail.com>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1715072108;
 bh=Jo8OYnmn4OC8OiXlkwsI28aekX0eSHBqnnXbWjkcswQ=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=YavZR7pl7WFLy9Bo2I/vhLhZi/8SYiXHF7Lffwj3txGn8yEqvMrMbKko5XbRc9IUV
 8CeJyiNj8/35BnLLPJqZQBQx1P4VSqcKX2uLjq7em82ZmV4/IPj2hyuSDkM+teJcrn
 Uqel2KWPrTJ6MbdH+KCjACBUhUR31bvVqkuEtHTznyi/6GOpOcSiChs7wexyZ3Aamg
 WQckUoH6Cj1BTbywtagDICSZ2n2DKmn/4CtdSe1Oe8eCPpy8cySoeg1AN1V6jjnM8N
 mYM2DQ8nXbrEG9yadDw87iKIaUOOD6rxAo1xwBfnWcnF6wNt6y5hrC21zJdF4lnohx
 hthvHYZs/LCvw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=YavZR7pl
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
Cc: Sasha Neftin <sasha.neftin@intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Why so long?

> Furthermore, if I am reading this right, it appears that, with the
> proposed change, e1000e_phy_has_link_generic will poll the PHY link up
> to 10 times, with 100ms delay between each iteration - until the link is
> up. Won't it lead to wasting all this time, if the link is actually down?
It seems like making the delay 10ms is more suitable. And if the link
is actually down, it takes up to 10 (times)* 10 (ms) = 100ms which is
not quite long in terms of the configuration path.

> (1) How serious this problem is. It is normal for link establishment to
> take a few seconds from plugging the cable (due to PHY
> auto-negotiation), and I can accept some link instability during that time.
Actually, the problem is not critical since the link will be up
permanently after the unstable up-down problem when hot-plugging. And
it has no functional impact on the system. But this problem can lead
to a failure in our script (for Canonical Certification), and it's not
tolerable.

> (2) Assuming the problem is considered serious - have we root-caused it
> correctly.
The problem seems to be a PHY manufacturer errata. The patch here is a
MAC workaround and I'm wondering if we can root-cause it.

On Tue, 7 May 2024 at 08:22, Ruinskiy, Dima <dima.ruinskiy@intel.com> wrote:
>
> On 06/05/2024 19:46, En-Wei WU wrote:
> > Thank you for your time.
> >
> > Originally, sleep codes would only be executed if the first read fails
> > or the link status that is read is down. Some circumstances like the
> > [v2,2/2] "e1000e: fix link fluctuations problem" would need a delay
> > before first reading/accessing the PHY IEEE register, so that it won't
> > read the instability of the link status bit in the PHY status
> > register.
> >
> > I've realized that this approach isn't good enough since the purpose
> > is only to fix the problem in another patch and it also changes the
> > behavior.
> >
> > Here is the modification of the patch [v2,2/2] "e1000e: fix link
> > fluctuations problem":
> > --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > @@ -1428,7 +1428,17 @@  static s32
> > e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
> > - ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
> > /* comments */
> > + ret_val = e1000e_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT,
> > 100000, &link);
> >
> > Do you think we can just add a msleep/usleep_range in front of the
> > e1000e_phy_has_link_generic() instead of modifying the sleep codes in
> > e1000e_phy_has_link_generic()?
> >
> > Thanks.
> >
> > On Mon, 6 May 2024 at 23:53, Sasha Neftin <sasha.neftin@intel.com> wrote:
> >>
> >> On 03/05/2024 13:18, Ricky Wu wrote:
> >>> Originally, the sleep codes being moved forward only
> >>> ran if we met some conditions (e.g. BMSR_LSTATUS bit
> >>> not set in phy_status). Moving these sleep codes forward
> >>> makes the usec_interval take effect every time.
> >>>
> >>> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> >>> ---
> >>>
> >>> In v2:
> >>> * Split the sleep codes into this patch
> >>>
> >>>    drivers/net/ethernet/intel/e1000e/phy.c | 9 +++++----
> >>>    1 file changed, 5 insertions(+), 4 deletions(-)
> >>>
> >>> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> >>> index 93544f1cc2a5..4a58d56679c9 100644
> >>> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> >>> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> >>> @@ -1777,6 +1777,11 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
> >>>
> >>>        *success = false;
> >>>        for (i = 0; i < iterations; i++) {
> >>> +             if (usec_interval >= 1000)
> >>> +                     msleep(usec_interval / 1000);
> >>> +             else
> >>> +                     udelay(usec_interval);
> >>> +
> >>
> >> I do not understand this approach. Why wait before first
> >> reading/accessing the PHY IEEE register?
> >>
> >> For further discussion, I would like to introduce Dima Ruinskiy (architect)
> >>
> >>>                /* Some PHYs require the MII_BMSR register to be read
> >>>                 * twice due to the link bit being sticky.  No harm doing
> >>>                 * it across the board.
> >>> @@ -1799,10 +1804,6 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
> >>>                        *success = true;
> >>>                        break;
> >>>                }
> >>> -             if (usec_interval >= 1000)
> >>> -                     msleep(usec_interval / 1000);
> >>> -             else
> >>> -                     udelay(usec_interval);
> >>>        }
> >>>
> >>>        return ret_val;
> >>
>
> Regarding the usage of sleep/sleep_range functions - they can only be
> used if this code will never be called from an atomic context. I do not
> know if such a guarantee exists.
>
> In general I have quite a few questions and concerns regarding this
> patch series. The comment in patch 2/2 states that it is designed to
> work around a link flap issue with the average time between link up and
> down is 3-4ms, and yet the code waits a whole 100ms before reading the
> PHY bit the first time. Why so long?
>
> Furthermore, if I am reading this right, it appears that, with the
> proposed change, e1000e_phy_has_link_generic will poll the PHY link up
> to 10 times, with 100ms delay between each iteration - until the link is
> up. Won't it lead to wasting all this time, if the link is actually down?
>
> Looking at https://bugzilla.kernel.org/show_bug.cgi?id=218642, at the
> problem this commit series is trying to solve - I wonder:
> (1) How serious this problem is. It is normal for link establishment to
> take a few seconds from plugging the cable (due to PHY
> auto-negotiation), and I can accept some link instability during that time.
> (2) Assuming the problem is considered serious - have we root-caused it
> correctly.
>
