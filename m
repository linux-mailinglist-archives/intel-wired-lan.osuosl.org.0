Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E735619BABE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:49:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D5F887E9D;
	Thu,  2 Apr 2020 03:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4KO6j521D5h; Thu,  2 Apr 2020 03:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F59387EA1;
	Thu,  2 Apr 2020 03:49:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7DFA1BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C3B748691A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oiu598Sud_s8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:49:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A080D86916
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:49:20 +0000 (UTC)
IronPort-SDR: Hj8/WEjqjCqFyXoUMvONy3cvK42p0TyyMleyZJl7LiRA0Gn174EGwYugtbEKv9v665qARItspa
 ej5VWsk/d4sg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:49:19 -0700
IronPort-SDR: LzleAPM6C7R/WR9zwCKSPSWjU5fVh+eimbaHhpq+igA12n6NjHrbHrUgvg3csx6Jx6CBqz3/oV
 6vW+yBLkRgpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="267887012"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga002.jf.intel.com with ESMTP; 01 Apr 2020 20:49:19 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:49:19 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.209]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:49:19 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 10/10] igc: Remove '\n' from log
 strings in igc_phy.c
Thread-Index: AQHWAj3FVbNAnEVyRUOIVwdnmo9TKahlPsVQ
Date: Thu, 2 Apr 2020 03:49:18 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EC99@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-11-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-11-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 10/10] igc: Remove '\n' from log
 strings in igc_phy.c
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Tuesday, March 24, 2020 5:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 10/10] igc: Remove '\n' from log strings in
> igc_phy.c
> 
> To keep log strings in igc_phy.c consistent with the rest of the driver
> code, this patch removes the '\n' character at the end. The newline
> character is automatically added by netdev_dbg() so there is no changes
> in the output.
> 
> Note: hw_dbg() is a macro that expands to netdev_dbg().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_phy.c | 52 ++++++++++++------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
