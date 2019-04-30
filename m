Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE940102EE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 00:57:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5CE487A5E;
	Tue, 30 Apr 2019 22:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MCnVjnykMKLq; Tue, 30 Apr 2019 22:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9FA5879F5;
	Tue, 30 Apr 2019 22:57:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E44C1BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A822227AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hWM9-hGMurJg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 22:57:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 096AE221FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:57:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 15:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="147127810"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga003.jf.intel.com with ESMTP; 30 Apr 2019 15:57:25 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 15:57:25 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.162]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 15:57:24 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S21 12/14] ice: Use a different
 ICE_DBG bit for firmware log messages
Thread-Index: AQHU9Hrju7oEOUw9ckmmmWseVAqJhqZVZxWw
Date: Tue, 30 Apr 2019 22:57:23 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39AFFC@ORSMSX106.amr.corp.intel.com>
References: <20190416173503.29847-1-anirudh.venkataramanan@intel.com>
 <20190416173503.29847-13-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173503.29847-13-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDFjZGI5ODctODZhOC00NjhlLTliZGQtOTEzNjBlZTk0NWQ2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicitGQmpGOVwvcWZXbmQ3eDBDazN0dis0UEhjZEhvaXg2bVd0dnJtZHdCY0JYcFhCY05VRzM1MnZHNEZuZjhzNUIifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S21 12/14] ice: Use a different
 ICE_DBG bit for firmware log messages
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
> Behalf Of Anirudh Venkataramanan
> Sent: Tuesday, April 16, 2019 10:35 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S21 12/14] ice: Use a different ICE_DBG bit
> for firmware log messages
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Replace the use of the ICE_DBG_AQ_MSG bit when dumping firmware
> logging messages with a separate distinct type ICE_DBG_FW_LOG. This is
> useful so that developers may enable ICE_DBG_FW_LOG and get firmware
> logging messages, without also dumping AdminQ messages at the same
> time.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 6 +++---
>  drivers/net/ethernet/intel/ice/ice_type.h   | 1 +
>  2 files changed, 4 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
