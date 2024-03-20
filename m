Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC578810EF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 12:29:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8098460AE7;
	Wed, 20 Mar 2024 11:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cFJBwVxf4m_4; Wed, 20 Mar 2024 11:29:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C931C6063F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710934155;
	bh=M4qZDfeqdgUN7WwW07gOdPYTQ8hzgSGfC9I8vI9ySrQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3q2RM/lARDxRS0J/hagYGaewOWU7p5q/n3tJF46uQmrkwN3GEyFaEVggQsbrw+oPf
	 bPOn/UJEaXxPJ9bX0YsF75zYGY5VK1oF2yNTseNhwZpR7hSZURkNcFNeVSdg11IlGq
	 t4wP2Y+b7hMnYjmIwXtUWCmJyTPStjBUmJDExUvGnrbb/oetP4wAAvoOPXwmwFb+Au
	 zca043d2nyJH13uRgSUQ/H3dVXsh/UOMXW1LgwDsEPmd/gMyhtFHu36UeedQRrqncY
	 8pPwzYk9JaKvs7u8LsB+qRvbFNouhJgMrxlQm4ZEuo5GSeDZgOogkIWcULEu8SsR9n
	 uCCY66s0LTiOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C931C6063F;
	Wed, 20 Mar 2024 11:29:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8AB1F1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 440E141504
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a1KTrcSAJ8-X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 11:29:12 +0000 (UTC)
X-Greylist: delayed 332 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 20 Mar 2024 11:29:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7437840124
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7437840124
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=tglx@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7437840124
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:29:12 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240319130547.4195-3-lakshmi.sowjanya.d@intel.com>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
 <20240319130547.4195-3-lakshmi.sowjanya.d@intel.com>
Date: Wed, 20 Mar 2024 12:29:07 +0100
Message-ID: <8734sli1ks.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1710934148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M4qZDfeqdgUN7WwW07gOdPYTQ8hzgSGfC9I8vI9ySrQ=;
 b=A5Ce6O1tFxISLyNmqEAZsC9uJLadVd1q3mUS3sjqQ4msM7jFzzl79ffArFw+5Hvx0kNO4o
 QPnJExm9F+pf/ZrruBvzkEquNVkyZyRDxIecapw+UAPWH/+V2hQpvbUDKl15gbqoABhlLq
 +hzuxBEzbsujR4jnk2Xfpjk2IIDQrFPFhY3aJ/ktQsASuYS0VGsAHjQEG679MbXA6/b4xn
 9tIuH8P88GR6nzKxlWTRKd7EA/eXU5YGpVs/to5qzFuAqQxJsrrbPRHiNqjnMjs5T9vJ5b
 suCc3kbrUVmlBwGHnJLosTvbfQ780/i9scNqwwYj7kDawAUignheWsMht8MaTQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1710934148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M4qZDfeqdgUN7WwW07gOdPYTQ8hzgSGfC9I8vI9ySrQ=;
 b=6AbpP4VorMVdt2xHPU/GrukrmO9bQSz9DqdX8PyH0teQhWqnYHp1IKhd40ae9cWC2jPdLz
 UraY84+UL0kipbCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=A5Ce6O1t; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=6AbpP4Vo
Subject: Re: [Intel-wired-lan] [PATCH v5 02/11] timekeeping: Add function to
 convert realtime to base clock
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, basavaraj.goudar@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, x86@kernel.org,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, lakshmi.sowjanya.d@intel.com,
 andriy.shevchenko@linux.intel.com, netdev@vger.kernel.org, pandith.n@intel.com,
 eddie.dong@intel.com, mcoquelin.stm32@gmail.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 19 2024 at 18:35, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
>
> PPS(Pulse Per Second) generates signals in realtime, but Timed IO
> hardware understands time in base clock reference. Add an interface,
> ktime_real_to_base_clock() to convert realtime to base clock.
>
> Convert the base clock to the system clock using convert_base_to_cs() in
> get_device_system_crosststamp().

This really is doing two unrelated things. ktime_real_to_base_clock()
has absolutely nothing to do with the clocksource_base related changes
to get_device_system_crosststamp()
