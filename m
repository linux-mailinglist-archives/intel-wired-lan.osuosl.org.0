Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A9B1033C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 01:19:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E227987ABF;
	Tue, 30 Apr 2019 23:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G-ussggu+fG6; Tue, 30 Apr 2019 23:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B78287AAE;
	Tue, 30 Apr 2019 23:19:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAE631BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:18:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 961A9227B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KDg1Ee28ARjU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 23:18:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id EAE18220C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 23:18:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 16:18:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="135812649"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 30 Apr 2019 16:18:57 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.17]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 16:18:57 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S19 05/15] ice: Fix hang when ethtool
 disables FW LLDP
Thread-Index: AQHU9HlolOkP+i5VOkWAk+bFzzxpQ6ZVbSrA
Date: Tue, 30 Apr 2019 23:18:56 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39B04D@ORSMSX106.amr.corp.intel.com>
References: <20190416172439.27908-1-anirudh.venkataramanan@intel.com>
 <20190416172439.27908-6-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416172439.27908-6-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWQwYTk3ZDEtOGYxYy00MDA4LWIyZTUtMGZhYzg4ZmE3NzA4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS0R2blpMTVI3V2xFRDdiaFZHR0VsWlA4eXU3OENIT0tPdWVnQ1wvK2tZRWVyamNqYVo2Nm1UZGJ2TER5OWFOb0wifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S19 05/15] ice: Fix hang when ethtool
 disables FW LLDP
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
> Sent: Tuesday, April 16, 2019 10:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S19 05/15] ice: Fix hang when ethtool
> disables FW LLDP
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> When disabling and enabling VSIs, there are a couple of flows that recursively
> acquire the RTNL lock which causes a deadlock.
> Fix that.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
> [Anirudh Venkataramanan <anirudh.venkataramanan@intel.com> cleaned
> up commit message]
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 31 ++++++++++++--------
> drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  5 ++--
> drivers/net/ethernet/intel/ice/ice_ethtool.c |  4 +--
>  drivers/net/ethernet/intel/ice/ice_main.c    |  2 +-
>  4 files changed, 25 insertions(+), 17 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
