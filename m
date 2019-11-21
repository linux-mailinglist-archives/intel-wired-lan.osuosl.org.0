Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C08BC104872
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Nov 2019 03:22:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D38420532;
	Thu, 21 Nov 2019 02:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tRT95HrD76yR; Thu, 21 Nov 2019 02:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 65120226E5;
	Thu, 21 Nov 2019 02:22:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E06671BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Nov 2019 02:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC25287D44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Nov 2019 02:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cg5Ads-luolh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Nov 2019 02:22:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A2F3E87CAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Nov 2019 02:22:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 18:22:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="200959333"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 20 Nov 2019 18:22:11 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 Nov 2019 18:22:11 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.179]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.121]) with mapi id 14.03.0439.000;
 Wed, 20 Nov 2019 18:22:11 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4] igc: Add legacy power management
 support
Thread-Index: AQHVmsDTdhQ8g02++EyX4k+yu4PnGaeU71sw
Date: Thu, 21 Nov 2019 02:22:11 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9717A711@ORSMSX103.amr.corp.intel.com>
References: <20191114075446.20917-1-sasha.neftin@intel.com>
In-Reply-To: <20191114075446.20917-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWMzZTIwN2QtOGNmMy00YTQxLTgwZTQtNTUyZTc4NTQ3NThjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid2FzeXNxRU83K00rMkJ3cmpsVXRnMHFDajFiaFF1OEx2NmhIVk5jXC9sN01BYXBOU2dyaWh0UUhMcDB0VW1qc1IifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4] igc: Add legacy power management
 support
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
> Sent: Wednesday, November 13, 2019 11:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v4] igc: Add legacy power management
> support
> 
> Add suspend, resume, runtime_suspend, runtime_resume and
> runtime_idle callbacks implementation.
> 
> v1 -> v2:
> Fix christmas tree (Jeff's suggestion)
> Add CONFIG_PM pre-compiler flag
> 
> v2 -> v3
> Fix christmas tree (Jeff's suggestion)
> 
> v3 -> v4
> Fix kbuild test robot error: implicit declaration of function
> __igc_shutdown
> 
> Reported-by: kbuild test robot <lpk@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |   2 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |  31 ++++
>  drivers/net/ethernet/intel/igc/igc_main.c    | 204
> +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   9 ++
>  4 files changed, 246 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
