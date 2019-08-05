Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C111682746
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2019 00:04:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7F2B12042C;
	Mon,  5 Aug 2019 22:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-d90P9X6wsu; Mon,  5 Aug 2019 22:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0D68020445;
	Mon,  5 Aug 2019 22:04:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A59B1BF392
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 22:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 769AA84415
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 22:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0K9TwV2GB4K7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2019 22:04:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2870684F4C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 22:04:09 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id g7so63579930oia.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Aug 2019 15:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hQkPqzCl0EgO8ejsOWFwcjYDROGmuy2jsvyxtVP20aM=;
 b=FCJwaACzgf1lMLExxkJ0zmSYaGN+RjeBxMMU7Lk33oCV3CEo868GUeLDDxRP8mE1cO
 1+wU+wOa9k11DarcGLU9OVtJ2zAkqSj1yefQviDdYqkf7C9wGG0fb+b0g7bvyVTR1OEY
 VrbnQZMl/kXiahEqmsY3qHI56gsaEJJ02c38h7UtUzchv41TArVnLCeThcrLLMr6eAYk
 Ox4H1/llesBgvumKRwVMvQI87/EbuXwbiPWy2YRdMb2f+Sbtsde13IXtqzgZjhJj86mA
 4b2/CYpjuJX+HfG9w4X9VG/rCkSp5laJerKuNBQTsDY89wMo7+hNSjcRHyWdjIzA1ArD
 uazg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hQkPqzCl0EgO8ejsOWFwcjYDROGmuy2jsvyxtVP20aM=;
 b=nMTzlwj2dP2aG8mbpd5g14eYki1mb7yiBRnCO3pBGmEd/E8RtxSUupIyiqRgdJ5pWO
 Mg3fVzzQtpHxVNLDE7HJgSRsm94MBQ5qJC/31bcIA4XqZmaVDtOuDNz7dy8eWinoJL4e
 +sWbnCk5N80WDQQFt5/VRPvdWkQtjWDuTgauyRNwZqAZyl/k/gjKNHrrRe55LorDxnKv
 DqMcFUZKKkY7Pv5jAJTlzv+v93Qs6upO/Nxv2yhiEq8isnjIeKSS0WHVEPJKX59lMXe9
 lAGKvpCAdnCFnR4NW+ZpeTbfF65gsm7rgh9mvbQeD+J8WhDvyoZC9CUaKiTdCPp3Ids5
 xZ8Q==
X-Gm-Message-State: APjAAAXAoyd06i5EzgXL+j1WFIRYTXB4pxAXaDojWlGs2sMuDjTmrft1
 rba64qm7Z6zaxIAA0FtLKt2Cc5phlV44y92S4IE=
X-Google-Smtp-Source: APXvYqxP7fkzI8bznQi3qLDYrrbEn4kQESZSUqqCHb6GuB5YrW2/rhkANG1qEjqgWRtj1C/ifmeIShJ1bzdlQVNpSss=
X-Received: by 2002:a02:b914:: with SMTP id v20mr567705jan.83.1565042648210;
 Mon, 05 Aug 2019 15:04:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190802105457.16596-1-hslester96@gmail.com>
 <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40F162@ORSMSX104.amr.corp.intel.com>
In-Reply-To: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40F162@ORSMSX104.amr.corp.intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 5 Aug 2019 15:03:57 -0700
Message-ID: <CAKgT0UcDz_NDnft5YsZY3c_0vJABXzmZUDk0W4XKx82dJtSh9A@mail.gmail.com>
To: "Bowers, AndrewX" <andrewx.bowers@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ixgbe: Explicitly initialize
 reference count to 0
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 5, 2019 at 2:42 PM Bowers, AndrewX <andrewx.bowers@intel.com> wrote:
>
> > -----Original Message-----
> > From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> > Behalf Of Chuhong Yuan
> > Sent: Friday, August 2, 2019 3:55 AM
> > Cc: netdev@vger.kernel.org; Chuhong Yuan <hslester96@gmail.com>; linux-
> > kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; David S . Miller
> > <davem@davemloft.net>
> > Subject: [Intel-wired-lan] [PATCH 1/2] ixgbe: Explicitly initialize reference
> > count to 0
> >
> > The driver does not explicitly call atomic_set to initialize refcount to 0.
> > Add the call so that it will be more straight forward to convert refcount from
> > atomic_t to refcount_t.
> >
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 1 +
> >  1 file changed, 1 insertion(+)
>
> Tested-by: Andrew Bowers <andrewx.bowers@intel.com>

NAK. This patch is badly broken. We should not be resetting the fcoe
refcnt in ixgbe_setup_fcoe_ddp_resources.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
