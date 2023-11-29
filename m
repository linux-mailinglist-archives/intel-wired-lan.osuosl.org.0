Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 541127FDF76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 19:42:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D800841BF0;
	Wed, 29 Nov 2023 18:42:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D800841BF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701283323;
	bh=ITrg3vrK7/OW5S0+CVaw+wa2P8zGyjZe2C9/7jHtUZQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lrqm9EdOpC4QfFrXsFaNK3Lut6QgMMrPqi1WUJG5Z7F39O6UoI3Te1AHGf+u09eL7
	 mouBnFL6b67MUDxMMvUF9wG34oeq8D2qyPqDB68X4zOfikctIVg02PDOeOrzJwUMr6
	 rS6fTTu98Oy24nMblHGwEoxMcK2sSGsb1rZ8Q06aS7HmmYR3Y3Xv5tKnn642aT/Uo2
	 Cyyp6yYiKian7O1M+QoYBBl2sDXP+4XzQ6MdbNBkWmEIIrmGPAZoBA3K+7q2VX7D90
	 zr0w39RXGFIkCxiUwU+iMYp5PoBEEQTMZuHP8BBw2MdL6cEHfDzjJUQa5HkpkAAQ8I
	 l2DpS18Tp3i0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7t__592BQHx; Wed, 29 Nov 2023 18:42:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A24441BEA;
	Wed, 29 Nov 2023 18:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A24441BEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC1AD1BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 18:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 917E481F73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 18:41:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 917E481F73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgQOIpneogXa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 18:41:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3445081E6D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 18:41:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3445081E6D
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="14766290"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="14766290"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 10:41:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="803386216"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="803386216"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 10:41:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 10:41:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 10:41:24 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 10:41:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsfTjczZBil2lsvJn2tlJkq7LMhjtYsf9iTHGtkt3B+PgFUK8vPU+0b91SCYjaaW1l1nWROl8h7R/aLAIlHGv2oQureFWaJyKfDFu48rXv9HJ5UneG0QDZDUxoCMGv/85XhgxA9bv/PzJlN8p3AKkS62lyh4bcyv45kpKTOmuOaKuk8sjJ6RRITWDQOLQD33G5f2TLFA/M59jHbA4vaIFNEp58lY5AJ/jhHKXYRWHDRdc9Xih0y9Xkf7jc+JlWzNmV78GyuNv9glU/alb6pgaKvi/gYx6PJC4VfNpPBHLBKwv5PLPY+X+ke8nR8Lj+AXzmPGCJKNcD3Q+PqD7Zh4Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M8vNrYr5NUSSSgCkYJE8JiCug74zzLXKk7PK2z+3FyY=;
 b=lxxozd4S3xsHwo9msNEk4p2K35L6wFJ/WQfzDVnlPgFv5+RBbqb7KAdkuN53BUzpKOjJGDSJsn5Cx9tTJDaiFHq38Oyn0bqZWyA0pWsK7trbJ2pzedELXcqnn3AsJ49qjogUNlRzvEJk9ARi7ZfwVNoduB2QtPvu+nuNFeinTcvL6Dl1jpT7gBRFkZIWnxt+qABvFEoFvWzZRwnNTjvN1KDJJ094xDmQDgYIl/RdefOLsIxPD7yii3pJ3re+JftNPOemRLOkwd/tH8/tw0AKZOK3loKHJQUJXVcFIcOG0e208r6e+gpjl8xnXYeT3Nqk62AwFgeOdLRxF3GSYDVpxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB6814.namprd11.prod.outlook.com (2603:10b6:a03:483::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Wed, 29 Nov
 2023 18:41:21 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.7046.023; Wed, 29 Nov 2023
 18:41:21 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v4] ice: replace ice_vf_recreate_vsi() with
 ice_vf_reconfig_vsi()
Thread-Index: AQHaIjMPt4mwhftudUK1xVDZIl3Y7bCRJl8AgAB8N6A=
Date: Wed, 29 Nov 2023 18:41:21 +0000
Message-ID: <CO1PR11MB50895D894B0DBE17669B7E44D683A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20231128194215.3318925-1-jacob.e.keller@intel.com>
 <45d5412b-d186-eda3-8bbc-6e80d1dfe450@intel.com>
In-Reply-To: <45d5412b-d186-eda3-8bbc-6e80d1dfe450@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SJ0PR11MB6814:EE_
x-ms-office365-filtering-correlation-id: 9063f8f3-1995-487f-67d6-08dbf10ac85c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PhtPfzWAo/GCOXlFoJB3kv8WHKy+kUeD4VmVkIHRPoh8CSJXXTADH6+581mFE3Z/Lx1RDbV7FB+oiHesFpkJlKC98222o7GGHJKz5zAbsAoAwomFYcOWtkYqm9+q7HyiTjF44O1WFSJkiFBgKPfJnr/gp1EXD3yaUieCwZ5GrQqa9Wrj41FhEV+mHQEmL6jlKhW9TRVVzCA9aZGtQDmf3skkvxOfkJjjNPyEIRp3x20SLQASIwZpydPbi0rbHSxEPvprzMJJdz7XVwR5EuzmgGkyI1UT6ovGc2lFa7v1ZEv3ZNeEkwdmx1G7HwW+PU42wGRmxvvKrF0zIrdprjQrQlUPG5D2WbCu98BZuVnKhY2JlQOM+xMqX/+9HJZqOqIHv1bzDErwf4v1CAtRA+dkeG1CT/Fk3AZKg7EWFqt3T+K/WZrfny1GDn50aS1aHDBG282IQTYt2HUsaT27u7ugwCT7pBfqmtTLTUALSwuTL0A8Iq+Ytpzz5nbwWjKtuONtVpfyxjR93KexnCwW+kT9nSsgxM95tHO2gwA8vlGeCZr2xjYsyV2jcOjGixibjOhGOSCOCtJonmuUC+xs26TjzveOnqr+toicfKueqDHvoNA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(346002)(366004)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(66946007)(66556008)(76116006)(316002)(53546011)(966005)(66476007)(66446008)(54906003)(64756008)(6506007)(7696005)(478600001)(9686003)(33656002)(82960400001)(83380400001)(86362001)(38100700002)(4326008)(122000001)(8676002)(55016003)(8936002)(5660300002)(41300700001)(52536014)(71200400001)(38070700009)(110136005)(2906002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXFTVUVoZFZrRVFlbnJhQWwzbkUrM1RJUWFMT2Q1K2hOTkpoUk5IcE5MOG9Z?=
 =?utf-8?B?VHdySm5URTh6OUloN3pwWVVieURwdVRUQVA5MnVDUW1zMVJ1WHpKU1ZUSWt2?=
 =?utf-8?B?Tjd5YzFYUVZUTVpYdXBYcDhZQThwVEJ3ZWN6dDFrVkxmTXRJR0lBRjJFSE9a?=
 =?utf-8?B?ZEdtK2FoM2NjOHNkSjl3Y1N4dVNuZDV6ZGFFeVE0U3BXbmpKNWFjQm1IeHli?=
 =?utf-8?B?R3c1T0IxdXhFVW9nMkQ3UVlRSFRRYXF6bHpqd1FLU2lvTlVMM0VZZ01lWC9Q?=
 =?utf-8?B?YmZVdENaeC9iSmgrc3FVakUwNVlUOWFLaGdlMmxjUWxSM01IMHQ1VnhaZ1Rk?=
 =?utf-8?B?elozWUFaYnR1OXBYRU1ONDNxc3JiWjRNSWhIWTdtZ0tsUU5lTUZoRm5lTmxH?=
 =?utf-8?B?NEJRR3JUNW5QTUI5UFBqaDNvVzF1ZGRCQUtOU0NxeGtZMnZPMXp4OTdHVGw2?=
 =?utf-8?B?YXVPem42U3BqZkRiTlgycDNHT2lzSzY4V3djMjdoUWlSUFRnazEvK1pJT1M2?=
 =?utf-8?B?dFpKYVpDUHM1dHpOM2d0TkZFZDEzTFVyYXBCZ3dJY2w4dGxPUTdnUHF4K2xZ?=
 =?utf-8?B?MmpreFFTaHAzTWNZeWVuQkpHVW9RSjhNMmxjSGwzbE1hYkViQStyKzZHWUdn?=
 =?utf-8?B?SjNGU2YwbHdlVE1pUGZOMG5ibXNwaE9HTkVCQ0Y5TWtqSXZ0YUR1elZMS0RC?=
 =?utf-8?B?M05TRm83OGdPYnVOMmc0ZHczakxZcFYwYWZYWGNFVnp4eDVWay9xNWp0dmpM?=
 =?utf-8?B?OG5keWZZTmtvaXBxTVZPUWo3aGYxbXN1dlpGQ096L0N2TkdvVFVITTlMZXZy?=
 =?utf-8?B?aGlpZHBoSTVCNjhnemlNa1N3dWxCOW4xVGt0NjVvRlVyZHM1VXN3Q1JzT0sx?=
 =?utf-8?B?YjVsNzJEYUlWRFBVdEw1MzNUYS9TSDk5MUJkeWZ3SEpYbkVobmRGQytSU0hV?=
 =?utf-8?B?NnF6TGt3SHk1MDAvTEZtRGRkNFozR28xMkt6WFZYRnEyTVJ6RW1xWVZ4cVZR?=
 =?utf-8?B?K2ZuR1ZwaGMrZTRkTHJRNHdsTmhDbnJEalFTRE9xSXhocG1xU1lKY0FVdEZt?=
 =?utf-8?B?c1JwTmFTdjNrZFJDM1pOZVhKM29pRzU1aU0rdTFkcFp6bXorenJDdkhHcmpB?=
 =?utf-8?B?OTI3cUJtdHJWQ1FGSmNsYm90L0cwOFJvL0VHeFpsN1NFTmFMY1dhS1NQV1U3?=
 =?utf-8?B?Mzk2azVIVms3Y21md0hDTERnK0U2SUZ1cXJxSlowR3BVWlVoR045Vmx2Q2di?=
 =?utf-8?B?N1pYQmlweFc0S3dwMiszdWl4QVJnQVcxbzZGMlZtZ0s3d0RPaHdNdmYzNysy?=
 =?utf-8?B?YWJHYzUzM0ZZQ0h5NFpFMC9lMVUyRytZbzRPMzA3Y1htS2h4Q1NCVG83dDRG?=
 =?utf-8?B?WDQzQ1hpYUU4aERZWDd1RlE0OVhLb2duWXZxQUpDOWtSa2FOakFXSVE3NjZh?=
 =?utf-8?B?NWVIOWNEMjRuZ3YreHhTSzlndGwyV3ZLODR0RHF4UzlHSlNTWUlIVk9tbFE0?=
 =?utf-8?B?V3R5dEw0WVZ2OHVkditkVytQdlNxZDFhUEJaQkZySElxZnA1WlNvbkFyM2Fo?=
 =?utf-8?B?Q3pNRXRjcmxJMDc1SElSeTFsdG1BMGNsWXZpL0Z6a3RwM1B6NlF1Y0ZDRHl2?=
 =?utf-8?B?eGpzTFVYU0svQ2MrWlJJQ2thKzRleDFVQmtmTk5Xa0JsdklzRW1YTDNNMFBB?=
 =?utf-8?B?UXRaaHFJYytIdVZCS2pDN0VySm5LaXNvK1RjRE9WVkYzL3N6djBNNkY2QXJy?=
 =?utf-8?B?V09GY1RvWEVwWVRMbFMwL1JxR0hrMmVNcDBSTnpURERqMzdWYkgzYWIyRy9W?=
 =?utf-8?B?U2o1V1Q2dk5KZENJejA4disvZmk1L1A0RGpWNmtqbEdUK2xJMzlBa0VWWVpv?=
 =?utf-8?B?YWdoU2JNZERzbVRQcTY0NHFXR05ibTYySW1FQmdGNlZIUER5N2JGT0JZNitV?=
 =?utf-8?B?N1JqN0d5cnIybERLSlF1Zzc0NXF3YWpHZE1zOWFHWVNEQURvSUJsNTV2NnUx?=
 =?utf-8?B?MXptVnZVdENsd1BrKzdTalRseDF5cVBGNEQ4UzExOTdwbXFqRjJOdU9FdGx2?=
 =?utf-8?B?bkdsNnZVUVc4cHJsN0hzd1BKV2FtcVc4QmtOSkp6cWFtbHAwT3ROZjk3MFcv?=
 =?utf-8?Q?253vFaAsqP0wm+zRf64TnVa0l?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9063f8f3-1995-487f-67d6-08dbf10ac85c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 18:41:21.6356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sa/tiMTC6p58acJ5Pwg5PDwnHHw+TuoeOtp/9jUzoLR/6/dfatrWAy5NJ7MWhqa1wFs75CaymGQgr7K1nYhlU1SnTvDbdJc1tEP2iUSjiRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701283316; x=1732819316;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M8vNrYr5NUSSSgCkYJE8JiCug74zzLXKk7PK2z+3FyY=;
 b=Xi3sXp+Sj4xMNZErheKeOUdxgS/hlFgFzjz/V+D8BpmSYOMm64C44fli
 agojqKC36XNADn/Cets+CpEEp9m1S5mDcmGRiyoNF6tDd/al7zTofl7Ui
 xIsnxFKha6fulkasI45j/+HixKNkFJpK8eF3yn4jc7fHqWthZzkqzqrfi
 Lil/8J1lyv8LbKt7spCg8fpm33L5fAZPG/4XD2aXOWaETi5avGd4fqeJj
 c2q4Ja1Egeyo5CJwACEmKb6WlLqgbH17+TYx98GtnYx3kZZid6GteXPVx
 tuTvFC5iUVs1iJaFTQA2Prwdx7u+Xh7QerGdFlvh7xsBJi2iFFU/c0WN+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xi3sXp+S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: replace
 ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()
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
Cc: "Buchocki, JakubX" <jakubx.buchocki@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Romanowski,
 Rafal" <rafal.romanowski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBO
b3ZlbWJlciAyOSwgMjAyMyAzOjE2IEFNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUu
a2VsbGVyQGludGVsLmNvbT47IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtDQo+IGxhbkBs
aXN0cy5vc3Vvc2wub3JnPg0KPiBDYzogUm9tYW5vd3NraSwgUmFmYWwgPHJhZmFsLnJvbWFub3dz
a2lAaW50ZWwuY29tPjsgcG9yb3MNCj4gPHBvcm9zQHJlZGhhdC5jb20+OyBNaWNoYWwgU3dpYXRr
b3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+Ow0KPiBCdWNob2NraSwg
SmFrdWJYIDxqYWt1YnguYnVjaG9ja2lAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4g
PGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgUG9sY2hsb3BlaywgTWF0ZXVzeg0KPiA8bWF0
ZXVzei5wb2xjaGxvcGVrQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCBpd2wtbmV4
dCB2NF0gaWNlOiByZXBsYWNlIGljZV92Zl9yZWNyZWF0ZV92c2koKSB3aXRoDQo+IGljZV92Zl9y
ZWNvbmZpZ192c2koKQ0KPiANCj4gT24gMTEvMjgvMjMgMjA6NDIsIEphY29iIEtlbGxlciB3cm90
ZToNCj4gPiBUaGUgaWNlX3ZmX2NyZWF0ZV92c2koKSBmdW5jdGlvbiBhbmQgaXRzIFZGIG9wcyBo
ZWxwZXIgaW50cm9kdWNlZCBieSBjb21taXQNCj4gPiBhNGM3ODVlODE2MmUgKCJpY2U6IGNvbnZl
cnQgdmZfb3BzIC52c2lfcmVidWlsZCB0byAuY3JlYXRlX3ZzaSIpIGFyZSB1c2VkDQo+ID4gZHVy
aW5nIGFuIGluZGl2aWR1YWwgVkYgcmVzZXQgdG8gcmUtY3JlYXRlIHRoZSBWU0kuIFRoaXMgd2Fz
IGRvbmUgaW4gb3JkZXINCj4gPiB0byBlbnN1cmUgdGhhdCB0aGUgVlNJIGdldHMgcHJvcGVybHkg
cmVjb25maWd1cmVkIHdpdGhpbiB0aGUgaGFyZHdhcmUuDQo+ID4NCj4gPiBUaGlzIGlzIHNvbWV3
aGF0IGhlYXZ5IGhhbmRlZCBhcyB3ZSBjb21wbGV0ZWx5IHJlbGVhc2UgdGhlIFZTSSBtZW1vcnkg
YW5kDQo+ID4gc3RydWN0dXJlLCBhbmQgdGhlbiBjcmVhdGUgYSBuZXcgVlNJLiBUaGlzIGNhbiBh
bHNvIHBvdGVudGlhbGx5IGZvcmNlIGENCj4gPiBjaGFuZ2Ugb2YgdGhlIFZTSSBpbmRleCBhcyB3
ZSB3aWxsIHJlLXVzZSB0aGUgZmlyc3Qgb3BlbiBzbG90IGluIHRoZSBWU0kNCj4gPiBhcnJheSB3
aGljaCBtYXkgbm90IGJlIHRoZSBzYW1lLg0KPiA+DQo+ID4gQXMgcGFydCBvZiBpbXBsZW1lbnRp
bmcgZGV2bGluayByZWxvYWQsIGNvbW1pdCA2NjI0ZTc4MGE1NzcgKCJpY2U6IHNwbGl0DQo+ID4g
aWNlX3ZzaV9zZXR1cCBpbnRvIHNtYWxsZXIgZnVuY3Rpb25zIikgc3BsaXQgVlNJIHNldHVwIGlu
dG8gc21hbGxlcg0KPiA+IGZ1bmN0aW9ucywgaW50cm9kdWNpbmcgYm90aCBpY2VfdnNpX2NmZygp
IGFuZCBpY2VfdnNpX2RlY2ZnKCkgd2hpY2ggY2FuIGJlDQo+ID4gdXNlZCB0byBjb25maWd1cmUg
b3IgZGVjb25maWd1cmUgYW4gZXhpc3Rpbmcgc29mdHdhcmUgVlNJIHN0cnVjdHVyZS4NCj4gPg0K
PiA+IFJhdGhlciB0aGFuIGNvbXBsZXRlbHkgcmVtb3ZpbmcgdGhlIFZTSSBhbmQgYWRkaW5nIGEg
bmV3IG9uZSB1c2luZyB0aGUNCj4gPiAuY3JlYXRlX3ZzaSgpIFZGIG9wZXJhdGlvbiwgc2ltcGx5
IHVzZSBpY2VfdnNpX2RlY2ZnKCkgdG8gcmVtb3ZlIHRoZQ0KPiA+IGN1cnJlbnQgY29uZmlndXJh
dGlvbi4gU2F2ZSB0aGUgVlNJIHR5cGUgYW5kIHRoZW4gY2FsbCBpY2VfdnNpX2NmZygpIHRvDQo+
ID4gcmVjb25maWd1cmUgdGhlIFZTSSBhcyB0aGUgc2FtZSB0eXBlIHRoYXQgaXQgd2FzIGJlZm9y
ZS4NCj4gPg0KPiA+IFRoZSBleGlzdGluZyByZXNldCBsb2dpYyBhc3N1bWVzIHRoYXQgYWxsIGhh
cmR3YXJlIGZpbHRlcnMgd2lsbCBiZSByZW1vdmVkLA0KPiA+IHNvIGFsc28gY2FsbCBpY2VfZmx0
cl9yZW1vdmVfYWxsKCkgYmVmb3JlIHJlLWNvbmZpZ3VyaW5nIHRoZSBWU0kuDQo+IA0KPiBbaGVy
ZV0NCj4gDQo+ID4NCj4gPiBUaGlzIG5ldyBvcGVyYXRpb24gZG9lcyBub3QgcmUtY3JlYXRlIHRo
ZSBWU0ksIHNvIHJlbmFtZSBpdCB0bw0KPiA+IGljZV92Zl9yZWNvbmZpZ192c2koKS4NCj4gPg0K
PiA+IFRoZSBuZXcgYXBwcm9hY2ggY2FuIHNhZmVseSBzaGFyZSB0aGUgZXhhY3Qgc2FtZSBmbG93
IGZvciBib3RoIFNSLUlPViBWRnMNCj4gPiBhcyB3ZWxsIGFzIHRoZSBTY2FsYWJsZSBJT1YgVkZz
IGJlaW5nIHdvcmtlZCBvbi4gVGhpcyB1c2VzIGxlc3MgY29kZSBhbmQgaXMNCj4gPiBhIGJldHRl
ciBhYnN0cmFjdGlvbiBvdmVyIGZ1bGx5IGRlbGV0aW5nIHRoZSBWU0kgYW5kIGFkZGluZyBhIG5l
dyBvbmUuDQo+ID4NCj4gPiBGaXhlczogYTRjNzg1ZTgxNjJlICgiaWNlOiBjb252ZXJ0IHZmX29w
cyAudnNpX3JlYnVpbGQgdG8gLmNyZWF0ZV92c2kiKQ0KPiANCj4gSSBzZWUgbm8gc3VjaCBTSEEg
aW4gbXkgdHJlZS4NCj4gQW55d2F5LCBwZXJoYXBzIHRoaXMgcGF0Y2ggY291bGQgYmUgdGFyZ2V0
ZWQgdG8gLW5ldD8NCj4gDQoNCkhtbS4gSSBtdXN0IGhhdmUgZ290dGVuIHRoZSB0YWcgd3Jvbmcg
c29tZXdoZXJlLg0KDQpJIGRvbid0IGNvbnNpZGVyIHRoaXMgLW5ldCwgYmVjYXVzZSBpdHMgbm90
IHJlYWxseSBhIGZpeGluZyBhIGJ1ZywgaXTigJlzIGEgYmVoYXZpb3JhbCBjbGVhbnVwIHdoaWNo
IGlzIGEgYmV0dGVyIHNvbHV0aW9uIGZvciBmdXR1cmUuDQoNCldlIGNhbiBkcm9wIHRoZSBmaXhl
cyB0YWcuDQoNClRoYW5rcywNCkpha2UNCg0KPiA+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxl
ciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IENoYW5nZXMgc2luY2Ug
djM6DQo+ID4gKiBSZW1vdmFsIG9mIGZpbHRlcnMgd2FzIGEgc2lkZSBlZmZlY3Qgb2YgVlNJIGJl
aW5nIGZ1bGx5IGRlbGV0ZWQgYnkNCj4gPiAgICBmaXJtd2FyZS4gU2luY2Ugd2UgZG9uJ3QgZG8g
dGhhdCBub3csIGl0IHdhcyBub3QgaGFwcGVuaW5nLiBGaXggdGhpcyBieQ0KPiA+ICAgIGFkZGlu
ZyBhIGNhbGwgdG8gaWNlX2ZsdHJfcmVtb3ZlX2FsbCgpLiBUaGFua3MgdG8gSmFrdWIgQnVjaG9j
a2kgZm9yDQo+IA0KPiBJIGNvdWxkIGltYWdpbmUgZ2l2aW5nIGNyZWRpdHMgYWxzbyBpbiB0aGUg
Y29tbWl0IG1zZyBbaGVyZV0gOikNCj4gDQo+ID4gICAgZmlndXJpbmcgb3V0IHRoaXMgc29sdXRp
b24uDQo+ID4gKiBSZWJhc2Ugb24gdG8gY3VycmVudCBkZXYtcXVldWUuDQo+ID4NCj4gPiB2MyB3
YXMgcG9zdGVkIGF0IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2ludGVsLXdpcmVkLQ0KPiBsYW4v
MjAyMzA3MTIyMjI5MzYuMTA0ODc1MS0xLWphY29iLmUua2VsbGVyQGludGVsLmNvbS8NCj4gPiB2
MiB3YXMgcG9zdGVkIGF0IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2ludGVsLXdpcmVkLQ0KPiBs
YW4vMjAyMzA3MTIyMDQ3MzAuMzI2MzMxLTEtamFjb2IuZS5rZWxsZXJAaW50ZWwuY29tLw0KPiA+
IHYxIHdhcyBwb3N0ZWQgYXQgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtDQo+
IGxhbi8yMDIzMDUwNDIxMTgyOS4zODY5ODY4LTEtamFjb2IuZS5rZWxsZXJAaW50ZWwuY29tLw0K
PiA+DQo+ID4NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3Yu
YyAgICB8IDI0ICsrLS0tLS0tLS0tLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfdmZfbGliLmMgICB8IDM1ICsrKysrKysrKysrKystLS0tLS0NCj4gPiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmggICB8ICAxIC0NCj4gPiAgIC4u
Li9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYl9wcml2YXRlLmggICB8ICAxICsNCj4gPiAg
IDQgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pDQo+ID4N
Cj4gDQo+IGNvZGUgaXMgZmluZSwgc286DQo+IFJldmlld2VkLWJ5OiBQcnplbWVrIEtpdHN6ZWwg
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IA0KPiANCj4gPiBiYXNlLWNvbW1pdDog
MDM5MmU0ZDBjMWNkNTgzYzA3OWExODY4NWNkMzA4ZjhjZTkwMzc5Mw0KPiANCj4gdGhhdCdzIGdv
b2QgcmVhc29uIHRvIGFzayBmb3IgYSByZS10ZXN0IGFmdGVyIGxvbmcgdGltZSwgSSBhZ3JlZSEN
Cj4gDQo+IE15IHRyZWUgYWxzbyBkb2VzIG5vdCBoYXZlIHRoaXMgU0hBLCB5b3UgY291bGQgbGlr
ZWx5IGJhc2UgaXQgb24gY3VycmVudA0KPiAibmV0ZGV2L21haW4iDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
