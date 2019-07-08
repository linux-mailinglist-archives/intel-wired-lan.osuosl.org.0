Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6535E6277A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:47:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DF2083491;
	Mon,  8 Jul 2019 17:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tH767+POjiv2; Mon,  8 Jul 2019 17:47:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C36086581;
	Mon,  8 Jul 2019 17:47:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3F351BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:47:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EA55838B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AlqYgJMtC1aA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 17:47:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A15FA83491
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 17:47:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 10:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="167738594"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga003.jf.intel.com with ESMTP; 08 Jul 2019 10:47:29 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jul 2019 10:47:29 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.251]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 10:47:28 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH rdma-next 06/17] RDMA/irdma: Add QoS
 definitions
Thread-Index: AQHVLqwVPEP6Xz4qg0uV9qTLm1+ht6bBDQFA
Date: Mon, 8 Jul 2019 17:47:28 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40566E@ORSMSX104.amr.corp.intel.com>
References: <20190629185405.1601-1-shiraz.saleem@intel.com>
 <20190629185405.1601-7-shiraz.saleem@intel.com>
In-Reply-To: <20190629185405.1601-7-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTQwYjRkNmQtMzYxYy00NGMzLWE3YTYtYjgwNzUzMDIzOGM2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZFdMK0o4Q3AweVBFNjhkUkhaM3Q4MXBTYStvRjlkejA5MTNOWVVQeDNGSWVDYkVGcTdEc2RUYUVuUWsyT1RLMCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH rdma-next 06/17] RDMA/irdma: Add QoS
 definitions
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
> Subject: [Intel-wired-lan] [PATCH rdma-next 06/17] RDMA/irdma: Add QoS
> definitions
> 
> From: Mustafa Ismail <mustafa.ismail@intel.com>
> 
> Add definitions for managing the RDMA HW work scheduler (WS) tree.
> 
> A WS node is created via a control QP operation with the bandwidth
> allocation, arbitration scheme, and traffic class of the QP specified.
> The Qset handle returned associates the QoS parameters for the QP.
> The Qset is registered with the LAN and a equivalent node is created in the
> LAN packet scheduler tree.
> 
> Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/infiniband/hw/irdma/ws.c | 396
> +++++++++++++++++++++++++++++++++++++++
>  drivers/infiniband/hw/irdma/ws.h |  40 ++++
>  2 files changed, 436 insertions(+)
>  create mode 100644 drivers/infiniband/hw/irdma/ws.c  create mode 100644
> drivers/infiniband/hw/irdma/ws.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
