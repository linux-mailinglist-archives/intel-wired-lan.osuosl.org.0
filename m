Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7950319A044
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:57:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 320CB88773;
	Tue, 31 Mar 2020 20:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id js9qnD0bCCOh; Tue, 31 Mar 2020 20:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7CD68879B;
	Tue, 31 Mar 2020 20:57:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D54DF1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF28A87EA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sArM3FhNHaU6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 20:57:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5740487E3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:57:38 +0000 (UTC)
IronPort-SDR: g7B0O38b/8lhG/l5nY4RrPQKX6N2ZfqVVdxlUNaRZDivXMwBm5l0V4ri8CGVsr3DvgpdYqygkq
 xK/EeBA4Pf5g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:57:37 -0700
IronPort-SDR: As85pYYehCfAR7VFy+yXcJPRtbNuCg8FEMjV7QgBbyuYT7f1QaOS1mY1/K7iPQJMEDnqJ5kkXm
 dpQNqK8Td3sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="422431668"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga005.jf.intel.com with ESMTP; 31 Mar 2020 13:57:37 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:57:37 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.24]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:57:37 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 12/12] igc: Add debug messages to MAC
 filter code
Thread-Index: AQHV/XlMpA7AWqM3NUqjdtDuwI+u+qhjQvqQ
Date: Tue, 31 Mar 2020 20:57:36 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DF14@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-13-andre.guedes@intel.com>
In-Reply-To: <20200318230102.36952-13-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 12/12] igc: Add debug messages to MAC
 filter code
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
> Subject: [Intel-wired-lan] [PATCH 12/12] igc: Add debug messages to MAC filter
> code
> 
> This patch adds log messages to functions related to the MAC address
> filtering code to ease debugging.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 24 +++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
