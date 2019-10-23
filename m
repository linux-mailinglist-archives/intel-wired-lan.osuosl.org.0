Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40450E0FF0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2019 04:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06C5F88157;
	Wed, 23 Oct 2019 02:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TubTzkF2nUur; Wed, 23 Oct 2019 02:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B4047880F5;
	Wed, 23 Oct 2019 02:10:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A2BF1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 162498452F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i1Y4TZGk4RNt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2019 02:10:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C7473806F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:10:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 19:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,218,1569308400"; d="scan'208";a="201852986"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga006.jf.intel.com with ESMTP; 22 Oct 2019 19:10:35 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 22 Oct 2019 19:10:34 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.9]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.36]) with mapi id 14.03.0439.000;
 Tue, 22 Oct 2019 19:10:34 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Comet Lake
Thread-Index: AQHVf1O8CGfGIhNIS0+3rNaIhppbGqdnj1ow
Date: Wed, 23 Oct 2019 02:10:34 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B97154E2A@ORSMSX103.amr.corp.intel.com>
References: <20191010101539.37043-1-sasha.neftin@intel.com>
In-Reply-To: <20191010101539.37043-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmYzOTk3ZDAtZjU4Mi00M2EzLWFiZWYtODI3ZGUwODBlYjNhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieFgxKzF6T0hHMUt4QVJDWjVKVVdhWml0d0tBb1FHbEE5N0RHSEdUeENSbFAxcXFGZ1hXTzF6Z2ZcL2xBcHArdDkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Comet Lake
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Thursday, October 10, 2019 3:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Comet Lake
> 
> Add devices ID's for the next LOM generations that will be
> available on the next Intel Client platform (Comet Lake)
> This patch provides the initial support for these devices
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/hw.h     | 6 ++++++
>  drivers/net/ethernet/intel/e1000e/netdev.c | 6 ++++++
>  2 files changed, 12 insertions(+)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
