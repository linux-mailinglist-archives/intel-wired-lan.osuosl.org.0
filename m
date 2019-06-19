Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D48B74BFFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 19:42:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7FDA4203D4;
	Wed, 19 Jun 2019 17:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RH85qpqw1lfp; Wed, 19 Jun 2019 17:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F111204FA;
	Wed, 19 Jun 2019 17:42:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A90D21BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A465F84EC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F0bb1U9fYMyB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 17:42:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 23AC484693
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:42:18 +0000 (UTC)
Received: from mail-wr1-f70.google.com ([209.85.221.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <guilherme.piccoli@canonical.com>)
 id 1hdebA-0004fM-79
 for intel-wired-lan@lists.osuosl.org; Wed, 19 Jun 2019 17:42:16 +0000
Received: by mail-wr1-f70.google.com with SMTP id b6so1624214wrp.21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 10:42:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W59C4s6Xo1lCGy/ZG6grzuxmRcSy3imV4z79A8ppFdY=;
 b=rB9roiKuE95MKSIRoTMudcq25wp0BHFw4UUHUvqE+2LJVZx86klGh11GhQYWNSOn9x
 m6jsYy93LsJv225PYfGcwmUmJJwtukVnFAhHwX4eokPAvlPGaF2PpTqAKBHy6KZfU3T3
 MtaOHrHLCIbzkBkRDd4n0UyDDKqi/BWe9DJJdyKiAJjLIgoeILbNZUNx1/FJuv4rVtLa
 LA00/0/LfGpf2mGLMir2mOa3Dtcud8mnUgwENdpjpmbgODqHTZEAml/8zUOy8RMrCSgo
 TFoqFKss93TNobDaCUnRecZqFVMmuVOuW3veTzon9+jxn6P9FjIRaNTN7xT8e5BC0yqt
 j+fw==
X-Gm-Message-State: APjAAAXaCqcO1Ey45CXcMzEV4M66m0YXhhwit4N8kLXmk3vJVUP3hNQ8
 yCeqoYASfE513TVOoAiACoMVPdZBVXkvQHL40ECiMa67F35QzKAq94qt3+NfDhK/TmdRLoEDhMx
 2Lu8C23YR+w44xnWmu9IAf7wt6P0AE23g85WXkt79BRtK1jOV0tCVclq0U7awym0=
X-Received: by 2002:a1c:9e92:: with SMTP id h140mr8877545wme.82.1560966136001; 
 Wed, 19 Jun 2019 10:42:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1KXz8BKrZvf3Chsb8F7ZFcacqx5Zx0t3DKtVFM5/BdGMM6QqEJNEQD4GMTtqj8n+dcencSjMTnXcR7XWE72w=
X-Received: by 2002:a1c:9e92:: with SMTP id h140mr8877532wme.82.1560966135783; 
 Wed, 19 Jun 2019 10:42:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190619165853.28234-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20190619165853.28234-1-jeffrey.t.kirsher@intel.com>
From: Guilherme Piccoli <gpiccoli@canonical.com>
Date: Wed, 19 Jun 2019 14:41:39 -0300
Message-ID: <CAHD1Q_x2dYwinfeXgJdoCD_d7g=Yj-G7KZebuEX5_Kfh4fnqRA@mail.gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Subject: Re: [Intel-wired-lan] [net] ixgbevf: Use cached link state instead
 of re-reading the value for ethtool
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
Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 19, 2019 at 1:58 PM Jeff Kirsher
<jeffrey.t.kirsher@intel.com> wrote:
>
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
>
> Change the ethtool link settings call to just read the cached state out of
> the adapter structure instead of trying to recheck the value from the PF.
> Doing this should prevent excessive reading of the mailbox.
>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> Reviewed-by: Guilherme Piccoli <gpiccoli@canonical.com>

[+ Jay Vosburgh]

Thanks Jeff! A minor nit: if possible can you change my name <for consistency>
before merging?
s/Guilherme Piccoli/Guilherme G. Piccoli

Otherwise looks fine to me!
Cheers,


Guilherme
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
