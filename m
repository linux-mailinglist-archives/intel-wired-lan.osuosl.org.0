Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBDB445B10
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 21:26:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A46D060B96;
	Thu,  4 Nov 2021 20:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FOI3dYVFJwr4; Thu,  4 Nov 2021 20:26:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF98660B8B;
	Thu,  4 Nov 2021 20:26:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8D1B1BF335
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 20:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D53B8401F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 20:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3DzE3G_j4Ck8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 20:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C50E0401E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 20:26:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="295233581"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="295233581"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 13:26:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="578982259"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Nov 2021 13:26:20 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 13:26:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 4 Nov 2021 13:26:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 4 Nov 2021 13:26:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Er0HretYbGTt4c9jX2njDVqGkjjkVGwvIV6cGAx5Ec77pwarUNVQx+yLY2B+WGBKB/QCY4rBo70jZUQQT2iiV+5UxuKnIckDA4HudrMNRKzZkmBO8shDMTgrh3RrdZuVEvhxeq37Nb/l+y/EwKMBx8++f9L1umDnCGn3D45r9AHY09wzKkQqIYYNUiDKf0b3D+BkvhZZFpgjmoSzQwzfajKbcw10y+io0rwFu1Q9nUJfxlLEkH78J4R7NLxOXC6PN3VQ5+Ci2W3emOkqDdx/L/epJdL42OQL/pIV1Ryh/2/H/xKoxV301mx5w36JNHInOwxQgzT7lpGyd5kG8W6c5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D3NHfdVhCh0diNlwMBx8wskjhkhtR3viDjjEu28m3e4=;
 b=TrHm83NPPy+dpLaLUbOytpumxjsGBSfGq+xtvzUWy1i3F9NuQiwQGOGDkxV3WllFJZ1rWBDbAFl+5kFVKiy+lLKmnSs1h8czq7R6GZtaePzOVnp9A60kwiTtcJsc3lnA0YTH4Zkmvk1nteMEJNRkCUndIGw7NldbhGUxmUfEoznZJw3nnFYm6SgCpqkYg1BYNeM557HFonsu+mFgWrdiFYi79BI93jME/di4g5I4SZdD1hfPC90nXn5x6o0dKnTTDigO+7sen08lhyzkm6SlKzYge4X9lfe7T8iHe0L8gaYB51FpPAeyc/XnncbH3K1Ly9a8EaMAr1l4QlW6X8eYZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D3NHfdVhCh0diNlwMBx8wskjhkhtR3viDjjEu28m3e4=;
 b=xsTRqwKNFroXyMqCnnaUs84Za+uzpCevo7yLOEMugJ4tZb5XMTfqh5R+qB8aMrzCXDWQ3FDVLn/knxDYx5bJUIJY1Rc9DVFcVDMMi4IIpYmkRV23fWcgkwJlvatGg6m3X8fNSB3YWkDho1rF3dBu9IVR21fNMM6TrctABfNaSbU=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH7PR11MB5768.namprd11.prod.outlook.com (2603:10b6:510:131::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Thu, 4 Nov
 2021 20:26:18 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%5]) with mapi id 15.20.4669.011; Thu, 4 Nov 2021
 20:26:18 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor string
 format to avoid static analysis warnings
Thread-Index: AQHXnlzjJEh/Nf1mikeZzb2N/eZFdqv0Nvqw
Date: Thu, 4 Nov 2021 20:26:18 +0000
Message-ID: <PH0PR11MB514407A7006B7A331C526BE4E28D9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210831113901.156388-1-karen.sornek@intel.com>
In-Reply-To: <20210831113901.156388-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1d4c9ca-1bdd-4dbe-4786-08d99fd15b85
x-ms-traffictypediagnostic: PH7PR11MB5768:
x-microsoft-antispam-prvs: <PH7PR11MB5768B3864794AA304608AF5FE28D9@PH7PR11MB5768.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:175;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EDKjszTMGaBmdD8OzZmff4oLQy50rHbSrMYPEJ02slmxd7i7neqezl9CrmtV2CZvvZnWyhzkuw+X3MB1RPjfRBswHWH3wYt6aweF+quYQ/y9zdvuLikilm0qZSMsjHoYZkN1z+i0NYiP6i4gXE7Cz6SWii80+xlqAIaZVgfuCgpXdqXqbxbzmtuN0syfqrb2a+gOxikx/Gck2cCd0SDtKGG26pRTfHuLBGhV93UP3tPveJpEwjcojVBzn6jegrM4KtOsUz5LcVDuS6rcqGqyTkI4DYjdBre/KwtJVQqdLBH2GNbKd1ngOJ1ajDoxBoFbE0U2W02Yunhaxsi3IRc68+uqZE9agjAKTluyaK9Pj/Zvjzbgl4CCM3pzg2Z3Xy6fpqRUSViPZvh47jmfvs2A3EoOt6VTFjnz5dqS8nD1gv6pLR3rLK1LBGNAfmhhw5nD8PXSP9U66b4cFjps4kwa9ck9R8k5z0mangszBjh2HuKyLGB0zbQaJn1oth94MnMKwlTFEZ93OksqK7jFBdSVUoBD0UoGzVaevtsq2KbGL4Cc+uEJM75MPXR0sUksl0N8D3Xj/csDV7IQqILVgALEYgohYN4gR8DhdDN0pgbXuoyqSs+/5rgMIN5bjHNBpkejUd93G+07Jwm+ApDIBlrlJCV4A9hm4vk3uFQ9IBCY5LuNfnalRHTKfRIDKyWjYi2/ZcOroRBu7J7+qKLMlN4eNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(8936002)(26005)(64756008)(66446008)(66476007)(54906003)(2906002)(66556008)(7696005)(82960400001)(5660300002)(76116006)(508600001)(83380400001)(66946007)(4744005)(186003)(55016002)(110136005)(38070700005)(38100700002)(71200400001)(122000001)(6506007)(8676002)(52536014)(107886003)(53546011)(4326008)(9686003)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aCDr9tGk1eWi5NkUHcM/1bcwGpTp2cP+HuYQwdEhLbEqQrsJfhO+YkNJElUE?=
 =?us-ascii?Q?I1WF29YxIkoUCzKvRmxEyl0r5Y2yAhPvE3C74UnuFSeCMB1SskwukGsU+WoK?=
 =?us-ascii?Q?gCwNTrTs4W6p+caJMeGSXlQk71Ro0Vkpp7InuoaRW+G+ilSqdUvySyyE3T+N?=
 =?us-ascii?Q?4E8YtA4RaiJLqLxsGuYPM9/K/u1dwBbtTYnGJJmeoxr53TuYHIrFXLSL3qM4?=
 =?us-ascii?Q?3NabBmG7IyOI4bmdR1W7qG3oHnCcwsKyKGXlCpTGHeUyYEkbwHZrpMXedYC7?=
 =?us-ascii?Q?LJj5+f0hg2M9r9cLEYD34MFqQwPFO+zsRroIifFo9/HXAY0Q+k/92Di1YQjg?=
 =?us-ascii?Q?RPVRjggqmJ98FbEMmB5h2tCzv3H2DW5N3TpiwP3dPzszUqQiFle0yuB4nR3m?=
 =?us-ascii?Q?HDXXMpB9ayKKDw3999oKSkb/1BYkAqsaqsJEEQhzkdUDKyMn19GW3qt+gBFP?=
 =?us-ascii?Q?lA8d3RBJZZP6hm969X3ky9uj4VNqrYco+4BhsrwOlxtDALf/gWRt6FBHum33?=
 =?us-ascii?Q?uG74Nw7m0ebdtIjdAB55xmN8dYW0l3rGVPtIYjCx6bnTUJ4HXs5Tk9lkJiky?=
 =?us-ascii?Q?KxnGIWorrNRBdvBTO5pgPKcmioCqWqyLVQnxPokG7IVVX4rgz2nAc0U6zpWj?=
 =?us-ascii?Q?75T8ARokvWwiiPJavubkbr9MpHPoP5RpQ+NZu86Jqzdg6v+r8ikUp+MpVUeC?=
 =?us-ascii?Q?tR0nhQvmVbFi5dV7ylPFmsRxyBQCyaoqrhL1AyWG+1zKM91xURg86/2C3wFP?=
 =?us-ascii?Q?kHzKSW0x7asTthOQB7X8yDJ7qasTNLBDOZiA+Qsn3bV1h7WRMglaghoNhSjd?=
 =?us-ascii?Q?qTQUlGmTkq3D56cOnDTHPSDzKXbbS8hygDZFQWshL+ygAWZ9RZCX8oPVwMrS?=
 =?us-ascii?Q?CQeEU4cT1L+cGAKgdR0EwYUo1HMdlnvG7wxUBSvP+qKuLqTIUO16MQ9lhRuq?=
 =?us-ascii?Q?ZD+lT1ydRcKlczYpKGpju7xWCGrmre8oUZh+TphFUQZazdcHZ+fFlbt4dX52?=
 =?us-ascii?Q?oawQ+RKH1NdNvsf9jr55J96IIT6HoI/XhrIt+zQsSRE2u2gbh981jatrJOKw?=
 =?us-ascii?Q?axGRAGZBFTCatevcmWghtvZOGVSa4EqiUnOHvS4IMclD3BIslF2QVN4kLSvx?=
 =?us-ascii?Q?GmdUo9iLVp34NG5dsVCSFQV62sETyGhlGR+SJ1mYkduJUyeOndMvQPkJDq81?=
 =?us-ascii?Q?I+LgGWuuv30dDJWACUDZGDrrkIvhAcQzBCkN+wLn5q4AcFnwmYv+X5I8xIZc?=
 =?us-ascii?Q?R1WA28TgnX6eJpe1NHysw99HNYh5irUr1ZOBH9ZVsAOv3IhxLW+Q0O5dJIwF?=
 =?us-ascii?Q?eAOIwkGdzYmPU+jV+aRAldClGSBipJ/Es03vLK9r9++NAC70pNU/6yt/u1/B?=
 =?us-ascii?Q?PS586GczHdl/sArwDkCoXhpT4sYn8XEeyjk5vAiqcEXH5y26s8bkLPUt/i9U?=
 =?us-ascii?Q?Ze75U5bn9KLGEV3o43/hTuNfYz+oJhD5ToXnRQdFWnKLicDNQB70251pKzlj?=
 =?us-ascii?Q?m0ob9S/xqINzU3BcS0rkdJ9Sr/VxlV1KmzfYedmA9pwSb0VZ8wWYAFZIinQP?=
 =?us-ascii?Q?AX0uKeRuanqHUotHJSv+2rQQivCLtk97nlOB3HDzGB0CWa8hixN0TdWVE6X2?=
 =?us-ascii?Q?xDMlwGWSn3ccgqMqDkk+M9q91GsMHzhXyxpk6Q1ahazWkdp0RfDC9rFCnyIf?=
 =?us-ascii?Q?ar0PsQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d4c9ca-1bdd-4dbe-4786-08d99fd15b85
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 20:26:18.0963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uHCL6DBkkabuqemkXsROQ5eOnXSVt61kJUNKIwHtYp/tXxNJ9mUa68GHbjsZpE5J/pjZCcoO4eykOWdjAIGQ40EpUVc0remIbANi/L4DYso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5768
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor string
 format to avoid static analysis warnings
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>, "Swiatkowski,
 Michal" <michal.swiatkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karen
> Sornek
> Sent: Tuesday, August 31, 2021 4:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>; Swiatkowski, Michal
> <michal.swiatkowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor string format to avoid
> static analysis warnings
> 
> Change format to match variable type that is used in string.
> 
> Use %u format for unsigned variable and %d format for signed variable to remove
> static analysis warnings.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 6 +++---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 +-
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
