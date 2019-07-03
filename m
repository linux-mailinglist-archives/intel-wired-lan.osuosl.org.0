Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6CF5EEB2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 23:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8D36203CA;
	Wed,  3 Jul 2019 21:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s9QbxssaBjvz; Wed,  3 Jul 2019 21:42:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0D4D22005;
	Wed,  3 Jul 2019 21:42:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8020A1BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7C3C785C10
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0kqumaGem0Hm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 21:42:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42FBC85B68
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:42:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 14:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,448,1557212400"; d="scan'208";a="164468573"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jul 2019 14:42:14 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.113]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 14:42:14 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S7 7/9] i40e: Log info when PF
 is entering and leaving Allmulti mode.
Thread-Index: AQHVMRcjliGzUnt5UkaQ0dnBVFM6raa5bhjA
Date: Wed, 3 Jul 2019 21:42:13 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD280@ORSMSX104.amr.corp.intel.com>
References: <20190702122259.79070-1-alice.michael@intel.com>
 <20190702122259.79070-7-alice.michael@intel.com>
In-Reply-To: <20190702122259.79070-7-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDA0NTYwODUtNWMwOS00OTExLWE1YjUtMjYzOWEyZTgyNzY0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTkhFUktoNzlQcWNuT1dvUURvWHczRGplMW9qd0ZQMStlaUw3d3NUN3A0c0dcL3QyMVUzSjB2aWhPbExKbTBJYVgifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S7 7/9] i40e: Log info when PF is
 entering and leaving Allmulti mode.
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
> Sent: Tuesday, July 2, 2019 5:23 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zagorski, CzeslawX <czeslawx.zagorski@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S7 7/9] i40e: Log info when PF is
> entering and leaving Allmulti mode.
> 
> From: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
> 
> Add log when PF is entering and leaving Allmulti mode. The change of PF
> state is visible in dmesg now. Without this commit, entering and leaving
> Allmulti mode is not logged in dmesg.
> 
> Signed-off-by: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++++
>  1 file changed, 4 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
