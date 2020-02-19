Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60877164F06
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2020 20:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16934845CB;
	Wed, 19 Feb 2020 19:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TKSwSv5grDeM; Wed, 19 Feb 2020 19:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A5A2847AC;
	Wed, 19 Feb 2020 19:38:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38EB11BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3070C845DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jau7pHbMqQHi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2020 19:38:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0ECFF845CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:38:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 11:38:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="228693848"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 19 Feb 2020 11:38:16 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Feb 2020 11:38:14 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Feb 2020 11:38:14 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 19 Feb 2020 11:38:14 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S39 v2 02/15] ice: update malicious
 driver detection event handling
Thread-Index: AQHV4rUQxTXG+u1Kz0mO+vERkM7lXKgi8sWw
Date: Wed, 19 Feb 2020 19:38:13 +0000
Message-ID: <c2937eb7cc0f4156b1eeb6b467be5f32@intel.com>
References: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2Q0ZDBlMWMtMDM3Mi00OWRiLTk2ZDUtYjg2ODhkNmU0Yjc3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQzBvc2Q4THNrZFU2d2xSWHIyS29JUTFoQWdpcXVOOThVb01GXC9xaWtTUW4rTFZKVitvNENrT29vSUtkdnVnamkifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S39 v2 02/15] ice: update malicious
 driver detection event handling
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
> Sent: Thursday, February 13, 2020 1:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S39 v2 02/15] ice: update malicious driver
> detection event handling
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Update the PF VFs MDD event message to rate limit once per second and
> report the total number Rx|Tx event count. Add support to print pending
> MDD events that occur during the rate limit. The use of net_ratelimit did not
> allow for per VF Rx|Tx granularity.
> 
> Additional PF MDD log messages are guarded by netif_msg_[rx|tx]_err().
> 
> Since VF RX MDD events disable the queue, add ethtool private flag mdd-
> auto-reset-vf to configure VF reset to re-enable the queue.
> 
> Disable anti-spoof detection interrupt to prevent spurious events during a
> function reset.
> 
> To avoid race condition do not make PF MDD register reads conditional on
> global MDD result.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2:
> - Add MAC address to MDD message
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   4 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   1 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 126 ++++++++++--------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  56 +++++++-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  20 ++-
>  6 files changed, 150 insertions(+), 59 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
