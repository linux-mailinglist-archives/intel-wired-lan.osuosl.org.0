Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97E16E235F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 14:34:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B0B2405FC;
	Fri, 14 Apr 2023 12:34:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B0B2405FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681475687;
	bh=COCzUdsP4RG4eGK4KfI/iYbr+JkwpHmXXndsMwF37Xs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rAGVgdIlI+O94xyej4OZqAS+EQf8kMHDNPrYenoNTjkC+VcwDd8m222uB2djoXB7w
	 SSVlg0QDWGlKgTTKL4yUXRNGxOFZeKQwH778j7BuVtVEDSf8YrOUbDtz/dxyhDY6Ax
	 K9kNGZ9eb1JNtbGubg2CIED66f2iEaUBk3kv/PVk7cDcFMxgdlaSFiCUrgZm6rMxiD
	 6PmTnsMlEkH5z03FSlVb9edFX+lKnefLBfuRoS5Hacm0TkyV8vXJKJtFLxfg478kFx
	 E7QuW/AM1ffoyremughARgUbUOeVAu4dpIjGwQGe80yz+R/iFkgjTPpgxDo9Ve8MpK
	 Q7iMkauRvrEUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fNzgXHXT4EVL; Fri, 14 Apr 2023 12:34:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BCE940242;
	Fri, 14 Apr 2023 12:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BCE940242
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 149D91C3E8A
 for <intel-wired-lan@osuosl.org>; Fri, 14 Apr 2023 12:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEC1A41919
 for <intel-wired-lan@osuosl.org>; Fri, 14 Apr 2023 12:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEC1A41919
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gkhm11iVshVu for <intel-wired-lan@osuosl.org>;
 Fri, 14 Apr 2023 12:34:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED71D418B4
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED71D418B4
 for <intel-wired-lan@osuosl.org>; Fri, 14 Apr 2023 12:34:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344452011"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="344452011"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 05:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="689798097"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="689798097"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2023 05:34:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 05:34:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 05:34:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 05:34:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 05:34:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lUyUULk/37HOAa3imgdhlV5SL2/99Uj1vL5nFVC1OyqCPPE6UZtgEklEmvBpr9tvoUrwEnGOVcSTUTWaCBKSMxfGLfAsyS6Bpe9Ijmw6IygAMbMmau+nVPRgTBhQm9f2YxvxkwhGY3v0l2UsEAgS5pm3fMD+382am/QqKM0uAp06cY9x5yAMmGFm6mcbHpNsEyKlnnlArSVNY7OTJOK+BUQpA69zWwqlEV+nNRysyN85YRHOIk2uGXj7ugSghsYxcbvTAGYhANffMvnLZ5yNzfWAOZFw2k40OrcJDRCiN0+DpNNkiND7OgjWRVd+ujvSjtg/r4ADhFELmfgJfxgwQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o3HcTOaxWmTp0LdIH/cECQo5tdSLZiLC8jxtAuCsY3I=;
 b=UxBlPrPIpbfv0ceu920mkLk6iQcWXsQQrHFEe9hyJ/+4Oa3CwfHHEhxtVRrhZTGUpWobyK1CH56aSDW8Dn5l8S95xMvyKUFjYgJp5+TxSE6uoGN3xA2RyOppWqORcOJHV+ohDBfCfbzGsiNfdybNwvLijoo6WJwhNYQXAHPZaCvdydhQYPzG0w1uCQSSZh47obPBGSlAhn5sBv3G5/ljCamXpuYEolmLgvWWXnOV/2hl3bJ7tGnOX+JESlpjmu557TxRJDzJZdau/mOO0MxYfxcu0vVAR06jGgAP6hNFATOC7c53tV0XCnlnJ2njUmCZO6MYVvGNyjJ1IV4ADjThiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH7PR11MB7026.namprd11.prod.outlook.com (2603:10b6:510:209::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Fri, 14 Apr 2023 12:34:36 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8%4]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 12:34:36 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
Thread-Index: AQHZbURL//7N1kf7H06LoNzMTKXBn68oMj6AgAEG/WCAADoQAIABSQGg
Date: Fri, 14 Apr 2023 12:34:36 +0000
Message-ID: <DM6PR11MB4657AD6821A0719F4083DE799B999@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
 <22a6ab36-2efb-eccf-b4b0-333c50515183@intel.com>
 <DM6PR11MB46578A43EF737F2316D7DD259B989@DM6PR11MB4657.namprd11.prod.outlook.com>
 <a79471dd-20a2-d9ef-a661-948322223f8c@intel.com>
In-Reply-To: <a79471dd-20a2-d9ef-a661-948322223f8c@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH7PR11MB7026:EE_
x-ms-office365-filtering-correlation-id: 692f77d0-ec24-46ad-41ee-08db3ce49b91
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nJtfSaCN2ocpRpBGZxtiJggzejGCUownrWY6awFSxsRpc9wAzG0HLqLrwhOytUcqLiHZLPVyeONgzfTql7Hx+MMGK2thyxJjwDvdX4LaJZ/9WOh454E1cLE4lzBA1kqn662iWwdsgSRfDo0b5qAfhm54AOR2vaAK5L26YEHZmCnukTJ0m0U/aDiqIdbAGkrdJb8fgFraoo8xJBApXcJEvOMYPzG+bynUHeMe04Jx8kZ4jihpepQRwu7U/avobJRMm7NI4MkLv9dYnEiQ5uk1Je8mjOuEGOabDtvYPsKOLjOAQsk1DEZ7UyNvgXzhX5rnqgUiaXlTTsE7ntZourBOjZhEx68/8/t/Detnb0feBSLVPTI4yeQpUJy6i4Xt1I9pAK7JGZF3/nnIEa0jJUP3mO7kBYv20hXX0Z8FXBOROzGHtpB9pZNwHeGTrMosN9vqkON3BrugKU1qYFoSceRYNq6symNiRD4E9UWQtJYwSpiNhsrvCuqjw8sXi3hd+WdT0Lh4u2jmDlYchwOnDllGOeG+l8CA3ChXRAFKO+SR2FVxButZ6z3qtob0Unhe/LmfwrUCznEDSex9T0gQ1LsfjCiwj6Bfe3cI/L5SfS/uATcG8nY/5tt4LQXIcqs9seWv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(39860400002)(376002)(136003)(451199021)(38070700005)(26005)(76116006)(66476007)(64756008)(66556008)(55016003)(66446008)(6506007)(9686003)(71200400001)(2906002)(83380400001)(7696005)(186003)(66946007)(110136005)(86362001)(5660300002)(52536014)(8936002)(122000001)(8676002)(38100700002)(33656002)(316002)(478600001)(82960400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFdqMFphd1g4djJmWVZkZGNGVWROVW8vRFRzeS9oaENsQXR0eUIxN0FDbUpj?=
 =?utf-8?B?V3FjVmNHNFR4Vlc4UE0wZ3ZPR3hBelg0Y1kwNlAwSEo0NFFqOHY4elBPb0pm?=
 =?utf-8?B?VWJYL3pxY1FFRUNoY092TXNCR0J2QVhwZFJUY1ExbmlZSk12MWIzQVJrOWY2?=
 =?utf-8?B?QmltRFAvaWVHNkFzdlpjT1IzbEpxWkU4ZmFnSVVha3JITzFKM1JXbHF4V25n?=
 =?utf-8?B?eXVvVmpYaWJscXYyN2V1YlV0MlJma1h5Q0pyQWYzZ3JNbUZYVE9GdGRBbFZK?=
 =?utf-8?B?TU1hWC9EbkM5MVg2UldlWVlMM3FXdFdsa3dBM01HaURWdmFNWlBhdkFFL1Ar?=
 =?utf-8?B?USswamJNNXlCRXRiODJQZnRnaDUrVWJ6c01FTEdjcDhsQmxWSTJBWWRkaUxH?=
 =?utf-8?B?ZzE2OFJ2NU5mNlRwUkFjODNET1ErQ1NSYUhPbUNRL3hReDdPRmJqVzR4NEJF?=
 =?utf-8?B?WkxZTkZMSGxSRzBIcmQ5cVMyYlc5eVFUZXRtTysycy9jalpYQ05yWUZXVTBy?=
 =?utf-8?B?UzIvRHRVUjg4MnpBQzlXNFNERFNXQjNBZ1hVVUdkRVYwenZyU1RLdU80NHZ4?=
 =?utf-8?B?bmJmUlNXUHJ0d3hRcE1zOWRmbFc1SkpmRTdsZ2RZU0pSazFqMkxVaUxtWkJp?=
 =?utf-8?B?VFBZVkx4RFYwQ0JOemlWcWNiWjFkbWFGSnN5MXdXV28ySUp1OU9PbmU4elJz?=
 =?utf-8?B?cnNKTThzQnV3djN1dWZRYVJJWXhvZDlFR1FqZjZKUGlsVEJHM2E5WndJRFJH?=
 =?utf-8?B?aWFadko2NDVYM3hZQ3VzeEFKd3pVLzhEcWs3SzdWMUxldWFvdU4xWTRLRGp0?=
 =?utf-8?B?Q2pVYjJpYXl3VzEvdW0zRlUxN3N5M1FYdUZxNFFtT1E0bkhvWEUwU0IveElt?=
 =?utf-8?B?VjY1Y2JBSXlhc1EzMzk5VUhpMkJEc3FTcHVDV21DSkh6OGg4Q0crNE1YRDlO?=
 =?utf-8?B?NmZmL29RVHZWNnJRVFFJMUp5QUpWZmRuSUowaWRXVE9Cc0lhbnNnVlB6eWdt?=
 =?utf-8?B?TkZoNzlXK2lQWFp1WWJHMk5hU1ZjY0tueXBkT0NYbFNvN0lqRW1kVC82MEpv?=
 =?utf-8?B?MG5hQVNUSTZ5ckVPV2hicmxQYXpaYzZXWEpYb2FOWUZCL0RMRklJOEdnL2NB?=
 =?utf-8?B?WXJnUkVsOGQ3WXM0RUJKdHB5eERRWHR3Sk53WDJIN2YzaFBRclJQT1Zxc2Z5?=
 =?utf-8?B?THNGMXF6YzU1VjhKNkh2SitFaUNZTDM5M01IMHJXNU85eW9nY3dqWFU2MWIy?=
 =?utf-8?B?WTh3cWVxWGRjTERwY1lFN3hKUzhzMzJ6cFF0V0NxZDJJa1NYekw0RzVZMVlE?=
 =?utf-8?B?a0NRUTlsZ0dKWEhiUTFiV2Fla2x0bEJmVUVhaUEyZU5RSWVzTWcxSGlzR2xW?=
 =?utf-8?B?NzE5UGdvRDZDYkRXNDlXM3paK3c4RG1kNVdNdEN3enZ6ejczNU1aUFlEenk1?=
 =?utf-8?B?aUVEQjM3NEIyWm5VUnZFZEI1SjRwb1h0c1lRUUMzRVpVR3ZPVzJEdWtZSnlJ?=
 =?utf-8?B?WUNvblJUQ0RZWjJkazJReHM3alRtaUNwK1JxK0t5MmREYUVjd2d2YWR2djJi?=
 =?utf-8?B?SzUyaXN2enBTL1E1dWw0UmFMTFBsN1g5T3dSWGNMYUdPSjJsNTJrcE9mNTFr?=
 =?utf-8?B?bDVzTm51bzEwWHpMT0xxdzlLQUwwOWZDUG1FdEttaUxuS0lKalBNMzg0bzla?=
 =?utf-8?B?ZGc5bjVTS1d2ZTJob2pTSFpRTEhuK3ZtNDJvWHVZcmdYbmtVcnRmNzdicmU5?=
 =?utf-8?B?RGpZa1IyWUpWMlhjcloxQUJ2b1VNcDBFTFk3cXNPV09ySjBYNkRleGhjQXFl?=
 =?utf-8?B?dkxmUzlGL2hDRFFlUDg0aGVpZWRaSXYxSVJtSVZNR2NkUHQ4MW1QditXc3E2?=
 =?utf-8?B?S2pGb0FESWhNYjRld0hBWEtWMmFhTzV2am1qYVRUdVdUdUUyMjhsR28wQWZQ?=
 =?utf-8?B?Wk4rMy81UnRHZ1VoTENlRmRVK1NabGNzS2NzbjlEZG45cy92L0VzSjd0ZVJI?=
 =?utf-8?B?Q2loWkNYV0c0QVpWWW1OWGFRUFprTk96NnU2dFhuUDZGSUhNcWhGeEpHOFlO?=
 =?utf-8?B?MS9tZGZpY2N2MDVYRktKQlF3d2tlVkhnanVMMnppLzB2UEdOVnFEKzF3cHNV?=
 =?utf-8?B?QjZrdzRSSzRwUXR0UnliczFtNWI5VzVnM2llV3YydmVFUEhWY1ZVVzI0OEtK?=
 =?utf-8?B?WEE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 692f77d0-ec24-46ad-41ee-08db3ce49b91
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 12:34:36.2894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pZwPlr3uWiwReQBE9EwIypIWLskfCfqHjqX3kn1baQxbSS6MAmhP66s4W82DYQi5YxLyb02bbixcVj1YAilf5BKS0QcqUpW0gkgJVFmFRjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7026
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681475680; x=1713011680;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o3HcTOaxWmTp0LdIH/cECQo5tdSLZiLC8jxtAuCsY3I=;
 b=QLHZSsbYBKXpsX73tGgN11x1AHE6fVBnTQNsecgSmK2DpBE0OhqTZuB2
 yscrftntl1VBOJAgX4Jn2VgW8BzLvC1+/j6d91QD1ogb89CxczkDMrY55
 YEAuMsw+VQiZL/a7C38mL5WjVKkv4xJn9yFvyvMAmHcR6Cuhn0vc4kmN9
 m/DMedWznl4O711BZw+e7C/dOkxQTCey73Zd1m2Gy+QZTFkhk5KmuaFo6
 1T6nwnCIz0gGuC4GeeOdknnSOegHgTb407R0ZnyMugCj/NTZ40npjJjCM
 TuQwZlCFeBXsqq/M57uYZJoCZ3zSlKFKfRlCMq+O17Uiw4oQ/2aixsZNM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QLHZSsbY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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

>From: Keller, Jacob E <jacob.e.keller@intel.com>
>Sent: Thursday, April 13, 2023 6:42 PM
>
>
>On 4/13/2023 6:36 AM, Kubalewski, Arkadiusz wrote:
>> Do you mean to ask FW each time we got devlink request from userspace?
>>
>> Well, this seems doable, but do we want to let userspace enquiry FW
>> admin queue
>>
>> without any protection? This smells a bit like a security D.o.S.
>> possibility,
>>
>> I would rather go with reacquiring this info on pf reset or something.
>>
>> As I checked there is already a devlink command: .cmd =
>DEVLINK_CMD_RELOAD,
>>
>> which reloads this info in ice right now (through ice_load(..)) and it
>> requires
>>
>> .flags = GENL_ADMIN_PERM, looks a bit safer.
>>
>>
>
>We already do gather some information from firmware at each info
>request, because we read the NVM to get the inactive flash versions.

Your proposal seems simplest solution for fixing the corner case with
"externally" programed CGU device (with external programmer on running OS).
As I said I can go with this, although once CGU is part of nvm image this
gonna look even more corner case, as customer in general shall not mangle
the CGU FW on their own.

Thank you!
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
