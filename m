Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E58B5D825
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 00:47:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9CF3F84F58;
	Tue,  2 Jul 2019 22:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ubKlR5dfeqiP; Tue,  2 Jul 2019 22:47:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 607B784FA5;
	Tue,  2 Jul 2019 22:47:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A5CBC1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:46:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A117320442
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3VKHsSbhnApZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 22:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 7FA9A2010A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:46:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 15:46:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="164163133"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2019 15:46:57 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jul 2019 15:46:56 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.71]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 15:46:56 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S22 02/16] ice: track hardware stat
 registers past rollover
Thread-Index: AQHVLEdpYjMOIXqxi0KEen22BAzffqa393Yw
Date: Tue, 2 Jul 2019 22:46:55 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FBDC0@ORSMSX104.amr.corp.intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
 <20190626092027.52845-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20190626092027.52845-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjYzM2Y1ZjQtODE0ZC00MGE3LWIzYmQtYmM1ZWM2ZjNiMGVkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicEordUN5Y1R6RVNxMStEbXdEbCs3bzd2RlVqTGVsVVlYaTRoeklnY2RsTG1iNERxcjliXC9qdnFpQkdkTkx4NHYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S22 02/16] ice: track hardware stat
 registers past rollover
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
> Behalf Of Tony Nguyen
> Sent: Wednesday, June 26, 2019 2:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S22 02/16] ice: track hardware stat registers
> past rollover
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Currently, ice_stat_update32 and ice_stat_update40 will limit the value of
> the software statistic to 32 or 40 bits wide, depending on which register is
> being read.
> 
> This means that if a driver is running for a long time, the displayed software
> register values will roll over to zero at 40 bits or 32 bits.
> 
> This occurs because the functions directly assign the difference between the
> previous value and current value of the hardware statistic.
> 
> Instead, add this value to the current software statistic, and then update the
> previous value.
> 
> In this way, each time ice_stat_update40 or ice_stat_update32 are called,
> they will increment the software tracking value by the difference of the
> hardware register from its last read. The software tracking value will correctly
> count up until it overflows a u64.
> 
> The only requirement is that the ice_stat_update functions be called at least
> once each time the hardware register overflows.
> 
> While we're fixing ice_stat_update40, modify it to use rd64 instead of two
> calls to rd32. Additionally, drop the now unnecessary hireg function
> parameter.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 57 +++++++-----
>  drivers/net/ethernet/intel/ice/ice_common.h   |  4 +-
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   | 30 -------
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 40 ++++-----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 90 ++++++++-----------
>  5 files changed, 91 insertions(+), 130 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
