Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9AE446288
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 12:12:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 878FF823F4;
	Fri,  5 Nov 2021 11:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VfXMbukllPVg; Fri,  5 Nov 2021 11:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFA6F823AA;
	Fri,  5 Nov 2021 11:12:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC9D11BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 11:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9EC7406D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 11:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6_8pXfQNYElh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 11:12:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29FCE406CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 11:12:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="255531230"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="255531230"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 04:12:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="542703029"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 05 Nov 2021 04:12:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 04:12:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 04:12:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 5 Nov 2021 04:12:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 5 Nov 2021 04:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+NwwDX80Lvf9BTqsnlTI5rLWSm1lZEXWitUbUK2BAgkUhJBmCSqtHq8X8deMO+oXP06CmoAdTXg0AvE4lZso1YT4GNVQonnNuVYeRb0aK8wWEwTn95P5TK1FHffoIvR5a8Xj2lGn+M/6u0b4nI8/akE4oz7FFtcSkeoAWs2q7RlHQLwSKYpr4XyHZcbPv6AsmSR5m75FUAkPGhkrhHZOEU7jnDQ4srVHdnMPmLAtaje0eR169qPqi+aiuXlgrt4HTgC2b8ehVzzZxo5tAbOwal+ArWIa3yb6nb+AxRqXZ2az2OL1Nia3ViXZvoaZV0TG7VsCQ7aGwpyHlKnGMJn4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/ctn61cK9apXcSceKZlxyjViBnfM/X32Pqm1oNq5n0=;
 b=hrzhOiNUZBfgOfw19X3z0fxip5fovddxLus8P8SxcMDJBC63albl+4p5jZf4SIAjki/gtMT1HaxLJRvvkoILJTk6i7jkzJVC892M+kBrMUhBZeHFef6Qa0x7z1WRgIZo8URjuTDBZn4lhTlF83u9xw1j6eKqkC52HwB/qtUTC5bT94rJ2UCgMHZI7dfc2y475HjgmyM/4HIPIf0hrNlVCFqGJfFpJs1M8SH7gcoRiOQkvq7JoiZMTQG8ui9RotYT61cU7E1ALEQopC/mBoegiP+WwTHSHcC7tknSoR/zghADJ9xYsQ0IOGUPSr2L5msyrivgRa1puEnKN1iaYBAU1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/ctn61cK9apXcSceKZlxyjViBnfM/X32Pqm1oNq5n0=;
 b=L4XRIYh7Xqwfcl1eDHjOUIFDzFTc7et3wcBVzLl1O/zo0yV0JmSsJF1Bj64Fzkhh/GLorTAFDiszZGN76iJ8NPxgumSatLLkYfi14z/Q/qW7QOYaR06wwvN4725MgPl715796dOhvPL5JW0f51atHL8MJTOlEV40zL8+QYyijv8=
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM6PR11MB4188.namprd11.prod.outlook.com (2603:10b6:5:198::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Fri, 5 Nov 2021 11:12:04 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596%4]) with mapi id 15.20.4669.013; Fri, 5 Nov 2021
 11:12:04 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Gawin, JaroslawX"
 <jaroslawx.gawin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix issue when maximum
 queues is exceeded
Thread-Index: AQHX0QffNuj4axn7q0qjMdZReg38UKv0ycYg
Date: Fri, 5 Nov 2021 11:12:03 +0000
Message-ID: <DM6PR11MB27311D49882F8D48EF3F9874F08E9@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20210823114344.7058-1-jedrzej.jagielski@intel.com>
 <2e3f1249-a62e-3829-a17b-46284174dc29@molgen.mpg.de>
In-Reply-To: <2e3f1249-a62e-3829-a17b-46284174dc29@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f3c2394-fdc9-4a6f-c4f2-08d9a04d18e8
x-ms-traffictypediagnostic: DM6PR11MB4188:
x-microsoft-antispam-prvs: <DM6PR11MB418857EE5017EA60C610CD64F08E9@DM6PR11MB4188.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zTEbpQv/PmxF/NzHCz7cA0OFMCOONmCFZcgxCeWpBFXSk5lfDXA8sNlR3tVWHTDyf6ObwK5unkn1wB5QHqF+77lcnFjhqIGEBeAMGCCBGu+Aor1UZkl7SXKZKse7F9Hm+HbrSCdRIZBp+zTDZig/B+THhOc6394+5Ov5dwg6b/UrYJDwiue1nzshZryN/0GghoDHS9FDIUJShnS0oQRwxra3DbtilHFZEjhc+BzpseaXipn+46WvOT8wfjz7gqAo5aaLOOqwRQ5t++uegt6ZDkpjev3rPeUJeygj9omqgbmEnGnUWFwXWbkDdQ2qHMs2e6JwfxaTs1S4ISsC8eKfwFkdagyx1j4xdfpFk674DHVdJFFNac3n8Q2DP+WCzNEuxBoeP4FF7rPGsDoAIAdhsKjtyh0PCju16Q+Zmvdt13N3FT4INMbZWRVKIO9L0Ld91doeNEkHd5deIhCvdDlJPrXf/QT4OWew3xyyDPrmpkCj7SEfUfWcQeOmLo9s9mJHdWegqjLBblLiNOII2geIK80H9vOzyGThS4nS+9U99rIWOiQo+bPeoBq4JuQi/OQR0L5f0xrAcjCh5qmNfsKp6cU+p2opeOkT0ARTpSJ4aVMxcu0Qal3gUp+y9IRUgwPoRZmyaHU4JsTh4OdqaAG6H0+91nUaRiNWifglGhLnJI9YRtH/xh3Kr5TyNBUA/l2H6cZKOr1z7NWzMH+9k7af1g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(186003)(26005)(2906002)(83380400001)(8676002)(33656002)(316002)(8936002)(66946007)(66446008)(64756008)(66556008)(71200400001)(76116006)(66476007)(86362001)(5660300002)(6636002)(7696005)(6506007)(4326008)(53546011)(52536014)(82960400001)(55016002)(9686003)(508600001)(38070700005)(38100700002)(30864003)(122000001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T3pTVUorZVEwVkNPbEwwUEQvSXZlcTR6UStEdXhnMFNHQVYyZ2xHQlVwdDAz?=
 =?utf-8?B?RlZydHBwb25mdXJqc1JoWCtnRHcxelk0b3o0bmdPNnBPK05SN2pCajI1RTBQ?=
 =?utf-8?B?Tkc0ZHBmMUd5R3ZNMHFtcjVxaDZuWEFaVy9FYTJHbzQwQSt3R2ZONmJvTGN3?=
 =?utf-8?B?ZTFjWUl2aDdrRTh5SjNuQUQ4Y3lzM1JPeHFRNnMzTDBRek9sYTRlazdEa3Jk?=
 =?utf-8?B?MFlqcTdudlF6VTFpeDBsNml3VXRaUHI0RmlBN3NTVnRqcDlHMy9RM3J3NURs?=
 =?utf-8?B?emNGUU9CVWliL0oyZmhkYlNZUzJVZHI1TW81blMvSGNBUzlZLzA5YzZpaG5M?=
 =?utf-8?B?bFk0QkJnd3JhWm45aG1YcTBMY2J1M2lZY0p1L1p4VjlnMUhjRlVtTDAvVUha?=
 =?utf-8?B?NlRJUHRMUHQzaUFTbDVON2JkWGFoSW43eWtUM0hPbERaVHdrTm1kU0wyWW9j?=
 =?utf-8?B?NHdpWUgwRHFhNXlDU1UwRk9oQm45TGFxd0U3cVJpcHgvVUdMQW1BWDNIZnJ0?=
 =?utf-8?B?RUZOV1hDRm9iWFZTckpqeThBb1VyM2srSTBZS0YydkhxR2I4Y2tHbG10bWF3?=
 =?utf-8?B?d0k2YTB4U0dPdE42VUtLNTYrRm9qL25pMXl5ekVtZGFnNjc4OWJGSEhUSTRH?=
 =?utf-8?B?VWF0Y0prNjZsTC9xUFRIRE1VZFRQN2RsK3JtUEQ4MlNDZ2V2Zm9xc0krNElX?=
 =?utf-8?B?MTZScFJNZWV0RmphVHdwZUtwK2FhdzA1RmF6WEpFOThHOUxzRDI0WlpzM0JP?=
 =?utf-8?B?b0JOaENzY3FqL2RUNWlyRUhsekpoSmg3bFR1b1htSUZJNW5yWTA2OGZRL0ZQ?=
 =?utf-8?B?UHBTT2lMdGJSTlg1LzRwZkFKSTYydDQyNWN5cktpVnc3cyt6YUdScWdEc2JY?=
 =?utf-8?B?WGdpMTZrSFVsM3cyenNaY1FEVTh2emtyVTJSb0lWRFVuNE13eCs4MTVlQ1p1?=
 =?utf-8?B?djhHVUlScU8vVXBra1RvSWN1N1I5VzVTb2J1NlVzNUp4UkRyYnhQSldVOGdI?=
 =?utf-8?B?dDJCNTMvNk03enlkUjhiYXVtQWlZUkMrckFUbDRvMjE0QTNpb3VOTDBwL0tj?=
 =?utf-8?B?eVlhdWUxWVdQL0crWWxQTGg2aUs5NVEyNE9CSk54Q1p4U2Rya1hxYUNid0FW?=
 =?utf-8?B?Z2g4NG9ZUGRLL3JsMFlmKzBNMGJsdEo2ZjBqVDVQV2VYaGNNQUNTc1Fibmhs?=
 =?utf-8?B?dHl5bjkvYmVXSUJCZTdPaEJ3bnZDT2JCUXFkbEgvaXRsNVc2OXhBMkw3UWJ5?=
 =?utf-8?B?cjc0bHVzRFlWS29PbVlQU0tNcWllRkVLckpUUHBoRnk3ZURyMm5xNmVMYSsr?=
 =?utf-8?B?MzBMTncvdXV2K1RYVGdqWkFoTmNUOXpSL09ROVhPanRmM3FHMWttZDg0dUps?=
 =?utf-8?B?cU1wTkZpTFZPc0dhRm1EWHpmVXZPbkRlTGZqZXJZQzFXN0tyYStuNmFjMmQ3?=
 =?utf-8?B?R3RSUTJwWXpIMlM4SDRXd3pIdU45Rkg2Z1g0bXlGVDVRTlRNK0h1QWZBYmNY?=
 =?utf-8?B?b1BRc0wxSzROTC9GcXJ3VHV4blpvNWVCTlpqQzlzQ0ljcGFsVnk1T05XZThX?=
 =?utf-8?B?c1UveFYwSHpRVXdCMUlRK0ZDSjJkNHNkRHBJamJqVERWMXpuZ3gvck54L2N2?=
 =?utf-8?B?UDdzRS9OaHkwdjNqdEk4T1BiR00zMXZPRlNzeHAzR1VxcjNBZ29VTVo3b1d4?=
 =?utf-8?B?cEp5Mmd4TnYxWU1DbU50SUQ1c1p5a1BLUEVNVEEvazZISWZqWmt2TUpQMHlu?=
 =?utf-8?B?eXhOTmlPQmdDY25QZmMvSkxVYU1CREJxcHVoUDRBYy84Qm5scnV5U0FmWlQv?=
 =?utf-8?B?azMwVjQ1NFI2U0o4MmxlaUZFYnlQay91NnIvdkxDeUxNVlhWMDdybUJVU3hD?=
 =?utf-8?B?N0lkNVBTYlFpYkp3RkdoS2RMb09QNk9HQ0VEdEsyTHpObS84N2JWeElDTk42?=
 =?utf-8?B?clIyWGJlUW1SNnBhWHkwZE5Vc2FINHR2MHh0Qm1XelRWUVhtUjYwZHlydW5K?=
 =?utf-8?B?Yzh6YVJ0SVVRZ3VFZ3JLb09YNExxb3BYWmNWaUU0alB4Y3YrYVlHbGl2R2hl?=
 =?utf-8?B?RldjS3hLbkxSTFVVNUFNUi9GcWJJU3BCbEZtVVRWcFJKd3JxNGN2a1Jvc1Nm?=
 =?utf-8?B?WkFxMmlNTEo4MVZDUHRjRDB4NFRaa2NQZm0wZ2VVTVN4YVhlbkZzbXN0SE5T?=
 =?utf-8?Q?pFMeCosTD0XOLV2xUZ4JlsGIlH7Vxxg+iMtiwXsyz9zD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f3c2394-fdc9-4a6f-c4f2-08d9a04d18e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 11:12:03.9280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7K2o7x7+4AlkouEmlxDBDeA5YS6FzLtemMBqZLvz/fufeYORsa6cODC4DlNPVia4ptr7AUZTaHaCiQghvwhpxNSpOV8pklEhwZ4P/2IU2aE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4188
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix issue when maximum
 queues is exceeded
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul,
thank you for your suggestions.

>Dear Jaroslow, dear Jedrzej,
>
>
>On 23.08.21 13:43, Jedrzej Jagielski wrote:
>
>Maybe use:
>
>i40e: Handle case of depleted

Is the title of the patch connected to the mailing
thread? I am afraid that if I change the title
the mailing thread won't be coherent.

>
>> Before this patch VF interface vanished when maximum queue
>> number was exceeded. Driver tried to add next queues even
>> if there was not enough space. PF sent incorrect number of
>> queues to the VF when there were not enough of them.
>> 
>> Add an additional condition introduced to check
>> available space in 'qp_pile' before proceeding.
>> Also add the search for free space in PF queue pair piles.
>
>Please reflow for 75 characters per line.
>
>How is the new search better?
>
>> Without this patch VF interfaces are not seen when available
>> space for queues has been exceeded and following logs appears
>> permanently in dmesg:
>> "Unable to get VF config (-32)".
>> "VF 62 failed opcode 3, retval: -5"
>> "Unable to get VF config due to PF error condition, not retrying"
>
>Please add the new logs.

What logs do you mean?
>
>> Fixes: 7daa6bf3294e ("i40e: driver core headers")
>> Fixes: 41c445ff0f48 ("i40e: main driver core")
>> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
>>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 49 +++++++++++----
>>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 59 +++++++++++++++++++
>>   3 files changed, 96 insertions(+), 14 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>> index b10bc59c5700..fdfa96ece5f3 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>> @@ -174,7 +174,6 @@ enum i40e_interrupt_policy {
>>   
>>   struct i40e_lump_tracking {
>>   	u16 num_entries;
>> -	u16 search_hint;
>>   	u16 list[0];
>>   #define I40E_PILE_VALID_BIT  0x8000
>>   #define I40E_IWARP_IRQ_PILE_ID  (I40E_PILE_VALID_BIT - 2)
>> @@ -1156,6 +1155,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count);
>>   struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags, u16 uplink_seid,
>>   				u16 downlink_seid, u8 enabled_tc);
>>   void i40e_veb_release(struct i40e_veb *veb);
>> +int i40e_max_lump_qp(struct i40e_pf *pf);
>>   
>>   int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc);
>>   int i40e_vsi_add_pvid(struct i40e_vsi *vsi, u16 vid);
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> index 000991afcf27..32382d4a90e7 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -178,16 +178,12 @@ int i40e_free_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem)
>>    * @id: an owner id to stick on the items assigned
>>    *
>>    * Returns the base item index of the lump, or negative for error
>> - *
>> - * The search_hint trick and lack of advanced fit-finding only work
>> - * because we're highly likely to have all the same size lump requests.
>> - * Linear search time and any fragmentation should be minimal.
>>    **/
>>   static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>>   			 u16 needed, u16 id)
>>   {
>>   	int ret = -ENOMEM;
>> -	int i, j;
>> +	u16 i, j;
>
>Please do not mix these changes into the patch. Additionally, using the 
>native variable types does not harm.
>
>>   	if (!pile || needed == 0 || id >= I40E_PILE_VALID_BIT) {
>>   		dev_info(&pf->pdev->dev,
>> @@ -196,8 +192,7 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>>   		return -EINVAL;
>>   	}
>>   
>> -	/* start the linear search with an imperfect hint */
>> -	i = pile->search_hint;
>> +	i = 0;
>>   	while (i < pile->num_entries) {
>>   		/* skip already allocated entries */
>>   		if (pile->list[i] & I40E_PILE_VALID_BIT) {
>> @@ -216,7 +211,6 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>>   			for (j = 0; j < needed; j++)
>>   				pile->list[i+j] = id | I40E_PILE_VALID_BIT;
>>   			ret = i;
>> -			pile->search_hint = i + j;
>>   			break;
>>   		}
>>   
>> @@ -239,7 +233,7 @@ static int i40e_put_lump(struct i40e_lump_tracking *pile, u16 index, u16 id)
>>   {
>>   	int valid_id = (id | I40E_PILE_VALID_BIT);
>>   	int count = 0;
>> -	int i;
>> +	u16 i;
>>   
>>   	if (!pile || index >= pile->num_entries)
>>   		return -EINVAL;
>> @@ -251,12 +245,43 @@ static int i40e_put_lump(struct i40e_lump_tracking *pile, u16 index, u16 id)
>>   		count++;
>>   	}
>>   
>> -	if (count && index < pile->search_hint)
>> -		pile->search_hint = index;
>>   
>>   	return count;
>>   }
>>   
>> +/**
>> + * i40e_max_lump_qp - find a biggest size of lump available in qp_pile
>> + * @pf: pointer to private device data structure
>> + *
>> + * Returns the max size of lump in a qp_pile, or negative for error
>> + */
>> +int i40e_max_lump_qp(struct i40e_pf *pf)
>> +{
>> +	struct i40e_lump_tracking *pile = pf->qp_pile;
>> +	int pool_size, max_size;
>> +	u16 i;
>
>unsigned int i;
>
>> +
>> +	if (!pile) {
>> +		dev_info(&pf->pdev->dev,
>> +			 "param err: pile=%s\n",
>> +			 pile ? "<valid>" : "<null>");
>> +		return -EINVAL;
>> +	}
>> +
>> +	pool_size = 0;
>> +	max_size = 0;
>> +	for (i = 0; i < pile->num_entries; i++) {
>> +		if (pile->list[i] & I40E_PILE_VALID_BIT) {
>> +			pool_size = 0;
>> +			continue;
>> +		}
>> +		if (max_size < ++pool_size)
>> +			max_size = pool_size;
>
>Maybe in one line: max_size = max(max_size, ++pool_size);
>
>> +	}
>> +
>> +	return max_size;
>> +}
>> +
>>   /**
>>    * i40e_find_vsi_from_id - searches for the vsi with the given id
>>    * @pf: the pf structure to search for the vsi
>> @@ -11753,7 +11778,6 @@ static int i40e_init_interrupt_scheme(struct i40e_pf *pf)
>>   		return -ENOMEM;
>>   
>>   	pf->irq_pile->num_entries = vectors;
>> -	pf->irq_pile->search_hint = 0;
>>   
>>   	/* track first vector for misc interrupts, ignore return */
>>   	(void)i40e_get_lump(pf, pf->irq_pile, 1, I40E_PILE_VALID_BIT - 1);
>> @@ -12556,7 +12580,6 @@ static int i40e_sw_init(struct i40e_pf *pf)
>>   		goto sw_init_done;
>>   	}
>>   	pf->qp_pile->num_entries = pf->hw.func_caps.num_tx_qp;
>> -	pf->qp_pile->search_hint = 0;
>>   
>>   	pf->tx_timeout_recovery_level = 1;
>>   
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> index c007fba3d1dd..5a488ce5451b 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> @@ -2616,6 +2616,59 @@ error_param:
>>   				       aq_ret);
>>   }
>>   
>> +/**
>> + * i40e_check_enough_queue - find enough queue
>
>find big enough queue?
>find big enough queue size?
>
>> + * @vf: pointer to the VF info
>> + * @needed: the number of items needed
>> + *
>> + * Returns the base item index of the queue, or negative for error
>> + **/
>> +static int i40e_check_enough_queue(struct i40e_vf *vf, u16 needed)
>> +{
>> +	u16 i, cur_queues, more, pool_size;
>
>`unsigned int` or `size_t` where possible.
>
>> +	struct i40e_lump_tracking *pile;
>> +	struct i40e_pf *pf = vf->pf;
>> +	struct i40e_vsi *vsi;
>> +
>> +	vsi = pf->vsi[vf->lan_vsi_idx];
>> +	cur_queues = vsi->alloc_queue_pairs;
>> +
>> +	/* if current allocated queues is enough for need */
>> +	if (cur_queues >= needed)
>> +		return vsi->base_queue;
>> +
>> +	pile = pf->qp_pile;
>> +	if (cur_queues > 0) {
>> +		/* if queues of allocated not zero, just check if
>
>Please improve the wording.
>
>> +		 * there is enough queues behind the allocated queues
>
>s/is/are/
>
>> +		 * for more.
>> +		 */
>> +		more = needed - cur_queues;
>> +		for (i = vsi->base_queue + cur_queues;
>> +			i < pile->num_entries; i++) {
>> +			if (pile->list[i] & I40E_PILE_VALID_BIT)
>> +				break;
>> +
>> +			if (more-- == 1)
>> +				/* there is enough */
>> +				return vsi->base_queue;
>> +		}
>> +	}
>> +
>> +	pool_size = 0;
>> +	for (i = 0; i < pile->num_entries; i++) {
>> +		if (pile->list[i] & I40E_PILE_VALID_BIT) {
>> +			pool_size = 0;
>> +			continue;
>> +		}
>> +		if (needed <= ++pool_size)
>> +			/* there is enough */
>> +			return i;
>> +	}
>> +
>> +	return -ENOMEM;
>> +}
>> +
>>   /**
>>    * i40e_vc_request_queues_msg
>>    * @vf: pointer to the VF info
>> @@ -2650,6 +2703,12 @@ static int i40e_vc_request_queues_msg(struct i40e_vf *vf, u8 *msg)
>>   			 req_pairs - cur_pairs,
>>   			 pf->queues_left);
>>   		vfres->num_queue_pairs = pf->queues_left + cur_pairs;
>> +	} else if (i40e_check_enough_queue(vf, req_pairs) < 0) {
>> +		dev_warn(&pf->pdev->dev,
>> +			 "VF %d requested %d more queues, but there is not enough for it.\n",
>> +			 vf->vf_id,
>> +			 req_pairs - cur_pairs);
>> +		vfres->num_queue_pairs = cur_pairs;
>>   	} else {
>>   		/* successful request */
>>   		vf->num_req_queues = req_pairs;
>> 
>

Every single suggestion about the code from above 
will be adopted in the next patch.
>
>Kind regards,
>
>Paul


Best regards,
Jedrzej


-----Original Message-----
From: Paul Menzel <pmenzel@molgen.mpg.de> 
Sent: czwartek, 4 listopada 2021 00:10
To: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Gawin, JaroslawX <jaroslawx.gawin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix issue when maximum queues is exceeded

Dear Jaroslow, dear Jedrzej,


On 23.08.21 13:43, Jedrzej Jagielski wrote:

Maybe use:

i40e: Handle case of depleted

> Before this patch VF interface vanished when maximum queue
> number was exceeded. Driver tried to add next queues even
> if there was not enough space. PF sent incorrect number of
> queues to the VF when there were not enough of them.
> 
> Add an additional condition introduced to check
> available space in 'qp_pile' before proceeding.
> Also add the search for free space in PF queue pair piles.

Please reflow for 75 characters per line.

How is the new search better?

> Without this patch VF interfaces are not seen when available
> space for queues has been exceeded and following logs appears
> permanently in dmesg:
> "Unable to get VF config (-32)".
> "VF 62 failed opcode 3, retval: -5"
> "Unable to get VF config due to PF error condition, not retrying"

Please add the new logs.

> Fixes: 7daa6bf3294e ("i40e: driver core headers")
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 49 +++++++++++----
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 59 +++++++++++++++++++
>   3 files changed, 96 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index b10bc59c5700..fdfa96ece5f3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -174,7 +174,6 @@ enum i40e_interrupt_policy {
>   
>   struct i40e_lump_tracking {
>   	u16 num_entries;
> -	u16 search_hint;
>   	u16 list[0];
>   #define I40E_PILE_VALID_BIT  0x8000
>   #define I40E_IWARP_IRQ_PILE_ID  (I40E_PILE_VALID_BIT - 2)
> @@ -1156,6 +1155,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count);
>   struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags, u16 uplink_seid,
>   				u16 downlink_seid, u8 enabled_tc);
>   void i40e_veb_release(struct i40e_veb *veb);
> +int i40e_max_lump_qp(struct i40e_pf *pf);
>   
>   int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc);
>   int i40e_vsi_add_pvid(struct i40e_vsi *vsi, u16 vid);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 000991afcf27..32382d4a90e7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -178,16 +178,12 @@ int i40e_free_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem)
>    * @id: an owner id to stick on the items assigned
>    *
>    * Returns the base item index of the lump, or negative for error
> - *
> - * The search_hint trick and lack of advanced fit-finding only work
> - * because we're highly likely to have all the same size lump requests.
> - * Linear search time and any fragmentation should be minimal.
>    **/
>   static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>   			 u16 needed, u16 id)
>   {
>   	int ret = -ENOMEM;
> -	int i, j;
> +	u16 i, j;

Please do not mix these changes into the patch. Additionally, using the 
native variable types does not harm.

>   	if (!pile || needed == 0 || id >= I40E_PILE_VALID_BIT) {
>   		dev_info(&pf->pdev->dev,
> @@ -196,8 +192,7 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>   		return -EINVAL;
>   	}
>   
> -	/* start the linear search with an imperfect hint */
> -	i = pile->search_hint;
> +	i = 0;
>   	while (i < pile->num_entries) {
>   		/* skip already allocated entries */
>   		if (pile->list[i] & I40E_PILE_VALID_BIT) {
> @@ -216,7 +211,6 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
>   			for (j = 0; j < needed; j++)
>   				pile->list[i+j] = id | I40E_PILE_VALID_BIT;
>   			ret = i;
> -			pile->search_hint = i + j;
>   			break;
>   		}
>   
> @@ -239,7 +233,7 @@ static int i40e_put_lump(struct i40e_lump_tracking *pile, u16 index, u16 id)
>   {
>   	int valid_id = (id | I40E_PILE_VALID_BIT);
>   	int count = 0;
> -	int i;
> +	u16 i;
>   
>   	if (!pile || index >= pile->num_entries)
>   		return -EINVAL;
> @@ -251,12 +245,43 @@ static int i40e_put_lump(struct i40e_lump_tracking *pile, u16 index, u16 id)
>   		count++;
>   	}
>   
> -	if (count && index < pile->search_hint)
> -		pile->search_hint = index;
>   
>   	return count;
>   }
>   
> +/**
> + * i40e_max_lump_qp - find a biggest size of lump available in qp_pile
> + * @pf: pointer to private device data structure
> + *
> + * Returns the max size of lump in a qp_pile, or negative for error
> + */
> +int i40e_max_lump_qp(struct i40e_pf *pf)
> +{
> +	struct i40e_lump_tracking *pile = pf->qp_pile;
> +	int pool_size, max_size;
> +	u16 i;

unsigned int i;

> +
> +	if (!pile) {
> +		dev_info(&pf->pdev->dev,
> +			 "param err: pile=%s\n",
> +			 pile ? "<valid>" : "<null>");
> +		return -EINVAL;
> +	}
> +
> +	pool_size = 0;
> +	max_size = 0;
> +	for (i = 0; i < pile->num_entries; i++) {
> +		if (pile->list[i] & I40E_PILE_VALID_BIT) {
> +			pool_size = 0;
> +			continue;
> +		}
> +		if (max_size < ++pool_size)
> +			max_size = pool_size;

Maybe in one line: max_size = max(max_size, ++pool_size);

> +	}
> +
> +	return max_size;
> +}
> +
>   /**
>    * i40e_find_vsi_from_id - searches for the vsi with the given id
>    * @pf: the pf structure to search for the vsi
> @@ -11753,7 +11778,6 @@ static int i40e_init_interrupt_scheme(struct i40e_pf *pf)
>   		return -ENOMEM;
>   
>   	pf->irq_pile->num_entries = vectors;
> -	pf->irq_pile->search_hint = 0;
>   
>   	/* track first vector for misc interrupts, ignore return */
>   	(void)i40e_get_lump(pf, pf->irq_pile, 1, I40E_PILE_VALID_BIT - 1);
> @@ -12556,7 +12580,6 @@ static int i40e_sw_init(struct i40e_pf *pf)
>   		goto sw_init_done;
>   	}
>   	pf->qp_pile->num_entries = pf->hw.func_caps.num_tx_qp;
> -	pf->qp_pile->search_hint = 0;
>   
>   	pf->tx_timeout_recovery_level = 1;
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index c007fba3d1dd..5a488ce5451b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2616,6 +2616,59 @@ error_param:
>   				       aq_ret);
>   }
>   
> +/**
> + * i40e_check_enough_queue - find enough queue

find big enough queue?
find big enough queue size?

> + * @vf: pointer to the VF info
> + * @needed: the number of items needed
> + *
> + * Returns the base item index of the queue, or negative for error
> + **/
> +static int i40e_check_enough_queue(struct i40e_vf *vf, u16 needed)
> +{
> +	u16 i, cur_queues, more, pool_size;

`unsigned int` or `size_t` where possible.

> +	struct i40e_lump_tracking *pile;
> +	struct i40e_pf *pf = vf->pf;
> +	struct i40e_vsi *vsi;
> +
> +	vsi = pf->vsi[vf->lan_vsi_idx];
> +	cur_queues = vsi->alloc_queue_pairs;
> +
> +	/* if current allocated queues is enough for need */
> +	if (cur_queues >= needed)
> +		return vsi->base_queue;
> +
> +	pile = pf->qp_pile;
> +	if (cur_queues > 0) {
> +		/* if queues of allocated not zero, just check if

Please improve the wording.

> +		 * there is enough queues behind the allocated queues

s/is/are/

> +		 * for more.
> +		 */
> +		more = needed - cur_queues;
> +		for (i = vsi->base_queue + cur_queues;
> +			i < pile->num_entries; i++) {
> +			if (pile->list[i] & I40E_PILE_VALID_BIT)
> +				break;
> +
> +			if (more-- == 1)
> +				/* there is enough */
> +				return vsi->base_queue;
> +		}
> +	}
> +
> +	pool_size = 0;
> +	for (i = 0; i < pile->num_entries; i++) {
> +		if (pile->list[i] & I40E_PILE_VALID_BIT) {
> +			pool_size = 0;
> +			continue;
> +		}
> +		if (needed <= ++pool_size)
> +			/* there is enough */
> +			return i;
> +	}
> +
> +	return -ENOMEM;
> +}
> +
>   /**
>    * i40e_vc_request_queues_msg
>    * @vf: pointer to the VF info
> @@ -2650,6 +2703,12 @@ static int i40e_vc_request_queues_msg(struct i40e_vf *vf, u8 *msg)
>   			 req_pairs - cur_pairs,
>   			 pf->queues_left);
>   		vfres->num_queue_pairs = pf->queues_left + cur_pairs;
> +	} else if (i40e_check_enough_queue(vf, req_pairs) < 0) {
> +		dev_warn(&pf->pdev->dev,
> +			 "VF %d requested %d more queues, but there is not enough for it.\n",
> +			 vf->vf_id,
> +			 req_pairs - cur_pairs);
> +		vfres->num_queue_pairs = cur_pairs;
>   	} else {
>   		/* successful request */
>   		vf->num_req_queues = req_pairs;
> 


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
