Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14A27A7EA4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 14:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F0B241801;
	Wed, 20 Sep 2023 12:19:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F0B241801
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695212363;
	bh=D3+EWNFPbO4xQh9qNa9rCRcD9smmO+uhz6cf0KHJPdY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rtho2YTm/kcAvTQzHkA7cxbiWi/+jEqL2IX7ZQxebVnt4yiAynQhBI1mlOdmsFqqg
	 VkaI1FkSYhikSMs9Kn9kXTJ6/oEuNMdFuAhDRbMX/WtyMNNk4Cs6HFEYM3SFLqcQYJ
	 nXpIl1FX0ttongKQN2/ZM0fmS6zr5oqfqDzSgzxS7oUIAV/c2Zc49bGCzWtFdCNI6h
	 mMLbM1YBBGYS3dUgoPeed2rD1SS2T1a0R6JFJ9zheArg91l6FEtVWj96pAsixilzCw
	 dvJgi6ZD6aVzRANzH9VPc8ByFihptgN8ihXS9QRuD2hFwi1PrCJJP+jooTUkQwMRx/
	 mFuQoaf0LKNlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tvO0yzfCpnpc; Wed, 20 Sep 2023 12:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1ED84417EB;
	Wed, 20 Sep 2023 12:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1ED84417EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 998D81BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 12:19:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AF88417EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 12:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AF88417EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y5Jyla_-wrJa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 12:19:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D217B402B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 12:19:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D217B402B1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="382950824"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="382950824"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 05:19:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="1077408429"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="1077408429"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 05:19:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 05:19:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 05:19:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 05:19:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CL+qPTE8Vs+pekDuLhQ9BDNk9d38eMflLkxNIkzqeOrCzvRYiacSmMS1TF8e247AcnBdyFOSZJrPSlHQvS+LsvM0ZNuVysQm1e9mkYeHImyx2uTlVXsm+aTTBBfbANIvojD4n4/ywHMfbqVibrj3eSNzj3mGAOBSQLBLXsm7p42Mwb0rvJvOJsj7h5p/RB/OwsAjCF7JRTIFQ5bH/UXkxPziq8Tyg6kajel196MegWheKPhj+Kg9FjEPGJJ3bJfl/yW57Zp94c0ujgmXCEc62TRRJG+TZvlihIWw8h2wpA4HCkt0Xam0wPLMnCERRNRQNCEIUk49T2G7du3w0XUqmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEGw1Gs6SexGV0ooJTVcD/5e22pH3DiEhZhDfSWlsqU=;
 b=OQBScnGGu9Z5fs4HhaBbjcuzj/15fjgv8wnhn+KmvAnLNkw9Pn2Ek8SCPbWCyr41DAk2wGaB29FyIBVssO2h29pIBfLJfzSuvFY6GHgTK1iRpFUZkLuDnaYWx9tTQzDY+CD0eiY3q3JpLFUPg1AJxPhdKHQPy/z3IQOzjs3RDyOy7joM+QLt4UJ3ko8GtJ/4ZVkpgOG/9wigdc+c2/zEf0BKpXf+aPipgkq7yam8PhN9FKrN6k91Weye9QHodKwbPM9QA5r3RZxJQErF/Rmq6C1qCQU0on9IcTD9nr/euyyiSCKPb5+/ty6Y/HBxw9cZdANOFpcaKWZC9wI9iMd4DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Wed, 20 Sep
 2023 12:19:07 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::6e38:ae0e:b870:d0df]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::6e38:ae0e:b870:d0df%7]) with mapi id 15.20.6813.017; Wed, 20 Sep 2023
 12:19:07 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix call trace when
 rebuild fails
Thread-Index: AQHZ5cU+gcKTyp646EmlWnbZs/jIabAjq/IQ
Date: Wed, 20 Sep 2023 12:19:07 +0000
Message-ID: <BL1PR11MB5288F4D62F22E6D1BF38A9DC87F9A@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20230908085925.423883-1-mateusz.palczewski@intel.com>
 <b0160964-6512-dcfd-a3b4-2eabaab00633@intel.com>
In-Reply-To: <b0160964-6512-dcfd-a3b4-2eabaab00633@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5288:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: e692ee8b-59dc-4c32-db6b-08dbb9d3c9c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +UXIDZK9LJxpei4bExt/38StfDj+7E54UhDfnpQHFt3dL/YikaNeHYBhbONCIE7AaDBCelkxbFvSPmb+CvVHf1HAnHqhoyiMsDSllVbQNBxiLg2EVyvvQLYbqYxtVGArW8AZsMg8X0cIshDf+7mqibGP8lKNR8bik1/+3oFDhXdl2f2M/ED8Jv5V9bn3sez4NRSJDxSq9+lg7WgSJoEVccycPtyji2v2grvLlWbYtK4Sgl7Zun7vzaJ/2r4AHwCeRvqIAgyW1Zz3BMRtBamDC1gxOoyhgnfa2AvgXed7yNLdiOe3B3n9ldfCYXyi+o1j9B06Oc0UYdnF+1XB8ctsiqEb9rt537iwDbiHtgyWUaP/dtQR+kKhcBdBtU9b0+qzLRclN5ULp1WriTjPK4WMhsdq5BDWJbmis9ZLQqKJjohG2O95GjigX6sBtS73egkyFQyqfRo280kyoVJpXe2BvpT+Z4+AK4sQaAQa7/Kk0DlsuDTp34bgop17oGK7DYKpHKepb0pa0KwXtxCjqlxTvjVdCGnfuOkDvqKSDhQ+qljMEIt/kXDxl0uhM1SbmjG7D50A6VRkYhVBxLKxUUa6werY5/gN0W4zy+gvKGTIvxWvu7d7palo73nT4ee2tBtT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(136003)(346002)(396003)(186009)(1800799009)(451199024)(478600001)(7696005)(6506007)(9686003)(83380400001)(71200400001)(26005)(2906002)(5660300002)(66946007)(66556008)(316002)(64756008)(66446008)(76116006)(66476007)(54906003)(52536014)(6636002)(8676002)(6862004)(4326008)(41300700001)(8936002)(86362001)(82960400001)(33656002)(122000001)(38070700005)(55016003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkgzZnBYaUFOb1NKdGRaaEdGbUNlZXU1ZjY3Y3FhRGVIWlVpb0ZYNWp0UUk4?=
 =?utf-8?B?S0lma0FzdEc1QktRWHp0NkRNSk9vT09oWW5haHNkWUZNbzA5UzBUMXN2V0Ex?=
 =?utf-8?B?T3RBT0xZT1VVQU5odUZBQTVMbld5M2xBdTU4T3ZaZVZWU0FwTXBweDBCcFZN?=
 =?utf-8?B?LzAweTAwdmVKNEtxZ0VwVVhsZHYvN2lTZ2FpazZpeUJxWEtpOHQwNVVmZVlz?=
 =?utf-8?B?dzdmWnBwWW5zRzc5Yk5rSEVNcWoyUklWZTlCTTM5RDJkRTNRMWxLMFVzTFk3?=
 =?utf-8?B?VWxmRzAzUnZGV1FwdEI2WnlEVGFwZzV4OGpFZDIvak9KdlBFd0k2bytYQkZU?=
 =?utf-8?B?eHRqUVpYRm1TQjI3VGpZcDIrNUk2VVI2Rm44Y0haamwxRTV5a0RLZisvL2lZ?=
 =?utf-8?B?RnZYYVdta0hsdjZ1aklwTE1OMjVVeEM3bGtSSkt1QnF5dnJraE5NRmZYeU0v?=
 =?utf-8?B?OU5QTnp4Lzl3NGJnekNIalh2QnFwcVN6ZlhLVTJvMFZ6dzNqSWRCaHI5aUJw?=
 =?utf-8?B?NVhDSE5WZ3hDeWZrOXF1aGI1UWhNN1VEN2VRZHdrUHgydXY0QVZOS0QrN0Fa?=
 =?utf-8?B?b3ZpZUtWU21RZnJFVDZURVhiOVYzZmk2NitacmFQUXpWK2QvV2Jlbm5vbzU4?=
 =?utf-8?B?THAzR1ZPR24zOGNIQUsvNC9RNGljbG5iNmtaZFM2QmxBSS83UjBLZGZ6ckd4?=
 =?utf-8?B?bWc1VjgxZ01ibXgrMGlwZ0psQkkvQmpqK25hZEFtcUIvTXZ6WTFvM1ppMVlI?=
 =?utf-8?B?cjFwMW9mN3R6QUJPUU9ORXZSc092OGJXQnhhWWtDbEppaE9SS0lZOHFRN3VK?=
 =?utf-8?B?bXZPeDhWSlorRDNncGJCT3BrZE45OFloMGIwb1VmY2ZCOEtwUUZxTFV3MkJk?=
 =?utf-8?B?cnYwQlJ3SUNvVkhwVUJ4dGxVTGxFNEs1Z3kwWmxvS3oyZ2VlU1d4YTg3VHpp?=
 =?utf-8?B?M2lzWjdGaVliK0F0K1pvekVjNkp5TGRLUHkrWVR1RnJ5MkpkSFEyYjcyR09I?=
 =?utf-8?B?eTVWa2FWNE1SMDdENm80Zkd3ZUxqelNQaEpWRTI1MTdBY2NVUUhEcFNPeDdS?=
 =?utf-8?B?V01rdGRFejBTdEQ1RHBTTWhFMk9nZ2pvQy90aHltbW1PQWp5cC9wQUh0VUFT?=
 =?utf-8?B?L3doSEJYTzU2RHFjeXQyOExyaU9kMVNZZ2JCRWJFanVKMmlWTld5a2kyY1pS?=
 =?utf-8?B?TmZjWDFkczRCTlZkWWo5clNoUWtvNVM3M2tkWnZSR0FzVGU0MFJlMDJXdnRN?=
 =?utf-8?B?L1VNZktKaC9ZYllQYTVTMFJsZGZ2NThtZnlVWGZvdmxadVZReFAwQWlYRkxs?=
 =?utf-8?B?Q2JTZUpPaTh4OG1mb3JGL3lnMkRFQ2FjbC85bVhNR3RYbVJoUHZMSjJFaXdp?=
 =?utf-8?B?UGRCQzdzZkEvbTZkeTByaFhsdVdLQmE1R2JEdnlFMTFTeU9rUVRWeStCUmJm?=
 =?utf-8?B?a0RsNnZZSVpubVFQRXhDUFgwZWhCL2gvcWhXQkFIZVNMTDVxSEpQREVlVC9K?=
 =?utf-8?B?aUsxL1ZYaXB2T0tsSzRhdXdycjQ3TWF2K3ZkclJRY0JDbFJvc3lCVlpVYlpV?=
 =?utf-8?B?RG1Hdy9mSkpuZUpGRlhWK1RnTzRoYWhOVkIxc084MzE3Q3RQRGk4ZnAvRU80?=
 =?utf-8?B?MGRvS2djQzNyN0NLMVhpWDJuek45V3ZHLy9IUTdCbzFMVlYybS93dmlaeFAr?=
 =?utf-8?B?UnVGa1pCclFlRmk4TUVnaEVaRk5vWHF5QVgzb2duSFJoQkhMWFFtSmttRDAz?=
 =?utf-8?B?azRkNkNlb3ZKQmJNUEpzTXRLK0N2dHNNWGtIeWJqZ29EWXBmbys1dHZIa3d4?=
 =?utf-8?B?Sm55Ykd2aFc3bkI5ZVoycEhsVWZWNDNEVHNFRnlaR3k5RzU5cHpCaDVtWlJi?=
 =?utf-8?B?Uk9FdnFmV1ZxV1dhYXNPUldRQ05RQjlGZSszdk80WjM2WDYxL2h1c2tNTllH?=
 =?utf-8?B?ZmdhWHJFdVN4aGM4YlkvVTBIeWVtMVVHNFJxS1NXaVoxZVVpT3dQUTNadFN2?=
 =?utf-8?B?U3VqdGFubElDVzhZY2ZXMEZoMnJXUWlRdk1ONjVvaEc4WWFsOGl5allTL3JG?=
 =?utf-8?B?RlVIWlYyVHl2Qnh4VmtuSVNFTjhrelVvRGVLUk1uMW9TK2tnMkg2OU5IQWls?=
 =?utf-8?B?Z2RHR2hLTVd4ZmZTL05KdUsyUlpjZE93aS9qa2dkUHJiNzh2WWo3TTUya2hv?=
 =?utf-8?B?YWc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e692ee8b-59dc-4c32-db6b-08dbb9d3c9c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2023 12:19:07.7282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NSPwIGpC1kqHAakLTRAKes9FAgeafVHkjjRTb1BpP+8Ak5L1OBOD/fbVi6s2wVWv8/WazFIjX5N/Fe9yGkSttOkh9+T6IxDNdOub21BIjvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695212352; x=1726748352;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GEGw1Gs6SexGV0ooJTVcD/5e22pH3DiEhZhDfSWlsqU=;
 b=jUMaWICfNRsEWppgHmRIAJhxCLXfms2UpzHDwBp3t4R+3tIw9I8uRNb5
 FKWstIVmYDRAFkZwfTNjmmvwltP8Zpl4/rNayCDBvPU09MpITqjVAasPh
 cwHhO6grkPhiXHy4o5z7etYQuCQw0MFxVCsJst4C/wxFVqyZbOsSSE12e
 T79xVOpbVhqIIJu8o+aG7X8yuPFMK5beTYvPaei04pvjLvEQG0Wn2cYxt
 W8pint/Z0CfRjdoX5gcI7VWnDU+3noMeuE29Nb7DVSKLTsjJj4sx9ubqT
 c5LR328Q+qjumhSWXlfKXoaE/EFYUy9luOfd+PjTwRLXrTUZCjxSqNlCi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jUMaWICf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix call trace when
 rebuild fails
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>On 9/8/2023 1:59 AM, Mateusz Palczewski wrote:
>> In case rebuild fails trying to restart or unload a driver lead to 
>> call trace.
>> 
>>      [  128.876458] BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
>>      [  128.884417] PGD 33510d067 P4D 0
>>      [  128.887776] Oops: 0000 [#1] SMP NOPTI
>>      [  128.891571] CPU: 6 PID: 2141 Comm: ethtool Kdump: loaded Not tainted 4.18.0-372.34.1.el8_6.ice.2117361.repr.x86_64 #1
>>      [  128.902308] Hardware name: ACCTON BRIGHTONCITY/BRIGHTONCITY, BIOS IDVLCRB1.86B.0021.D40.2112020610 12/02/2021
>>      [  128.912351] RIP: 0010:ice_vsi_setup_tx_rings+0x26/0x80 [ice]
>>      [  128.918163] Code: 00 0f 1f 00 0f 1f 44 00 00 41 54 55 53 66 83 bf da 03 00 00 00 48 89 fb 0f 84 c9 38 05 00 48 8b 47 28 41 bc 08 00 00 00 31 ed <48> 8b 38 48 85 ff 75 21 eb 3d 0f b7 93 da 03 00 00 83 c5 01 39 ea
>>      [  128.937060] RSP: 0018:ff78a8b908183a10 EFLAGS: 00010246
>>      [  128.942417] RAX: 0000000000000000 RBX: ff4a4174c104e818 RCX: 0000000000000a50
>>      [  128.949683] RDX: 0000000000000a4f RSI: 641269b8ad24144d RDI: ff4a4174c104e818
>>      [  128.956946] RBP: 0000000000000000 R08: 0000000080000000 R09: ff4a4173241b9b30
>>      [  128.964208] R10: ff4a4173241b9b30 R11: 0000000000000000 R12: 0000000000000008
>>      [  128.971475] R13: ff4a417570650180 R14: 0000000000000001 R15: 0000000000000001
>>      [  128.978741] FS:  00007f18a268e740(0000) GS:ff4a41823ff80000(0000) knlGS:0000000000000000
>>      [  128.986961] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>      [  128.992837] CR2: 0000000000000000 CR3: 0000000109e8e003 CR4: 0000000000771ee0
>>      [  129.000103] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>>      [  129.007368] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>>      [  129.014635] PKRU: 55555554
>>      [  129.017473] Call Trace:
>>      [  129.020054]  ice_vsi_open+0x29/0x120 [ice]
>>      [  129.024292]  ice_vsi_recfg_qs+0xaa/0x110 [ice]
>>      [  129.028874]  ice_set_channels+0x18d/0x3d0 [ice]
>>      [  129.033549]  ethnl_set_channels+0x3a1/0x410
>>      [  129.037865]  genl_family_rcv_msg_doit.isra.17+0x113/0x150
>>      [  129.043394]  genl_family_rcv_msg+0xb7/0x170
>>      [  129.047708]  ? channels_fill_reply+0x1a0/0x1a0
>>      [  129.052282]  genl_rcv_msg+0x47/0xa0
>>      [  129.055901]  ? genl_family_rcv_msg+0x170/0x170
>> 
>> Fix this by setting ICE_RESET_FAILED when rebuild fails and clearing 
>> number of qs when rings are free.
>
>What's the situation leading to the call trace? Do you know why we are failing rebuild?

It is manually done by injecting an error condition during queues allocation by using module parameter.

>
>> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller 
>> functions")
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>> ---
>>   v2: Add dev_err message about rebuild fail
>> ---
>>   drivers/net/ethernet/intel/ice/ice_lib.c  | 7 +++++++
>>   drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>>   2 files changed, 9 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c 
>> b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index 0054d7e64ec3..09190457113a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -321,6 +321,9 @@ static void ice_vsi_free_arrays(struct ice_vsi 
>> *vsi)
>>   
>>   	dev = ice_pf_to_dev(pf);
>>   
>> +	vsi->num_txq = 0;
>> +	vsi->num_rxq = 0;
>> +
>>   	bitmap_free(vsi->af_xdp_zc_qps);
>>   	vsi->af_xdp_zc_qps = NULL;
>>   	/* free the ring and vector containers */ @@ -3157,6 +3160,7 @@ int 
>> ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>>   	struct ice_coalesce_stored *coalesce;
>>   	int ret, prev_txq, prev_rxq;
>>   	int prev_num_q_vectors = 0;
>> +	struct device *dev;
>>   	struct ice_pf *pf;
>>   
>>   	if (!vsi)
>> @@ -3166,6 +3170,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>>   	params.flags = vsi_flags;
>>   
>>   	pf = vsi->back;
>> +	dev = ice_pf_to_dev(pf);
>>   	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
>>   		return -EINVAL;
>>   
>> @@ -3206,6 +3211,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>>   	ice_vsi_decfg(vsi);
>>   err_vsi_cfg:
>>   	kfree(coalesce);
>> +	set_bit(ICE_RESET_FAILED, pf->state);
>> +	dev_err(dev, "Rebuild failed, unload and reload driver\n");
>
>How is this reproduced? How common is it? Forcing reload seems pretty disruptive.

As mentioned above it is done by manual error injection and was reported by a customer. 

>
>Also, no need for a local var; use ice_pf_to_dev() in the call.

Sure, will change that in v3. 

>
>>   	return ret;
>>   }
>>   
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c 
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index b40dfe6ae321..becf7f0fcd4c 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -4232,7 +4232,7 @@ static void ice_deinit_fdir(struct ice_pf *pf)
>>   {
>>   	struct ice_vsi *vsi = ice_get_ctrl_vsi(pf);
>>   
>> -	if (!vsi)
>> +	if (!vsi || test_bit(ICE_RESET_FAILED, pf->state))
>>   		return;
>>   
>>   	ice_vsi_manage_fdir(vsi, false);
>> @@ -4746,7 +4746,7 @@ static void ice_deinit_pf_sw(struct ice_pf *pf)
>>   {
>>   	struct ice_vsi *vsi = ice_get_main_vsi(pf);
>>   
>> -	if (!vsi)
>> +	if (!vsi || test_bit(ICE_RESET_FAILED, pf->state))
>>   		return;
>>   
>>   	ice_vsi_release(vsi);
>

Regards,
Mateusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
