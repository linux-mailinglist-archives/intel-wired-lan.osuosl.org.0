Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBE83DE0BB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 22:32:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FD54404D7;
	Mon,  2 Aug 2021 20:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U2X7mXpC-kg6; Mon,  2 Aug 2021 20:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 578F840184;
	Mon,  2 Aug 2021 20:32:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A4981BF303
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60908400ED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xge63mYmFugy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 20:32:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DAA240184
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:32:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 27E35610FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627936346;
 bh=RjKhF4hB/2KcuyIWUfAzYtZZ8R9Gf1asDHL4YKxZRlk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XoKTKyFs/895DJ6gXNmOgln+KqAa1z/0hs5DJFFQCBLqrUB564mpKLe6QnoO5cP9j
 wxRdd4t9mU89DkAij4LuWxqWQDtN/neVRA4rHZLlrjwb6JBunIp0V+HOFOLKUtlGpQ
 s34cVHvM020folN28dy0+Twb4aP68R0ri4L7UYw1CGgMjIf/6cTwKLJu/xBV9csgC1
 DtKKBTE/EWHmPw1tbLdI84zn5VzRc261nA6egX6EYiLIMBbVQvbJUJXzF7lZpPxGD8
 NPUOwBOJNSX2q1lHqjin2RYHrl1kOMEGOdPDEhdigZ0kNZDZim5dO8cUpfDSasDaVL
 QvjmZ9EnV57DA==
Received: by mail-wm1-f52.google.com with SMTP id x17so4894382wmc.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Aug 2021 13:32:26 -0700 (PDT)
X-Gm-Message-State: AOAM531mcnhpLdFBhbJlbF/HYVuD5XVz6krlcDbKgbWCc9fElGi4HnLU
 GkiJIlLmJXJXIEzTVBsJ/mU48/71NBIdVAgvFuY=
X-Google-Smtp-Source: ABdhPJzYGkFqLqspaoCqN00TaY6q2TQGENW8z+Kn/ypsgZ93keijuGyG0Uyz98n3cAQoC3RU3kB3ITgGfxsX8sNbmis=
X-Received: by 2002:a7b:ce10:: with SMTP id m16mr626048wmc.75.1627936344707;
 Mon, 02 Aug 2021 13:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
In-Reply-To: <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 2 Aug 2021 22:32:08 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
Message-ID: <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
 PTP_1588_CLOCK dependencies
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 2, 2021 at 9:54 PM Keller, Jacob E <jacob.e.keller@intel.com> wrote:
>
> So go back to "select"?
>
> It looks like Arnd proposed in the thread a solution that did a sort of
> "please enable this" but still let you disable it.
>
> An alternative (unfortunately per-driver...) solution was to setup the
> drivers so that they gracefully fall back to disabling PTP if the PTP
> core support is not reachable.. but that obviously requires that drivers
> do the right thing, and at least Intel drivers have not tested this
> properly.
>
> I'm definitely in favor of removing "implies" entirely. The semantics
> are unclear, and the fact that it doesn't handle the case of "i'm
> builtin, so my implies can't be modules"...
>
> I don't really like the syntax of the double "depends on A || !A".. I'd
> prefer if we had some keyword for this, since it would be more obvious
> and not run against the standard logic (A || !A is a tautology!)

I think the main reason we don't have a keyword for it is that nobody
so far has come up with an English word that expresses what it is
supposed to mean.

You can do something like it for a particular symbol though, such as

config MAY_USE_PTP_1588_CLOCK
       def_tristate PTP_1588_CLOCK || !PTP_1588_CLOCK

 config E1000E
        tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
        depends on PCI && (!SPARC32 || BROKEN)
+       depends on MAY_USE_PTP_1588_CLOCK
        select CRC32
-       imply PTP_1588_CLOCK


          Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
