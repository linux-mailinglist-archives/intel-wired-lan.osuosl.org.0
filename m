Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 590283DF1DE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 17:56:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9813460673;
	Tue,  3 Aug 2021 15:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPB5sqMLTng8; Tue,  3 Aug 2021 15:56:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD54960629;
	Tue,  3 Aug 2021 15:56:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08D1A1BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 15:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E95834045E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 15:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXQTcr2SOZVG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 15:56:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8FAC3403AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 15:56:00 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id a8so7158693pjk.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Aug 2021 08:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ivy58r2kivR0IDLu2ysn29+/bFLlJiQgmJM5f0+1TU8=;
 b=YpvHrlLtAC/82eD1F5VPmxocamDF2v/5NUkB+nZG2kScLLhe1HmgaWo6cxJ3DD14qb
 CXx4sL+W0TNp+R6i2/Gjf9NPFOsgwDBvB1V+iqu1jxYQ6P2IU64R55QtY9x4T2bkRFXv
 6dqlrn5y3NZCjUKOO8B5nvIg45bINpE7zY4CQzGj62GrdjMcVGCpanLNuUMdzYgvgh5n
 Y100Mh+uB9ntJve6v0LYoe9Vufn+0yv3K8/3MfC8H2qf84CjVXoYLWNYFCOebIkpELUi
 D00onjRAMXrNLN95dUNsof6ZX3ne2VFN/1iK8Ml1iZZL6splVPQCHdFJ3R+4DAQhRv7Q
 U2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ivy58r2kivR0IDLu2ysn29+/bFLlJiQgmJM5f0+1TU8=;
 b=Qjg8qLZ+l52SWEy7MTAsEvxYp0VhRkINWZhQ4GVekOC3qAvaZVzELMspjVshEaDk1B
 ClxR89nRDvw24pJER12g4RuXQDcIRgHU+EFS/IMXp/JDNgOndmYdDfjbu8iXyq4VuDE+
 36bUXCBZ1U8dCXQmhlgB/N7pCzSF7ovlX2GHPwVO8wtGN/9ZnuDAk9V5owuFoJapKy2y
 kJI67eE2NvvTwAW/cBbQbdcalWD1uRaZZR+iP+y2hnflA2AkDav0ZtXr0Ch9sCrimcl7
 MBrUtSjw5Pq2+A8YaoAvVKal58HeqjCpKyvdHJ9ELG4Kz8SRLwkCYtf1xCRaD1LS8VeQ
 Eh4Q==
X-Gm-Message-State: AOAM530wxW4f8vK8D4tTI9DyYGhYZwz8ksSo15CV3exYb23CT7XppOsv
 7Vbh6/HgB36G9XL1PIAGoOw=
X-Google-Smtp-Source: ABdhPJwi+PBAE9X9yHieg25vVfZDqPdndcDuK9bQP9ZkhxyH4kFOLvw+2FG9Yp3HU+c/jslReS1V1A==
X-Received: by 2002:a17:90a:d245:: with SMTP id
 o5mr5168127pjw.105.1628006160005; 
 Tue, 03 Aug 2021 08:56:00 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id r4sm14461041pjo.46.2021.08.03.08.55.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 08:55:59 -0700 (PDT)
Date: Tue, 3 Aug 2021 08:55:56 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <20210803155556.GD32663@hoboy.vegasvil.org>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
 <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 03, 2021 at 08:59:02AM +0200, Arnd Bergmann wrote:
> It may well be a lost cause, but a build fix is not the time to nail down
> that decision. The fix I proposed (with the added MAY_USE_PTP_1588_CLOCK
> symbol) is only two extra lines and leaves everything else working for the
> moment.

Well, then we'll have TWO ugly and incomprehensible Kconfig hacks,
imply and MAY_USE.

Can't we fix this once and for all?

Seriously, "imply" has been nothing but a major PITA since day one,
and all to save 22 kb.  I can't think of another subsystem which
tolerates so much pain for so little gain.

Thanks,
Richard


> I would suggest we merge that first and then raise the question
> about whether to give up on tinyfication on the summit list, there are a few
> other things that have come up that would also benefit from trying less hard,
> but if we overdo this, we can get to the point of hurting even systems that are
> otherwise still well supported (64MB MIPS/ARMv5 SoCs, small boot partitions,
> etc.).
> 
>         Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
