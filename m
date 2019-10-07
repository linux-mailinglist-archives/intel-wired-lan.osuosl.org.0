Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4851ECEA02
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2019 19:02:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB22385F7B;
	Mon,  7 Oct 2019 17:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fDdza8wqLLQC; Mon,  7 Oct 2019 17:02:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 127BC85F87;
	Mon,  7 Oct 2019 17:02:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E78951BF44A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:02:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E2F6687A4F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izuNdCZ6jRRe for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2019 17:02:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51EB1874AB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:02:20 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id c25so30128594iot.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Oct 2019 10:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6A4rIUjcqGcThTcraJEF4GgxX4VhVAP8ORGNSx+WSeU=;
 b=t8xl8m3dFqfl+nwGVBAgaXTXzMY7VAwFh7x79Jii2SiVGz8cM78abhKWq81YL4zJYC
 Wo0hSD3B9QLLzEcwcpvTjO3VEHCYatyO2sl3a6SCvXi1vgTdAbzVIMQRdoKaRjuRWUS6
 R9l1baAxytuK7awtgDHx0x9A735It9GgDptGwPIFHEJ3DAe807vfCjgu87HUA4nrhrUj
 hlNsqonHVjgh0NCHpFMt9FfVOM6OuUr3rFjc3Rv/tM8mzhGTFs/L5YCxLHok5cID/1vf
 xf/cFmgU1mdMo60rk4GHGxvvRYaC80bPMIODCgB5P4ofd3lf03gYGUW6MTBS9gIE4QF5
 zyxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6A4rIUjcqGcThTcraJEF4GgxX4VhVAP8ORGNSx+WSeU=;
 b=N/aTgGo5ryq8jOWx7F4oBocYwwe3uMiQ2i/gG7yLXd9EaO6mZo379irVoDrGLh0uT8
 4PGSKerfbLfCTgohFqIS7G/2dgSwIGCj8izXGaUan+/IlPD3H0y4CU1s1hRGUMNMbLC5
 3Wf9XZt2T9TMxcHiprKu9AVw8ez91JuLsKF0Yg78q5Wbw9OmKAdML2r6uWUHMNBvMso2
 EeEU0lIL8Rw0nHIsKaM6S+Rr3lDG1IlP3QFZjlO9GYOYmr1qfGC8N1rRFRMpK7qx1d7Q
 cqaWHOI62rIo3GEtozCoXv/+WEowmAqyge6j0YyZlEexppXLI8CsvuL9POXFp0/B4ClM
 1DWQ==
X-Gm-Message-State: APjAAAXCb4EByvuEfxIwYyZXdVLnxqTFTVD/VTTYl0dbD1nvNj96hkKV
 mnS/htcLBcvX8FlI15m4lqPtR1rLxgp6o+q7G5E=
X-Google-Smtp-Source: APXvYqzaH0lC5Ph8t3EsceUcseVjaditLHPO0o8A2nTOuouDjJdA5idRDEfF8wwdJbG6iixWv+/WD1T0PaCVR5bZXBU=
X-Received: by 2002:a92:6a0c:: with SMTP id f12mr29492215ilc.64.1570467739448; 
 Mon, 07 Oct 2019 10:02:19 -0700 (PDT)
MIME-Version: 1.0
References: <1570208647.1250.55.camel@oc5348122405>
 <20191004233052.28865.1609.stgit@localhost.localdomain>
 <1570241926.10511.7.camel@oc5348122405>
 <CAKgT0Ud7SupVd3RQmTEJ8e0fixiptS-1wFg+8V4EqpHEuAC3wQ@mail.gmail.com>
 <1570463459.1510.5.camel@oc5348122405>
In-Reply-To: <1570463459.1510.5.camel@oc5348122405>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 7 Oct 2019 10:02:03 -0700
Message-ID: <CAKgT0Ue6+JJqcoFO1AcP8GCShmMPiUm1SNkbq9BxxWA-b5=Oow@mail.gmail.com>
To: "David Z. Dai" <zdai@linux.vnet.ibm.com>
Subject: Re: [Intel-wired-lan] [RFC PATCH] e1000e: Use rtnl_lock to prevent
 race conditions between net and pci/pm
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, zdai@us.ibm.com,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 7, 2019 at 8:51 AM David Z. Dai <zdai@linux.vnet.ibm.com> wrote:
>

<snip>

> We have tested on one of the test box.
> With this patch, it doesn't crash kernel anymore, which is good!
>
> However we see this warning message from the log file for irq number 0:
> [10206.317270] Trying to free already-free IRQ 0
>
> With this stack:
> [10206.317344] NIP [c00000000018cbf8] __free_irq+0x308/0x370
> [10206.317346] LR [c00000000018cbf4] __free_irq+0x304/0x370
> [10206.317347] Call Trace:
> [10206.317348] [c00000008b92b970] [c00000000018cbf4] __free_irq
> +0x304/0x370 (unreliable)
> [10206.317351] [c00000008b92ba00] [c00000000018cd84] free_irq+0x84/0xf0
> [10206.317358] [c00000008b92ba30] [d000000007449e60] e1000_free_irq
> +0x98/0xc0 [e1000e]
> [10206.317365] [c00000008b92ba60] [d000000007458a70] e1000e_pm_freeze
> +0xb8/0x100 [e1000e]
> [10206.317372] [c00000008b92baa0] [d000000007458b6c]
> e1000_io_error_detected+0x34/0x70 [e1000e]
> [10206.317375] [c00000008b92bad0] [c000000000040358] eeh_report_failure
> +0xc8/0x190
> [10206.317377] [c00000008b92bb20] [c00000000003eb2c] eeh_pe_dev_traverse
> +0x9c/0x170
> [10206.317379] [c00000008b92bbb0] [c000000000040d84]
> eeh_handle_normal_event+0xe4/0x580
> [10206.317382] [c00000008b92bc60] [c000000000041330] eeh_handle_event
> +0x30/0x340
> [10206.317384] [c00000008b92bd10] [c000000000041780] eeh_event_handler
> +0x140/0x200
> [10206.317386] [c00000008b92bdc0] [c0000000001397c8] kthread+0x1a8/0x1b0
> [10206.317389] [c00000008b92be30] [c00000000000b560]
> ret_from_kernel_thread+0x5c/0x7c
>
> Thanks! - David

Hmm. I wonder if it is possibly calling the report
e1000_io_error_detected multiple times. If so then the secondary calls
to e1000_pm_freeze would cause issues.

I will add a check so that we only down the interface and free the
IRQs if the interface is in the present and running state.

I'll submit an update patch shortly.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
