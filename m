Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2477C0BE5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2019 21:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 124E688162;
	Fri, 27 Sep 2019 19:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJ1BoFEp-Emz; Fri, 27 Sep 2019 19:02:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 747FB88158;
	Fri, 27 Sep 2019 19:02:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47C021BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 19:01:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44393204D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 19:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sV3wZMKZ15xO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2019 19:01:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id A10F61FD90
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 19:01:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 12:01:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="365262740"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 27 Sep 2019 12:01:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 27 Sep 2019 12:01:57 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Sep 2019 12:01:56 -0700
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81]) by
 fmsmsx601.amr.corp.intel.com ([10.18.126.81]) with mapi id 15.01.1713.004;
 Fri, 27 Sep 2019 12:01:56 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH] ixgbe: Make use of
 cpumask_local_spread to improve RSS locality
Thread-Index: AQHVcBI80+lEU9QXCEabE0oENKLUnqc/69fQ
Date: Fri, 27 Sep 2019 19:01:56 +0000
Message-ID: <1dc5ab14370c4105be3ffe0eac951998@intel.com>
References: <20190921001818.3431.45376.stgit@localhost.localdomain>
In-Reply-To: <20190921001818.3431.45376.stgit@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjczMmQ3ZDAtOTNmNy00OWRhLTgyZWMtODQzMTU1MDMxM2Y4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZjNCbmllblFBQUlta1NMd1BiT0VqQ1pWWnB1d25XV0RmQU1CXC92VHhDelo3enVCbUJNSHRHaDNPRjVvc0FpYmoifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH] ixgbe: Make use of
 cpumask_local_spread to improve RSS locality
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
> Behalf Of Alexander Duyck
> Sent: Friday, September 20, 2019 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH] ixgbe: Make use of
> cpumask_local_spread to improve RSS locality
> 
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> This patch is meant to address locality issues present in the ixgbe driver when
> it is loaded on a system supporting multiple NUMA nodes and more CPUs
> then the device can map in a 1:1 fashion. Instead of just arbitrarily mapping
> itself to CPUs 0-62 it would make much more sense to map itself to the local
> CPUs first, and then map itself to any remaining CPUs that might be used.
> 
> The first effect of this is that queue 0 should always be allocated on the local
> CPU/NUMA node. This is important as it is the default destination if a packet
> doesn't match any existing flow director filter or RSS rule and as such having it
> local should help to reduce QPI cross-talk in the event of an unrecognized
> traffic type.
> 
> In addition this should increase the likelihood of the RSS queues being
> allocated and used on CPUs local to the device while the ATR/Flow Director
> queues would be able to route traffic directly to the CPU that is likely to be
> processing it.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c |    8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
