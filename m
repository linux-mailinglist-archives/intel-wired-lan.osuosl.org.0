Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 328543FD190
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 04:56:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CEF58104C;
	Wed,  1 Sep 2021 02:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lJsCr3K8CD4B; Wed,  1 Sep 2021 02:55:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E9F18105B;
	Wed,  1 Sep 2021 02:55:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 436C21BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:55:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E25760617
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LwlgPrEH1_mi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 02:55:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA28560602
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:55:53 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id r13so900528pff.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 19:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=llYzk35WFyxnRcjOXeC5MzMhaQqeb3RL9qYQToUkrs0=;
 b=SsmztjF2i/COYT4VHYxIR+YJQvaMtkZoolQUhKhvfZWN/N742VdpBU2GAqXBuV+2p6
 RIAfyoRG+c7L0l80SoC8AbM/WnuwgZULZHEBIeFjbD2KfVz/VPy+WSOPnPllYJYktKlL
 tANR0DEc1hSydMuusQaLiyZ2tcVFGKjkSMGPqOFUkYTQYqGYZk0aAF+0pzD+9x55AgkW
 Gbn27SRgCN5zPd2jyQVz+M7No2QA9fwOHNSVaVmTSWgfeWmZbHCSBx+PBVt6G7X0AtBn
 HrzvFMWia+V3RJHm2XlpJXKGi7CgSZV5o+IN9CzjYnMy87cWRFB5cPUuKpQlPPHu0eeU
 9IfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=llYzk35WFyxnRcjOXeC5MzMhaQqeb3RL9qYQToUkrs0=;
 b=hT/qPVdiRKLJMEGsLK4UYAtSq8ElfCMN4uPmxIwICO0D5lKi73WfqL74u95h3zVUOK
 L12mtnn4FCkB14OUDcgd5z4S4TKTKb9SZ6YTHPb7fwF8vQurphOuCxy9VCie54aKHrXs
 dKNShrL9xJ1/LQe3S4QEf/NsRwmNSyGLlxKN30AuHuFMyMNZXcm+Ju77cFP5IIhzKvDW
 ZMsp3DyP9IeukzEnwZRCogu2Db2f7f3jV3yOobH3XhEz5XZoNWUYEo+efVw64t+dfrKg
 6F/bW4OGuLauduSIVxh5X9ymGLxNOQkOCa9hcmCiAgxv1mnI2iZQru7+lYd6xqDnY3ej
 Q1Gg==
X-Gm-Message-State: AOAM530ZTClU9jhU8UPEnxTMLZKrnXmyTFAdZ55a0hF78SIwNjKxXfOp
 MwD9zO3re7yJG5G/rQYwAvM=
X-Google-Smtp-Source: ABdhPJxDlMgVj2bC6+E8FbE6iG2xUI6Pu+alYjfUIGR3u/dlTOt3UugeGOoDufPaWfdvHnkWCWH/YQ==
X-Received: by 2002:a63:1025:: with SMTP id f37mr22108960pgl.116.1630464952974; 
 Tue, 31 Aug 2021 19:55:52 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id 126sm1042362pgi.86.2021.08.31.19.55.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 19:55:52 -0700 (PDT)
Date: Tue, 31 Aug 2021 19:55:49 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210901025549.GA18779@hoboy.vegasvil.org>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
 <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210831161927.GA10747@hoboy.vegasvil.org>
 <20210831185824.5021e847@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210831185824.5021e847@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: bsd@fb.com, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 31, 2021 at 06:58:24PM -0700, Jakub Kicinski wrote:
> On Tue, 31 Aug 2021 09:19:27 -0700 Richard Cochran wrote:
> > As you said later on in this thread, any API we merge now will have to
> > last.  That is why I'm being so picky here.  We want new APIs to cover
> > current HW _and_ be reasonable for the future.
> > 
> > I don't see a DPLL as either a PTP Hardware Clock or a Network
> > Device.  It is a PLL.
> > 
> > The kernel can and should have a way to represent the relationship
> > between these three different kind of IP block.  We already have a
> > way to get from PHC to netdev interface.
> 
> Makes sense to me. I was wondering how to split things at high level
> into the areas you mentioned, but TBH the part I'm struggling with is
> the delineation of what falls under PTP. PLL by itself seems like an
> awfully small unit to create a subsystem for, and PTP already has aux
> stuff like PIN control.

These pins are a direct HW interface to the posix dynamic clock that
also generates time stamps on the PTP frames.  They can either
generate time stamps on external signals, or produce output signals
from the very same clock.  So the pins are rather tightly coupled to
the PTP clock itself.

But the pins do NOT cover input clock sources into the IP cores.  This
kind of thing is already covered by the DTS for many SoCs (for a
static input clock choice, not changeable at run time)

> Then there's the whole bunch of stuff that Jonathan
> is adding via driver specific sysfs interfaces [1]. I was hoping the
> "new API" would cover his need but PLL would be a tiny part of it.
> 
> IOW after looking at the code I'm not so sure how to reasonably divide
> things.

Right, me neither.  It is a big topic, and we needn't over engineer it
now, but I still think this DPLL is not part of the PTP clock.  There
has to be a better place for it.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
