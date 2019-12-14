Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C07FF11EF7D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Dec 2019 02:26:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77F1388156;
	Sat, 14 Dec 2019 01:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wT-mn19jNDgY; Sat, 14 Dec 2019 01:26:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B27B9882CA;
	Sat, 14 Dec 2019 01:26:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03B071BF346
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F05DF873DC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y84Bvo8boUj4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Dec 2019 01:26:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79F77873D1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:26:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 17:26:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="364460696"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2019 17:26:42 -0800
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Dec 2019 17:26:42 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.250]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.41]) with mapi id 14.03.0439.000;
 Fri, 13 Dec 2019 17:26:42 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue PATCH v3 4/5] igc: Add support
 for ethtool GET_TS_INFO command
Thread-Index: AQHVqWcRErMjDzUKN0uvEBYmQtv9XKe46DCQ
Date: Sat, 14 Dec 2019 01:26:41 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9719B46E@ORSMSX103.amr.corp.intel.com>
References: <20191202231953.2203397-1-vinicius.gomes@intel.com>
 <20191202231953.2203397-5-vinicius.gomes@intel.com>
In-Reply-To: <20191202231953.2203397-5-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjA3NjM0N2ItMDgxOC00OGZmLThhOTMtNzYyMmZmM2I2ZWZjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiU2tCVXNhUndQRzJ6bFFUakEra0FsOUQxd2FIaTJEOE40SW0xZVF6Y3VpSUZXXC93a3JxQUxzUTh4aFBWNEJyVzEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v3 4/5] igc: Add support
 for ethtool GET_TS_INFO command
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
> Vinicius Costa Gomes
> Sent: Monday, December 2, 2019 3:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue PATCH v3 4/5] igc: Add support for
> ethtool GET_TS_INFO command
> 
> This command allows igc to report what types of timestamping are
> supported. ptp4l uses this to detect if the hardware supports
> timestamping.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 34 ++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
