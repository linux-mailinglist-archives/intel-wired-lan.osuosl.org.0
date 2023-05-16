Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6241705B7B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 01:51:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6078140C12;
	Tue, 16 May 2023 23:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6078140C12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684281079;
	bh=omMoqba+2Pn4aVyKzp02Cb5dGKHhGQZrsPhEaS53vVg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AdIhnDyOax65+qaFRl8M3vGAQQkhau/j33YxBoYmhsK7qddkgZEUVVlvq97FJGaCf
	 X0zeuWLre7wEWirY98cMbMDs27ofGW1lBxy/u06mIZChafdp3lVw9UKZqvm8DLeUcc
	 TZ42q9263g773CMxnw2MZjWfIzDt5HrDNaQ3n809nYJmlOuyY9sX/2n4qYqsIrqmzg
	 cNyVaRGYAIkOho4ireRWjQoBioACuvsY2ELYEjguohmEZDm9zuL83fStT0ao6UXxLg
	 uNS+R7DDtlf446saXApWDvE+7Dm1Fy+ruTB4N2JtTdz09UscXaQpjgPGQ3gHlTOpjJ
	 XbD7PUqvHEMRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JmiVOkZMVrqR; Tue, 16 May 2023 23:51:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BB6840BDC;
	Tue, 16 May 2023 23:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BB6840BDC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3414A1BF417
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 23:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0682761377
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 23:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0682761377
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yqvbHDbhM1YU for <intel-wired-lan@osuosl.org>;
 Tue, 16 May 2023 23:51:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C09F61361
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C09F61361
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 23:51:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="350458992"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="350458992"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="1031464427"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="1031464427"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 16 May 2023 16:51:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 16:51:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 16:51:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 16:51:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 16:51:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hDU5wqxaVyeQSgBOcA0UEA7m9BchxovTpvDZX1N1XJxCCL2+4Z66oS/aQsxvAsAVtrdpTR2Q9yd5xm2NYPe/4ImOoFppzOrLHQqNaD1ULXeOPyJAKeR97apx+ELwYBpCLMsbDrd8hyRC+hIB6q8c/IG/J8vN1Y7tnLcXaIarafzIQIsx+cgGtptL6yOc8YamFDRB1DVgTaUfTwDFUarx4XH+N9KEdKTBLvR7GGjbstC9T70WWmizd7h3j4uASxCKA4c7XlBeH93jiVhihm5JA3JFQJiLnDexecxRzV/zP7fnz6O999ICgeSgru+3uP4KPTcSJeXdQmnz1LPWwu1LwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pjfwLmdeyNfhTdBdxLsclsiZJetWgISZ6ghsBeFWRyo=;
 b=OWeKWbIUD2qGeuR8PE7TZ32+4+NzIEWOCmu9Tv0+2nQu4JJlMgrSY9rXDRcRZtRqVnbOdO0Swpj8SLE5Td+YYglTYv5SBQvyJYXh4kEA9sDQ5SjMEfYf8YtGamJwbJ+xY7pW7bRoeKH/vzlzFwt1C4MWVB02xDXFJLCbRupymnCA70nasryFslpQqUodz7tnXAUpLmsJM1H2TljQfb7kYQjeycjgA4DRNU53UY1o/6yXlHJwMH3YIo7F8Cxwtxm2tx1zG/udLszgjhmsU5/5KzvGZzH/vbawzDgYNeV+uex/DVwbMa/j9FNgi1LnmSO009xhdxcVmBHprKg+zff0Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by LV3PR11MB8554.namprd11.prod.outlook.com (2603:10b6:408:1bb::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Tue, 16 May
 2023 23:51:07 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8%7]) with mapi id 15.20.6387.030; Tue, 16 May 2023
 23:51:07 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v1] igc: Remove delay during TX ring configuration
Thread-Index: AQHZh6noqsIuR8LsQ0a0F/5xk1VhMK9dWLGAgAAmsgCAABIggIAAAYIQ
Date: Tue, 16 May 2023 23:51:06 +0000
Message-ID: <SJ1PR11MB6180B070D4202FEC7EC12770B8799@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230516035113.4147-1-muhammad.husaini.zulkifli@intel.com>
 <c952fd10-990f-6d7d-3832-6849bb0b610b@intel.com>
 <SJ1PR11MB6180A106B53FEE33E826A8C5B8799@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <b798411b-1977-e9a9-0a2a-93a7337823f1@intel.com>
In-Reply-To: <b798411b-1977-e9a9-0a2a-93a7337823f1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|LV3PR11MB8554:EE_
x-ms-office365-filtering-correlation-id: 80e95769-4207-4597-69d8-08db56686a51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XakKf1zTHxjil46YiVQ/eLULeYEuV9WgOuT9SqzB3/ZLPl4NsM9xWkxFn2YsUnLLb/12RYsjxi8B35cFzk6vyW1OMrlMS7h1Rjm/U3WCwmy12TX9acBni31yZ7zyN0aU8QV27koBeuxjvrA0ZG8GBOM/igDveAHOSxF7Xq4+LkxwA1528S3AMBERgWT35UJLfp1HJXxN727HtbI8PGtugewvH4taNK0FTgcPDG+AdkjzXlH4CmJiqp8ldt0YNaiGj0emNiaZWXyfxx89wkU0G6Dx/ftoYjn753CwBIyyPHJElYDsGDjlUWd4Ei9mRvFe2n3Yl/0dKCZXsbSVxtSrAV0tjslz2uB0IE0X2Iu9ttWUMxLXTEGXPZOGKh7Ap6y1m75C+e+18cLQfLW0F6ZqbUZwHre06ORNZAMEdjxrrNqpeZN/2E6c/YLTK9rklVbCdrb9c3UJyb0Xn1xfpg8KfcFz6H+RNwLXuyrdyUcaAjW17ojJynyyvIZmNIKkL25JSz3gFuHrRkMf5mxHYcg7NURMy/JOxsqYD7Vyb8GyrFt90ZDCNI9j826aFBsB1dXKZSuf01rQod8KHZPhwSxqVgZOngJFasG05OZcX+alKkY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(366004)(39860400002)(136003)(451199021)(2906002)(4326008)(5660300002)(8936002)(52536014)(64756008)(8676002)(86362001)(41300700001)(66476007)(316002)(66556008)(66946007)(66446008)(7696005)(76116006)(478600001)(54906003)(33656002)(55016003)(71200400001)(110136005)(53546011)(186003)(26005)(6506007)(82960400001)(83380400001)(9686003)(966005)(38070700005)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SldsMmpkRnh0V1dhQmllUVdabDU1OHRrQ3ZPcEt2QldubUZURkw5a29wTHRR?=
 =?utf-8?B?SmdFampRVXNGeEdIN1A4RGtkeXRPaTBoTy9EK1laTmRhY3hJOW1QVFJqS3Rs?=
 =?utf-8?B?Mk13ZkIrU3J5dEU1ZEhLWXFjck9YNFgvbE9sK3UwOTEvekRUM2JvVnhXcUN5?=
 =?utf-8?B?M29JU01pRXRTYWM4dkhTbWVtZDFYV3pia1l3WHJBV2hEOVdlTndDWHlNSlBZ?=
 =?utf-8?B?U1N5aTdROWk4Mm1xQ0NYVWFBZHVMMkxpRytsR0U3eWhJbnM1Rm5xWGtpN2Zv?=
 =?utf-8?B?T2pBSWJxVCtZVUNUSEU3UWloRkgrK2NtUGxpNlQvdEV5bTRUZEROQ3VycHJL?=
 =?utf-8?B?bUZwbnJXVmF4RU9GMUhsV0FPNnhRWWlMQVNhSWdPc3BqSlI5YU16NWdDMExk?=
 =?utf-8?B?R1RoU2tUdFNVSFI5eWRNM0pPR0pPN1lXVzRyZzlmaHMxVHlWZGtSNThMZ0Iz?=
 =?utf-8?B?TDhCK3pEdm9nS2FwZGJQYmVDdVN6Y0FHWXRVdTQ5UXBwVkRuNlVrWGJuU3h0?=
 =?utf-8?B?bnI5WGpkUVdOMGRKY1FHNklqMm9BeXZVdlp2MkF3RS92RUk4Z2VaRFE1Rkc5?=
 =?utf-8?B?VnZFRmtMa3ZRN09sRHozNmNoYm5zcC9DNnJyNStFSDVjaCs4NVcxSTFUUkVB?=
 =?utf-8?B?N2JwNHVUNXNWTWxTTU94S3VKYnQ4UU5WVXZaMUxNbHNyTVg3ck5WR09DcklE?=
 =?utf-8?B?b2l2M1JaYmxLYWFTYlZKeDdsNHd5aXdjdkhyVmtDa3FFWUxEWmROa2svY2xp?=
 =?utf-8?B?UWk3TSs2K2o0cVpITDJJRWt6RExrdG1scTRsME56NlN4MDFibkFPQ0RaWExF?=
 =?utf-8?B?ZGxXSkY3Um5nN3ZPblM5a1plMzFDQjlhSDBrMGpXTUpxTDFGMktTdU4xWFdo?=
 =?utf-8?B?cTFybENOOUk1U2tpR1ZKcEZXNStyeXI4QVRwVUZRM3prRnVSWWx5cUZIZW85?=
 =?utf-8?B?ekxESE10TTE0WTlvcUlmaUN5OW9vTkZjaDNrdElodGViMDFPaFMyMXpNcmZT?=
 =?utf-8?B?R3pFRDg1eGU5M2ZaTGZneDhKaHQvcUYvT1paUStqZndmaGRxUzlhdTZqQkd3?=
 =?utf-8?B?SlJnZ0xvQnNaMlBCYitldC9yYTROc1JOWVpYSnM5UlF2ckxiVGw5RE5IMkhW?=
 =?utf-8?B?cFJ1U2hjT2pkREhXcU01S015YjVvanZvdCt1N3h3NC9iN2x3RUd6bXcybklB?=
 =?utf-8?B?d0l0Q1QxTlh3RkY4MDhnVnZFeXRTWnJrSk5RSlFySzE2UlBybXhUTU1PcFJE?=
 =?utf-8?B?bVNwKzlhdnJhTU5nZWpKUC9wam00NUNrQk11SmxYaCt6WEJTanhQaC9raHFi?=
 =?utf-8?B?d0h3cHFYTkJHcmlZaTlCVmgvRFErVHpINmZBT1hjY1A2Mk1rNGErUG1CMzN0?=
 =?utf-8?B?YmJ5S2JERHBOOWx6bEJUTGhxdm90eklWKzVtTlhsY0gvVDM0ejRITk5xNVFk?=
 =?utf-8?B?VHNyWXh3ZnBLelozc2RwTEUvZ2FYaVRNS0tlU1RWTm8xQm9lM21jalZGNUw5?=
 =?utf-8?B?VEUrV1Vsd3RkeGEySDdacGFNcGZxUFJnRUQxZHo5aXp0Yk9Yb3h1WmtMUmRu?=
 =?utf-8?B?UFFkNnU1dVpDZjNBdHVtdmpFaHVQL3ZiN3FoMDF5R0NKRkF6R2JSSUd3MTNj?=
 =?utf-8?B?NDkybG9rdkg1bUIxS3VYYXdmN0dLbUFSMjJQemZUTnhNZjBFREJmMlVSbzJr?=
 =?utf-8?B?c3Zvemw5OVp3TmtvdStWUUNnVDZqd293K0UwYXZvWXFvNzFMNzFBVHFpNXpS?=
 =?utf-8?B?ZnRBYm1IMXRrZXhRZ1JYZzlIM2dNNjRmeVlWWDZ3REpWYWlLZi9jSVVUWklH?=
 =?utf-8?B?SDJicDRQQUhNcUVHTEtmUFovdjFibXBhcjNPRGppTk50SktCeTBONThwZGg5?=
 =?utf-8?B?RXRHbGpzN3htc0V2bW04WVo2eGwzTUlud3llODZjQXhsL240blNnM2NHUU5R?=
 =?utf-8?B?ZVZqcWMrWmJoZEQ5WVJQeGxReURxSXdZM1I1TkNIU0Q5NHhQdmViNUlRTXp5?=
 =?utf-8?B?MmZUYTM2eHNpQTluUlJEd3NaTFVXU2c5cWJqbUpHMjVuOEc1VmhiZ1N1QWZJ?=
 =?utf-8?B?Q1IxTnZaV1dFaDNOaWppZUhPQzJXQ2d6MUFhMVpwU3JLVUhqUEEvZ2tzREZu?=
 =?utf-8?B?NzdMa1dsSHA2L0VXYUY3dzFUSXRyWStuMFA5SGRNcjJmaldzSTg5a2N1Yndj?=
 =?utf-8?Q?fosfQBTVD5GYfUh9NpE/sRs=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80e95769-4207-4597-69d8-08db56686a51
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2023 23:51:06.2838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nl1VLyJiu3LkKMsvkSvNISbZBqnoLh5OyE2Y3X7H1tN1XCuDEgSQWE159MBP3Y2XhXxPlZ7fVCh2ue/MptWdy775KI13BJWP3vdX37/6qQh1aCOtFGV05n2Q8Dr0ZW79
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8554
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684281070; x=1715817070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pjfwLmdeyNfhTdBdxLsclsiZJetWgISZ6ghsBeFWRyo=;
 b=Iwz9mGCxv72+2IeZcfqq4XyZcLYD5NeqYf/PS75orUb4hoFdb9PgvxOm
 COGNXViSjYeHIVeNQqZKBGhVxBdbqfOVKcX0hPP6kQ8sWtMUqojslOMcG
 T71Fsz/tToBms+ihd3SogvC15lf7hYg7O0S4gZNSU6x0zA0riVry6GxyG
 lUOrRwrQFqjHZm1o58fdbftaZcBDikIPCrpcNYNYH8AJOVn9uUSpJdZwT
 hAQ1z5GyERVdcw+iSgsdqPzFeXq9TpHVuO6RqqF6MJJbBZpMh3bAKgGwT
 OGgX2GWdhchZuEMrzKD5wMq7229/+5aZu3UQEQ7IZNBdY6Pgz8I2hmFr5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Iwz9mGCx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Remove delay during
 TX ring configuration
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


> On 5/16/2023 3:47 PM, Zulkifli, Muhammad Husaini wrote:
> > Hi Tony,
> >
> >> On 5/15/2023 8:51 PM, Muhammad Husaini Zulkifli wrote:
> >>> Remove unnecessary delay during the TX ring configuration.
> >>> It doesn't mentioned about this delay in the Software User Manual.
> >>> It might have been ported from legacy code I210 in the past.
> >>
> >> Can you please provide more info. What's the problem you're fixing?
> >> How is this fixing it? If there's a splat, that would be helpful.
> >
> > There is no splat for this. This will cause more delay ex. link up
> > activity especially during reset adapter task. I do not see any need
> > for this as it does not mentioned in software manual. Plus, during TSN
> > mode GCL scheduling configuration, we want to remove the delay of this
> 10ms for real time activity as well.
> > I got pinged Sasha previously and we agreed to remove this delay.
> 
> Can you please update the commit message with applicable information that
> you mentioned here. This commit message doesn't give enough information
> about the problem or the solution. Description tips[1].

Sure. Will push again.

> 
> >>
> >>> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> >>> Signed-off-by: Muhammad Husaini Zulkifli
> >>> <muhammad.husaini.zulkifli@intel.com>
> 
> [1]
> https://www.kernel.org/doc/html/latest/process/submitting-
> patches.html#describe-your-changes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
