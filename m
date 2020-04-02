Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8228519BAAD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35119261DF;
	Thu,  2 Apr 2020 03:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4bHEDPK7ZrcK; Thu,  2 Apr 2020 03:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C97026242;
	Thu,  2 Apr 2020 03:37:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 211211BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1A65986A14
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:37:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLhH2ybOXy0E for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C61F8690F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:37:24 +0000 (UTC)
IronPort-SDR: tXr8cwgpSIUZV8ym6qkQ/xIskhpzdg5kUvsfMbjoPfcjB4eWWYPyBW9dJpPK3vDCsUE3mG/lPd
 G/3+fgqsKneg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:37:23 -0700
IronPort-SDR: shh0itQ9X1LCHxqR1KXSl1i5uRGrJoQKrT50/E2lIsaolHLLEs9WnLvLbggyf01Qca0TTIp30W
 X3+ZuhJF/JaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="284632712"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga002.fm.intel.com with ESMTP; 01 Apr 2020 20:37:23 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:37:22 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.204]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:37:22 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 03/10] igc: Use netdev log helpers in
 igc_ptp.c
Thread-Index: AQHWAj28BzdZ6gFvHEaNTCLsQuD1a6hlO3xA
Date: Thu, 2 Apr 2020 03:37:22 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EC0C@ORSMSX103.amr.corp.intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
 <20200325003824.5487-4-andre.guedes@intel.com>
In-Reply-To: <20200325003824.5487-4-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 03/10] igc: Use netdev log helpers in
 igc_ptp.c
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
> Subject: [Intel-wired-lan] [PATCH 03/10] igc: Use netdev log helpers in igc_ptp.c
> 
> In igc_ptp.c we print log messages using dev_* helpers, generating
> inconsistent output with the rest of the driver. Since this is a network
> device driver, we should preferably use netdev_* helpers because they
> append the interface name to the message, helping making sense out of
> the logs.
> 
> This patch converts all dev_* calls to netdev_*. It also takes this
> opportunity to remove the '\n' character at the end of messages since it
> is automatically added by netdev_* log helpers.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
