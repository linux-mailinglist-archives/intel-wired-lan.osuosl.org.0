Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF89E5728
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2019 01:37:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FD9223BE7;
	Fri, 25 Oct 2019 23:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vEt6meCO7WZI; Fri, 25 Oct 2019 23:37:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C1D5823B31;
	Fri, 25 Oct 2019 23:37:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA30C1BF333
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:37:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A2D8B23735
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:37:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZsSAu2wiYnd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 23:37:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id CF9012044C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:37:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="398913478"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 25 Oct 2019 16:37:17 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 25 Oct 2019 16:37:17 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Oct 2019 16:37:17 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Fri, 25 Oct 2019 16:37:17 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S30 v3 5/9] ice: Add support for AF_XDP
Thread-Index: AQHViooHNdhYRgH0KE2WcEB3Qy0pWKdsBRvQ
Date: Fri, 25 Oct 2019 23:37:16 +0000
Message-ID: <2eb541a912844108b14b1dcc40636518@intel.com>
References: <20191024081125.6711-1-anthony.l.nguyen@intel.com>
 <20191024081125.6711-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20191024081125.6711-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjdkYmVjMGUtOGQ1NC00NDY4LWE5YzQtYmNlNmFmZTg4NGI3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid1l0NklQVml5dmtaMVNDSW14UkFOT3pWd1IwZEJ6bHFvcndPSDBzUUh2bEVTVHZLYzRDQVJGaGd6eHpaMWdnSyJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S30 v3 5/9] ice: Add support for AF_XDP
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
> Sent: Thursday, October 24, 2019 1:11 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S30 v3 5/9] ice: Add support for AF_XDP
> 
> From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> 
> Add zero copy AF_XDP support.  This patch adds zero copy support for Tx and
> Rx; code for zero copy is added to ice_xsk.h and ice_xsk.c.
> 
> For Tx, implement ndo_xsk_wakeup. As with other drivers, reuse existing
> XDP Tx queues for this task, since XDP_REDIRECT guarantees mutual
> exclusion between different NAPI contexts based on CPU ID. In turn, a
> netdev can XDP_REDIRECT to another netdev with a different NAPI context,
> since the operation is bound to a specific core and each core has its own
> hardware ring.
> 
> For Rx, allocate frames as MEM_TYPE_ZERO_COPY on queues that AF_XDP is
> enabled.
> 
> Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> Co-developed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v3:
> - Remove unused prototype ice_xsk_umem_query()
> ---
>  drivers/net/ethernet/intel/ice/Makefile      |    1 +
>  drivers/net/ethernet/intel/ice/ice.h         |   26 +
>  drivers/net/ethernet/intel/ice/ice_base.c    |   53 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |    7 +
>  drivers/net/ethernet/intel/ice/ice_lib.c     |   57 +-
>  drivers/net/ethernet/intel/ice/ice_lib.h     |    4 +
>  drivers/net/ethernet/intel/ice/ice_main.c    |   13 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c    |   46 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |   20 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c     | 1181 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_xsk.h     |   72 ++
>  11 files changed, 1453 insertions(+), 27 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_xsk.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_xsk.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
