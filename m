Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64046372103
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 May 2021 21:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B53BB405E3;
	Mon,  3 May 2021 19:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TyNaMD201WQx; Mon,  3 May 2021 19:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BD92405D6;
	Mon,  3 May 2021 19:55:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2DDD1BF9AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 19:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDFC060B6D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 19:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HLsPJtiUB28X for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 May 2021 19:54:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87B9860B4F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 19:54:06 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id g65so4033166wmg.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 May 2021 12:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=gA/wVI9R9iPR4MgFePi+U5PCvMoPg9SjYuV764rxhq0=;
 b=R4gAYZ6y6bD+z2WnwIpcXHEV+bwB6chVdzqggeErY7PBraERfOk2c9EIEks65vyd3X
 mpOWME7cQSfxK8QhdmHI6ec1nKTfDk6M14T/m3xTjOEeD5ws1eKe9dJc96jLbTWecCcT
 tn1LZoc+pEgjY7Ey/EsViylq+LEIsU4+03R4zo4QG5fc1TI92WK2sY5dsFg36nBpAD9i
 YLr/f0ab9L/Vvf0/vmNX9MYE5P4z0cf94G+JIiNzA7YB0dc4Tu8ynk6JIHbM9uy4Tkgu
 zJwW2goQ/s25M0AlVpkuPfEMUNT94oR/4wDw5cPlihhjhHj6Ac2KIYn9dgLtYMgPf5vN
 Or8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=gA/wVI9R9iPR4MgFePi+U5PCvMoPg9SjYuV764rxhq0=;
 b=L0Uzil+WwcdYhiQDYNsyxD9Yndg8lnprzlPQ3JFDAfuBBIFCN4vtVr+MjvCLL9P7PK
 vd2TUL/oCbnBwCezk3PfSL2T9SsFMGZdmx22m1gBYpMDTF4WZNsjnL7z6ieCZjF2xkZ7
 M0+yWATbRNUXoyPoygrIFMfM0jRT6aXPhJv1ghMfePm00T3t6HrWGMPjXlJgkahxua6L
 tIc0EygTVBQWD/W791zTlOjXrtYa1hmSkTEMqfjMw5BVcMfCDeAGa8T9QTdBfUMiIeMH
 8wRMIi2a8MxfVFcSbAD5FuQY61WMg11bYY5vz6RvWCGmjauPAXfdQJqJ1s893IIeJ0bZ
 YFaw==
X-Gm-Message-State: AOAM532Ptn/AiMQnOXEVVUO6Bg+9F6fZS/EZBhP+rmyTEw12sLvLBpoh
 Cvy0HGleiC31KExKra7fHEnSO4+UD7ZvloMrh8E=
X-Google-Smtp-Source: ABdhPJwnrDfaJe9oy4G23qHlGaNvrBgvYYNBFrBHmkZ5kp7kyDlk/tO4l6eancb92Lp+gdmupAPjhPP32Bd380Ggnuo=
X-Received: by 2002:a1c:401:: with SMTP id 1mr219288wme.138.1620071644737;
 Mon, 03 May 2021 12:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
 <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <69e92a09-d597-2385-2391-fee100464c59@bluematt.me>
 <CADSoG1vn-T3ZL0uZSR-=TnGDdcqYDXjuAxqPaHb0HjKYSuQwXg@mail.gmail.com>
 <20210201123350.159feabd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CADSoG1sf9zXj9CQfJ3kQ1_CUapmZDa6ZeKtbspUsm34c7TSKqw@mail.gmail.com>
 <20210503113010.774e4ca6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210503113010.774e4ca6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Nick Lowe <nick.lowe@gmail.com>
Date: Mon, 3 May 2021 20:53:48 +0100
Message-ID: <CADSoG1stdPVOE2N0dg10T6tgTUN1nqafY_m+K1CLwB6z2Y9j5Q@mail.gmail.com>
To: stable@vger.kernel.org, Matt Corallo <linux-wired-list@bluematt.me>, 
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, 
 intel-wired-lan@lists.osuosl.org, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Mon, 03 May 2021 19:54:59 +0000
Subject: [Intel-wired-lan] Stable inclusion request - igb: Enable RSS for
 Intel I211 Ethernet Controller
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Please may we request that commit 6e6026f2dd20 ("igb: Enable RSS for
Intel I211 Ethernet Controller") be backported to the 5.4 and 5.10 LTS
kernels?

The Intel i211 Ethernet Controller supports 2 Receive Side Scaling
(RSS) queues, the patch corrects the issue that the i211 should not be
excluded from having this feature enabled.

Best regards,

Nick

---------- Forwarded message ---------
From: Jakub Kicinski <kuba@kernel.org>
Date: Mon, 3 May 2021 at 19:30
Subject: Re: [PATCH net] igb: Enable RSS for Intel I211 Ethernet Controller
To: Nick Lowe <nick.lowe@gmail.com>
Cc: Matt Corallo <linux-wired-list@bluematt.me>, Nguyen, Anthony L
<anthony.l.nguyen@intel.com>, netdev@vger.kernel.org
<netdev@vger.kernel.org>, davem@davemloft.net <davem@davemloft.net>,
Brandeburg, Jesse <jesse.brandeburg@intel.com>,
intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>


On Mon, 3 May 2021 13:32:24 +0100 Nick Lowe wrote:
> Hi all,
>
> Now that the 5.12 kernel has released, please may we consider
> backporting commit 6e6026f2dd2005844fb35c3911e8083c09952c6c to both
> the 5.4 and 5.10 LTS kernels so that RSS starts to function with the
> i211?

No objections here. Please submit the backport request to stable@.
https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html#option-2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
