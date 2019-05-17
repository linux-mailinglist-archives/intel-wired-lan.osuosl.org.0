Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F17A22044
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2019 00:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADF7B8798D;
	Fri, 17 May 2019 22:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id glx1rFJfCcXi; Fri, 17 May 2019 22:26:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF5FC85CDC;
	Fri, 17 May 2019 22:26:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 01DBC1BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 07EF2855D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VzyJW9VU-kJG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 22:26:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67E7B853F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:26:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 15:26:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,481,1549958400"; d="scan'208";a="172954893"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2019 15:26:57 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 17 May 2019 15:26:56 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.190]) with mapi id 14.03.0415.000;
 Fri, 17 May 2019 15:26:56 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S5 iavf 06/11] iavf: Move
 commands processing to the separate function
Thread-Index: AQHVCnvGzVUoig/p4kKzTpksWhaWc6Zv6j4Q
Date: Fri, 17 May 2019 22:26:56 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DB748@ORSMSX104.amr.corp.intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
 <20190514173709.62431-6-alice.michael@intel.com>
In-Reply-To: <20190514173709.62431-6-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWNkYjhiMDAtMmE1YS00Y2FhLWFjZmYtMjg5YTY2MzA4YWNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMnlBSm5HaEVPQVBUbzNlZUxGaTkrenNCYzJzQVFweUNEd29scjRra1p2dDMzY1BIbWlLQlQ4YU9sVU5BYnhKUCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 iavf 06/11] iavf: Move
 commands processing to the separate function
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
> Sent: Tuesday, May 14, 2019 10:37 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Pawlak, Jakub <jakub.pawlak@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S5 iavf 06/11] iavf: Move commands
> processing to the separate function
> 
> From: Jakub Pawlak <jakub.pawlak@intel.com>
> 
> Move the commands processing outside the watchdog_task() function. This
> reduce length and complexity of the function which is mainly designed to
> process the watchdog state machine.
> 
> Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 197 +++++++++++---------
>  1 file changed, 105 insertions(+), 92 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
