Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7570745978
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 11:59:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D35860E5C;
	Mon,  3 Jul 2023 09:59:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D35860E5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688378373;
	bh=iaiub/aM+Rb5e0XcLctUhIpaqn7AoNPYq4bQR4Zp6C4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SFYap0sh1cwpaKCucriuJtpcqXXlencwevoL9DkTugjqsQUmd3a/YGsf7u2V61qVq
	 bM677AunqDhgLwn/2IGfPvH7xrcyeX1WUMK3SshzopzCJNj6+nCPSU5oSRvDTPfq7/
	 +3/TLSDpXtE2DLBkGT1PfTmd9HKzempAkpAE7pT+k6O44TYMXlmxZIfVOh0pmVFMNH
	 XDAq7EK2Q+00iA+aAnjk08Xycs7u44sTCLPS2UiOglj7MvHSCygBereuTp9ZJbk9Ex
	 OIhBrZA58Cx7ZeMTfXLdj1yhPn/UZLshkLQwKFQ2qPMvkWif3R16E0btZegoxPU+af
	 XiQYaOPmpw32w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6nqysn0xc7u2; Mon,  3 Jul 2023 09:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9236A60E33;
	Mon,  3 Jul 2023 09:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9236A60E33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1C6E1BF228
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:59:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85F528176E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85F528176E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cYvSSAbmHtTT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 09:59:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10AA48176D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 10AA48176D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 09:59:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="366325537"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="366325537"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 02:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="831761443"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="831761443"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2023 02:59:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 02:59:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 02:59:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 02:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YfpWM1Wi9Ur3EUYjan/JTXEbLFxYihIKyC6WPdOwfvT/uDsPUmLRs5aIQv9zlblweSTAcwZ1uAxqIFuh9BsdU6S4GUiV1w7+FrTfDxIldTNEui1kuw36v3Xi4RSoj1jaekWCwfAGrtt9c9RqlsJDmQjt+Kp9WnGBZE/SmDnmZB0i2+n+Fq3zgZeXOEoTuhFHuyk9++Q8ThGRSsebQTbumc+G4PnGk754F+arB+/58nAOo0r6sIG1QA/fFff+U+Ppka7M5RaVe65qPeB4R6vq7fSYZTOkPnLAJhOV5/qjhizOhANX63syLUD2Bp3S6HVKtlKPF7WkPPod2IuxoAjwlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PMBBlc7OZzP9FTIbp/nCWVvp0aKNclS6UowmNYjx4AA=;
 b=mo8tvzA0IhxSWt17A/4bqUeeMzln1plpEQ5jteExz+lnuSWevusbwPrT3GleDx76Q0yCXZO9TGfKMaat/gTmqwEnkjdGySbaeZiPEnee+6trqtfDPaS8mlXXf5wAIMSG3gC6k5khS1vMEf0Re2I82Z6W+Luz0dmH5xlkacLzziQkDj4SOA+lNMbY5PFqMnLbc0IyG/TXUAT2kTwaxEHTrM11c5eMp5Uh1rHBfOv3mpmVHgWG4t4YmUIt259SWJnCcc3xpNl3Az2dHC4ZU9tPuItuOKGU1MLZkQwx+HJILJ4DSZE7sGzI5TfTT26zKmJEChvM28TPAeY7c/9IiwOTTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 PH0PR11MB4789.namprd11.prod.outlook.com (2603:10b6:510:38::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6544.24; Mon, 3 Jul 2023 09:59:03 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::38b2:156a:2d33:87f4]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::38b2:156a:2d33:87f4%2]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 09:59:03 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v1] ice: Fix memory management in
 ice_ethtool_fdir.c
Thread-Index: AQHZrYMkJ2QM3DmSyEqtwJNV4pGlrK+ntzQAgAAXqBA=
Date: Mon, 3 Jul 2023 09:59:03 +0000
Message-ID: <DM6PR11MB27310C3EFFA0FAE8070FC700F029A@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20230703074409.102367-1-jedrzej.jagielski@intel.com>
 <52b83a4f-9f65-fedd-54ae-c19df700d79b@intel.com>
In-Reply-To: <52b83a4f-9f65-fedd-54ae-c19df700d79b@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|PH0PR11MB4789:EE_
x-ms-office365-filtering-correlation-id: c2b49fc4-4bd2-4084-792a-08db7bac2193
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I7QWcrGuPXOi8r4diT26iDTXHnrNDC2MBTTqH50BQdTT8VmxJOsS8Mi/vrM1Z0VseAgbmxbzhswczy00i3CclQYyPgJNB4acrBzaHx4kNwCgLn3i81zM8l46DHBfSmKN4BPChBHK2SDP9Kgqn5upry7KWw0XiRVE+huS/Eeyw/GZoX8lQE31kp01YlA1rtklWrJKK45Wtu2i3Cr5WFhmT2TjQEeIeq+yTniw6UUFH3LCDoOyoQ5tQdDjdeFROukAjnSFW8TyRnIL+IQEIAAW/ifwv+uWbO3X48g4DXsSvQwDamIHPRuix2Y+o6LZrHbXMnCDVz8d304L/61fZXMYnFkYBILNFhHJX8XQyUqLcPKd5lpgrumZB5/+VTHaeeoN0pOqQSRFuYQXJpskn2KY1cBPP3repavIn23MYlHw9doi5mZZjTkQ0YyEkc72iFcPg14joHkVE/yeZ3ayVA0DD6PxZ29xTeBQaN1XyzEKtQZ3DOGnI5fR7y8+w+pIliPYRvrnBndWvTD8FxVLlZLOYSr44+DJJdFRuOSxnJbq2OrRatS6X0yomfWZ0QW9Pgoak+rj9q6CAJRYbg7N7sZAFilQtrMFJ0OJXPPTEtfA8Cg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(396003)(136003)(366004)(451199021)(26005)(82960400001)(478600001)(9686003)(71200400001)(966005)(6506007)(86362001)(186003)(38100700002)(66446008)(66556008)(66946007)(64756008)(66476007)(4326008)(83380400001)(110136005)(7696005)(76116006)(316002)(122000001)(5660300002)(8676002)(8936002)(52536014)(38070700005)(41300700001)(2906002)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjBSS1N5RDhVSTR0bFRScjFOMEFnQWdaSWp0L0pGQ2RnNzNmMEF4NVBNOVZV?=
 =?utf-8?B?SWVzcURtUEMwOHlTcDNRbWY1dUVwbWRaQWp5cUgxMzNmckoyNkx4eGtJd1lB?=
 =?utf-8?B?WFdGeGdkd0RHYmtjUzdkL3VVOHVFTDVmRTBYNzd0T1lQRkgwRDc5Vng4KzdS?=
 =?utf-8?B?NllyRXpFUkZYVytLcmIxTUYyTEk3QlR5Q0F3L2VHaVpZRms0R010ZkVhM1dY?=
 =?utf-8?B?UGgwSXZYb1h4U0pRZVNxakI3NUtNeVN1MklCWTVzUGltQ2tVdGpQY1ZtVFNy?=
 =?utf-8?B?dW82dFl2RG1jQzBBT2VDVmNmMnl1ZzlsMGh0QlBkanJwbzB4bThrck5Xd1FI?=
 =?utf-8?B?cDFxczFDWVAreXIvWDhlL1ZKcnNVdHcySmtyVTdiWGNpeGRwZkowM0NZdGRN?=
 =?utf-8?B?WG5vbmNaTFFTeVF6VDhOVXBqZVNrZXRaMzZianV4TnpOajNuOHRaZ010R2t0?=
 =?utf-8?B?elg4UVlFaFcycHJXUTJ5ZmNPVmFMbU4xM0lPRVVvSHQzQjJWSTltdFgxZ0pv?=
 =?utf-8?B?ckM0cDFKU2xBcHJRN3NCQlRvM2ZTcERJc2x0ZkZLYUIxVE9DaFZXZDJuaWRy?=
 =?utf-8?B?aUJ2blJwakszK0VuWlRZQlAvRnJwTGpvSGw3UHdqVGFDZ09NUVF4SnVSMnRx?=
 =?utf-8?B?Ny92NWFEZjA1emJCSy9vZUJ0MGttRGphV1dxMlVzcTlwWmN4cXdMWldtRzdm?=
 =?utf-8?B?cVM1OGZ6VUZkQW5MbHpyZjZ5RmgwQzVSVHN6ZTlrdEVQeG1BRWVENjMrWnls?=
 =?utf-8?B?UUN2bHVUSElnZjJ6RE5JWHFiUHkyTmMvR2hxSHF3WmZxOXBSRHpTcXNjNTE1?=
 =?utf-8?B?Z1U5N010TjZrLzNyY05odTVSdGRlaWtRbkpmUzl0TnN0a1VORDQvZE5UZGsr?=
 =?utf-8?B?NGV5RmhEelh4dkk2d0tMUnVleFJxL1dkMlUrVXU2YzlxazdMN3ZPdTBsQmxx?=
 =?utf-8?B?ajZPVCs1Tnkrd1RYNmlEWE85VHFVdlFIWjhEbnEwUEVkOWU4am0rRkN6RWF3?=
 =?utf-8?B?T2Vwb2hXSlltSytjY3NZUE1aZ3VwK0kvYlNKVzVYTXJtQkZWQTVrR0dpRHpr?=
 =?utf-8?B?UCtMc1U0cDg0RThJMEUzQUQ1NEZ6ZVpsZGxIdHVFcmxrci9VemNaTy9hMHE4?=
 =?utf-8?B?dmVFaFFLMUx6THo5cEZUbEhvVjFGcEN0dnRjdnluTlZOaFFIaWJPVmlwL0JU?=
 =?utf-8?B?ajJxQUwvYnJRVUg1ZkpVcGlxWHhtS1Q4M2VNdmFGYUs3SmtjeWpZYmR1V3ZY?=
 =?utf-8?B?L0xjY1A4anlmL2gyb2RiejE4bVpWcFlXQ0lVTXFrQkdIOVVMZzFZcnJFWjVO?=
 =?utf-8?B?c2NyeVdpQjIwd0tHbVQzVlNBeFFsMVBRL1FSVkcyWno3WTE4OFBpSit3b0VN?=
 =?utf-8?B?cis5cm9mTDlCYi9CZXBvZksySXE4MmlYbWtmWTNXMnovOG5mSWI4UkhrbUFM?=
 =?utf-8?B?ZEVkMld0dk9kOGU5VytDZzZnbzEraFN5b2UvdDJaVnQ3ZkxlUWJ0aVdVaVho?=
 =?utf-8?B?blVYYzQreVRrTFhQZ2c4dFFiZGlDYzNXZWRBem1KL3JqQzhHV3F0ays5d2NM?=
 =?utf-8?B?bE9aNlNMaXk5TGdOekxkOUZBOWtaZFhqOW5LdWRPZW80NmxCbUJ3ZHhSdFRz?=
 =?utf-8?B?ei85WDQ0Q3ZneE9NVXhkOFA3ZmhCYWFteFRTbEVpUk5MODQ4SzFUdVNBTnh6?=
 =?utf-8?B?aGtMSVRlYjFoMm9YK2d0ZmlxVG51VmRHeG1OS05pK0lrSWo0S3g0VE9jbmto?=
 =?utf-8?B?UFhzaDNieEVNQXZGZ2EyZnNSTjNFNW5JZHNEcm9CZnRjcEwyc2Ruby9iTTJp?=
 =?utf-8?B?ZFVCUkQzZ29YQ1oyMHpIN1JEdmUzdE5UUmJqTldraUd3alVYcEt0T3hQb2ho?=
 =?utf-8?B?cGRWdExGQkUxcFVRWXJIMm9pM2lwVWJLRnpSd2ZiNHZxbm9IamtkWHByWlpP?=
 =?utf-8?B?NkZVb21zeU8zYzRjcDY2VXpFS3BWVTgzdldhQzNTVXpybFQ5QUFRM0dCYTZ1?=
 =?utf-8?B?Z1Z2bnpJeTNhWGpvalY0WWM4V0Uvem1DbXYxVkNJTzNkVE9pYUVkdnl1N2pP?=
 =?utf-8?B?dFBmQXphUlJDUmNlS3ZQcTFnYmJiNk1xeUVveHhNQXBQUXRFVHZ6enFReWxF?=
 =?utf-8?Q?UmRIPsjISam4e7PILyCZqWfRL?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2b49fc4-4bd2-4084-792a-08db7bac2193
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 09:59:03.0618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4t4zM/rKF5OLkWDyX7Yj9ZDHQZmINXPoBKayLp9/edr939p6VnWDil6Yy+CNF7/AhjpU40bbaqZ0iLxsviDmgGplmrIHDY1TQekuXhV9U4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688378365; x=1719914365;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PMBBlc7OZzP9FTIbp/nCWVvp0aKNclS6UowmNYjx4AA=;
 b=AumJytYT1ZD9DAIKuZD3M7pKCCaEbEWShMmO5tC3WYIQFPZGkIBdtcpJ
 lbroRGWqHW/L5GOaTq7HGC2N46NpQm0K/k0/+G3zcx8vLjsMETUF+P5EH
 Reb7VbCihw5eJS4eRQda7RmnOJXt1qRoebhvSkyQTO5JOcPIv1/StBvSb
 ffgW6yvDc5A4MdTyNRo5LWb1tfUP6R/y21vOU3+yuz9lAjvNKdUOA+QJJ
 +SJH5XZ8lb3nAvOSIfjGaadrdGEru35JnE91dVZuVuKqojVjjGArXlED2
 rM1veu9j4M7+qD+8IHb6P4GETQgsi/G5fRVZXpd5qn+3Dch+W0sfS1sTd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AumJytYT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix memory management
 in ice_ethtool_fdir.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com> 
Sent: Mon, 3 July 2023 10:34
>On 7/3/23 09:44, Jedrzej Jagielski wrote:
>> Fix ethtool FDIR logic to not use momory after its release.
>> In the ice_ethtool_fdir.c file there are 2 spots where code can
>> refer to pointers which may be missing.
>> 
>> In the ice_cfg_fdir_xtrct_seq() function seg may be freed but
>> even then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).
>> 
>> In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input
>> may firstly fail to be added via ice_fdir_update_list_entry() but then
>> may be tried to being deleted by ice_fdir_update_list_entry.
>> 
>> Terminate in both cases when the returned value of the previous
>> operation is other than 0, free memory and don't use it anymore.
>> 
>> Replace managed memory alloc with kzalloc/kfree in
>> ice_cfg_fdir_xtrct_seq() since seg/tun_seg are used only by
>> ice_fdir_set_hw_fltr_rule().
>> 
>> Reported-by: Michal Schmidt <mschmidt@redhat.com>
>> Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
>> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>>   .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 55 ++++++++++---------
>>   1 file changed, 28 insertions(+), 27 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> index ead6d50fc0ad..89d6a1d2e7e3 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
>> @@ -1204,21 +1204,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>   		       struct ice_rx_flow_userdef *user)
>>   {
>>   	struct ice_flow_seg_info *seg, *tun_seg;
>> -	struct device *dev = ice_pf_to_dev(pf);
>>   	enum ice_fltr_ptype fltr_idx;
>>   	struct ice_hw *hw = &pf->hw;
>>   	bool perfect_filter;
>>   	int ret;
>>   
>> -	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
>> -	if (!seg)
>> -		return -ENOMEM;
>> -
>> -	tun_seg = devm_kcalloc(dev, ICE_FD_HW_SEG_MAX, sizeof(*tun_seg),
>> -			       GFP_KERNEL);
>> -	if (!tun_seg) {
>> -		devm_kfree(dev, seg);
>> -		return -ENOMEM;
>> +	seg = kzalloc(sizeof(*seg), GFP_KERNEL);
>> +	tun_seg = kcalloc(ICE_FD_HW_SEG_MAX, sizeof(*tun_seg), GFP_KERNEL);
>> +	if (!tun_seg || !seg) {
>> +		ret = -ENOMEM;
>> +		goto err_exit;
>>   	}
>>   
>>   	switch (fsp->flow_type & ~FLOW_EXT) {
>> @@ -1281,16 +1276,25 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>   				     ICE_FLOW_FLD_OFF_INVAL);
>>   	}
>>   
>> -	/* add filter for outer headers */
>>   	fltr_idx = ice_ethtool_flow_to_fltr(fsp->flow_type & ~FLOW_EXT);
>> +
>> +	if (perfect_filter)
>> +		set_bit(fltr_idx, hw->fdir_perfect_fltr);
>> +	else
>> +		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
>> +
>> +	/* add filter for outer headers */
>>   	ret = ice_fdir_set_hw_fltr_rule(pf, seg, fltr_idx,
>>   					ICE_FD_HW_SEG_NON_TUN);
>> -	if (ret == -EEXIST)
>> -		/* Rule already exists, free memory and continue */
>> -		devm_kfree(dev, seg);
>> -	else if (ret)
>> +	if (ret == -EEXIST) {
>> +		/* Rule already exists, free memory and count as success */
>> +		ret = 0;
>> +		goto err_exit;
>> +	} else if (ret) {
>>   		/* could not write filter, free memory */
>> +		ret = -EOPNOTSUPP;
>>   		goto err_exit;
>> +	}
>>   
>>   	/* make tunneled filter HW entries if possible */
>>   	memcpy(&tun_seg[1], seg, sizeof(*seg));
>> @@ -1298,25 +1302,20 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>>   					ICE_FD_HW_SEG_TUN);
>>   	if (ret == -EEXIST) {
>>   		/* Rule already exists, free memory and count as success */
>> -		devm_kfree(dev, tun_seg);
>> +		kfree(tun_seg);
>>   		ret = 0;
>>   	} else if (ret) {
>>   		/* could not write tunnel filter, but outer filter exists */
>> -		devm_kfree(dev, tun_seg);
>> +		kfree(tun_seg);
>>   	}
>>   
>> -	if (perfect_filter)
>> -		set_bit(fltr_idx, hw->fdir_perfect_fltr);
>> -	else
>> -		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
>> -
>> -	return ret;
>> +		return ret;
>
>Sorry for late report, but now you leak `seg`.

Actually i haven't changed the flow of freeing seg when
firstly it is applied and then applying tun_seg returns error.
There is wrong indentation at the final return line,
it will be fixed.

>
>I would rename 'err_exit' to just 'exit', and keep all memory freeing 
>there. (That would simplify the if (ret ...) above even more.
>
>Remember to cc netdev and our intel Maintainer for v2.

Sure

>
>>   
>>   err_exit:
>> -	devm_kfree(dev, tun_seg);
>> -	devm_kfree(dev, seg);
>> +	kfree(tun_seg);
>> +	kfree(seg);
>>   
>> -	return -EOPNOTSUPP;
>> +	return ret;
>>   }
>>   
>>   /**
>> @@ -1914,7 +1913,9 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
>>   	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
>>   
>>   	/* input struct is added to the HW filter list */
>> -	ice_fdir_update_list_entry(pf, input, fsp->location);
>> +	ret = ice_fdir_update_list_entry(pf, input, fsp->location);
>> +	if (ret)
>> +		goto release_lock;
>>   
>>   	ret = ice_fdir_write_all_fltr(pf, input, true);
>>   	if (ret)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
