Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5DC8687B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 20:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 771D287598;
	Thu,  8 Aug 2019 18:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hj+mPG19-3wO; Thu,  8 Aug 2019 18:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A74182157;
	Thu,  8 Aug 2019 18:10:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2FD2D1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 18:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2AC5F87598
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 18:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 00tQ8orgeOeS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 18:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7D0E882157
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 18:10:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 11:10:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="203666109"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga002.fm.intel.com with ESMTP; 08 Aug 2019 11:10:05 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 8 Aug 2019 11:10:04 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.86]) with mapi id 14.03.0439.000;
 Thu, 8 Aug 2019 11:10:05 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] i40e: Implement debug macro
 hw_dbg using pr_debug
Thread-Index: AQHVTFuoMgwNlkVA0UOIgb300PZY8qbxkDRg
Date: Thu, 8 Aug 2019 18:10:05 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40F4BD@ORSMSX104.amr.corp.intel.com>
References: <20190806133348.17924-1-maurosr@linux.vnet.ibm.com>
 <20190806133348.17924-2-maurosr@linux.vnet.ibm.com>
In-Reply-To: <20190806133348.17924-2-maurosr@linux.vnet.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDA5YzFkMTgtZTk5Yi00ZjJhLTgyNmMtMTlmOTgzMWRjMjhjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQmlodzBodzRPR1BBMzlPYlNiVDAzNnlVbkNha056bDBWTDBnamRuNkpGaTJQdVE5dDExWHJrT1NxaTZGYlM3RSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2] i40e: Implement debug macro
 hw_dbg using pr_debug
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
> Behalf Of Mauro S. M. Rodrigues
> Sent: Tuesday, August 6, 2019 6:34 AM
> To: intel-wired-lan@lists.osuosl.org; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>
> Subject: [Intel-wired-lan] [PATCH 2/2] i40e: Implement debug macro hw_dbg
> using pr_debug
> 
> There are several uses of hw_dbg in the code, producing no output. This
> patch implments it using pr_debug.
> 
> Initially the intention was to implement it using netdev_dbg, analogously to
> what is done in ixgbe for instance. That approach was avoided due to some
> early usages of hw_dbg, like i40e_pf_reset, before the vsi structure
> initialization causing NULL pointer dereference during the driver probe if the
> dbg messages were turned on as soon as the module is probed.
> 
> Signed-off-by: Mauro S. M. Rodrigues <maurosr@linux.vnet.ibm.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_hmc.c    | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 7 ++++++-
>  3 files changed, 8 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
