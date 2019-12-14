Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B99111EF7B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Dec 2019 02:25:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38F9C8857B;
	Sat, 14 Dec 2019 01:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgY+KSiUdGaM; Sat, 14 Dec 2019 01:25:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0504588156;
	Sat, 14 Dec 2019 01:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EF511BF346
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A6D2873C4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ggd-NVlU42gO for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Dec 2019 01:25:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0257887330
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:25:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 17:25:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="265684344"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2019 17:25:53 -0800
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Dec 2019 17:25:52 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.250]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.106]) with mapi id 14.03.0439.000;
 Fri, 13 Dec 2019 17:25:52 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue PATCH v3 2/5] igc: Add support
 for RX timestamping
Thread-Index: AQHVqWcY5tB0o7Z3W02ImkQt8ZU6Lqe45+gA
Date: Sat, 14 Dec 2019 01:25:52 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9719B446@ORSMSX103.amr.corp.intel.com>
References: <20191202231953.2203397-1-vinicius.gomes@intel.com>
 <20191202231953.2203397-3-vinicius.gomes@intel.com>
In-Reply-To: <20191202231953.2203397-3-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzcyZTM3MmMtNzZjNy00YTVlLWE4ZTctZmJmNWU3NjM1MGRkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUkJkOXlRSHNLMGJ3b0Nyd0xuck9DalhxUUlxN1BvaFZldnI4eEZzNVMyTGpReUJcLzhzaGZWVVAybFdHbWtadzEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v3 2/5] igc: Add support
 for RX timestamping
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
> Sent: Monday, December 2, 2019 3:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue PATCH v3 2/5] igc: Add support for RX
> timestamping
> 
> This adds support for timestamping received packets.
> 
> It is based on the i210, as many features of i225 work the same way.
> The main difference from i210 is that i225 has support for choosing
> the timer register to use when timestamping packets. Right now, we
> only support using timer 0. The other difference is that i225 stores
> two timestamps in the receive descriptor, right now, we only retrieve
> one.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  17 ++
>  drivers/net/ethernet/intel/igc/igc_defines.h |  38 +++
>  drivers/net/ethernet/intel/igc/igc_main.c    |  10 +
>  drivers/net/ethernet/intel/igc/igc_ptp.c     | 272 +++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   3 +
>  5 files changed, 340 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
