Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AEE7CA93
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 19:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C9C61FC7D;
	Wed, 31 Jul 2019 17:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pir3IldhsP6m; Wed, 31 Jul 2019 17:35:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E372020364;
	Wed, 31 Jul 2019 17:35:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B5FD1BF23F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 07E331FF11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8BVZdFF4h6po for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 17:35:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 53A541FC7D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:35:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="191303714"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2019 10:35:49 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX102.amr.corp.intel.com ([169.254.3.11]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 10:35:49 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v4 06/15] ice: Set WB_ON_ITR when
 we don't re-enable interrupts
Thread-Index: AQHVQw3MmUd5pa/8H0SOTC/f4OKrv6blBpjw
Date: Wed, 31 Jul 2019 17:35:49 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40E960@ORSMSX104.amr.corp.intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
 <20190725085541.55104-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725085541.55104-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjQyMDIyNjYtMjBlYy00N2FhLThmZmQtNWY2ZGU0ZmIxMzBjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiR3NGcm9OYWtmUmlxT21TbStOcFRuZGFlZjhDVFUxQnBCUFpOWDZ3K04zM2RxMkY2RCtQQzhSTGxtdG94TUpXTCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v4 06/15] ice: Set WB_ON_ITR when
 we don't re-enable interrupts
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
> Sent: Thursday, July 25, 2019 1:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S23 v4 06/15] ice: Set WB_ON_ITR when
> we don't re-enable interrupts
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently when busy polling is enabled we aren't setting/enabling
> WB_ON_ITR in the driver. This doesn't break the driver, but it does cause
> issues. If we don't enable WB_ON_ITR mode we will still get write-backs
> from hardware during polling when a cache line has been filled, but if a cache
> line is not filled we will not get the write-back because WB_ON_ITR is not set.
> Fix this by enabling WB_ON_ITR in the driver when interrupts are disabled.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v3: Moved defines to group with similar registers
> ---
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  3 ++
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 54 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.h     | 13 +++++
>  3 files changed, 70 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
