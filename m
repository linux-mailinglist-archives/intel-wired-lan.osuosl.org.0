Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB98198847
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 01:29:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5532B868BC;
	Mon, 30 Mar 2020 23:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bpSrXr1NG24q; Mon, 30 Mar 2020 23:29:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85057868BE;
	Mon, 30 Mar 2020 23:29:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C54D11BF329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 23:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBB0E868BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 23:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wi6tsk-Hl8p3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2020 23:29:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 13D2B868B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 23:29:31 +0000 (UTC)
IronPort-SDR: Jkuk/xyNpTdbcYs3jbRGQOnRXe9ouX8jyQDaON8/gWl6Ue77iLKwsZ0pKah+45gz72xdTkgNQO
 0lTS8IAuZmdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 16:29:30 -0700
IronPort-SDR: 017WBPzhgR+rir9qRoBOKIxa0BXkd4YE/P8VF9FTuXBxTRHwU0XtxhykhtywkDlbQEdyuriCCY
 8JG6TjP/xB+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,326,1580803200"; d="scan'208";a="267090052"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga002.jf.intel.com with ESMTP; 30 Mar 2020 16:29:30 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.144]) with mapi id 14.03.0439.000;
 Mon, 30 Mar 2020 16:29:29 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue PATCH v3 1/2] igc: Add support
 for taprio offloading
Thread-Index: AQHV45GWH2Wd9xRfyUWRenIIXQRjvahiDo5w
Date: Mon, 30 Mar 2020 23:29:29 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722CFA6@ORSMSX103.amr.corp.intel.com>
References: <20200214235203.3910513-1-vinicius.gomes@intel.com>
 <20200214235203.3910513-2-vinicius.gomes@intel.com>
In-Reply-To: <20200214235203.3910513-2-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v3 1/2] igc: Add support
 for taprio offloading
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
> Subject: [Intel-wired-lan] [next-queue PATCH v3 1/2] igc: Add support for taprio
> offloading
> 
> Adds support for translating taprio schedules into i225 cycles. This
> will allow schedules to run in the hardware, making the schedules
> enforcement more precise and saving CPU time.
> 
> Right now, the only simple schedules are allowed, complex schedules are
> rejected. "simple" in this context are schedules that each HW queue is
> opened and closed only once in each cycle.
> 
> Changing schedules is still not supported as well.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/Makefile      |   2 +-
>  drivers/net/ethernet/intel/igc/igc.h         |   7 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |  12 ++
>  drivers/net/ethernet/intel/igc/igc_main.c    | 113 +++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |  12 ++
>  drivers/net/ethernet/intel/igc/igc_tsn.c     | 140 +++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_tsn.h     |   9 ++
>  7 files changed, 294 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_tsn.c
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_tsn.h
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
