Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D26179CEE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Mar 2020 01:45:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CAD285F69;
	Thu,  5 Mar 2020 00:45:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5sk3jqXNVcex; Thu,  5 Mar 2020 00:45:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D088F85F6E;
	Thu,  5 Mar 2020 00:45:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 978301BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 00:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9385A85F5D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 00:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PlVI8pqO1d2r for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2020 00:45:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D220685F59
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 00:45:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 16:45:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,516,1574150400"; d="scan'208";a="240637313"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga003.jf.intel.com with ESMTP; 04 Mar 2020 16:45:18 -0800
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 16:45:18 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.43]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.66]) with mapi id 14.03.0439.000;
 Wed, 4 Mar 2020 16:45:18 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Add GSO partial support
Thread-Index: AQHV3+BZfouLNfTgtkKBvCCYHKnDp6g5Tsrw
Date: Thu, 5 Mar 2020 00:45:17 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9720142C@ORSMSX103.amr.corp.intel.com>
References: <20200210070415.23679-1-sasha.neftin@intel.com>
In-Reply-To: <20200210070415.23679-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add GSO partial support
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
> Sasha Neftin
> Sent: Sunday, February 9, 2020 11:04 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add GSO partial support
> 
> Partial generic segmentation offload is a hybrid between TSO and GSO.
> What is effectively does is take advantage of certain traits of TCP and
> tunnels so that instead of having to rewrite the packet headers for each
> segment only in the inner-most transport header and possible the outer-
> most
> network header need to be updated.
> This allows devices that do not support tunnel offload or tunnels
> offloads with checksum to still make use of segmentation.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
