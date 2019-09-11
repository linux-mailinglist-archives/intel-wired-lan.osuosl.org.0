Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D10C0B0543
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 23:36:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3687F20481;
	Wed, 11 Sep 2019 21:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EhB+SSM1FgG; Wed, 11 Sep 2019 21:36:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D3D7F204B2;
	Wed, 11 Sep 2019 21:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1309B1BF386
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 21:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0F63B20481
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 21:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bd7zzDIfFUwg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 21:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 6089C20456
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 21:36:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 14:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="360259394"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga005.jf.intel.com with ESMTP; 11 Sep 2019 14:36:31 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Sep 2019 14:36:31 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.221]) by
 ORSMSX123.amr.corp.intel.com ([169.254.1.98]) with mapi id 14.03.0439.000;
 Wed, 11 Sep 2019 14:36:31 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/2] igb: Enable media autosense
 for the i350.
Thread-Index: AQHVU6vUu0kY38SUt0C0/tQ18rcNRqcnKmLg
Date: Wed, 11 Sep 2019 21:36:30 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971174BC@ORSMSX103.amr.corp.intel.com>
References: <20190815205520.22475-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20190815205520.22475-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTRmNWNmMDItMmM1Ni00MGVjLWIxNDctNDUxZmRjNmJhMTIyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMjlXMFdJckVING1oXC84bTFQdGtOMmkwbys1NjR3OWFCOXlyVDJqSmRybXl0Nnl4Q01nc0IxYkl6Y2Z3TEtQVFYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] igb: Enable media autosense
 for the i350.
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
Cc: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Jeff Kirsher
> Sent: Thursday, August 15, 2019 1:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
> Subject: [Intel-wired-lan] [PATCH net 1/2] igb: Enable media autosense for
> the i350.
> 
> From: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
> 
> This patch enables the hardware feature "Media Auto Sense" also on the
> i350. It works in the same way as on the 82850 devices. Hardware designs
> using dual PHYs (fiber/copper) can enable this feature by setting the MAS
> enable bits in the NVM_COMPAT register (0x03) in the EEPROM.
> 
> Signed-off-by: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
> ---
>  drivers/net/ethernet/intel/igb/e1000_82575.c | 2 +-
>  drivers/net/ethernet/intel/igb/igb_main.c    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
