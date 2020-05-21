Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 658B71DC80C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2020 09:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23A7287293;
	Thu, 21 May 2020 07:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1IexhkHop0B0; Thu, 21 May 2020 07:56:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A80CD87285;
	Thu, 21 May 2020 07:56:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E60B61BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:56:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D2AEB20461
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2fvTJleASjsQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2020 07:56:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id A433220347
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 07:56:17 +0000 (UTC)
IronPort-SDR: Nd24Zz2K467OATi/gZmei/nB53DOx733YiYpDoZVMDMq2C5DPRpyQ9VoOErkILi6gJJRGk06CZ
 05OHFq5Qcw8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 00:56:17 -0700
IronPort-SDR: Ifqt7oWD28CU73Jplv1Hghgc8Gm+dCNQR8HOy0So5tRO7Ep/EUlkghn5pUieCRH+VqxwEXXz0N
 IkWda0b1W/wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="253907294"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga007.fm.intel.com with ESMTP; 21 May 2020 00:56:16 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 00:56:14 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX113.amr.corp.intel.com (10.22.240.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 00:56:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 00:56:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gcysVZa7j0ZFnhXIybgdZ7ipZNsUvCQ0/6tIedIeWFbps6xLDbVriJTeT+9yfSgayaaPDttIt0LIA0DsSa1ECIU4FQxwQUlxDfXbFmBeRAp5UXECTDkpLYdG7nFjOwpaKNYqfa1WEeKQEbX+I6MbhsJFRblUR1nqK7ogW80mDSzYP0O4h3iAZ5FEz/jZHzO8xsRPM8x5gYTDSqq4wYKq9B3nBCQO69oZxdS/N/HJEMLdpVAOE1z80iCVcdP+TsxDYnS/btbV/Jf9b0qEHfOKd6MMHAq04VqhV84HGuH7qPJo34KDSMyNsvZUAU1qTvglPX7XOJMhDz47vOG2603ttw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgEHjhjzCoHl98WlaRY6AZYUuzEoQgZjbG1WqEFACc4=;
 b=GRi60DZSakUcZ6lmplbrTrSIxsjAF350qTCyqdKKFORBKiJh9Sf+eQ/O9UBn8y8VVc2oAvEoFXmrxxKf+k0EaZbUm8NWPcG5mkjB0uiLynd5QtAF31oxjR0h47pPTF2G9/B4v18uhVpQotRTihJ6GXDwdsiVJIy3lfWPAVumZqWWJTbleOCPvTxNloQPaErj3Fmh9uzgU5g7nQETxF/yhoSjtVTwNuoGBBmx434LI7clTx+tGjEsjHb7Heex6QqCt/apd5ux1x+6mAlzZb9VfR6p3NadyoTcZTvt5nHot5pYXAYjIcp4QVLW5UfipFzb9ttmk9pXKd1+CjVsdHdMxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgEHjhjzCoHl98WlaRY6AZYUuzEoQgZjbG1WqEFACc4=;
 b=R+XUpn9qrtfBYngywTB44TiMtvrNCjWf/ydCSjZCJ7ilTuQRDQaZqHMTzcvy9rB81Rb5wUcDHZl6h4mqzh9pQ1b5VGZR5SM5IrAe6wpWbDjWCSaelJYDOQsAoUAg6ahpiMI3IDqLVmrVs7dt8HT9vABT+qTOukPJ19awzwSaOTE=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3545.namprd11.prod.outlook.com (2603:10b6:5:141::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.26; Thu, 21 May 2020 07:56:12 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.3000.022; Thu, 21 May 2020
 07:56:12 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Punit Agrawal <punit1.agrawal@toshiba.co.jp>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [PATCH] e1000e: Relax condition to trigger reset for ME
 workaround
Thread-Index: AQHWKnHhYXgap9bbtEq5AHkc4XiRdaiyNRoQ
Date: Thu, 21 May 2020 07:56:12 +0000
Message-ID: <DM6PR11MB2890F48ACD9A4ECF9181A819BCB70@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200515043127.3882162-1-punit1.agrawal@toshiba.co.jp>
In-Reply-To: <20200515043127.3882162-1-punit1.agrawal@toshiba.co.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: toshiba.co.jp; dkim=none (message not signed)
 header.d=none;toshiba.co.jp; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 636f7f95-98e2-4c3c-cd4d-08d7fd5c6e68
x-ms-traffictypediagnostic: DM6PR11MB3545:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB354542AED4A693CBDF1519BBBCB70@DM6PR11MB3545.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MULiVrybOMiOQlbSvwYYsd0aCpuYZ3oJbBR4G9u7sht0aJIaM2ssNPtgfwok1f18L6a6MR9FP4Tz0fTNJhgMPHVQKsdTgwWgv+oM+Kv9PVycrCzY7Nu69brmZSMmEwMilRW4TXlkun8LaGodFr8eRtUL3K1p6Q0gQNT0NCPErB6K9ZKgOb+hWAA2NnNMBiL7INC/DRK/dQA5ZBFAfaboOfZoOuT11bYzzM6vSMtgYd10kdAyCcOkWVdoxDFKCYlShjS4bHTIm0CcONe6kYhANQNPJZwmyg55qzN/tBl+CAafdMNdDAIeRsHH79FZ/W72MMTk7GwRhIIeYIIx+TIfjfZBb5+b0d5Bo/jdGMbRxFE/LibfzIeLhfqc78UazsnxFY7gFbyT9btcFgDxtZxAAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(39860400002)(376002)(346002)(136003)(66476007)(6506007)(53546011)(66556008)(52536014)(66946007)(2906002)(7696005)(66446008)(64756008)(6636002)(8676002)(9686003)(55016002)(26005)(76116006)(186003)(966005)(33656002)(86362001)(71200400001)(4326008)(316002)(54906003)(5660300002)(110136005)(8936002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: EJldffoT+Z+ETWFkKglWlOhy4LtWzOHt1d3jSzJySXtVq1OZGDzWPJDbKd+fUsFUoCwWdqlnKwIs5hPkg1smR+VncMQ08zbo7kZMxj5llAl1fQsW+ytteam9UAnMWp/NHWzFscxth0gQi1VDYjA8UbnB4ctLK95LX8VPhtL5TXQVJdlFu+PFHPaz3W8TDkNYm1iK39VQjykronVDUgJpSrCaj3utlHvVaUd91yropUY7+e6hnP9AM7Xui0cWwKPofOB+wKoJPGrN1cF15U7BJf0MXG4leRZ1RNku2pZLQFKzv5z/vbVukNrhqHm76K5QLozklH91EX3RuE5voKhn0vFbEZU25wyxm3368Lm+xaWYZAVEBYKBkdb+3M8wuEyLbWPB93dwu1tyhWa/IDcEaQ3c3XKiYEATJ52R2gUbZJrReUHFG9/LO9tGCBEnKsthU4UPKwhcEaB2qmMg6cOKVfRA9wptFUKv3XdSUcnQsIVgkZUxjkzTkTAJkp00NLCf
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 636f7f95-98e2-4c3c-cd4d-08d7fd5c6e68
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 07:56:12.6495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pqst+UwYZgfP+xkpCk6eTL4/kWBjMAoNvBsNeqLM9yeYYv04VKMY7fF8wf7nZ0mJ1/Kmwh0b8KGsNhAdfpytXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3545
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Relax condition to trigger
 reset for ME workaround
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
Cc: "daniel.sangorrin@toshiba.co.jp" <daniel.sangorrin@toshiba.co.jp>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Punit Agrawal
> Sent: Thursday, May 14, 2020 9:31 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: daniel.sangorrin@toshiba.co.jp; Punit Agrawal
> <punit1.agrawal@toshiba.co.jp>; Alexander Duyck
> <alexander.h.duyck@linux.intel.com>; David S. Miller <davem@davemloft.net>;
> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [PATCH] e1000e: Relax condition to trigger reset for ME workaround
> 
> It's an error if the value of the RX/TX tail descriptor does not match
> what was written. The error condition is true regardless the duration
> of the interference from ME. But the driver only performs the reset if
> E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations of 50us delay have
> transpired. The extra condition can lead to inconsistency between the
> state of hardware as expected by the driver.
> 
> Fix this by dropping the check for number of delay iterations.
> 
> While at it, also make __ew32_prepare() static as it's not used
> anywhere else.
> 
> Signed-off-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
> Hi Jeff,
> 
> If there are no further comments please consider merging the patch.
> 
> Also, should it be marked for backport to stable?
> 
> Thanks,
> Punit
> 
> RFC[0] -> v1:
> * Dropped return value for __ew32_prepare() as it's not used
> * Made __ew32_prepare() static
> * Added tags
> 
> [0] https://lkml.org/lkml/2020/5/12/20
> 
>  drivers/net/ethernet/intel/e1000e/e1000.h  |  1 -
>  drivers/net/ethernet/intel/e1000e/netdev.c | 12 +++++-------
>  2 files changed, 5 insertions(+), 8 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
