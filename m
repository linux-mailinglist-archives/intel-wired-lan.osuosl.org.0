Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B456DB8A0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2019 22:47:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 310BF20363;
	Thu, 17 Oct 2019 20:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KFjxcjKCHwT6; Thu, 17 Oct 2019 20:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F1902045A;
	Thu, 17 Oct 2019 20:47:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A5161BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 20:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 45C5720363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 20:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mr2rAGYaoSjy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2019 20:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com
 [209.85.166.177])
 by silver.osuosl.org (Postfix) with ESMTPS id 84DA020352
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 20:47:03 +0000 (UTC)
Received: by mail-il1-f177.google.com with SMTP id t5so3427425ilh.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 13:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s8pRsrHj3Ik40xSK8neRTEtg5Uw7d/a7lmUWO0VWl6s=;
 b=iORF6/cUJbImo4top4uQPxx0isxM4KHA3El1co55TcJTfKzNd7SmwInRm00B5vnnJX
 XmZmLwhQfxzVH0ZJ/V52bSOoG+2RHynOiBWl8gcBoaYGXTxbOXeJcvVQO9LqLeyITU5K
 CVFa+Twnzsl2uk6Ji4J6zMDriwEvLPPintOawPoehbyzQgEFP61cjT/76KHbkCQO75uR
 ujYS1xKqqwlokcRgTkvtQ9oV5nCwGvfWdhUyHgzErdz9Mw66Cc0/RC7TakS1nH48Rd6K
 WlRAuLd8hNMWHEvlwp8ZAwAtTx3ZBJKkwVVzetWbmGlX4w5YXhzrnWz/M1VK58ctoSCl
 eZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s8pRsrHj3Ik40xSK8neRTEtg5Uw7d/a7lmUWO0VWl6s=;
 b=EGqInC9NYDjTzPiiF+PiMvEffwtsHTHmm5XYZrotBjNkiwQWSe5awCulgV+lKNkOEG
 1qNQK2vMWSmmJQz/K4bpfBcU/JhmOs1qBkKueWEP1q+6AeNndjU/PWLOF3D5QYGtpNFy
 aJPStWEU0HD8qwbMtZ29W/6rptzuN5eE/z4CJeRSzKo3nL9ad+E1cvRb3J+voHT/wYgq
 3KI9XlMJN9A+IltvIPfo8s32UpmoezjO9UAR+9BAGPbGH/3GChEjsNj4HyAe3Ik2wKNG
 ZcuvW3yYCmAdIuVnggjCRJXmPza4rq+4MF/RhnR90OZwoNlX92gfQqLzbToXkJh20T3T
 kmAQ==
X-Gm-Message-State: APjAAAUctXrRla8t4nAj/r0VjqKBq+P6Fl7K6MvfTgdtBnZFKjRGYP3A
 84e0RGeua8w9Q8HwjeF2vYJPiKeW3IoPl1xM7W4=
X-Google-Smtp-Source: APXvYqywqqIXFPpToctNyqI2ZxHNuoJVy8r97Dxka6jCWQH/RsDrxWDpOCIlRX21pn+bpRZF+gphcJG508Y62QGSM6o=
X-Received: by 2002:a92:b745:: with SMTP id c5mr5551537ilm.97.1571345222647;
 Thu, 17 Oct 2019 13:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAMnf+Phw525rfCHVDXz1uWZw4Y=HuyBjnhpqYzjx2dmgpsHMsA@mail.gmail.com>
In-Reply-To: <CAMnf+Phw525rfCHVDXz1uWZw4Y=HuyBjnhpqYzjx2dmgpsHMsA@mail.gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 17 Oct 2019 13:46:51 -0700
Message-ID: <CAKgT0UeDcXSjcXs+V9z+aAkg079Ltt1rEHXxr4Ug-E-GB92=OQ@mail.gmail.com>
To: JD <jdtxs00@gmail.com>
Subject: Re: [Intel-wired-lan] VF/SRIOV question
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 17, 2019 at 11:06 AM JD <jdtxs00@gmail.com> wrote:
>
> Hello,
>
> I couldn't find anything in the spec/doc for the Intel 82599 series
> NIC's regarding performance penalties with a higher number of VF's.
>
> Currently I'm using 16 VF's with SR-IOV/QEMU, but the 82599 NIC
> supports up to 63 VF's. From a driver/NIC perspective, are there any
> performance considerations or penalties of enabling/using all of the
> available VF's on a NIC?
>
> If there isn't, is this the same case for other models (besides 82599) as well?
>
> Thank you!

One hardware limitation I am aware of is that as you spread the work
over more queues, or in this case more VFs you may not be able to
achieve 64B line rate with small packets. The issue is as you add more
queues the descriptor fetching becomes more interleaved between the
queues which will reduce the performance. So instead of being able to
hit 14.88Mpps you may only see about 10 or 11Mpps. If you are working
with packets larger than 128B or larger you should see little to no
impact.

Another limitation I can think of is the number of queues per PF/VF.
The hardware only has a certain number of queues. For 82599 that
number is 128. So when you have 31 or fewer VFs you get 4 queues for
the PF, when you have 32 or more the PF has to drop to 2 queues.
Depending on your workload this may mean more stress on the CPUs
handling PF traffic as the number of queues is reduced.

Hope that helps.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
