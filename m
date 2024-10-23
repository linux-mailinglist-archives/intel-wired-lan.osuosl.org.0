Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFF09B1129
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 23:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75BC160BC7;
	Fri, 25 Oct 2024 21:02:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9jkadEhjlW9j; Fri, 25 Oct 2024 21:02:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CC2260BB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729890120;
	bh=tKZ0RLbM976KwVvBAcXswPDIrUo+ep7kQOJ1MzPirTU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mtg1WtzcIw4umTE1rf+KG7SZoVrrW98zjwjDSjgolMLYgnmwdnuqQgtKbRmGVZEM7
	 B5wUtYorLsP94JV1Lr1cTmWraMYgUElaf23UivHOYsadPHLzpzjqxnNvLNe1sGwkbD
	 dNkk4kaXJb6NEd+5zkdohfY/yGm9q7QC+vgA+Yazul6Omixsw4lC01cSXvnjlBoD2i
	 WwXFpiFDRh8qOqi3TAUEsa2uhvAnL0P+4yfDR5lzuI8ZLqxLtlTGMm9Ilyw9E5pq+3
	 k6GIB3ErMlOrtc9EptQULEv76mrf66RnpDFMAy9b9xKRvRHXxyizrUqV4OZPG0JabM
	 uj2WPddx/7Ayg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CC2260BB4;
	Fri, 25 Oct 2024 21:02:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D5ED4C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 15:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1ABC400BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 15:21:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7-86Ls8Ey4Sg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 15:21:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=stefan.k.dimitrov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6C1C240101
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C1C240101
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C1C240101
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 15:21:30 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-5c9693dc739so9157410a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 08:21:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729696888; x=1730301688;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tKZ0RLbM976KwVvBAcXswPDIrUo+ep7kQOJ1MzPirTU=;
 b=tlqGNGw0hI8VeZ1YzrGtdhEjRFV9XTzSNcV+D8eR0b9qhq8nksIsXzMIkscm8Yceps
 URwS1ABxhwzEdCHjWz8nwK5Pzi1lu0kiDnQhl4LYc68sffUaVoE4GF/X0gXpFWb8/DcS
 Ru77P16kiUxR0WObPZaOuVSjlCBof+++M4tBW8hqi0T76uPRRuxveDv8fEVUcSKlcruI
 ePM38Kovc+vmPi8xhcLDSOVvPM9SaabnhwI+AGcqcL6LXwJmpYHR5wBe+qK/1siGhzik
 U9+86o9gG8+GgaBFuKd2DNU7SJbmZhdVQOSZZW6FvMIJtQH4NzNViPGhFvnbC/Vrb41Q
 Vg5w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOL35RsikWfMUM2SzcaLT4le6eHhDgWh4XA4Kuy9L5iJs+fnEEqRJKEG+lLpUEKkKCPXmR37SpobeVTYIvNvM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YznUdrCm/G63BgLxyAdMBwCGu9IgpxfAqbmu51ZI5v5iEci3scx
 RDVGEPOELFAbroe3NYphhZm8U8f4SwMk/vTl79zSJVD67RExFYsjCevmAd6QpA+OwCubI7Z7yDm
 BZEuelXYTx4PPId0J5/MVO85q6O0=
X-Google-Smtp-Source: AGHT+IFnmNgTNASo/MZie4IqFFrE/n8XEraA/j8sKo8F8QuC1ZHU79Fc4Wp7L+I8Ksi7huCQ2pgtJLD0lhuFA6MEdcs=
X-Received: by 2002:a17:907:3e9f:b0:a7a:9144:e23a with SMTP id
 a640c23a62f3a-a9abf94d3e4mr303243466b.43.1729696887964; Wed, 23 Oct 2024
 08:21:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAE8EbV3aruDHKrBezSLg_hy0XZG2Dr1pkzvXVVTj0QpNpH86nw@mail.gmail.com>
 <66d96956-e393-41e6-952a-3f23ebcd3a79@intel.com>
In-Reply-To: <66d96956-e393-41e6-952a-3f23ebcd3a79@intel.com>
From: Stefan Dimitrov <stefan.k.dimitrov@gmail.com>
Date: Wed, 23 Oct 2024 18:21:16 +0300
Message-ID: <CAE8EbV3SGtNhYNN4EGonQrfiezVf=ZjC0hoB+9_0qxETm9E4tA@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 25 Oct 2024 21:01:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729696888; x=1730301688; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tKZ0RLbM976KwVvBAcXswPDIrUo+ep7kQOJ1MzPirTU=;
 b=gbPugAB76oAyB8D5k/8Vu67DMxZKDTnBheL8I095qh9jahyDMFUb2K4NiEoitPYHmR
 KgrJ9ija92+8/ayFpphwQopUrHe7185t+PhVvrBmvANstHt82QeEwH2/oV+SfAeRndO5
 iiMpIh9HTLrOt8yU6fjzGIyB85J1C/fTRVkK6hYrA/XO9kxquhhsAOPBgULD+GF0AXI+
 596woRz+5R0Iq23zLZ7D+k0qdHratnCI/zueDBsfp2kfi+KpqQbKgZlIsO2jZS7RKGAa
 dGjgHAe/ey8zKR5+d+0yJdwspQL2VPt7ZpEBUenfdNa42VrrZC6iHk6MY9ELIujgUwVo
 kw7A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=gbPugAB7
Subject: Re: [Intel-wired-lan] igb driver: i210 (8086:1533) very bad SNR
 performance
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

On Wed, Oct 23, 2024 at 4:38=E2=80=AFPM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> On 10/19/24 14:39, Stefan Dimitrov wrote:
> > Hello All,
> >
> > I am reporting the problem only, because the exact same
> > environment/setup is working perfectly in Win7 with Intel driver
> > version 12.13.27.0 from 7/8/2019 (I guess that is the latest driver
> > version for Win7 as it is not supported for years, but it's the only
> > Windows version I had during my tests).
> >
> > So, in very short: the same 20-25m of UTP cable, works perfectly in
> > Win7 and not at all in Linux with i210/igb driver and my best guess is
> > PHY initialization in the Linux driver compared to the one in Win7
> > drivers somehow reduces dramatically the Signal-to-Noise performance.
>
>
>
> > P.S. it seems i217 (8086:153a and 8086:153b) is also affected, at
> > least based on my very short and not extensive tests I did today.
> >
> > thanks,
> > stefan
> >
>
> Thank your for the report, I will dispatch it within Intel, we will
> communicate the progress here.
>

thank you! I hope someone will be interested to look at the problem
and even fix it, because it seems significant to me due to such
obvious and huge difference between Linux and Win7, at least based on
what I see in my test environment.

> It will be beneficial for us to know the firmware version used both
> on Linux and Windows setups.
>

please, see the FW version reported in Linux below:

# ethtool -i enp4s0
driver: igb
version: 6.8.0-40-generic
firmware-version: 3.25, 0x800005d0
expansion-rom-version:
bus-info: 0000:04:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

I am not sure how to check the FW version in Win7 though. however, is
the FW part of the driver or is it burned to EEPROM/Flash chip on the
motherboard or maybe even part of the motherboard BIOS? in that second
case it will mean both in Linux and Win7 is the same FW.

> For future reports, consider also CCing the IWL mailing list to get
> faster responses.
>

thanks, I was not sure, which is the correct mailing list in the first
place. BTW, I borrowed from family and friends few PCIe Intel Ethernet
cards - different models and chipset - I hope to test them during the
upcoming weekend and get better idea how widespread is the problem.
Also, I found several reports about "i210 low performance in linux" in
different forums, for example:

https://forum.openmediavault.org/index.php?thread/36799-dual-on-board-intel=
-i210-low-performance/

and maybe it's the same problem - I mean if the SNR performance is
that bad and it's that picky about the UTP cable, maybe in cases when
it connects, it cannot transfer the supposed amount of data,
especially on longer UTP cables. I cannot tell more, because in my
case the Link refuses to connect even as 10Mbps in Linux, while as I
mentioned in Win7 it connects as 1Gbps and I see no performance issues
whatsoever in Win7.

> Best Regards,
> Przemek
