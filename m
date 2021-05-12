Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B9D37C606
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 May 2021 17:48:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0BEB60D8A;
	Wed, 12 May 2021 15:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iXqAI14QlZDH; Wed, 12 May 2021 15:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B59DC60AC5;
	Wed, 12 May 2021 15:48:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6161B1BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CC7F83D02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swOxmc5s7Ysq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 15:48:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5AEFA83C0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:48:40 +0000 (UTC)
IronPort-SDR: twYoFE5UvPOwSKj05KwDILzCj9A6M6ZiJ6cg5j/7JfAydRJPjVq4yuu7BEfQhM9maIgV5UWIvG
 ONmrSgnr1RLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="197764011"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="197764011"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 08:48:40 -0700
IronPort-SDR: sDUhn2kihTEIXUI9ujtVIEExesMsJMYZdPE5A7BYjpOaV4BkfbKop+jUq9NK5IGnojNN1z/AyO
 ROTiRiFkoEmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="400277439"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 12 May 2021 08:48:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 08:48:39 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 08:48:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 08:48:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 08:48:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kFQL4FqUKRiGuo0UxHuXNYCCqPupZrhM4bvDGf/Z54Eup9/RVEtwm06OkpO8vW8w5B4B4/DtL3VGu1k8lfjFmJeweNzfbwJzAAJuZqb12KWOGSzRc9GInviznweTZt190l3FaOQniIFvWJEqX6xpZQ4hKzL7hfq9KZmaWUIzKumHaNfIJm7F69ttAj9mdIyZcR1Nw8kwNK8bhQ7GuQAKvuuU5jS/lLKxQUuTDH8lOhMdWLxxWD+bG3VJKGQkMWTyIUf2YElmcaj+3VsBniFDHJA22KIPMZLfRYHeLoABDjAy692gdNzGtBnoJO8eAjnTQcrL2SzPuBz5dilFNvSTig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n6Yoys8ja8fhXkIfkfhJ0ktEVXTm9RfvRwFz+B7+kh8=;
 b=SQhVtPeEcgI1PpqVa96aopBWc6Fm3E7JBl+HkbIDLjdKshU/pqtpKvqL0PNNpX4tV3WoBkWhlJMJ1ckOceyO5w44Oy9sJno23nDzVdThZP2SCp0agwSHoQ7vpP+f0oYU3ooJqjk/jZTWwO4wrqf5Oagvds/U+0IWgDNkW+jrxkXh1NogordrD9+et0DKRKgnY+IS1K9Ef9mO3MamMKTnvczy3Cxul8SgG+GFhmPmiFnKCZehvxnE+MKxlmYyEH5iR8tQIVFcJypZYtnRxkaixIxGXl1FllMeqiWhx/zD7RUeer2/PB5LBf0QvjSsAJuy0tbKHkFGL+EaYBj8RCmUoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n6Yoys8ja8fhXkIfkfhJ0ktEVXTm9RfvRwFz+B7+kh8=;
 b=mxydU7kpsLypiMJvBIEWTugkgFGtUZ4tHs+rPMkmDK7o4SQ3mW2MZca6RlsBSBi2yulkeUZsvPvC22LuMQnRsFr2JRegvIZE/a6FfafuHQxFIXtOQFqdefuXuf9CGQa2B1/SSN00XfLC9ICj/3CPzIUodtfd1Mjuj0GF5I6AG74=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4617.namprd11.prod.outlook.com (2603:10b6:303:59::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 15:48:37 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 15:48:37 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 02/13] ice: add extack when unable
 to read device caps
Thread-Index: AQHXQo+xw83YHm4mtEGXq4giBwLKk6rgB0tg
Date: Wed, 12 May 2021 15:48:37 +0000
Message-ID: <CO1PR11MB510586114AEA5F488EDA9A1AFA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 098490b6-298c-433d-c224-08d9155d6850
x-ms-traffictypediagnostic: MW3PR11MB4617:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4617F297E3D3EFFE12F621C6FA529@MW3PR11MB4617.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7RbqWqBznyZs4kKNHcBJxQ9EDXSXtRoIdySLVKrEDJ4PZcXp9m/CAsi541IdJErh/m6MvVZJmm4z3WdjUA7yLWQkiVfRHSJDa/YvBlmKL0TQIPRaBu/63jLftznqkjLrg9NIP9D+z6lHXBrB6c9PQFLuSfAWb5ejvr3tkkRQp3AUKdnnvSFRndHvIbHkg8FRLuj/cERxPLo+f4Angt4q6zcZQdf7wfFpEevlmy/9xZCOTfirMmA0f4S32HeoKZbxhDj8oKYlgiLiJkER3c+pL0GoSjk11NVZvOHbJm8b/gfOMcn5bIv2QI2Z0+c+9qSqk+hke6MkzUZzaRf8fSSH2kCA/QZOwZHeCD1/7H8qeBctOYxMhcrY5q/EmPO9/i638Bo+JCUITFodLNZD10Sl/DnU0DRobKuT+Q9Qy4soXDbO+UeuclOxiBmLIu8lgID7+KDnljyvaHr6UPpsn3x2voEDcwBA3uNqqn61zr6gCI/0qZRA6ArEu2pF4RuucpfpXz+jbxgLxhWu6x3RhLnwMp/b6NdsTKBzNRIxa9SoethjXpVp5WTW2UnaPWmYZaydIxZ/MEaD9nqFq4nxoyREdpiSSPSC7XgzDQYmqqJggIA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(366004)(376002)(39860400002)(136003)(8936002)(110136005)(55016002)(33656002)(9686003)(5660300002)(8676002)(71200400001)(86362001)(478600001)(26005)(66476007)(7696005)(66556008)(64756008)(76116006)(66446008)(66946007)(4744005)(2906002)(83380400001)(52536014)(122000001)(38100700002)(316002)(186003)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?liGuNi0l+CAH8EmLB9g7sDw+melypi2KQ87SYw7lY+PdBelW6FqUjhGPl9t0?=
 =?us-ascii?Q?z7YG8VVrs7R4gLPS+a9HyQ2VIbMnX9FAGkvs5Z4rZPFBbigmuEJzTTcajjTo?=
 =?us-ascii?Q?ozJSCoV2NzPjcIVd2OH0PjEc5W1IO9QLqoYFhDjdr5ZqTp6aIEn7BeWYO8rv?=
 =?us-ascii?Q?4AZL0L4DHaJz7YECSf6tlzkSrjB2NlNfiKTGgzU3YiTdhHMUzdgRWxqxuaC6?=
 =?us-ascii?Q?9AJoteNddItKQT/hykNXC4CfSRrWaePLNWcUdF2uZn1OvK35hHkb4/rZYBLM?=
 =?us-ascii?Q?47IdztoTaY3cvBRGOUVUlcP9w/KM5bbFxQrIdSetfKRj/PfarOd0JJciir7f?=
 =?us-ascii?Q?M8MEnLGB5qPvW2e0+OOB3D0Wl+w2YBOAofFqZcPHz1VFVJcSfSMzr0FA+p9r?=
 =?us-ascii?Q?5PnHRww8WAXFPOZgwmqfWblBGhtmV2q8Nny7XWWKTGqRwuk+hzzmM8IU6n+k?=
 =?us-ascii?Q?m43MTD23s4dybmDaP/Gjrff7ksLgbS/L9FdbaAW+hfU0BZg2w+o7U64SZbYY?=
 =?us-ascii?Q?rLPd6sdH4ZuWoGsEwA8g02BFadw96UBboT8WFZwKNai+UBlV20u9goQhg6LO?=
 =?us-ascii?Q?oU9SJ3rpNWZ+GAi3ehrulF7cs3K/9DJcKMY/6bRuFb//cA1J9HzeT4UfRdMR?=
 =?us-ascii?Q?kzzVDs1EjTuqPQZsF+KQZcZArPjs7aJZ6ckDTDE1plOmczelVRcotceBkTQW?=
 =?us-ascii?Q?LS8UzA6dWTkiumsfDTZt1Pr9hq7r89idG9oWJbB5dYoD8PXVggR+v238EMhU?=
 =?us-ascii?Q?Dr3xXVHUdzT/ghprjar01amVaUQ0J8+7zrMR2DtKGUq3uOzZyYbkm2zfFHu0?=
 =?us-ascii?Q?a2OwXbtcdvYjb4XZUZ9nZ/ZWIQmWdkcIsEusEMusdRwe0Yqsd1fYhZfDkrFe?=
 =?us-ascii?Q?/FwKQZCOa+ZaDlj82PTIdA/pJeo2mXk1XK8cSof0kYQjD86gNpFLrYwiCWA0?=
 =?us-ascii?Q?A3nwYGZMXKux5aQf50IDhQ2hcWyTSWSTUs1+4/PG5RiO74u6m4tSefOo1wyU?=
 =?us-ascii?Q?kIEGsr+P8GYjn1DRHKDeoPluFPTi8wJuARYLiNZx9KNwU4xddV33PPpWMUo+?=
 =?us-ascii?Q?8YSWJLfh54bcxVqeFXhhptr+ijlzcm8h3BOhEUt469cLlGdxwiAdzm1mF82X?=
 =?us-ascii?Q?mkrJva2iEDf8oVtN9SKCv8+1C754uZgvygRQixp4ugP7mii5RvJdKPpBxqxV?=
 =?us-ascii?Q?koc8QAHb920NzNTpUkdZkTBfsv82ot0kBF6ezQ6JnIbQ0G22kZ1tFdXZD36U?=
 =?us-ascii?Q?i+wgzCh8T5dK+HMYbjUbyByL781FNBT7fsMkjdKzeluUoeYWwPHOwMIhFQfD?=
 =?us-ascii?Q?mGZJZnXJLL4dJfW2ffPdyrNw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 098490b6-298c-433d-c224-08d9155d6850
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 15:48:37.5363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v/e2hygLeRqD5OtBJLuCgTGEpRw2d043ORKoCNBjAafRpzYlyFL3vOgnQeshUTjBMcGlJ3FEMWpAOg7MiLwN+cMJ5OBmCtNTyRO2z0/qZTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 02/13] ice: add extack when unable
 to read device caps
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 02/13] ice: add extack when unable to
> read device caps
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> When filling out information for the DEVLINK_CMD_INFO_GET, the driver
> needs to read some device capabilities. Add an extack message to properly
> inform the caller of the failure, as we do for other failures in this function.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 3 +++
>  1 file changed, 3 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
