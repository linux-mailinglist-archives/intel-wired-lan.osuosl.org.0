Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6A25743F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2019 00:24:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C86287D76;
	Wed, 26 Jun 2019 22:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2QORGwSVukdx; Wed, 26 Jun 2019 22:24:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E12F87D6A;
	Wed, 26 Jun 2019 22:24:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2FC91BF593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 22:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF7BD85FF3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 22:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UrdSsaChnTaL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 22:24:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B5DE855A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 22:24:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 15:24:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="170202514"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jun 2019 15:24:24 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 15:24:24 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.236]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 15:24:24 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v6] i40e: Add macvlan support on i40e
Thread-Index: AQHVJs9z1hl8GTPLy0GiDEr0YMkpkaaujhOw
Date: Wed, 26 Jun 2019 22:24:24 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FB4F1@ORSMSX104.amr.corp.intel.com>
References: <20190619184540.21298-1-harshitha.ramamurthy@intel.com>
In-Reply-To: <20190619184540.21298-1-harshitha.ramamurthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGMzYzM4ZTktMWIwNy00NjM0LWEzNTYtYmNlMDk2MGI2ZTY2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiM01nMlNUTmFydnB1algyWjNKY3FaXC90eVhGTDBXaThhdkk3WWJRc1VMMTVFOU54cUliTXp6WWJTUG5mWjg1WHYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v6] i40e: Add macvlan support on i40e
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
> Behalf Of Harshitha Ramamurthy
> Sent: Wednesday, June 19, 2019 11:46 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: harshitha.ramamurthy@gmail.com
> Subject: [Intel-wired-lan] [PATCH v6] i40e: Add macvlan support on i40e
> 
> This patch enables macvlan offloads for i40e. The idea is to use channels as
> macvlan interfaces. The channels are VSIs of type VMDQ. When the first
> macvlan is created, the maximum number of channels possible are created.
> From then on, as a macvlan interface is created, a macvlan filter is added to
> these already created channels (VSIs).
> 
> This patch utilizes subordinate device traffic classes to make queue
> groups(channels) available for an upper device like a macvlan.
> 
> Steps to configure macvlan offloads:
> 1. ethtool -K ethx l2-fwd-offload on
> 2. ip link add link ethx name macvlan1 type macvlan 3. ip addr add <address>
> dev macvlan1 4. ip link set macvlan1 up
> 
> Signed-off-by: Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>
> ---
> v6: Fixed a bug in calculation of macvlans to enable when there are
>     smaller number of vectors
> 
> v5: updated patch description based on community feedback
> 
> v4: Added code to check for a non-empty list of macvlans before deleting
>     them
> 
> v3: Renamed i40e_remove_macvlan_channels() to
>     i40e_free_macvlan_channels()
>     Fixed an indentation issue and added some comments
>     Removed a code name from the commit message
>     Addressed some more of Shannon's comments
> 
> v2: Addressed Shannon's comments
>     Added a new function to remove all macvlan VSIs
> 
>  drivers/net/ethernet/intel/i40e/i40e.h      |  27 ++
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 491 +++++++++++++++++++-
>  2 files changed, 516 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
