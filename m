Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2E38299CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jan 2024 12:52:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3342983BC2;
	Wed, 10 Jan 2024 11:52:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3342983BC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704887525;
	bh=n9xOtzjI7x0MprrzK8OVH2VPcziE1LekFfqO0rGpeI0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8YiQav+UyWqX4fOVtdeuJQVRtGrUBTLd2/6ld3AFrP8kkRvagKQI2dTSuE5dOM32m
	 wCOpE7dRf7uaeQUPwCDHliK6C7cMEZy/82eW5B/Aj7D15Wd6QaKOILpgUCTd3/uMh5
	 nj8w8KSR9ec6juAHCpCyMHNnfvF0crQXomsg7B8qsxI/SAbt3sx+Y4ZgUEHp7jRDj+
	 /APBPFHlVQnNRA2MBWnULmWdXqHUbWNARbYxMVNatkWf/H9sg+XUKSloDGtpxS8NiD
	 ndEOKtcn/AkeR79Urmf7iGQLSh7QHp9hprh2PFh3GcXKDcuc8wfVLTwoNjaWFf3HFF
	 3Ej0BbIVA3y6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nEr2eGeGEl02; Wed, 10 Jan 2024 11:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0D9C8132C;
	Wed, 10 Jan 2024 11:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0D9C8132C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E09261BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 11:51:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3FEF41E47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 11:51:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3FEF41E47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RzmO1lR0zCQr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jan 2024 11:51:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0176341E12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 11:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0176341E12
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="484674590"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="484674590"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 03:51:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="731833231"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="731833231"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 03:51:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 03:51:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 03:51:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 03:51:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L+qAjOy+Erxr5L4jzvyBv8OUzcuwzR6EAv8JSHtWxyBH+eISzrB6TUWvfgwQTi/B+vxnPRSIwSlzNeWpT4KjplJb8/AhqaOyE4VlNPNNjBZh8kTr0kv2KuikgvL3rJU+PGeTjqGwQtcC7WZqOsptqzE9gqNI12P1uq2o0ngmHjqsUMKMjtRhozhcNU1yNWalUV5i25kkfN6cWuIwQa+Ueyz2dwILEVfHbISyPGzcsjxIVoUqoqVAszwsOp8SaAtXyE0aV0KP0/nvi1CcTebHKEPGrQTXBtZy0qqZzg3eMxtE4fZI7xbF7uNPfJDaeGSMF0pVlZEnsmr6EQf7axcY3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n9xOtzjI7x0MprrzK8OVH2VPcziE1LekFfqO0rGpeI0=;
 b=Q+HqCrcAqaQWxdQJ0spHQJgPdyhpxr4pT+lZ205aIl2chcA3PHWADG3olPqTEjOAtNCPBaNBgdoxPC4SNGDz+HyPHsogBYWJuaGNVXOKVRIhWIiVz22qhSgBa1fUVdy5dr0tidace9P+UlZ7YVaEq3+0Cv3QKAjBEU2WkUNm+qk9pvg3vWhynFvVOSwkxbZof+fmabORK29e3tOfU5DWN2wXL14DdB48OYzdZTdxxzLj8d6dhxFWLhlE6Pl7D5/JGXQTdsrM2/rGycbZ0wrxj/Eh7QwKm0/NK+6RAld0Sb+i8OpVm+gAvyXCPgqaCXR6MM6jb21sb7l5tqxozqDZYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SA1PR11MB6709.namprd11.prod.outlook.com (2603:10b6:806:259::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.18; Wed, 10 Jan
 2024 11:51:53 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4089:f53a:50ff:2482]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4089:f53a:50ff:2482%7]) with mapi id 15.20.7159.020; Wed, 10 Jan 2024
 11:51:53 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v2] ixgbe: Convert ret val type from s32 to int
Thread-Index: AQHaP8On2GudNjqqmEa/hxkj9SQmCLDLwqYAgAczFoA=
Date: Wed, 10 Jan 2024 11:51:53 +0000
Message-ID: <DS0PR11MB7785D03E09AC1DFA9F0D71C7F0692@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20240105103120.393911-1-jedrzej.jagielski@intel.com>
 <5221bfaf-31bf-630f-9036-284c83c3eb76@intel.com>
In-Reply-To: <5221bfaf-31bf-630f-9036-284c83c3eb76@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SA1PR11MB6709:EE_
x-ms-office365-filtering-correlation-id: fdfb793e-ec43-4857-ea64-08dc11d289cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VIbojTR/fTuiklyxx3o31I+cvVVhgppaSmrv3K0q6gu4YytDtQsT5vTAcSOesSBSKDtJgrurERB9M2d0AzqIh/vBDM9p8kJ2UARUv9+lQEHKtbjbIVcxjActvMveGvt8+fSvjvMTyloyaNxpNVAhXQK91BkuIO8zmZUTsCwnATOienIcxyBX2uez4rX7gvEFWkRUtkL9bDEa7vsoHgraDv8gDk+spxvgsHpPEKHBUQ4Q/ys69l6icO/CeYr4um8rqFfr71mqAYU3gTpnd595mod319YsEJVDE173IXhEu3hpmrSDYeeHPMaUQxAQdUObiQnvkGxAh0oDeghFR8O3FSg4AtY818zFQtAHiwUfZoI3S0EveCcAHq+S4aixddylHpRCsDSBi6QerW6tZauZ7bTGY4LC4Xev/Yt8578PMVIv7c6oB2FKjIsGITMz7EwGhRCazIhqs8XSW6DfGV+djmyqXUR5V8zPvv5WLz9qwGX7pIs7UP3yWMk7qX9Nt+/v/0Se1f9n42OcT46ThGCkCVpQeC29v9Kg0y8KTWyEt+Cz2DYfdgeIVj4tHyUc3u5LCxRwP//8LS614NjjMyv+sJtPu0IgqAktiZXpQpkBhHgvBFM2KYW7GTPLIj3l6ZnJ5hcJlwg+riOFJPwEH64eJg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(366004)(346002)(376002)(230922051799003)(230273577357003)(230173577357003)(1800799012)(186009)(64100799003)(451199024)(76116006)(66446008)(66476007)(64756008)(66946007)(66556008)(54906003)(26005)(110136005)(316002)(71200400001)(82960400001)(8936002)(8676002)(52536014)(107886003)(4326008)(83380400001)(55016003)(7696005)(6506007)(9686003)(2906002)(5660300002)(478600001)(122000001)(38100700002)(86362001)(41300700001)(38070700009)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0d5YklHZkg0UVF2QmlSWHVRQmhBZnRYL1hoYmJxUTE4MTJMUEt6YlZNUWQy?=
 =?utf-8?B?UG9sb2NMN2lzMDkzY0JvNTc0THpLbk5IeHFDbFR2dTdjMlR0KzNyVHUrOVNK?=
 =?utf-8?B?Wk40M0YycW9IdE1BaTh3YmtUN05DYm51b2doUWN3SDBDQ3RkMlZWVk1xOVBD?=
 =?utf-8?B?QjNkVk9CZUYxSXFSeHByNHVTbWZ4WHg3L2NLcUNWRjF0a2RYNjZicXp0T0sy?=
 =?utf-8?B?S3UvRkRCTUpndFY1ZDJlREpkS3JEL3hOdkoyK3BhMDZFUVFzK3FEb09Sb3hJ?=
 =?utf-8?B?Z2xTUWxoRGxzcGFjY2JOQkUzVFFQZ2psUGlxZjBVSnN1OHFrN0FsZGN1L1ZD?=
 =?utf-8?B?bUQ5bDNRaXUzZXJKTnFKUG5QNFNJb21wRk9jRkY2YnZjWnhYMGJlZWxScEJw?=
 =?utf-8?B?dWVaeG91RjFFUi9GQU81enFtK3ZQSFpSUFZFUlprcVRwREZFeTU2UlRaaFhq?=
 =?utf-8?B?OGNrb3puY1JXRDJHWm1pbDQvN1FPTnFZdFhYeXNwazNIZ2s3L3k4eStZZ3VU?=
 =?utf-8?B?Rk9kQ3hzQms5Rk9QU2FuYS91NVFYNGlqUlRzVEIrdVJRQVhRZzF0L3E1ckp5?=
 =?utf-8?B?T0xqSURvT1Jhb003ajhydVdrVGJVaGRrcEVGNUo3dUlwNUdmNWtqZExmaEdC?=
 =?utf-8?B?M05IREluUjBkZVFkL2ZJNjhLRTZEOFpTdTcwclU2RWJRbUN4bGNoWEcwdEd4?=
 =?utf-8?B?VlJCL2x5VjMwVXpPbEJaUUxzSkxxWWtvSFlabFlPbFc1bGp1VGhWR0lMTDAx?=
 =?utf-8?B?Mkp4L2JPUzJvQnNsazdxTUtqcXVsZkpzdHZnd0JKRG1UclVYcUgxRGJiNnM3?=
 =?utf-8?B?TWo5VlZzQktIYnoxZXhRc0pYNENFZW5vbVJJcXFmZE9mWXFXWk96RzhMYWx2?=
 =?utf-8?B?R21jRER0MmszSGxRamhKN0JGRm5BdFM3U09JWGNsZDN3Z0U4UDRWZ0dlWVph?=
 =?utf-8?B?czhhcTlIY3V6WGt6NzdQV1VuaXRLWW1MbUE2QitmbEtSaDFoVjFiVHV5Zmkz?=
 =?utf-8?B?elE1QUdlcDFZVzFvZkFJMDk0TWc0TmRGekE3ZHRDVENpYU5Mbm4zNG41VFUr?=
 =?utf-8?B?M0ZFTENzeFhIVDZ1UVhmQ0ZoNDRUeFRqVzBJTHV3Zm9PdkJLOGVaendGYktu?=
 =?utf-8?B?VmhNdzhGdUw4WitHc0FmdEFzaUkvWkJQUFBOMVYxV3QvTlNtbDRGY0JUcG5h?=
 =?utf-8?B?blhyUEZoWjZKTTFZR1o2dG0wLzdvaEJNREMyMEVDOS9rcnFrV1BRL29ud3Rn?=
 =?utf-8?B?Q20xWEVFTnl0QkxXdlZnVmlwTU96QnFsOGJnYnU4MDNNTkdSWDVwNWNtWVdG?=
 =?utf-8?B?RFBhWlU1UVRGa1gyZ3Z4T1V1MG1CWXBnaWc1c1JpUUtWZjhBMHlXa0pVL3RF?=
 =?utf-8?B?RWRoaG9EMHhYVWV5RzN4cmVOaWxja2hiS296djE4STBwMVE0WmNWT2lQOUlC?=
 =?utf-8?B?NnJveUMxRjgzdTVRamRQd05scTY1a0JDcStyVW1QUVcvRmtQcmN4bnJnZ1J6?=
 =?utf-8?B?YndDNjhIWXB3N0ppSWp2VlN1NE1vdThYa2VnQThYR3dSekRtMFBJZmxYMTJJ?=
 =?utf-8?B?OVVQRDJHZ08rRlVaNDliWmpBaERKOHl1cFRmeTZWRGtZNUdZTDZhMy9vczBZ?=
 =?utf-8?B?MjlDeUliR1BJZjFoUVovL0V2VndZaGY4YVpycFVyTVNRMkhkblhUZkEyWWNa?=
 =?utf-8?B?VzNPR0lCbDJPNHpsY25yN2pzREJweGJHVnkrS0JBQUJsdkh1dFBIMldMMmNO?=
 =?utf-8?B?M2JnQ1gwc05YTHBZL0xoWjcySFFTZi9vVEx3bS9NcGIvM0Z2Tlc0ZitLQXVx?=
 =?utf-8?B?NTZLSXUxcGxmZlM4VDhQOURQRGNPbXVlUDA4anpFdVZNNXNnUytBcWltMDBL?=
 =?utf-8?B?REI2dFJud0lTZ2JXOTF5cnVOV2Zubmo1Q3dqM1lxaVBzYWFIVzk2Qnc2d2pX?=
 =?utf-8?B?ZzNvQlFQOEM2UnRmZjNYeEVreS9wa1NWK1NKZzJJNUsvUnYvY2hLYUxndjNR?=
 =?utf-8?B?NDdKZjRsajNyeGV0Nmc2dzNJa0IycnVKSmFhcFdCSk9ZcVIwMVNyVnYyemVl?=
 =?utf-8?B?akgrWTlpM3BMcGNSZDNlaURveDV3bTJSYUxmZmRGNUd0QmlKRGFHazBmZGE0?=
 =?utf-8?B?aXFCaEFLeVZGM0doZW1QbTBySGZhcXhMZEFRbnVWcUNPZDJ0bzJydEVVTU5X?=
 =?utf-8?B?emc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdfb793e-ec43-4857-ea64-08dc11d289cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2024 11:51:53.2477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VQZmhh8qhx9unpHwYKHwYuHmst5s6eKoQXIE4peocDnUtYW1nyyzsxxKbSrWkZhzH5vj3adWrbP7aZ+iqURQmCoxfJRbw8kjhJqJ/4PZ4HE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704887517; x=1736423517;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n9xOtzjI7x0MprrzK8OVH2VPcziE1LekFfqO0rGpeI0=;
 b=kesPdKgnKO1udS6aWy54BJVAzXMwBGSu2fwMKJ4MIMXgGETJx5jNjALP
 oLR55YpqyhGqqxEck5++anqNBQ26avMmgQd+5OW4Cjjz4PS59REOPXVyo
 H0zyXx1acPsF2I4GUmVHmOLUMSYNuwEwAe3CARNidRmYOQcIhk9OM3VMj
 1CS64ax89ZxtpcSgu8aL/Oxe2Ot5CsfMU6eMl8cZGPRkmVqxTWXjFxTyF
 CeWJgTJQAsnP+oTlS+bIXB5+z7cXmp95TfkJ9EZTZ3E7Z43+EnTXDQtjj
 OfwuIzy510TiwHXIx0vxIqqYqGUfT+FhyZOoR8S1AAOhK1/zNln4pKC2c
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kesPdKgn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Convert ret val
 type from s32 to int
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPiANClNl
bnQ6IEZyaWRheSwgSmFudWFyeSA1LCAyMDI0IDEwOjUwIFBNDQoNCj5PbiAxLzUvMjAyNCAyOjMx
IEFNLCBKZWRyemVqIEphZ2llbHNraSB3cm90ZToNCj4+IEN1cnJlbnRseSBiaWcgYW1vdW50IG9m
IHRoZSBmdW5jdGlvbnMgcmV0dXJuaW5nIHN0YW5kYXJkIGVycm9yIGNvZGVzDQo+PiBhcmUgb2Yg
dHlwZSBzMzIuIENvbnZlcnQgdGhlbSB0byByZWd1bGFyIGludHMgYXMgdHlwZGVmcyBoZXJlIGFy
ZQ0KPj4gbm90IG5lY2Vzc2FyeSB0byByZXR1cm4gc3RhbmRhcmQgZXJyb3IgY29kZXMuDQo+PiAN
Cj4+IFN1Z2dlc3RlZC1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+
DQo+PiBSZXZpZXdlZC1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+
DQo+PiBTaWduZWQtb2ZmLWJ5OiBKZWRyemVqIEphZ2llbHNraSA8amVkcnplai5qYWdpZWxza2lA
aW50ZWwuY29tPg0KPj4gLS0tDQo+PiB2MjogZml4IHNtYXRjaCB3YXJuaW5ncywNCj4NCj5UaGVz
ZSBjaGFuZ2VzIGFyZW4ndCBtZW50aW9uZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLCBob3dldmVy
LCBpdCBzaG91bGQgDQo+cHJvYmFibHkgYmUgaW4gaXQncyBvd24gY29tbWl0IHRvIGtlZXAgdGhl
IGNoYW5nZXMgc2VwYXJhdGUgYW5kIGVhc2llciANCj50byBzZWUvcmV2aWV3IChzaW5jZSB0aGV5
IHByZS1leGlzdGVkIHRoaXMgcGF0Y2gpLg0KDQpPSywgaSBhZ3JlZSBpdCdzIGJldHRlciB0byBj
cmVhdGUgYSBzZXBhcmF0ZSBjb21taXQgZm9yIHRoYXQNCg0KPg0KPkFsc28sIG5vdCBzZWVpbmcg
Y2hhbmdlcy9maXhlcyB0byB0aGUgc2Vjb25kIHdhcm5pbmcgWzFdDQo+DQo+TmV3IHNtYXRjaCB3
YXJuaW5nczoNCj4uLi4NCj5kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94
NTUwLmM6MzEzMCANCj5peGdiZV9lbnRlcl9scGx1X3RfeDU1MGVtKCkgd2FybjogbWlzc2luZyBl
cnJvciBjb2RlPyAnc3RhdHVzJw0KPg0KPj4gYWx0ZXIgdGhlIGNvbW1pdCBtc2cNCj4+IC0tLQ0K
Pg0KPi4uLg0KPg0KPj4gQEAgLTkzLDExICs5MywxMSBAQCBzdGF0aWMgczMyIGl4Z2JlX2dldF9p
bnZhcmlhbnRzXzgyNTk4KHN0cnVjdCBpeGdiZV9odyAqaHcpDQo+PiAgICAqICBub3Qga25vd24u
ICBQZXJmb3JtIHRoZSBTRlAgaW5pdCBpZiBuZWNlc3NhcnkuDQo+PiAgICAqDQo+PiAgICAqKi8N
Cj4+IC1zdGF0aWMgczMyIGl4Z2JlX2luaXRfcGh5X29wc184MjU5OChzdHJ1Y3QgaXhnYmVfaHcg
Kmh3KQ0KPj4gK3N0YXRpYyBpbnQgaXhnYmVfaW5pdF9waHlfb3BzXzgyNTk4KHN0cnVjdCBpeGdi
ZV9odyAqaHcpDQo+PiAgIHsNCj4+ICAgCXN0cnVjdCBpeGdiZV9tYWNfaW5mbyAqbWFjID0gJmh3
LT5tYWM7DQo+PiAgIAlzdHJ1Y3QgaXhnYmVfcGh5X2luZm8gKnBoeSA9ICZody0+cGh5Ow0KPj4g
LQlzMzIgcmV0X3ZhbDsNCj4+ICsJaW50IHJldF92YWw7DQo+PiAgIAl1MTYgbGlzdF9vZmZzZXQs
IGRhdGFfb2Zmc2V0Ow0KPg0KPlNob3VsZCB3ZSBSQ1Qgd2hhdCB3ZSdyZSB0b3VjaGluZz8gKG1h
bnkgb3RoZXIgaW5zdGFuY2VzIGluIHRoZSBwYXRjaCBhcyANCj53ZWxsKQ0KDQpJIGFtIG5vdCBz
dXJlIGlmIHRoYXQncyBzdGlsbCBpbiB0aGUgc2NvcGUgb2YgdGhhdCBwYXRjaA0KDQo+DQo+Li4u
DQo+DQo+PiBAQCAtMTg2Niw5ICsxODY2LDkgQEAgc3RhdGljIHMzMiBpeGdiZV9lbmFibGVfcnhf
ZG1hXzgyNTk5KHN0cnVjdCBpeGdiZV9odyAqaHcsIHUzMiByZWd2YWwpDQo+PiAgICAqICBSZXR1
cm5zIElYR0JFX0VSUl9FRVBST01fVkVSU0lPTiBpZiB0aGUgRlcgaXMgbm90IHByZXNlbnQgb3IN
Cj4+ICAgICogIGlmIHRoZSBGVyB2ZXJzaW9uIGlzIG5vdCBzdXBwb3J0ZWQuDQo+PiAgICAqKi8N
Cj4+IC1zdGF0aWMgczMyIGl4Z2JlX3ZlcmlmeV9md192ZXJzaW9uXzgyNTk5KHN0cnVjdCBpeGdi
ZV9odyAqaHcpDQo+PiArc3RhdGljIGludCBpeGdiZV92ZXJpZnlfZndfdmVyc2lvbl84MjU5OShz
dHJ1Y3QgaXhnYmVfaHcgKmh3KQ0KPj4gICB7DQo+PiAtCXMzMiBzdGF0dXMgPSBJWEdCRV9FUlJf
RUVQUk9NX1ZFUlNJT047DQo+PiArCWludCBzdGF0dXMgPSBJWEdCRV9FUlJfRUVQUk9NX1ZFUlNJ
T047DQo+DQo+RG9lcyBJWEdCRV9FUlJfRUVQUk9NX1ZFUlNJT04gZXhpc3QgYW55bW9yZSBhZnRl
ciB5b3VyIG90aGVyIHBhdGNoPyBbMl0NCg0KU3VyZSwgbmVlZCB0byByZWJhc2UgaXQNCg0KPg0K
Pj4gICAJdTE2IGZ3X29mZnNldCwgZndfcHRwX2NmZ19vZmZzZXQ7DQo+PiAgIAl1MTYgb2Zmc2V0
Ow0KPj4gICAJdTE2IGZ3X3ZlcnNpb24gPSAwOw0KPg0KPi4uLg0KPg0KPj4gQEAgLTIwNjIsMTIg
KzIwNjIsMTIgQEAgc3RhdGljIHMzMiBpeGdiZV9yZXNldF9waXBlbGluZV84MjU5OShzdHJ1Y3Qg
aXhnYmVfaHcgKmh3KQ0KPj4gICAgKiAgUGVyZm9ybXMgYnl0ZSByZWFkIG9wZXJhdGlvbiB0byBT
RlAgbW9kdWxlJ3MgRUVQUk9NIG92ZXIgSTJDIGludGVyZmFjZSBhdA0KPj4gICAgKiAgYSBzcGVj
aWZpZWQgZGV2aWNlIGFkZHJlc3MuDQo+PiAgICAqKi8NCj4+IC1zdGF0aWMgczMyIGl4Z2JlX3Jl
YWRfaTJjX2J5dGVfODI1OTkoc3RydWN0IGl4Z2JlX2h3ICpodywgdTggYnl0ZV9vZmZzZXQsDQo+
PiArc3RhdGljIGludCBpeGdiZV9yZWFkX2kyY19ieXRlXzgyNTk5KHN0cnVjdCBpeGdiZV9odyAq
aHcsIHU4IGJ5dGVfb2Zmc2V0LA0KPj4gICAJCQkJICAgICB1OCBkZXZfYWRkciwgdTggKmRhdGEp
DQo+PiAgIHsNCj4+ICAgCXUzMiBlc2RwOw0KPj4gLQlzMzIgc3RhdHVzOw0KPj4gLQlzMzIgdGlt
ZW91dCA9IDIwMDsNCj4+ICsJaW50IHN0YXR1czsNCj4+ICsJaW50IHRpbWVvdXQgPSAyMDA7DQo+
DQo+dW5yZWxhdGVkIGNoYW5nZSAoYXQgbGVhc3QgYSBmZXcgb3RoZXJzIGluIHRoaXMgcGF0Y2gg
YXMgd2VsbCkNCg0KVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91dCwgbmVlZCB0byB0YWtl
IGEgbG9vayBvbiB0aGF0IG9uY2UgYWdhaW4NCg0KPg0KPj4gICANCj4+ICAgCWlmIChody0+cGh5
LnFzZnBfc2hhcmVkX2kyY19idXMgPT0gdHJ1ZSkgew0KPj4gICAJCS8qIEFjcXVpcmUgSTJDIGJ1
cyBvd25lcnNoaXAuICovDQo+PiBAQCAtMjExNiwxMiArMjExNiwxMiBAQCBzdGF0aWMgczMyIGl4
Z2JlX3JlYWRfaTJjX2J5dGVfODI1OTkoc3RydWN0IGl4Z2JlX2h3ICpodywgdTggYnl0ZV9vZmZz
ZXQsDQo+PiAgICAqICBQZXJmb3JtcyBieXRlIHdyaXRlIG9wZXJhdGlvbiB0byBTRlAgbW9kdWxl
J3MgRUVQUk9NIG92ZXIgSTJDIGludGVyZmFjZSBhdA0KPj4gICAgKiAgYSBzcGVjaWZpZWQgZGV2
aWNlIGFkZHJlc3MuDQo+PiAgICAqKi8NCj4+IC1zdGF0aWMgczMyIGl4Z2JlX3dyaXRlX2kyY19i
eXRlXzgyNTk5KHN0cnVjdCBpeGdiZV9odyAqaHcsIHU4IGJ5dGVfb2Zmc2V0LA0KPj4gK3N0YXRp
YyBpbnQgaXhnYmVfd3JpdGVfaTJjX2J5dGVfODI1OTkoc3RydWN0IGl4Z2JlX2h3ICpodywgdTgg
Ynl0ZV9vZmZzZXQsDQo+PiAgIAkJCQkgICAgICB1OCBkZXZfYWRkciwgdTggZGF0YSkNCj4+ICAg
ew0KPj4gICAJdTMyIGVzZHA7DQo+PiAtCXMzMiBzdGF0dXM7DQo+PiAtCXMzMiB0aW1lb3V0ID0g
MjAwOw0KPj4gKwlpbnQgc3RhdHVzOw0KPj4gKwlpbnQgdGltZW91dCA9IDIwMDsNCj4+ICAgDQo+
PiAgIAlpZiAoaHctPnBoeS5xc2ZwX3NoYXJlZF9pMmNfYnVzID09IHRydWUpIHsNCj4+ICAgCQkv
KiBBY3F1aXJlIEkyQyBidXMgb3duZXJzaGlwLiAqLw0KPg0KPlRoYW5rcywNCj5Ub255DQo+DQo+
WzFdIA0KPmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2ludGVsLXdpcmVkLWxhbi8wOGQ4Yjc1ZS1h
ZjgwLTQzOGItODAwNi05MTIxYjg0NDRmNDlAbW9yb3RvLm1vdW50YWluLw0KPlsyXSANCj5odHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXRkZXYvbmV0LW5l
eHQuZ2l0L2NvbW1pdD9pZD01Nzk1ZjUzM2YzMGE4MGFhMDQ3MzY1Mjg3NjI5NmViYzkxMjllMzNh
DQo=
