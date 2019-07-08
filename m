Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 352F7627D3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B928B2052D;
	Mon,  8 Jul 2019 17:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYcYa+NifcAy; Mon,  8 Jul 2019 17:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D05F20766;
	Mon,  8 Jul 2019 17:59:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 681211BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 64C222052D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4feCSjtNzwt for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 17:59:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id A109C20002
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:59:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 10:48:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="364308603"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jul 2019 10:48:57 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jul 2019 10:48:57 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX123.amr.corp.intel.com ([169.254.1.245]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 10:48:57 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH rdma-next 10/17] RDMA/irdma: Add
 RoCEv2 UD OP support
Thread-Index: AQHVLqwYcTCDFyz1y0G5yUu+ZB9hTabBDWvg
Date: Mon, 8 Jul 2019 17:48:57 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D4056A5@ORSMSX104.amr.corp.intel.com>
References: <20190629185405.1601-1-shiraz.saleem@intel.com>
 <20190629185405.1601-11-shiraz.saleem@intel.com>
In-Reply-To: <20190629185405.1601-11-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDkzNmIyMmQtNmUzYS00NzczLThmYTUtMmIxYjY5ZmI2MDkxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWUs1VTN5Y0t3UGZVMDFsRGlJRVcreGZZNG54RHFpSDNQRlNCODlsVHdcL1V6MkFQR0VcL0w1V3lyaFlvcFhKRmZnIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH rdma-next 10/17] RDMA/irdma: Add
 RoCEv2 UD OP support
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
> Subject: [Intel-wired-lan] [PATCH rdma-next 10/17] RDMA/irdma: Add
> RoCEv2 UD OP support
> 
> From: Mustafa Ismail <mustafa.ismail@intel.com>
> 
> Add the header, data structures and functions to populate the WQE
> descriptors and issue the Control QP commands that support RoCEv2 UD
> operations.
> 
> Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/infiniband/hw/irdma/uda.c   | 391
> ++++++++++++++++++++++++++++++++++++
>  drivers/infiniband/hw/irdma/uda.h   |  65 ++++++
>  drivers/infiniband/hw/irdma/uda_d.h | 383
> +++++++++++++++++++++++++++++++++++
>  3 files changed, 839 insertions(+)
>  create mode 100644 drivers/infiniband/hw/irdma/uda.c  create mode
> 100644 drivers/infiniband/hw/irdma/uda.h  create mode 100644
> drivers/infiniband/hw/irdma/uda_d.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
