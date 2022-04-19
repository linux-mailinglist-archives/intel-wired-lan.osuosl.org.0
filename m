Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C6A506D65
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 15:27:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECEFF410A6;
	Tue, 19 Apr 2022 13:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ysR2jMenbD6u; Tue, 19 Apr 2022 13:27:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B940F410A1;
	Tue, 19 Apr 2022 13:27:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 997481BF42C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82BA6612E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id miSgE1z42P2s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 13:27:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83972612E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650374830; x=1681910830;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=od9GqzzXxEf/afqTZV9pCj/RFTc+RJxqnuRgQ2M9AfI=;
 b=nTDOzY1ZlNz+QvAZ+x4btCrTTlsPqMOhTwBffLH7tV2CKPcgpiBVwg7l
 mm6QwPcEUQ2l3vdKfNCVSZA65w9+KvhQz1mdtZvuEVrvdj3SWDRaJv4bc
 6goSwPrM5z/M8bMLuLeHeS5kCEWld9NUktA6fU9MN3BtMeQuPjwN+b1JQ
 aWzBEb70AaiOBPaW+LxkDAU4MOJ2uIkHWd0W42bCfpPFc5jGAgP7Drgkv
 uRBif0UT4rq3JULJsQ6pchpS2rYwArHffVtMYuhJKOCcBIBy3D7eqYqki
 xacelHtgiB0UE3+NRHhH7TpgpOkPFTSokTuVkjYSwWw/fsEHWS+WSGKPg A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="245654865"
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="245654865"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 06:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="657640327"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2022 06:27:09 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Apr 2022 06:27:08 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Apr 2022 06:27:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Apr 2022 06:27:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Apr 2022 06:27:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+kwm83ubw+0R3SPx71xe8PDRK0dKXJU8Ftbf9b5KJqOJxoDxNqC/4zIVXYdEzxQzl12Ca5z1PUuDBzfDL0j/YSuAUxdDC4uX0uVtJIKBTeaV/Gu2oU5bID/Z1OSbP+tq2OzDkqtcgNs/BD5ThI43RX3IJFFzrHbQ7EKf8FySIBwwBZ/9t8P6fbCqWfd9T7wvWPhoJ6+e95+vLPl/74MMinTyc3PvY5Ta9XO45huwm6qGr7Uj1Ee/YdANKiKtG3/xJSt2VoDxvSYxmv7rEebAo3W17T/GVjOYlbrRIl6DTuYvJQF7Zep0+HDz5Z4ndLb4q7tjRVVj8wqwvMFd2QA3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=od9GqzzXxEf/afqTZV9pCj/RFTc+RJxqnuRgQ2M9AfI=;
 b=gBqnCZFopMnjdQYSThIIuJFhRqOHAMZobaPAg5yAdTqOr4A2TYg/K5gvXnPKjJM4wfSyVOHn/8pM5nJWKh3urMop1M86byg4KXml7aqNUxL2l7MVsboWxRiZ17D1oVAEQpnkjkR+A8OB2wD64PjzoWWBXkeBThyB2o1UZrX/L9cpyS6fMumnr6PBC+A/h/NSS7gJZyIX/QaMHd1dEzk7D5CJ7PXY7auP1LmkhDxuA3VET+QJ1gQOpH7T5Cw7o/enE9SDZMiTBBCqbIZIfS1CEwIeXq//0VX7pVavDi2jnxaNREIYzY0UrEiilKIsl/JoHeZaKJR7pBi5xlv9ze2yzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB4177.namprd11.prod.outlook.com (2603:10b6:405:83::31)
 by DM4PR11MB5328.namprd11.prod.outlook.com (2603:10b6:5:393::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Tue, 19 Apr
 2022 13:27:07 +0000
Received: from BN6PR11MB4177.namprd11.prod.outlook.com
 ([fe80::939:2e4f:72e9:94ab]) by BN6PR11MB4177.namprd11.prod.outlook.com
 ([fe80::939:2e4f:72e9:94ab%7]) with mapi id 15.20.5186.013; Tue, 19 Apr 2022
 13:27:07 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: fix PTP stale Tx
 timestamps cleanup
Thread-Index: AQHYT+ok70CPyvuDiEWmEDL9PL9P1KzxLhiAgAYG9uA=
Date: Tue, 19 Apr 2022 13:27:07 +0000
Message-ID: <BN6PR11MB4177CF618A7FB2654DC9690DE3F29@BN6PR11MB4177.namprd11.prod.outlook.com>
References: <20220414102358.13486-1-michal.michalik@intel.com>
 <280c31b8-9f70-a0b5-2450-510903bd0d4e@molgen.mpg.de>
In-Reply-To: <280c31b8-9f70-a0b5-2450-510903bd0d4e@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0382f1f3-20c7-4384-3e0c-08da22084ced
x-ms-traffictypediagnostic: DM4PR11MB5328:EE_
x-microsoft-antispam-prvs: <DM4PR11MB53284D90517179BCB8CA0DB8E3F29@DM4PR11MB5328.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Id39wzmHUWQaEQcOP02DAHnUMfHVWpdggz2GoU/TsWVtB7KUjsKtWUiD/oUfDR/rCadlc7J40NcD2Ax8aCyoLswcjrjrXjHtE2c5+OtQhnCGnPZ/xu/3rmfY3Imx5sPC3p0ceoHWQu1Ko5leT421SBlkhvw7QIpDJZ4GKeu4uuRy5R6tDDVJ8++XlbRzvPvuU+qTvWx5bkUdJwht9pfDL3zPidgIBh2NF9gGqxXeou8W1oIzZBxk3YMI1e1jjBOw0vHdbYBWFZ234lCkmET0/jHfZYLSh19fIRI9aVaMk8GuYJLcBh4I0pcrzAxB/XUJ3j65dLuptzIWkeGCTmxyOneEAfEoZ2KHxC8ykT73agY9i8Q0VwK1//oRirRz2qtdEHYUI0RnkTQ3uaYZk8mwlBFEWab2sVCkAhvPP86h63Ml4K8GGli6hd/uw/3LK9v4sS7OVSIQCfkWesHO7J3c2vnZjvPJsHLjxKVLFL7Sd5ueIqR9qr5yfepORDZXjORGj5ukoxQ349kv9BXwGbptXZV+ge6nFlepIsKxHnuTAdb+aAPPStLdQTOM20dwhsT89MkGEZfpK2PyjOhCsLRgopMtehxt+Y12aqLdKTogN4Rzy1wev6PyRdj7eEC7POZ22bUGRMtQEFu3N5I8Hcyeuh1neC+xTY9ERWDeZdH5+v+rahOZgMs05CCabcarYDO36G+fFjuBzGKIbntKqpWOaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB4177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(8676002)(26005)(66946007)(508600001)(2906002)(83380400001)(82960400001)(38100700002)(33656002)(122000001)(316002)(9686003)(66446008)(66476007)(66556008)(76116006)(64756008)(38070700005)(86362001)(53546011)(71200400001)(55016003)(7696005)(6506007)(186003)(5660300002)(8936002)(6916009)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXYwMXA4TXorajZZUEJGNnN4YUIrWktUZjBGeGpQT3d5WTlzTzR5UlF1NnN0?=
 =?utf-8?B?UGFjNmdEME5oYktHbk82a3RWQ2Nha25RQjJIcXVLbHNqOXpZbXQ0VEQxNGI3?=
 =?utf-8?B?MmlhNytSUkZrTnNOajhNMk9vYjFyTEFCWlNuUTFIcW10LzAxVEs2d3hJR2xP?=
 =?utf-8?B?ZEZrRUxlMkZGVXNZOGtQUUhiU2M0MDJOSUhneldJNEhaQkpNN2RISFdjZUZZ?=
 =?utf-8?B?d1RRVWdid0x2S29mVlhyZEZubmh3VUNrOTROZGt5NnFEeTJ6SENCak5BdFRo?=
 =?utf-8?B?R055a1Jxd016eXhmdGsyRlY3WEE0OEIyWkpjdmxKQnk4MlI2OXRMcFNPeUJh?=
 =?utf-8?B?bnl1VSs2cUZ6L0Vqc0M1NTR4Y2pUMmUyTEt4QUEwTVI3TGQ4TkM4SFZjTTR1?=
 =?utf-8?B?VWF4WVFPdU1TMFE2dGJ2N2VyOFZBV3JaMjM3azg3YVFWSmFDc0FsdTNhUGVF?=
 =?utf-8?B?YzVmUmdZUEFBaHJkcWZ3VzVobkkxdkZmbEFHOEhvbjA2eWtDdFZGNVVkckFS?=
 =?utf-8?B?eWY0eGlkTHRBQmI1NS9xNG9BZjcwWlNLV0JJYStMdnBuOGxSQzVJaC9Qb1pF?=
 =?utf-8?B?cE95NEJ1TWQ0Y0k5MmtKQlFLODQ5S2NFMWNveGp4Z3p2bDRhMFN2Y0pkckdk?=
 =?utf-8?B?ZFV6dWJad0pNQlZMQlNWVWlSZWpSalU4bWU4N2EwdzRRTnRMcVJyS2FTWXVZ?=
 =?utf-8?B?SW85TVJLWGcwNExhb0Rza0V0MzZnRVc4Z1ZjaUR6R1hoNktsTHI0VmkrQVBE?=
 =?utf-8?B?bUhialFKcXdWbHBvSlhIekQ5Z1JEWGIvMHVqRXp4dEYyK3FnZDkyR1A4a0hs?=
 =?utf-8?B?Mm4zb3Vtc0h3WEhkR21uaGZPbFNHL3BzcHF5dkZtK3N1ak42a1ZXMjJBMzB1?=
 =?utf-8?B?MFp2elVkZVdQL3BmSWFxeFB0R0ZsSjArY09xbERCNzN4MVJjZUpZSnNDVlZq?=
 =?utf-8?B?TkpoODlWR1VhWXNCUENZdWtZeHBXaWgrc2xkRk9mUWxRMmxmRlRMTllUTkcx?=
 =?utf-8?B?NE5hU1V4M2JEa3B5bVF0eCt3OEwyYzV4V2lLdVNqTkUvaTZnQXpvZnVmd2NF?=
 =?utf-8?B?K1V5QXkveU00NGtxSlFDNmpFeHBXdlVUMWduL1VzNXFDUWN0b1JZQklwUTZT?=
 =?utf-8?B?RkVPNTRiS0lDTHFzcUEvOHRjdXZHWHhKYzRKUm9DNlk4dkhmMENpNnRRb29z?=
 =?utf-8?B?dnBxS1FDdktUWnNlcGw4RndpOVJiOFdUN3JiNkdkNmI2MGVQRjc1dUZVeHNV?=
 =?utf-8?B?N3M2a1dYd1VYZkk4Z3lTQUVMenN1MjArSGEyVm90U3ZGQkxXQWFTM0l1SnRV?=
 =?utf-8?B?ekF4ZEF0b1lvNmpzNWdQRGhhMlVQa3JqMmowVG5yTDBkZGgwUzlNaTVFUytP?=
 =?utf-8?B?RWI5SUMvSTU2eVFTMXRoNHhaUWlRNmlXYkNCdllIa0Fxc1FQdThCV3RhOHhD?=
 =?utf-8?B?bGRNK2FaZGtzVnFQVFk0VWJ2OGl6NmVjV3k4Tkg3SFJtN2w2VWR3ZUhCb1M0?=
 =?utf-8?B?UXFOVXR0YktBSzNRdnU5d2oxRVRRMkIxaEl0SmFkU3NaR1BNR1g2eG5BR3hy?=
 =?utf-8?B?NWRBVVJQWG52Tk1abTBFNytBZTRweUV6UmFqb3lNZXpvZ3lOUTd5MEdIL243?=
 =?utf-8?B?YmdSUkJMK3ZXODZzTlN5ekltdDVkNWVXSjR5ZUdnRzFYZUZ0L05kYm00VWFl?=
 =?utf-8?B?NkxhcWQwaFArZ3l1QnQ2Y3FNMHhtNW9RbmlqM1M1QjYwRE1aMXQ4UFR3eS9u?=
 =?utf-8?B?SDFmclVUM0FCbWx0dnRTWFlBVVIraDZWY0FIeVhuckVQeUV2d0JmRVlOYjBo?=
 =?utf-8?B?bHRHbSswRlJ3dlFLeWMzOEtHY1FXSUYxSE5OMnp6Z0tCOUVNclVEZzBuV2JC?=
 =?utf-8?B?MmQrS3lJVU95L0NzN1VLV0h3UElHdkZmUEZrbUdERm5IdzZFNjZkWmpOSGRq?=
 =?utf-8?B?QW5yU1NsY0ZJSkQzLytJZStCL01lNWlBVTRSZk9UT0dFd2FjVFpOT3YxOU5h?=
 =?utf-8?B?RU9ZQlZFTG9xQWk2RDBobm1RUGlsSGZaeXozUHBreHdnOS9hVDJDZXVpZzhq?=
 =?utf-8?B?cTgxVEt5ajRXRDlXY2FjSVl5VWk4d1g4aENrU0lHRHpJamx2c1h0azQrRmlX?=
 =?utf-8?B?WW5hMm9xT3kxbUR3cytMOGtuSWM0enVHQkZJU215ZkFJN3dTNlVSUTBraHRO?=
 =?utf-8?B?dkkyY1VMcVZxOVlGb2lDaldhNTF6Mm5YamtKWGdVZHd6WjlnZkJNNlBiY1pl?=
 =?utf-8?B?V0xBWUFFOG5GMDV3SStma3hBYVlqV01NaEdoTjBTazZFaWdBakVtYk8yeWJC?=
 =?utf-8?B?UjR4UzBMYnpsZHlmdk1nWEVnSDlxZ3IxVzlFR1VhVjJ1UEFyVUlIME5zakVj?=
 =?utf-8?Q?WaqGUGFyGHcYIwVg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB4177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0382f1f3-20c7-4384-3e0c-08da22084ced
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2022 13:27:07.1576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ailn6TujqgRz9i97iU3EI0QrQgVLPkj8wpoeDXAFsYVolAROWmAYIgnmZVThFyTvgmLIXeAQmDhQiV64HKF/pTBUaL7EOw1BCPLprRE/iOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5328
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: fix PTP stale Tx
 timestamps cleanup
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwNCg0KTXVjaCB0aGFua3MgZm9yIHlvdXIga2luZCByZXZpZXcgb2YgbXkgZmlyc3Qg
Y29tbXVuaXR5IHBhdGNoLg0KDQpQbGVhc2UgZXhjdXNlIG1lIGZvciBhIGRlbGF5IGluIGFuc3dl
cmluZyAtIE1vbmRheSAxOHRoIHdhcyBhIFB1YmxpYw0KSG9saWRheSBoZXJlIGluIFBvbGFuZC4g
DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4gDQo+IFNlbnQ6IEZyaWRheSwgQXByaWwgMTUsIDIwMjIgNjoz
NyBQTQ0KPiBUbzogTWljaGFsaWssIE1pY2hhbCA8bWljaGFsLm1pY2hhbGlrQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFJlOiBb
SW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYxXSBpY2U6IGZpeCBQVFAgc3RhbGUgVHggdGlt
ZXN0YW1wcyBjbGVhbnVwDQo+IA0KPiBEZWFyIE1pY2hhbCwNCj4gDQo+IA0KPiBUaGFuayB5b3Ug
Zm9yIHlvdXIgcGF0Y2guDQo+IA0KPiBBbSAxNC4wNC4yMiB1bSAxMjoyMyBzY2hyaWViIE1pY2hh
bCBNaWNoYWxpazoNCj4+IFJlYWQgc3RhbGUgUFRQIFR4IHRpbWVzdGFtcHMgZnJvbSBQSFkgb24g
Y2xlYW51cC4NCj4+IA0KPj4gQWZ0ZXIgcnVubmluZyBvdXQgb2YgVHggdGltZXN0YW1wcyByZXF1
ZXN0IGhhbmRsZXJzIGhhcmR3YXJlIChIVykgc3RvcHMNCj4+IHJlcG9ydGluZyBmaW5pc2hlZCBy
ZXF1ZXN0cy4gRnVuY3Rpb24gaWNlX3B0cF90eF90c3RhbXBfY2xlYW51cCgpIHVzZWQNCj4+IHRv
IG9ubHkgY2xlYW51cCBzdGFsZSBoYW5kbGVycyBpbiBkcml2ZXIgYW5kIHdhcyBsZWF2aW5nIHRo
ZSBoYXJkd2FyZQ0KPiANCj4gTml0OiBjbGVhbiB1cA0KDQpHb29kIGNhdGNoIC0gSSBzaG91bGQg
aGF2ZSB1c2VkIHZlcmIgaW5zdGVhZCBvZiBub3VuLiBXaWxsIGZpeCBpdCBpbiB2Mi4NCg0KPiAN
Cj4+IHJlZ2lzdGVycyBub3QgcmVhZC4gTm90IHJlYWRpbmcgc3RhbGUgUFRQIFR4IHRpbWVzdGFt
cHMgcHJldmVudHMgbmV4dA0KPj4gaW50ZXJydXB0cyBmcm9tIGFycml2aW5nIGFuZCBtYWtlcyB0
aW1lc3RhbXBpbmcgbm90IHVzYWJsZS4NCj4gDQo+IE5pdDogdW51c2FibGUNCg0KVGhhbmtzIC0g
bGVzc29uIGxlYXJuZWQuIFdpbGwgZml4IGl0IGluIHYyLg0KDQo+IA0KPiBEbyB5b3UgaGF2ZSBh
IG1ldGhvZCwgaG93IHRvIGZvcmNlIHRoZSBuZXR3b3JrIGRldmljZSB0byBydW4gb3V0IG9mIA0K
PiB0aW1lc3RhbXBzIHJlcXVlc3QgaGFuZGxlcnM/DQoNClVubHVja3kgLSBJIGRvbid0IGhhdmUg
YW55dGhpbmcgY29udmVuaWVudC4gQm90aCByZXByb2R1Y2luZyB0aGlzIGJ1Zw0KYW5kIHByb3Zp
bmcgZml4IGZvciBpdCBpcyB3b3JraW5nIGNvcnJlY3RseSB3YXMgZG9uZSBieSBwZXJmb3JtaW5n
DQpzdGFiaWxpdHkgdGVzdHMgZm9yIG11bHRpcGxlIGhvdXJzICh1c2luZyBsaW51eHB0cCBwcm9q
ZWN0KS4NCg0KPiANCj4+IEZpeGVzOiBlYTliODQ3Y2RhNjQgKCJpY2U6IGVuYWJsZSB0cmFuc21p
dCB0aW1lc3RhbXBzIGZvciBFODEwIGRldmljZXMiKQ0KPj4gU2lnbmVkLW9mZi1ieTogTWljaGFs
IE1pY2hhbGlrIDxtaWNoYWwubWljaGFsaWtAaW50ZWwuY29tPg0KPj4gUmV2aWV3ZWQtYnk6IEph
Y29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMgfCA5ICsrKysrKystLQ0KPj4gICAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4gDQo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4+IGluZGV4IGExY2QzMzIu
LjgyNmE1MDggMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3B0cC5jDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0
cC5jDQo+PiBAQCAtMjI4Nyw2ICsyMjg3LDcgQEAgaWNlX3B0cF9pbml0X3R4X2U4MTAoc3RydWN0
IGljZV9wZiAqcGYsIHN0cnVjdCBpY2VfcHRwX3R4ICp0eCkNCj4+ICAgDQo+PiAgIC8qKg0KPj4g
ICAgKiBpY2VfcHRwX3R4X3RzdGFtcF9jbGVhbnVwIC0gQ2xlYW51cCBvbGQgdGltZXN0YW1wIHJl
cXVlc3RzIHRoYXQgZ290IGRyb3BwZWQNCj4+ICsgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIGh3IHN0
cnVjdA0KPj4gICAgKiBAdHg6IFBUUCBUeCB0cmFja2VyIHRvIGNsZWFuIHVwDQo+PiAgICAqDQo+
PiAgICAqIExvb3AgdGhyb3VnaCB0aGUgVHggdGltZXN0YW1wIHJlcXVlc3RzIGFuZCBzZWUgaWYg
YW55IG9mIHRoZW0gaGF2ZSBiZWVuDQo+PiBAQCAtMjI5NSw3ICsyMjk2LDcgQEAgaWNlX3B0cF9p
bml0X3R4X2U4MTAoc3RydWN0IGljZV9wZiAqcGYsIHN0cnVjdCBpY2VfcHRwX3R4ICp0eCkNCj4+
ICAgICogdGltZXN0YW1wIHdpbGwgbmV2ZXIgYmUgY2FwdHVyZWQuIFRoaXMgbWlnaHQgaGFwcGVu
IGlmIHRoZSBwYWNrZXQgZ2V0cw0KPj4gICAgKiBkaXNjYXJkZWQgYmVmb3JlIGl0IHJlYWNoZXMg
dGhlIFBIWSB0aW1lc3RhbXBpbmcgYmxvY2suDQo+PiAgICAqLw0KPj4gLXN0YXRpYyB2b2lkIGlj
ZV9wdHBfdHhfdHN0YW1wX2NsZWFudXAoc3RydWN0IGljZV9wdHBfdHggKnR4KQ0KPj4gK3N0YXRp
YyB2b2lkIGljZV9wdHBfdHhfdHN0YW1wX2NsZWFudXAoc3RydWN0IGljZV9odyAqaHcsIHN0cnVj
dCBpY2VfcHRwX3R4ICp0eCkNCj4+ICAgew0KPj4gICAJdTggaWR4Ow0KPj4gICANCj4+IEBAIC0y
MzA0LDExICsyMzA1LDE1IEBAIHN0YXRpYyB2b2lkIGljZV9wdHBfdHhfdHN0YW1wX2NsZWFudXAo
c3RydWN0IGljZV9wdHBfdHggKnR4KQ0KPj4gICANCj4+ICAgCWZvcl9lYWNoX3NldF9iaXQoaWR4
LCB0eC0+aW5fdXNlLCB0eC0+bGVuKSB7DQo+PiAgIAkJc3RydWN0IHNrX2J1ZmYgKnNrYjsNCj4+
ICsJCXU2NCByYXdfdHN0YW1wOw0KPj4gICANCj4+ICAgCQkvKiBDaGVjayBpZiB0aGlzIFNLQiBo
YXMgYmVlbiB3YWl0aW5nIGZvciB0b28gbG9uZyAqLw0KPj4gICAJCWlmICh0aW1lX2lzX2FmdGVy
X2ppZmZpZXModHgtPnRzdGFtcHNbaWR4XS5zdGFydCArIDIgKiBIWikpDQo+PiAgIAkJCWNvbnRp
bnVlOw0KPj4gICANCj4+ICsJCWljZV9yZWFkX3BoeV90c3RhbXAoaHcsIHR4LT5xdWFkLCBpZHgg
KyB0eC0+cXVhZF9vZmZzZXQsDQo+PiArCQkJCSAgICAmcmF3X3RzdGFtcCk7DQo+PiArDQo+IA0K
PiBBcmUgY29tcGlsZXJzIG9yIGNvZGUgYW5hbHl6ZXIgZ29pbmcgdG8gY29tcGxhaW4sIHRoYXQg
bm90aGluZyB3aWxsIGJlIA0KPiBkb25lIHdpdGggYHJhd190c3RhbXBgPyBJcyB0aGVyZSBzb21l
IGF0dHJpYnV0ZSwgdGhhdCBpdOKAmXMgdW51c2VkPyBNYXliZSANCj4gYWxzbyBhZGQgYSBjb21t
ZW50LCB0aGlzIGlzIGp1c3QgdG8gcmVhZCB0aGUgdmFsdWUsIGFuZCBpdOKAmXMgbm90IGdvaW5n
IA0KPiB0byBiZSB1c2VkLg0KPg0KDQpJIGhhdmVuJ3Qgbm90aWNlZCBhbnkgY29tcGxhaW50cyBm
cm9tIGNvbXBpbGVyLiBUaGlzIGZ1bmN0aW9uIGlzIHVzZWQNCmluIGRpZmZlcmVudCBwbGFjZXMs
IHdoZXJlIGFsbCBwYXJhbWV0ZXJzIGFyZSB1c2VkLiBEbyB5b3UgdGhpbmsgd2UNCnNob3VsZCBj
b25zaWRlciBjaGFuZ2luZyBpY2VfcmVhZF9waHlfdHN0YW1wKCkgc28gaXQgd291bGQgYmUgYWJs
ZSB0bw0KYWNjZXB0IHRzdGFtcCBlcXVhbCB0byBOVUxMIGFuZCByZW1vdmUgdGhpcyB1bnVzZWQg
cmF3X3RzdGFtcCBmcm9tDQpoZXJlPyBJZiB3ZSBsZWF2ZSBpdCBhcyBpcyBJIHdpbGwgYWRkIGEg
Y29tbWVudCwgYWNjb3JkaW5nIHRvIHlvdXINCnN1Z2dlc3Rpb24uDQoNCj4+ICAgCQlzcGluX2xv
Y2soJnR4LT5sb2NrKTsNCj4+ICAgCQlza2IgPSB0eC0+dHN0YW1wc1tpZHhdLnNrYjsNCj4+ICAg
CQl0eC0+dHN0YW1wc1tpZHhdLnNrYiA9IE5VTEw7DQo+PiBAQCAtMjMzMCw3ICsyMzM1LDcgQEAg
c3RhdGljIHZvaWQgaWNlX3B0cF9wZXJpb2RpY193b3JrKHN0cnVjdCBrdGhyZWFkX3dvcmsgKndv
cmspDQo+PiAgIA0KPj4gICAJaWNlX3B0cF91cGRhdGVfY2FjaGVkX3BoY3RpbWUocGYpOw0KPj4g
ICANCj4+IC0JaWNlX3B0cF90eF90c3RhbXBfY2xlYW51cCgmcGYtPnB0cC5wb3J0LnR4KTsNCj4+
ICsJaWNlX3B0cF90eF90c3RhbXBfY2xlYW51cCgmcGYtPmh3LCAmcGYtPnB0cC5wb3J0LnR4KTsN
Cj4+ICAgDQo+PiAgIAkvKiBSdW4gdHdpY2UgYSBzZWNvbmQgKi8NCj4+ICAgCWt0aHJlYWRfcXVl
dWVfZGVsYXllZF93b3JrKHB0cC0+a3dvcmtlciwgJnB0cC0+d29yaywNCj4gDQo+IFJldmlld2Vk
LWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiANCj4gDQo+IEtpbmQg
cmVnYXJkcywNCj4gDQo+IFBhdWwNCj4gDQoNCkJlc3QgcmVnYXJkcywNCk1pY2hhxYIgTWljaGFs
aWsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
