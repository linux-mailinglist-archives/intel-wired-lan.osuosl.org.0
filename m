Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9DD69FE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 02:30:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 600D921561;
	Tue, 16 Jul 2019 00:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uI42oKo1jHbs; Tue, 16 Jul 2019 00:30:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 185282042F;
	Tue, 16 Jul 2019 00:30:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A20E1BF97A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 00:30:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8515F8689B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 00:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y+-RZh+VvbOX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 00:30:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C268884D16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 00:30:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 17:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,494,1557212400"; d="scan'208";a="318836018"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga004.jf.intel.com with ESMTP; 15 Jul 2019 17:30:38 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jul 2019 17:30:37 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.44]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.226]) with mapi id 14.03.0439.000;
 Mon, 15 Jul 2019 17:30:37 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] igc: Add more SKUs for i225 device
Thread-Index: AQHVO22wPICrimSYjkueEyMwKj+bmA==
Date: Tue, 16 Jul 2019 00:30:37 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970D1A44@ORSMSX103.amr.corp.intel.com>
References: <20190702113955.6248-1-sasha.neftin@intel.com>
In-Reply-To: <20190702113955.6248-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Add more SKUs for i225 device
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

On Tue, 2019-07-02 at 14:39 +0300, Sasha Neftin wrote:
> Add support for more SKUs.
> v2: Fixed device id to I220
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
