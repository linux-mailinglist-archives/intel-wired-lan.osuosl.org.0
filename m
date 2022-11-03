Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B62C561739B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 02:13:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06EF560AFC;
	Thu,  3 Nov 2022 01:13:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06EF560AFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667438009;
	bh=WZz6DxIk7FKQ2+N8RjJ4w4zPqTda1XSEUFk4okuqb2g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FF9h7FQXRNXE2lb2VzM4MRjtNVwGKJT96mL9F6J4pf/FIWy95FRTPZowTQB5CDpDz
	 2TprcOCXRnD7fYgaGVgW8YIzCPGv883pNZ8gudAQXqhBiRhkfauDtxIP0458vcEJHL
	 v15OoqhqhsBNmZRqQpc2tVkxRliCLDTTupRyXnQVNY8QtK/iAyDDpy4BQyxtzcwoHB
	 YM0K9vJSJAhBH9/9r1CP7Jo2aw089LeDgaLAuImnEnA5BwBa+cq+UDc0jEmZjJdQ98
	 fbqJ4XJP3mPJrIr+Vi4jq3U8pfIk2BE230RThRfYieHUc9hS6+eHgrJDNZNJoCn7u2
	 obIgARU0gbm6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QbKj33sXai-1; Thu,  3 Nov 2022 01:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED2D960AE2;
	Thu,  3 Nov 2022 01:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED2D960AE2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E16FB1BF337
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 01:13:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B67554032B
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 01:13:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B67554032B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nuSM1WePdoOf for <intel-wired-lan@osuosl.org>;
 Thu,  3 Nov 2022 01:13:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84E34400D0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84E34400D0
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 01:13:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="289269992"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="289269992"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 18:13:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="879692930"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="879692930"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 02 Nov 2022 18:13:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 18:13:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 18:13:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 18:13:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AzAJyGbb/h+2yTl/y6IK0lOTcZZq+brHhWyCi3dC7umlPCCQ5EhSKE4gIcq1Dw2BGxXxio5Fpe51cTTCt8p2FOlSAZ6jU5cQwDYvAzwqRyWchqY7J3CnQgjKf7SeH91jAkVL9JusAJKGNC6H4YU4qGMBPrcAWYelUarivLMX5mKmZiTbdLzFs8JKt0O4+Pfi7XSrrPi23hkumyS/65Euzz+gfq1oIDB/gutkpN1ca/ap+77EAbH89X9JWu+HnrPLF4UbNztV+cuUgspQVSSmF6waRsuuNOyOjUtzYW7tlNqi4+oqy/wd/GfXnw17DpZtoMRoFzKW8hlKT8YJDU1hbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=or4XR1zbWk+J4oUz/JxgImCvtMphnjzCrD+CldLvKGw=;
 b=UgXLwOu0W6kBot1g/hceSRfc5sHxtVrn71022bTGZ+/F62zjVYepWBSp6dELRqk66qb6EfQe8MeOCbdq57JibjibFxHfZHfPZMWnYs33uc7TvKf0UP4/FvUlzVRGPBOTaa0cFrQLWlFo0OLJ98vNkFQB8in000eXjMmx3+IYId5Pa8RXkzYO9zlRC9DuT2aoCex6HMBVkGSREM5lDI6CCzF6RJ0QNDEmOoSTyCk1D2mU2PV6PDuvJgzqy9bI/8e29CRlUBXpIRlZtwbnuBp2ZUhpDVV4ryAB8/fTPDp0JReaXAB4MfeJEPF+v9i4lSNMDBjxDH/vwuua2AN7AdCGNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Thu, 3 Nov
 2022 01:13:18 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::4a7c:e44b:be11:7c5]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::4a7c:e44b:be11:7c5%3]) with mapi id 15.20.5769.019; Thu, 3 Nov 2022
 01:13:18 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
 using first flag bit
Thread-Index: AQHY6HrFkWrFxNy60E6mPnZoW8jiDa4sNKkAgAA8q8A=
Date: Thu, 3 Nov 2022 01:13:17 +0000
Message-ID: <SJ1PR11MB6180AA9E5B4C32DF523E002EB8389@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221025140307.2330-1-muhammad.husaini.zulkifli@intel.com>
 <109b3730-7936-d7ed-1693-84c65c92f2d0@intel.com>
In-Reply-To: <109b3730-7936-d7ed-1693-84c65c92f2d0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|MW5PR11MB5930:EE_
x-ms-office365-filtering-correlation-id: c047239e-ec5f-4b25-e188-08dabd38973b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KRwwL1abiRu691VB3jdTR88VmkPYFixcnAcQ2e+ZgcM/ueWAk81XTINJScCRNO/dwZwhHvEeTPs6xrAdWaJWhjBeOf44m4a8O/9fP/Wys+QwGWYeZRHUZINwA0LlhPOb5nE2OBex3mzSlxnZCz53QJqiHaoLFZZk0pzxXd1VojegtUekp4d3ua7iXIPBSyaff6b+wHvFKduV+hV88V90p7jACP+sQ+FMTTNmY13YVjtv0k/WADccGDSYkSmJba6lUrUjrVKNI4A7GeszxRaZ7oqd2zPdDq5yXynS6noTtg5EM3PUOkcwpzMUF2u5FTpSCs8uFWtAzuKN63RV9dGh2Nq8Jmnlssn9b0hqVCVWo7oAH9HbwP4RLYd5p1lP5eYx/fsfiYfrFdWs7RoSslKnXkw9/hAaiCGrolVx6q8mG3clZYPL0BfGCxjmErey8BzP3o0hSbXV9MYvrJUyUCgWdEq2weMLE3gliC6Ec5wXiKKsxbNe3CQNfveqkYH2f/dKsbpyf7if+wpem1VHDk4OSU9P9xghbnYM1xwYPaXX+aAnypwzFlz/3eVPspLCGo/yiLAGMZd5/lNCExtsImtcum5w+jcNiVNxqLe8AH+1Lebr48QwxTWKhYu4Dhr84dC/1FSu95IHAj1DCj+JeYJ9amgZeAQAEvd3lvU904F6ImFHATH3LqPQc5CPdvHyuMmVbTU5OyZuhznsCoXhCX/oYRm2gMKWwWqlpjlD8wfdn4ODqesCA0rkS4GCLY6c+KiiAxEnHJR2C+oSA1bjDgRWplHrSff6fAc5PjsAEgSfzFo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(396003)(376002)(346002)(451199015)(66946007)(64756008)(82960400001)(76116006)(53546011)(38100700002)(52536014)(2906002)(186003)(122000001)(86362001)(83380400001)(7696005)(41300700001)(71200400001)(8936002)(107886003)(66476007)(54906003)(26005)(8676002)(66556008)(6506007)(9686003)(66446008)(316002)(4326008)(5660300002)(478600001)(110136005)(38070700005)(966005)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUQ2N0RGaEtDVW9zWTJld1Z5WENxQ0ZGK0ZZL0piL2ZxTE10aDJUNmNBa2hn?=
 =?utf-8?B?WUVsQzh5R0FaZy9HdHBOY0ZHYmhQdjlRR2VqRW9Oa2x0SGd6UE5vYjNYV3VV?=
 =?utf-8?B?aEFQMEZYLzVaNDBYYmJldzR6WjdkTmxaMHhvd2NXUjNjN09xMGd4NE4yUnBO?=
 =?utf-8?B?bDhzTGd3U0FBM2ljcCs4NjlTWGlkdktRdEFqL2szc1d4OXhoaWdQUVZKSmFt?=
 =?utf-8?B?Z3RwOVRGTGNRcWdRZjNFdlpUY0tYbGIxMy91dUU3alJjMnpLeGtnb1BkblpQ?=
 =?utf-8?B?SkhxRlJUVVFpREFKWThWNi95eHg2VEc2SzNlRXc4NGd1VElYWVhzd251dUdr?=
 =?utf-8?B?QWQxRjdQcCszc2JkL2x2SWtnVzRzTmlnNDZaVERKaGpIMTlvT2N4Z0hSMmVP?=
 =?utf-8?B?a3hLd1pKR21qWlo3Y01rVkpZbmM0UER5WW95TXVYclBhNEJaY2JIeDU3RjF3?=
 =?utf-8?B?L2pzN2pvODc0Y0dlOTE0SCtWUUxGUW1lS2FTdC9aTlU1VWpXMFlOZm95WkVn?=
 =?utf-8?B?enRIK0VRbGNYbW9vdDN1bWRUdmJmUGU0dlpvVllOeGhjL2JBc0ZiYmZJUGdE?=
 =?utf-8?B?QnlwR1krdHBaYVN0NUplNHZxbUFFMWNqdk1JR2hwSStrYTJPWUttMmJYTmdT?=
 =?utf-8?B?SkxXMlZtcFFrMXJQNVNYdjB1dzVVbVBUM2pTTkhJRGZRV2k0dldxZXVmYW5v?=
 =?utf-8?B?YytzZk1LRVNrckYvcGoxUmQydW1EeWNwK28zUTZVbUREamhURlhuTXQ4dXdh?=
 =?utf-8?B?YzAwNFZ4aGpiL2haOU5ubW04NWxsbTFtVE9LME83UDcvSXdlR1RhMlZYVU9n?=
 =?utf-8?B?b1YzbytTWFYyWUZ6QWx3bm9hKzJmbytpUUlMVFFIRHB1K3JseEtiZkdIdHdy?=
 =?utf-8?B?dVNubFJmL0RKNmd1NFFBZlFjd0hWZ0owK0Fyc25Xa2Y1dHJ4TkRQZ2UyeDFO?=
 =?utf-8?B?MG5IV0tTN1orbGtDN0hEcFdKemsvMURuWkt0ekxlaVhjaTVmTVpxWTc3RWpP?=
 =?utf-8?B?T2ZwMm1UU0J3bTFiR0FCMURqRW4ydDEvUDYzYXh4QmZyTzI2NzJsN3lQNGJj?=
 =?utf-8?B?bGpYN0o0OGMyZWFPL0JWUG5MUlhPZkw0TWl2SityR3NXbUNQbzVvMEdOUHBT?=
 =?utf-8?B?UmpXZ3RGOU00VVZFczFxRHR5TzAzQ1dmRWhPb0NLMEVicGhETnFLbDRPZlYz?=
 =?utf-8?B?SVJiM0FMVE1RRzd6eUZXdFNYWWVrRVB3eUN1TkUvNzRlMHVyVWlLZUZ4eXhY?=
 =?utf-8?B?UnpMZ01DR1lWYnpRbjBGSkhBdENGaHpxOGdBcndFdkRkUFRERW5VYU9hR3Ur?=
 =?utf-8?B?eHkxblRUS1FqeUsrSGpPVWd0UXNOQ2ZDN3E5R3I2OFZoalpPR1dDbkRmb2wx?=
 =?utf-8?B?Q0ZZbWE5czRJR1lsOTVHQndyb09Gays3UjZoWHVyZGVqSkZwNUpYUkNMZ2pU?=
 =?utf-8?B?aVJ5MGFwTndpUGQ0NHpFVHZYbUdtVFFzZkRORWxTNnJvdW92aGtpUUlEQWs5?=
 =?utf-8?B?a3YvMWNxVjluUldHYmxlaDdKSlVKaWNkREQ1QzRNSURyOTE2ZTNzVWRkNGgw?=
 =?utf-8?B?aFc3dXliaGRTZXJLbEVxVnEyYi9NcVRoUmoyWFlhRjlLRkRBZ2RVWis0ZzJt?=
 =?utf-8?B?K1g4RVNRcUhUMGd6N0I0R0hUOFIvdnFLZEZnZ3FYZFFNVkFhNXJuZFNycnJT?=
 =?utf-8?B?dXd4b3R6TGxIWUtNbzhEQnZRRUJscjJXZWhuOWV4ZnhROWM1S2xqV2xrYWlG?=
 =?utf-8?B?SDU4VDJIdW1NWVVNT2ZpOXl5YWtidUJTbmIyTzZ4MlBqU3BUb3RobXlXRXZG?=
 =?utf-8?B?aVRrTEhSdk90cDBSN3ViQnpMS1BzODZOUWJ6L0l4RU1pMGozN09VemdLVTZh?=
 =?utf-8?B?ZTU1VEtRVW9rWlRrMk1iSHBIK2UxeG93bjR6VkhkTXlRV3hzVDUzaG12b2F2?=
 =?utf-8?B?azRjeXp6TEZqM1FxNzNGWWFUanNRMjFVeDV1OEpzclk5UGRyZWk1TXBpQllC?=
 =?utf-8?B?U1VIMnNTelNabUJFYTlHcmpPS2pHV2dpZm9LM1VlaE1sOHJQaFhhaE45dmlF?=
 =?utf-8?B?TnNkaG9MQ2kzN3dFWmZROVJna1RJRWRSWUtqMkgwNS8xalhoWDRGeDB3cWxI?=
 =?utf-8?B?YmQ1SjVZWUxXbHBLbml5dFdXbW9Cd05DTHJOMFljVHgxK25qVUVEYXhSYmxW?=
 =?utf-8?Q?HSQbEgkOumGYFXyTjh6UTOA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c047239e-ec5f-4b25-e188-08dabd38973b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 01:13:17.9136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vicuy6+FkmIGUDVhUL/VKz5K84W0M+hYhSmx4AqhxizAxPZlkfIQlGS83vQcwfNFSHtJGvNvv8TIVufPOqRUoY5EnyOsLUbFE+O08WI8tc1K0QThLCKxzq3lkcFSALEX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667438001; x=1698974001;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=or4XR1zbWk+J4oUz/JxgImCvtMphnjzCrD+CldLvKGw=;
 b=QZj6s5+d4h8lrlOOlrVwtZGbVgoQYmuxttOONCQcY9hRcsDwzruQnSfC
 +byzSpRwSqbKlqH/ru5gBKbVFczlBxir2+eCOlg73pqxCZDa6Cb+8im55
 MzXEhtOhHZ8U5jf52vG9zy55cw308EBOCqr4pcZWLdZdMe0PGA1Fp9rJm
 zH4FmzRZj9QbQDuqREws5jxl8A5rS246GSaXr1K08dXJRzOBcNbtw1nte
 TWxGYYemk5Ds/Mw7loCx/5rSrlpA7owZ42FPVErz8MWZol8H496hIugwd
 UiRN4TqKt2peP7pHnPBedRpdRToEbq2m8w1WgMNAXe3xj6H4xo7maPZZl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QZj6s5+d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
 using first flag bit
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, 3 November, 2022 5:34 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: pmenzel@molgen.mpg.de; Chilakala, Mallikarjuna
> <mallikarjuna.chilakala@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
> using first flag bit
> 
> 
> 
> On 10/25/2022 7:03 AM, Muhammad Husaini Zulkifli wrote:
> > From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> >
> > The I225 hardware has a limitation that packets can only be scheduled
> > in the [0, cycle-time] interval. So, scheduling a packet to the start
> > of the next cycle doesn't usually work.
> >
> > To overcome this, we use the Transmit Descriptor first flag to
> > indicates that a packet should be the first packet (from a queue) in a
> > cycle according to the section 7.5.2.9.3.4 The First Packet on Each
> > QBV Cycle in Intel Discrete I225/6 User Manual.
> >
> > But this only works if there was any packet from that queue during the
> > current cycle, to avoid this issue, we issue an empty packet if that's
> > not the case. Also require one more descriptor to be available, to
> > take into account the empty packet that might be issued.
> 
> <snip>

Are you expecting me to cut the test result here?

> 
> > Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > Co-developed-by: Aravindhan Gunasekaran
> > <aravindhan.gunasekaran@intel.com>
> > Signed-off-by: Aravindhan Gunasekaran
> > <aravindhan.gunasekaran@intel.com>
> > Co-developed-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > Signed-off-by: Malli C <mallikarjuna.chilakala@intel.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > ---
> > V1 -> V2: Fix error when compile with W=1 and rename the title/summary
> 
> Sorry, missed the v2 but looks like most the same comments on v1 apply.
> https://lore.kernel.org/intel-wired-lan/c665240a-3cfa-4eb8-4308-
> 63fd98492faf@intel.com/
> 
> Also, the Reported-by lkp can be removed. If the patch was created due to
> an lkp report, the reported-by is needed, however, if you are fixing issues on
> your in-process patch that were reported by lkp, then it is not.

The v2 patch was created due to lkp report...

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
