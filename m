Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 659E040BC47
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 01:38:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCCB281B53;
	Tue, 14 Sep 2021 23:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DixpTZ38kECo; Tue, 14 Sep 2021 23:38:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B243081B48;
	Tue, 14 Sep 2021 23:38:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 01FED1BF588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E45B7404DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H0FQI29drVOw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 23:37:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4CF36400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:37:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="221827622"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="221827622"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 16:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="583033835"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 14 Sep 2021 16:37:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:50 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 16:37:49 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=blKYuV6TrlXNF3/musrRawvXMKlTEJS5MCiCJPTPYjSygrDrNaYRz/OjFviD57wKOLbY4q9i73NvJbRtKu2iejlTjploC1kvt4HXTYYxTPkIZFieWEcNO8puMN3EBLhNBNdPnrRp+mZxXZGzxFRtBtI4VlrYhSnvKWu6a4H2JMrLaBlTSUP0AMTh/0Hhp8dzWYGXFQ9ZuCT/T+8Fc+m8TcSMLswx9YteE76Ce8Prb/LSmJRTHCVQPnJESvYyRmw9+7dNQdTSAcl5aDVu/AtHjw/IpgQrbqMWQJ+hAfH6tFWUhc3YIQ1yWQ5ctAHNHhtKPPKXZmCBCe6qjVoxKXkovw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=T6GvH8PYXaoiffsJLJmGm1oAjZDBBw+JD0E/JtA9CsI=;
 b=FLAEWi0rhExm5LP+FBuak1P8ObUWUNgn63mVEeyJCF2zH8JHFe85skA6D2bR7LJa+5xM4Kex0MVzMcq0BbaCZTY/boQrmN4TdKHDh2x24EtcIRkgK3VxZdgJlu98VL8wqbAqb77qu3uTSt4BmNql57G7/GnNM1aGcP47URZ6STa2uzk7d3EwgShdwHSjaApz73XB3zGL/aF5uyvpdATnQxPlvLd+Wt4qyl0WSe3TpVT/+4u83bTiGnNxAZDQ+8fAx0AtY7WpPVSl+cQJ9uGd5n+eDiSyykneNuDYiGcSZk0ONHIzJpVxXor+2BsGROlrlmFrrRW2bcMDXWbZE9RkHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T6GvH8PYXaoiffsJLJmGm1oAjZDBBw+JD0E/JtA9CsI=;
 b=PbcWoIYP2hH525hE6h21RqSmBb92NxxpwZ1mxeUC8cNNVFPTEOgBe7lKWE+ksPz0BSMmCmBXGp/Ucuqz+Pd0hFXrH6/ToS5xl5GOMOyXGm733SB66YTNTWgraGmMr8uWbJ6Kz1ZtgabbI1LvMSTAowb3tEfNDjSJ0wTOHStpk0g=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3278.namprd11.prod.outlook.com (2603:10b6:805:ba::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Tue, 14 Sep
 2021 23:37:46 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4500.019; Tue, 14 Sep 2021
 23:37:46 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next 2/2] ice: add TTY device for
 GNSS module for E810T device
Thread-Index: AQHXqKbEcfGrBW6FrEK0d734Oll6jKukMtsA
Date: Tue, 14 Sep 2021 23:37:46 +0000
Message-ID: <e92f985f8cf8d7e2bfc33f97d572ae9da7a5d28b.camel@intel.com>
References: <20210913101108.17927-1-karol.kolacinski@intel.com>
 <20210913101108.17927-2-karol.kolacinski@intel.com>
In-Reply-To: <20210913101108.17927-2-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3354142e-5ab1-4aa7-46e3-08d977d8a82b
x-ms-traffictypediagnostic: SN6PR11MB3278:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3278E6A959D527F69C02CB1CC6DA9@SN6PR11MB3278.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FlkW9/gSIN6eeLTzK2cT9lf4s7OhusBYDWa8AvQbbbGhENmCBlVh2h0pLVnJtnC1jzEAtwjIbTAfjIoc86MoLj3y3BxHNuc8Pmh4IgDOQsoh9J3rKrd1We/jQBpNP6Ri2UVwCKonGrWZzTCCJtKs7ILl/XnSYNEp3YR2dYEaw2+pLvl/0aHmtJ3zz8MLuwIy3hYwk8yAyUOQkYOjUjS1rF4Ymp4oMk/Q2RT26INSdTFkxVLo46ElQdTPrl6DpVV9pr9psinNXi/4hv1CPL1O0xSLAF3+fI2l3LZdfx6p83mDRoxnb4QAQQj4EpH/E17sZtn+ibbu0uUZ/A32ITCYByOGGJRXFLbnUGPFlpwHRbK4hjDRYw2eYWyUqIzsJ1jQIn5scKBiQIqsqQ4JcVQYU4ZuvQNTVFt3WrNyGnnFpgNiYoK17CCOQlkX9QlGoKxo01y/KorE9IMz01vCQrGsvGCM8sXOSVTkAMyk4LhQTiPZBNY4o7t1cPKKzVUGB8Ink7XFjlGOQWRCXR6D8T+tl81vWwscdwsk67qwR8zTUZ95Aw/RejLStgsbaVKgNAk8pywM6v7YEXVQUX6aEVjDtC/LYYWdp7vNvFBNkQnJeYZakxYHhYaKQSpLoiLIS/iIfoWoonryldIWCpqJS4NGNEer8LssawlFzM5Kz9WftWYmD2K/dfswOL4qobm0A/IPLrr9XwJRnHX2dB/lAg2qNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(86362001)(83380400001)(478600001)(71200400001)(8676002)(8936002)(6486002)(91956017)(2906002)(66946007)(36756003)(38100700002)(26005)(110136005)(122000001)(6512007)(76116006)(2616005)(38070700005)(54906003)(4326008)(66556008)(5660300002)(64756008)(107886003)(6506007)(316002)(186003)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2o0SS94c1pmMmkzZDl0aVh5WTg1N2oxNjJ3WExnditxSzcyU1o4VDRCem42?=
 =?utf-8?B?VjNheFRJT0NwbmdBbGlDSE1mTG1mWWtCQk90R3VVSGt3djZnQkVadlZzUHFC?=
 =?utf-8?B?VGRXVmxOOFdGTXZodUcwMFJpTzFrZnZZU2FuclBsd01tdFZMbjRzWldONHJx?=
 =?utf-8?B?MGo2UzdiVXJ3UU4vUmZ5OGdOWTBmTGJ0SGloc2xaWGg3S253RHF0Mk1vT3VL?=
 =?utf-8?B?MEJwalA0cStJVDNHZUFsZGhmSEw2SVd4aURFRG5xVzJ5NjBrOXRHdmc4L1Y5?=
 =?utf-8?B?cjdaclJSc2o3STQvTUxpejVxbnFmWEVtZUNjbDBEYXQrb1JZc1NKVEVqU0Uw?=
 =?utf-8?B?NkFCUVd6aEtySTVCRDlZSGMxNXNsSzJrMStjWWZyU3AvTkk3RWpvSjZMUHlw?=
 =?utf-8?B?MXo3eEhnZ3pmbXcxNndjeEREQzVRMnlROE80OUVpS2lIZ1NCV0lXeUh1dk14?=
 =?utf-8?B?eTE5MDJlL280TUdJU05SYmxpaE9odUd4SzIvSWhQcFZVNis5RTlzTzBVa1JC?=
 =?utf-8?B?aUtPYk1lTlMxM0NhUndTMWJkSVVBT0FHaDdJS0JObUZzQUpZZTNGOTE1bCtM?=
 =?utf-8?B?QU1WZS9rYXovYWQwZ3c1dDRTeUpKUDdDYmpLM1kwL0NsL2prWlRneVU1SDlU?=
 =?utf-8?B?NGZEb092dXRzRUNoZk1NRVZYdHROanJ0SXNOZG0vU09pQ3JkT2p4S3c0NEp4?=
 =?utf-8?B?YWN6U0EyK3hUYVEzTEllTlFwNXJpQWxEbkVkTkxJNExKYUgxa2VRWXJTQlV0?=
 =?utf-8?B?NjBqb25ueStEeWlmZXJRTU85QzlTUTVGWVRhMTJKUDQ4K0YxN2RXWkNuOHpi?=
 =?utf-8?B?ejZFMHpCL052REc5MVMzeDRrVnZuWEVUNVVpWFM4cUZ2c0VISVNaMWordWtM?=
 =?utf-8?B?UndKOGFML3dENEl0dmU2dVV3L2tVQkJvQmxhVEpUZ0lnVjhzWlVDZGN1UFBT?=
 =?utf-8?B?dHdkTUc2Qng0UUhaRWFkUjBpTkZvZEtCeGxpMmVmRXdNd3JtSEZ3azVadjMy?=
 =?utf-8?B?RlQ0RFVhZEliUGVDMkc4bEFDaFlGb3JhYk1vdDFHSFdOZXJxWU9KSUw5TGJZ?=
 =?utf-8?B?Q3pHNmtiSmYvcFFpYk0wUkdoaW5aTDdvdnI4S3E0VW50MFBadTNPMDBmV3pK?=
 =?utf-8?B?MzVDaFlaQTlqME1hR2ZCaFZXMHBtOStrSnBWam8rRkNFKzAyOHNkUS9CZmxZ?=
 =?utf-8?B?UnpkSWZGRGNuandZdFhCSUVMV2FhT1E3Yno1VVp5VGRQaWRndmlvcUtBSm9Z?=
 =?utf-8?B?RERNeXg4eTRDRnIyMUxzSFlHL1NnR1ZHc05MT3AzTlp0aTBYQ2k1VVlnTkNB?=
 =?utf-8?B?NXU5d25ZR0ZQUHpUQnBsa1pMeGRPTEUyOHFDUG4rNmRnK1RUOThqMkdqekJt?=
 =?utf-8?B?VjhYeWRoc0UrV09TQmloN0hMa1I0dUM5ZlJ1d0wwVkdNQTdJcUNoWFdiWnE5?=
 =?utf-8?B?ZmNyTnlZTnhka0orREYxYzNsT0JBT200OXY3UmU5V1Vzdjd6VlR4aXlGSVg5?=
 =?utf-8?B?Y09TOTNPdEViMWNxTEV0TnRBRGRBOVBKSUJIdEdNbTdjV3daK0tXMG9rc09r?=
 =?utf-8?B?SlRxTDc2ck9pMmhXRnZJaGZXL0F4eVhFS09sdlpwbnROUi9EOXFKUWdncWto?=
 =?utf-8?B?Y01keXF5V0wrUUdrZTVidU5Wc1l6RS9mN0gvcmUvUVd0ajN6MzU5d0c4MzZa?=
 =?utf-8?B?aXdRQ2YrUG1rVHZKcGRQMGlBSXJ6YjJvZk40MjgwS1UyV1lLWDlaeU45RGsv?=
 =?utf-8?B?cWlSOGNoK3NNMCttRmJzN1ZLek5aWFV0UWFYYncxZmtUSytvVFQ3c2lOaFpJ?=
 =?utf-8?B?WkIxdDV1b0dIQkU5M3VXdz09?=
Content-ID: <10FE99346EAA2F4E954CC05455679EC1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3354142e-5ab1-4aa7-46e3-08d977d8a82b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2021 23:37:46.6466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7yFYITAOpA6ZNQotOQLucjblBK6DAKgx+EBgLw4fjkQbH1Hb1oHHqG1JikY5A5iGpktK1wdc1UtlrArB9I4dj5NrZzbGwxO4T6P9xVVxMxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3278
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 2/2] ice: add TTY device
 for GNSS module for E810T device
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
Cc: "Mishra, Sudhansu Sekhar" <sudhansu.mishra@intel.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-09-13 at 12:11 +0200, Karol Kolacinski wrote:
> Add a new ice_gnss.c file for holding the basic GNSS module
> functions.
> If the device supports GNSS module, call the new ice_gnss_init and
> ice_gnss_release functions where appropriate.
> 
> Implement basic functionality for reading the data from GNSS module
> using TTY device.
> 
> Future changes will introduce write functionality.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>
> Tested-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |   6 +
>  drivers/net/ethernet/intel/ice/ice_gnss.c | 373
> ++++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_gnss.h |  42 +++

Though you add the file, you're not compiling it:

ERROR: modpost: "ice_gnss_is_gps_present"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_gnss_init" [drivers/net/ethernet/intel/ice/ice.ko]
undefined!
ERROR: modpost: "ice_gnss_exit" [drivers/net/ethernet/intel/ice/ice.ko]
undefined!

Adding it to compile, I'm getting a bunch of issues:

drivers/net/ethernet/intel/ice/ice_gnss.c: In function
ice_gnss_struct_init:
drivers/net/ethernet/intel/ice/ice_gnss.c:131:25: error: incompatible
types when assigning to type struct gnss_serial from type struct
gnss_serial *
  pf->gnss_serial[index] = gnss;
                         ^
drivers/net/ethernet/intel/ice/ice_gnss.c: In function
ice_gnss_tty_open:
drivers/net/ethernet/intel/ice/ice_gnss.c:168:7: error: incompatible
types when assigning to type struct gnss_serial * from type struct
gnss_serial
  gnss = pf->gnss_serial[tty->index];
       ^
In file included from ./include/linux/tty.h:10,
                 from drivers/net/ethernet/intel/ice/ice_gnss.h:7,
                 from drivers/net/ethernet/intel/ice/ice.h:69,
                 from drivers/net/ethernet/intel/ice/ice_gnss.c:4:
drivers/net/ethernet/intel/ice/ice_gnss.c: In function
ice_gnss_create_tty_driver:
drivers/net/ethernet/intel/ice/ice_gnss.c:264:32: error:
ICE_GNSS_TTY_MINOR_DEVICES undeclared (first use in this function); did
you mean ICE_DFLT_MIN_RX_DESC?
  tty_driver = tty_alloc_driver(ICE_GNSS_TTY_MINOR_DEVICES,
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~
./include/linux/tty_driver.h:338:22: note: in definition of macro
tty_alloc_driver
   __tty_alloc_driver(lines, THIS_MODULE, flags)
                      ^~~~~
...

Not sure how this was tested.

>  drivers/net/ethernet/intel/ice/ice_main.c |  14 +
>  4 files changed, 435 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_gnss.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_gnss.h

<snip>

> +/**
> + * ice_gnss_create_tty_driver - Create a TTY driver for GNSS
> + * @pf: Board private structure
> + */
> +static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf
> *pf)
> +{
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct tty_driver *tty_driver;
> +	int err;
> +	u8 i;
> +
> +	tty_driver = tty_alloc_driver(ICE_GNSS_TTY_MINOR_DEVICES,
> +				      TTY_DRIVER_REAL_RAW);
> +	if (!tty_driver) {
> +		dev_err(ice_pf_to_dev(pf),
> +			"Failed to allocate memory for GNSS TTY\n");

nit: This can be one line

> +		return NULL;
> +	}
> +	/* Initialize the tty driver*/
> +	tty_driver->owner = THIS_MODULE;
> +	tty_driver->driver_name = dev_driver_string(dev);
> +	tty_driver->name = "ttyGNSS";
> +	tty_driver->type = TTY_DRIVER_TYPE_SERIAL;
> +	tty_driver->subtype = SERIAL_TYPE_NORMAL;
> +	tty_driver->init_termios = tty_std_termios;
> +	tty_driver->init_termios.c_iflag &= ~INLCR;
> +	tty_driver->init_termios.c_iflag |= IGNCR;
> +	tty_driver->init_termios.c_oflag &= ~OPOST;
> +	tty_driver->init_termios.c_lflag &= ~ICANON;
> +	tty_driver->init_termios.c_cflag &= ~(CSIZE | CBAUD | CBAUDEX);
> +	/* baud rate 9600 */
> +	tty_termios_encode_baud_rate(&tty_driver->init_termios, 9600,
> 9600);
> +	tty_driver->driver_state = pf;
> +	tty_set_operations(tty_driver, &tty_gps_ops);
> +
> +	pf->gnss_serial = NULL;
> +
> +	tty_port_init(&pf->gnss_tty_port);
> +	tty_port_link_device(&pf->gnss_tty_port, tty_driver, 0);
> +
> +	err = tty_register_driver(tty_driver);
> +	if (err) {
> +		dev_err(ice_pf_to_dev(pf),
> +			"Failed to register TTY driver err=%d\n", err);

nit: This as well

> +
> +		tty_port_destroy(&pf->gnss_tty_port);
> +		put_tty_driver(tty_driver);
> +
> +		return NULL;
> +	}
> +
> +	return tty_driver;
> +}
> +
> +/**
> + * ice_gnss_init - Initialize GNSS TTY support
> + * @pf: Board private structure
> + */
> +void ice_gnss_init(struct ice_pf *pf)
> +{
> +	struct tty_driver *tty_driver;
> +
> +	tty_driver = ice_gnss_create_tty_driver(pf);
> +	if (!tty_driver)
> +		return;
> +
> +	pf->ice_gnss_tty_driver = tty_driver;
> +
> +	set_bit(ICE_FLAG_GNSS, pf->flags);
> +	dev_info(ice_pf_to_dev(pf), "GNSS TTY init successful\n");
> +}
> +
> +/**
> + * ice_gnss_exit - Disable GNSS TTY support
> + * @pf: Board private structure
> + */
> +void ice_gnss_exit(struct ice_pf *pf)
> +{
> +	u8 i;
> +
> +	if (!test_bit(ICE_FLAG_GNSS, pf->flags) || !pf-
> >ice_gnss_tty_driver)
> +		return;
> +
> +	tty_port_destroy(&pf->gnss_tty_port);
> +
> +	if (pf->gnss_serial) {
> +		struct gnss_serial *gnss = pf->gnss_serial;
> +
> +		kthread_cancel_delayed_work_sync(&gnss->read_work);
> +		kfree(gnss);
> +		pf->gnss_serial = NULL;
> +	}
> +
> +	tty_unregister_driver(pf->ice_gnss_tty_driver);
> +	put_tty_driver(pf->ice_gnss_tty_driver);
> +	pf->ice_gnss_tty_driver = NULL;
> +}
> +
> +/**
> + * ice_gnss_is_gps_present - Check if GPS HW is present
> + * @hw: pointer to HW struct
> + */
> +bool ice_gnss_is_gps_present(struct ice_hw *hw)
> +{
> +	if (!hw->func_caps.ts_func_info.src_tmr_owned)
> +		return false;
> +
> +	if (ice_is_e810t(hw)) {
> +		enum ice_status status;
> +			u8 data;

Indentation is off

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
