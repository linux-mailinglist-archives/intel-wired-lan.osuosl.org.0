Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C35118AD46
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 08:20:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 46CE4204EE;
	Thu, 19 Mar 2020 07:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AciHC+bHrGi2; Thu, 19 Mar 2020 07:20:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79B25204F9;
	Thu, 19 Mar 2020 07:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D008E1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C68B386AC4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oQAdb54PY_ZX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2020 07:20:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4464D86AB7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2020 07:20:37 +0000 (UTC)
IronPort-SDR: 4LWNUSwh9+6+kb4qfFA8gd6wtkaGfGWeklqyl822yptaJid759kJG+HrLo4iSiqyoD9PBOAlUE
 IYazxO/3JTMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 00:20:36 -0700
IronPort-SDR: 3+Mb0PUADwx3mynANwlnWAyZIUgjdp0jmjJdWx4FPS5peX+hMEwOlJhh6jIvn3mZJNBgWzjC2R
 Fpx+6bNp+DsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,570,1574150400"; d="scan'208";a="263646617"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga002.jf.intel.com with ESMTP; 19 Mar 2020 00:20:33 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Mar 2020 00:20:33 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.211]) with mapi id 14.03.0439.000;
 Thu, 19 Mar 2020 00:20:33 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device IDs for
 i225 part
Thread-Index: AQHV94hjccU42NNyD0WCpCq3EtW1NKhPjnNQ
Date: Thu, 19 Mar 2020 07:20:33 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B97223862@ORSMSX103.amr.corp.intel.com>
References: <20200311093506.36496-1-sasha.neftin@intel.com>
In-Reply-To: <20200311093506.36496-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device IDs for
 i225 part
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Wednesday, March 11, 2020 2:35 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device IDs for i225 part
> 
> Add new device IDs for the next step of i225
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_base.c | 3 +++
>  drivers/net/ethernet/intel/igc/igc_hw.h   | 3 +++
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>  3 files changed, 9 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
