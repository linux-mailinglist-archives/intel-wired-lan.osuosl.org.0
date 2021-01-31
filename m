Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C24309FBE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 01:38:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D6CF84B62;
	Mon,  1 Feb 2021 00:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ydpwDnWkY4C; Mon,  1 Feb 2021 00:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2613084CC2;
	Mon,  1 Feb 2021 00:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CD4D1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 02:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E9EC2037C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 02:08:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4YCqpifIP1pf for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 02:08:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1782420030
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 02:08:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D0FB64E19
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 02:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612058927;
 bh=3xx8TxmA2gyZeZoXMG+7SVI7SSrkFWvs9+2r9Zf9QRc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BexwFh0UZjD/MDkHQlx3LAHdIrG72RIa5g2QskzKvkLMTAq/RElWBJcJY+FZHg0xG
 renDgcUEjaV4TIwjL8qLq4ch2tGV4shORnPoMA6Me4wQwTTzSG4whXRyN3T2oiWUj0
 b5/3iHeMbGDLgAvnu+gVJU7BsY8PO8bhuEurCZ5XPswz8tG7BcqGbHSTxgnI11ZHXO
 sB/x1m2yxs2QHygppMrWgy4Wl33VO4n+pbuQPbOAQF55NJ6vw/2Pw2qSPJng37gk4I
 87P/R9mrqWIbnRhSqktts1MR0OcvMb8ft3euBsIj/H9g25EGY0zYlnFstX8a22dSVG
 cyvac44CTdpHQ==
Received: by mail-lf1-f43.google.com with SMTP id a8so17937066lfi.8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 18:08:47 -0800 (PST)
X-Gm-Message-State: AOAM531LZtqYjzBKpuo7iijJpWsJJt+kb/XgXe3OZ8UU3a2B+3XKSQet
 f9hl4Ppfe7Ci/aMCdb2WMtUESXiZqoU/+xHOnUw=
X-Google-Smtp-Source: ABdhPJwG5EEsXTAkRktbcPgJ+2WpcojmwU3MKgiO4woMGgiI1IAhUnHK26iX8F90zDbQs+2STBLedI78m+5xCp3puRs=
X-Received: by 2002:ac2:4436:: with SMTP id w22mr5282197lfl.41.1612058925675; 
 Sat, 30 Jan 2021 18:08:45 -0800 (PST)
MIME-Version: 1.0
References: <20210130234949.21090-1-rdunlap@infradead.org>
In-Reply-To: <20210130234949.21090-1-rdunlap@infradead.org>
From: Guo Ren <guoren@kernel.org>
Date: Sun, 31 Jan 2021 10:08:34 +0800
X-Gmail-Original-Message-ID: <CAJF2gTR9pdgmYv8tV9ncjHYQ-LAA75f_Yc0BMyOQjiR-TAW4TA@mail.gmail.com>
Message-ID: <CAJF2gTR9pdgmYv8tV9ncjHYQ-LAA75f_Yc0BMyOQjiR-TAW4TA@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Approved-At: Mon, 01 Feb 2021 00:38:41 +0000
Subject: Re: [Intel-wired-lan] [PATCH] csky: change a Kconfig symbol name to
 fix e1000 build error
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
Cc: Guo Ren <guoren@linux.alibaba.com>, linux-csky@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Acked-by

Thx

On Sun, Jan 31, 2021 at 7:50 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> e1000's #define of CONFIG_RAM_BASE conflicts with a Kconfig symbol in
> arch/csky/Kconfig.
> The symbol in e1000 has been around longer, so change arch/csky/
> to use DRAM_BASE instead of RAM_BASE to remove the conflict.
> (although e1000 is also a 2-line change)
>
> Not tested: I don't have a build toolchain for CSKY.
>
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Reported-by: kernel test robot <lkp@intel.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: Guo Ren <guoren@linux.alibaba.com>
> Cc: Guo Ren <guoren@kernel.org>
> Cc: linux-csky@vger.kernel.org
> ---
> IMO "CONFIG_" namespace should belong to Kconfig files, not
> individual drivers, but e1000 isn't the only driver that uses
> CONFIG_ symbols.
>
>  arch/csky/Kconfig            |    2 +-
>  arch/csky/include/asm/page.h |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> --- linux-next-20210129.orig/arch/csky/include/asm/page.h
> +++ linux-next-20210129/arch/csky/include/asm/page.h
> @@ -28,7 +28,7 @@
>  #define SSEG_SIZE      0x20000000
>  #define LOWMEM_LIMIT   (SSEG_SIZE * 2)
>
> -#define PHYS_OFFSET_OFFSET (CONFIG_RAM_BASE & (SSEG_SIZE - 1))
> +#define PHYS_OFFSET_OFFSET (CONFIG_DRAM_BASE & (SSEG_SIZE - 1))
>
>  #ifndef __ASSEMBLY__
>
> --- linux-next-20210129.orig/arch/csky/Kconfig
> +++ linux-next-20210129/arch/csky/Kconfig
> @@ -314,7 +314,7 @@ config FORCE_MAX_ZONEORDER
>         int "Maximum zone order"
>         default "11"
>
> -config RAM_BASE
> +config DRAM_BASE
>         hex "DRAM start addr (the same with memory-section in dts)"
>         default 0x0
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
