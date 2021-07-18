Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 247F03CCB41
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jul 2021 00:08:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A861F605A0;
	Sun, 18 Jul 2021 22:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5cr6UI54WaDa; Sun, 18 Jul 2021 22:08:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA72C6058C;
	Sun, 18 Jul 2021 22:08:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F3FB1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 16:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55B7E40144
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 16:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qJMPFzZa7OZ8 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Jul 2021 16:31:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 99BA7400D4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 16:31:22 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id 23so14345731qke.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 09:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lbh05RiC9h+30ZwLSJuzKF/YhVuILafOxJla7vQvCA0=;
 b=jmNWNzfIx2VINMPbOuBUsWw7VW5Q/BWYX9XhYEVPT4sPwF5HDm7MQrRaAbcG3JFPTj
 V0fsbZaWmM54ex9ja8pt32rWm5SqOzpPoisihs/387WycF2t43snthLEc08kMWxmHPg4
 9GSFYDG9wcdXDTrwtVfR6oqOzF3JvuwMnkDPR6jflnc2USTr0Qc18ygfc2E78DrBoEgI
 8mbrnnJje1MliJf/CTdrJC2F12vdPXdKvmJ39Rwy/qupeDIUmI9QkLh56j4WCeQR0a83
 I2lrPzaM8bGJno6oAXaAHm98gsP+nvZqxrCJmyf+MpTP/fddxjO3LMTnD/6mXjFXX/zg
 d3+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lbh05RiC9h+30ZwLSJuzKF/YhVuILafOxJla7vQvCA0=;
 b=mWhnSvwrbuEQ4WK3pII2q3+rm0FB4O+TxXAIAkDtmOHYyK4YK3SAaV8QIEBeSLANAg
 kMyb1TiZMvbCEzutY1F+cz0E7Qx1z+r7t3okDzBa0igUM5xpTwwkM4e+v+vULH2U/NH+
 BbV5OJGXmoEitYNPygZNPorWG3W11swshLDXKziU1O4Um+cGBb9BAtTEK7eflxWYd8H4
 za4lBChKOIGSVAZOqAB174CB1ZQzUBJSfxhaCd8lOPEBIy8JCCwWF65FNr90ouZl5JoV
 X6ABiKkabVbp1zrPri5e8uPl0xSF1xP55hItNtK0tTQlcoqpXyUVxEyR4zW/bdbadlIb
 ZMvw==
X-Gm-Message-State: AOAM530gBhnTqyTbUtGIZpMNjlhpBWByOs78Znavu8MN3gI3u6dwE0On
 kVh9m+OMk+28a4Oqj5v+gca9P9LONEDiVzjZTpA=
X-Google-Smtp-Source: ABdhPJwdZrYq6+2AmWIqGSoKlOkdc1j95wY48iXw7BxS7NWHlKR+ilQMiiMkB4+eflmAtVVIaWMOKxa9rEMT2tFF+/A=
X-Received: by 2002:a05:620a:24c7:: with SMTP id
 m7mr19929203qkn.143.1626625881476; 
 Sun, 18 Jul 2021 09:31:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAOSf1CGVpogQGAatuY_N0db6OL2BFegGtj6VTLA9KFz0TqYBQg@mail.gmail.com>
 <20210708154550.GA1019947@bjorn-Precision-5520>
In-Reply-To: <20210708154550.GA1019947@bjorn-Precision-5520>
From: "Oliver O'Halloran" <oohall@gmail.com>
Date: Mon, 19 Jul 2021 02:31:10 +1000
Message-ID: <CAOSf1CHtHLyEHC58jwemZS6j=jAU2OrrYitkUYmdisJtuFu4dw@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Approved-At: Sun, 18 Jul 2021 22:08:02 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 netdev@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 9, 2021 at 1:45 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> *snip*
>
> Apologies for rehashing what's probably obvious to everybody but me.
> I'm trying to get a better handle on benign vs poisonous errors.
>
> MMIO means CPU reads or writes to the device.  In PCI, writes are
> posted and don't receive a response, so a driver will never see
> writel() return an error (although an error may be reported
> asynchronously via AER or similar).
>
> So I think we're mostly talking about CPU reads here.  We expect a PCI
> response containing the data.  Sometimes there's no response or an
> error response.  The behavior of the host bridge in these error cases
> is not defined by PCI, so what the CPU sees is not consistent across
> platforms.  In some cases, the bridge handles this as a catastrophic
> error that forces a system restart.
>
> But in most cases, at least on x86, the bridge logs an error and
> fabricates ~0 data so the CPU read can complete.  Then it's up to
> software to recognize that an error occurred and decide what to do
> about it.  Is this a benign or a poisonous error?
>
> I'd say this is a benign error. It certainly can't be ignored, but as
> long as the driver recognizes the error, it should be able to deal
> with it without crashing the whole system and forcing a restart.

I was thinking more in terms of what the driver author sees rather
than what's happening on the CPU side. The crash seen in the OP
appears to be because the code is "doing an MMIO." However, the
reasons for the crash have nothing to do with the actual mechanics of
the operation (which should be benign). The point I was making is that
the pattern of:

if (is_disconnected())
    return failure;
return do_mmio_read(addr);

does have some utility as a last-ditch attempt to prevent crashes in
the face of obnoxious bridges or bad hardware. Granted, that should be
a platform concern rather than something that should ever appear in
driver code, but considering drivers open-code readl()/writel() calls
there's not really any place to put that sort of workaround.

That all said, the case in the OP is due to an entirely avoidable
driver bug and that sort of hack is absolutely the wrong thing to do.

Oliver
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
