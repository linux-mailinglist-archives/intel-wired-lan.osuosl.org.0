Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD94537767
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 May 2022 10:59:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8E9F410B8;
	Mon, 30 May 2022 08:59:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fRD3MbYFTvln; Mon, 30 May 2022 08:59:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 733EE41612;
	Mon, 30 May 2022 08:59:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BBD11BF29A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 08:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 398798412B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 08:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QI0lI1ETup5u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 May 2022 08:59:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 622338408A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 08:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653901189; x=1685437189;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B3VzfnM3Gg1YtUJO3OlhnMv2NaiI5ykcbZixOIIfGWM=;
 b=Rv2471lq1MHi1EnF0NBSJDw6KIjKWjWiRRABvN62jvaOvpFCufgdkFnF
 xx9Uk4pIVeF0XyfsAjS7Qx7WfXgZyAcIMYFBmac6kYG0kRKNPNnN2xL0S
 pwj/V0MLcjUhj9b0S/FYW+AmOCYTTUO595+4R6RzteYZr4RC6PsIWFq/b
 m3qt9Za6AycPY4pV6+9g3WW3KaNyvcR/HML10AoSL0N8dzhrTWXQDmG93
 lIDTtCLK/LZrFS76fHzZdYnErI3ijTf3rSaPlSzN+8NbRmw2UA5sBLoFN
 axX3k2UKbTX5ZwItx2GPowwbutlmjbudUdJnTgIcDFi36oT79KDJygxl4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="300292351"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="300292351"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 01:59:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="679058838"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 30 May 2022 01:59:46 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 30 May 2022 01:59:46 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 30 May 2022 01:59:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 30 May 2022 01:59:45 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 30 May 2022 01:59:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A2xQ6oahwb6OTpi1JwbKAKXaKX2Ue1LxWIubIHwCHZR7c8Ldynko116axGGd7gq2CvfoKF7G0nk6Ms1KhhR4ptTovdzlNVeBY5Ttzl/ohRvt8T/Qbl49K+LPFgq1Q134sGduO/IK/BSusc5UyfMfVwcCEKFAMzYPgjzBd+dKQF0pslDTvFzwDg/GvOkx2ftqjS1VMD1WoPzY+bugpsFW35VSPB+M5aMfY37oqC0CL8hBZZYEcPYDRYUJ9RTd+pXyKr9qazvY+L5riccJWukDs8IYy9sXr6TqlXHrdJ3Zkm56QROgaPn8LJcOp3214Hi9dMawl6E+ElfHTMGSWTr8Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3VzfnM3Gg1YtUJO3OlhnMv2NaiI5ykcbZixOIIfGWM=;
 b=CY05YkfvuQ1qaxrT0zgveOfW8w5r9P7gMjsVNhbcLJ9jtbXlByuCYOgwSm6Mo2FJll2VmnWSNgcuE+x8eYDyJtkAfVKbrKZvBf4FGQNBU77N2ILHcBY4OBQdCEmoq2W3lm90auz791mz33QEoAeAjI7ejaJ5bM/ygQanqfYHQqAkmQ5UzNuML8F4RwOfNY+kJox6X2pPtV7CcO1E3UP3et/PrtomIuC8JgfE6m4soAdYgTXz4r7QuYkowJLlS3bkSk31M3x++x8Aw7PbkTEHPhORYsEAxZ12KIGPyKUjzirFtOg8aWVjjcSBphqES1E9FbP1IUss3aDJEA8ABFnkLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 PH0PR11MB4917.namprd11.prod.outlook.com (2603:10b6:510:32::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5293.13; Mon, 30 May 2022 08:59:44 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b%4]) with mapi id 15.20.5293.019; Mon, 30 May 2022
 08:59:44 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Szczurek, GrzegorzX"
 <grzegorzx.szczurek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 2/2] iavf: Fix call trace during
 removing iavf driver
Thread-Index: AQHYcaFeiMRjRs943UqarV1aFYHeX60ypSyAgAR+sDA=
Date: Mon, 30 May 2022 08:59:44 +0000
Message-ID: <DM6PR11MB273126FB9449F334AF154319F0DD9@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
 <20220527080919.2370640-2-jedrzej.jagielski@intel.com>
 <9ff865cc-92f0-b719-b2c1-bb6e0ec53a27@molgen.mpg.de>
In-Reply-To: <9ff865cc-92f0-b719-b2c1-bb6e0ec53a27@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 401e2e08-1b45-4f04-1a69-08da421abdaa
x-ms-traffictypediagnostic: PH0PR11MB4917:EE_
x-microsoft-antispam-prvs: <PH0PR11MB4917C81425BAD3E49FFDD954F0DD9@PH0PR11MB4917.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eHGt3p7sz5EABD4iKKw43DKZZ0L2cTdYT43CWCJEP2q4M+utEN8GUMTkMGuUHLIm27soSwCg/rmc9J5KKa+LXpJuzeXqfPwy/Mfen6Az3/WLYeY9E+k49Hc7vSqhzuDYqckYaGlycRPEn6bFZaARxMPdeHdLTwTxS88eDONswvxawd3UtgFgsjLhb8l1ax2C8Tb2u1ggoOD7sHXn2Gbd5VyyJgMn7TguuZk/A9lOPRAxUwkTnWEl+rU9rzSZMqt8t6eBKYcd2u6RIOhMIgPIz9pxGax/PG93GLXFf9c5IwDBOMhOLRaJbpAIWTKmOWI/g4rpj3h8VWHj61i6/6plbmpGmPU6itB/s6x5oP33as6YYrSqXwSU1P17JgR3bkugsjQ6nRtRENGOefzjRh4Vb7vaaEXhdkJa5Oi5aYlCPCdIEFJkdITuWxtuwuNWBYtWh1ofJDnKAWTS6jJhbz/25y85T2l/ywc9bVv0oqu0qGUVm44GsPHjzlaERPyKMYxIK/LlW2cgbo+7PBoZgMSw7KjtgwEvwUVMbK18Mckq2RaGtd88CUh0UtvbLiNvXXWg3qKXLoTnprxRE56IGK+WquzEHie2c/2c+fYwMB8GtrytFvvqOWlMRO/RRZTSM1bURUixxqoe1yV2zHxGQi9exf2E91d7id/DrAWQBByhlupkxj4RbnB9UlrFg5FvNwnrSgf9wtugPs9ddH7WmtTsBQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(4326008)(66946007)(8676002)(64756008)(66556008)(66446008)(66476007)(76116006)(38100700002)(5660300002)(86362001)(186003)(8936002)(508600001)(33656002)(71200400001)(9686003)(26005)(53546011)(110136005)(6636002)(7696005)(6506007)(316002)(2906002)(82960400001)(55016003)(83380400001)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVdua1VKdFhJc2s2N3JkYXdieUFVTE84OWt2OWFIWThYeDFWaTRWM1VQcExW?=
 =?utf-8?B?UTVTdmZMOG1UZE9ScVVQUFV6Mm0rQ2V3d0F5MC9wT0NjNklJTVNRWG0wWWhU?=
 =?utf-8?B?S05LSmdwRUYxQnd1UVgzTnBlUDlMWnJtOFE5em9LdVNLV24ya0YyZCtIcWxy?=
 =?utf-8?B?RVA1eGVneFQrRThSWHhxWEdJSXhVZGdnelVXc3laV0V6OVY5R3RVTVF3ZzB1?=
 =?utf-8?B?MTdmSUxsUWwzQlFrd2JvVlJtaEdFMi9HVFJSMythYXhOK0xkeUR2b2xIS3FU?=
 =?utf-8?B?eVhrV1k1NExiNWxRaDRZWDBCQlN5TGdIMVFNcnl0M2d2ZnUvdDBvbkhTS2hF?=
 =?utf-8?B?MVducFBKNWhKRUxGaFZIQjJDbUVJUS9QTjUzdFhJQmFMbmIxZEVqWlJEeHNh?=
 =?utf-8?B?Q1NPaS9vOU52TzlFL0twWUhHSHZtRHl1Rk5jMDNVd0xJaHl2dnJ6eUdwdlQ2?=
 =?utf-8?B?T0RhNDBndjBFbFFrSHFESkthMjRMYXpUQ3crK2FLbGhzOU5CODhjV2hyUDZ1?=
 =?utf-8?B?SzY5RFVzaGhLUXJUT1lJVzR5aWJIMVJhZzRicktuOFRuZy83Tk05cGVEb0xB?=
 =?utf-8?B?SWpUU0JwTS91c0d2eVlMRnFYVlQ5Y2J3dGt1bkhmWis0VUxBZlljL3N3Rk45?=
 =?utf-8?B?bnJ3QU1Tb2FWZ00zbzVjU3J3NjZBSGhMK1FBbWFXWGVJdHV3dEJHT05mejhX?=
 =?utf-8?B?VE9FNmVYdVJmUkRjTzFHMDNhdkdoSElrOVpjdnZyenBKN3ZDMjBmaHVYaThy?=
 =?utf-8?B?Wmd6Q0JpRkVwVnRwdFlGODBEcUk5cmlFKzFtaldEQXIxaU5RaTRCYXRkYXFs?=
 =?utf-8?B?OHBBWkZ2OE9hVEVkTkQ4YWNOeE5rMGtoZkpuV3NxdjJZckE3WnBGSjNucjJw?=
 =?utf-8?B?RzQrcFF6dHUrV0VuRnpSM1dUWHJhYnRDamswcGwwZkZkVGVsZDd2T013bmxs?=
 =?utf-8?B?MlJBR2hGTzFVUm41aWg0R2dvdU9SUHoxNkc3YnRGcFBZQVlaVG52TjNGcFcy?=
 =?utf-8?B?ZTAwSG92WWMyTWprYjV6OUNVMm1vT0lhT3J1aTlHQTRDaUtKR28zREx1M1l1?=
 =?utf-8?B?T2JwSkdVOERYbTZFK3ZEcFBmMk9qZ3c0c1FkbWEreXZHaVlSL3RnZVQ1V2Yz?=
 =?utf-8?B?TDl0emt1UlJuaE1td0dscmZPK0lWemRnb1ZTWjNISkRMYlRpR1FGbnNuZk0z?=
 =?utf-8?B?cVRhdkh2Vm16c2hYVnJPR2R5YjRQVW5CZi8rRmltcGRMRFA3VUF6OGVKeVVT?=
 =?utf-8?B?akNYTjl6UlpVOHpJc2lBNTNoSVc5UEtLb3pGeDl4cXZFWlVBOXNMdTU4bEhQ?=
 =?utf-8?B?VXkzQ1dXREJybTNCWVpkNlJnTlJVb0pZSmVRclVUcjFGejhlMWtwakZIV0cw?=
 =?utf-8?B?cnA1WlBGUFMyS3B0aGdOU2dPcGg5ejFvcmx6Z2hxTDE0aEtvZkJkaUU5aC9n?=
 =?utf-8?B?SHl1dXB3ZlNFZ1YzV29vOEYxVEtBUlk1MjNKQ1R4L1d0K08zb2VjTGR0ZEll?=
 =?utf-8?B?L1ZHZ3NGSS9vcStjNGZQQTNBUFpXSkRCNE5oZUUrTkRpbm82TDlRb1dRdzFv?=
 =?utf-8?B?T3pQdER1UEwybjdSWVQrSkllV1J2L1lESkFmb0plQlk4NXpGS3dxYm9TOU9N?=
 =?utf-8?B?dkJ1RXVWQk52ak5wRFJkLzZKN1FDdG43MldjdHFaTWF4T1NCWHJCb0JlK3Bs?=
 =?utf-8?B?bTA1ZUJsQ1pob09BSHd4VEVWNUpvZVY0dzc5V2lXOXVGRmtKZmRBSXNQMnhC?=
 =?utf-8?B?YmZZSTRpeHJYOGNxbWdPZVFQWDEwSURYV1BiaG9aSDd5U3FLT2RMTXBYWWtT?=
 =?utf-8?B?TTBDWmdWWExHZlVRSkM5aVFsbmxqSFJ1YmhieldLd0xkUE1nMytYNk1EeDFF?=
 =?utf-8?B?d2RSR215S3RRbzdhTFZHV3JYcjVtVndzYVIxY1Y2dS9qd0F3UGE1RlArcytO?=
 =?utf-8?B?cXFqKytNUktuNXJDdmk3Rnl6T0RCa0hzYWVacE11S3c3bEZmYnFNaUlDbGZo?=
 =?utf-8?B?YVhBUCt6OFFjR2xPSWtDcks2WGdHbzd6TlFFenVOekZXUDFmVHNibFdSVDRa?=
 =?utf-8?B?TGduUmxTc09ZOTljRWh6WFJ6cEQ3NWhwU05aY3BRalZiVkxmMFMrWldNdDRV?=
 =?utf-8?B?MTBIZ3h3Y3pYSUpVcDZtQ1F1UUZOWG9BQzU4b2pXaU9saXphTnBKWVF5Tmdt?=
 =?utf-8?B?SGs1Y3RqMTJZbFRMT2hFc3hOSU0zb1dkdmFSaXFNN20yN0xqL2xEYWpGZVd4?=
 =?utf-8?B?bWFtOWl6SUJBMDErdXVDaHpEbkgrRllqUFdudm15dUgwOW5ianM0bVQrNzl6?=
 =?utf-8?B?bU9GVjJYZVdzQ3RURkRBLy9uZkdDdVFWNzEzRlh3YTdmL3hFTnBycERoYnMy?=
 =?utf-8?Q?XXZl4vtHEavIjw4g=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 401e2e08-1b45-4f04-1a69-08da421abdaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2022 08:59:44.4346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PJCZlc6VrxD+0fXqgNErNPlxN1ty/VCgGWMplmp4IMKD1/i2pMh8riIYRypgcUQdOfLqTMNln4NfNab7SiGr4lMbq7BxRHNBvLDPXIPm3C4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4917
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/2] iavf: Fix call trace
 during removing iavf driver
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

SGVsbG8gUGF1bCwNCg0KPkRlYXIgSmVkcnplaiwgZGVhciBHcnplZ29yeiwNCj4NCj4NCj5BbSAy
Ny4wNS4yMiB1bSAxMDowOSBzY2hyaWViIEplZHJ6ZWogSmFnaWVsc2tpOg0KPj4gRnJvbTogR3J6
ZWdvcnogU3pjenVyZWsgPGdyemVnb3J6eC5zemN6dXJla0BpbnRlbC5jb20+DQo+DQo+Rm9yIHRo
ZSBzdW1tYXJ5LCBtYXliZSBiZSBtb3JlIHNwZWNpZmljIGFib3V0IHRoZSBhY3Rpb246DQo+DQo+
ID4gRG8gbm90IG1vZGlmeSBxdWV1ZSBudW1iZXIgd2hlbiByZW1vdmluZyBpYXZmIGRyaXZlcg0K
Pg0KPj4gSWYgVkYgaGFzIGNvbmZpZ3VyZWQgdGMgcWRpc2Mgd2l0aCBudW1iZXIgb2YgcXVldWVz
IGxlc3MgdGhhbiBvcmlnaW5hbA0KPj4gc2V0IGFuZCB0aGVuIHRoZSBkcml2ZXIgd2VudCBpbiBy
ZW1vdmluZyBwcm9jZXNzLCB0YyByZXNvdXJjZXMgYXJlIGFsc28NCj4NCj5zL3dlbnQvZ29lcy8N
Cj4NCj4+IHJlbGVhc2luZy4gQXR0ZW1wdCBvZiBtb2RpZnkgcmVhbCBudW0gdHgvcnggaW4gdGhp
cyBzdGF0ZSBpcyBjYXVzaW5nDQo+DQo+cmVsZWFzZWQ/DQo+DQo+PiBjYWxsIHRyYWNlLCBiZWNh
dXNlIGtlcm5lbCBpcyB0cnlpbmcgdG8gcmVsZWFzaW5nIHVuaW5pdGlhbGl6ZWQgcXVldWVzLg0K
Pg0KPnRvIHJlbGVhc2UNCj4NCj5QbGVhc2UgYWRkIHBhcnRzIG9mIHRoZSBjYWxsIHRyYWNlLg0K
Pg0KPj4gDQo+PiBGaXggYnkgbm90IG1vZGlmeWluZyB0aGUgbnVtYmVyIG9mIHF1ZXVlcyB3aGVu
IHJlbW92aW5nIGEgZHJpdmVyLg0KPg0KPkZpeCAqaXQqIGJ5IOKApg0KDQpUaGFuayB5b3UgZm9y
IHlvdXIgbm90aWNlcy4gQ29tbWl0IG1zZyB3aWxsIGJlIGNvcnJlY3RlZC4NCg0KPg0KPg0KPktp
bmQgcmVnYXJkcywNCj4NCj5QYXVsDQo+DQo+PiANCj4+IEZpeGVzOiBkNWIzM2QwMjQ0OTYgKCJp
NDBldmY6IGFkZCBuZG9fc2V0dXBfdGMgY2FsbGJhY2sgdG8gaTQwZXZmIikNCj4+IFNpZ25lZC1v
ZmYtYnk6IEdyemVnb3J6IFN6Y3p1cmVrIDxncnplZ29yenguc3pjenVyZWtAaW50ZWwuY29tPg0K
Pj4gU2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVsc2tpQGlu
dGVsLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmZfbWFpbi5jIHwgMyArKysNCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0K
Pj4gDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMNCj4+
IGluZGV4IGVlYzc0ZWU1ZmMxOS4uMWI0NmE5N2Y0YWQ2IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPj4gQEAgLTM0NzgsNiArMzQ3OCw5
IEBAIHN0YXRpYyBpbnQgX19pYXZmX3NldHVwX3RjKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYs
IHZvaWQgKnR5cGVfZGF0YSkNCj4+ICAgCQl9DQo+PiAgIAl9DQo+PiAgIGV4aXQ6DQo+PiArCWlm
IChpYXZmX2lzX3JlbW92ZV9pbl9wcm9ncmVzcyhhZGFwdGVyKSkNCj4+ICsJCXJldHVybiAwOw0K
Pj4gKw0KPj4gICAJcmV0dXJuIHJldDsNCj4+ICAgfQ0KPj4gICANCg0KQmVzdCByZWdhcmRzLA0K
SmVkcnplag0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBQYXVsIE1lbnpl
bCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPiANClNlbnQ6IHBpxIV0ZWssIDI3IG1hamEgMjAyMiAx
NDoyMQ0KVG86IEphZ2llbHNraSwgSmVkcnplaiA8amVkcnplai5qYWdpZWxza2lAaW50ZWwuY29t
PjsgU3pjenVyZWssIEdyemVnb3J6WCA8Z3J6ZWdvcnp4LnN6Y3p1cmVrQGludGVsLmNvbT4NCkNj
OiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KU3ViamVjdDogUmU6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCBuZXQgdjEgMi8yXSBpYXZmOiBGaXggY2FsbCB0cmFjZSBkdXJpbmcg
cmVtb3ZpbmcgaWF2ZiBkcml2ZXINCg0KRGVhciBKZWRyemVqLCBkZWFyIEdyemVnb3J6LA0KDQoN
CkFtIDI3LjA1LjIyIHVtIDEwOjA5IHNjaHJpZWIgSmVkcnplaiBKYWdpZWxza2k6DQo+IEZyb206
IEdyemVnb3J6IFN6Y3p1cmVrIDxncnplZ29yenguc3pjenVyZWtAaW50ZWwuY29tPg0KDQpGb3Ig
dGhlIHN1bW1hcnksIG1heWJlIGJlIG1vcmUgc3BlY2lmaWMgYWJvdXQgdGhlIGFjdGlvbjoNCg0K
ID4gRG8gbm90IG1vZGlmeSBxdWV1ZSBudW1iZXIgd2hlbiByZW1vdmluZyBpYXZmIGRyaXZlcg0K
DQo+IElmIFZGIGhhcyBjb25maWd1cmVkIHRjIHFkaXNjIHdpdGggbnVtYmVyIG9mIHF1ZXVlcyBs
ZXNzIHRoYW4gb3JpZ2luYWwNCj4gc2V0IGFuZCB0aGVuIHRoZSBkcml2ZXIgd2VudCBpbiByZW1v
dmluZyBwcm9jZXNzLCB0YyByZXNvdXJjZXMgYXJlIGFsc28NCg0Kcy93ZW50L2dvZXMvDQoNCj4g
cmVsZWFzaW5nLiBBdHRlbXB0IG9mIG1vZGlmeSByZWFsIG51bSB0eC9yeCBpbiB0aGlzIHN0YXRl
IGlzIGNhdXNpbmcNCg0KcmVsZWFzZWQ/DQoNCj4gY2FsbCB0cmFjZSwgYmVjYXVzZSBrZXJuZWwg
aXMgdHJ5aW5nIHRvIHJlbGVhc2luZyB1bmluaXRpYWxpemVkIHF1ZXVlcy4NCg0KdG8gcmVsZWFz
ZQ0KDQpQbGVhc2UgYWRkIHBhcnRzIG9mIHRoZSBjYWxsIHRyYWNlLg0KDQo+IA0KPiBGaXggYnkg
bm90IG1vZGlmeWluZyB0aGUgbnVtYmVyIG9mIHF1ZXVlcyB3aGVuIHJlbW92aW5nIGEgZHJpdmVy
Lg0KDQpGaXggKml0KiBieSDigKYNCg0KDQpLaW5kIHJlZ2FyZHMsDQoNClBhdWwNCg0KPiANCj4g
Rml4ZXM6IGQ1YjMzZDAyNDQ5NiAoImk0MGV2ZjogYWRkIG5kb19zZXR1cF90YyBjYWxsYmFjayB0
byBpNDBldmYiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBTemN6dXJlayA8Z3J6ZWdvcnp4
LnN6Y3p1cmVrQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kg
PGplZHJ6ZWouamFnaWVsc2tpQGludGVsLmNvbT4NCj4gLS0tDQo+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYyB8IDMgKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZm
L2lhdmZfbWFpbi5jDQo+IGluZGV4IGVlYzc0ZWU1ZmMxOS4uMWI0NmE5N2Y0YWQ2IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jDQo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMNCj4gQEAgLTM0
NzgsNiArMzQ3OCw5IEBAIHN0YXRpYyBpbnQgX19pYXZmX3NldHVwX3RjKHN0cnVjdCBuZXRfZGV2
aWNlICpuZXRkZXYsIHZvaWQgKnR5cGVfZGF0YSkNCj4gICAJCX0NCj4gICAJfQ0KPiAgIGV4aXQ6
DQo+ICsJaWYgKGlhdmZfaXNfcmVtb3ZlX2luX3Byb2dyZXNzKGFkYXB0ZXIpKQ0KPiArCQlyZXR1
cm4gMDsNCj4gKw0KPiAgIAlyZXR1cm4gcmV0Ow0KPiAgIH0NCj4gICANCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
