Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1F48BF97
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2019 19:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C94578753F;
	Tue, 13 Aug 2019 17:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezBFLeOCyZqj; Tue, 13 Aug 2019 17:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AF94883CC;
	Tue, 13 Aug 2019 17:26:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83AE01BF41A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 806D9876E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SFdA6V7S+PfO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2019 17:26:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DCD58876C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:26:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 10:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="177863841"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga007.fm.intel.com with ESMTP; 13 Aug 2019 10:26:51 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.52]) with mapi id 14.03.0439.000;
 Tue, 13 Aug 2019 10:26:51 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S27 15/15] ice: change work limit to
 a constant
Thread-Index: AQHVTj49y2yBtcucEk6ZgK18R3i/nab5XAog
Date: Tue, 13 Aug 2019 17:26:50 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D4116CA@ORSMSX104.amr.corp.intel.com>
References: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
 <20190808143938.4968-15-anthony.l.nguyen@intel.com>
In-Reply-To: <20190808143938.4968-15-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzI0MjVlMzQtMTJjYi00YTU3LWE3ZjYtMzU5ODMxOGNhOTdmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicnVOcHJhcjE4SUI3R2tUMldHSDFEVmhMdjIyWHFOQnVcL1ZOek5vRkZRVTN6TE9Bdml5NnRGRnVrQzVGaFByKzAifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S27 15/15] ice: change work limit to a
 constant
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
> Sent: Thursday, August 8, 2019 7:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S27 15/15] ice: change work limit to a
> constant
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver has supported a transmit work limit that was configurable from
> ethtool for a long time, but there are no good use cases for having it be a
> variable that can be changed at run time.  In addition, this variable was noted
> to be causing performance overhead due to cache misses.
> 
> Just remove the variable and let the code use a constant so that the
> functionality is maintained (a limit on the number of transmits that will be
> cleaned in any one call to the clean routines) without the cache miss.
> 
> Removes code, removes a variable, removes testing surface. Yay.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  3 ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 14 ++------------
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  2 +-
>  3 files changed, 3 insertions(+), 16 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
