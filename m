Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1445BECA3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Sep 2022 20:15:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C70DA418DF;
	Tue, 20 Sep 2022 18:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C70DA418DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663697739;
	bh=3JVB4Xhit5eVn2zXfP7sGeLDY1n3J/L4E7nOP6Msf/s=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FV1xcIyMHPDcdkOvyG7iurgfaWT0AHL1UvbAc5bfnVzmemeDMlLCUDrSgcODGTRtk
	 DNpyZrNCgu2eFNUcLpI18zeaaqqO904y9zYvKv1oTPSC8K/lX6iaL8dbBjlSKNgVQ1
	 /ZeioF3g13hhxMgy9D07C6LLVN2BgK01r0cSDZUTEKcqbL83GbfrdP8wwyuOmuBEpf
	 +wbrH/R9H2A1Ejb+V8XteBxIKqzeti6BioTtcS+cA7CGg/wrPZEED1XgZKV+D3wmJD
	 MHrcpWQdu3kNmdGuCjZa0P8aVu/I/Y3DRqf04stcpzbiAKvzEHHdYZSkVxaEcUkUps
	 Kff+W3fXYP9Kg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dyObV7YCRQiZ; Tue, 20 Sep 2022 18:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F4F741820;
	Tue, 20 Sep 2022 18:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F4F741820
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9862B1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 18:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71C6E41820
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 18:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71C6E41820
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V9JnKSxr-Tk7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Sep 2022 18:15:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 455EB416E4
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 455EB416E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 18:15:32 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id 3so2248445qka.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 11:15:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=DXGgRFrzenuJCQ3cBD3T9BZ4V6UBP/IlbFITLbOc4wA=;
 b=7OcY+HVYbkLpa8tSs7jJa2NNIxB6lelemqga/GLaczanMXt2YnfU+XCGfYCpwlBNgn
 JlCWc/IS0fczOOjcDgUnYzKs/dMYkPeg+Dvf3JQ7w5mHPQVy2llB5ofijwloB9nGn7j1
 4FazUwqs4eKAtCJhrYSULldJeHXisIw5d5GaRvma5X9uVCtP4dpP6/Qgf3v7x6M9rUC1
 lK3poKfB2/JQW+MlR3+Nc0ZQ00piUlhRgv6QxusBNwv0kTXijSycMXzlEsrkQARiiKHX
 HtiH8DLR/G0h/+uMihii7pGa3DIX615FfUDl33x+Mnn7LTvbC2gCLWSu+tM17p1mmy6A
 BXkg==
X-Gm-Message-State: ACrzQf3bHPinznpLZC73teRwF4UcYZGyFSdlx6SYCHMt4Y+wwlQ/uoUy
 dvAjgh55fUqkqLSEM8pmFrXkkcsvcNiJrw==
X-Google-Smtp-Source: AMsMyM5j5yHLfT0pJx60eopXfiPkb5KWr9zYEgZw3GpNc78YSL+pDu1fCHzuGDNcOuKqeLP1NbN3AA==
X-Received: by 2002:a05:620a:2409:b0:6ce:2440:9efd with SMTP id
 d9-20020a05620a240900b006ce24409efdmr17155963qkn.191.1663697730794; 
 Tue, 20 Sep 2022 11:15:30 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com.
 [209.85.219.179]) by smtp.gmail.com with ESMTPSA id
 h11-20020a05620a284b00b006bbc3724affsm286337qkp.45.2022.09.20.11.15.30
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Sep 2022 11:15:30 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id g5so4567715ybg.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 11:15:30 -0700 (PDT)
X-Received: by 2002:a05:6902:45:b0:6ae:ce15:a08d with SMTP id
 m5-20020a056902004500b006aece15a08dmr20152275ybh.380.1663697730098; Tue, 20
 Sep 2022 11:15:30 -0700 (PDT)
MIME-Version: 1.0
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Sep 2022 20:15:19 +0200
X-Gmail-Original-Message-ID: <CAMuHMdURCeAVt_2L33P197qbj3UBXLWRZH0nZvm+UJbnzBCS2A@mail.gmail.com>
Message-ID: <CAMuHMdURCeAVt_2L33P197qbj3UBXLWRZH0nZvm+UJbnzBCS2A@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Miroslav Lichvar <mlichvar@redhat.com>
Subject: [Intel-wired-lan] E1000e PTP crash on R-Car Gen2
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
Cc: netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

While leaving a Renesas Koelsch development board (with R-Car M2-W SoC)
and an otherwise unused Intel E1000e Ethernet card running unattended, I
ran into a crash after 4 hours and 5 minutes of uptime:

    Unhandled fault: asynchronous external abort (0x1211) at 0x00000000
    [00000000] *pgd=80000040004003, *pmd=00000000
    Internal error: : 1211 [#1] SMP ARM
    Modules linked in:
    CPU: 0 PID: 581 Comm: kworker/0:0 Tainted: G                 N
6.0.0-rc6-koelsch-00864-g34666b5da80f #1661
    Hardware name: Generic R-Car Gen2 (Flattened Device Tree)
    Workqueue: events e1000e_systim_overflow_work
    PC is at e1000e_read_systim+0x3c/0x1c0
    LR is at timecounter_read+0x14/0xa0

    [...]

     e1000e_read_systim from timecounter_read+0x14/0xa0
     timecounter_read from e1000e_systim_overflow_work+0x24/0x7c
     e1000e_systim_overflow_work from process_one_work+0x2f0/0x4c4
     process_one_work from worker_thread+0x240/0x2d0
     worker_thread from kthread+0xd0/0xe0
     kthread from ret_from_fork+0x14/0x34

    [...]

    BUG: workqueue lockup - pool cpus=0 node=0 flags=0x0 nice=0 stuck for 39s!

    [...]

This happened when checking if the time counter overflowed, which is done
from a workqueue periodically (E1000_SYSTIM_OVERFLOW_PERIOD = 4 hours).
The asynchronous external abort is a typical symptom of accessing a
device's hardware registers (in this case the PCIe controller) while the
device's clock is disabled, so presumably the workqueue ran while the
device was runtime-suspended.

I don't know much about how and when Linux uses PTP, but I did notice
drivers/net/ethernet/intel/e1000e/netdev.c makes several pm_runtime_*()
calls (but not in e1000e_read_systim()), while
drivers/net/ethernet/intel/e1000e/ptp.c makes none.

Unfortunately I haven't managed to reproduce the problem (even with
E1000_SYSTIM_OVERFLOW_PERIOD reduced), so probably there is a race
condition somewhere.

Thanks for your comments!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
