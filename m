Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C4382702
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2019 23:36:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8D9584D0A;
	Mon,  5 Aug 2019 21:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkGTC0KnOiS6; Mon,  5 Aug 2019 21:36:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2136484DD4;
	Mon,  5 Aug 2019 21:36:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 69C611BF392
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 66516203DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9AW2m6Rw8vM2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2019 21:36:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id D3B4D20373
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:36:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 14:36:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="257837475"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga001.jf.intel.com with ESMTP; 05 Aug 2019 14:36:25 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.52]) with mapi id 14.03.0439.000;
 Mon, 5 Aug 2019 14:36:24 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S26 08/15] ice: Fix resource leak in
 ice_remove_rule_internal()
Thread-Index: AQHVSVLwrXK2aVbbX0mr8jjlvo4AsqbtGPPw
Date: Mon, 5 Aug 2019 21:36:24 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40F0D8@ORSMSX104.amr.corp.intel.com>
References: <20190802082533.23083-1-anthony.l.nguyen@intel.com>
 <20190802082533.23083-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20190802082533.23083-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjc2NjZmMjctYTM0OC00MWExLWFkNzgtN2IyNzRiNThhZGE3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSUlrMEdic0c1UmtSNUhmWmFoZkdWQW9WRytpQlwvTG01YlR5T3M4bTN5SlphOXZoZGJTc1hsN3F1MjBReUJscGkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S26 08/15] ice: Fix resource leak in
 ice_remove_rule_internal()
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
> Sent: Friday, August 2, 2019 1:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S26 08/15] ice: Fix resource leak in
> ice_remove_rule_internal()
> 
> From: Jeb Cramer <jeb.j.cramer@intel.com>
> 
> We don't free s_rule if ice_aq_sw_rules() returns a non-zero status.  If it
> returned a zero status, s_rule would be freed right after, so this implies it
> should be freed within the scope of the function regardless.
> 
> Signed-off-by: Jeb Cramer <jeb.j.cramer@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
