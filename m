Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1BC74B05D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 13:59:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 697A541B13;
	Fri,  7 Jul 2023 11:59:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 697A541B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688731174;
	bh=LdnP3JdlXZXVRlnDIrejq6S8J9AI6pHgBfAPGWU2NFk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rUFg1ztCzWFLfp5EZWOdE9D1dXkgMrX5HaPsWi2KxbbaG5O6CKFwjlbXQYNJBfvbK
	 DWUv2acX9JELNeUUbuDsnV7xdvU5WEdyPGxuXOF+GjvqsTSpl4BZ1C/zXLB/lK/+ma
	 WJQX9RVEzq4TZDERcKA1+DOZGSe6fJ4xFpsYmamLbiYU5PoQsBkGayaKBkSMafmKDi
	 LL/a3uEY5iDAH8Qr4YtFB2w/M5BzGwDjbmapZ3JyPfKcGYSuD29DjD2OO/cCrzB+nP
	 yxOymItdOZMgTLgUy9c6betGwUPty0P7Y67eThF4XCGGucEO32+aSYvpkqwgRcyzz7
	 qTRMaxn3pRKTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAFPHzYhGSLK; Fri,  7 Jul 2023 11:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BEF841A2A;
	Fri,  7 Jul 2023 11:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BEF841A2A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EFD81BF228
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 11:59:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40EF641B13
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 11:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40EF641B13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a9y5ENmk6khm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 11:59:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6010D41962
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6010D41962
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 11:59:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="394638214"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="394638214"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 04:59:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="1050522829"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="1050522829"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2023 04:59:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 04:59:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 04:59:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 04:59:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nZZF11yfyqVo5Lz2UaWFy6wQzWhRkYx/MlA1m51AAOdahJePnsonw2UPkrTZC5HkX2Z/mP6J5BajstyVMghBxPgxICLrVXOIQ0sn0D2kd1pKDE3oH59K3ylnpZcuBJ20KGjxIGHeT493Gzlz72oBKJSYByRoEWqC8+HyMJPiYBWZepk3yUk17AUZ+cRssz9Xwdn77X+8uBD0a7egKFTuM7rbjGGzuCJi4pHrFHaUsNlFZkkMw6Tlw3E1nzWnitBcIK3kNkjALzITIc2bBX8hByDNKcE1JpotU3iF54AN6n5HfRIgCQ0e4bwPsKB7v6Pddp2k9a3R+WP7avpPtetyHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfCOuG0VYXMtiQFgXa9XkKVr8QNTtHqiGz1QI5N/tzM=;
 b=oUbnaWQs4o9NioSgWtAbYSNal5lkYwjsSIPlBGmQQwhIpIHIgx7Z/DshDiAG4AknlTpBtVpJJlYxm9dTgL1ui5HtKGKfIAJTyN1iCbiEWlEADXU+QdaEQdY1uN/gOuwrGJGXw/Um2SAZoi3IpLAHdsU0IXhMDX7m4ZpKFSSWG0q5btlb2lUqDngkE1Ohg1naj43ejPhLSMyIXGZhyrn7mR97yPncjhmMtcZDYXtvNSNEBgpvPFxaPVxpX+txVtnlUtfC1VWK5GH78EzBhLI0HLF/x+69S0aD5hqbAfEb/ILyh9oVSEtJBe6DX8nUr8k+j1NtCLXkGhfb8jYdVQ/QZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL1PR11MB5351.namprd11.prod.outlook.com (2603:10b6:208:318::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.24; Fri, 7 Jul
 2023 11:59:21 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65%4]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 11:59:21 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 05/10] ice: process events
 created by lag netdev event handler
Thread-Index: AQHZo8WxbvOGpwOmoUadidng2lu0jK+uTTtg
Date: Fri, 7 Jul 2023 11:59:21 +0000
Message-ID: <PH0PR11MB5013002066C3EF9946058986962DA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230620221854.848606-1-david.m.ertman@intel.com>
 <20230620221854.848606-6-david.m.ertman@intel.com>
In-Reply-To: <20230620221854.848606-6-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL1PR11MB5351:EE_
x-ms-office365-filtering-correlation-id: 2f09dc17-92a2-49b8-1b90-08db7ee1998e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gxPDCQ+vY0X0FJsNOvEwrWkt4cjWpXaFJT/4tW8UUvLzo0nroZwqR0xAfgAN530bPoBP/nwCf+H1W+9r7AjjOWLNVN5nI4qU0WgPceWewzGHAiOJfA7zsyr8JTQ+pRA1KY5p6IxRhf45iw1iYhWxnOVeTEdT7kQrsePhinUbodTyw0GYp2rcWFBa7Uy2ZJwbSvERUqrMJ0D5M7seOz4rDAuvJEi+78Vr4QXTQIpvAb3jjk+l8T7Q1711pOF5YJvOrAzKKWwKiPnnfGSMwvqbZf6tETE11efm59TNAJ8SQMbpxNWqlrgTKV5XRG1b6IdLxzaXTqJRcZF/Jtu+PqBTZYtcwcetGQZ+KEuOm0kkKnnNI26s44/uxwd2avBfUHgcWrNB1Ed/qoPdcfRLCSp9Q4rh5/eIR1mmKWJTwnEBUSENtjigz0Ix5ANJmqdsnPQTlmrFer+i8QdAdctl3VDAAGlvrlklThqvPz6wtOSF5SGR/M/KffA0OtYpjKZICUCuWw5qiX63hefstyFJcGZGKAKnfQwt9AGfqX/abZlCgw7GoQzsw8ml1O3zL+mwpK7WvDAvj37llDSe6CtGY2z5Hetgr9TwNqEkoOtdUvXL60TnoHwYO3y6Yx4hRalFeczN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199021)(83380400001)(82960400001)(122000001)(33656002)(86362001)(38100700002)(55016003)(38070700005)(110136005)(54906003)(71200400001)(7696005)(41300700001)(478600001)(9686003)(8936002)(8676002)(5660300002)(52536014)(64756008)(66446008)(2906002)(316002)(66556008)(4326008)(76116006)(66946007)(66476007)(186003)(53546011)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WfSbXM8J6UP6ibbepnV11nDPhp8h2BToW7bNz1CJJ2E00MmFiqT/uvd+MCkd?=
 =?us-ascii?Q?qQKI6ADAuknxCi2wPIw+dt7tJvXGyRBGjMh1SI6h2MhsjC4Havx8LyIZngt3?=
 =?us-ascii?Q?TUd3PPKI6p1AA6HqZwAW6VH9tt3Um2gz4LDO+4KkTVdiMF3nteLI2SKf6ue8?=
 =?us-ascii?Q?oAf4KnifTqRDwU2I2cn18nGDqwlw8IDkw5245C1Q+pw81lJORJbffNysUYkJ?=
 =?us-ascii?Q?lu/BWqkzmgkpiAQ6LkKopBLoWqyw9EW1UUJDFF3d03FJ12G4C9Fk3xtKPLPH?=
 =?us-ascii?Q?dbTM8B8RvyEVyjNRw6VSsIe0T3ipOQh76Ns1qEbrO1OGu0UjD6KGyc+dOsK4?=
 =?us-ascii?Q?oECJE4SVwB2ugyC0vcEByhW9/9n3vgHmd180eIkN6L0pe3JVM80hffZNLl03?=
 =?us-ascii?Q?KS0tr0DH/aSfeX0UJIHd4uedThVrRfmLQM75yqrXoc7HHAz68Y64RU+lkA/Q?=
 =?us-ascii?Q?bH38uuHoiDns6ydRBIU2pvyIFL3UMuELiCeFBA7qHgICYLTiKNst4ku0j1Nr?=
 =?us-ascii?Q?ocsndeXGygmbX+CQXDVUQMt6b+LF6D0TDwAyN0TJp4B45eDqu/9jnWKFC3fR?=
 =?us-ascii?Q?ObhJiaaFtLP/SC+OQzO6f+7TiLCsgOy7dXBgHKbMDQQ4ZKfLQvItC+dF9PGC?=
 =?us-ascii?Q?LNCqjaG5ltCjmNacvn+93BugpWp3fnAEw9HHIS1X33qFJPruf4ApOE+DSWdq?=
 =?us-ascii?Q?DVLW4gG7XRXEUolgEY3wf+67av83MTpNyHnIKEn0KcSumgK3P4f7A0dS3efu?=
 =?us-ascii?Q?dOmdYKktPtdixqRbAIAo1lJYrX39ucfcj+GXN6Yn2NNoOrCdsTUlPUZ/hwU4?=
 =?us-ascii?Q?kOQiTIN1QFJlfXBLlbUnEgdaANpe4vf76inB9dcTk7FLjn3b+enKubzIKfjL?=
 =?us-ascii?Q?Vu7SfC6yZzDi1gY1ACNn0C9Ndjijobh8Af82kO1iV6o2TixNSqtb+luEA2XZ?=
 =?us-ascii?Q?DfUybKgoPnA9lFNaZ1W+swcyTnvVn3NW8FqQGXg+tCCGkOCvtK+NFPhfFvLP?=
 =?us-ascii?Q?HeISvDNTKJLJxz7FVdXMQhJeu8LDKM/oTYa3C0kmTmO/hB3DQKQbxIzMbAlG?=
 =?us-ascii?Q?U8z1UivGXxwm7pUMqD/lupotYEDq3iM8PhC204gPmgzNa/mDdLrtDCfynG2Z?=
 =?us-ascii?Q?bp0PC6ycmYGSF+6Xols9YapoiQqKNAcNDolon7zey9qHwOfdM9CmpHezq1AL?=
 =?us-ascii?Q?/IfGaywNrLCHH/iYvIBnTUYf0K+msOEW2UkCZYvqER1q0txWipMGBzfK2L4r?=
 =?us-ascii?Q?1DIYgkw+0m+3Bk9icAdsofEynWtljvbkgGHptn3A8V9XxBgwJf/OQVZwGpy2?=
 =?us-ascii?Q?2JVK7baodvmp1M7fGK/h/+eXXB6yAsV7naU+QfcsXRDV1uOzYgxvTaczi6Iq?=
 =?us-ascii?Q?76M87QLJYgty9f2XEPK/OLzTgrAiXvvJY/DDx0U2ICtqX5sRUZPZH3NiAwfv?=
 =?us-ascii?Q?tExvSdieCcu6woCI9Rf2iITTfxTY4Wl19WnSDbBMkcDqmfCSa2tEaAC4d/p5?=
 =?us-ascii?Q?PBcrZRrsjQEjM1ULLXi/qVKQs7DtSrGahjA6W+ONu7NacQHjogeiC36CcClv?=
 =?us-ascii?Q?hP4e2NTQuNc1l0nYkG9cNOCgdwPmfSbw6iOTVSGldux0UdWXdVgC+Xcpe2nI?=
 =?us-ascii?Q?Bg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f09dc17-92a2-49b8-1b90-08db7ee1998e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2023 11:59:21.1870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MiqdQtzQj3D4HQ6CuEOsGn0RzecJ7oJPOtvHr+2Zsxf3FK2X4s5OYUxlQVfDezAqLu4FfstKGDT2Eo832e08YBro6zRWE0ODQCIAOQlq+ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688731165; x=1720267165;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gxMzbK9Jf4eyi4Zv9EEl8gUibJx3WOc2UudcJ6WXJxU=;
 b=LNf0cGnrB0xa99IhbDzyqG/YHd0tK2mJQtgoHVEn6xavhxaVTmK0L4Ga
 rIxKK+2vTC+Gz3+kqU4E9Y4KHB6Z6MBauhzFbps1Xfhih5CarGW1jn4Md
 mzev2DIdLDlsExTGd004HnFJ4lAtxSGX/P+uRcix5egy5S0LFiLfcvsfL
 PGAYv2hf0N+53eK2nzCEwJ/1AAM4ukTCvJ8cQ2pf/NmwQUEdVlBCaCOUu
 QfZJzWIMFVfAlpMB342BOB55zzaQvIxg8CA+FZ2rANm85MRJ4J2z5NAMM
 CIwYh1AfVYajRntJcvsB9u1oHBNgy2PU4fXweIt68q+BUmgEoCzpsHX45
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LNf0cGnr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 05/10] ice: process events
 created by lag netdev event handler
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Wednesday, June 21, 2023 3:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bcreeley@amd.com;
> daniel.machon@microchip.com; simon.horman@corigine.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 05/10] ice: process events
> created by lag netdev event handler
> 
> Add in the function framework for the processing of LAG events.  Also add in
> helper function to perform common tasks.
> 
> Add the basis of the process of linking a lower netdev to an upper netdev.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c      | 559 +++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_lag.h      |   1 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  10 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +
>  5 files changed, 501 insertions(+), 74 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
