Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE6980AFA0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 23:24:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 015DA6F6B5;
	Fri,  8 Dec 2023 22:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 015DA6F6B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702074292;
	bh=yoRW9BoT6j2SzFe9gqx3aiGl1qJkWTlfKce/ILbamF8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tuYddc4XJQY92379ycmDKUg7kNbGBP6ahWzulWjqstkB472sod7xZKmdADDs4tg4Y
	 7y8n1gYDB5Z8iykvTTUUhNOoAIXMQ+2y3CZQLjXHopwHskx6st0/5wu0YgdcQPp4jo
	 5mmfU3WYilItSeuzgStfK+wcCFGKDvRYSyP2+FTLTUW/7Z8p8gBe1SojnXSLFqxqzA
	 RT3AEgfrW2UYsBoAmEjM0UM64FY5jC+YCzi6FwICcK+lJY7kZna2tnhfgPPA6oqH/u
	 eOp2Ykh9yu6y32qf5W1muS8moiXiaND7pvqtOUyfWKluNuKanI9JDRcsvPbtg6c3nj
	 0wM95+Q+ZEU/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0LpSrUhhuTZ6; Fri,  8 Dec 2023 22:24:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50B396F64E;
	Fri,  8 Dec 2023 22:24:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50B396F64E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 794321BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 22:24:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4959E40518
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 22:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4959E40518
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WAD-8Xm-SVdI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 22:24:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E4CD400AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 22:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E4CD400AF
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="397263187"
X-IronPort-AV: E=Sophos;i="6.04,262,1695711600"; d="scan'208";a="397263187"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 14:24:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="838273026"
X-IronPort-AV: E=Sophos;i="6.04,262,1695711600"; d="scan'208";a="838273026"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 14:24:09 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 14:24:09 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 14:24:09 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 14:24:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rxfec1NdHu8j8PINxyBi5c/U95O10QfmBzH9GDxcOv5i3jhJnSdsA06C7+oYjpI8LdLs1cA/HKCf298sqmaUSf3/k5xlD0jb3QwySZ0+OSE8D/r9MWOjiGZoVNsRjeUhCHL0Cb22OCSs7Gv/CY9ioI3dNDpWsumjVNrz7GlmXWzVcrm60NAgPAHS6DfbNFCQag3KVSEk8M7QiAxg6+BlOtFDv+8NZw1CqLJPCHGNydEfGle81wwqT6VHGaqlXByP05zjUG9Q3Dd9DcIrfVsciRW/FF875bp3NZvnPuZ6q+1rfv5Bq9asyKyPkc3WKhQIPV88nXdlpkTEUpsLH+mQFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tVDwgFAWOIpFyH3AMgxt+kKN5Vibby4NmstqYkxvOWc=;
 b=gNlJnH6wlAP/dlYdu6/ScClhpoZL7LhKJv/ftXLFI2Li3O4mOGJJVcxMJX0JGGAQxDlvD4rDF171JzQekoU3Su1ptyq4FueNFD/tPQ3tNyFPYEjIfCQrv8FM00wA1pUN2YjMKeMjE1NDqwWpt7wwa8+WcMYvq3ipDeG5V7TNtAA4fHdkAUWa2e8rKxHBm9D1LKePSkZyxD9mp9wyFnYggQU9emo6USFqHn7BE1ZxZN2U953PHPimeCRaqyn+6T6vx1KCeD5cD05PRaQEOEesEU8+dWcLlzcT5Lx/qY6en2ZeRconLO4vPVbTcifZIO0n5HzZljMi7i8Wxj1+sgfbeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by BN9PR11MB5548.namprd11.prod.outlook.com (2603:10b6:408:105::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 22:24:07 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::f6f9:943e:b38e:70de]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::f6f9:943e:b38e:70de%4]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 22:24:07 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next] ice: alter feature support check for SRIOV and
 LAG
Thread-Index: AQHaKToUXVlzIDYaGEyh4eN8rXhk7rCf5awAgAAR/LA=
Date: Fri, 8 Dec 2023 22:24:06 +0000
Message-ID: <MW5PR11MB581150E2535B00AD04A37913DD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20231207182158.2199799-1-david.m.ertman@intel.com>
 <bca6d80f-21de-f6dd-7b86-3daa867323e1@intel.com>
In-Reply-To: <bca6d80f-21de-f6dd-7b86-3daa867323e1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|BN9PR11MB5548:EE_
x-ms-office365-filtering-correlation-id: f64dc960-638a-4195-09f5-08dbf83c6478
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fE1tNCk5coWTu1ciyIPOvOFSEbMHhV8XdJuUPVYz3fJwc6XoHg0lj5YZ25TOyLmRFDbzlY20onsA79LR34RyOhyUr8AWJxnA0tRqYauEmAYXUoFwm3iyo8LIRIJi4BS249kzwSn4PW7j/0EoXYEU0DdGmhWc4M7wA8FT+jfuNl4xw4LeAeZtq0VuT/arnH3MmXF/FYYtcbVNPIxf8vr/VKvYZl9FsD49iM/W/4Y3+Aid7/IPwiPmH5l3oWQJCLrUWe6GG09CApklKxKJfMJVfHkzOllzFSBJjnT9UknQRU/uF3xxTx7Fy8OR3CQJj2iwOHZNSj3+UwOKhrr4ADKyNsQCxx8F2ZSp+4YNBzG5JXuhC09v9JGIuJWaYvsuzQJ0GAbZtxAb5fZa2QQuZdJbE0ECTC4wxsjck1k2o3u6yVHFYKbGSxxpyph96PE8rnaZ+U8qFjrxvhiCXV1xRkRer7Lz9PyJW6zDmdRIVfLXSSpUEkqVpb8o3Hi2bMlOi2nIud4RDxYIkIpzUQ/mACvB1Dw2BypAowYCNza5lBzMOWcekcO8XfH10naOA7tvZH8jDJ+O37BSlvzj14zx2GvbKZaERzrdDHwdcxWcPMc26tTUuwAIYyxzgcEu9pNbou6M
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(39860400002)(366004)(136003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(6506007)(53546011)(478600001)(9686003)(38070700009)(107886003)(38100700002)(7696005)(26005)(5660300002)(52536014)(122000001)(86362001)(316002)(66476007)(54906003)(66946007)(64756008)(76116006)(66446008)(110136005)(66556008)(71200400001)(4326008)(8676002)(55016003)(8936002)(33656002)(2906002)(83380400001)(41300700001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cVcwNXNMYXdkQ2Z0QnZEWVlIVG82MTVKbGcyZEZLUm0zZ0hLeGlKeEsrRzZN?=
 =?utf-8?B?a0NXR2tVMFlKQzR1Tm8rSjJrRkNvc29YaGYvdUgyT1czemhTVXRGd1orZFBT?=
 =?utf-8?B?djA3TDBjYmpEalQrT0FQSTc5OHN3Y3FBZUo0QVkyS2NQdVlFODkvejBLZVg0?=
 =?utf-8?B?ZUZGOFFjWEJ0bG5xd1lXNVhnVi9pb042L3FBb3htTjd4TVRCRG5XelNJSUp2?=
 =?utf-8?B?Yyt2c3ZteERTT3IweWVoaDlVeGpuamdnY3NzeFpKYVQ3KzZySW5UU0NxYTZM?=
 =?utf-8?B?VnErUHBYL2JOT1JTUzBOWGQ1c2JmdDBhUHA2Wmxmc1NCOG1nanN4VWlSMk9R?=
 =?utf-8?B?eUQ1Z1U3eDN4MFNXMEFyMUp3TVQ2Vm9hbXkxRHAxTWhWNDQvYnY2SXFIa1Zp?=
 =?utf-8?B?RFduVnBtc3Z6TDIzUHkwdG52NUVsU01pYytRKzQwZURUMkIyQVAwMjB6OFFT?=
 =?utf-8?B?MmZSV2NPRUlmSXBUeTlINTl1MDVlOVR5S1BKbVZZeURDdHRIWkduekJVL3N6?=
 =?utf-8?B?QTFvZEQ3RHZla2FNM1JxdVVSd21FY2djUktvSnVjc2RZZWdBUHRWS0gwTzNy?=
 =?utf-8?B?RDM4VUY0Z1VNK1Z4QUg2dDRCSXZSUXNDaThMdFJFMjFQZ2VpRW90bi9zcHE5?=
 =?utf-8?B?Mmc1Q2ZoVlNFYTUvTi8yOUhSVEZ2bzU0T3pPSHVPckJOSEtCV2JRazRSYjlQ?=
 =?utf-8?B?YjNpY2xOLzR4NEF2ZEVJVGIvL3VOOFdmNXUvY1Q4VW0wTVYvWmpqbGpOY2py?=
 =?utf-8?B?dlFsWjlKT3VzWFhlVlpLNVZtNFhQd3Nyaks3RE9JclNTOXNhaFhiTnk1YTZE?=
 =?utf-8?B?dFIxT3ZKL1Y0NzNBQmZSblczTEUrcUFVT0hlUTh1ekw1R3pMdjZEcHVPaHlz?=
 =?utf-8?B?dkhBdHlCKzdrM0Q3Q1pqR1ovemd2UXZHMjNDRlAza0dRRkNodTBHa2FOTm5M?=
 =?utf-8?B?YUpqWGRvL081ZWNJNEpmWlpXOXJoSWlQczFtQjIzMTl2S01HZ3IyaWlmZ2gw?=
 =?utf-8?B?MjRkMkFWYkJGanF3bGdyNUowTHQvQzBta3dmMDBsMGdHbGhhQTZrM1NWYnA2?=
 =?utf-8?B?MUt5dzMySS83MUtXbnZUWEZVM3RhbndRd2V3WDdaazREaGltMHdjWjk2dmUw?=
 =?utf-8?B?MFJuMUQ2cWFMN0NMTWdnbkVCUHB3WXRMcktkaXFBeDYvQW1ITk04VXVzOWhN?=
 =?utf-8?B?RnFXL3BKK3ErMEpTUVlZMnpzcms2N3MvNmdncGpHeUxPeWlaQlM1UDR2UExM?=
 =?utf-8?B?cVV6TFZHUE1kN0pidFJEU0dla1B5eGdlYmpRRlBSUitud0JhQnlkaFM2MmFU?=
 =?utf-8?B?TmpjV3VGbkZHYWRwaktNdFhoSUZCclhtalBIUkM4d0NtSEdIUThZV1dKK04w?=
 =?utf-8?B?NU5nYzc2VmRuN0FoQ09ZdzNqS2duZlBBZ2J5MVpXd3hDT3Bqb2RDVEVnZ1Fu?=
 =?utf-8?B?WGxZNlliWEhaTnoxclZIRmIyOXhYRjJidTlrR0ZWN2k0VmcxYyt5TkdLZWp2?=
 =?utf-8?B?OW1MRlNpbENaN1ZNU1BDUjVzUUdXVmo4S0FGcCtYU0lZWmpjMDBvSVNLci83?=
 =?utf-8?B?U3RJSGZ6bkM1YWtuai9IZlc5S0xJdytGT3lVSlFKMzZSMFNEZEkzZlhYMmdz?=
 =?utf-8?B?K2xULzE4MCs3a3JPRCtJU1VPaTRwNStHenlhdlZSb0RBK1lVRTdNWjZxcFJi?=
 =?utf-8?B?WFdjWjFPZktET1hiS2Q4TndyMU5TaXhFaEhKUU9IT3UrR0pSemQxOFZKLzJI?=
 =?utf-8?B?MFgwSThwL2hBamxEK1NyU0hXWUNPdGtNSGxxQms2UzMwNVIvUys4NExVWnBN?=
 =?utf-8?B?QkVWQ1RsNm5CMGJzNTlsUllML01pYU1MZ2NtaFpmdVdEajFuaklHM0p3NS9D?=
 =?utf-8?B?dUxIUEZQZktJSjU1V0lDU1Z6WnpoWVBQRU9aQ1l5WUYxVXZONVptcmxIczF3?=
 =?utf-8?B?bzlQdXc3amFWMVBEL3FwQ2xzcDkxNmxuY2dNUENRODNMSnp4UXpFbDQxaEFi?=
 =?utf-8?B?Zm9Wb1MxZFZnZEVISWx2N3JZSFZDT2d0MjFtVFJNc3FXUlFMSC9LUC9vTTlX?=
 =?utf-8?B?aE9OS0lGRjRPYUNobTlXbTMvekdBQkRRUFRTTFZpeDdRazEyaUh6MjIzTDND?=
 =?utf-8?Q?pZYxkvvkAjlgYjTFneGKpJfsE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f64dc960-638a-4195-09f5-08dbf83c6478
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 22:24:07.0009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0InVXSBlN/TWZC2SLalLqBwxFs1xOlpDG3WttaLVWCn10iFPouYS9FOX1iJui1SRw54BEAv2Hx2X7jJklHtAFaVlHTA6MZUZQmGdYLzjEEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5548
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702074283; x=1733610283;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tVDwgFAWOIpFyH3AMgxt+kKN5Vibby4NmstqYkxvOWc=;
 b=chmyP9GLdgPxuc3LgTBfZRP/x/oyip9hSJJoKtDv6EyzZod0Xx9u/yXo
 FvnakgvZBr4RlWq1Iqn5RxSWx0wOQ1FkZq0LuNlXA5jxwbVgPV5J/+x88
 tWDNXENFvrQwvix5U1hC2J1rGC7loLxmk4XD7p38g8TzEQd2oOlwBZvpF
 otBvA+WoF6VLueArxtQ8zdOQgMnv+CW2Ck9kyXf4+kddeB+AUDOcvQcMM
 zPV4LmjTu2X5xXRarLFxC3IxxGDtcf8M5vTt5ei/APekhKXGd7mrTK1X3
 Ge96eiAPPdJ8kLc2/NwNFPw7T0kE/KSwA4djAouKLJSXNu3jO6nvF1dsy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=chmyP9GL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: alter feature support
 check for SRIOV and LAG
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, December 8, 2023 1:18 PM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [PATCH iwl-next] ice: alter feature support check for SRIOV and
> LAG
> 
> 
> 
> On 12/7/2023 10:21 AM, Dave Ertman wrote:
> > Previously, the ice driver had support for using a hanldler for bonding
> > netdev events to ensure that conflicting features were not allowed to be
> > activated at the same time.  While this was still in place, additional
> > support was added to specifically support SRIOV and LAG together.  These
> > both utilized the netdev event handler, but the SRIOV and LAG feature was
> > behind a capabilities feature check to make sure the current NVM has
> > support.
> >
> > The exclusion part of the event handler should be removed since there are
> > users who have custom made solutions that depend on the non-exclusion
> of
> > features.
> >
> > Wrap the creation/registration and cleanup of the event handler and
> > associated structs in the probe flow with a feature check so that the
> > only systems that support the full implementation of LAG features will
> > initialize support.  This will leave other systems unhindered with
> > functionality as it existed before any LAG code was added.
> 
> This sounds like a bug fix? Should it be for iwl-net?
>

To my knowledge, this issue has not been reported by any users and was found
through code inspection.  Would you still recommend iwl-net?

DaveE
 
> > Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_lag.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
> b/drivers/net/ethernet/intel/ice/ice_lag.c
> > index 280994ee5933..b47cd43ae871 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> > @@ -1981,6 +1981,8 @@ int ice_init_lag(struct ice_pf *pf)
> >   	int n, err;
> >
> >   	ice_lag_init_feature_support_flag(pf);
> > +	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
> > +		return 0;
> >
> >   	pf->lag = kzalloc(sizeof(*lag), GFP_KERNEL);
> >   	if (!pf->lag)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
