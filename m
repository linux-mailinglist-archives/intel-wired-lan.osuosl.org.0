Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CD0767D0D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 10:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6897B83EC3;
	Sat, 29 Jul 2023 08:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6897B83EC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690617739;
	bh=54bWd5PUDg6jaRVgRrjhCSuvXsffckvxR+Iyhxw2g0I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3hhbQHrYQ7rB68m8INNdxH3WhrwtqkVw0exl/8XFdpiH5sZkRfWqAOEUNk23w0Bcg
	 Z4rz9rF+rcJ80loLddOhs2Yy/XvTrAqx65wCN+z9mSQPNYIDjRPk2pmD990dAWbWAX
	 6S910R36BbpECsBD41hFJwXLsSePhK9Ju0Q8OgtwCVJRKNCUwX7a5jeh2CYz1I95Th
	 JeDpns+hAaIEse6lSCAzZK+fXKRWruhNu/cJAoiQ/gDkpOau9ro6OkR2hLYo1R93+N
	 WpOlggWmUraFLOiSbQtUz69hllGAoWzbwWFaf2/mGtx9IlCstQMS2F6eQEPrHEuu9n
	 CPoI0TR/ETLJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5eueP1vQEKuC; Sat, 29 Jul 2023 08:02:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17C4783C5C;
	Sat, 29 Jul 2023 08:02:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17C4783C5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A4371BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 08:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 463A860B8F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 08:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 463A860B8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKXM-n7f-nYn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 08:02:08 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C192560AE1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 08:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C192560AE1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="366212236"
X-IronPort-AV: E=Sophos;i="6.01,239,1684825200"; d="scan'208";a="366212236"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2023 01:02:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="797666103"
X-IronPort-AV: E=Sophos;i="6.01,239,1684825200"; d="scan'208";a="797666103"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 29 Jul 2023 01:02:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 29 Jul 2023 01:02:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 29 Jul 2023 01:02:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sat, 29 Jul 2023 01:02:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sat, 29 Jul 2023 01:02:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHwOMZeE9Zxhu7nKMw3L3VknZ98nLJM+8ycSr876TYqZg47vNryklCFeoVYICqxB6MADp5JgyAsjYBWUUcCggE8XrHSInX2v9o9qR6E9AddN6CwEuxte+Aub/y2zQ/MXHU9RPR/CNcapyQVB9/5Oes6pZvDVkhi9BOhAliWdnftorQD55vIgryidZJEUaeJz1u9qIWJsrEUAXT0on5Tza2Jq3oJKdv7ekFts+/kkuPDB7VWqA3nfnFN06nUpxG/7e/2O5S0B2PGAg0ESA137XUPihkjfBeQW/O0LFIXXyQRUz5ITu4B4KQEYnyfsTFVhH3XP5yI+uR+rG8oGXbCE8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iyGX65rVtdMDTG1Y7YqTkv/pfSnGHdGKGle3ld6Y63w=;
 b=efbdyZwigLicTYVd2lHPdc0z1AeVe8MfYjo7vOA175wf/iGC9ZvcAIMk/ePJTepzG+uiKSpVkOE5MYIYlsOUJh7aBUyEaUraA6Wjd0XHbDl3hJtL6gN72a2r7cp6bh6fLJUuitVnH1gdo5+Zr48EUC7C9N5daH+94heToe5j1SY0MreLd3mLITW5psyRMVm116ZFMV8kR/ctuNwzsYfEqJ0j965tGUAQZBCfuMCa1cYizuaCnxePCfYyn6nJ5KmxdsmQIOJC4yUqifCw1NHkHwdYxx0d7XfMbzxahNj1SxblaK1RMwA9GGFb4hyWwRDzsgXR1LEJxzDfj4mYZ0D0lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Sat, 29 Jul
 2023 08:02:03 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::a8f9:3589:7af0:bebe]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::a8f9:3589:7af0:bebe%7]) with mapi id 15.20.6631.026; Sat, 29 Jul 2023
 08:02:03 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, "kkiot@tuta.io" <kkiot@tuta.io>, 
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>, "Soesan, Ron" <ron.soesan@intel.com>
Thread-Topic: [Intel-wired-lan] PROBLEM: igc driver - Ethernet NIC speed not
 changing
Thread-Index: AQHZv0m55TbnkKQi9EGpv/5b2V2ZYK/QZDcAgAACggA=
Date: Sat, 29 Jul 2023 08:02:02 +0000
Message-ID: <SJ1PR11MB61809DFD99185423133BC9F8B807A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <NaDlWbh--3-9@tuta.io>
 <c1f53618-359b-3500-cde5-651fd53b9d99@intel.com>
In-Reply-To: <c1f53618-359b-3500-cde5-651fd53b9d99@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH7PR11MB7663:EE_
x-ms-office365-filtering-correlation-id: ac8eb808-6255-48c7-95b6-08db900a17c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d/Vtnmx3fMhHmHaTS0WLPLjVsTKOe6rXwDjR1N9BfCy8FZYuX8G9dOdLia6cjGEpkG1ChaB798U5VnFfaYzhZMLm0TfI5QiBTP/q2R/QFOCqNthif0ecOTLuvFo/l5fZhdvdm6t9xjdzV0AP2ezXbr3R3uOkBOHi3rFkswVUL+3taH7esH0gGbbfMI5ganUaXPjrT/r7k2Enf++63CAUCzFb6cw/tvmjbwp6Ms7CH0sCqjp+f3Id5kTd8B24r9lvdO8WAyzCkYLcm/ZIKGxxoLYA2NNo3ZKFJV68Olrq19NjJoqwjahbLdRSJdf/YzOYskGTTEuC4IgVyJx2x4BcFgGrn+IBm1o7ZmHX1WLusCWy5s7IPMn4IGccnWXZUt5fM2nPsga2srLW5mZH20RRsTOnYZMR9oehPQKzJYjSC7BFlUwU+s+o8DYt/LBY4JlMJsOS/RzmrmFrVVelirNxzREgyZUiR57/LqlKfazy87yRL54FUYoAadXOD2r9iH7hd9Zl0wfGYNVU/BqM5uoxpy2kfWROELc5H+N7H4zCD2Siu9dNNYeQsfhcJTeGXkrmEr3sDy87mQq3gCReCXhNsjOVU0yZP5eiDbOlB1/oMBSTPGwNNG0qZ0ekoTusCigMYKiRVg+ntwCStJXmqbf6CA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(396003)(39860400002)(366004)(451199021)(9686003)(52536014)(7696005)(966005)(54906003)(53546011)(41300700001)(110136005)(66556008)(26005)(6636002)(6506007)(186003)(66446008)(76116006)(66476007)(64756008)(4326008)(66946007)(5660300002)(316002)(86362001)(478600001)(8676002)(8936002)(71200400001)(33656002)(66574015)(30864003)(38070700005)(921005)(83380400001)(38100700002)(55016003)(2906002)(122000001)(82960400001)(473944003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDFIUGt5ZFQxU3dybSsycGwvTU44WnpJekhJM2o1d2d6bXo5VS92L0l2Nld6?=
 =?utf-8?B?NjNLc0FZUDlxQ2lmYTNjVlVhRXh0RERibitOWmRpODI4c0h1ZEwxNmhwNlQw?=
 =?utf-8?B?SHp3ME5vZmEwdlp2MDVoSVVBb1hmZGQxWGFyNzhlWE9ieTIrb3F6WDJCR0tL?=
 =?utf-8?B?bnl6WUYyZzdWbElVbjMyakZrcUcwSlBZSDJ6L3VSbzQzNWVqNmIxNlZCZ0dh?=
 =?utf-8?B?M0g2cGp1ZEUyRk84ampDVEZuZlFQUlg4U1FFZXIxby9uaDI2bmtxc0o1N0Mz?=
 =?utf-8?B?NjZsbkE3YTZwQ0VONWxnT0R3eFRibTI2UE1FY1VLU0ZQeWhaZkhQTWUxNmUv?=
 =?utf-8?B?cWJzV1hJS1ZCMkhHNTlFQ3hURnI3QUFXd2wwaFBSMGhhNDJ0eDNrNXIrYzVF?=
 =?utf-8?B?MWpnYVA3czNHdU1DUURqR3FxazZiRzN3U1BNdTRzZTFCaGM5RkFEMDlwT08y?=
 =?utf-8?B?SFd2c1lSeGtnalRUOHFQb0F4MTc1djQ0eDVKM2psdEh6ckFySTlTWjlTT29E?=
 =?utf-8?B?SkpFWnpSWnVJT2ozdXZIUCtxM2xZQldnODRkYnRCK0FidmMvdWZzVEtoYy9U?=
 =?utf-8?B?bVJNcllxNlpvUllhZ2hvdGIvYndlWWRJN052THdLSVBQZkJzZWJBdjJobk1s?=
 =?utf-8?B?R1YvREVOOTZTRnJ2eWpLVlRuZTdyRDBtRlVvM0o5WkNseFY2dEgrMDRidXpV?=
 =?utf-8?B?RTZORnNlZEpMTTFRaTl3RXgrUVJnWFNXQ1ordk8wb004S3luSUtkdXVZTW53?=
 =?utf-8?B?cXIxU3BmdUZSUk5EaVNMdmNsYlBzb1hRQVdRQ0NMWDFqRHBRQ1pVUktQU1R6?=
 =?utf-8?B?anFZaC8yODBnK25Fc05WOENmQmJXU0hFOVFLMVpMOW1KbUp2Wi9oYjZUSy8w?=
 =?utf-8?B?blhjcUkvK1p1bDlYQldwNFYvNnY0bXlaK1R4amxJRGF0cDZwQ1BkdXZOT0hN?=
 =?utf-8?B?b1hTQmo1aGxlUU5WRHVlcURsNVE0blBOZDdmcWtaWlRnUXYzUERJMlVCWUxB?=
 =?utf-8?B?STZVdkZmNTlNallCcU5VWjFnUFdXUFJtYitzRkRXUVk1c2N5eHVHcFM4bC84?=
 =?utf-8?B?a2dhUWk2MkkyYjZiOG43OXJHelJFcmRYclFwSk9UTXpNRFZZR1czVWgxVDVF?=
 =?utf-8?B?Q0NRYWtEYU1SRDFyb2FyR2lGN3ZBOUxPSG8yM2E4UjBDSERTZFBsRjFRWjRa?=
 =?utf-8?B?TzJsb1hXNHB5bitBanJ0dng1SnRzS3dBM0lUL0Q5UVFJN2hKSmF5cXhIR0s3?=
 =?utf-8?B?ZDRTVlVKNnZJbHo0bjZobjlHRVVNTkVKcE02ZFRZaEZjaGxUMnIzekdJaHIy?=
 =?utf-8?B?VE1SYWhyS1labFVPVXdpczUwb2pIQWw4SnlsTkhSK0V4a0FWYld3cUdCVmRI?=
 =?utf-8?B?V2N2SmJUYnd1ZWpYV3JHYWVDemtPNWhTV2x3eHlXTWowRXdxVTl1dStZa0NW?=
 =?utf-8?B?amhxc0dSUjQ5VlJ4YmZyYStHK0N2S3FXMGE3bzhkQTR5WUNKTXlzbFJOQ1Jm?=
 =?utf-8?B?bnBseG1QODFSOXRiSE1jOWNBMk1TbUQ4ZDNySlFvVnliSmdtcXQ1aXFEdDBa?=
 =?utf-8?B?dncyMGxsQzN0TUpCWXAyTFN4V3M1bGtETDJDU0tSY1d1a3hCeTBDbkpBd210?=
 =?utf-8?B?WnpUTzRZMFAvYzNpcEhUai9GVHFXMlUxWG9GcXI3Z1FpN0RJeW1LR3RhMFB0?=
 =?utf-8?B?R25uaTVpOUlscTI0ZEw4RGZSeTFWNGlLQkdqYWNFR0Q0T0RNWmVMUGVHdmVz?=
 =?utf-8?B?MUpXUXh0a0c0R2hXR3ovMkN6UXpOQkcrYnNTTzFMcVlySEtXdGtBNjhiME9j?=
 =?utf-8?B?VDFjaTBHbDRCOUc2K2FXM2tNQzBaQmhhVE9MVmxCOHJKRGI2Z3pYaUhmMFlh?=
 =?utf-8?B?dnowMzdrWEpoRFJ4cnFLU3ZUUVlaMHArRlVzbGpEanVOczlad3RLNWdCZ0NI?=
 =?utf-8?B?N05zdERldHdhcTBtTG1idkFNMC9INjRianhUODJGT1Jud2QrSmM5RTBCekht?=
 =?utf-8?B?Z3FuaVJaQnJIdDNYcllYenNVRFJoRFFWUXkzaS9PSDk3VjZUT09NVEhzRTRX?=
 =?utf-8?B?SXFlQ09xVlNadFIybmxqNUd3dkZhZlZHWWpVUTlqZlVTZlp1cnFDUVhITi9P?=
 =?utf-8?B?a3p2MVZsSmNhU2hmalRSVm4zTlRYTFFDZVo5SzJTSW04eDMwT0FKTGEwdzdS?=
 =?utf-8?Q?zj7w1NdGCz95BnjdwFQJg54=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac8eb808-6255-48c7-95b6-08db900a17c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2023 08:02:02.5611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 94HdYMzTVt0DsOY2smpFdbgX0AnHz4DX2fl/WMnAePPbbLgSAqvUOMnyRlQ2L3j6CRlQkMDE5nT6OkmFJgq5HM6CGsmHyWr3dyj4Y48PLIxFkm/Hh/HcV/OSoa0mzDPC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690617727; x=1722153727;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iyGX65rVtdMDTG1Y7YqTkv/pfSnGHdGKGle3ld6Y63w=;
 b=Ja1JdZR17HfA8ggwkNTAoq4xX0OSCUZ8vGcwILZ+fis8E2fgkh1DKqI8
 WBdfJSOZCRGpFg22Q1n1DdYo7XvILkvDebQKpqGj9MJxBcAcJ/5dJIb1p
 WVQ20Kv5D9d/hh+iFRRFOE1XpNDsLpkdZyFNGX1W7s6L1Ha4lTnyRVf6q
 EiULWRJGThcUtI4QHzjfud2U4WnMfFtnLE6AKQmRPkwE2WCrPVzWhmYSv
 DqB3hx3GHKbNhgtgmWMxrD371mQTGvLwAn++g1WxTtNwK70xLkkYqxphQ
 SwancmsSChhERAFy9du7XunJSPirvNz1GCjoSfInuqFjgGq2VRsUEYx/p
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ja1JdZR1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] PROBLEM: igc driver - Ethernet NIC speed not
 changing
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
Cc: Netdev <netdev@vger.kernel.org>,
 Intel Wired Lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8sDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2ly
ZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YN
Cj4gTmVmdGluLCBTYXNoYQ0KPiBTZW50OiBTYXR1cmRheSwgMjkgSnVseSwgMjAyMyAzOjUxIFBN
DQo+IFRvOiBra2lvdEB0dXRhLmlvOyBCcmFuZGVidXJnLCBKZXNzZSA8amVzc2UuYnJhbmRlYnVy
Z0BpbnRlbC5jb20+Ow0KPiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBSdWluc2tpeSwgRGltYQ0KPiA8ZGltYS5ydWluc2tpeUBpbnRlbC5jb20+OyBBdml2
aSwgQW1pciA8YW1pci5hdml2aUBpbnRlbC5jb20+OyBTb2VzYW4sIFJvbg0KPiA8cm9uLnNvZXNh
bkBpbnRlbC5jb20+DQo+IENjOiBOZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+OyBJbnRl
bCBXaXJlZCBMYW4gPGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZz4NCj4gU3Vi
amVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFBST0JMRU06IGlnYyBkcml2ZXIgLSBFdGhlcm5l
dCBOSUMgc3BlZWQgbm90DQo+IGNoYW5naW5nDQo+IA0KPiBPbiA3LzI1LzIwMjMgMjM6MzgsIGtr
aW90QHR1dGEuaW8gd3JvdGU6DQo+ID4gWzEuXSBPbmUgbGluZSBzdW1tYXJ5IG9mIHRoZSBwcm9i
bGVtOiBpZ2MgZHJpdmVyIC0gRXRoZXJuZXQgTklDIHNwZWVkDQo+ID4gbm90IGNoYW5naW5nIFsy
Ll0gRnVsbCBkZXNjcmlwdGlvbiBvZiB0aGUgcHJvYmxlbS9yZXBvcnQ6DQo+ID4gVHJ5aW5nIHRv
IGNoYW5nZSBteSBJMjI1LVYncyBjb25uZWN0aW9uIHNwZWVkIHRvIDEwMDAgTWJwcyBkb3duIGZy
b20NCj4gPiAyNTAwIE1icHPCoGFzIGEgd29ya2Fyb3VuZMKgdG8gZGlzY29ubmVjdGlvbiBpc3N1
ZXMsIGJ1dCBjaGFuZ2VzIHdvbid0DQo+ID4gYXBwbHksIHJlZ2FyZGxlc3Mgb2YgdXNpbmcgTmV0
d29ya01hbmFnZXIgb3IgZXRodG9vbC4NCj4gPg0KPiA+IE5ldHdvcmtNYW5hZ2VyIGRpc3BsYXlz
IHRoZSBjaGFuZ2VkIHZhbHVlcywgYnV0IHRoZXkgZG9uJ3Qgc2VlbSB0bw0KPiA+IGFjdHVhbGx5
IGFwcGx5Lg0KPiA+DQo+ID4gVXNpbmcgZXRodG9vbCB0byBjaGFuZ2UgdGhlIHNwZWVkIHRvIDEw
MDAgTWJwcyAoYGV0aHRvb2wgLXMgZW5wNnMwDQo+ID4gc3BlZWQNCj4gPiAxMDAwYCkgYWxzbyBm
YWlscy4NCj4gPiBUaGUgaW50ZXJmYWNlIGdldHMgYnJvdWdodCBkb3duIHRoZW4gdXAgd2l0aCB0
aGUgc2FtZSAyNTAwIE1icHMgc3BlZWQuDQo+IA0KPiBJIHdvdWxkIHN1c3BlY3QgImxpbmsgc3Bl
ZWQiIGlzIGEgY29uc2VxdWVudCBwcm9ibGVtIGhlcmUuIFBsZWFzZSwgY2hlY2sNCj4geW91ciBz
ZXR1cC4gV2h5IGRvZXMgZGlzY29ubmVjdGlvbiBoYXBwZW4gYWdhaW4gYW5kIGFnYWluPyBBbnkg
cHJvYmxlbXMNCj4gd2l0aCB0aGUgUENJZSBsaW5rPyAoY2F1c2VkIGJ5IHJlc2V0IGFkYXB0ZXIp
IEkgcmVjb21tZW5kIHlvdSBjb250YWN0IHRoZQ0KPiBwbGF0Zm9ybSdzIHZlbmRvciBzdXBwb3J0
Lg0KDQpJTUhPLCB3ZSBzaGFsbCB1c2UgdGhlIGFkdmVydGlzZSBjb21tYW5kIGluc3RlYWQgb2Yg
c3BlZWQgY29tbWFuZA0Kc2luY2Ugd2UgYXJlIHVzaW5nIGxlZ2FjeSBhZHZlcnRpc2Ugc2V0dGlu
Zy4NCkNvdWxkIHlvdSB0cnkgd2l0aCBiZWxvdyBjb21tYW5kIGFuZCBzZWUgaWYgdGhlIGxpbmsg
YWN0aXZpdHkgaGFwcGVuDQphY2NvcmRpbmdseT8NCg0KRXg6DQoNCmV0aHRvb2wgLXMgPGludGVy
ZmFjZT4gYWR2ZXJ0aXNlIDx2YWx1ZT4NCg0KPHZhbHVlPiAtICA6IDIgICAoMTBNYnBzKQ0KCSAg
ICA6IDggICAoMTAwTWJwcykNCgkgICAgOiAzMiAoMTAwME1icHMpDQoNCj4gPiBbMy5dIEtleXdv
cmRzIChpLmUuLCBtb2R1bGVzLCBuZXR3b3JraW5nLCBrZXJuZWwpOiBkcml2ZXIsIG5ldHdvcmtp
bmcsDQo+ID4gaWdjLCBpbnRlbCBbNC5dIEtlcm5lbCBpbmZvcm1hdGlvbiBbNC4xLl0gS2VybmVs
IHZlcnNpb24gKGZyb20NCj4gPiAvcHJvYy92ZXJzaW9uKTrCoExpbnV4IHZlcnNpb24gNi40LjYt
YXJjaDEtMQ0KPiA+IChsaW51eEBhcmNobGludXgpIChnY2MgKEdDQykgMTMuMS4xIDIwMjMwNzE0
LCBHTlUgbGQgKEdOVSBCaW51dGlscykNCj4gPiAyLjQwLjApICMxIFNNUCBQUkVFTVBUX0RZTkFN
SUMgTW9uLCAyNCBKdWwgMjAyMyAyMDoxOTozOCArMDAwMCBbNC4yLl0NCj4gPiBLZXJuZWwgLmNv
bmZpZyBmaWxlOiBDYW5ub3Qgb2J0YWluIFs1Ll0gTW9zdCByZWNlbnQga2VybmVsIHZlcnNpb24N
Cj4gPiB3aGljaCBkaWQgbm90IGhhdmUgdGhlIGJ1ZzogNi4yLjkgb3IgbW9yZSByZWNlbnQ/DQo+
ID4gWzYuXSBPdXRwdXQgb2YgT29wcy4uIG1lc3NhZ2UgKGlmIGFwcGxpY2FibGUpIHdpdGggc3lt
Ym9saWMNCj4gPiBpbmZvcm1hdGlvbiByZXNvbHZlZCAoc2VlIERvY3VtZW50YXRpb24vYWRtaW4t
Z3VpZGUvYnVnLWh1bnRpbmcucnN0KQ0KPiA+IE4vQSBbNy5dIEEgc21hbGwgc2hlbGwgc2NyaXB0
IG9yIGV4YW1wbGUgcHJvZ3JhbSB3aGljaCB0cmlnZ2VycyB0aGUNCj4gPiBwcm9ibGVtIChpZiBw
b3NzaWJsZSkgIyBldGh0b29sIC1zIFtJTlRFUkZBQ0VdIHNwZWVkIDEwMDAgWzguXQ0KPiA+IEVu
dmlyb25tZW50IFs4LjEuXSBTb2Z0d2FyZSAoYWRkIHRoZSBvdXRwdXQgb2YgdGhlIHZlcl9saW51
eCBzY3JpcHQNCj4gPiBoZXJlKSBDYW5ub3Qgb2J0YWluIFs4LjIuXSBQcm9jZXNzb3IgaW5mb3Jt
YXRpb24gKGZyb20gL3Byb2MvY3B1aW5mbyk6DQo+ID4gcHJvY2Vzc29yIDogMA0KPiA+IHZlbmRv
cl9pZCA6IEF1dGhlbnRpY0FNRA0KPiA+IGNwdSBmYW1pbHkgOiAyMw0KPiA+IG1vZGVsIDogMTEz
DQo+ID4gbW9kZWwgbmFtZSA6IEFNRCBSeXplbiA1IDM2MDAgNi1Db3JlIFByb2Nlc3NvciBzdGVw
cGluZyA6IDAgbWljcm9jb2RlDQo+ID4gOiAweDg3MDEwMzAgY3B1IE1IeiA6IDI0NzMuMTUzIGNh
Y2hlIHNpemUgOiA1MTIgS0IgcGh5c2ljYWwgaWQgOiAwDQo+ID4gc2libGluZ3MgOiAxMiBjb3Jl
IGlkIDogMCBjcHUgY29yZXMgOiA2IGFwaWNpZCA6IDAgaW5pdGlhbCBhcGljaWQgOiAwDQo+ID4g
ZnB1IDogeWVzIGZwdV9leGNlcHRpb24gOiB5ZXMgY3B1aWQgbGV2ZWwgOiAxNiB3cCA6IHllcyBm
bGFncyA6IGZwdQ0KPiA+IHZtZSBkZSBwc2UgdHNjIG1zciBwYWUgbWNlIGN4OCBhcGljIHNlcCBt
dHJyIHBnZSBtY2EgY21vdiBwYXQgcHNlMzYNCj4gPiBjbGZsdXNoIG1teCBmeHNyIHNzZSBzc2Uy
IGh0IHN5c2NhbGwgbnggbW14ZXh0IGZ4c3Jfb3B0IHBkcGUxZ2IgcmR0c2NwDQo+ID4gbG0gY29u
c3RhbnRfdHNjIHJlcF9nb29kIG5vcGwgbm9uc3RvcF90c2MgY3B1aWQgZXh0ZF9hcGljaWQgYXBl
cmZtcGVyZg0KPiA+IHJhcGwgcG5pIHBjbG11bHFkcSBtb25pdG9yIHNzc2UzIGZtYSBjeDE2IHNz
ZTRfMQ0KPiA+IHNzZTRfMiB4MmFwaWMgbW92YmUgcG9wY250IGFlcyB4c2F2ZSBhdnggZjE2YyBy
ZHJhbmQgbGFoZl9sbQ0KPiA+IGNtcF9sZWdhY3kgc3ZtIGV4dGFwaWMgY3I4X2xlZ2FjeSBhYm0g
c3NlNGEgbWlzYWxpZ25zc2UgM2Rub3dwcmVmZXRjaA0KPiA+IG9zdncgaWJzIHNraW5pdCB3ZHQg
dGNlIHRvcG9leHQgcGVyZmN0cl9jb3JlIHBlcmZjdHJfbmIgYnBleHQNCj4gPiBwZXJmY3RyX2xs
YyBtd2FpdHggY3BiIGNhdF9sMyBjZHBfbDMgaHdfcHN0YXRlIHNzYmQgbWJhIGlicGIgc3RpYnAN
Cj4gPiB2bW1jYWxsIGZzZ3NiYXNlIGJtaTENCj4gPiBhdngyIHNtZXAgYm1pMiBjcW0gcmR0X2Eg
cmRzZWVkIGFkeCBzbWFwIGNsZmx1c2hvcHQgY2x3YiBzaGFfbmkNCj4gPiB4c2F2ZW9wdCB4c2F2
ZWMgeGdldGJ2MSBjcW1fbGxjIGNxbV9vY2N1cF9sbGMgY3FtX21ibV90b3RhbA0KPiA+IGNxbV9t
Ym1fbG9jYWwgY2x6ZXJvIGlycGVyZiB4c2F2ZWVycHRyIHJkcHJ1IHdibm9pbnZkIGFyYXQgbnB0
IGxicnYNCj4gPiBzdm1fbG9jayBucmlwX3NhdmUgdHNjX3NjYWxlIHZtY2JfY2xlYW4gZmx1c2hi
eWFzaWQgZGVjb2RlYXNzaXN0cw0KPiA+IHBhdXNlZmlsdGVyIHBmdGhyZXNob2xkIGF2aWMgdl92
bXNhdmVfdm1sb2FkIHZnaWYgdl9zcGVjX2N0cmwgcmRwaWQNCj4gPiBvdmVyZmxvd19yZWNvdiBz
dWNjb3Igc21jYSBzZXYgc2V2X2VzIGJ1Z3MgOiBzeXNyZXRfc3NfYXR0cnMNCj4gPiBzcGVjdHJl
X3YxIHNwZWN0cmVfdjIgc3BlY19zdG9yZV9ieXBhc3MgcmV0YmxlZWQgc210X3JzYiBib2dvbWlw
cyA6DQo+ID4gNzE4OC41MCBUTEIgc2l6ZSA6IDMwNzIgNEsgcGFnZXMgY2xmbHVzaCBzaXplIDog
NjQgY2FjaGVfYWxpZ25tZW50IDoNCj4gPiA2NCBhZGRyZXNzIHNpemVzIDogNDMgYml0cyBwaHlz
aWNhbCwgNDggYml0cyB2aXJ0dWFsIHBvd2VyIG1hbmFnZW1lbnQ6DQo+ID4gdHMgdHRwIHRtIGh3
cHN0YXRlIGNwYiBlZmZfZnJlcV9ybyBbMTNdIFsxNF0NCj4gPg0KPiA+IChyZXBlYXRzIDEyeDog
MTIgdGhyZWFkcyBwcm9jZXNzb3IpDQo+ID4gWzguMy5dIE1vZHVsZSBpbmZvcm1hdGlvbiAoZnJv
bSAvcHJvYy9tb2R1bGVzKToNCj4gPiBpZ2MgMTg4NDE2IDAgLSBMaXZlIDB4MDAwMDAwMDAwMDAw
MDAwMCBbOC40Ll0gTG9hZGVkIGRyaXZlciBhbmQNCj4gPiBoYXJkd2FyZSBpbmZvcm1hdGlvbiAo
L3Byb2MvaW9wb3J0cywgL3Byb2MvaW9tZW0pIC9wcm9jL2lvcG9ydHMNCj4gPiAwMDAwLTAwMDAg
OiBQQ0kgQnVzIDAwMDA6MDANCj4gPiAgwqAgMDAwMC0wMDAwIDogZG1hMQ0KPiA+ICDCoCAwMDAw
LTAwMDAgOiBwaWMxDQo+ID4gIMKgIDAwMDAtMDAwMCA6IHRpbWVyMA0KPiA+ICDCoCAwMDAwLTAw
MDAgOiB0aW1lcjENCj4gPiAgwqAgMDAwMC0wMDAwIDoga2V5Ym9hcmQNCj4gPiAgwqAgMDAwMC0w
MDAwIDogUE5QMDgwMDowMA0KPiA+ICDCoCAwMDAwLTAwMDAgOiBrZXlib2FyZA0KPiA+ICDCoCAw
MDAwLTAwMDAgOiBydGMwDQo+ID4gIMKgIDAwMDAtMDAwMCA6IGRtYSBwYWdlIHJlZw0KPiA+ICDC
oCAwMDAwLTAwMDAgOiBwaWMyDQo+ID4gIMKgIDAwMDAtMDAwMCA6IEFDUEkgUE0yX0NOVF9CTEsN
Cj4gPiAgwqAgMDAwMC0wMDAwIDogZG1hMg0KPiA+ICDCoCAwMDAwLTAwMDAgOiBmcHUNCj4gPiAg
wqAgMDAwMC0wMDAwIDogcG5wIDAwOjAzDQo+ID4gIMKgIDAwMDAtMDAwMCA6IHBucCAwMDowMw0K
PiA+IDAwMDAtMDAwMCA6IFBDSSBCdXMgMDAwMDowMA0KPiA+IDAwMDAtMDAwMCA6IFBDSSBCdXMg
MDAwMDowMA0KPiA+ICDCoCAwMDAwLTAwMDAgOiBzZXJpYWwNCj4gPiAgwqAgMDAwMC0wMDAwIDog
cG5wIDAwOjA0DQo+ID4gIMKgIDAwMDAtMDAwMCA6IHBucCAwMDowNA0KPiA+ICDCoCAwMDAwLTAw
MDAgOiBwbnAgMDA6MDQNCj4gPiAgwqAgMDAwMC0wMDAwIDogcG5wIDAwOjA0DQo+ID4gIMKgwqDC
oCAwMDAwLTAwMDAgOiBBQ1BJIFBNMWFfRVZUX0JMSw0KPiA+ICDCoMKgwqAgMDAwMC0wMDAwIDog
QUNQSSBQTTFhX0NOVF9CTEsNCj4gPiAgwqDCoMKgIDAwMDAtMDAwMCA6IEFDUEkgUE1fVE1SDQo+
ID4gIMKgwqDCoCAwMDAwLTAwMDAgOiBBQ1BJIEdQRTBfQkxLDQo+ID4gIMKgIDAwMDAtMDAwMCA6
IHBucCAwMDowNA0KPiA+ICDCoCAwMDAwLTAwMDAgOiBwbnAgMDA6MDQNCj4gPiAgwqAgMDAwMC0w
MDAwIDogcG5wIDAwOjA0DQo+ID4gIMKgwqDCoCAwMDAwLTAwMDAgOiBwaWl4NF9zbWJ1cw0KPiA+
ICDCoCAwMDAwLTAwMDAgOiBwbnAgMDA6MDQNCj4gPiAgwqDCoMKgIDAwMDAtMDAwMCA6IHBpaXg0
X3NtYnVzDQo+ID4gIMKgIDAwMDAtMDAwMCA6IHBucCAwMDowNA0KPiA+ICDCoCAwMDAwLTAwMDAg
OiBwbnAgMDA6MDQNCj4gPiAgwqAgMDAwMC0wMDAwIDogcG5wIDAwOjA0DQo+ID4gIMKgIDAwMDAt
MDAwMCA6IHBucCAwMDowNA0KPiA+ICDCoCAwMDAwLTAwMDAgOiBwbnAgMDA6MDQNCj4gPiAgwqAg
MDAwMC0wMDAwIDogcG5wIDAwOjA0DQo+ID4gIMKgIDAwMDAtMDAwMCA6IHBucCAwMDowNA0KPiA+
IDAwMDAtMDAwMCA6IFBDSSBjb25mMQ0KPiA+IDAwMDAtMDAwMCA6IFBDSSBCdXMgMDAwMDowMA0K
PiA+ICDCoCAwMDAwLTAwMDAgOiBQQ0kgQnVzIDAwMDA6MDcNCj4gPiAgwqDCoMKgIDAwMDAtMDAw
MCA6IFBDSSBCdXMgMDAwMDowOA0KPiA+ICDCoMKgwqDCoMKgIDAwMDAtMDAwMCA6IFBDSSBCdXMg
MDAwMDowOQ0KPiA+ICDCoMKgwqDCoMKgwqDCoCAwMDAwLTAwMDAgOiAwMDAwOjA5OjAwLjANCj4g
Pg0KPiA+IC9wcm9jL2lvbWVtDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+
IDAwMDAwMDAwLTAwMDAwMDAwIDogU3lzdGVtIFJBTQ0KPiA+IDAwMDAwMDAwLTAwMDAwMDAwIDog
UmVzZXJ2ZWQNCj4gPiAgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBQQ0kgQnVzIDAwMDA6MDANCj4g
PiAgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBTeXN0ZW0gUk9NDQo+ID4gMDAwMDAwMDAtMDAwMDAw
MDAgOiBTeXN0ZW0gUkFNDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+IDAw
MDAwMDAwLTAwMDAwMDAwIDogU3lzdGVtIFJBTQ0KPiA+IDAwMDAwMDAwLTAwMDAwMDAwIDogQUNQ
SSBOb24tdm9sYXRpbGUgU3RvcmFnZQ0KPiA+IDAwMDAwMDAwLTAwMDAwMDAwIDogU3lzdGVtIFJB
TQ0KPiA+IDAwMDAwMDAwLTAwMDAwMDAwIDogUmVzZXJ2ZWQNCj4gPiAwMDAwMDAwMC0wMDAwMDAw
MCA6IFN5c3RlbSBSQU0NCj4gPiAwMDAwMDAwMC0wMDAwMDAwMCA6IFN5c3RlbSBSQU0NCj4gPiAw
MDAwMDAwMC0wMDAwMDAwMCA6IFN5c3RlbSBSQU0NCj4gPiAwMDAwMDAwMC0wMDAwMDAwMCA6IFN5
c3RlbSBSQU0NCj4gPiAwMDAwMDAwMC0wMDAwMDAwMCA6IFN5c3RlbSBSQU0NCj4gPiAwMDAwMDAw
MC0wMDAwMDAwMCA6IFJlc2VydmVkDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBTeXN0ZW0gUkFN
DQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+IDAwMDAwMDAwLTAwMDAwMDAw
IDogU3lzdGVtIFJBTQ0KPiA+IDAwMDAwMDAwLTAwMDAwMDAwIDogUmVzZXJ2ZWQNCj4gPiAwMDAw
MDAwMC0wMDAwMDAwMCA6IFN5c3RlbSBSQU0NCj4gPiAwMDAwMDAwMC0wMDAwMDAwMCA6IFJlc2Vy
dmVkDQo+ID4gIMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogTVNGVDAxMDE6MDANCj4gPiAgwqDCoMKg
IDAwMDAwMDAwLTAwMDAwMDAwIDogTVNGVDAxMDE6MDANCj4gPiAgwqAgMDAwMDAwMDAtMDAwMDAw
MDAgOiBNU0ZUMDEwMTowMA0KPiA+ICDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBNU0ZUMDEw
MTowMA0KPiA+IDAwMDAwMDAwLTAwMDAwMDAwIDogQUNQSSBUYWJsZXMNCj4gPiAwMDAwMDAwMC0w
MDAwMDAwMCA6IEFDUEkgTm9uLXZvbGF0aWxlIFN0b3JhZ2UNCj4gPiAwMDAwMDAwMC0wMDAwMDAw
MCA6IFJlc2VydmVkDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBTeXN0ZW0gUkFNDQo+ID4gMDAw
MDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+IDAwMDAwMDAwLTAwMDAwMDAwIDogUENJIEJ1
cyAwMDAwOjAwDQo+ID4gIMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogUENJIE1NQ09ORklHIDAwMDAg
W2J1cyAwMC03Zl0NCj4gPiAgwqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogcG5wIDAwOjAwDQo+
ID4gIMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogUENJIEJ1cyAwMDAwOjBiDQo+ID4gIMKgwqDCoCAw
MDAwMDAwMC0wMDAwMDAwMCA6IDAwMDA6MGI6MDAuMw0KPiA+ICDCoMKgwqDCoMKgIDAwMDAwMDAw
LTAwMDAwMDAwIDogeGhjaS1oY2QNCj4gPiAgwqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogMDAw
MDowYjowMC4xDQo+ID4gIMKgwqDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBjY3ANCj4gPiAg
wqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogMDAwMDowYjowMC40DQo+ID4gIMKgwqDCoMKgwqAg
MDAwMDAwMDAtMDAwMDAwMDAgOiBJQ0ggSEQgYXVkaW8NCj4gPiAgwqDCoMKgIDAwMDAwMDAwLTAw
MDAwMDAwIDogMDAwMDowYjowMC4xDQo+ID4gIMKgwqDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAg
OiBjY3ANCj4gPiAgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBQQ0kgQnVzIDAwMDA6MDcNCj4gPiAg
wqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogUENJIEJ1cyAwMDAwOjA4DQo+ID4gIMKgwqDCoMKg
wqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBQQ0kgQnVzIDAwMDA6MDkNCj4gPiAgwqDCoMKgwqDCoMKg
wqAgMDAwMDAwMDAtMDAwMDAwMDAgOiAwMDAwOjA5OjAwLjANCj4gPiAgwqDCoMKgwqDCoMKgwqAg
MDAwMDAwMDAtMDAwMDAwMDAgOiAwMDAwOjA5OjAwLjANCj4gPiAgwqDCoMKgwqDCoMKgwqAgMDAw
MDAwMDAtMDAwMDAwMDAgOiAwMDAwOjA5OjAwLjENCj4gPiAgwqDCoMKgwqDCoMKgwqDCoMKgIDAw
MDAwMDAwLTAwMDAwMDAwIDogSUNIIEhEIGF1ZGlvDQo+ID4gIMKgwqDCoCAwMDAwMDAwMC0wMDAw
MDAwMCA6IDAwMDA6MDc6MDAuMA0KPiA+ICDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IFBDSSBCdXMg
MDAwMDowMg0KPiA+ICDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBQQ0kgQnVzIDAwMDA6MDMN
Cj4gPiAgwqDCoMKgwqDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IFBDSSBCdXMgMDAwMDowNg0KPiA+
ICDCoMKgwqDCoMKgwqDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IDAwMDA6MDY6MDAuMA0KPiA+ICDC
oMKgwqDCoMKgwqDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBpZ2MNCj4gPiAgwqDCoMKgwqDC
oMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiAwMDAwOjA2OjAwLjANCj4gPiAgwqDCoMKgwqDCoMKg
wqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogaWdjDQo+ID4gIMKgwqDCoCAwMDAwMDAwMC0wMDAw
MDAwMCA6IDAwMDA6MDI6MDAuMQ0KPiA+ICDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiAwMDAw
OjAyOjAwLjENCj4gPiAgwqDCoMKgwqDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IGFoY2kNCj4gPiAg
wqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogMDAwMDowMjowMC4wDQo+ID4gIMKgwqDCoMKgwqAg
MDAwMDAwMDAtMDAwMDAwMDAgOiB4aGNpLWhjZA0KPiA+ICDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6
IFBDSSBCdXMgMDAwMDowMQ0KPiA+ICDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiAwMDAwOjAx
OjAwLjANCj4gPiAgwqDCoMKgwqDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IG52bWUNCj4gPiAwMDAw
MDAwMC0wMDAwMDAwMCA6IHBucCAwMDowMQ0KPiA+ICDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IE1T
RlQwMTAxOjAwDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBhbWRfaW9tbXUNCj4gPiAwMDAwMDAw
MC0wMDAwMDAwMCA6IFJlc2VydmVkDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBJT0FQSUMgMA0K
PiA+IDAwMDAwMDAwLTAwMDAwMDAwIDogSU9BUElDIDENCj4gPiAwMDAwMDAwMC0wMDAwMDAwMCA6
IFJlc2VydmVkDQo+ID4gIMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogcG5wIDAwOjA0DQo+ID4gMDAw
MDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+ICDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IEFN
RElGMDMwOjAwDQo+ID4gIMKgwqDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IEFNRElGMDMwOjAwIEFN
RElGMDMwOjAwDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+ICDCoCAwMDAw
MDAwMC0wMDAwMDAwMCA6IEhQRVQgMA0KPiA+ICDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBQ
TlAwMTAzOjAwDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+IDAwMDAwMDAw
LTAwMDAwMDAwIDogUmVzZXJ2ZWQNCj4gPiAgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBBTURJMDAz
MDowMA0KPiA+ICDCoMKgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBBTURJMDAzMDowMCBBTURJMDAz
MDowMA0KPiA+IDAwMDAwMDAwLTAwMDAwMDAwIDogcG5wIDAwOjA0DQo+ID4gMDAwMDAwMDAtMDAw
MDAwMDAgOiBSZXNlcnZlZA0KPiA+ICDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IEFNREkwMDEwOjAz
DQo+ID4gIMKgwqDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IEFNREkwMDEwOjAzIEFNREkwMDEwOjAz
DQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+IDAwMDAwMDAwLTAwMDAwMDAw
IDogTG9jYWwgQVBJQw0KPiA+ICDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IHBucCAwMDowNA0KPiA+
IDAwMDAwMDAwLTAwMDAwMDAwIDogcG5wIDAwOjA0DQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBT
eXN0ZW0gUkFNDQo+ID4gIMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogS2VybmVsIGNvZGUNCj4gPiAg
wqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBLZXJuZWwgcm9kYXRhDQo+ID4gIMKgIDAwMDAwMDAwLTAw
MDAwMDAwIDogS2VybmVsIGRhdGENCj4gPiAgwqAgMDAwMDAwMDAtMDAwMDAwMDAgOiBLZXJuZWwg
YnNzDQo+ID4gMDAwMDAwMDAtMDAwMDAwMDAgOiBSZXNlcnZlZA0KPiA+IDAwMDAwMDAwLTAwMDAw
MDAwIDogUENJIEJ1cyAwMDAwOjAwDQo+ID4gIMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogUENJIEJ1
cyAwMDAwOjA3DQo+ID4gIMKgwqDCoCAwMDAwMDAwMC0wMDAwMDAwMCA6IFBDSSBCdXMgMDAwMDow
OA0KPiA+ICDCoMKgwqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogUENJIEJ1cyAwMDAwOjA5DQo+
ID4gIMKgwqDCoMKgwqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogMDAwMDowOTowMC4wDQo+ID4g
IMKgwqDCoMKgwqDCoMKgIDAwMDAwMDAwLTAwMDAwMDAwIDogMDAwMDowOTowMC4wDQo+ID4gMDAw
MDAwMDAtMDAwMDAwMDAgOiAwMDAwOjA5OjAwLjANCj4gPiBbOC41Ll0gUENJIGluZm9ybWF0aW9u
ICgnbHNwY2kgLXZ2dicgYXMgcm9vdCkNCj4gPiAwNjowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6
IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IENvbnRyb2xsZXINCj4gPiBJMjI1LVYgKHJldiAw
MikNCj4gPiBTdWJzeXN0ZW06IEFTVVNUZUsgQ29tcHV0ZXIgSW5jLiBFdGhlcm5ldCBDb250cm9s
bGVyIEkyMjUtVg0KPiA+IENvbnRyb2w6IEkvTy0gTWVtKyBCdXNNYXN0ZXIrIFNwZWNDeWNsZS0g
TWVtV0lOVi0gVkdBU25vb3AtDQo+IFBhckVyci0NCj4gPiBTdGVwcGluZy0gU0VSUi0gRmFzdEIy
Qi0gRGlzSU5UeCsNCj4gPiBTdGF0dXM6IENhcCsgNjZNSHotIFVERi0gRmFzdEIyQi0gUGFyRXJy
LSBERVZTRUw9ZmFzdCA+VEFib3J0LQ0KPiA+IDxUQWJvcnQtDQo+ID4gPE1BYm9ydC0gPlNFUlIt
IDxQRVJSLSBJTlR4LQ0KPiA+IExhdGVuY3k6IDAsIENhY2hlIExpbmUgU2l6ZTogNjQgYnl0ZXMN
Cj4gPiBJbnRlcnJ1cHQ6IHBpbiBBIHJvdXRlZCB0byBJUlEgMzYNCj4gPiBJT01NVSBncm91cDog
MTUNCj4gPiBSZWdpb24gMDogTWVtb3J5IGF0IGZjYzAwMDAwICgzMi1iaXQsIG5vbi1wcmVmZXRj
aGFibGUpIFtzaXplPTFNXQ0KPiA+IFJlZ2lvbiAzOiBNZW1vcnkgYXQgZmNkMDAwMDAgKDMyLWJp
dCwgbm9uLXByZWZldGNoYWJsZSkgW3NpemU9MTZLXQ0KPiA+IENhcGFiaWxpdGllczogWzQwXSBQ
b3dlciBNYW5hZ2VtZW50IHZlcnNpb24gMw0KPiA+IEZsYWdzOiBQTUVDbGstIERTSSsgRDEtIEQy
LSBBdXhDdXJyZW50PTBtQQ0KPiA+IFBNRShEMCssRDEtLEQyLSxEM2hvdCssRDNjb2xkKykNCj4g
PiBTdGF0dXM6IEQwIE5vU29mdFJzdCsgUE1FLUVuYWJsZS0gRFNlbD0wIERTY2FsZT0xIFBNRS0N
Cj4gPiBDYXBhYmlsaXRpZXM6IFs1MF0gTVNJOiBFbmFibGUtIENvdW50PTEvMSBNYXNrYWJsZSsg
NjRiaXQrDQo+ID4gQWRkcmVzczogMDAwMDAwMDAwMDAwMDAwMMKgIERhdGE6IDAwMDANCj4gPiBN
YXNraW5nOiAwMDAwMDAwMMKgIFBlbmRpbmc6IDAwMDAwMDAwDQo+ID4gQ2FwYWJpbGl0aWVzOiBb
NzBdIE1TSS1YOiBFbmFibGUrIENvdW50PTUgTWFza2VkLSBWZWN0b3IgdGFibGU6IEJBUj0zDQo+
ID4gb2Zmc2V0PTAwMDAwMDAwDQo+ID4gUEJBOiBCQVI9MyBvZmZzZXQ9MDAwMDIwMDANCj4gPiBD
YXBhYmlsaXRpZXM6IFthMF0gRXhwcmVzcyAodjIpIEVuZHBvaW50LCBNU0kgMDANCj4gPiBEZXZD
YXA6IE1heFBheWxvYWQgNTEyIGJ5dGVzLCBQaGFudEZ1bmMgMCwgTGF0ZW5jeSBMMHMgPDUxMm5z
LCBMMQ0KPiA+IDw2NHVzDQo+ID4gRXh0VGFnLSBBdHRuQnRuLSBBdHRuSW5kLSBQd3JJbmQtIFJC
RSsgRkxSZXNldCsgU2xvdFBvd2VyTGltaXQgMFcNCj4gPiBEZXZDdGw6IENvcnJFcnIrIE5vbkZh
dGFsRXJyKyBGYXRhbEVycisgVW5zdXBSZXErDQo+ID4gUmx4ZE9yZCsgRXh0VGFnLSBQaGFudEZ1
bmMtIEF1eFB3ci0gTm9Tbm9vcCsgRkxSZXNldC0NCj4gPiBNYXhQYXlsb2FkIDUxMiBieXRlcywg
TWF4UmVhZFJlcSA1MTIgYnl0ZXMNCj4gPiBEZXZTdGE6IENvcnJFcnItIE5vbkZhdGFsRXJyLSBG
YXRhbEVyci0gVW5zdXBSZXEtIEF1eFB3cisgVHJhbnNQZW5kLQ0KPiA+IExua0NhcDogUG9ydCAj
OSwgU3BlZWQgNUdUL3MsIFdpZHRoIHgxLCBBU1BNIEwxLCBFeGl0IExhdGVuY3kgTDEgPDR1cw0K
PiA+IENsb2NrUE0tIFN1cnByaXNlLSBMTEFjdFJlcC0gQndOb3QtIEFTUE1PcHRDb21wKw0KPiA+
IExua0N0bDogQVNQTSBEaXNhYmxlZDsgUkNCIDY0IGJ5dGVzLCBEaXNhYmxlZC0gQ29tbUNsaysN
Cj4gPiBFeHRTeW5jaC0gQ2xvY2tQTS0gQXV0V2lkRGlzLSBCV0ludC0gQXV0QldJbnQtDQo+ID4g
TG5rU3RhOiBTcGVlZCA1R1QvcywgV2lkdGggeDENCj4gPiBUckVyci0gVHJhaW4tIFNsb3RDbGsr
IERMQWN0aXZlLSBCV01nbXQtIEFCV01nbXQtDQo+ID4gRGV2Q2FwMjogQ29tcGxldGlvbiBUaW1l
b3V0OiBSYW5nZSBBQkNELCBUaW1lb3V0RGlzKyBOUk9QclByUC0gTFRSKw0KPiA+IDEwQml0VGFn
Q29tcC0gMTBCaXRUYWdSZXEtIE9CRkYgTm90IFN1cHBvcnRlZCwgRXh0Rm10LSBFRVRMUFByZWZp
eC0NCj4gPiBFbWVyZ2VuY3lQb3dlclJlZHVjdGlvbiBOb3QgU3VwcG9ydGVkLA0KPiBFbWVyZ2Vu
Y3lQb3dlclJlZHVjdGlvbkluaXQtDQo+ID4gRlJTLSBUUEhDb21wLSBFeHRUUEhDb21wLQ0KPiA+
IEF0b21pY09wc0NhcDogMzJiaXQtIDY0Yml0LSAxMjhiaXRDQVMtDQo+ID4gRGV2Q3RsMjogQ29t
cGxldGlvbiBUaW1lb3V0OiA1MHVzIHRvIDUwbXMsIFRpbWVvdXREaXMtIExUUi0NCj4gPiAxMEJp
dFRhZ1JlcS0gT0JGRiBEaXNhYmxlZCwNCj4gPiBBdG9taWNPcHNDdGw6IFJlcUVuLQ0KPiA+IExu
a0N0bDI6IFRhcmdldCBMaW5rIFNwZWVkOiA1R1QvcywgRW50ZXJDb21wbGlhbmNlLSBTcGVlZERp
cy0gVHJhbnNtaXQNCj4gPiBNYXJnaW46IE5vcm1hbCBPcGVyYXRpbmcgUmFuZ2UsIEVudGVyTW9k
aWZpZWRDb21wbGlhbmNlLQ0KPiA+IENvbXBsaWFuY2VTT1MtDQo+ID4gQ29tcGxpYW5jZSBQcmVz
ZXQvRGUtZW1waGFzaXM6IC02ZEIgZGUtZW1waGFzaXMsIDBkQiBwcmVzaG9vdA0KPiA+IExua1N0
YTI6IEN1cnJlbnQgRGUtZW1waGFzaXMgTGV2ZWw6IC02ZEIsIEVxdWFsaXphdGlvbkNvbXBsZXRl
LQ0KPiA+IEVxdWFsaXphdGlvblBoYXNlMS0NCj4gPiBFcXVhbGl6YXRpb25QaGFzZTItIEVxdWFs
aXphdGlvblBoYXNlMy0gTGlua0VxdWFsaXphdGlvblJlcXVlc3QtDQo+ID4gUmV0aW1lci0gMlJl
dGltZXJzLSBDcm9zc2xpbmtSZXM6IHVuc3VwcG9ydGVkDQo+ID4gQ2FwYWJpbGl0aWVzOiBbMTAw
IHYyXSBBZHZhbmNlZCBFcnJvciBSZXBvcnRpbmcNCj4gPiBVRVN0YTogRExQLSBTREVTLSBUTFAt
IEZDUC0gQ21wbHRUTy0gQ21wbHRBYnJ0LSBVbnhDbXBsdC0gUnhPRi0NCj4gPiBNYWxmVExQLQ0K
PiA+IEVDUkMtIFVuc3VwUmVxLSBBQ1NWaW9sLQ0KPiA+IFVFTXNrOiBETFAtIFNERVMtIFRMUC0g
RkNQLSBDbXBsdFRPLSBDbXBsdEFicnQtIFVueENtcGx0LSBSeE9GLQ0KPiA+IE1hbGZUTFAtDQo+
ID4gRUNSQy0gVW5zdXBSZXEtIEFDU1Zpb2wtDQo+ID4gVUVTdnJ0OiBETFArIFNERVMrIFRMUC0g
RkNQKyBDbXBsdFRPLSBDbXBsdEFicnQtIFVueENtcGx0LSBSeE9GKw0KPiA+IE1hbGZUTFArIEVD
UkMtIFVuc3VwUmVxLSBBQ1NWaW9sLQ0KPiA+IENFU3RhOiBSeEVyci0gQmFkVExQLSBCYWRETExQ
LSBSb2xsb3Zlci0gVGltZW91dC0gQWR2Tm9uRmF0YWxFcnItDQo+ID4gQ0VNc2s6IFJ4RXJyLSBC
YWRUTFAtIEJhZERMTFAtIFJvbGxvdmVyLSBUaW1lb3V0LSBBZHZOb25GYXRhbEVycisNCj4gPiBB
RVJDYXA6IEZpcnN0IEVycm9yIFBvaW50ZXI6IDAwLCBFQ1JDR2VuQ2FwKyBFQ1JDR2VuRW4tIEVD
UkNDaGtDYXArDQo+ID4gRUNSQ0Noa0VuLQ0KPiA+IE11bHRIZHJSZWNDYXAtIE11bHRIZHJSZWNF
bi0gVExQUGZ4UHJlcy0gSGRyTG9nQ2FwLQ0KPiA+IEhlYWRlckxvZzogMDAwMDAwMDAgMDAwMDAw
MDAgMDAwMDAwMDAgMDAwMDAwMDANCj4gPiBDYXBhYmlsaXRpZXM6IFsxNDAgdjFdIERldmljZSBT
ZXJpYWwgTnVtYmVyIDI0LTRiLWZlLWZmLWZmLTVhLTQwLTg2DQo+ID4gQ2FwYWJpbGl0aWVzOiBb
MWMwIHYxXSBMYXRlbmN5IFRvbGVyYW5jZSBSZXBvcnRpbmcgTWF4IHNub29wIGxhdGVuY3k6DQo+
ID4gMG5zIE1heCBubyBzbm9vcCBsYXRlbmN5OiAwbnMNCj4gPiBDYXBhYmlsaXRpZXM6IFsxZjAg
djFdIFByZWNpc2lvbiBUaW1lIE1lYXN1cmVtZW50DQo+ID4gUFRNQ2FwOiBSZXF1ZXN0ZXI6KyBS
ZXNwb25kZXI6LSBSb290Oi0NCj4gPiBQVE1DbG9ja0dyYW51bGFyaXR5OiA0bnMNCj4gPiBQVE1D
b250cm9sOiBFbmFibGVkOisgUm9vdFNlbGVjdGVkOi0NCj4gPiBQVE1FZmZlY3RpdmVHcmFudWxh
cml0eTogVW5rbm93bg0KPiA+IENhcGFiaWxpdGllczogWzFlMCB2MV0gTDEgUE0gU3Vic3RhdGVz
DQo+ID4gTDFTdWJDYXA6IFBDSS1QTV9MMS4yLSBQQ0ktUE1fTDEuMSsgQVNQTV9MMS4yLSBBU1BN
X0wxLjErDQo+ID4gTDFfUE1fU3Vic3RhdGVzKw0KPiA+IEwxU3ViQ3RsMTogUENJLVBNX0wxLjIt
IFBDSS1QTV9MMS4xLSBBU1BNX0wxLjItIEFTUE1fTDEuMS0NCj4gPiBMMVN1YkN0bDI6DQo+ID4g
S2VybmVsIGRyaXZlciBpbiB1c2U6IGlnYw0KPiA+IEtlcm5lbCBtb2R1bGVzOiBpZ2MNCj4gPiBb
OC42Ll0gU0NTSSBpbmZvcm1hdGlvbiAoZnJvbSAvcHJvYy9zY3NpL3Njc2kpIEVtcHR5IFs4Ljcu
XSBPdGhlcg0KPiA+IGluZm9ybWF0aW9uIHRoYXQgbWlnaHQgYmUgcmVsZXZhbnQgdG8gdGhlIHBy
b2JsZW0gKHBsZWFzZSBsb29rIGluDQo+ID4gL3Byb2MgYW5kIGluY2x1ZGUgYWxsIGluZm9ybWF0
aW9uIHRoYXQgeW91IHRoaW5rIHRvIGJlIHJlbGV2YW50KToNCj4gPiBSZWxldmFudCBsb2dzIGFm
dGVyIHJ1bm5pbmcgYGV0aHRvb2wgLXMgZW5wNnMwIHNwZWVkIDEwMDBgOg0KPiA+DQo+ID4ganVp
bC4gMjUgMjE6MTQ6NTYga2tpb3RhcmNoIE5ldHdvcmtNYW5hZ2VyWzQ1OV06IDxpbmZvPg0KPiA+
IFsxNjkwMzEyNDk2LjA5NjNdIGRldmljZSAoZW5wNnMwKTogY2FycmllcjogbGluayBjb25uZWN0
ZWQganVpbC4gMjUNCj4gPiAyMToxNDo1NiBra2lvdGFyY2gga2VybmVsOiBpZ2MgMDAwMDowNjow
MC4wIGVucDZzMDogTklDIExpbmsgaXMgVXANCj4gPiAyNTAwIE1icHMgRnVsbCBEdXBsZXgsIEZs
b3cgQ29udHJvbDogUlgvVFgNCj4gPg0KPiA+IFtYLl0gT3RoZXIgbm90ZXMsIHBhdGNoZXMsIGZp
eGVzLCB3b3JrYXJvdW5kczoNCj4gPiBBcyBhIHRlbXBvcmFyeSBzb2x1dGlvbiwgSSBoYXZlIGZv
cmNlZCBwb3J0IHNwZWVkIHRvIGJlIHNldCBhdCAxMDAwDQo+ID4gTWJwcyB2aWEgbXkgcm91dGVy
Lg0KPiANCj4gcmF0aGVyIGF1dG8gbmVnb3RpYXRlZCB0byAxRyAoZm9yY2Ugc3BlZWQgaXMgbi9h
IGZvciAxRy8yLjVHKS4gVGhpcyB3b24ndA0KPiByZXNvbHZlIGRpc2Nvbm5ldGlvbnMuDQo+IA0K
PiA+DQo+ID4gQXBvbG9naWVzIGlmIHRoaXMgc2hvdWxkIGhhdmUgc3VibWl0dGVkIHRvIG15IGRp
c3RyaWJ1dGlvbidzIGJ1Zw0KPiA+IHJlcG9ydCBmaXJzdCAoQXJjaCBMaW51eCk7IG9uIG15IGN1
cnJlbnQga2VybmVsIHZlcnNpb24sIHRoZXJlIHNob3VsZA0KPiA+IGJlIG5vIHBhdGNoZXMgYXBw
bGllZCBoZXJlIGNvbXBhcmVkIHRvIHVwc3RyZWFtLg0KPiA+DQo+ID4gVGhhbmsgeW91LA0KPiA+
IEtLSU9UDQo+ID4NCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiA+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbg0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdA0KPiBJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
