Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D0162777
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:46:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 512A983491;
	Mon,  8 Jul 2019 17:46:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zo1Yhmt5nvQ1; Mon,  8 Jul 2019 17:46:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3D02865B0;
	Mon,  8 Jul 2019 17:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A6091BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:46:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE22885533
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhF80vHsLAJw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 17:46:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1CFCE848FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:46:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 10:46:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="316779213"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 10:46:15 -0700
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jul 2019 10:46:15 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.139]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 10:46:15 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH rdma-next 03/17] RDMA/irdma:
 Implement HW Admin Queue OPs
Thread-Index: AQHVLtC7DHilCjn8z0CTAC+BK1i+l6bBDFgA
Date: Mon, 8 Jul 2019 17:46:14 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D405642@ORSMSX104.amr.corp.intel.com>
References: <20190629185405.1601-1-shiraz.saleem@intel.com>
 <20190629185405.1601-4-shiraz.saleem@intel.com>
In-Reply-To: <20190629185405.1601-4-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWNlMmIzNDgtZDE0MS00ZjA0LWE5MDAtMzY4MmRlYzQ5NTM3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiXC9YRGFsQ0Ntanl6SEttTlwvS1Zwc0NRYndPMlIzaU9QZ3VSK2UyaE5EbVVyS0pKRTRtcks3aTE1SWdSSFhtUnRIIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH rdma-next 03/17] RDMA/irdma: Implement
 HW Admin Queue OPs
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
> Subject: [Intel-wired-lan] [PATCH rdma-next 03/17] RDMA/irdma:
> Implement HW Admin Queue OPs
> 
> From: Mustafa Ismail <mustafa.ismail@intel.com>
> 
> The driver posts privileged commands to the HW
> Admin Queue (Control QP or CQP) to request administrative
> actions from the HW. Implement create/destroy of CQP
> and the supporting functions, data structures and headers
> to handle the different CQP commands
> 
> Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/infiniband/hw/irdma/ctrl.c  | 5958
> +++++++++++++++++++++++++++++++++++
>  drivers/infiniband/hw/irdma/defs.h  | 2126 +++++++++++++
>  drivers/infiniband/hw/irdma/irdma.h |  191 ++
>  drivers/infiniband/hw/irdma/type.h  | 1701 ++++++++++
>  4 files changed, 9976 insertions(+)
>  create mode 100644 drivers/infiniband/hw/irdma/ctrl.c
>  create mode 100644 drivers/infiniband/hw/irdma/defs.h
>  create mode 100644 drivers/infiniband/hw/irdma/irdma.h
>  create mode 100644 drivers/infiniband/hw/irdma/type.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
