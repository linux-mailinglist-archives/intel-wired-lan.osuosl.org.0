Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA583F09E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 19:05:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 391BE80D08;
	Wed, 18 Aug 2021 17:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CFRQyp1w9Zl8; Wed, 18 Aug 2021 17:05:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDBFC80D51;
	Wed, 18 Aug 2021 17:05:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 632261BF44A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51DFD405A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n12sV7iSNjAG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 17:05:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B20D040597
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 17:05:40 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id 17so2891965pgp.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 10:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=y0WyiEQfJ5BEumrqHD4PuYkdcoLZT1ER4+J/Mwi+4DY=;
 b=fXVowPPp9qtDvG/dZC9YKEX4X+0eMwjBKiQer7Do/HoDgzA5ll9qkbMbkgm/I7MvIf
 vLDqGEOlh3jLKvnS4klF6wuxO1hnPGZXlZUstzRc8pe64FY6vyxlfEPctKA1n85xTngZ
 o0G8H0yicS7G4MA2BfeZ7EYdZceeas9ywNSjrPKgeGo1kinXTOzIYvt6YypNBnRbjW6/
 /uxeHtbuLz4189ALvXMr/V7pdbsQb17FEuw5nFmU77J1sf4oztS8DtcLgpZIO2mA+k4s
 YnRz6A784vnPGyUcZzsVWsRz+6oGONIraU8SwotWltXjW7tCY3SrW1OUsknpSQyrGH1s
 TJzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y0WyiEQfJ5BEumrqHD4PuYkdcoLZT1ER4+J/Mwi+4DY=;
 b=bWS2HXyz477HZySH5hSDkkwChU9jbRQlqvsDtC3Qjqjp9ck2z0AIi6IrrBvsVZveOv
 8oDbzmvPUup5akXt/Tm70wHtOSDqeK31W7drqaMZvvJnhZwc1FhTtNdlsnUtjb6XFz2e
 CGKZVqsLN6Hw5z1xF/Lg5z0sNIhUtxT1FvzmbyQjQge8kfziqY+i6NF03Xl54SOwbZVG
 AYBBeRljk1toJi44JqDGoiHf9ygTspSTG4E4Qe4VskfNHCHX9sK46wwb4PvSW0wE20ts
 icxnYdiRIJ0qWDwawgkjt8w5Ax2LXnLk2EPUTAaMRa72fZ9xyXbgDI2KlzaTsVlUGr8t
 5LbA==
X-Gm-Message-State: AOAM530efK3hiXUzM3P/J0kozOWDePdOi22anzO77N4FFi+m9yY38twu
 1+brLu8mzDXGaNIKNWOtzSw=
X-Google-Smtp-Source: ABdhPJzvfWsJKrXR0zuvu0wYxzR3EqJEhjAXU+vPLZEGuEVv5+tB29am4ZZrvbYzqxErmhspXDbRjA==
X-Received: by 2002:a65:4307:: with SMTP id j7mr9617547pgq.387.1629306340131; 
 Wed, 18 Aug 2021 10:05:40 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id x7sm306615pfj.200.2021.08.18.10.05.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 10:05:39 -0700 (PDT)
Date: Wed, 18 Aug 2021 10:05:36 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20210818170536.GE9992@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC net-next 0/7] Add basic SyncE interfaces
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, colin.king@canonical.com,
 nikolay@nvidia.com, linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 16, 2021 at 06:07:10PM +0200, Arkadiusz Kubalewski wrote:

> The second part can be used to select the port from which the clock
> gets recovered. Each PHY chip can have multiple pins on which the
> recovered clock can be propagated. For example, a SyncE-capable PHY
> can recover the carrier frequency of the first port, divide it
> internally, and output it as a reference clock on PIN 0.

This really sounds like its own thing, and not a PHC at all.

> Next steps:
>  - Add CONFIG_SYNCE definition into Kconfig
>  - Add more configuration interfaces. Aiming at devlink, since this
>    would be device-wide configuration

As a first step, finding an appropriate kernel/user space API would be
needed.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
