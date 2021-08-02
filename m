Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A81533DE2E8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 01:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 176F5823FF;
	Mon,  2 Aug 2021 23:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7AJ429y4zvci; Mon,  2 Aug 2021 23:09:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E99881D9F;
	Mon,  2 Aug 2021 23:09:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA8EA1BF318
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 23:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C648081BFA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 23:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8hoDPcQskT4z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 23:09:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 38E6681B8A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 23:09:25 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 pj14-20020a17090b4f4eb029017786cf98f9so2182364pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Aug 2021 16:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Djjsh3U3kf0GEGTy91dZfQ0DmMQTXFKs0ubb2qtf9XA=;
 b=hhyaaXIxPWQLMto0I8ziPj3villrDtRMFjYWpdMPc00wdBCnN1hrq1NRKraiQwglvR
 JGbcVdAdWTWLChRm1vx8dz91bd2g/PxCtY5Nzt6KfsOb24sflKhjLI7Wfph7oQdFIaWf
 Dmwd0Ul/o9fFOawyxqOk5Ua1CLmXhy+M7XzQl8UUcvo2x82S0U7h0lyvgOgFsNk9MS4+
 V0emi3Q28Ttdyv38yHM3M3zwrXSRmqLhuF9T5mNDxm1N3CZnIaZo8BN/vfYmWXh9winG
 ushjT3T/ovn5SdC4BGL6g8qbbA5sfdC7ljPYIVC5qnJ+wag4Xgu8kTIYz8w3bnXkljHr
 Gs+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Djjsh3U3kf0GEGTy91dZfQ0DmMQTXFKs0ubb2qtf9XA=;
 b=W+YanERTn9vYjHzeZk0e+ihBiG5bOLZ28S0cSEUeoixHjGeTLHnVeZs8D2fPcXNCQW
 r8+PJfzcal51fo4i+3PIgK/v3T4+fPEGpDSVYmCKDqgcuOcPQRLe8mPj/dYvmdsFjHW6
 ycyGsfUX5UCVK9+0Q9I0niIfg+YjWCueTgOfEf+/eSvqSNpduo6e0gqX3ipFyLxgB8kL
 XQcEYcc+jSLS9LMEYDAQPHGclnjflsQSFhKvu69lyaJtSJ7qyVdulvom2m1WP/Cql+QQ
 hUQtb0Fo6l+Btbl9wkD9ojfJ8X34NCXrn4UfMpbkFDb8V4RkTAzHpHaToYk9A8jTpCsM
 lPKg==
X-Gm-Message-State: AOAM530xGARZBmGA1p62I1i2fc0le3AZKQa0251R9j5A05HSvCGHg51p
 atiD0RRSnXpd+ritqCupycE=
X-Google-Smtp-Source: ABdhPJxF5lDXa0N5v7SXE4P1xCfBjRXp+j9ztLXti7YYk4GohVYB0VTfXZiBiGp6b8aHc5NVKchMYA==
X-Received: by 2002:a17:90b:514:: with SMTP id
 r20mr19213687pjz.80.1627945764662; 
 Mon, 02 Aug 2021 16:09:24 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id v1sm15035565pgj.40.2021.08.02.16.09.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 16:09:24 -0700 (PDT)
Date: Mon, 2 Aug 2021 16:09:21 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20210802230921.GA13623@hoboy.vegasvil.org>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, Arnd Bergmann <arnd@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
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

On Mon, Aug 02, 2021 at 07:54:20PM +0000, Keller, Jacob E wrote:
> So go back to "select"?

Why not keep it simple?

PTP core:
   Boolean PTP_1588_CLOCK

drivers:
   depends on PTP_1588_CLOCK

Also, make Posix timers always part of the core.  Tinification is a
lost cause.

Thanks,
Richard

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
