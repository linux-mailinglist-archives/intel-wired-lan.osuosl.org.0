Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DD6BBAF7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2019 20:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C696780C94;
	Mon, 23 Sep 2019 18:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SW50qHyHJLiO; Mon, 23 Sep 2019 18:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4F8985A7D;
	Mon, 23 Sep 2019 18:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 653ED1BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 61BFC207A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6mPyRCVKXtE1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2019 18:10:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id B20CF1FF11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:10:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 11:10:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,541,1559545200"; d="scan'208";a="195443132"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Sep 2019 11:10:04 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Sep 2019 11:10:04 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Sep 2019 11:10:00 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 23 Sep 2019 11:10:00 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S10 02/10] i40e: Add ability to
 display VF stats along with PF core stats
Thread-Index: AQHVb9rGzif372xpdUKJjrc4NqITLqc5lHIQ
Date: Mon, 23 Sep 2019 18:10:00 +0000
Message-ID: <37e1de11081e4228a94b3bdb83dfc610@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
 <20190920091724.51767-2-alice.michael@intel.com>
In-Reply-To: <20190920091724.51767-2-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGRiNjNjZmUtZDFkZS00MjVhLWFhN2YtZjNmZDMzNjYzODZkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ0JCWE9kcXpNcXc4ZkVmNXVyZk15RFwvTVJqOTBuTnFyTm9CWlwvZ2pRUUhleGl4cnk5b05uditUSXpsTWtXa1JpIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S10 02/10] i40e: Add ability to
 display VF stats along with PF core stats
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
> Sent: Friday, September 20, 2019 2:17 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Grubba, Arkadiusz <arkadiusz.grubba@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S10 02/10] i40e: Add ability to display
> VF stats along with PF core stats
> 
> From: Arkadiusz Grubba <arkadiusz.grubba@intel.com>
> 
> This change introduces the ability to display extended (enhanced) statistics
> for PF interfaces (in accordance to the new build flags also introduced here).
> 
> The patch introduces new arrays and preprocessor symbols defined for
> these extra stats (in i40e_ethtool.c file) and enhances/extends ethtool ops
> functions intended for dealing with PF stats (i.e.: i40e_get_stats_count(),
> i40e_get_ethtool_stats(), i40e_get_stat_strings() ).
> 
> There have also been introduced the new build flag named
> "I40E_PF_EXTRA_STATS_OFF" to exclude from the driver code all code
> snippets associated with these extra stats.
> 
> Signed-off-by: Arkadiusz Grubba <arkadiusz.grubba@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 149 ++++++++++++++++++
>  1 file changed, 149 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
