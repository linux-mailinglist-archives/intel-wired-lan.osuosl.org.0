Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BA2128327
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2019 21:21:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14301889A3;
	Fri, 20 Dec 2019 20:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q7Bc9e6MCTT3; Fri, 20 Dec 2019 20:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 388088899D;
	Fri, 20 Dec 2019 20:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 886D71BF401
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2019 20:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 83FA388995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2019 20:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 084bM7oGJQPI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2019 20:21:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE05D88994
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2019 20:21:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 12:21:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="416635742"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 20 Dec 2019 12:21:28 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 20 Dec 2019 12:21:27 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 20 Dec 2019 12:21:27 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Fri, 20 Dec 2019 12:21:27 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] drivers: net: i40e:
 Removing hung_queue variable to use txqueue function parameter
Thread-Index: AQHVtgTf5s+mKK7MwEyOJ13k9fFuh6fDefrw
Date: Fri, 20 Dec 2019 20:21:27 +0000
Message-ID: <18fd3069be264c82865760ce61f588b7@intel.com>
References: <20191218183845.20038-1-jcfaracco@gmail.com>
 <20191218183845.20038-2-jcfaracco@gmail.com>
In-Reply-To: <20191218183845.20038-2-jcfaracco@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWI4MjgzMzEtNjUxNS00MGY2LWIxYmQtZWY0MmQzMTQzMjYxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNmR0RkJxM2E0TWFZckpBMmswK014N1BhVm5DY3RqeXFKcVRjZHYrV3MrYzMwUE1WSzNZYTVWekx5WEI4bjlVNiJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] drivers: net: i40e:
 Removing hung_queue variable to use txqueue function parameter
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Julio Faracco
> Sent: Wednesday, December 18, 2019 10:39 AM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net-next 1/2] drivers: net: i40e: Removing
> hung_queue variable to use txqueue function parameter
> 
> The scope of function .ndo_tx_timeout was changed to include the hang
> queue when a TX timeout event occurs. See commit 0290bd291cc0
> ("netdev: pass the stuck queue to the timeout handler") for more details.
> Now, drivers don't need to identify which queue is stopped.
> Drivers can simply use the queue index provided bt dev_watchdog and
> execute all actions needed to restore network traffic. This commit do some
> cleanups into Intel i40e driver to remove a redundant loop to find stopped
> queue.
> 
> Signed-off-by: Julio Faracco <jcfaracco@gmail.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 41 ++++++---------------
>  1 file changed, 11 insertions(+), 30 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
