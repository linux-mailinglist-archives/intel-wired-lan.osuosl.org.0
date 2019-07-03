Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B0C5EE92
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 23:33:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CFD338602D;
	Wed,  3 Jul 2019 21:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GgV6_LKWr1Ah; Wed,  3 Jul 2019 21:33:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C39486081;
	Wed,  3 Jul 2019 21:33:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB99B1BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:33:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A82528607A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oUkoDVjsBM4p for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 21:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2CC218602D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:33:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 14:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,448,1557212400"; d="scan'208";a="339426519"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga005.jf.intel.com with ESMTP; 03 Jul 2019 14:33:02 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.153]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 14:33:02 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S7 1/9] i40e: fix incorrect
 ethtool statistics veb and veb.tc_
Thread-Index: AQHVMReh6ce5fmLhUkeo1w4WpcZsMKa5a1fQ
Date: Wed, 3 Jul 2019 21:33:02 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD210@ORSMSX104.amr.corp.intel.com>
References: <20190702122259.79070-1-alice.michael@intel.com>
In-Reply-To: <20190702122259.79070-1-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWE4MDZkYmQtYTE3ZC00YTc0LTk4OGQtZjdlY2YzN2ZmOTA5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSjJramp1XC96MzVTXC9xd0JnYXJiUjNmbXE4ZlRRMW9PVnpQamNtS2N2ZzhJRTFRZVVCalVRZkdMNkhjekVQb2I5In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S7 1/9] i40e: fix incorrect
 ethtool statistics veb and veb.tc_
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
> Sent: Tuesday, July 2, 2019 5:23 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Golovanov, Dmitrii <dmitrii.golovanov@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S7 1/9] i40e: fix incorrect ethtool
> statistics veb and veb.tc_
> 
> From: Dmitrii Golovanov <dmitrii.golovanov@intel.com>
> 
> This patch fixes missing call of i40e_update_veb_stats() in function
> i40e_get_ethtool_stats() to update stats data of VEB and VEB TC counters
> before they are written into ethtool buffer.
> Before the patch ethtool counters may fell behind interface counters.
> 
> Signed-off-by: Dmitrii Golovanov <dmitrii.golovanov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 8 +++++++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c    | 2 +-
>  3 files changed, 9 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
