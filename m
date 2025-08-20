Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 214DEB2DDB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 15:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6D638376E;
	Wed, 20 Aug 2025 13:26:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x4VR2n7IbuEV; Wed, 20 Aug 2025 13:26:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AA3583716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755696382;
	bh=U7CcYe/4lucl8+4sR6zBU8kMF9wkL2LWw5mtU0mzIws=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RSm95BN71kzT64XUW6H4L/6Ik4MMwZvkDPvw6T0e/Xd2aZIuyeKMpDynJP+JlxYtX
	 mQ8uPFYg4stsx7KKpie7/XruiAuvMnnAM59syu0Elukf1eEwuOda/Kx/fNvYsjjTgZ
	 qeJVfdvQAdiM2MxiCHH64qvUNU5ltd3qzrWnqIKGqLZLtYegsQylp2IRd9YHOahgBL
	 8Wd58+pfZouklE7jKKfzfqTo1IHYKUTK/SXf0jwHHe0tkIiaIaAYK9pr9iYLLvDvAo
	 +yJ+yMeTdMMdosSOBFFm0Gy1NDtUJMYd1qFD8MWXUdHcTXuTopwT3ElmShpG9Fpoob
	 isly4rsnCEwXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AA3583716;
	Wed, 20 Aug 2025 13:26:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 34AE47AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 13:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E7D7408D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 13:26:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bECPs8jX_4ff for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 13:26:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.45;
 helo=mail-lf1-f45.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B2EC3408BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2EC3408BC
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2EC3408BC
 for <intel-wired-lan@osuosl.org>; Wed, 20 Aug 2025 13:26:19 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id
 2adb3069b0e04-55ce5287a47so5876287e87.3
 for <intel-wired-lan@osuosl.org>; Wed, 20 Aug 2025 06:26:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755696377; x=1756301177;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=U7CcYe/4lucl8+4sR6zBU8kMF9wkL2LWw5mtU0mzIws=;
 b=laLmeYL24N19gQl1qOqhE9ftoHUN4ilCkhXxG7H/dMVabYKKoKzL4g+T6aRywdoSSM
 tbHC1WFslLQRsjCdwu3wpwA5LsmdJJdQpPnaXcaClzbGqGLviqcDmWPUw0qs8M7C91U6
 MeLSGAY+g86GmMcbatwl3XoY7IBjgh5sQWQp3UWX16CNhNOtWdJfn9/6g8vb1hlcR94U
 YPGcOAZFJN93esqghQYFj51Vvua6njQMPd3yWyzbW1YCL4ERowVCd0UTpK5gN/drk9E5
 DWnnBi/1+pnPYTfZfxRHJGypQnpFSdRrcVQZlUfKQN5wY+6XzitrcdCXQ62W01l894Zs
 1EkQ==
X-Gm-Message-State: AOJu0YzYg3jFlCPwwIQz3UZWM8nvGq9FyyTZ7x+Oaj0IM3PsHZ96tDqp
 oUHyYySsg0/U37cSPnqvuyrFCtT9RZIBaUc93eOX4XtCAUZJ8pvRLMCg
X-Gm-Gg: ASbGncv7lBIxirfhqlXYcIAVayCfqVE/vbr1Rqv8ct2UC5S8UVObSYxK/WKKzgEFVZb
 CFfpUPepw5caUXh+UhGbKair+JLazhggQwd/TqU2humOzBFcn8p0cq/eu8U9ifrRDYLYBKkMWPy
 i4iRdEnNkiZO7qFIleUdIm4AwR6kplrszgTbF0NXr7Yh5DKjSNPiTnfByfd2g+kTqxIActmXrRi
 AOda6dcJQoX8kxVUpYFRbFA3Qy/DSLcdNVAKszTKXb8QUtrnhVJFS3JkPeIkHfdHtFocbbk/Id3
 2M9zy5YUleSR17FEdyY/4tnDIc3gC4L+SNQ+EtxVwRAC3nOw92lZGiLgaphGSpx/CiWmpA/Ix5g
 zFwD7PtV4APb68EEXEP8RMC5pPXX0RdLvLQiXyvcntkueSyO0f7lrabfp
X-Google-Smtp-Source: AGHT+IEZEwfovgUTt0Fd4xWtPFCzjI1XgAVF3QZ6PL7TNAjjTvf85QybALSTL5UPmqL/W4F12C0XFQ==
X-Received: by 2002:ac2:4ca9:0:b0:55b:732d:931 with SMTP id
 2adb3069b0e04-55e06b2dd6fmr633288e87.12.1755696377124; 
 Wed, 20 Aug 2025 06:26:17 -0700 (PDT)
Received: from onyx.my.domain (88-112-35-58.elisa-laajakaista.fi.
 [88.112.35.58]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3340a41ded8sm29670221fa.4.2025.08.20.06.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Aug 2025 06:26:16 -0700 (PDT)
Date: Wed, 20 Aug 2025 16:26:14 +0300
From: Timo Teras <timo.teras@iki.fi>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: <intel-wired-lan@osuosl.org>, <en-wei.wu@canonical.com>,
 <marmarek@invisiblethingslab.com>
Message-ID: <20250820162614.43226d39@onyx.my.domain>
In-Reply-To: <5b4b31cd-4de4-46bf-b6e0-2ff3270b7c46@intel.com>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
 <20250819201032.3873c62b@onyx.my.domain>
 <876ce7de-dc6e-4e98-9cc6-593cfe8ab73d@intel.com>
 <20250820095708.3e3060fb@onyx.my.domain>
 <5b4b31cd-4de4-46bf-b6e0-2ff3270b7c46@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
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

On Wed, 20 Aug 2025 15:38:12 +0300
"Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:

> On 8/20/2025 9:57 AM, Timo Teras wrote:
>=20
> >>>
> >>> Thanks for adding this!
> >>>
> >>> However, as a user, I find it inconvenient if the default setting
> >>> results in a subtly broken system on a device I just from a store.
> >>>
> >>> Since this affects devices from multiple large vendors, would it
> >>> be possible to add some kind of quirk mechanism to automatically
> >>> enable this on known "bad" systems. Perhaps something based on
> >>> the DMI or other system specific information. Could something
> >>> like this be implemented?
> >>>
> >>> At least in my use case I have multiple e1000e using laptops on
> >>> the same link partner working, and only one broken device for
> >>> which I reported this issue. So at least on my experience the
> >>> issue relates to specific system primarily (perhaps also
> >>> requiring a specific link partner for the issue to show up). =20
> >>
> >> Unfortunately, there is no visible configuration that allows the
> >> driver to reliably identify problematic systems.
> >> If in the future we find such data, then we can improve the
> >> workaround and make it automatic.
> >>
> >> At present, the user-controlled interface is the best we have. =20
> >=20
> > Could you look at:
> >   - drivers/hid/i2c-hid/i2c-hid-dmi-quirks.c
> >   - drivers/soundwire/dmi-quirks.c
> >=20
> > These use dmi_first_match() to match the DMI information of the
> > system and then apply quirks based on the matching per-system data.
> >=20
> > Having similar mechanism in e1000e should be possible, right?
> >=20
> > I am happy to provide the needed DMI information from my system if
> > this works out.
> >=20
> > Timo =20
>=20
> Hi Timo,
>=20
> At the moment, we have no clear knowledge as to which systems may be=20
> affected, and what common characteristics they share.
> We are working with vendors to try to narrow it down.
> You are most welcome to share DMI information from your system. It
> can help with further investigation.
>=20
> However, maintaining a DMI quirk for every single system for which an=20
> issue has been reported is not feasible. Trying to deduce a pattern
> from a handful of data points can lead to it being too broad or too
> narrow. Furthermore, it may set up expectations of updating the quirk
> every time another user comes and says 'your default setting does not
> work for me'. This can quickly escalate out of control, and generally
> seems like the wrong approach.
>=20
> Ultimately, vendors are best positioned to manage this, as they know=20
> which of their systems require this parameter. If a list were to be=20
> maintained, I=E2=80=99d suggest something similar to what Mario proposed =
for=20
> Dell platforms a few years ago for a different issue:
> https://patchwork.ozlabs.org/project/netdev/patch/20201202161748.128938-4=
-mario.limonciello@dell.com/
>=20
> For now, I prefer not to delay the current patch, acknowledging that=20
> finding a better solution may take time.

Thank you for the continued investigation on the issue!

But I find this commit to not fix the reported regression. Nothing
changes without additional admin/user changes. Things used to work and
the added/modified K1 support thing is causing a regression.

Ubuntu has already reverted the offending patch due to complaints in
some flavors:
 https://patchwork.ozlabs.org/project/ubuntu-kernel/patch/20250805071341.41=
797-2-en-wei.wu@canonical.com/
 https://bugs.launchpad.net/bugs/2115393
 https://www.mail-archive.com/kernel-packages@lists.launchpad.net/msg551129=
.html

This is what I ended up also doing as it reliably fixes things on every
model I have, and has not caused any of them to have any other issues
(including packet loss).

At least mainstream Dell Pro and HP Zbook laptops have been reported to
be broken. See:
 https://lists.openwall.net/netdev/2025/07/01/57
 https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/04=
8860.html

This seems to be the same issue:
 https://bugzilla.kernel.org/show_bug.cgi?id=3D218642

So some questions at this point:

If the added K1 configuration does not work and causes regressions,
could it be reverted and added back when a k1 configuration change that
can determine the affected systems is ready?

Could you explain the commit "e1000e: change k1 configuration on MTP
and later platforms" more? What does it fix? My understanding it is
"minor packet loss that may affect some machines"?

How many machines / what kind of scenario is affected? Is it fixing a
more serious issue than the regression it is causing?
The regression is completely defunct ethernet after unplugging cable.

My understanding is that the K1 change affects only power consumption.
Is this right? How much is the consumption difference? Would it rather
make sense to disable K1 by default on the potentially affected mac/phy
versions until a good common denominator is found?

On the other hand, do you think that asking to have a list of the few
currently known affected machines (until a simpler common denominator
can be found) too unreasonable? If the list seems to grow much, it
would be an indication that the default setting is wrong and changing
the defaults might be a good idea.

Timo
