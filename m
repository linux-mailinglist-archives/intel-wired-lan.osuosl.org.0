Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD143DF6A7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 22:55:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 778DC83267;
	Tue,  3 Aug 2021 20:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cs4RIGz-JRej; Tue,  3 Aug 2021 20:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F5C782ADD;
	Tue,  3 Aug 2021 20:55:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A01391BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 20:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87FFF605E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 20:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jen6zlu-26fR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 20:54:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13E64605C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 20:54:58 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 e2-20020a17090a4a02b029016f3020d867so528185pjh.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Aug 2021 13:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fdylwn2n74tpR+dsWsjP/bwzBe3S+Rlc3LYTO8ZCWZQ=;
 b=l9fZdUew/MpTEpSojEPYEEdc0zxAo1HHixUWdhHlEHdpHIshPwparH7XWXlHbjxA8v
 ctM9OO/9FcF58W6HBtinH+ReHHdq/tezdhU43DpX+ZLTvYN6CgLQX+s4+EMW4gfmyu6e
 P5L8Ze81jYnAk8RTRFDGeK4U5hVStj5Hk81CwIcXSrlodmX5yovcsraCDplm7P7JPvJu
 wIyjL29bt0YZjebC+IBqi8Jq8zyjM0ylEmGk8dw2VKVdFbzC0VH2MljYGKPOZDYYB3UV
 8v9WAnF4bohNN0plE7xEDDhJ3jV5JYHmhfRBxTAko2o0Rf30SRG8VK3zcdd+ToLLZEdj
 Cy4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fdylwn2n74tpR+dsWsjP/bwzBe3S+Rlc3LYTO8ZCWZQ=;
 b=F2QBhDO+GwSdnjKsWC6mFe3xt2DU1hoiJtgf49H92f1SDQ8q5vf7TNyjkYyDGzG5+T
 hDSDNoM7Ctj3wiWci9OY9HbKuHru6RSVT/2uR4JePHuCnUliuTOuUmJ1O0H8J2YSGkCr
 gLpyyqVEEYhTSk9aqtks90bOWbgwQViJ42M7jDRtxMa9/dbrh2zVO9XbGARixcyvBLda
 v0xA08D57sc+LzNHGktqYLsI9LQHWNzH80oSgyi5OdWE++OC46+RyTRj3+5+HcWeLnf1
 9UMDb8ZkVsrx+baD46Ug2hS4PL6xNB7LF0kW2vXBOJsUlOAoElnTuXdCZbrgEHCXF0Io
 Gbew==
X-Gm-Message-State: AOAM533pHMogGywdpMxQn+9RLc+0Xllq4OMEJe4hrHJJpZr1U9bOWLkA
 32mSn/cbII5L0/sRTpn95Hg=
X-Google-Smtp-Source: ABdhPJxZCrtJ77fz1VoQjBY8XsXtnDCHDlBHfVKDsk4VUlOLAdwdRZYStnj5wA7x0+s+7pI7ybJI+g==
X-Received: by 2002:aa7:8683:0:b029:3c4:877b:da34 with SMTP id
 d3-20020aa786830000b02903c4877bda34mr2764594pfo.69.1628024098477; 
 Tue, 03 Aug 2021 13:54:58 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id h16sm80861pfn.215.2021.08.03.13.54.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 13:54:57 -0700 (PDT)
Date: Tue, 3 Aug 2021 13:54:55 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <20210803205455.GA3517@hoboy.vegasvil.org>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
 <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
 <20210803155556.GD32663@hoboy.vegasvil.org>
 <20210803161434.GE32663@hoboy.vegasvil.org>
 <CAK8P3a2Wt9gnO4Ts_4Jw1+qpBj8HQc50jU2szjmR8MmZL9wrgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Wt9gnO4Ts_4Jw1+qpBj8HQc50jU2szjmR8MmZL9wrgQ@mail.gmail.com>
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
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


On Tue, Aug 03, 2021 at 07:00:49PM +0200, Arnd Bergmann wrote:

> If you turn all those 'select' lines into 'depends on', this will work, but it's
> not actually much different from what I'm suggesting.

"depends" instead of "select" works for me.  I just want it simple and clear.

> Maybe we can do it
> in two steps: first fix the build failure by replacing all the 'imply'
> statements
> with the correct dependencies, and then you send a patch on top that
> turns PPS and PTP_1588_CLOCK into bool options.

Sounds good.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
