Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8036F7009
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 18:42:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C356060F82;
	Thu,  4 May 2023 16:42:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C356060F82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683218528;
	bh=tzDNqKcDW8PC3BKThiKG18NYzm5xmddTDXkmox2Kd0Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MQwTuOP+fajm3FLNY4gqx8wgPCVD+Tgxhuuo58791gv4glmw/SmMx1FyOL4fX9oJI
	 dFdn2+qsq2NFxI0xfy45FTVQWTjf/LDPovQEK5bXsURR/7xmIxpnjSgQAyVqPDwviU
	 /tYsKDjAioCly4+tyMJ+HzLc8f5nsulIQn8pfadh3/Ra+DKGv5vll/psIeFpbRp4br
	 GxyOQVmRMiJBqKRbvERTxQySJtvavyf3O2drRNeI5ZvaFUrM01r1aL8IUDoZpCNRYA
	 4RGnD32za/XrYl1si9JNVTzGZ3Gf3aMegv/9xrkEAEqFcBCggIuKB9fTo8RIFymE6q
	 I5fc3tcnc9u5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wBn4G9rhVjZg; Thu,  4 May 2023 16:42:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAA9160F6C;
	Thu,  4 May 2023 16:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAA9160F6C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 037AF1BF310
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFA7F40BF3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFA7F40BF3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UxMAfyaUQ3sp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 16:42:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 279AE403A2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 279AE403A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:42:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="329349710"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="329349710"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821242422"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="821242422"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 04 May 2023 09:42:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 09:42:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 4 May 2023 09:42:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 4 May 2023 09:42:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NYbf/WYjY+t8ESY3lf5j2iSCk2Y+AfGSPZ6OSUyqYVMDUbqpXdF6o6Adq7XgShQSd0VFMy3weZr5IuB5NfyP+BLeeexgfJuJJj6B9FAfkbKW2aA93Uw198R4aT3OJ0P/v07uLsYDyjWZ5Ms76p+0g33Nd6KKPPqPZaqvuDYd98Ge5EkwKtA8pceBcHnSOCxmlBn1XqkoNZutJL23qCkwOE1Y6sFxzXs1uMO/9i7Wn8xoKWkgQElbf8Ebq2j2cWVPuoEuNrYfxUqlc68dRNKIu2WtOoNi24MtGXpVlXz53PElBM3O9rHLWoeAem9sHd2QQjmPrEm8HN4S3bome/G2Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LsjikJr+d6q5zwwT3QZ2KYzMvBEZ+/X76OnqiSOXHFk=;
 b=eITqHGzGbxEr4AZ3nA/m6xmQ6pqeiHy1J/oFE+zv7gizvNl9QM5oyQxsE9/w1TGCC1EHKgLAjmHpXiClbAAiOfW9zYghY8uW56oyznLeyYVf/viMRlbJqqluN0CzLkdKdugNY6fpY+eB4hyC9zvgmRa9rz31tsgzgCqe6rf4bjkm4BivxORhqoXR8CUJFmukIq3G6GGzNRWrGFo5FN+2cYQI+XOAmB3AinT+mkHKKN0YWD4ZjYeaun7VIHmJey185FUb9cgwB84/b6OWog+YKnkRnetE9U9fE2B9XWFLH+estjWu8UVYEG/myObzv7AKMNv6FpKmN1KeCeJDtAd9pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SN7PR11MB7116.namprd11.prod.outlook.com (2603:10b6:806:29b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.26; Thu, 4 May
 2023 16:41:58 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%7]) with mapi id 15.20.6363.026; Thu, 4 May 2023
 16:41:58 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] igb: fix nvm.ops.read() error
 handling
Thread-Index: AQHZd4zf8XNye/swREey/fL5WB6MYa9KXRQg
Date: Thu, 4 May 2023 16:41:58 +0000
Message-ID: <BL0PR11MB31221184C85BDDDC365CFD12BD6D9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230425154414.154351-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20230425154414.154351-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SN7PR11MB7116:EE_
x-ms-office365-filtering-correlation-id: 18eaf9d2-3d99-40fb-1eb0-08db4cbe7a59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6gO+TN+EgDTxBQ5F4mfENPtZhZcwRmboChDCLukyDqugMPwOXLn5/lW6KDUh6QBH8ABGOuxSUWSkLaCbXXG/9qQ1ScmjJFqRym7u/rQWEMF9EkVkc+C3a5/DszMEVbkhnsX4Eb3mxZmjTt8RcQ4CPQls6x5Y7Dy/zepFLGuTEAuh/5CghnItGa2bCXHepSy7lYYYwEFAyHQ1z1kSOLD6PeiyibyizR56xcF+iUpVgomx2unBVr8BJL4O3DAz0eq96eOtQWo4KwtY5gqEI4vF/zM6Rk077MQ4ymshI4ZN+AJ45wIFp1GxfSQMTQ0ZWts/0llTZKTEKphVEaGqfiT+McVpwYZ7OBd1PsdRSST5lvFsakUghmerYWBEPlQ4g4uMzXZbYW2IYJIbrvPhT3b2nbxDuN8Bep8d+D80Spt+kwEbY7DqPvagRY5UDAWTdrsMn0YCDkJ+8IWtYb4xuYGCCSg33cO99uSsMCHFtfi6ZLQdBEMjVGKJgM/+x1sOC8Nr0yy50cnorcED7KBYRIrYEUeZvIBqBRcUIjr+bhlAnxYqRRiApw66aQHLT1+F7pLcLlNc2QoMBwsws30nZ2KQqU7a4YQ7IN8XbG6h1v0xrHw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(396003)(366004)(39860400002)(451199021)(33656002)(83380400001)(76116006)(478600001)(110136005)(71200400001)(7696005)(6506007)(26005)(9686003)(53546011)(186003)(52536014)(2906002)(4744005)(5660300002)(38100700002)(122000001)(64756008)(66476007)(66446008)(66946007)(41300700001)(66556008)(8676002)(8936002)(38070700005)(55016003)(86362001)(316002)(6636002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tkiNIamnBdhl3N7LUXQ+dARQBZSdY+B/03AJ9SIRZHF/30l6Al5mHcugZuzm?=
 =?us-ascii?Q?M4bccnEJ6FUTn70cqN/id0v4mt8xf9YRURLG9pVFvyZiuyqxN2OCV2HZ+Mtn?=
 =?us-ascii?Q?Ebksg0Aehgdsgj0xcVxUObtmkRmCZ10KS7yiPd9lLTzuQiumUXQCmlScyhBa?=
 =?us-ascii?Q?AID9mjmZLzOPKeM4axAzBUH96AwqoBMLgPYo+iX+UIMu6Cv5K1NBMNACVdS1?=
 =?us-ascii?Q?jk9QIGlyziwtOBkzl6NAh8m4X86boAvyDkr8gS8mmKQF8BBqNl8DZxiO8AAA?=
 =?us-ascii?Q?7fsUrBoNyA5yYRv1Cu4okg9IQhWdkV0TBCs/mQqyH518Ga2FsHPtwDdcN6uO?=
 =?us-ascii?Q?w/rpuejcAIAenQPRwKSXcQjJGPSG7BHxYb6P8/yxKEbYMTvd2KTZi3ignLb7?=
 =?us-ascii?Q?ATTJ1if3KZumBEJWJaEwuza8ck4w5VvOYyoYCJE3vEbYQC1mof+nB6lls4hF?=
 =?us-ascii?Q?1sYIwUAtYLfBQh+wQrDY3DKGRxAr9ZbUOaNVUrp8X5B4XHv9ilEuzyWaFjX3?=
 =?us-ascii?Q?oTW/9Gunt74kPWrTnnLWGSxJr+d1gy3pIEgbyPYSBNul0qr4Wnbh5IRR7QTl?=
 =?us-ascii?Q?tOh5Y8+stmTIPkJ0SYdXa7ysMRP4jdLEUl6GBsdXDTFSbYq9Pn3o7p8myKTN?=
 =?us-ascii?Q?Xcloxqlwzb2vOyJvh6se7tBjgiQ/motw3zXN9+YwCTxP5hwssDNPmHqSGTE0?=
 =?us-ascii?Q?kZMSwCfv3ZzF4f2b32Az06d9okYkqQedGR5mbQ75QsIkVnMGVk82Xrjqsp7S?=
 =?us-ascii?Q?ueZcvD+RArSXFhsIbOjrQGz2kZtlCkNYHcW97yllalqjXGDgWEZzc5DxPi+7?=
 =?us-ascii?Q?/jeuznR5ePl80tZ5HfnZa0fFzmFmSULbqEIMa7pyQibgO6VVVfgdUXpOu0yK?=
 =?us-ascii?Q?7TmXNBXZiUFAkXj+8NPTtSHiEqAAe3006cazMbpQrdt6tbbHLxSJ7Ye3WdQ9?=
 =?us-ascii?Q?tWwPI2ti3YMVkj407WyJlcvl550lDW9XfXsbhcn57ocjIkknH/xsziA+6BWd?=
 =?us-ascii?Q?dOBaz/AHx+L5QkFIGHvsL70dxlAXRN5Aber2C65hsn5P4qmPJqbuWtIko2N4?=
 =?us-ascii?Q?4SOjfSW4hlFN29ypblDKZD/dn9rZNtE+KzqSvKN/VXgumsOdh9y4M2GyDnwV?=
 =?us-ascii?Q?/T95D8FhqQ1G7UskKV6m3RBoOcyR6GTtxJ8l653trk5EqkZ9XJoRZ/AZOrjD?=
 =?us-ascii?Q?uYJyu2QpjLBp/14BJNuaUR99bK+dUFJRetTLF+0kFV5wRO5xYvtxOHk2mrUf?=
 =?us-ascii?Q?eWXYvta8779rrFtKI+Nq2PnwkhKgsWIVCpVwdl0g/sfpiHqv9wAw5s2ra3ZB?=
 =?us-ascii?Q?Sug/v3oPu2oxIApIGPeMFO5h9WdkIfgaHXSBi7QA4fh7HRLu1kTcu+MGajeq?=
 =?us-ascii?Q?Fx8pMc1pXtzY009ZKs9NbL042lAUFu3DJV01ZebVzJ5h8LwkMrUYwqso7RPi?=
 =?us-ascii?Q?595RbP57hFDas5xK2nNyRjfNTjYzN70UT7HfcCY6HwBDYWs/L3D51yhVqhoL?=
 =?us-ascii?Q?Z/HvtyRxtiAd3BP4/t2C7ffDb+QiCznjwr2I5S8XmNa4ZA0qgKVryOGdwbdk?=
 =?us-ascii?Q?tX0L7wMXjaUTeHPWMrkjyZnsgbZ50Q+mg5KCtBOMC5v0uTicQlQdTIxm8vzk?=
 =?us-ascii?Q?VQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18eaf9d2-3d99-40fb-1eb0-08db4cbe7a59
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2023 16:41:58.3136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TXDdbeQ5Cmg3jw4rQePkJcR9eo8dGAPRSVrAIDWU3dCrIcQnyJch2HjwZEckZ+mD4N9HAOTvQ9WO3gln3BBlCa5aceU2NVRMWN3B2KQ+Sz+vXxhn0idOiXrFsP5ofzvG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7116
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683218522; x=1714754522;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LsjikJr+d6q5zwwT3QZ2KYzMvBEZ+/X76OnqiSOXHFk=;
 b=j+3mtP4xdmQBRGDNG1jB95/27amhaTIWGQtg35RXP29oPY3dgRCvQXkI
 OXVUbzbuodIFsTrwOGjG8GbiJLIi72BurvhxK+H0lsLQ6csxweGb0IbiI
 UH/seDMcxO57b3mCwvVLOi+O3uSS8T3JytNGnOi0K2DZzB+ncPDiY4vPz
 rUn8ntSGIVnbcF1HxHvvlSUy8Jei2nL1mUjRm6i/qvC233krIzj/jnJXj
 IDldu03RCjKvGcj9wx8fWmxSZwXyie3ZLmBBUULsxW91JlDsBMJHbgc4b
 DAcBBT2pomkmQ1kcgMH7dJwNZQPBN0ZRdUCfiZKOSQ02DRyS1TWWddiAY
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j+3mtP4x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] igb: fix nvm.ops.read() error
 handling
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Loktionov, Aleksandr
> Sent: Tuesday, April 25, 2023 9:14 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] igb: fix nvm.ops.read() error handling
>
> Add error handling into igb_set_eeprom() function, in case
> nvm.ops.read() fails just quit with error code asap.
>
> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
