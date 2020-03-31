Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C4B19A042
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:57:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA3F086E51;
	Tue, 31 Mar 2020 20:57:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zwc6pop4vR0z; Tue, 31 Mar 2020 20:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7893D86E5C;
	Tue, 31 Mar 2020 20:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 795321BF41E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7599E87EA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2QT3Oh1w9WrT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 20:57:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EDEDB87E3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:57:13 +0000 (UTC)
IronPort-SDR: kqRqRsKOskYoR0LdQdAByEjWEFq1JMjoJVkAayZAm0FHePQSw2IiN4vX9a5rtWi7cddGOpDGLj
 vXlRpKuqjcfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:57:13 -0700
IronPort-SDR: emFZE4xtCr+XqTELitYGZrBZ4OGoA0qsysshuXrLNesms3TXzz0dvHvBEM/aCUgbrN26oXAIau
 ua0otJ6LiyQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="395670984"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2020 13:57:13 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:57:13 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.76]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:57:12 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 11/12] igc: Refactor
 igc_del_mac_filter()
Thread-Index: AQHV/XlLx1VesEBMvEG4xXpaqK5yuahjQuMQ
Date: Tue, 31 Mar 2020 20:57:11 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DF01@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-12-andre.guedes@intel.com>
In-Reply-To: <20200318230102.36952-12-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 11/12] igc: Refactor
 igc_del_mac_filter()
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
> Subject: [Intel-wired-lan] [PATCH 11/12] igc: Refactor igc_del_mac_filter()
> 
> This patch does a code refactoring in igc_del_mac_filter() so it uses
> the new helper igc_find_mac_filter() and improves the comment about the
> special handling when deleting the default filter.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 45 ++++++++++-------------
>  1 file changed, 19 insertions(+), 26 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
