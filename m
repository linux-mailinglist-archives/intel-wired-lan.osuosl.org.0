Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E848198849
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 01:29:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5DF387715;
	Mon, 30 Mar 2020 23:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfd3EReE+5Xf; Mon, 30 Mar 2020 23:29:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E170586DE7;
	Mon, 30 Mar 2020 23:29:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 888121BF329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 23:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 84F918815D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 23:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xlHK-BGXdo7n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2020 23:29:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82793880CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 23:29:52 +0000 (UTC)
IronPort-SDR: qPKSeIp8tQr4DP+oaWxzXJOBjM+L2hneXg76vSn3n695cHeDKg2sempYBla+JQhv1CNjz4PPo5
 fwdk0lZorYjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 16:29:52 -0700
IronPort-SDR: YQkX/gsyl4nwLFGGbOcduPRbZwvUZYF8oYxolEEsj704FX/bwDLYbNt1scHWoD9pyvrGK7OJ9Y
 ti2CIMBLgWwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,326,1580803200"; d="scan'208";a="327900681"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga001.jf.intel.com with ESMTP; 30 Mar 2020 16:29:51 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 30 Mar 2020 16:29:51 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.102]) with mapi id 14.03.0439.000;
 Mon, 30 Mar 2020 16:29:51 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support
 for ETF offloading
Thread-Index: AQHV45GTqv5/9VwSEk2cSo5e1RXhPKhiDwAg
Date: Mon, 30 Mar 2020 23:29:50 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722CFB4@ORSMSX103.amr.corp.intel.com>
References: <20200214235203.3910513-1-vinicius.gomes@intel.com>
 <20200214235203.3910513-3-vinicius.gomes@intel.com>
In-Reply-To: <20200214235203.3910513-3-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support
 for ETF offloading
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
> Vinicius Costa Gomes
> Sent: Friday, February 14, 2020 3:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support for
> ETF offloading
> 
> This adds support for ETF offloading for the i225 controller.
> 
> For i225, the LaunchTime feature is almost a subset of the Qbv
> feature. The main change from the i210 is that the launchtime of each
> packet is specified as an offset applied to the BASET register. BASET
> is automatically incremented each cycle.
> 
> For i225, the approach chosen is to re-use most of the setup used for
> taprio offloading. With a few changes:
> 
>  - The more or less obvious one is that when ETF is enabled, we should
>  set add the expected launchtime to the (advanced) transmit
>  descriptor;
> 
>  - The less obvious, is that when taprio offloading is not enabled, we
>  add a dummy schedule (all queues are open all the time, with a cycle
>  time of 1 second).
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 70 +++++++++++++++++++-
>  drivers/net/ethernet/intel/igc/igc_tsn.c     | 19 +++++-
>  3 files changed, 86 insertions(+), 4 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
