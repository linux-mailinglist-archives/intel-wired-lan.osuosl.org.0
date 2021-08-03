Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63DE3DF666
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 22:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C345D4022E;
	Tue,  3 Aug 2021 20:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wnd7TbfNRtfY; Tue,  3 Aug 2021 20:30:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F9FE400C7;
	Tue,  3 Aug 2021 20:30:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39F841BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 20:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28A6A60653
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 20:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qYueW9UCC1H3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 20:30:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2ABF6063A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 20:30:11 +0000 (UTC)
Received: from mail-wm1-f52.google.com ([209.85.128.52]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MQMqN-1mWp9c0LCL-00MM5x for <intel-wired-lan@lists.osuosl.org>; Tue, 03
 Aug 2021 22:30:09 +0200
Received: by mail-wm1-f52.google.com with SMTP id n11so13190088wmd.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Aug 2021 13:30:08 -0700 (PDT)
X-Gm-Message-State: AOAM530LYbDcaS+BOSh9F3Pg4bSCfnhfVh+tYLIKKfdF8c3tUKlOFNhE
 800VbM7g72IOPjxlKcu5aaWr2/ukoxPzpyd/QsE=
X-Google-Smtp-Source: ABdhPJztoKzXY55coEoAxL9y9oqrb//3AU6TiJB2JCKkwNmgNPh4QuyIuLKOpSM8h4lheCxSkbt8AoREssFdSqTTHoo=
X-Received: by 2002:a05:600c:3641:: with SMTP id
 y1mr14835788wmq.43.1628022608582; 
 Tue, 03 Aug 2021 13:30:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
In-Reply-To: <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Aug 2021 22:29:52 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1tKjWo6RQq9nxDAuEWyEF=p8HDBzYG+=r3HVG9k0oUEQ@mail.gmail.com>
Message-ID: <CAK8P3a1tKjWo6RQq9nxDAuEWyEF=p8HDBzYG+=r3HVG9k0oUEQ@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
X-Provags-ID: V03:K1:cW5hGEgNWD37zqp2czTDsP3HxsQuwG2t/S9l7Baz/MugC+gbmi5
 LOsK1IGc3g8OKKoJhiwRvigADjVFIwdHs5v6f3+R+8j1+bI5ehcnpeFCgnARwfq6sDgy4vP
 GCHBKOuxWeYmhEcfXWlxllAaxl48pgf0E3O2uKZ+GsfQkSd/zE/2jLqLBKU2cbB97ZTDzuj
 gPLJPHbdOt9sPSWema0BQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:COT2VV8ArHA=:idWA6e2VQxHttsWk0Mcqtx
 t4ru3+YfL2ig7w5WuZ6anY4FepYb/t+6oQ/ildaNQzG83vwfiifNwjK+oS/Txk9RPQGfd/iJf
 nbf8R+ftc26V4V/uI2sQEJkT78QAgJFqu1RQknkz/fzxpSf030WtivlzJLj/d5RagRAZaO28T
 d8iaPony+hDqDI4zXEvbDFTbdgAbJ4nis0FP7EBFYXCEXosTAZrV0mpivBLzrM8x6QFMkbEhE
 rcgWBsTugHJzVkvn8xadXOkXjHHTMiIpjN6pmQi2rv3bO9zuJAYKZXAbXoprg/YLi6UrlpCKH
 fjLWk4ik2iynAz9maZEULDrhc2u8k4hGW+WN6YbeTr78/iwH8IbEeyoL9E2odI8JzjdpnkuMl
 IwQYuLquIygEjm4pfvbs5nrRX8hBI0uD6HMrUuK7Pj2aYoROjzP9h666/bGGLzxX+W0Z1/nZ4
 FGoA16qEQtO1QbiFQs4C3r6q4ICycEEPundQMo65bsMMTn48UAMMcGhqmagP8/1WmyLgDv6wd
 MTbQMaMgyLYBvIKl1/zVBMz9ZecBCMw8StyjvivrlAyuAuaX33fJUnMEojbfupSqYDxMqWJ3u
 UMK6HGXIO4PfCgYtVMfp9QCGoAhrAnZZ0tIFVzDD4chAtfkhsyGRTfubGo/ZE5TNQE3RXF9hG
 dGZ4l7GXJz0SqyuTn/umqtJ6ycCYAPSQ3TybdEd0cmwAopw==
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

On Mon, Aug 2, 2021 at 10:32 PM Arnd Bergmann <arnd@kernel.org> wrote:

> config MAY_USE_PTP_1588_CLOCK
>        def_tristate PTP_1588_CLOCK || !PTP_1588_CLOCK
>
>  config E1000E
>         tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
>         depends on PCI && (!SPARC32 || BROKEN)
> +       depends on MAY_USE_PTP_1588_CLOCK
>         select CRC32
> -       imply PTP_1588_CLOCK

I've written up the patch to do this all over the kernel now, and started an
overnight randconfig build session with this applied:

https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/commit/?h=ptp-1588-optional&id=3f69b7366cfd4b2c048c76be5299b38066933ee1

       Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
