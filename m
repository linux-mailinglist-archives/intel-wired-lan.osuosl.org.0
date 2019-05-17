Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FA322046
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2019 00:27:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D436B86D52;
	Fri, 17 May 2019 22:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUPwv35uh4xY; Fri, 17 May 2019 22:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9EA4A86C3A;
	Fri, 17 May 2019 22:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD1CA1BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C2A57228AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k1-bl2Nj1yEp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 22:27:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 3BACC2286C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:27:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 15:27:47 -0700
X-ExtLoop1: 1
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga005.jf.intel.com with ESMTP; 17 May 2019 15:27:47 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 17 May 2019 15:27:47 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.127]) with mapi id 14.03.0415.000;
 Fri, 17 May 2019 15:27:47 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S5 iavf 08/11] iavf: Refactor
 the watchdog state machine
Thread-Index: AQHVCnu9VomYqELITka6z7Bj2kiZy6Zv6ntQ
Date: Fri, 17 May 2019 22:27:47 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DB764@ORSMSX104.amr.corp.intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
 <20190514173709.62431-8-alice.michael@intel.com>
In-Reply-To: <20190514173709.62431-8-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGRkNjk2ZjctMDVjOS00NWQ0LWJmZGEtM2NmZTJjOGU4YjBmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSks1R3lTRm9pblwvd0liQWw0SVdWVEdmb0k1V2pJVE53SnZERlFJZUNyb3JlMDlUUnpPT3B4ZVdFK2xSSjZQMlYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 iavf 08/11] iavf: Refactor the
 watchdog state machine
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
> Subject: [Intel-wired-lan] [next PATCH S5 iavf 08/11] iavf: Refactor the
> watchdog state machine
> 
> From: Jan Sokolowski <jan.sokolowski@intel.com>
> 
> Refactor the watchdog state machine implementation.
> Add the additional state __IAVF_COMM_FAILED to process the PF
> communication fails. Prepare the watchdog state machine to integrate with
> init state machine.
> 
> Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 73 ++++++++++++---------
>  2 files changed, 44 insertions(+), 30 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
