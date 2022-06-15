Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B38EB54CAE7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 16:11:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D068141999;
	Wed, 15 Jun 2022 14:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ElHohppvhiw; Wed, 15 Jun 2022 14:11:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 885634199A;
	Wed, 15 Jun 2022 14:11:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 287AB1BF578
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 14:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 160666102E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 14:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LmBXbFpKJPmm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 14:11:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95539607A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 14:11:40 +0000 (UTC)
Received: from mail-yw1-f169.google.com ([209.85.128.169]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Mr8SG-1nPNmB2wek-00oI7h for <intel-wired-lan@lists.osuosl.org>; Wed, 15
 Jun 2022 16:11:37 +0200
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-31756c8143aso13966067b3.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 07:11:37 -0700 (PDT)
X-Gm-Message-State: AJIora/wU4Q0rvYeAaecoet48CROFKOm2+BThO6PokhjXG794U2rfV3d
 Gj/6aWjigg3WIE3l99R7IziJTHRHV1tZPLZeQ4A=
X-Google-Smtp-Source: AGRyM1vBDQKdEDubvQV9wU9Cy5NzYrd8xTnJ7sc9hg2rSEm1jso9QJej+BNPIXwj6f44jZiRi5f1Syb9OZoTJxIJ5Ug=
X-Received: by 2002:a81:ad7:0:b0:2e6:84de:3223 with SMTP id
 206-20020a810ad7000000b002e684de3223mr12139024ywk.209.1655302296016; Wed, 15
 Jun 2022 07:11:36 -0700 (PDT)
MIME-Version: 1.0
References: <202206091828.eNkyL2EI-lkp@intel.com>
In-Reply-To: <202206091828.eNkyL2EI-lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 15 Jun 2022 16:11:17 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3Mu0MDRJU=he=gVxGKQYwzr1wePLKdgN37yLPSqm1iuQ@mail.gmail.com>
Message-ID: <CAK8P3a3Mu0MDRJU=he=gVxGKQYwzr1wePLKdgN37yLPSqm1iuQ@mail.gmail.com>
To: kernel test robot <lkp@intel.com>
X-Provags-ID: V03:K1:mZ1yEi+s9hrauAtr7gH8mr/wt7LJ356gS6QqMGzoDSeeA5zu3Dy
 FqPLagdEE7de5BfN2hGIS4k1fa+WGGqDrC48JJR+qbqLkxUnY5dFAc6oCh23aRKVIWrfkYX
 LGswPl6phawTwGHS+bofuMY41JUU5rjwj5eTqR/E+gJGPPJnSthzbS4MtUNmgVFvUAryZjD
 xI+V/ZEzpf2FL9+gC0NQw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ii6/x2+Mk+E=:Cf/vAwkEEA1vbbN05rVQmD
 woKlqa2vGkDbVg8UehzROwHCj7XLfIp8YQRQe/I4D+GirTmgsOcn/utJl/iDiGOLb+nUXLmkz
 mpvjglkKeVnGngA/nHur+AN8BfLJuXalb58xdOw58goSmrw7xtrbR5lcSMFumKDSb7H51ccSC
 G6EEsw5sBPL+kAaEFHlNrWv6A5zo+ILlp4O4+89e+qYIJrE8AIgZt0JhM9EokkvKw4VBRVlJg
 C7Ezrx2tFWAEYafrrN0/O1bmEc9XjqAbZ86TX+w7m4saJhSfe7TqmB1wgQS8hvS7bXTOUyCBT
 M2RU5Fv1EiFbfYxIsRiZLg3Vnx/rmshaK1xt7slwGfukX7FwtPg56fI8hr5CXyb3x+AzatNyr
 zfVj8rm5rK4bNFZcycSJiPiQb/QbxHQyKpi8z8Se3DxkaWl0D1ogK8R/K6TV59P47klg4fip9
 bYNj/DWANZ08bGkettIipIWT+7IJjp6FZbPwQqNgBMONvXEbOsf9hVKIFsqIsxHXnSuTYme9o
 Gyfl+egSACrQITPdw6HqbN4hjmUEqfRnQrnfBOs6DkRGxutoftGYOePBMft/jyNIywtzsWM4T
 CA5G5B4rjwsMGkKaltF1a7DSamXLGsAWP6MWFGwRQ9BViwHtAMuK8hrfmCxaDHTpiS+4CVND3
 6mDfrnU2DCK2P5YV9SJctlowCnCXsxOAbtZ5JsZ80ZMDABNccIpK03jQKspME26U9cgmfVh43
 tRDsfItS/1AAb5rcDFzeMlsgk5yn324hr4VrRaccGXAAJBTLjy7AItdG+jQlTPHDa/6yX8dWM
 AmQoUOjb9B/dBgPolzWHdIPMw+NNY2fSjaGi2otHeH5GCtRMj7Hlj+WT9zYPhGXou4KurHtj8
 FyNdyojDpCyDGJjNlN1w==
Subject: Re: [Intel-wired-lan]
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1174:29: error:
 enumerator value for
 'i40e_static_assert_i40e_aqc_cloud_filters_element_data' is not an integer
 constant
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
Cc: kbuild-all@lists.01.org, Arnd Bergmann <arnd@arndb.de>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 9, 2022 at 12:25 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   6bfb56e93bcef41859c2d5ab234ffd80b691be35
> commit: 250c1a694ff304e5d69e74ab32755eddcc2b8f65 ARM: pxa: convert to multiplatform

This is not really related to my commit but it does disappear before
this one when bisecting.

>    In file included from drivers/net/ethernet/intel/i40e/i40e_adminq.h:9,
>                     from drivers/net/ethernet/intel/i40e/i40e_type.h:10,
>                     from drivers/net/ethernet/intel/i40e/i40e.h:40,
>                     from drivers/net/ethernet/intel/i40e/i40e_main.c:12:
> >> drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:301:39: warning: division by zero [-Wdiv-by-zero]
>      301 |         { i40e_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
>          |                                       ^
>    drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1174:1: note: in expansion of macro 'I40E_CHECK_STRUCT_LEN'
>     1174 | I40E_CHECK_STRUCT_LEN(0x40, i40e_aqc_cloud_filters_element_data);
>          | ^~~~~~~~~~~~~~~~~~~~~

The bug is that 'i40e_aqc_cloud_filters_element_data' and some other
structures in the
same file are broken when building an ARM kernel without CONFIG_AEABI, which has
unusual struct packing rules and triggers the static assertion.

It's clearly a bug, but nobody is going to run this driver on an OABI
kernel, so I think
the options are:

- add "__packed __aligned(4)" to each of these structure definitions
- make the driver depend on !(ARM && AEABI) in Kconfig
- ask lkp to stop testing CONFIG_AEABI=n kernels in randconfig builds
  and ignore the problem along with others like it

         Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
