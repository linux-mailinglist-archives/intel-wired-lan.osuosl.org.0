Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF1A77119
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 20:18:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74FBB24EA2;
	Fri, 26 Jul 2019 18:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04KrSt-F4q8W; Fri, 26 Jul 2019 18:18:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 11F1724763;
	Fri, 26 Jul 2019 18:18:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEF961BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A5C29899A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TyXAlfJ5fo-h for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 18:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DEEC8886C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:18:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 11:18:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="181950398"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga002.jf.intel.com with ESMTP; 26 Jul 2019 11:18:44 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX105.amr.corp.intel.com ([169.254.2.226]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 11:18:44 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S24 08/12] ice: Rename ethtool
 private flag for lldp
Thread-Index: AQHVQX/zlhI2Ttt930S5nKnha7STAKbdOg4Q
Date: Fri, 26 Jul 2019 18:18:44 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CDE3@ORSMSX104.amr.corp.intel.com>
References: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
 <20190723092759.3614-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20190723092759.3614-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWY2OGE0NjctMzQ5Yy00ODU4LTg3NzEtYzgzN2NhYTRhYTI0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYTJMOUtGeHBIUFRUVXFnSStCczFtRVB5VHhwOWVFOVphYmxnWXQwSDNqNVJXd29uZmhIbHJYVXhcL2F6TTNjMFkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S24 08/12] ice: Rename ethtool private
 flag for lldp
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
> Sent: Tuesday, July 23, 2019 2:28 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S24 08/12] ice: Rename ethtool private flag
> for lldp
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> The current flag name of "enable-fw-lldp" is a bit cumbersome.
> 
> Change priv-flag name to "fw-lldp-agent" with a value of on or off.  This is
> more straight-forward in meaning.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         | 2 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 +++---
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
