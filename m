Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F4832AFDC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 04:32:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AB3943192;
	Wed,  3 Mar 2021 03:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rA2yvRi4GvLU; Wed,  3 Mar 2021 03:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7966E430D6;
	Wed,  3 Mar 2021 03:32:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8F461BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 03:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4E7B838B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 03:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WeYSRKQXY1w9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 03:32:09 +0000 (UTC)
X-Greylist: delayed 00:55:03 by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC710838AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 03:32:08 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id r17so39390931ejy.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Mar 2021 19:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ryLp0YPsBnAjcUWFGCHtjNE59ss5r/1p8ASYvWpfQbE=;
 b=q/PMxxGGIJU1SSObQGps6XB0QpdxXOz6MkmI7DuoA5viKHgaRSN1qmyfq0Pg/xNEdW
 cjsMY6gfrZP4xu7t6Sikg6Nkvy2VtrtDTVQCvEQR3zypRJrT+J9VhhijcSwkZDq4VSIK
 8Kw2C1jttgbOZDPxmhJ51+weFFTW93Dg7sunJPe36QenVjVclJVQdiNdq08+Tg9Z8kZA
 Si3PqmT8P0kHU1erknBd+UgJ14vAbjLuwYdt7cK198RGvJ1Fgm5909GCjkaU2/t/E32R
 0P9myucsS7GU0M6drb42uuqvfPG/cdSdmECYuECEk27np3pBMGxsiooKI/zOezMTTt7l
 MUNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ryLp0YPsBnAjcUWFGCHtjNE59ss5r/1p8ASYvWpfQbE=;
 b=HW440yxqfYrCs4dKciRPCD/F3NW+aY0fJiv9+oNvHlnNVuDcTZA8a4deOt1vOzPZYX
 lCIkkz1N+AE05zkolhPbIOIHRUWNFdces28dzr5yER/DQLnYFeFhHQ5cdeoEpQHyZKHI
 FY/VbT4rSIZb7rI2E0yh0U+yoaBGF8OJRWGYhjI5fGYm2xVw/bmVdbY/TN7dmj1rEl7k
 dKxjlEo1lGQJ4QT3pW+WE4Ys97xwshNcbnGRieUBESW6qfGk6ouAScokgj/Eq8k+ofEh
 0hcgl1ecdaXNgS5afqnQ7m20zWdGHfVuX0ccGCjwiW6ZLZr9D7r6vkKsKU/bb62qJAoo
 CpZg==
X-Gm-Message-State: AOAM531+T4nkvwxdcoHlUKw4ZFRsXH15lEcgnceUKa6R4KD9DdMRlN5T
 hV07B3S8vcoKKuKAcLC9sq9oUjSd8RI=
X-Google-Smtp-Source: ABdhPJxjLzCYznig/RiqovOx/qEpCOywElvrIFfbtyC5YrFhnTMwdwqzp09o3As41boFO/glNXNaow==
X-Received: by 2002:a17:907:3e8a:: with SMTP id
 hs10mr14608835ejc.267.1614732673738; 
 Tue, 02 Mar 2021 16:51:13 -0800 (PST)
Received: from skbuf ([188.25.219.167])
 by smtp.gmail.com with ESMTPSA id b21sm13292564ejv.13.2021.03.02.16.51.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Mar 2021 16:51:13 -0800 (PST)
Date: Wed, 3 Mar 2021 02:51:12 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210303005112.im2zur47553uv2ld@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-2-vinicius.gomes@intel.com>
 <20210302142350.4tu3n4gay53cjnig@skbuf>
 <87o8g1nk6g.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8g1nk6g.fsf@vcostago-mobl2.amr.corp.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/8] ethtool: Add support
 for configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, xiyou.wangcong@gmail.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 po.liu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 02, 2021 at 04:40:55PM -0800, Vinicius Costa Gomes wrote:
> Hi Vladimir,
>
> Vladimir Oltean <olteanv@gmail.com> writes:
>
> > Hi Vinicius,
> >
> > On Fri, Jan 22, 2021 at 02:44:46PM -0800, Vinicius Costa Gomes wrote:
> >> Frame preemption (described in IEEE 802.3br-2016) defines the concept
> >> of preemptible and express queues. It allows traffic from express
> >> queues to "interrupt" traffic from preemptible queues, which are
> >> "resumed" after the express traffic has finished transmitting.
> >>
> >> Frame preemption can only be used when both the local device and the
> >> link partner support it.
> >>
> >> Only parameters for enabling/disabling frame preemption and
> >> configuring the minimum fragment size are included here. Expressing
> >> which queues are marked as preemptible is left to mqprio/taprio, as
> >> having that information there should be easier on the user.
> >>
> >> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> >> ---
> >
> > I just noticed that the aMACMergeStatusVerify variable is not exposed in
> > the PREEMPT_GET command, which would allow the user to inspect the state
> > of the MAC merge sublayer verification state machine. Also, a way in the
> > PREEMPT_SET command to set the disableVerify variable would be nice.
> >
>
> The hardware I have won't have support for this.

What exactly is not supported, FP verification or the disabling of it?
Does your hardware at least respond to verification frames?

> I am going to send the next version of this series soon. Care to send
> the support for verifyStatus/disableVerify as follow up series?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
