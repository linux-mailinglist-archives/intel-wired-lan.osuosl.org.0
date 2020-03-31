Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B676F19A03F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:56:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 332E886E56;
	Tue, 31 Mar 2020 20:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IIyAqCpmVAqy; Tue, 31 Mar 2020 20:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 951BD86E5C;
	Tue, 31 Mar 2020 20:56:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 468AF1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4278186E4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ih0671hqSVft for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 20:56:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4BE8086E4C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:56:27 +0000 (UTC)
IronPort-SDR: e1mIUNa4Ucf+d5/uZLyedjR4oqo+bPU6wYUCaoFIXVzr7OloP3ueq96eq7b+enlDz+9slLM1hP
 dpunQazX/a3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:56:26 -0700
IronPort-SDR: pnEV6C2N/mJgWtz7e+SezVSomTq2TGa26GHvQmkLUllCcDK6iQBFz95WjiZGr6xyTrgPViCwGU
 WAShg1GZzrsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="328203358"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga001.jf.intel.com with ESMTP; 31 Mar 2020 13:56:26 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:56:26 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX155.amr.corp.intel.com ([169.254.7.107]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:56:26 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 09/12] igc: Remove
 igc_*_mac_steering_filter() wrappers
Thread-Index: AQHV/XlTg+r0XAKkE0qnv6U8Co0aKqhjQowg
Date: Tue, 31 Mar 2020 20:56:26 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DED9@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-10-andre.guedes@intel.com>
In-Reply-To: <20200318230102.36952-10-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 09/12] igc: Remove
 igc_*_mac_steering_filter() wrappers
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
> Sent: Wednesday, March 18, 2020 4:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 09/12] igc: Remove
> igc_*_mac_steering_filter() wrappers
> 
> With the previous two patches, igc_add_mac_steering_filter() and
> igc_del_mac_steering_filter() became a pointless wrapper of
> igc_add_mac_filter() and igc_del_mac_filter().
> 
> This patch removes these wrappers and update callers to call
> igc_add_mac_filter() and igc_del_mac_filter() directly.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  8 ++++----
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 20 ++++++++------------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 20 ++++----------------
>  3 files changed, 16 insertions(+), 32 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
