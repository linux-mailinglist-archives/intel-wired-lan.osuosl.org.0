Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 297AD62772
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:45:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D6FE82034C;
	Mon,  8 Jul 2019 17:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vDhFvHFXhO5J; Mon,  8 Jul 2019 17:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FAE520766;
	Mon,  8 Jul 2019 17:45:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E4371BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A8A481E4F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wF-752MH_mcY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 17:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F317981E48
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:45:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 10:45:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="364307570"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jul 2019 10:45:15 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jul 2019 10:45:15 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.114]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 10:45:15 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH rdma-next 01/17] RDMA/irdma: Add
 driver framework definitions
Thread-Index: AQHVLqwf/NlP7poSpEWiYgEQ4BKeHKbBDFvw
Date: Mon, 8 Jul 2019 17:45:14 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D404623@ORSMSX104.amr.corp.intel.com>
References: <20190629185405.1601-1-shiraz.saleem@intel.com>
 <20190629185405.1601-2-shiraz.saleem@intel.com>
In-Reply-To: <20190629185405.1601-2-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWEzMGRjNGYtNmE4ZC00NzI4LTkzMGEtOGQyMWY2MjI0YWNiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUUNVbkVxbUZhUGhoYk10OThYN2dJWUI3dkZqd0RJNG1EYWFvekhmY1NwNEV1SWNVMmhmWTJ1U1NXRlVEY0REdCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH rdma-next 01/17] RDMA/irdma: Add
 driver framework definitions
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
> Behalf Of Shiraz Saleem
> Sent: Saturday, June 29, 2019 11:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Saleem, Shiraz
> <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH rdma-next 01/17] RDMA/irdma: Add driver
> framework definitions
> 
> From: Mustafa Ismail <mustafa.ismail@intel.com>
> 
> Register irdma as a platform driver capable of supporting platform
> devices from multi-generation RDMA capable Intel HW. Establish the
> interface with all supported netdev peer devices and initialize HW.
> 
> Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/infiniband/hw/irdma/i40iw_if.c | 256 +++++++++++++
>  drivers/infiniband/hw/irdma/irdma_if.c | 426 ++++++++++++++++++++++
>  drivers/infiniband/hw/irdma/main.c     | 531
> +++++++++++++++++++++++++++
>  drivers/infiniband/hw/irdma/main.h     | 639
> +++++++++++++++++++++++++++++++++
>  4 files changed, 1852 insertions(+)
>  create mode 100644 drivers/infiniband/hw/irdma/i40iw_if.c
>  create mode 100644 drivers/infiniband/hw/irdma/irdma_if.c
>  create mode 100644 drivers/infiniband/hw/irdma/main.c
>  create mode 100644 drivers/infiniband/hw/irdma/main.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
