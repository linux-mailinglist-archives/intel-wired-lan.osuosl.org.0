Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1F32EFAEF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 23:17:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D8C28761D;
	Fri,  8 Jan 2021 22:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8X-4jGLVctnB; Fri,  8 Jan 2021 22:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C92387621;
	Fri,  8 Jan 2021 22:17:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08A3C1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 22:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03FF28761D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 22:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRbQmkELqpJ8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 22:17:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D32EB8724E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 22:17:18 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id q137so11285927iod.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Jan 2021 14:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WIrGGKmiGNuKDM4AjDP7KeJRUu2jZtmevjUfYGr14xg=;
 b=TGyei0wQiniwDqvZJvOodCTBPep5woAYuvuAP4kudYGIAtTmA4RRb+fDdITLYhQfJR
 xBfXyyK4EYTBzaHMyfdDDu03ZiaeBEL17l8rW4sL3UQKhSZ6PQnyQH3rTQWTTdoFhObE
 mmLv9s1juzzatunhDwlVIgG8ldmeM+OKspINFP1VsYpDRhSOhegNPEKOiRiMF0/u91uu
 SSz5UZqbWaYwIA3cE1SlWGKUOM3+svAvtmjzsTOgca7CDui/yEVHI+493KEoSxSEHYkJ
 a37xQUbyDuJ8OdMPsRyh0q256aRAWnmJA7ktvhG+V6leFZgAsKGr+kSZncoh1T0UU5Jj
 D+Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WIrGGKmiGNuKDM4AjDP7KeJRUu2jZtmevjUfYGr14xg=;
 b=V/phxjoV372TETTvVYUW5jvWUzSY2LhX9mLbvjT1ARwV/vZ320ayXg5a57Ddh5ulFL
 zcme7KCJEsSMrp6heByEF9L+6EDaX5yL2/2cbqWxmQNdBDGp2XUPD0vvkjKoljr73wms
 uFncDv8qSzgj7+TsoA5XPMyyZobUoMXKb6N/J0PiJsLFtpIymAj+V4t9FIRSO/Kj95BE
 QCpfOUf/A2Qq1Eh0YWJljtzsMTtdK6aIJvxMLARfZyA77Qa7wGtGW6stoa0P+OhmgXnn
 /9sLlYvNEu6Busz2q5vnqPu8xMIbpUOgVCEggT+zjAOgq1i4FKNBQnXqUORvTaRxycD2
 E2wg==
X-Gm-Message-State: AOAM531CV1ZqQ9LDbZx1GeUPVHSX4NP8LeMH7Y7lMq0FX6vGa3im59iS
 Fu3Rz1Jm9f6ort4ZU5Kzgf5VQrxx5uZtsqlyWXLJKw==
X-Google-Smtp-Source: ABdhPJxYaRzVp6EfsCXEUKU8aZoQ6BNLRIe3Rv0tWK6bu+P3FWwRxsiaLK5NUQoZ6ZgbTWPBP+XT0gpXGCUEafoUqP4=
X-Received: by 2002:a6b:918a:: with SMTP id t132mr7190721iod.157.1610144237899; 
 Fri, 08 Jan 2021 14:17:17 -0800 (PST)
MIME-Version: 1.0
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <1e4ee1cf-c2b7-8ba3-7cb1-5c5cb3ff1e84@pensando.io>
 <20210108102630.00004202@intel.com>
 <c11bb25a-f73d-3ae9-b1fd-7eb96bc79cc7@pensando.io>
 <0e06ff3234b78b5bde6bf77d192a42c3f8ab5319.camel@kernel.org>
In-Reply-To: <0e06ff3234b78b5bde6bf77d192a42c3f8ab5319.camel@kernel.org>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 8 Jan 2021 23:17:06 +0100
Message-ID: <CANn89iK_yMC2LbA0N+=U3JACAGhciuLpQ_uCa3qZ1_fUbWCyUQ@mail.gmail.com>
To: Saeed Mahameed <saeed@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Cc: netdev <netdev@vger.kernel.org>, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Jamal Hadi Salim <jhs@mojatatu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 8, 2021 at 9:27 PM Saeed Mahameed <saeed@kernel.org> wrote:
>

> I think there is still some merit in this patchset even with Eric's
> removal of GRO_DROP from gro_receive(). As Eric explained, it is still
> possible to silently drop for the same reason when drivers
> call napi_get_frags or even alloc_skb() apis, many drivers do not
> account for such packet drops, and maybe it is the right thing to do to
> inline the packet drop accounting into the skb alloc APIs ? the
> question is, is it the job of those APIs to update netdev->stats ?
>

You absolutely do not want to have a generic increment of
netdev->stats for multiqueue drivers.
This would add terrible cache line false sharing under DDOS and memory stress.

Each driver maintains (or should maintain) per rx queue counter for this case.

It seems  mlx4 does nothing special, I would suggest you fix it :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
