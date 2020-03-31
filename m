Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 159AD19A041
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:56:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2EB087EC7;
	Tue, 31 Mar 2020 20:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FgdpsnM2P0uq; Tue, 31 Mar 2020 20:56:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F18C187EB0;
	Tue, 31 Mar 2020 20:56:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 083F91BF41E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04302888BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:56:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0lZxQoNcFDk6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 20:56:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2BF50888B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:56:53 +0000 (UTC)
IronPort-SDR: QFcRK2GATJFOukbldj4Tat5gJljMtvH7Xh0wm2ozHQ13hDEQoKtXQ17arxKsJBvTGhhsHVbn5C
 B2crSNlivTww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:56:52 -0700
IronPort-SDR: 8PCPJbAXfL6mLCmd2PNYqqQ6Mq3rErN2EtSQ3CsmBH047fOkYQJFT2fsJJw+t0JRiEzQrTxE7N
 eS3cmXA8ikLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="448824530"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga005.fm.intel.com with ESMTP; 31 Mar 2020 13:56:52 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:56:51 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.188]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:56:51 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 10/12] igc: Refactor
 igc_mac_entry_can_be_used()
Thread-Index: AQHV/XlPye8lfsPIzEeVba6EBuhle6hjQsgA
Date: Tue, 31 Mar 2020 20:56:51 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DEED@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-11-andre.guedes@intel.com>
In-Reply-To: <20200318230102.36952-11-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 10/12] igc: Refactor
 igc_mac_entry_can_be_used()
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
> Subject: [Intel-wired-lan] [PATCH 10/12] igc: Refactor
> igc_mac_entry_can_be_used()
> 
> The helper igc_mac_entry_can_be_used() implementation is a bit
> convoluted since it does two different things: find a not-in-use slot
> in mac_table or find an in-use slot where the address and address type
> match. This patch does a code refactoring and break it up into two
> helper functions.
> 
> With this patch we might traverse mac_table twice in some situations,
> but this is not harmful performance-wise (mac_table has only 16 entries
> and adding mac filters is not hot-path), and it improves igc_add_mac_
> filter() readability considerably.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 80 +++++++++++++----------
>  1 file changed, 47 insertions(+), 33 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
