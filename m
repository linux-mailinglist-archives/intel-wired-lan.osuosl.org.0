Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE293FAC6B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Aug 2021 17:10:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B855605CA;
	Sun, 29 Aug 2021 15:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k2-py3An_YsC; Sun, 29 Aug 2021 15:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33DEE60649;
	Sun, 29 Aug 2021 15:10:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D67D51BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 15:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1DFD605E0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 15:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H7i0vKwtS-iq for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Aug 2021 15:10:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F240605CA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 15:10:21 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id m4so7087036pll.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 08:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N93QZNcq51tQSZUdO0Kv070YOACn4Rc3RLQDyDXZG54=;
 b=HEiWLJHmG5fkIj5xHsycepzBG3dFCxiwDMjEejtdQRbiV4Sa0XVwf7qrS7d1xdNdOE
 Dvpe9irPsJWyJMcsbeEavTvi68Nk4MUAD5nkyDV8usILKHTcfj9HutHi+RQmQVjrYk6W
 uN4npgE2PzBZD44Txw/wFq6ycJ/wAFWCPzO6NUMqFGlMoTt68Irg6N0OnTzvPaXpzi/T
 1mL+ZuPDx96NgBftj8ScDZtH18GlIno+zLlq6FZBcr6854VE0At/bIy7atCbI6pUnoVs
 /799Byw+YPyBhA8A4aINJc03lYVu68ogEGyRun7CcFuXD+l2QJiYJpWEQ7/UE6OH4aVW
 oz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N93QZNcq51tQSZUdO0Kv070YOACn4Rc3RLQDyDXZG54=;
 b=gV9i11pQr5pRIY2g+gcxDV4V5w5UjK/OhfCo73if9RmfAsGh3kcf/85W0dfX2bltze
 YtRe9congWGpPMJNCT4lC9yhFqjBTCBWv0P/FZxFpw/vCslTPQ0+dpUjwJkxY1Kpi2no
 Wk0p2bBRV20SMVKysZbW/o6NZRnMldz/0b4wF6BW62co0d59oPn8sFu2hi/Vo05MoB+L
 anwzI45F/0wAqKI7uqtX/vS2ELVaCSqJzSebCLP+U5k4kGskI4lVXYr6XX2ySMzm8mWY
 A0xrmzxdCy3VXDsBBS4o4ksl/PIUsB0hY2zJbfchCJVoGcnEKimn49Up5Rpa+nXA6sg+
 j4cA==
X-Gm-Message-State: AOAM533bxG5iJUIo8FsJxF7l8wqFXp6PNXnFbI5kij3wMiIF6aZP9xVj
 ZTU9Wuypi0iNEHKmvQyamHA=
X-Google-Smtp-Source: ABdhPJzBSWrvZ5LmOrzlTLefpc08UQ1K0h4khJQBKanqWU+YIS6xHJxjxHwh7fvTKyhFM18YPMlqTA==
X-Received: by 2002:a17:90a:86cc:: with SMTP id
 y12mr34607022pjv.127.1630249820771; 
 Sun, 29 Aug 2021 08:10:20 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id k4sm10378125pga.92.2021.08.29.08.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Aug 2021 08:10:20 -0700 (PDT)
Date: Sun, 29 Aug 2021 08:10:17 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20210829151017.GA6016@hoboy.vegasvil.org>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210829080512.3573627-2-maciej.machnikowski@intel.com>
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
Cc: abyagowi@fb.com, netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Aug 29, 2021 at 10:05:11AM +0200, Maciej Machnikowski wrote:
> This patch adds the new RTM_GETSYNCESTATE message to query the status
> of SyncE syntonization on the device.
> 
> Initial implementation returns:
>  - SyncE DPLL state
>  - Source of signal driving SyncE DPLL (SyncE, GNSS, PTP or External)
>  - Current index of Pin driving the DPLL
> 
> SyncE state read needs to be implemented as ndo_get_synce_state function.
> 
> This patch is SyncE-oriented. Future implementation can add additional
> functionality for reading different DPLL states using the same structure.

I would call this more "ice oriented" than SyncE oriented.  I'm not
sure there is even such a thing as "SyncE DPLL".  Does that term come
from 802.3?  To my understanding, that is one just way of implementing
it that works on super-Gigabit speed devices.

I have nothing against exposing the DPLL if you need to, however I'd
like to have an interface that support plain Gigabit as well.  This
could be done in a generic way by offering Control Register 9 as
described in 802.3.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
