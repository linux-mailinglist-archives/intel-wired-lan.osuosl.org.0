Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ED13DDDF2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 18:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F80C82D14;
	Mon,  2 Aug 2021 16:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gf3ed90Yv4Uq; Mon,  2 Aug 2021 16:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E173A82C1E;
	Mon,  2 Aug 2021 16:49:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1BEE31BF867
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 16:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 126776085B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 16:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hwhFw2mI8dIT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 16:49:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0807D60838
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 16:49:10 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 dw2-20020a17090b0942b0290177cb475142so6693067pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Aug 2021 09:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oNZPc57psRzc4SpvXgutcnyNtEY7iJ7TN/eALuzAAak=;
 b=HQaqv3/xiSaIFj/69P2YGGTBVMq0Yxb1LE5e3kjaM35yRW1h1hVUsSwRGevudlYLP/
 gWwXAs1qKAuoLXWxkb+y7xLDLVxZRtkawr9hycVD50BRfhrfjNCsnDTobhlxYdS72p8I
 EG2CwzI8tfKIBrqaqDn/NzeM6JvC/RQMEqrK8glX9tE9nOTTxOe4FipVXtaCYYZhwwx1
 rQR2u9Zcslgf4XJmlA5E+ehG0Wrh6+5bv3SKIu/AUdjW2FbjbFw+dOItcZkNROdck/ua
 NiViC00+5FOOlpaSQD4+r5hk1gjfhr/TBLon6I9U91YvqwypdbnGT1xUtvMomieLakmK
 k6tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oNZPc57psRzc4SpvXgutcnyNtEY7iJ7TN/eALuzAAak=;
 b=Mjo0dOOPuD4vopQLvIFCuVyBuz+ptTP2aH48P6v1l76ulcsRUw3fvgA5PLApglMVjj
 ym1oVHtuUFKUngSneT9nt1kP3eSVE9V67MyUmsvO084PH0EYjBzX/i+kWGLHiZqxnjQT
 LbIURnwG4ocMmeM0tEE/o5rNN9/c9IvGnHN7Dw4yTUkF+9ykx49wL6zSDHt2SE9CKEQv
 M2sFd/8ltl8eFwvhMHPrQP7Ik2zKXYCt8Pf2DLAv+43giVzSxDcxokC8wLzedhYYLCTa
 i7uhK/6hdv8ktdA7Dap8BeJOLJHQio6cos5RHbrdTDA7ytcZfxUqih6RBmmCWu0iZ32X
 MpQg==
X-Gm-Message-State: AOAM533Uo5RQiwkWOd9/5hEmBSoNngZ1EMNqnMf/+daX0C6jogpmaPhF
 VN2Z2wd6iI8JiB1l9lrxuHw=
X-Google-Smtp-Source: ABdhPJxNzGuRmCkcB5lxAkv5+Hij2CzC5OOIrqElQnqMRH2+TKkUS1eq3pWmGzRIIl6ZJBmvBOgmdQ==
X-Received: by 2002:a17:90b:1495:: with SMTP id
 js21mr18397651pjb.2.1627922950483; 
 Mon, 02 Aug 2021 09:49:10 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id c21sm2143687pfo.193.2021.08.02.09.49.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 09:49:10 -0700 (PDT)
Date: Mon, 2 Aug 2021 09:49:07 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <20210802164907.GA9832@hoboy.vegasvil.org>
References: <20210802145937.1155571-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210802145937.1155571-1-arnd@kernel.org>
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
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 02, 2021 at 04:59:33PM +0200, Arnd Bergmann wrote:

> This is a recurring problem in many drivers, and we have discussed
> it several times befores, without reaching a consensus. I'm providing
> a link to the previous email thread for reference, which discusses
> some related problems, though I can't find what reasons there were
> against the approach with the extra Kconfig dependency.

Quoting myself in the thread from 12 Nov 2020:

   This whole "implies" thing turned out to be a colossal PITA.

   I regret the fact that it got merged.  It wasn't my idea.

This whole thing came about because Nicolas Pitre wanted to make PHC
core support into a module and also to be able to remove dynamic posix
clock support for tinification.  It has proved to be a never ending
source of confusion.

Let's restore the core functionality and remove "implies" for good.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
