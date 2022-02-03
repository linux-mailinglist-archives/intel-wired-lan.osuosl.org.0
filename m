Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C504A7E62
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 04:40:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5463260776;
	Thu,  3 Feb 2022 03:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFKLnQK7ZREW; Thu,  3 Feb 2022 03:40:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BA44606CB;
	Thu,  3 Feb 2022 03:40:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 474031BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E5DD40275
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KUauXEpVpwfo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 03:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0637B400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643859632; x=1675395632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ueO0rBJbolo+STCyM/mj5EaooT9SQppBYrPo6WWAJ0Q=;
 b=FaFzUyzmJ6Vq/4Rqmj/Z3zU8KH/d8v35waI4T4fDPgiIovEhA0wGSVoY
 QIqBMhrU3uBwgVfZS8N+1TmPB+KhVIUncfX7tWv7EHJsZ3AT34Cl33Eif
 u3XluzwP9tx7XOKbXsDib0LqmUEqCKbrnHO+rHE5T6NbfHzudR47JZ5kq
 ebkhbuK5kAjNjQXUSVkvwSjxij8VDjuiHfUXtKJoyWu+87WW3OC7JI/s1
 /bu45ljU8kftTcgOj3GZmJYs3AO2WwMGgtUUqPHnaoheTM596SGWWdjFO
 LSQBSBBg2GNp7xnaDvJdt2MzPpZLAfZbq+BaglOfU9SURCjuUYAT8JZY9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="228037976"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="228037976"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 19:40:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="771662567"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 02 Feb 2022 19:40:32 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 19:40:31 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 19:40:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 19:40:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 19:40:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVGki6U4VjyiIC3lM/v6MoQ2FY8/MvDOlow+eKSDxkKfEXjHPGLoeWG7mJRsUQrxl1PzbFxjbIfRyPRAnG4V6YZ8ughUbPASVsebNYj9AkX9TwMRbnr4kBCcav1yw8yUsKVGOSqYRHVUKAAoa3IuHPbF0pVP5P32Yrw2xYT95ZE/+6Hze+Xceu7pcBqhEqBMSAmroB5vsDDMuX+xz7jAPktlrVkhy0uYiZ8mPonw+NdXlNBeZxJ2O5o4fHISgt6H/4byaPXDMYUEKqHJLpQmLSskSe8xrHEfRu0IwTQg9mpO3blX82Pgu9L6mQ0Ejr0qzMgElk09XG1hyvqB0AkOEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ueO0rBJbolo+STCyM/mj5EaooT9SQppBYrPo6WWAJ0Q=;
 b=WoVs13nnNYMdChPsfIUPQSELFJhirUeYgr/fdm2GFxgEmOvBc7Ak/vypULc8rxYBony7tGTA7enhIELvXmual0d9F9/Ec5jubzWqV02i7fNnZj40AGnnu7MBGCm7sayiLDu+vfjZ68Sgyr1gh+aagmccV2gfzTitVFiRR4F0qqefaVgIx4vsw+98VUNP9zUBAnwFkbNSMqtzeOrQHXdF66ETkYndq0X7IpIjv3dwrhAuw8izccEpOoHq3I6MG4WsXP1GmAneW2oLjXEWxdnWvhn6ZSUPE3bYIOkAbddspbqtlLqrAh7++YBQk6101akmIF1A4sA8Dmehb2DtgcidLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by BN6PR11MB0033.namprd11.prod.outlook.com (2603:10b6:405:63::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Thu, 3 Feb
 2022 03:40:04 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 03:40:04 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: Shannon Nelson <shannon.lee.nelson@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
 controlq init
Thread-Index: AQHYE97YRa01f2+p/EuTRTcc8O6KfKx/PRQAgAHzIbCAAAaqoA==
Date: Thu, 3 Feb 2022 03:40:04 +0000
Message-ID: <CO1PR11MB518632ED417B553A3CF06F2C8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-5-alan.brady@intel.com>
 <CAP-MU4MB=vAFb7B92yhx+CfX+NnRSJNzA3HH_X9geMaR6p4RTg@mail.gmail.com>
 <CO1PR11MB518657515DD2AEBF539B9B768F289@CO1PR11MB5186.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB518657515DD2AEBF539B9B768F289@CO1PR11MB5186.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2a70230-659a-4e4b-0d35-08d9e6c6dda0
x-ms-traffictypediagnostic: BN6PR11MB0033:EE_
x-microsoft-antispam-prvs: <BN6PR11MB0033020DC746F61A81ADC2938F289@BN6PR11MB0033.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SlT4LkbKjDkg6iuz2aj4eeEj+Z4isAvA5kJX8M5wyW7zu42eihWPQdqt31MWPu08heOfHjqP+CKeO1C3GhWTC95zbJsPYOjNt36vu3vsWexLTws0CkH5rG6juNlnI/7Yiunmrnap4XKhjSArnVUwrPHaLfHLKKpr4XoB0sjRJaCc2jFsHD9WoDrGW9hpxWBBTv8+HFINEhnXROVybWbT+oBcHxiKOmUxuA+YA2DkT9EIOYbGlO4eXNwTI9xHfoq6Ya5urmcVzl/rV/7vOLpMd3ds93etlRbNvtV6iixpBjamkzszK1Y9FMf/xUSJ02LUQGG9sdeoOeierrR5YZuVAmu/R+keyum24F/heXGLJeMD3TVVIqF8CHqIX4c4UcTux8pMQnIu52N77NDskgwF3b+vcvLTQSea+yTlcDfJgXsiU18VQwtZnuzb4XL8500TKJfAUrYlvcCFhO9fX8vs5CL6QaLCHNDE2b9hLqjE/sUw79D0cKl0aLefStb0Yn/IOeaQ/SPOKVqYkO3A52oQyYzIBIfyoO3NleCGpeLbOGBenTrBOSSFJ4pGMYXhSAsxpOfqNVOlMBjPTLTOvtDgukIZLQIXXRfLzY4i20Cxk7F0pZ5/147dEoolLb5+/Ec7KN/beOYv6R2HzPh6ftG6kql7Z/45SIfLpfYG+0v2tnyeArC1rAjCOh7tLF5oymD9Ym5JgSGDwDgfzPd9edbrbQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(2940100002)(7696005)(55016003)(66476007)(9686003)(66446008)(64756008)(8936002)(2906002)(66556008)(6506007)(66946007)(53546011)(8676002)(76116006)(4326008)(54906003)(26005)(186003)(71200400001)(6916009)(33656002)(82960400001)(107886003)(83380400001)(5660300002)(508600001)(38070700005)(122000001)(52536014)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckUzaktQcW9nUFJuMTVtTWZKSTRGN0lpV3J3bGtVb1R1YUwrSHdleFFvVmY5?=
 =?utf-8?B?bTJjMXdIOE5GeVhtZTNLYjdHaHVXU1BPYWU5Q2ZTRmJVaTQ4WEoweklPVE5r?=
 =?utf-8?B?KzRVdU01dnJkUnJEaUI5bTI4VnJGdEtSbWJOM3p5bVB2RzVPaWM1VTJkelRT?=
 =?utf-8?B?eXQyam1CVTB0YkNXM1J1V3J0c3ltYWM3bTJJM1YyRUl2SlRub2ptTUtpSENJ?=
 =?utf-8?B?bTlGQUIvaUlXK0hjNnVkR3ZicDR2YmZYalFlT1RVN0ZqZERjL0l5dE1uSlJk?=
 =?utf-8?B?TmtPN1lIbTk1ZzVWWGNnL29MNHlVU3dIcUJoVGFiWmJtejJwMzkxMk1FMkJX?=
 =?utf-8?B?Z0grWUtHR1NGcGhGUTNNeG1wKzFUY0hYTFJZYWRseDRYTmRYSUFsUTdjdHZy?=
 =?utf-8?B?ZDN0aFpVdjRHWXJhTURZdXNacGhUV1pMaGFNZmlCcUp4cHBCQm9vM0FiLzUr?=
 =?utf-8?B?SjREc1cwQ3dtK0FycTVyb3Y0VHVmbTM5RDlhb2VzNmx4KzVBMHdVVUhKUzBL?=
 =?utf-8?B?N0JjQTdDbEtMREdBRjBZaWI3NzdnSWJhU05xKy80dmxUNTNHT3ZXUUkvaFBa?=
 =?utf-8?B?K2tGNzlwUGNxZUJPK0swSG9wTWxTNDJRS0hMcytzeS9DVHpBRnBwenJUSjhX?=
 =?utf-8?B?TFo2c2w5SUdTTDBMYTJhNzVzM2FtcDJZcGZmaHlKV3dMMnAyUXhPVTRxajZW?=
 =?utf-8?B?Y0psTlNiaGJud1pqS3M0Wm5IZlNEV1NxbEROc0plRnFDTVFUNmpyUWdjSlRZ?=
 =?utf-8?B?VVdYZVpPZjVMTFhVaWh0OXBkOUFOZXdwRXpDQWd0QUIxWXU4Ny9maW5xd3Bj?=
 =?utf-8?B?S0VQdVcwOThyZ2oyckUxL0s5SkhMNDE2SnN0bGo4OEYyNCs5NVRmUkdiYXpv?=
 =?utf-8?B?UXdqeTk1ZjI2WDBTQXZTZ0VyRmNRUTEyNlNrek1OZG1oT3k5R09UMHU0OTE5?=
 =?utf-8?B?V2VwZDJ5b2xxMzZ4bmoxQlBKL2dkd2VkaGFBZis4Q25YZnNCb2JHUUpKZzJz?=
 =?utf-8?B?ZmR0ZVZKeXgzdjh5T3ZIR1RrVUFpM0FYdzZaaDNHdVF0aGJQTmRnbVVia2N6?=
 =?utf-8?B?QmxyRHRDV2hYSndTL0ROQlBjSldORWxIK0dCUUxqZjM5RDhJMTJMVHRmS0pC?=
 =?utf-8?B?cnJXRlJIS042ZlNkVVZSOGNCTkNTOVFMdGNOS1lDSnQvdFl4UVFSaWFkQ1l4?=
 =?utf-8?B?MFpOVzdZTXViYVhldUsxQXJ2ZXM0OW45RWtIa1AxU1pVc2VaK0pNTldTV01W?=
 =?utf-8?B?RlJ4b0E2ZHdPaXVVckthUXBEVmFoTzE5amF1OUttbEpIZnNsQnViRDQyb0tV?=
 =?utf-8?B?cWRUMk03VXNPVnNxZzZlM2drZmR6Si9KYWZYU0gyZWUvRy96YW5OL3JGOSs5?=
 =?utf-8?B?MVlTdS9RellycXMrUXFWd2gvY0dvN1ZKRzZCeDZFYTdScldSMXRBNU9vRGFz?=
 =?utf-8?B?cG4xOFQweG5mc0dRbEpxQmtGaFJ1UjJ2ZkszRC9WaGdlVlo2c0tyUmlBaGJC?=
 =?utf-8?B?bUQ1eXJ6Yk1JSHR0blRMSnFtSjJEd0pCRXZKUlZKQklwcmNGOXJNYjdBMURN?=
 =?utf-8?B?Y2U2dkYwNG9ZVlJMTnI1RWFjWFpDc1orSjF6cFBVV1BoejRBdkZTQlpjWklv?=
 =?utf-8?B?ZUhZTVJUTjZiS1crRndDQStFNkQrdEFiSUNsNzdZdFIxOFNJamlYTXVzNGQ2?=
 =?utf-8?B?Y0Z1SjlMZDVnSkJmZTlsRjFMNlFuTlVRekV3RHZNV0lzVHNEY0h5T3U4Nzhh?=
 =?utf-8?B?Z2liRzFZT25sd291a0hyTlZXYnhSdFRZNmxoYytld2I5MFdlV2tlVjVESnph?=
 =?utf-8?B?MmpLNm1QMFJIQk05T3h6OTFvaUU0SkRXdlhQNHUyYURDRHBBSEZsQmdYUVVO?=
 =?utf-8?B?blJWUVFFYWt0WFkvWnpZNkxvNGZHTlp0MS9MNDFhZllpbUpBeEFBQ1pkcEc0?=
 =?utf-8?B?LzJFdTdTaTNaUDVsQzlkTTdqTDVlbm1zbDY0OG54WDk1ekVtYU05bEZJMzJi?=
 =?utf-8?B?SHJ3MzBjZUN0eDZIYkJPRnAwcmx2ejlncUdpMXpOM1ZjRkdubWRkWEpHZUoz?=
 =?utf-8?B?OUhKYWp2bGhCOGlkRjFIVlpPRFBIdEs1R2dRL0lkclhOR1RJbkZwbkhNa1Yx?=
 =?utf-8?B?QlVaQXJ1c200SWIwTU84NFF4Sm14ekxDQ1lQY0QyaXkwd2NWVEIyMm5oSEk4?=
 =?utf-8?Q?YFhk29nMXvN4FGiFSZU81/g=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2a70230-659a-4e4b-0d35-08d9e6c6dda0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 03:40:04.4709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j2KDw8bcZtdVPWfuZoW1w6Vd2iwp0Lkec4ru00JFPqd7+8DV/54OmZb+9YPaza8w/M7ZRfl3sb2GNqUwDuCfmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
 controlq init
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Brady, Alan
> Sent: Wednesday, February 2, 2022 7:25 PM
> To: Shannon Nelson <shannon.lee.nelson@gmail.com>
> Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Burra, Phani R
> <phani.r.burra@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Linga, Pavan Kumar <Pavan.Kumar.Linga@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
> controlq init
> 
> > -----Original Message-----
> > From: Shannon Nelson <shannon.lee.nelson@gmail.com>
> > Sent: Tuesday, February 1, 2022 1:27 PM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Burra, Phani R
> > <phani.r.burra@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>;
> > Linga, Pavan Kumar <pavan.kumar.linga@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init
> and
> > controlq init
> >
> > On Thu, Jan 27, 2022 at 4:35 PM Alan Brady <alan.brady@intel.com>
> > wrote:
> > >
> > > Initializing device registers is offloaded into function pointers given
> > > to iecm from the dependent device driver for a given device, as offsets
> > > can vary wildly. This also adds everything needed to setup and use a
> > > controlq which uses some of those registers.
> > >
> > > At the end of probe we kicked off a hard reset and this implements
> what's
> > > needed to handle that reset and continue init.
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---

<snip/>

> > > +/**
> > > + * iecm_ctlq_add - add one control queue
> > > + * @hw: pointer to hardware struct
> > > + * @qinfo: info for queue to be created
> > > + * @cq_out: (output) double pointer to control queue to be created
> > > + *
> > > + * Allocate and initialize a control queue and add it to the control
> queue
> > list.
> > > + * The cq parameter will be allocated/initialized and passed back to the
> > caller
> > > + * if no errors occur.
> > > + *
> > > + * Note: iecm_ctlq_init must be called prior to any calls to
> > iecm_ctlq_add
> > > + */
> > > +int iecm_ctlq_add(struct iecm_hw *hw,
> > > +                 struct iecm_ctlq_create_info *qinfo,
> > > +                 struct iecm_ctlq_info **cq_out)
> > > +{
> > > +       bool is_rxq = false;
> > > +       int status = 0;
> > > +
> > > +       if (!qinfo->len || !qinfo->buf_size ||
> > > +           qinfo->len > IECM_CTLQ_MAX_RING_SIZE ||
> > > +           qinfo->buf_size > IECM_CTLQ_MAX_BUF_LEN)
> > > +               return -EINVAL;
> > > +
> > > +       *cq_out = kcalloc(1, sizeof(struct iecm_ctlq_info), GFP_KERNEL);
> > > +       if (!(*cq_out))
> > > +               return -ENOMEM;
> >
> > You might keep this as a local variable until you get to a successful
> > end, then set *cq_out when done.
> > Else, you need to be sure to clear it back to NULL on error return to
> > be sure no one uses a bogus value.
> >
> 
> This one I'm not sure I follow.  If it's NULL we fall into the if(!*cq_out) and
> don't need to set it to NULL (it already is?). If it's not NULL then we go on to
> use it like a valid memory address so I hope it's valid.
> 
> > > +
> > > +       (*cq_out)->cq_type = qinfo->type;
> > > +       (*cq_out)->q_id = qinfo->id;
> > > +       (*cq_out)->buf_size = qinfo->buf_size;
> > > +       (*cq_out)->ring_size = qinfo->len;
> > > +
> > > +       (*cq_out)->next_to_use = 0;
> > > +       (*cq_out)->next_to_clean = 0;
> > > +       (*cq_out)->next_to_post = (*cq_out)->ring_size - 1;
> > > +
> > > +       switch (qinfo->type) {
> > > +       case IECM_CTLQ_TYPE_MAILBOX_RX:
> > > +               is_rxq = true;
> > > +               fallthrough;
> > > +       case IECM_CTLQ_TYPE_MAILBOX_TX:
> > > +               status = iecm_ctlq_alloc_ring_res(hw, *cq_out);
> > > +               break;
> > > +       default:
> > > +               status = -EBADR;
> > > +               break;

Ah wait I think I understand, if we end up in error state later in the function like here we probably shouldn't be giving the memory back to the caller.  Will fix.

> > > +       }
> > > +
> > > +       if (status)
> > > +               goto init_free_q;
> > > +
> > > +       if (is_rxq) {
> > > +               iecm_ctlq_init_rxq_bufs(*cq_out);
> > > +       } else {
> > > +               /* Allocate the array of msg pointers for TX queues */
> > > +               (*cq_out)->bi.tx_msg = kcalloc(qinfo->len,
> > > +                                              sizeof(struct iecm_ctlq_msg *),
> > > +                                              GFP_KERNEL);
> > > +               if (!(*cq_out)->bi.tx_msg) {
> > > +                       status = -ENOMEM;
> > > +                       goto init_dealloc_q_mem;
> > > +               }
> > > +       }
> > > +
> > > +       iecm_ctlq_setup_regs(*cq_out, qinfo);
> > > +
> > > +       iecm_ctlq_init_regs(hw, *cq_out, is_rxq);
> > > +
> > > +       mutex_init(&(*cq_out)->cq_lock);
> > > +
> > > +       list_add(&(*cq_out)->cq_list, &hw->cq_list_head);
> > > +
> > > +       return status;
> > > +
> > > +init_dealloc_q_mem:
> > > +       /* free ring buffers and the ring itself */
> > > +       iecm_ctlq_dealloc_ring_res(hw, *cq_out);
> > > +init_free_q:
> > > +       kfree(*cq_out);
.
> >
> 
> Will fix.
> 
> > > +
> > > +       return status;
> > > +}
> > > +

<snip/>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
