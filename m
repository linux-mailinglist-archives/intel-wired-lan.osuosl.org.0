Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 678D2BEB11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2019 06:02:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CAE262046F;
	Thu, 26 Sep 2019 04:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UmqdicI+peiS; Thu, 26 Sep 2019 04:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52E8B2049E;
	Thu, 26 Sep 2019 04:02:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB8461BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 04:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C580F87C72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 04:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HRGer4J57ZEY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2019 04:02:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E2C0F87B4D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 04:02:26 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id a11so980490wrx.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 21:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NFq+QfC8eEEmM+AmXLpYp9OtSoVz1JPbH4dBDpzsshY=;
 b=oBHPcO6KVTJ8djKftpHbDleRtssOwcZxAeUm/qsNzM8bgljJWVuw/lsghsnlB0cxt0
 DHe4NTV2FHNg1fDUqWXzkdLP3inmhyg5cuRXDwXv9u4nZGepL/f0bzdV/iuWfCLHnok+
 v3B7ctLbis+fFH8t90cMgTKVC2FomSgQdQEpf+rjyAJum5kkoK9SZfGvOnq0XMIVsYY0
 Qn/DQc+7i10RKXeXlXqKBuLaoVh6qy/FvH7wKxDecQQ8BpimixDNoVnINFQJ1WJBxvEe
 Hd6+YWD7fzxJXAoJ4Ds9pfTBnOwjaAXGtctpV1krT9/XZXfU0T6mu+uw7c5tZH+U8Um6
 SwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NFq+QfC8eEEmM+AmXLpYp9OtSoVz1JPbH4dBDpzsshY=;
 b=I7zW+kizmIH2CmPk+lWyjQ0TYf1iU2mV80qOSjkT7Jmcy+tTNGFhfmLmG94JXNHqst
 fq6Iu5hUdcqTWO+znhKMf7rLTQ1kwYYmxuXVH2qEGlKn6w6CogqINjOdvun9/8rHmrC0
 jkmc07uFk1+lL9sUms5wnnKNlb5fttU78icIrCyu10sz0XqCqGCimgDtN+KtEJKTVlx6
 pRaef89H1M0LKOY48Jtz34KxOXRxzv1QiEZH5OV6/JgQX2w1MaMljBSVWMHsq84fuiIh
 aW7DMgWjk87MVQ8pPjswxL+P60Dz6N0bG4jznPMp7VYc9UBpW7vfcAF1RGT9LzPVvrAz
 SFKw==
X-Gm-Message-State: APjAAAWiLftlHcNLTsCQOxMqCpFH/iBviXXCyFExgnbIJcQTB62reZ8a
 pt5yKXaryxY/Wd6OUMQ9yMo=
X-Google-Smtp-Source: APXvYqyIshdEjFfwK60IQk7dC44Gc5SilN4EUYjeSzXmqg81WF/Cqtfxx36a69j1PNUJSJjtIg1vmw==
X-Received: by 2002:adf:f1c3:: with SMTP id z3mr1067711wro.147.1569470545287; 
 Wed, 25 Sep 2019 21:02:25 -0700 (PDT)
Received: from localhost (195-70-108-137.stat.salzburg-online.at.
 [195.70.108.137])
 by smtp.gmail.com with ESMTPSA id r28sm1530529wrr.94.2019.09.25.21.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 21:02:24 -0700 (PDT)
Date: Wed, 25 Sep 2019 21:02:23 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20190926040222.GB21883@localhost>
References: <20190926022820.7900-1-jacob.e.keller@intel.com>
 <20190926022820.7900-3-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926022820.7900-3-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v2 2/2] net: reject ptp requests
 with unsupported flags
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, netdev@vger.kernel.org,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 25, 2019 at 07:28:20PM -0700, Jacob Keller wrote:
> This patch may not be correct for individual drivers, especially
> regarding the rising vs falling edge flags. I interpreted the default
> behavior to be to timestamp the rising edge of a pin transition.

So I think this patch goes too far.  It breaks the implied ABI.
 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index fd3071f55bd3..2867a2581a36 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -521,6 +521,10 @@ static int igb_ptp_feature_enable_i210(struct ptp_clock_info *ptp,
>  
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_EXTTS:
> +		/* Reject requests with unsupported flags */
> +		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE | PTP_RISING_EDGE))
> +			return -EOPNOTSUPP;

This HW always time stamps both edges, and that is not configurable.
Here you reject PTP_FALLING_EDGE, and that is clearly wrong.  If the
driver had been really picky (my fault I guess), it should have always
insisted on (PTP_RISING_EDGE | PTP_FALLING_EDGE) being set together.
But it is too late to enforce that now, because it could break user
space programs.

I do agree with the sentiment of checking the flags at the driver
level, but this needs to be done case by case, with the drivers'
author's input.

(The req.perout.flags can be done unconditionally in all drivers,
since there were never any valid flags, but req.extts.flags needs
careful attention.)

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
