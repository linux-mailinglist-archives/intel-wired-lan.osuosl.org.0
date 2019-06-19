Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C424C400
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 01:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 340A02150A;
	Wed, 19 Jun 2019 23:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FEFhykpY7Z7i; Wed, 19 Jun 2019 23:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1268121503;
	Wed, 19 Jun 2019 23:15:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8023A1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7CD0185F3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2KrtCIgK1GBq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 23:15:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 577CF84647
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:15:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:15:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="358344582"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2019 16:15:14 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 16:15:14 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.81]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 16:15:14 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next ] iavf: Fix up debug print macro
Thread-Index: AQHVJWHscEV+/2LXRUWg81hxQn37CqajnuCw
Date: Wed, 19 Jun 2019 23:15:13 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3F8D53@ORSMSX104.amr.corp.intel.com>
References: <20190617231058.15343-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20190617231058.15343-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjllMWEyNDMtZjNlZi00MDE2LWE4ZjQtMTM5YmMxZTY4ZmNiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNzg2RTlcL0JGZXhUWndGQ1l4SVVKOUpsM2hUVXVRM1JcLzdpZmd0MlZSRkFBYTE4RHVPTXZsdUE0aGNJVm9zSW96In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next ] iavf: Fix up debug print macro
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
> Sent: Monday, June 17, 2019 4:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net-next ] iavf: Fix up debug print macro
> 
> This aligns the iavf_debug() macro with the other Intel drivers.
> 
> Add the bus number, bus_id field to i40e_bus_info so output shows each
> physical port(i.e func) in following format:
>   [[[[<domain>]:]<bus>]:][<slot>][.[<func>]]
> domains are numbered from 0 to ffff), bus (0-ff), slot (0-1f) and function (0-
> 7).
> 
> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_osdep.h | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
