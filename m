Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6322C59F0A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 17:38:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B70C087688;
	Fri, 28 Jun 2019 15:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TPLi8A44uBH3; Fri, 28 Jun 2019 15:38:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E404E87678;
	Fri, 28 Jun 2019 15:38:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CBD151BF35C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 15:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B95BB881A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 15:38:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zuiJHWM3PycY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 15:38:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
 [209.85.217.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 331ED87582
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 15:38:29 +0000 (UTC)
Received: by mail-vs1-f68.google.com with SMTP id 2so4324778vso.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 08:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SD6deODkPRQmAzCs7qv3k35M+ygYqNTo1SkVkVdjIgc=;
 b=P2XtlY6wqWsae7aPQDz3sdO5qIAYn2dZJjgRPoOeINmMmcHJNkJ7eqCBN30TGN6bMF
 LCQbZKEJNiZl9IwcQlxzumrxh3xM6jG8rZJ8wn6pnhrgqDabmBqVAZPSEA7iubJubXbb
 TxNojFWu6uYJAQgeV7h/5BJDNELJB56PPLPAzA0y6SaF25p1OFXA95et51J+ogmZ6syh
 fKuICULmLUWctGFSw237LbtO8oB6qPLJ4lI8Oo5Zv7+fmGhf7TDIgp2QMgALCXR619xe
 eBuaxjoCaQQVhoRTeh2i8vRE8TWRJeDZ/NsgnmGLufSS21WOxSKsbkmwlGIe58fo+ugl
 j7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SD6deODkPRQmAzCs7qv3k35M+ygYqNTo1SkVkVdjIgc=;
 b=QvPj5MgSdQOAAOeue51YURVT/WvvZnK567hxVenD9l3vLgZgX4VJSG+ymrIDka5c++
 JV+Yv9G0ZJQNijt5HMdb9U+tduI/kttDmRZqUANtaCuflrMkGSOXu0QgzOLfRoBTkSbX
 FUMJQx0GIuZh/KH2SxgtmlAklarVH5tQI/mJGfw07wnMU6bbzqqTCS31EWrO/RhTz/e1
 vgrgDResV2qOjNpCBT2lwlHKKJSysPm4tNTPZYIK6flP3Uaw/hvyL6T1cZCym4Zn3Gy8
 WWEtuAdUPKc3VrKqKbUV191Vl5yxQeOu96IUnigJnBTvQg7keTPECvnNYKGkhouAUdxQ
 0eAw==
X-Gm-Message-State: APjAAAWN5QVycXzXQZDL3Sxfe+h+VXUIpu9wFi9SppryU/9R7o6Yk4g3
 UihY47kLD8OY0SkjXKLjc3+ZaWiKC1sHn8iiK4A=
X-Google-Smtp-Source: APXvYqz3wMImmOsoOoWXbtGVb4wHtLQF5QRAljcO4tBtmktkEVciwMrcc8EMMryNvJ5mcHmXxtPXy9SBWv6vtAdUWQo=
X-Received: by 2002:a67:7a11:: with SMTP id v17mr6868025vsc.114.1561736308342; 
 Fri, 28 Jun 2019 08:38:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Fri, 28 Jun 2019 08:38:17 -0700
Message-ID: <CAP-MU4NnHyFNfV08MpZkO200sYekvrNRhcENh-oB3e7DvKTSrg@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH S23 01/15] ice: Implement ethtool ops
 for channels
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 27, 2019 at 4:08 PM Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
>

> +static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
> +{
> +       struct ice_netdev_priv *np = netdev_priv(dev);
> +       struct ice_vsi *vsi = np->vsi;
> +       struct ice_pf *pf = vsi->back;
> +       int new_rx = 0, new_tx = 0;
> +
> +       /* do not support changing other_count */
> +       if (ch->other_count)
> +               return -EINVAL;
> +
> +       /* verify request for a valid number of channels */
> +       if (ch->rx_count > ice_get_max_rxq(pf) ||
> +           ch->tx_count > ice_get_max_txq(pf))
> +               return -EINVAL;

It was recently pointed out to me that these are checked by ethtool
before calling into here, so this is unnecessary code.

sln
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
