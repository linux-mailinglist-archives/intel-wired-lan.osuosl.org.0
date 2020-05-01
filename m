Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9241C208E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:26:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B14FF262FC;
	Fri,  1 May 2020 22:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EP0kMSrI2hqU; Fri,  1 May 2020 22:26:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E37E262E0;
	Fri,  1 May 2020 22:26:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0F2B1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:26:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC7858928E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:26:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WZp76o9r1bwD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:26:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 55E01884E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:26:28 +0000 (UTC)
IronPort-SDR: 3xamoUYQnKRw6+YmReR2ZYZSY553j69JUwckgG+vFWigIJD1sJEq/KD0U5SXD5UaPKSUlltBAw
 FAunBJahB9Cw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:26:27 -0700
IronPort-SDR: tzErdm31IC5A8HOQYgXOMPe0XyYQGrrUfc6WczSbnKfJD6viR9DiJcTVk7lkbOMOk0ILdbT8xn
 Zi+evud0fpPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="337732107"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga001.jf.intel.com with ESMTP; 01 May 2020 15:26:27 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:26:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 1 May 2020 15:26:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDBvhm0rdiPS0DrWsrtGn9xIkApquacE5gkMMd5lVNizYg6+vYqyT9PTA3Drs6ODRV0qFp7q7FQz/HZPp8R9sfkNahLoM13lttKhDOdUJ+1jagGWJOz2CCuFIotMj5p8IrrYv5EcwOr11UUQJ6WUfgg+xDpW5fYPfsB/7jCV1yxKvLdpZ1d7RmtShOMrYoOb+MF5OcliM/jq8EknbNoxd8maB1rNXWvQL4mYLctAgiAHN02na6gzDACRm98xF58jK7+WrWG5VfhApPq3bZt2OxBv/c2jFr7Pp+0i99WENAHXXI7BV2x0Nq8nEogoysdkDELj+M7mXDhl0aVG7EX48Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jYk9My+5j57Ewo16xeQXLZkpo+tQPH+ASASVLJlVvf0=;
 b=WpwRmIb6zk6/mRizPNr454yB5pZXD833cABbEqmLyNqBsQqDtRYyLMhuUvGCWDLF4fk3iLIV5tDQx+h2WV0x1x9xjn8YFnx4ywiNzrESCu0xvzzpNDHU59BZBSS+PFYsMvwNL/SJ64fpxiDyJjVBKSHVO3jFx3JKpuVoYtmlxfbmr1ucPMb+2uMGbT1gDYTvBls0watrAUAV3XNAstlltRhNH3z43gzVBg1mm0iC0sdTvk+zJ1o8CM/9dIbcZvAyG4wIlyTRcyEJthoYu1SZJRHPdjlWX3JNKASKqybFKCE5jQ/tz9R5HL6XknSwPKZ5PA3l1/zo1NJGqbyRdvDJzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jYk9My+5j57Ewo16xeQXLZkpo+tQPH+ASASVLJlVvf0=;
 b=CAb0Jo7J0Z4Ky928eLObxVqfBIeH67DjLkQpsXrWllOYsGg/xxCR8bgu0/wRKyoZVxV4AkiyW7dSK9k5H6L02XuURHHlZfnWEpvtB/W2oLzKlfGElUPMpEimr+QqReaTaNUry3RgohkGyx0w0iasZU9ZpJ7JrCgwcqxrGjO7ynQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3227.namprd11.prod.outlook.com (2603:10b6:5:5d::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19; Fri, 1 May 2020 22:26:25 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:26:25 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 09/19] igc: Fix 'sw_idx' type in struct
 igc_nfc_rule
Thread-Index: AQHWGnV6ukJwOJiRX06Knb4sOS4msaiT2bLw
Date: Fri, 1 May 2020 22:26:25 +0000
Message-ID: <DM6PR11MB28909E582AEF871EC5210DA0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-10-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-10-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7143a2d0-1eeb-4783-b212-08d7ee1eaf4c
x-ms-traffictypediagnostic: DM6PR11MB3227:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB32275FEE14E9E17F3469F7C0BCAB0@DM6PR11MB3227.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SfuYdASRloGpeRyDjjj4NdAgPlrWTYGzwJcKHaqpOzWf41fPVvmiemeSPV5cRc/vxDErVD5+2pVCMzrNy9OLnBLetOJi7QNPf5uEE5ysnTgLVOvttPob0lkvLI7CEwPcd18Wi2OcSgAiIJs7B2eS0OX3KYJzNudDyZQWJIOY2RTStlhEDrwc2mQHNaV6oP7eEtGtrd30WD44SOBxP1/GxsSfujSdE0aD3bGm0Upfke43R42cDpAYi7HfNwAzx+ToetI5/PmXRFUw8Af+tBKOIDneCvRhCeVt2+J8Ui79yKY0O6TgM4HEPAwU5OCAxtcJNa/iRccWsdr2wQ/yOHvvkx7wteSzHYJJqhpT9lXzXePf8ZQOO3ishiy46GHxmMZ4dl74eQSyqn6M8+oimqd5aHitqIMk964Jqm3mW8pS4aAreB2ZN6tT6GqrhGiMwEfY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(39860400002)(376002)(346002)(396003)(5660300002)(66446008)(9686003)(53546011)(7696005)(76116006)(110136005)(64756008)(66556008)(55016002)(4744005)(66476007)(316002)(8936002)(8676002)(6506007)(71200400001)(66946007)(52536014)(86362001)(33656002)(186003)(26005)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: tGprOFrCN+GeMQ81TKn6Zv1VvA5qDpS3tUeuhK4Vho01p8ws4ITgjOJvo0Z33BYdGH0fwkXYsE1jNFYBelHXpq8p0m1+fQrRxIxJZzB9zeX6LOHoytJ3II+42afhzhg2VA25ad/DVKFz9GTWqrg4quTs2aE79yeuaKhK0MGPdmRV2iNbCz0f6/7h8WLiBSUiLM3LJQll9x0cZYN+T4erFISkBvvb0BdotP4MlTRxFLkuP4E2ECLy1QSoJo0czlI24VvYzQaIKhTlLxj1pdjXdak0hu6iZqJIRK+mA/NgE2DRNvq3NLOnIWfNlBYYttqrAq3KYsrsO30LT2QjE5EwpTVnS76weDI5K4uvJtUFmCuJ648ZfUhZoDf5fsD8Hkwzb/MmAt7gWRr92oT7SyORa382QQZablUjqxVqPcnTVQsrzaxqL51pDLOnZAuyNEuBvad8Hoh2KbUWFcFU3jIPK6WuqHk91+fDVx54zTTe23jUNA18qrrF1jSyrKrHQfYYyd9/El3YBV8qldBZQgx0Dd/grkogU1hnm13dQcFXUFkvy4PT+/iUwylkpZV/JHEU+YlDBKslgd6KRTjJHoxClkjKtg2/c/NKsOP6vl7tUBU4vG5nr5hEddTYe4JqUeusc7iOxbdmEqEDfAdb36fRgQltcg9T7n22sJxy0+HTLi90T980vqtPFoGkt/p4aow1nJomq9Hl2lWWdwNt1oTOOLmEXP0647qDobb61Az3dve/phMlSONjpWTFIbWeySZaiOzo9owBBbEWqADpqff+gMNSNu7QEFmqIUTP1m6NI5yr8l4WgrhFKIFiTf8PhmPk
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7143a2d0-1eeb-4783-b212-08d7ee1eaf4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:26:25.2803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ftGiJX0tRZ+lgENmMFRF6lMizdxBE4nRVCY86NqgYJaXybXx0u3lo1U11uRtasDBEmYnxzqsLqUjzoYhjiuUBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3227
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 09/19] igc: Fix 'sw_idx' type in
 struct igc_nfc_rule
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
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 09/19] igc: Fix 'sw_idx' type in struct
> igc_nfc_rule
> 
> The 'sw_idx' field from 'struct igc_nfc_rule' is u16 type but it is
> assigned an u32 value in igc_ethtool_init_nfc_rule(). This patch changes
> 'sw_idx' type to u32 so they match. Also, it makes more sense to call
> this field 'location' since it holds the NFC rule location.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  2 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 16 ++++++++--------
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
