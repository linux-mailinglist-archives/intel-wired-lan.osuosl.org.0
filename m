Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E239A8273C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2019 23:59:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A20185B8A;
	Mon,  5 Aug 2019 21:59:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RgDcnUhlOaDc; Mon,  5 Aug 2019 21:59:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBDBC85DBB;
	Mon,  5 Aug 2019 21:59:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8764C1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83A03844B2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BP--dl2Q5M9V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2019 21:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B760C84477
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:59:43 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id x188so7750803yba.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Aug 2019 14:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fd7ZnrQMa7ZTXSUJY+OfZXB5pnyekIxx1tLCZQSFfD8=;
 b=BXpsRxvoHH04OvpOdGBmJ0QXuITzxTFNIOhcG8XhG68lEmgWGHmQpovE4y46CpWyjc
 R+0EgMtLT0PosjnnLZP4MRfzn1hWkCCax6cJfwwO1GbSf9Ygr23rpiArWWZzI+ZSzpl5
 LAYdh1hRBWJVmiRFx/4IG1ymxnTXEMXisV/EsiA6Pa7CynTstAeiqSQxTwByYZLI2dKk
 xhfKZ9vfUJeRQNPDagpEcXb83oSHNgtnewiVmL0HDiR7iB2FuFUau/DhZNHN3tVcFwKV
 iBeFdB64VN0xpHekrmqXg5Vyo1L8Q09X+ZB+KhVwMW73JwQRCRWpHHNfTEswU7pM5F+M
 Umjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fd7ZnrQMa7ZTXSUJY+OfZXB5pnyekIxx1tLCZQSFfD8=;
 b=aj0w8eI4Ch8UhdDxsG00msD0WjfFttuiGu0GhCrz5YDe4f+TwIiFIVHo9VpCpdbMUx
 gR1VE/xcpGJYz+VYtpH6s8zhrq/Avjd3dYmtj4pH2FDLCnR7HtDr9yib7HEysuZfs5xl
 GHxr7NFO8T2BQJWfr6dX/47+xIGtXWyyb6Isk33Rfukd6x4nu93ISS8rdc+lFRAQ8ho0
 XQZKkCF4WDFtiN4a/siWRStyJA4TmSdtnEFs3vDZBKTr9OfEIgKvM6YSeq3Nxv45n61t
 P0OEqs0xSVEWTKB7D4Ws+XcYXhCuYQPzGYZuoEw4peY1ORXjRyDsisnYDqvfXlg0eSAy
 pHAg==
X-Gm-Message-State: APjAAAXlS4atA/AZpDrXmCOm8rggB9rONAVilqub9w/2vcMcTwUYhXBB
 3fGjbcS8YlyaFiXKLV+4fkuKYh9P
X-Google-Smtp-Source: APXvYqyCEKDPahcwL5YWY9FtzDHMZN0BvEhHXnyhAXgy+rfAuXEXrupLE25D+O+1/jaapiRp4FoA8g==
X-Received: by 2002:a25:1b43:: with SMTP id b64mr284593ybb.238.1565042381989; 
 Mon, 05 Aug 2019 14:59:41 -0700 (PDT)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com.
 [209.85.219.174])
 by smtp.gmail.com with ESMTPSA id p128sm20404154ywp.24.2019.08.05.14.59.40
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 14:59:41 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id q5so17770640ybp.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Aug 2019 14:59:40 -0700 (PDT)
X-Received: by 2002:a25:2516:: with SMTP id l22mr241544ybl.441.1565042380444; 
 Mon, 05 Aug 2019 14:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190802105507.16650-1-hslester96@gmail.com>
 <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40F174@ORSMSX104.amr.corp.intel.com>
In-Reply-To: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40F174@ORSMSX104.amr.corp.intel.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Mon, 5 Aug 2019 17:59:03 -0400
X-Gmail-Original-Message-ID: <CA+FuTSf5vWxBxCBEzCGmUg+BMUS=JOk1nzcG7X9Kt-evAxmeiw@mail.gmail.com>
Message-ID: <CA+FuTSf5vWxBxCBEzCGmUg+BMUS=JOk1nzcG7X9Kt-evAxmeiw@mail.gmail.com>
To: "Bowers, AndrewX" <andrewx.bowers@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ixgbe: Use refcount_t for refcount
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

On Mon, Aug 5, 2019 at 5:43 PM Bowers, AndrewX <andrewx.bowers@intel.com> wrote:
>
> > -----Original Message-----
> > From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> > Behalf Of Chuhong Yuan
> > Sent: Friday, August 2, 2019 3:55 AM
> > Cc: netdev@vger.kernel.org; Chuhong Yuan <hslester96@gmail.com>; linux-
> > kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; David S . Miller
> > <davem@davemloft.net>
> > Subject: [Intel-wired-lan] [PATCH 2/2] ixgbe: Use refcount_t for refcount
> >
> > refcount_t is better for reference counters since its implementation can
> > prevent overflows.
> > So convert atomic_t ref counters to refcount_t.
> >
> > Also convert refcount from 0-based to 1-based.
> >
> > This patch depends on PATCH 1/2.
> >
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 6 +++---
> > drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.h | 2 +-
> >  2 files changed, 4 insertions(+), 4 deletions(-)
>
> Tested-by: Andrew Bowers <andrewx.bowers@intel.com>

To reiterate, this patchset should not be applied as is. It is not
correct to simply change the initial refcount.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
