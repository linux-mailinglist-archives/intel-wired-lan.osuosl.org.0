Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A7290C31
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Aug 2019 04:41:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 10A41203BB;
	Sat, 17 Aug 2019 02:41:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUnLmj5JrPyh; Sat, 17 Aug 2019 02:41:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D0E2214EB;
	Sat, 17 Aug 2019 02:41:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37EB91BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2019 02:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 23D1320364
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2019 02:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmPkahqSzo-z for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Aug 2019 02:41:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 8CD36203BB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2019 02:41:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 19:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,395,1559545200"; d="scan'208";a="328846778"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 16 Aug 2019 19:41:04 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 16 Aug 2019 19:41:04 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.52]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.173]) with mapi id 14.03.0439.000;
 Fri, 16 Aug 2019 19:41:03 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Add tx_csum offload
 functionality
Thread-Index: AQHVTbBRT9NWrap+rE20UMlAQzrTSab+rtkA
Date: Sat, 17 Aug 2019 02:41:03 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970F74CD@ORSMSX106.amr.corp.intel.com>
References: <20190808061223.42725-1-sasha.neftin@intel.com>
In-Reply-To: <20190808061223.42725-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGFjMjA5MDktMWI1MS00MDI4LWIyZGMtODhjZjk0Zjk3OTJjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUmpxZVZcL3JuUWlPejd1K3ZRV0NuVmZFejlkK0g3WlRScXIxNVI4OEVPcE1PcHpTcWgydExZMWtFMkxybDhXQVMifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add tx_csum offload
 functionality
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

> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Sasha Neftin
> Sent: Wednesday, August 7, 2019 11:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1] igc: Add tx_csum offload functionality
> 
> Add ip generic TX checksum offload functionality.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  4 ++
>  drivers/net/ethernet/intel/igc/igc_base.h    |  8 +++
>  drivers/net/ethernet/intel/igc/igc_defines.h |  5 ++
>  drivers/net/ethernet/intel/igc/igc_main.c    | 97
> ++++++++++++++++++++++++++++
>  4 files changed, 114 insertions(+)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
