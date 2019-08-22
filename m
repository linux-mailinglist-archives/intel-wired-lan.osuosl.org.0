Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFF49A9A0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 10:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A57D986BA8;
	Fri, 23 Aug 2019 08:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uy0a5aJHOLaT; Fri, 23 Aug 2019 08:07:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB2B686BAE;
	Fri, 23 Aug 2019 08:07:22 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C83B21BF2F7
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C3DEC87C5F
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n49PSD58vJEX for <Intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 08:07:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D856F87C5A
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:07:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 10:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="208246032"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2019 10:13:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 22 Aug 2019 10:13:55 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 22 Aug 2019 10:13:54 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 22 Aug 2019 10:13:54 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "Intel-wired-lan@lists.osuosl.org" <Intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 net-next 2/7] ipeh: Move generic EH
 functions to exthdrs_common.c
Thread-Index: AQHVVt+/BdZSZCwoa0+nDxLeWA+UWKcHbByg
Date: Thu, 22 Aug 2019 17:13:54 +0000
Message-ID: <faa4b599286e4a76898078e59fa42af5@intel.com>
References: <1566254665-5200-1-git-send-email-tom@herbertland.com>
 <1566254665-5200-3-git-send-email-tom@herbertland.com>
In-Reply-To: <1566254665-5200-3-git-send-email-tom@herbertland.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTRjMjIyZWYtMWNjOS00MDFjLWIwNzQtNWZhNjAzNTlkNmM3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVlp2ZTVnOGQyemxyWHh3c0xOdlwvTDJQSUxMaUNXcStQQk40T0VXRCtaRXoxXC81SU9HYWNzTno1TGR2cFhXUTN1In0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 2/7] ipeh: Move generic EH
 functions to exthdrs_common.c
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

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Tom Herbert
> Sent: Monday, August 19, 2019 3:44 PM
> To: Intel-wired-lan@lists.osuosl.org
> Cc: Tom Herbert <tom@herbertland.com>; Tom Herbert
> <tom@quantonium.net>
> Subject: [Intel-wired-lan] [PATCH v3 net-next 2/7] ipeh: Move generic EH
> functions to exthdrs_common.c
> 
> From: Tom Herbert <tom@quantonium.net>
> 
> Move generic functions in exthdrs.c to new exthdrs_common.c so that
> exthdrs.c only contains functions that are specific to IPv6 processing, and
> exthdrs_common.c contains functions that are generic. These functions
> include those that will be used with IPv4 extension headers.
> Generic extension header related functions are prefixed by ipeh_.
> 
> Fix kbuild issue.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Tom Herbert <tom@herbertland.com>
> ---
>  include/net/ipeh.h        |  12 ++++
>  include/net/ipv6.h        |   9 ---
>  net/dccp/ipv6.c           |   2 +-
>  net/ipv6/Kconfig          |   4 ++
>  net/ipv6/Makefile         |   1 +
>  net/ipv6/calipso.c        |   6 +-
>  net/ipv6/exthdrs.c        | 138 --------------------------------------------
>  net/ipv6/exthdrs_common.c | 144
> ++++++++++++++++++++++++++++++++++++++++++++++
>  net/ipv6/ipv6_sockglue.c  |   2 +-
>  net/ipv6/raw.c            |   2 +-
>  net/ipv6/tcp_ipv6.c       |   2 +-
>  net/ipv6/udp.c            |   2 +-
>  net/l2tp/l2tp_ip6.c       |   2 +-
>  net/sctp/ipv6.c           |   2 +-
>  14 files changed, 171 insertions(+), 157 deletions(-)  create mode 100644
> net/ipv6/exthdrs_common.c

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
