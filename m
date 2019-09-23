Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E75DABBB00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2019 20:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5382020C45;
	Mon, 23 Sep 2019 18:12:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eMA2MRCqSRaw; Mon, 23 Sep 2019 18:12:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7EF012094B;
	Mon, 23 Sep 2019 18:12:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 67B331BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 634D08491C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ufh+z9J4B2Dv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2019 18:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9FA3F83FA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 18:11:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 11:11:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,541,1559545200"; d="scan'208";a="200623756"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 23 Sep 2019 11:11:57 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Sep 2019 11:11:57 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Sep 2019 11:11:37 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 23 Sep 2019 11:11:36 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S10 05/10] i40e: Extend PHY access
 with page change flag
Thread-Index: AQHVb9qoNq5JidII/k2mKbdNpA1NZac5lNDg
Date: Mon, 23 Sep 2019 18:11:36 +0000
Message-ID: <fd0a09c561f14195ba76a200df4b8882@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
 <20190920091724.51767-5-alice.michael@intel.com>
In-Reply-To: <20190920091724.51767-5-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTc0YjU1MDQtM2I3NC00Yzc4LWE4MGYtZTU5MWE1YWYxODM2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaWc1M1JQMFQ3bjhIaTk4K1pPcGxOXC9rZFRGa0pxRklCNlNxY0VaRkhaOFJLYVlhT2tQQnFTRXRcLzlTOVlnS2dQIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S10 05/10] i40e: Extend PHY
 access with page change flag
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
> Cc: Azarewicz, Piotr <piotr.azarewicz@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S10 05/10] i40e: Extend PHY access
> with page change flag
> 
> From: Piotr Azarewicz <piotr.azarewicz@intel.com>
> 
> Currently FW use MDIO I/F number corresponded with current PF for PHY
> access. This code allow to specify used MDIO I/F number.
> 
> Add new field - command flags with only one flag for now. Added flag tells
> FW that it shouldn't change page while accessing QSFP module, as it was set
> manually.
> 
> Signed-off-by: Piotr Azarewicz <piotr.azarewicz@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  8 ++-
> drivers/net/ethernet/intel/i40e/i40e_common.c | 70 +++++++++++++++----
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  8 +--
>  .../net/ethernet/intel/i40e/i40e_prototype.h  | 26 ++++---
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |  1 +
>  5 files changed, 87 insertions(+), 26 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>





_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
