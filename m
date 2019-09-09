Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16168AE03A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Sep 2019 23:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6C8182BCE;
	Mon,  9 Sep 2019 21:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5jVEsurs1CNk; Mon,  9 Sep 2019 21:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D021B85B00;
	Mon,  9 Sep 2019 21:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85A2E1BF271
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 21:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8147785629
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 21:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G4t1WDaCndAn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2019 21:19:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB28782BCE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2019 21:19:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 14:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="214058315"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga002.fm.intel.com with ESMTP; 09 Sep 2019 14:19:17 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 9 Sep 2019 14:19:17 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Sep 2019 14:19:17 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 9 Sep 2019 14:19:17 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] i40e: fix potential RX buffer
 starvation for AF_XDP
Thread-Index: AQHVZy9ywyEivxHG3UCcC1v9ij8Hpqcj2f1g
Date: Mon, 9 Sep 2019 21:19:17 +0000
Message-ID: <f8652db1a7654dc6940cb0ebc194278a@intel.com>
References: <20190909165538.8125-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20190909165538.8125-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzAyN2EwNjUtNzAwYS00ZDg2LTk0YzItZmMzNTNmZGIxN2I2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWFlWNFZZYnFkbGpDd2RQRlAxVHBZVG5pMURwRHdhYWlHMjQ3V2cyXC9vZGtQa08rSEJrN3BwdGhNOHFoM3FMTFoifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: fix potential RX buffer
 starvation for AF_XDP
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
> Behalf Of Jeff Kirsher
> Sent: Monday, September 9, 2019 9:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2] i40e: fix potential RX buffer starvation
> for AF_XDP
> 
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> When the RX rings are created they are also populated with buffers so that
> packets can be received. Usually these are kernel buffers, but for AF_XDP in
> zero-copy mode, these are user-space buffers and in this case the
> application might not have sent down any buffers to the driver at this point.
> And if no buffers are allocated at ring creation time, no packets can be
> received and no interrupts will be generated so the NAPI poll function that
> allocates buffers to the rings will never get executed.
> 
> To rectify this, we kick the NAPI context of any queue with an attached
> AF_XDP zero-copy socket in two places in the code. Once after an XDP
> program has loaded and once after the umem is registered.
> This take care of both cases: XDP program gets loaded first then AF_XDP
> socket is created, and the reverse, AF_XDP socket is created first, then XDP
> program is loaded.
> 
> Fixes: 0a714186d3c0 ("i40e: add AF_XDP zero-copy Rx support")
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 5 +++++
>  1 file changed, 5 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
