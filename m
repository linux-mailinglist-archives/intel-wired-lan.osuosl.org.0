Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 909B0263A63
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 04:28:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 392952E1A7;
	Thu, 10 Sep 2020 02:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7iUi1baLANsw; Thu, 10 Sep 2020 02:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 864572E1A9;
	Thu, 10 Sep 2020 02:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 618811BF427
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 22:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5CBCD870D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 22:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2NHE8VQHhm_4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Sep 2020 22:36:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F40C2870B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 22:36:04 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id 16so4137584qkf.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Sep 2020 15:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c134n78aG+T1D05fG/7gwyDy+RohECK5LAEVlOiODCw=;
 b=NyzBsT+JUu0U0kwfTlzpDClheXiWwFCChT8B3B3AnRObKvk4drNujFjFruGeHjyE5E
 J/ekKdFGX4ZPNWUfEPhKExoK0sWWjXwST+pbBqDSQQLO3bhHO97u7XE9KwITCllyZTNP
 KD49/yc1MfvhSPgbWZUU1AxUsv6U0vCFkivBcLxiu3ppVdmJeK1Itxs2CD5ayafEhare
 Y4u34snA9MTl4Likr5RS+E4LR0hKde+fx41J4h2BvlUn7go15Yxb6eLzvLXVka4Mre/N
 zumvX8Blxljzlanq14R9XGa7dbkpGn90Uvx/RhT36f5UMVOZXDvQeH4wAZB+Eu6xRGBh
 woew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c134n78aG+T1D05fG/7gwyDy+RohECK5LAEVlOiODCw=;
 b=ol8Xr9kGvb4YZh+pJpj/61XBDb9W2SmRwFLGuZUxWPS3T09ML88WqH0kgH8TygEF9Z
 m5d51JOpLlSxIHPeovl4FxW+0w6Bg4L0UJw64qTWEoYmQ6FLsCsPgZ8LY2Aldw6DGbZv
 UNvGuUkzsnaIH99rmLLXO2nFyAnek10l+ecoA0Vk4cH//pQEXU3QoJxO62MdbNAWipk5
 MOSXMShwqHGr5z1NOyDORzpnTGJd82eUIDPQpkT6R9yY4F/vkm2gi+I/sRi2W9T52oiM
 pD92xfI5Yri9e+CmwQTfIC0imIsmyOnf2yip2Kd9rJmzBCSmBa4hq6jKJk+O5tFebqTS
 vJAg==
X-Gm-Message-State: AOAM532rPclQ1UkYKMfyNMwBNuhgA8IBFNF99sG8M81IzFC+1o6DyTOD
 ITUbS4Ytz2KpucSSNHasiAMPGQ==
X-Google-Smtp-Source: ABdhPJx7fgh7UgPdTXT6uFy6snoRxxciP2Hd+WS8NFMVek051RlvF5/SRN4VKGquIHZA++zqp1uC0Q==
X-Received: by 2002:a05:620a:2225:: with SMTP id
 n5mr5229154qkh.171.1599690963887; 
 Wed, 09 Sep 2020 15:36:03 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id g5sm4497430qtx.43.2020.09.09.15.36.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Sep 2020 15:36:03 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kG8h8-004BIN-8t; Wed, 09 Sep 2020 19:36:02 -0300
Date: Wed, 9 Sep 2020 19:36:02 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Joe Perches <joe@perches.com>
Message-ID: <20200909223602.GJ87483@ziepe.ca>
References: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
X-Mailman-Approved-At: Thu, 10 Sep 2020 02:28:40 +0000
Subject: Re: [Intel-wired-lan] [trivial PATCH] treewide: Convert switch/case
 fallthrough; to break; 
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
Cc: linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 oss-drivers@netronome.com, nouveau@lists.freedesktop.org,
 alsa-devel <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-ide@vger.kernel.org, dm-devel@redhat.com,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 sparclinux@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-rtc@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, dccp@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-mmc@vger.kernel.org, Kees Cook <kees.cook@canonical.com>,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-nvme@lists.infradead.org,
 storagedev@microchip.com, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 Jiri Kosina <trivial@kernel.org>, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, iommu@lists.linux-foundation.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 09, 2020 at 01:06:39PM -0700, Joe Perches wrote:
> fallthrough to a separate case/default label break; isn't very readable.
> 
> Convert pseudo-keyword fallthrough; statements to a simple break; when
> the next label is case or default and the only statement in the next
> label block is break;
> 
> Found using:
> 
> $ grep-2.5.4 -rP --include=*.[ch] -n "fallthrough;(\s*(case\s+\w+|default)\s*:\s*){1,7}break;" *
> 
> Miscellanea:
> 
> o Move or coalesce a couple label blocks above a default: block.
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
> 
> Compiled allyesconfig x86-64 only.
> A few files for other arches were not compiled.

IB part looks OK, I prefer it like this

You could do the same for continue as well, I saw a few of those..

Thanks,
Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
