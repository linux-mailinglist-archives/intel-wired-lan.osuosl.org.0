Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B534A445C27
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 23:36:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A10160BA8;
	Thu,  4 Nov 2021 22:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5cmShGYadKt; Thu,  4 Nov 2021 22:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4137960BA7;
	Thu,  4 Nov 2021 22:36:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B76A01BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A41C540192
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R85VP_51gAgm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 22:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CB93400F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:36:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="218706794"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="218706794"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 15:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="639551688"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 04 Nov 2021 15:36:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 15:36:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 4 Nov 2021 15:36:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 4 Nov 2021 15:36:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JqchSyZhRtAuUXrSAmeqPQ+nNnwbz1oP32kRgGE/5y7SlKG4nMor4hMOiD5dv9Rg72ja7FGEjfls79t1qah/EvsoBrtnPkqVaPMCZ89JnsvWaNS7j+kuxyAq5Y0Jn6ZFnwnjfaNVmH0h7J710WDMrnSEMjUSUxqyD4UK4uFCDyKjq6VaNvSBbX7dGsLwmvNhQymB6bYqCCQB5p3cg9J7Ii0DAuVPz/tO3L0/juJNJmRH3BvZ82uaRHcQackwIZTOotNZNSI83rQgKhugKr6vgOG72u1YvhvqHuPqZSh1KdmNIMDmF+iCBEElyMoEGFhv3LJqqoVdFNUNFDS/kf7W9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kd8ynWhG4zwtibcJuP186Cv61VXZQ9i2yR5O0FeIOi8=;
 b=iwFvZG8Y1vnZNZvatBstmm57krtUrEiLGr0xDZWI0wlT6oZke88J0dtvSBY2y0JJcYXiWeJr6dCP4BNK2Pj1zn0ZqJHq0Sa+tXLPI1razQMP35qHuyJEfRfB5aHUQIDouvNgLoI5iwLsAd8TP3E3sM3EFTXyaqYbRt3Tp8XAeEkV5n4BL9Ah6UaeOAbhBvTAGe7pziGSSzVfeABPdwJb/Tcut8FZYFjBWJLroBb9jnzr7t1kzCHSNhzPxDTioQYId9ZbNCEeCMtr123a9Ib64TdlvxemD9K8UPMJsUzUQcS4AOD4AgBtJMuPUlxqu1f8Yisinw6HeI+zNQH8Vr8BUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kd8ynWhG4zwtibcJuP186Cv61VXZQ9i2yR5O0FeIOi8=;
 b=rioukimq53jDQ0u5JdWYH53uNEHt5B0AyQLjZj8ZdB10qvTYwqgs/6cAcplakybioA778phIxqVpy0Yj8lvMTTL1lCo5Sqb7BTOd6V0ElMrO7Hy5Jw3viN1R+l4gNPLl+CUw/KEUqpDzO0uojhMFaxXxtDMeJe9EoaWFbCRdd9I=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4648.namprd11.prod.outlook.com (2603:10b6:208:26f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Thu, 4 Nov
 2021 22:36:28 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.020; Thu, 4 Nov 2021
 22:36:28 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 5/5] ixgbevf: Add support for new
 mailbox communication between PF and VF
Thread-Index: AQHXbYiOSQa6HGIQQUiW67YRxNq4fKv0vZ5w
Date: Thu, 4 Nov 2021 22:36:28 +0000
Message-ID: <MN2PR11MB42246C9063377D61829FF544828D9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
 <20210630081532.3069914-6-radoslawx.tyl@intel.com>
In-Reply-To: <20210630081532.3069914-6-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf7e2362-8c3e-49e7-493b-08d99fe38ad9
x-ms-traffictypediagnostic: MN2PR11MB4648:
x-microsoft-antispam-prvs: <MN2PR11MB4648E801902BA37CDCAA0075828D9@MN2PR11MB4648.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:635;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WjyW2gP9L+cGlt6txUtck5xUGHVMPnqsyNTM2dwoEIhmGM6aDHuDBVUzsUTzKnWqJSSdu6w96wS8zVpX2hlZXRFRh77DITh745wAZwUkxODkuE2y7JmJaa/JvJTVQkcZ+Pcxxe4GT2GwnFLxh2qyokxvs3b6ro8UbG+eLQ0OZ4F6ObPoy0CLQEEnJviVxsT6vYocyoqwxLZaQAZjjndVRviIkzP7z9OOlZNQQ9eRFNrcWbGHWjNgiokC52rH8912ZUGdG9TBFjaHrFR3lKfvOr40L0DYO0KVKsyxc4WQsVE3RISDhjjeqZH5FplF2SkY/jYVw9LhjlroJftbJPSUBmEZhnJBEv2jZczbE1T8j6aS1bI8OX/9sToP/6q9Ikm7YiQuwc+2S/YSy7z531qoYbddkYzaNu/HSUMXk6FVVvFS72p65/5CkMo3n7+T68NyyazyMGY8bEV9A1FxgU0MitYFm5Jtorej4aZeCtO5cGOo7AoL+wkTNLOnxpJHsAln4RToOsk6ym8povx+l3BNiSAiYFUfYwDAsME6c21g0tRFdsbAwn6bzqoxQnk/VB8QCczG/lmfQH9HfG0T3f9SEraeH/dPnIeQQvR865jbyapRrBL8Hheg7j2ge2fOzULmffbpWG/39yuEstUjBoq3YpgkJcwcFlDrllg7OsLsarAQVEdhI+6BVk21zUOySn9XZV+wHFMrDRc0XhygxbqWLg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(33656002)(38100700002)(7696005)(66946007)(110136005)(122000001)(86362001)(15650500001)(316002)(71200400001)(4326008)(9686003)(76116006)(26005)(186003)(4744005)(55016002)(107886003)(66446008)(66476007)(508600001)(5660300002)(2906002)(66556008)(64756008)(53546011)(8676002)(6506007)(52536014)(8936002)(83380400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vHLrQ4XMtpmGYDqQqIY69tjLnyQMk72JAXPq6/C4JtclB8BQ9wQ5R2F4EjZU?=
 =?us-ascii?Q?wT6I4xVrim2tvBpjtmTGxOqghN9w2t6dezf2/Q58IN+uihCA5h05YXpFgRs3?=
 =?us-ascii?Q?h2ZkzM+f01xMkQtR6mHOIzjZsCQWELuC4g0MaaWKgOpmOo+tC2dUzfNo2Ihn?=
 =?us-ascii?Q?nRu0h1cWyw4pPAVNY19xMsCnt+rsxtk4QaOymGV8HCuMGROR172t24btEUA+?=
 =?us-ascii?Q?W/tfy/7N8ks3YH4kLmGMHjk+LHNEx1spjVE2UterjOIXqJnfI5Q5NHT8PIFF?=
 =?us-ascii?Q?suOSXTvBiPOM03o+hpRO5zH+i04ucOeT0efLKCRY/r8kcUoogepPSI8h7sNb?=
 =?us-ascii?Q?d7QWSpXh5WN7rZkVU5UDDAiPX/7yfMOMzoc+azja01AR87KAGDRbtRAJnO5j?=
 =?us-ascii?Q?G1CVUSeEtm0S9uzwq02sk1PmXyVIIBTpQIqmMOeqexVxxz+5jK9A1Rx4Fubg?=
 =?us-ascii?Q?lEPI7fv2ouz+H1c6GlCNu+sOZ2oLgyibo4XlfUYyfcQow/eO1MbDJiIaT90d?=
 =?us-ascii?Q?lp5GYCJVVZ0uXl9JIHDntbqnxFwRJoRrsBWjUUQPNavgeINGp/g40nOsPnck?=
 =?us-ascii?Q?WYanH+vjm+iNcY9uYei6NQWHywJAX7aAsdQsVL676JZMgG2gTfIxWxxWD1mR?=
 =?us-ascii?Q?BryiKb87+UOR6Q0lnMKjgJ5Lhv8H2Bcyud4flMlazDJxQsyXCzEUPF2CScdi?=
 =?us-ascii?Q?eGOY/YX+zSsMOhBkEGCwHx9loDJpS6R62ObtJWemGkfshPln3mIh6KV0/GWH?=
 =?us-ascii?Q?QuOsJNqSENEZQPm0XzkoOp3K01tgWHMuTHi0TJuoQTQ8YeJwO8mTNRBulX/b?=
 =?us-ascii?Q?tcWZeBSCk8VFXO8yk++WTj1WAReVkKUzaatKeDG+E5foRjGcSn74ZdxXu1rP?=
 =?us-ascii?Q?BsSEvLGtKLSUYhkVh+HEkYZ1d6zyGe+eU9xi4IMMoeEZRiMhzuAx+TUdMfJU?=
 =?us-ascii?Q?lxanprGoo8spF3ZxKtUkgxor7mE1wBRbLmV4DHVB20XKurJmagGn381JR9SQ?=
 =?us-ascii?Q?SFxEj6ewlXeJlw8c7DxjFWsh6uYif9omvn1T/UYiWfheDbnDWPjsXf0/+Wt5?=
 =?us-ascii?Q?8sKaObAAcRIC4wKSPzMfyRq9BfCMhuUYcyT11APHGEsZCnynCyILBc6zlUJh?=
 =?us-ascii?Q?mOAhwM1Rq4acXMbTct5g227T6pNMDVc+ps5HvWMSV4fwHGqfD8K5qLAPrTL9?=
 =?us-ascii?Q?1S9kIz/8XNcGiiIxE1Vqj2850QE+eCFNvf2y55e+ipkfvAykhL2MynMfZGWC?=
 =?us-ascii?Q?zFmbsxOHSNjHbTo0PfHycXvajCY/iD+/syaT0BtMbi09Rv/P76Gm7ASGJXqE?=
 =?us-ascii?Q?B8hOZRJnhjv8Q+axO8GopPQXIBuQ7N1XnCqFHF+du+GjoU9ilUE/D4r0wE6g?=
 =?us-ascii?Q?419HHblgi7a72KHSyjCHnlVXNa++UlKjeuKMlhk4ob7Am0hHaojtPR7NUN4/?=
 =?us-ascii?Q?aRcOdonbyIhae9Nom0J+jTnf6teekzVibnO2I5pwe7iODunZekWQzauvkBMf?=
 =?us-ascii?Q?a8NShEt0oyWw5XvTBQ+SSzXiYOVmKtHrVD1EL7X1IOkTynSQTpA8aTI4vp22?=
 =?us-ascii?Q?7wyOI6D7OimIhzWbpUU1/qmw+nOa5cvg90ABqquz6an2tPc8v5bsmMST01cJ?=
 =?us-ascii?Q?ouGWY+RGlLJncxzBGNyyW0vaHPXfeBQanDJ272MeJGbdd/+JPMb+BAa9pw+O?=
 =?us-ascii?Q?kBkQaw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf7e2362-8c3e-49e7-493b-08d99fe38ad9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 22:36:28.4674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8kf8tD8drgEU1JnQJHKP4a4F9Iaebt9NGsd4N0bTHLRNZeQU3RjIMgvDXHkPeYDIiAjycuYStXkP/DPxpLnC0DLUd/++ac45QwIPkcbkmUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4648
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 5/5] ixgbevf: Add support for new
 mailbox communication between PF and VF
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
Cc: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tyl, RadoslawX
> Sent: Wednesday, June 30, 2021 1:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>; Skajewski, PiotrX
> <piotrx.skajewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 5/5] ixgbevf: Add support for new
> mailbox communication between PF and VF
> 
> Provide improved mailbox communication, between PF and VF, which is
> defined as API version 1.5.
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ipsec.c        |  1 +
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  9 +++++++++
>  drivers/net/ethernet/intel/ixgbevf/mbx.h          |  1 +
>  drivers/net/ethernet/intel/ixgbevf/vf.c           | 14 ++++++++++++--
>  4 files changed, 23 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
