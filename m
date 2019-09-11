Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3CFB0545
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 23:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A1DC86AF2;
	Wed, 11 Sep 2019 21:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHQV1d8AG3V3; Wed, 11 Sep 2019 21:36:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3888586B78;
	Wed, 11 Sep 2019 21:36:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B81A1BF386
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 21:36:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68D5420481
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 21:36:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZIoIoigY6Z1Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 21:36:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id A287D20456
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 21:36:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 14:36:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="360259447"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga005.jf.intel.com with ESMTP; 11 Sep 2019 14:36:48 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Sep 2019 14:36:48 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.221]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.209]) with mapi id 14.03.0439.000;
 Wed, 11 Sep 2019 14:36:48 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 2/2] igb: Fix constant media auto
 sense switching when no cable is connected.
Thread-Index: AQHVU6vUQjwCEXG6bkCuSanmopauAacnKpxA
Date: Wed, 11 Sep 2019 21:36:47 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971174D4@ORSMSX103.amr.corp.intel.com>
References: <20190815205520.22475-1-jeffrey.t.kirsher@intel.com>
 <20190815205520.22475-2-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20190815205520.22475-2-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmQwZjhhZDItOTU1Ni00OWE3LWE4MWMtNWQ0ZTc0MDczODVkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUzArOFJIZG50ZnZXMXdOZTRpN09ZQzUxK0pjK2xhS3B3YkJBMnFmaUNlemFTTk1zMWdIMnlPSG1lSU9zZkV0ZiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] igb: Fix constant media auto
 sense switching when no cable is connected.
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
> Subject: [Intel-wired-lan] [PATCH net 2/2] igb: Fix constant media auto sense
> switching when no cable is connected.
> 
> From: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
> 
> At least on the i350 there is an annoying behavior that is maybe also
> present on 82580 devices, but was probably not noticed yet as MAS is not
> widely used.
> 
> If no cable is connected on both fiber/copper ports the media auto sense
> code will constantly swap between them as part of the watchdog task and
> produce many unnecessary kernel log messages.
> 
> The swap code responsible for this behavior (switching to fiber) should
> not be executed if the current media type is copper and there is no signal
> detected on the fiber port. In this case we can safely wait until the
> AUTOSENSE_EN bit is cleared.
> 
> Signed-off-by: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
