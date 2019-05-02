Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9DC12447
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 23:45:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98B298687B;
	Thu,  2 May 2019 21:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzZlg-m_pwj6; Thu,  2 May 2019 21:45:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D617E86870;
	Thu,  2 May 2019 21:45:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70AB31BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E02E8680B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xmbPrbnIbrR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 21:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA5B786802
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:45:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 14:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="320968426"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga005.jf.intel.com with ESMTP; 02 May 2019 14:45:23 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 2 May 2019 14:45:22 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.159]) with mapi id 14.03.0415.000;
 Thu, 2 May 2019 14:45:22 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S4 iavf 4/9] iavf: replace i40e
 variables with iavf
Thread-Index: AQHU9Wu9VhQzvViDeUaf7hcr3ab3yKZYdcoQ
Date: Thu, 2 May 2019 21:45:23 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C49F@ORSMSX106.amr.corp.intel.com>
References: <20190417221737.11460-1-alice.michael@intel.com>
 <20190417221737.11460-4-alice.michael@intel.com>
In-Reply-To: <20190417221737.11460-4-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTAwODMzMDEtNDQ0MS00MmEwLWJiZWUtYzk3YmU1NDhlNTAxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiR0RYak1MN3ZRU1BqRHh2VG1zRHA4ZStBV1R6NFNDWStzNFE2MHE4S1ZuZytOTlh4cm5FXC92QVFMXC9jSm1OZzVXIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S4 iavf 4/9] iavf: replace i40e
 variables with iavf
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
> Sent: Wednesday, April 17, 2019 3:18 PM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S4 iavf 4/9] iavf: replace i40e variables
> with iavf
> 
> Update the old variables and flags marked as i40e to match
> the iavf name of the driver.
> 
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_adminq.c |  80 +--
>  drivers/net/ethernet/intel/iavf/iavf_adminq.h |  72 +-
>  .../net/ethernet/intel/iavf/iavf_adminq_cmd.h | 656 +++++++++---------
>  drivers/net/ethernet/intel/iavf/iavf_common.c | 182 ++---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  12 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  18 +-
>  .../net/ethernet/intel/iavf/iavf_prototype.h  |  14 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  12 +-
>  drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 +-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  16 +-
>  10 files changed, 532 insertions(+), 532 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
