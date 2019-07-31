Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786177CB8F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CD8787108;
	Wed, 31 Jul 2019 18:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PRbkiE+2dabr; Wed, 31 Jul 2019 18:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 172DF87118;
	Wed, 31 Jul 2019 18:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6E1D1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C384485521
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yfjTGzJBVnSd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 18:11:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 537CF84640
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:11:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP; 31 Jul 2019 11:11:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="372205255"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2019 11:11:07 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX103.amr.corp.intel.com ([169.254.5.44]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 11:11:07 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S25 03/12] ice: Don't allow VSI to
 remove unassociated ucast filter
Thread-Index: AQHVQxXuTcNFlz3mIkiQyMy7G/PR0KblEGnQ
Date: Wed, 31 Jul 2019 18:11:07 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40EA70@ORSMSX104.amr.corp.intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
 <20190725095401.24590-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725095401.24590-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDE0MDk5ODUtYTkwMi00MzkzLThjODYtOWYwMDBkNDhiOTIwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQ0plbFdMdXA0aWRXQVZkNFZ2blpCaHo4UU54a0VLS1dZMXhpY2UzaWhXY0tvVEZSSElSTzgyK0I2bE9hYXR1TyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S25 03/12] ice: Don't allow VSI to
 remove unassociated ucast filter
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
> Sent: Thursday, July 25, 2019 2:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S25 03/12] ice: Don't allow VSI to remove
> unassociated ucast filter
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> If a VSI is not using a unicast filter or did not configure that particular unicast
> filter, driver should not allow it to be removed by the rogue VSI.
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 56 +++++++++++++++++++++
>  1 file changed, 56 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
