Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 747D27C5034
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 12:34:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AC2960C2B;
	Wed, 11 Oct 2023 10:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AC2960C2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697020475;
	bh=9NKBZzq+ZqNKIQTFp4u7binvvl7uAXXspCLgFummkVs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E24TrmHavZNEHf6VWOZPZ7Xf+B60ZJgch1tJYGFZKPHAi8nGmzSps4JdQmu/4NA4m
	 9V+eqHfJiMn3e2KLTluKsfXsSnvd/gcihvaJJPAcihlXZdttJKxtCh5qOslEKT+fV1
	 pPI7rk0hHUbLa5jIdpXf14xeUBOBurI+f9Ok6H77Cz/CRxiiuYfKIUvSXmy/sqIbq0
	 8RMvyR9H2PzD64+QCbg1ABw9/EGrCE4jxq85iJl0hVAB3X4jTMTAUhY+/8Km6R19Hn
	 Cwt1ZSky18qUPZnLztD+Qswn6ZbeJxX3Hwj4DodlGRa7DWXlCMNtEw+cWXAJJd/yN0
	 a2PNuZ538/JfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dskXr5s_0-h3; Wed, 11 Oct 2023 10:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29DA860BF0;
	Wed, 11 Oct 2023 10:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29DA860BF0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B69831BF855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9675040898
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:34:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9675040898
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ATvDnKUVuZy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 10:34:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A26E40893
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:34:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A26E40893
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="451120316"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="451120316"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 03:33:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1001056904"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="1001056904"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 03:32:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 03:32:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 03:32:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 03:32:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 03:32:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y9rM3oojYDHJXC7vE2RYZeJdj6CH0lQY2BKJpu8rx85QDqgNskiprrpjkLvAyAdgIOOVogjsol0wV7AOyBh87G/CnfDYtshty3DlIRqwbW6zRSKLM7N2glQlfiSTpWgiGoQIWnlUBZLhRWd5ss7ZiBqh2yaWXVC/vvXLeQ0mX1fi9aidz2e58620/AMQYlzLm37kyr/kWZDe3S8WgV0HrM5HQXcC2Vu1+GMc2dk302Fmin5sMVEhqjLpReJWwyqkLrLsdJISnCjY5TWUu7vP04FlHM1QwiowWCQnVRWS2+OFPS3C/ZNLSAbW8WjDJpwZKwzBcPG4a5zfWSzvkPVcbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LMnv1heZwCGFXgCaSKPrGp1I95K6cmJ5KQh5giROeLE=;
 b=l5qJRx+7L15TnUvrkVS9BQa7rGAtJqudNgFw3ZibQ7CHnKD+74YDXEhn7M1fhgWS3gkZkYKtvvoZDx//UO02jMUyKX3mm528auOaZz0IYCvUA4XHdxKX5E4dKqpBfUU3f9k6Bj5Y/2AUT6URbPX1r8EQiF6DB0BvoXjilwiq2mhWqJZrFtBRg0gcoEpEsDNEAx9+awpI9SaadH98LocKA+HQAMMpUA0UcjzMfflQ1/CbPQXIar18nrY6JaP9ncOQBB1onekan9F4ztj+WOTE1DBv5yiNcUkZVoLHFoAZnyIP+GSWDn5HLsIWaQau3x2RSUCP9SizaQjYOtOuHuA8ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH0PR11MB5173.namprd11.prod.outlook.com (2603:10b6:510:39::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.37; Wed, 11 Oct
 2023 10:32:26 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::8272:9148:30e8:383a]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::8272:9148:30e8:383a%3]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 10:32:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add restore default
 speed when changed PHY doesn't support it
Thread-Index: AQHZ/CNBz2CeAlPU8Ea1ndflZs/mK7BEUJmAgAAAuQCAABEcEA==
Date: Wed, 11 Oct 2023 10:32:25 +0000
Message-ID: <SJ0PR11MB58662DE3987F3A160BB45D2DE5CCA@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20231011091342.251204-1-aleksandr.loktionov@intel.com>
 <4ab9d2c8-05bc-40f2-90d5-303aacdca5e2@intel.com>
 <68683434-4241-4726-9028-96368815b7dc@intel.com>
In-Reply-To: <68683434-4241-4726-9028-96368815b7dc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH0PR11MB5173:EE_
x-ms-office365-filtering-correlation-id: f29560e0-bd62-4658-45e1-08dbca455c89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uWNv6NHupNcljulR7A5pLEwtb2wBr8yk6x4TOiW+d+fk2I8lHf8pay4EdVEBWxmamHwjEt6SlYMMKE6dTdqK2eUUn6HvleLRXDlWJuyu+OkaQvvlxlJ+DWJpy9JMuCAPtq13aZiwevfBGWSDkoY+jJbp6ESFNPOH+1nAlt5e/Bl3CKfZlY0ZgeObr/5mWpriXPW+xcR122ZkYiDFze2nc1LLAgcCir1Fc0H7oLLDW5lUjT35A5iFAvXHQpmgsIg4H17shGAzP+rArEOVSxhcOj43mp8CyqVZU2eZ4mMQaXor8NANngzqjbpF8tdoB+4O/9iz3Md7ZKMfU00rzG+a41haLWff8xfwNjQJjJPO2J4A+OwL3sD667pyi6UzGvGXBjYm73TO01lmFnYKaRhHw6/BCeEbGKRkAWQQKLP2ErCRyIml5X/YzxdI2wzaYpnOsn79jw6iKQyNpUQiftMhu9iZgXRIDEDJCzS+d13PQb8QSZ/QpebQC3GzI1Hr74WpnGmhmPwdIHjIgfnPhpUnW/KKLM4PIbvunniQX3RsWhhQuShZKhJeWpxpLTU1NnXzKO86jNoFEEOkZWYnpSbdu3OXGBmjd9Yb24eM9aXXrxWK68NRhqyYnHtatF0y8ypg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(346002)(39860400002)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(86362001)(33656002)(38070700005)(9686003)(64756008)(107886003)(2906002)(66476007)(66946007)(76116006)(66556008)(5660300002)(66446008)(55016003)(41300700001)(316002)(54906003)(53546011)(6636002)(71200400001)(6506007)(7696005)(52536014)(478600001)(26005)(122000001)(4326008)(6862004)(83380400001)(38100700002)(82960400001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ei8wOHFnczZFMFNqbGNqUGNDZC8xbXRuRkNOWnVUUmRyaXZTMXZKT0VCVXBR?=
 =?utf-8?B?WWFyUFdLZjNDOGI4WGlTM2tTUXlSYnhQbTNQcXFhN2Y5S05vTFlQcHc0enpJ?=
 =?utf-8?B?dEs2VmE5VW91dlVKdmZreFU4OFFwUW1tVTF3MkdqcGU2TkJoazVJNVlwMGJm?=
 =?utf-8?B?YVBGeElXNmNFakZ3a3NGaHhqUGZTT3JsRnNqLy9NY0VxN3JCVUV3WG44OEx4?=
 =?utf-8?B?dGQ0WW9EaFAybjU0bFR4ZjNiYXhid1lPRGFNTHZCVC9wV2FmQ0FCU3pTMEE4?=
 =?utf-8?B?NGh2QUUvOWdxbUl6RkpmRUVWWklSSDR2WFlJR2o5eDd0U2FXY2VySUhZdEJo?=
 =?utf-8?B?T0NOSE9iVGRUTlpoZHZDUVRlNGZQTDFMWXlNUlFKTURoN2FVOG5KSWI4bnZ1?=
 =?utf-8?B?QlkwUTZCRWd0Tm9DMWs1TTAxcDVOWkdJQ0NBcitoOUtEb0RHeXJmcTNGZnNP?=
 =?utf-8?B?TDJxNE9VcFY2OXQvQVBkTkl2NHVYRWwwZmhxZEF2cFVJUXJFTDc4ZGZESzVo?=
 =?utf-8?B?ZTM4UDZlbTFncmhBS1BSUGNIVkhLSWVZMERZaDJWbEs1OXc3T1FjdXdzcmJO?=
 =?utf-8?B?bDVsV1Q2TXpSRXRuMzBhaEJPcllyQm5pWEdFc1hWcm8zNG9sUWx0VFI4MTZu?=
 =?utf-8?B?Y2xmZlBNSi9UcVZBTithUS9XSFYzTUs3T2lLZXAwYzJaNS9vb1I0VFg0WVNE?=
 =?utf-8?B?SWVvWDQrbHRPUERubHZ0cjI3Sm5MUTJ2SEZsTjhZcHYzeGN2S0loVFhJMDdq?=
 =?utf-8?B?VVV5QjBrMmtFanIzRzFIVloraGl0NXlyamJsTk14L1c2Q0tpeHp0L3VrUkVJ?=
 =?utf-8?B?YVlMS1kvdDB6ZFZQb2o2OEE5TE8yYW1OTDFabXlaa0o5aVpKRTN0VDU1UTZP?=
 =?utf-8?B?THRmOU1aUGlhV0JWSU1YUmRpY3pkd251dWc5L1U1bSs2dHlXQUhWdk5rZzZB?=
 =?utf-8?B?WEdTSUNJZ3BmREtoSVRHWTFNTXBHb29WY1dmVm5RWnQ2MklTSU9BVUQyY3Yv?=
 =?utf-8?B?cXdMNFRlbWVCTEdUeTNJRkRPVTg2Q01iUUNxeTV4SzJUeDdoQ1hnOUZCUGtP?=
 =?utf-8?B?d2JIcHdjTE1wTlZyUmtyRTJGaFh1czFvS1U3RSs3VzdEaTRJNTA2MGJlTUlO?=
 =?utf-8?B?c3o0bkQ3TXBFV3E2WDRBZnZFeUFxQjJBTHVZeUhuTGFVK0lzdEEzR3FJVm5o?=
 =?utf-8?B?NVVlYThlR2d5dm9QbHZWYjBoYWhLaWZOcU5UdU8zeDVnSmZ6SldDMGszaVhs?=
 =?utf-8?B?Vm1IdS9FeE15bCs5eks4SG5pN2NNclVWNzFJdWU3V3ZPZU1Md3JRenRsUXhT?=
 =?utf-8?B?alJubVZEcmFUaUZlN2JsaU9kVElEZitTbGtiM3BVbTRmY1VlampITnozOUV6?=
 =?utf-8?B?UVRiN0pmSjdrbmE4anprQlprbGxlVFZUR1RNWVdlbjcwUE5iYXlQdGhWblVP?=
 =?utf-8?B?NzA5elgza2I3SmFkc2FsSXdkTytMZ0VQSHM5bE9scGtFK1N3NVRyeWQ1d0tt?=
 =?utf-8?B?Q09WeHlFTmFVSGpwMElqRytyUXNmUmpUbFE4dXd6UzI2cmVFYlE2eC9Xc3Rm?=
 =?utf-8?B?cFlYaDdGWThnZncxT2IybGxyQk9xRUszNzRCdDc4Ry8xbWdJUGFxVjFXTjU1?=
 =?utf-8?B?L3h1V2YweWhxL1dxS0FqUHd2dFlNV2dXMGx4OHlTcXZ1V3lCZWFJRzROWU9J?=
 =?utf-8?B?YUdFditwMWtsdDVIeVdkVGQ2bWNOZThMZXdUbHBsOXgrQUdkMVlYRGJPRGJy?=
 =?utf-8?B?dVZuSkdQUDAxU1JZWE0wUnJUeWduakhraGVkVDNTc2preXpHbk1pWVY2VUZY?=
 =?utf-8?B?ZlY0UmlJekY5SFpCbVlnYjd3RnFHSVRnNit3dlZ1anc0QW9SbThneHAxbUdG?=
 =?utf-8?B?V1pBd21UM0lPWElkNVRtT3lKbGh4SHlPaG9PbXJia2JkL01PSUJoNzBudlVu?=
 =?utf-8?B?b3RaS3RFb3p6NTdxMHkxVVFWemNURG5DQ3hrVitHUzk3Qm5GS2pTZlNQRGVY?=
 =?utf-8?B?Q3YzRE40eUpoN3Rhams3cGZ6Nyt4b0ZObzlkdWJiUVNEd1h3TTd6MzdxcGJT?=
 =?utf-8?B?WXV0RC9YdGRadHMybG81cGJLMWtxK2s0ZnhBeUwvL3VFZENpREVVaCtJNU11?=
 =?utf-8?B?azgyTElxaEFTeW9QWjRTV1FWa04wY2h2VEtGVlRZY3ZaOVFQc1duRWJNb204?=
 =?utf-8?B?ekE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f29560e0-bd62-4658-45e1-08dbca455c89
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 10:32:25.7109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D9OEktr6/zsPwr06rsAHKcUbhW77y/Hzt5cBSO46BdBnUzTlltxT1/k/R8u0IoyPidHZ+Zc5VVmd3EgrHS3fIt6LsyHz7D6g7In/htbT1kc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5173
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697020465; x=1728556465;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LMnv1heZwCGFXgCaSKPrGp1I95K6cmJ5KQh5giROeLE=;
 b=N6x737UhNCyRixRCNpz0WGExPidSKEM7qyJ+JyKXHnqlKmrnvBEpzv21
 ktRK/HJPX4mTg4Cfuoi5Sk3rPoNVc7GO11TLllnbYgd6C1y6I+iS7ywkv
 YrQ4aaAilT8mD6sPt/kb8M2R1xOEUqiHKXGiRbx8igf7F5GRCce0XQJ2d
 j+oXZyAVdjM2KQ7I9aeKBmaS7hRBHiRjnTL68QtKGDuzPBjQX1TCMaFUu
 EOOLG4TUJDbbTO/KIBbXzsgwPqvshDOKfKLFXsjeY+hsDk4VPr376bPcl
 izCtDczZ3FsY1nhurzXwsY4baFfeUKfh+lKhqBZW38uVjp+XHfufcyc/Q
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N6x737Uh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add restore default
 speed when changed PHY doesn't support it
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Lobakin, Aleksander <aleksander.lobakin@intel.com>
> Sent: Wednesday, October 11, 2023 11:25 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add restore default speed
> when changed PHY doesn't support it
> 
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Wed, 11 Oct 2023 11:22:21 +0200
> 
> > From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Date: Wed, 11 Oct 2023 11:13:42 +0200
> >
> > Please add netdev and linux-kernel MLs to CCs when sending the next version.
Sure will do it in next version, thank you for the note

> >
> >> In order to avoid no link after plugging a different type PHY module.
> >
> > The sentence is incomplete, it tells "why", but no "what".
Please clarify your suggestion, what is your "what" expectations?

> >
> >>
> >> Add reset link speed settings to the default values for PHY module,
> >> if different PHY module is inserted and currently defined
> >> user-specified speed is not compatible with this module.
> >>
> >> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> >> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> >
> > How did Radoslaw participate?
> > If he's the author, he must be in the "From" field as well. If not,
> > his SoB tells me nothing. Author, co-developer, reviewer, ...?
> 
> Also, his email address bounces, IOW there's no point in adding this SoB. If you
> want to credit his work, use his working email, either private or dunno,
> otherwise makes no sense.
Can you explain what do you mean by 'IOW'?

Radek is original author of the patch for OOT driver which a had re-work to be accepted for upstream. Now he is no longer works in Intel. I wanted to give him a credit. What do you suggest?

> >
> >> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> [...]
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
