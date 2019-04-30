Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE4E102D9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 00:53:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7421987A5A;
	Tue, 30 Apr 2019 22:53:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GFftHJ1hsiwB; Tue, 30 Apr 2019 22:53:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 255DB82BFC;
	Tue, 30 Apr 2019 22:53:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD2F61BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:53:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3BAAB84480
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:53:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ycLNpvj9jAnG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 22:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 633B985FD0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:53:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 15:53:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="144994212"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga008.fm.intel.com with ESMTP; 30 Apr 2019 15:53:05 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 15:53:05 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.17]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 15:53:05 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S21 06/14] ice: Add switch rules to
 handle LLDP packets
Thread-Index: AQHU9HrjjnJQu3ba702ohNPImnaSE6ZVZeiQ
Date: Tue, 30 Apr 2019 22:53:04 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39AF99@ORSMSX106.amr.corp.intel.com>
References: <20190416173503.29847-1-anirudh.venkataramanan@intel.com>
 <20190416173503.29847-7-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173503.29847-7-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTI5YzhjN2EtMGUwMC00N2M2LTgxNmUtYTQwOWRhNDY5Y2Y0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTkVuV3dJaUgzUGRVN2FreFFDR3g1dGRWODRuRFNxWFBxa0xoS0lqN1FJOVp0Y3ZwYUlkUnJhZlM5WU1scTRzSyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S21 06/14] ice: Add switch rules to
 handle LLDP packets
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
> Subject: [Intel-wired-lan] [PATCH S21 06/14] ice: Add switch rules to handle
> LLDP packets
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> Add call to configure dropping egress LLDP packets in ice_vsi_setup and
> remove the rule in ice_vsi_release.
> 
> Add calls to add/remove rule to route LLDP packets to default VSI when FW
> LLDP engine is disabled/enabled and remove rule if applied during
> ice_vsi_release.
> 
> In the function ice_add_eth_mac(), there is a line that hardcodes the filter
> info flag to TX. This is incorrect as this flag will be set by the calling function
> that built the list of filters to add. So remove the hardcoded value.
> 
> This patch also contains a fix to stop treating the DCBx state of "Not Started"
> as an error state that kicks DCB in SW mode. This will address having non-
> cabled interfaces automatically go into SW mode with the FW engine
> running.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
> [Anirudh Venkataramanan <anirudh.venkataramanan@intel.com> cleaned
> up commit message]
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  4 +-
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 11 +++
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 70 +++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_switch.c  |  5 +-
>  5 files changed, 86 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
