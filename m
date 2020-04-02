Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FB919BAA9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F6B085E5C;
	Thu,  2 Apr 2020 03:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IkvRy2Ij9USL; Thu,  2 Apr 2020 03:33:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEB6886CE0;
	Thu,  2 Apr 2020 03:33:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 418971BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 106D6868C6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01hiCVRemG01 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:33:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48A3E8686D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:33:18 +0000 (UTC)
IronPort-SDR: Qp8dUkxxfOTe7y6B0WZpOR1UqmIW/yYT7vOSSJEMkYF+4ra+76Wn7UQtXleO4W6qouPQTyl7Pz
 sIm97IpPVM8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:33:17 -0700
IronPort-SDR: an/i0lo2GJHJMsAMUDOO18ItBFvehYMS5dycn4t2h1PRr1oAZlbcBBolKpDlXTUPkUGCpJp2bI
 6da9zIEthDRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="328681756"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga001.jf.intel.com with ESMTP; 01 Apr 2020 20:33:17 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:33:17 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.76]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:33:17 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 01/10] igc: Use netdev log helpers in
 igc_main.c
Thread-Index: AQHWAj3AAd3cjA1qwEqudjnn6laKFqhlOVeA
Date: Thu, 2 Apr 2020 03:33:17 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EBDE@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-2-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-2-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 01/10] igc: Use netdev log helpers in
 igc_main.c
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
> Sent: Tuesday, March 24, 2020 5:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 01/10] igc: Use netdev log helpers in
> igc_main.c
> 
> In igc_main.c we print log messages using both dev_* and netdev_*
> helpers, generating inconsistent output. Since this is a network device
> driver, we should preferably use netdev_* helpers because they append
> the interface name to the message, helping making sense out of the logs.
> 
> This patch converts all dev_* calls to netdev_*. There is only two
> exceptions: one in igc_probe (net_device has not been allocated yet),
> and another one in igc_init_module (module initialization). It also
> takes this opportunity to improve some messages and remove the '\n'
> character at the end of messages since it is automatically added to by
> netdev_* log helpers.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 129 ++++++++++------------
>  1 file changed, 59 insertions(+), 70 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
