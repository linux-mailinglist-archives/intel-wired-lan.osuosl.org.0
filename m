Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7ED591EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 05:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9129020459;
	Fri, 28 Jun 2019 03:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TScFOKyH52VR; Fri, 28 Jun 2019 03:21:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE8A32045D;
	Fri, 28 Jun 2019 03:21:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09C511BF30F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05B5A203FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUTUbExUEmOz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 03:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 1FFCD20035
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:21:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 20:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="153250013"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga007.jf.intel.com with ESMTP; 27 Jun 2019 20:21:46 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.95]) with mapi id 14.03.0439.000;
 Thu, 27 Jun 2019 20:21:46 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Detlev Casanova <detlev.casanova@gmail.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v3] e1000e: Make watchdog use delayed work
Thread-Index: AQHVKXHl35anXlANxkOwN6YqevaOE6awbigw
Date: Fri, 28 Jun 2019 03:21:45 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B54AA@ORSMSX103.amr.corp.intel.com>
References: <20190623031437.19716-1-detlev.casanova@gmail.com>
In-Reply-To: <20190623031437.19716-1-detlev.casanova@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDg0MDBiZWItMGZiNS00OTE4LTgyNzItMzZkOTdmMWNhYmIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidjBKRWVabGUyRzh2NzBnY0MrM284YnRvMHZQOGlNbWRlbFo3WkJlKzhRa3JSN0JrUjBrcHJxK0FrbmJvV3IxbiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Make watchdog use delayed
 work
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

> From: netdev-owner@vger.kernel.org [mailto:netdev-owner@vger.kernel.org]
> On Behalf Of Detlev Casanova
> Sent: Saturday, June 22, 2019 8:15 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; David S. Miller
> <davem@davemloft.net>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Cc: Detlev Casanova <detlev.casanova@gmail.com>
> Subject: [PATCH v3] e1000e: Make watchdog use delayed work
> 
> Use delayed work instead of timers to run the watchdog of the e1000e
> driver.
> 
> Simplify the code with one less middle function.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h  |  5 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c | 54 ++++++++++++----------
>  2 files changed, 32 insertions(+), 27 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
