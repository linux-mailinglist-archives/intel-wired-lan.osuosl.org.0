Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C56E27CA86
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 19:34:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64CD285EC4;
	Wed, 31 Jul 2019 17:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GwQH0ZJTdE-E; Wed, 31 Jul 2019 17:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C820285EC1;
	Wed, 31 Jul 2019 17:34:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF10E1BF23F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB85F867D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y+qnpcMStOx1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 17:33:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5FB0867AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:33:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:33:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="172529697"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga008.fm.intel.com with ESMTP; 31 Jul 2019 10:33:27 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 31 Jul 2019 10:33:26 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.173]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 10:33:11 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v4 01/15] ice: Implement ethtool
 ops for channels
Thread-Index: AQHVQw3M0FOp8KCBD0SJ+npvVyFEPqblBeGg
Date: Wed, 31 Jul 2019 17:33:10 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40E90F@ORSMSX104.amr.corp.intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2ExZjc0ZjEtN2M5Ni00ZjA3LThmYjgtOTNjMDM2OWIyOTgyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMHIrbVNMbUpXK1V0QnBYeTBqMis4Y2dsSjBKZFpNaFRXN01EUWZSUnplT3VIMVdTN1c4OGxqVVV2dzF0S2pIVSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v4 01/15] ice: Implement ethtool
 ops for channels
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
> Sent: Thursday, July 25, 2019 1:55 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S23 v4 01/15] ice: Implement ethtool ops
> for channels
> 
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> Add code to query and set the number of queues on the primary VSI for a
> PF. This is accessed from the 'ethtool -l' and 'ethtool -L'
> commands, respectively.
> 
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  4 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  9 +-
> drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  2 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 85 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 52 ++++++++---
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    | 91 +++++++++++++++++++-
>  7 files changed, 230 insertions(+), 15 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
