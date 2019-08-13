Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E97F8BF57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2019 19:08:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A60438658A;
	Tue, 13 Aug 2019 17:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QDOl54AP5UKP; Tue, 13 Aug 2019 17:08:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A6BC86610;
	Tue, 13 Aug 2019 17:08:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C66551BF41A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C27798655C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hSKAxthsYoZA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2019 17:08:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B62786529
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:08:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 10:08:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="187837354"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga002.jf.intel.com with ESMTP; 13 Aug 2019 10:08:21 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.157]) with mapi id 14.03.0439.000;
 Tue, 13 Aug 2019 10:08:21 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S27 04/15] ice: Rebuild VSI while
 changing queues
Thread-Index: AQHVTj4t1OSWnXnxEEipQ6egyZqOJab5Vt8g
Date: Tue, 13 Aug 2019 17:08:21 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D411612@ORSMSX104.amr.corp.intel.com>
References: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
 <20190808143938.4968-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20190808143938.4968-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjdhNmY5ZGYtYjcyNS00Y2IzLThmN2QtNDNkYWI5ZWQyNWIyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSUlXYUp3STVjc2hCVElHZzlBeFBqblwvUHRpVzJzYTlXRDZcLzlxa3EwcXlsMHExU3VkSnVTRVYwTjNFZWlJcWNwIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S27 04/15] ice: Rebuild VSI while
 changing queues
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
> Sent: Thursday, August 8, 2019 7:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S27 04/15] ice: Rebuild VSI while changing
> queues
> 
> From: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
> 
> Currently, while the queues are being changed, the driver rebuilds the VSI
> only when the netdev is running. However, the driver needs to rebuild the
> VSI irrespective of the state of netdev. In this way, alloc_txq / alloc_rxq fields
> of the VSI would be updated correctly.
> 
> Signed-off-by: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 19 ++++++-------------
>  1 file changed, 6 insertions(+), 13 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
