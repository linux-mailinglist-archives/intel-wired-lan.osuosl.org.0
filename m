Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD3B62778
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EDE1F2076E;
	Mon,  8 Jul 2019 17:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bf+MXSDEjiz4; Mon,  8 Jul 2019 17:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0DBB420766;
	Mon,  8 Jul 2019 17:46:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 584DF1BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 559F92035D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q9XXXajxsgDA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 17:46:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id B45362034C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:46:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 10:46:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="173322549"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jul 2019 10:46:41 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.65]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 10:46:41 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH rdma-next 04/17] RDMA/irdma: Add HMC
 backing store setup functions
Thread-Index: AQHVLqwtpxIcU4qGAUuVpRqxNCWK1KbBDMeA
Date: Mon, 8 Jul 2019 17:46:40 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D405652@ORSMSX104.amr.corp.intel.com>
References: <20190629185405.1601-1-shiraz.saleem@intel.com>
 <20190629185405.1601-5-shiraz.saleem@intel.com>
In-Reply-To: <20190629185405.1601-5-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTVhODE3MjItMDUzMy00OGFjLTljYzctZmE4ZTM5NTA0MzAwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMkFKTWZSTUpyUWRjTnROWVNlaGxPTlpOc09vdEFlN2lVYVBxTFNlZXVxWmtCTmpIUE02QU8ybHpLKzFyNmxERSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH rdma-next 04/17] RDMA/irdma: Add HMC
 backing store setup functions
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
> Subject: [Intel-wired-lan] [PATCH rdma-next 04/17] RDMA/irdma: Add HMC
> backing store setup functions
> 
> From: Mustafa Ismail <mustafa.ismail@intel.com>
> 
> HW uses host memory as a backing store for a number of protocol context
> objects and queue state tracking.
> The Host Memory Cache (HMC) is a component responsible for managing
> these objects stored in host memory.
> 
> Add the functions and data structures to manage the allocation of backing
> pages used by the HMC for the various objects
> 
> Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/infiniband/hw/irdma/hmc.c | 706
> ++++++++++++++++++++++++++++++++++++++
>  drivers/infiniband/hw/irdma/hmc.h | 219 ++++++++++++
>  2 files changed, 925 insertions(+)
>  create mode 100644 drivers/infiniband/hw/irdma/hmc.c  create mode
> 100644 drivers/infiniband/hw/irdma/hmc.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
