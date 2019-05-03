Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3990C1363C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 May 2019 01:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2B9E8843D;
	Fri,  3 May 2019 23:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ebn27cra0kp5; Fri,  3 May 2019 23:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 791188858C;
	Fri,  3 May 2019 23:39:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A0DC1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2654788555
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:39:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7sjcBZJqt7q3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2019 23:39:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DB2AC8843D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:39:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 16:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="139726252"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga008.jf.intel.com with ESMTP; 03 May 2019 16:39:00 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 16:39:00 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.162]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 16:39:00 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S5 07/10] i40e: Missing response
 checks in driver when starting/stopping FW LLDP
Thread-Index: AQHU+t1+OPlE0QiT00K5Awf0oGk0XaZaHPlQ
Date: Fri, 3 May 2019 23:38:59 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C6DB@ORSMSX106.amr.corp.intel.com>
References: <20190424122055.27896-1-alice.michael@intel.com>
 <20190424122055.27896-7-alice.michael@intel.com>
In-Reply-To: <20190424122055.27896-7-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzFiZDYzMmUtOGY1YS00NTAwLWEyM2ItZGEyYzQ2YjczZTYzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUlp1dkNtUnZ5bkxPb2tvR1ltSHVwYjBPQmZ5ZWtoejlcL2pSUzhleHJFbzFJRFA5MmFOT2tsVThYYW13TFJvcWQifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 07/10] i40e: Missing response
 checks in driver when starting/stopping FW LLDP
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
> Behalf Of Alice Michael
> Sent: Wednesday, April 24, 2019 5:21 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Marczak, Piotr <piotr.marczak@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S5 07/10] i40e: Missing response
> checks in driver when starting/stopping FW LLDP
> 
> From: Piotr Marczak <piotr.marczak@intel.com>
> 
> Driver did not check response on LLDP flag change and always returned
> SUCCESS.
> 
> This patch now checks for an error and returns an error code and has
> additional information in the log.
> 
> Signed-off-by: Piotr Marczak <piotr.marczak@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 27 +++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
