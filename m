Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8209910A4AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2019 20:43:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 370F285FC1;
	Tue, 26 Nov 2019 19:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P1ehWwMJXt7p; Tue, 26 Nov 2019 19:43:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F37E85FC7;
	Tue, 26 Nov 2019 19:43:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78A9C1BF346
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74E0E844E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:43:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6BDVyFhI9anM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2019 19:43:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D125C844C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:43:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 11:43:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="198930971"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga007.jf.intel.com with ESMTP; 26 Nov 2019 11:43:22 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 11:43:22 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 Nov 2019 11:43:21 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 26 Nov 2019 11:43:21 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Register a virtbus device to
 provide RDMA
Thread-Index: AQHVn81JiG9/tgawWkWllACjmeM4Raed49Dw
Date: Tue, 26 Nov 2019 19:43:21 +0000
Message-ID: <ce6645da6a1f4608ad95ab824edc71bd@intel.com>
References: <20191120170150.36240-1-mustafa.ismail@intel.com>
In-Reply-To: <20191120170150.36240-1-mustafa.ismail@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGVlZGI4YzUtMGFkMS00YTE2LWIyYjEtNjZkOGZlOTY2YjgyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiXC9aMkhnbmkySkxxWTMwR3ozN0lDTHljTTcxNkM1SzNSanJNZHYreU1xb0l6Z3BHVWI5ZmZNRXdkc3pnY0tic0cifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Register a virtbus device to
 provide RDMA
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
> Behalf Of Mustafa Ismail
> Sent: Wednesday, November 20, 2019 9:02 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Devale, Sindhu
> <sindhu.devale@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Register a virtbus device to provide
> RDMA
> 
> From: "Shiraz Saleem" <shiraz.saleem@intel.com>
> 
> Register client virtbus device on the virtbus for the RDMA virtbus driver
> (irdma) to bind to. It allows to realize a single RDMA driver capable of working
> with multiple netdev drivers over multi-generation Intel HW supporting
> RDMA.
> There is also no load ordering dependencies between i40e and irdma.
> 
> Summary of changes:
> * Support to add/remove virtbus devices
> * Add 2 new client ops.
> 	* i40e_client_device_register() which is called during RDMA
> 	  probe() per PF. Validate client drv OPs and schedule service
> 	  task to call open()
> 	* i40e_client_device_unregister() called during RDMA remove()
> 	  per PF. Call client close() and release_qvlist.
> * The global register/unregister calls exported for i40iw are retained
>   until i40iw is removed from the kernel.
> 
> Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/infiniband/hw/i40iw/Makefile          |   1 -
>  drivers/infiniband/hw/i40iw/i40iw.h           |   2 +-
>  drivers/net/ethernet/intel/Kconfig            |   1 +
>  drivers/net/ethernet/intel/i40e/i40e.h        |   3 +-
>  drivers/net/ethernet/intel/i40e/i40e_client.c | 109 +++++++++++--
> drivers/net/ethernet/intel/i40e/i40e_client.h | 203 ------------------------
>  include/linux/net/intel/i40e_client.h         | 213
> ++++++++++++++++++++++++++
>  7 files changed, 310 insertions(+), 222 deletions(-)  delete mode 100644

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
