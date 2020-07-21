Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E363A228CAF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jul 2020 01:25:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FCAE884CF;
	Tue, 21 Jul 2020 23:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s0nz88R6btyh; Tue, 21 Jul 2020 23:25:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96CF0884BB;
	Tue, 21 Jul 2020 23:25:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E254C1BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D62962043E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fgmdozo-HFoR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jul 2020 23:25:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 32F2D20404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:25:12 +0000 (UTC)
IronPort-SDR: SednQwxiXACcRlZGH1hdZgoqWGZdIwdXQCSejonT3zm0miMvVrWDq2WmLdv82nJXd7+33Qn+fF
 m1hWsSBpWB6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="168390778"
X-IronPort-AV: E=Sophos;i="5.75,380,1589266800"; d="scan'208";a="168390778"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 16:25:11 -0700
IronPort-SDR: p9szIxMxvot3Pj/yN561mkXh0m00/Zr2YiaGWODCb49/nnIxioC/PaNGJA4U3ItU7nSxZVKnj5
 2l0GuWravAUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,380,1589266800"; d="scan'208";a="284032124"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 21 Jul 2020 16:25:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jul 2020 16:25:10 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 21 Jul 2020 16:25:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 21 Jul 2020 16:25:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJ7gk5Fg6JUqX7WyezZa4z3Agv/dQHwCmW97/25JcaxaEIVPY/pX2L+7zyE7lfHkVPdBFuBY94h+l25VbIFV7IFjlwEPBBqEoa0rZ62UW0QVfSKiGC9A9s4iVM0Wq8EPLAIc9O2D2TFkkXjttq6sjIEMY8nsq04fwIgiNe0dswYOy82MT8Szn4mTF3bo1+N8/XjMvE0AjenhVpeSQwkzItleCgoKGWCW7Zxbj8BqxHbgZBfCLeS0VXZx398A9S2njJhwqaMqOWD/ACEvC8VWU9CcZDKvxAlgQ1xHmvVCjMUGCHuhpt9DXL9TAWQZkKunRY8gWJ3y6c199q/30R10Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s3b66RaRRNCZnW5z2WFSHsw3PL9hddztevNbHPgrY/U=;
 b=MiN91RpStHm8zFam//mF/01nRnsyWTY8EsDm/+aytrdmlnh6s2cZlWjAT5dTTTNXzGq9N0hPgvYz12GAakTfoHLFcG0d2Jg7BLI5CHLPd1SV4WlKXfeibS2XZ/t+XW5XV4gPI8EiRgnAPZohkxJQ7Tu8yIfydOlIs9mFtYOgF2A1IPJp5UPpMaOd7DKQFfqza95OL0/ud+O7H6U98jJNUbuxA1ieNfcSBpSCOoVF/LxaNDPIOvybRStubRa8XDiDZjBk6jrFjIxX0iNnLBvdRDypgP+ym+4GHozVQDs+aUCnJKOqRbYsraJa+DXSyGwnRCHABcdphgPh7jzOLmuf7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s3b66RaRRNCZnW5z2WFSHsw3PL9hddztevNbHPgrY/U=;
 b=fKcIrGc+U13LcatDmgI8uMvHLsaX4wJilNBmRgXpqGhWcOZZUe8i8goEE0CdjmgYY2g20Hz3aPp8tcspqqft8BcQUgaJ6sHUw1J3/5uvizIhJSN1BZnrCx7ahtzn5N7IJxLT15qRxzNz/COhYDl52PFoEORz8YafVlh90kaavKQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3724.namprd11.prod.outlook.com (2603:10b6:5:13c::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.18; Tue, 21 Jul 2020 23:25:06 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 23:25:06 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/1] igc: Clean up the _hw_stats
 structure
Thread-Index: AQHWVPbAngfJY8AubE+GqP7oQcYIw6kSwkQg
Date: Tue, 21 Jul 2020 23:25:06 +0000
Message-ID: <DM6PR11MB289061B20B15E950F8E2AD58BC780@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200708070858.6424-1-sasha.neftin@intel.com>
In-Reply-To: <20200708070858.6424-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.173.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59ed79a1-4f08-47f5-253b-08d82dcd4dab
x-ms-traffictypediagnostic: DM6PR11MB3724:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB37245D9E7C95996A7CA40231BC780@DM6PR11MB3724.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J/RFdxeGJI1uDdOdtquDTNarHFRhI3Y/gxAHaPdN4EBVy1UGDK5geB8vp5Sd6QRkqVqYZDtJ9F6P5ODTray73kUY5rPRx5qt1UHvRRyDHIIjsVHMElSQkdhCs6r7L3AH9MIXGnynQzuoeDviVSgHWnnLyeJ50FaKpX/gLjfV76rUXZB+AWzxwoaxmbITCaI6jHMpZV46iXb6qltYNuWHuPLZUr+pPaiWCAOeA4ugqrNNvQ8eiuvp0yQQP93E1Shh1E+xb2p7ohViW90O2Pdfu7o1u2Rd6GHLgllDfY7oVX9D9psl0ICIgpErIy1jhLvbpqZ/cUw7QdEt3QrU98yj2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(39860400002)(396003)(376002)(346002)(53546011)(6506007)(71200400001)(8676002)(110136005)(26005)(186003)(7696005)(66946007)(64756008)(66476007)(76116006)(66446008)(66556008)(478600001)(83380400001)(5660300002)(9686003)(2906002)(316002)(8936002)(55016002)(52536014)(4744005)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Y3gzpa5J1AN103g/WuK8QvNX8XI60Wn64vM62foGOZwzEMZFPb0IZ/d+wucs3A30wULcYQ8vVDzFI0FRbGjv2vVc1UI9MfyiUmqcQdO+120ArjFn2FyyI8ncSJZ2pCgm875B9MkkeRze+b4yjQ6GYLFFyDkB+GnkN6N6/USaDyCpmaZUcz2fuyiQmd/o2MEf13ywIimRVhwgynSbZyowJRMTJR1ajFHgVdOvuTmsxtZZ/fTAaFJex5yOJciw8bU6FfK4EcxxWC7ZPBA3J2WMOyE7gKpkDvmeOFozFD7mH9xNRFs2JNP3nKlxyzwjqzrz2qM+2wQgzkgjSElPru5ikx7oSBQyL8t3TUztC4+MAZ0pEDwIZbYGLRzKCQ88Md0ZE+vdIYGhbRvVkhwqMxJIbxHusd1yZmSpBIH7KrfSD7CDy2FgFQ0f7qnVuMBzYZWmFPT/GhN30u3wpntcDFB0wp8Bo7tCDG1wMctArNGVU0p7bkpT3cDjgAS4BqdflxJ3
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59ed79a1-4f08-47f5-253b-08d82dcd4dab
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2020 23:25:06.6433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IRZDhOhvvDfVHOCogG/UvcLt6MGTb89tyIks+DJpRtcOAT+VqVtKczgB/ZHfzBM6m7eOr4sPYbHglcy+Y2MW5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3724
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Clean up the _hw_stats
 structure
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
> Sasha Neftin
> Sent: Wednesday, July 8, 2020 12:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Clean up the _hw_stats structure
> 
> Remove icrxptc, icrxatc, ictxptc, ictxatc, ictxqec, ictxqmtc,
> icrxdmtc, icrxoc, cbrdpc, cbrmpc and htcbdpc fields from
> the _hw_stats structure. Accordance to the i225 device
> specification these fields not in use.
> This patch come to clean up the driver code.
> 
> v1 -> v2:
> minor complete
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_hw.h   | 12 ------------
>  drivers/net/ethernet/intel/igc/igc_mac.c  |  3 ---
>  drivers/net/ethernet/intel/igc/igc_main.c |  2 --
>  drivers/net/ethernet/intel/igc/igc_regs.h |  2 --
>  4 files changed, 19 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
