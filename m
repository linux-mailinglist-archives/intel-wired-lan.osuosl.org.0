Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA402156132
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2020 23:31:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 798B086E9E;
	Fri,  7 Feb 2020 22:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxOPYWxC4DaN; Fri,  7 Feb 2020 22:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B620B86EA7;
	Fri,  7 Feb 2020 22:31:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2501BF57C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 22:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 360C286E9E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 22:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GzxhoRj5e4p7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2020 22:31:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 682BF86E41
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 22:31:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 14:31:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,415,1574150400"; d="scan'208";a="265172839"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 07 Feb 2020 14:31:30 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 7 Feb 2020 14:31:30 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Feb 2020 14:31:30 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Fri, 7 Feb 2020 14:31:30 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S37 v3 01/15] ice: Fix DCB rebuild
 after reset
Thread-Index: AQHV3RZPTzfBvKvpqUiuMRV4akJuuagQUm0g
Date: Fri, 7 Feb 2020 22:31:29 +0000
Message-ID: <b5f9eb9c83a14c7aabaa562ed097017e@intel.com>
References: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzU1YTJhZTMtMzkxZi00NTcwLTgyNTctYTcxM2VjMzE5NmExIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZmdZTXRGVTlwamxzTWl3QUpIU3lJUGRuWmdZbXpYMjFEdWd3UkxIVStqUTF3cVlITnExMDFuTlo3clJtV2gyMiJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S37 v3 01/15] ice: Fix DCB rebuild
 after reset
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
> Sent: Thursday, February 6, 2020 1:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S37 v3 01/15] ice: Fix DCB rebuild after
> reset
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> The function ice_dcb_rebuild had some logic flaws in it, and also didn't
> differentiate between FW and SW modes needs.
> 
> For FW flow, the willing setting was being forced to OFF and left that way.
> Unwilling in DCB FW mode is not a supported model.
> 
> Leave the config alone and use the return value from the set command to
> determine if setting the config was successful.
> 
> The SW DCB flow does not need to need to register for MIB change events
> (as they are not used in SW mode).
> 
> Use !is_sw_lldp checks to only perform FW specific task while in FW mode.
> 
> Also adding a reapplication of the current DCB config after a link event.  Some
> NVMs are not maintaining their DCB configs across link events.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> v3:
> - Use goto's for single exit/unlock path
> v2:
> - Add missing mutex_unlock() in error path
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 88 ++++++++------------
>  drivers/net/ethernet/intel/ice/ice_main.c    |  1 +
>  2 files changed, 36 insertions(+), 53 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
