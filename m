Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDD1D2C3E8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 06:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6873A6F684;
	Fri, 16 Jan 2026 05:59:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X06O2DQsZCDP; Fri, 16 Jan 2026 05:59:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEDD06F687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768543151;
	bh=gMXjxkRiCG6bc5xzkGJLJJ77xyt0l3ekz9zNbGesmC4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SwCfEjwl4HVgRKdflQsQK6ksdut+GmJIqN/XNa+b4NUDKr6kK3hEaTOhzYPFCgdeD
	 zFMlX60TFufd+XWASM3vFei0VC+7V7GBIt1tXK5ekM/xf38HZvO6zY4y93EIq85xTy
	 UjqN8MkX+a3ccUyXKFVljIY3rsebOQeSdXbUuXUfK7/traIhtExd6XqVNM8yMoVwQl
	 5sBjykQGfdDf1XxXuIXJS1kqQ+bSvWrNHPCI0I8ujzM3TdsZqwxaqCnCvLv7ymIWGJ
	 2S8FkOam8vGn1Y3JcRCDutfnQVTfYyYLVEOQ7s1Kj0M/iEkm7uUZl0OEWpXPXh9iSD
	 ADcLWPWSEJabg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEDD06F687;
	Fri, 16 Jan 2026 05:59:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B958223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 05:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C5A6854C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 05:59:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E5cEgwdmLs6L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 05:59:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD9CF854C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD9CF854C6
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD9CF854C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 05:59:09 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-6505d3b84bcso2539880a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 21:59:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768543148; x=1769147948;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gMXjxkRiCG6bc5xzkGJLJJ77xyt0l3ekz9zNbGesmC4=;
 b=pyHcxiOWp5BTzfAW/JvDvwzYIjf42AlRjUTXd3VGihJfMnCLewC22m53kmL5IWHJ3l
 g3ekVDz4uZ7cRguW0vhJYbNtaDxkkoENBzhV3y1SSI9Xqt2227aA1fm9+r/VuLG+7k/o
 7qPA0+bW5qZ39E3+JAMHJcwYgu2tKJPHMQ4hcLbFguj0faONMkWdfXiB1yUdADosM5nO
 Z0Za6yECqlak+N58g0dzDY341X0bsDjRMNkLXP/lgVBN1pChNQu+5ST0EyAmFOCePJBV
 2qeppeIWu3jiyfqpALZ8e6am7U1b8hf/FyyrX0N4E6NZf6pftsa5Qjl6dFATVCjG282b
 KTNg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUrk/Kyk84UZ/ER2uEcgfqTTvgnxfMl4Ssw4VKsXlGdpgbOSIsYQ9jtVG7/aOnhuafI34jPhOVKlV8Qp1SY10=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyZg9FCT0QEry81rYRy6zlfG8bnBW13t824MAOq8Cu0XqdLpWDC
 olmVtnNTIyh9ghVrN/MzSQx07AnG07swYGM5+8dsU6QLfCel94Gatk7cHZ/U9HRRHjbXVJAwclo
 hmRfTO5yMHlb1hLajxXIn4HSSk5Nw+E4=
X-Gm-Gg: AY/fxX6ZQx70wdDGAcu7dDoX94iTfC8mREoSbnqrpNmtN2d0eoUq6RKrFI+9upHKRKo
 B9cVzBROoKjZE2gPSTccmd7zwskSBRC9tGPd6ujQlUXL2jjFUbuXNwrbDvJwHsXdwJcN4Ld8c0p
 JAojXPmT6bou/4WIFs3RCnm6vWCf5O3oWn0XYrneIJGhijwcd3wxqSPE1zuLadx2MNJMZBlwMCG
 K3mfVH//x8FnQBSI9z55ztMfxlinAokiCR4c2hQTADHA2f9d2wJbcDmpRQsSBmI/JUcXuzZYT4x
 VR+8++GMAYK68Zu0tc75dJSVPUw=
X-Received: by 2002:a05:6402:1d52:b0:650:863d:3df0 with SMTP id
 4fb4d7f45d1cf-65452ce4e7bmr1441098a12.33.1768543147392; Thu, 15 Jan 2026
 21:59:07 -0800 (PST)
MIME-Version: 1.0
References: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
In-Reply-To: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
From: I Viswanath <viswanathiyyappan@gmail.com>
Date: Fri, 16 Jan 2026 11:28:47 +0530
X-Gm-Features: AZwV_QjOfAkZ2vUXIm-6kMTxgl6VawOaDwLVmNCBjmyYhioWn1jf-eouDtywdF4
Message-ID: <CAPrAcgNhpK-cOVenrtw+-t9CV7bb6V+4b-R=_0m9Tv0C7U0ecw@mail.gmail.com>
To: edumazet@google.com, horms@kernel.org, sdf@fomichev.me, kuba@kernel.org, 
 andrew+netdev@lunn.ch, pabeni@redhat.com, jasowang@redhat.com, 
 eperezma@redhat.com, mst@redhat.com, xuanzhuo@linux.alibaba.com, 
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, 
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, intel-wired-lan@lists.osuosl.org, 
 virtualization@lists.linux.dev, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768543148; x=1769147948; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=gMXjxkRiCG6bc5xzkGJLJJ77xyt0l3ekz9zNbGesmC4=;
 b=Rj7qkV+AUtMcl3beOCEmF6coLMqGR72YAqrBo7shOoVA9ZnzKvVASY8FYlv0ZhSI8y
 Dib1/Mwq4Sa8gT7c9b7G/Chilyng0Fm7viUwo7Bsa4EVJh34+QJw18bp3AP/tyrevsVO
 pt5sC8MjQPjA+Dt+2oYhp6ryA/7x04qQwJwhFIyIvbbKaVsYUW7hzRHtax4KjRz0d+yO
 Sfcv6yZtLFh7WLoGWAWH1NkhHS5Jtr2frCAdmIYAxNfc2sqmS3C4oJVE9nLqYVem2vjI
 gX6wSwt0e0FzNxy9aUM/m4GD5tn3MGiveW6NQ2nt3Yel4gotZBg24/HM2BL1evSVVmT4
 rnXg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Rj7qkV+A
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 0/6] net: Split
 ndo_set_rx_mode into snapshot and deferred write
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

Patch 1:

> If netif_alloc_rx_mode_ctx() succeeds but ndo_open() subsequently fails,
does this leak the rx_mode_ctx allocation? The error path only clears
__LINK_STATE_START but does not appear to free the rx_mode_ctx. (Yes,
There is a leak)
> Would it make sense to add netif_free_rx_mode_ctx(dev) to the error path,
or perhaps check if dev->rx_mode_ctx is already allocated before calling
netif_alloc_rx_mode_ctx()?

This framework should accommodate future ndo s requiring deferred work.
Therefore, the best course of action would be to schedule the cleanup
work. If we reuse it, we would have a memory leak in case __dev_open
never succeeds as the cleanup is in __dev_close_many

Does it make sense to move

+ if (!ret && dev->needs_cleanup_work) {
+ if (!dev->cleanup_work)
+ ret = netif_alloc_cleanup_work(dev);
+ else
+ flush_work(&dev->cleanup_work->work);
+ }
+
+ if (!ret && ops->ndo_write_rx_mode)
+ ret = netif_alloc_rx_mode_ctx(dev);
+
to a new function netif_alloc_deferred_ctx() and rename
netif_cleanup_work_fn() to netif_free_deferred_ctx()?

Patch 3:

First of all, Does it make sense to call e1000_set_rx_mode when the
netif is down?

Second of all, I am not dealing with the cases where I/O should be
illegal but the netif is still up correctly.
For this, I am thinking of adding netif_enable_deferred_ctx() and
netif_disable_deferred_ctx()

netif_disable_deferred_ctx() will be called in the PM suspend
callbacks and in the PCI shutdown callback while
netif_enable_deferred_ctx() will be called in the PM resume callbacks.

I know this will be a lot of work but this is a one time thing that
other deferred work ndo s can use for free.

Correct me if I have missed any cases.

Patch 6:

This was stupid on my part. I will add back netif_wake_queue(dev) in
the next version.
