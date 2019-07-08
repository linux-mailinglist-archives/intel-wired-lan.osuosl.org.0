Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D449F627A1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7949685149;
	Mon,  8 Jul 2019 17:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iv20LwfYkoxN; Mon,  8 Jul 2019 17:50:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91979865C1;
	Mon,  8 Jul 2019 17:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B2C71BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 671DE874F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tt4DAm4xkVba for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 17:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A373687404
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:49:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 10:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="167739184"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga003.jf.intel.com with ESMTP; 08 Jul 2019 10:49:51 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jul 2019 10:49:51 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.226]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 10:49:51 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH rdma-next 13/17] RDMA/irdma: Add
 dynamic tracing for CM
Thread-Index: AQHVLqwmYT+7J9WkQ02algeBGcrUG6bBDa9g
Date: Mon, 8 Jul 2019 17:49:50 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D4056C7@ORSMSX104.amr.corp.intel.com>
References: <20190629185405.1601-1-shiraz.saleem@intel.com>
 <20190629185405.1601-14-shiraz.saleem@intel.com>
In-Reply-To: <20190629185405.1601-14-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmUwMzUyNTMtZmZmZS00MWMzLTkyZTAtNzA3ODcxYThlZDJlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZEd3VERBWWY4bGFtOGx1U2VSckNqSFdIZmQ1RUJJUGNtMVlqaU9rcElBRkM1Qk5LeWpxcmhiSzNramMrckpHNCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH rdma-next 13/17] RDMA/irdma: Add
 dynamic tracing for CM
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
> Cc: Ruhl, Michael J <michael.j.ruhl@intel.com>; Saleem, Shiraz
> <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH rdma-next 13/17] RDMA/irdma: Add
> dynamic tracing for CM
> 
> From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
> 
> Add dynamic tracing functionality to debug connection management issues.
> 
> Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/infiniband/hw/irdma/trace.c    | 113 ++++++++
>  drivers/infiniband/hw/irdma/trace.h    |   4 +
>  drivers/infiniband/hw/irdma/trace_cm.h | 459
> +++++++++++++++++++++++++++++++++
>  3 files changed, 576 insertions(+)
>  create mode 100644 drivers/infiniband/hw/irdma/trace.c
>  create mode 100644 drivers/infiniband/hw/irdma/trace.h
>  create mode 100644 drivers/infiniband/hw/irdma/trace_cm.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
