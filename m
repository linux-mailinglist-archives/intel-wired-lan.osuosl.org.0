Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5FD783D11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 11:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A2C781587;
	Tue, 22 Aug 2023 09:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A2C781587
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692697198;
	bh=DbNcl1vkP5YD5azv3WtS6SvYOOAn7utMvte2vexxaxY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=piTaBxzjw/bpNmYQen820U0CQNJ2rXRgYAfgv8r8H3xieSeFlXraBiwdeGgwAbtUv
	 CYIWwj7FbDLcOzDWai6WCBEOq0+cO/BQvVuc6VZTZPMWc94Nd5chQ2b49PQbbb7UAy
	 1WgIK1aTKvmka5SJOndbif57EcAKTtnUSIsMJkU1ahYLjz0Alc4akZsvs+e3/5Ek33
	 eCqQ9kgoND8xLFkwWvz6kzA5LIA8ft+br0Mn+aRVO1yaQoLIT3K+PpyAz5tByghrIM
	 xwHkPyLyBxCJ+ks79UqhYqgKGs4ZuslHwbYfmBblw4j87DAKejEjQNsUrkDDolfnBG
	 W88b+3ISl7fWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uOeErewSTHAN; Tue, 22 Aug 2023 09:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3772781494;
	Tue, 22 Aug 2023 09:39:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3772781494
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7ACFF1BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 09:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51DA3402E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 09:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51DA3402E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELOX7vVFzz8m for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 09:39:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5815C401D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 09:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5815C401D8
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="371258649"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="371258649"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 02:39:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="685982152"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="685982152"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 22 Aug 2023 02:39:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 02:39:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 02:39:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 02:39:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 02:39:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oGzeiz+Q3MhVHA8z+Bbi0KSUIWZeV7ZarFOVTxIA1YRNtZ3Q2Gy4pKwMY1t5T4bKgq7iA5ChxUNg0vGE+8Odn1zGGoEYJ5dtsLVozwe0Bo2EeHzDGPgkMLT6oUILfCGUsXjOPTlL0r+TB9ZxMGtWuJ4nCm2nVQqpkwm1gR8Eb2Va+ZcDczZ4EQBAiMXciMAgS9vysuHYcSgRb8COe8bNomoh/vl0etao86xedM3NVwFXUk3ZcJAbY1L3QeTUzQ7tGLtyarSni5KjyDKpeswWea9jtXohtvf2iUDZqGJK6wtdSO0kJIQyGWPZUk8ii6XckWqdUfnjTVS2pFNz11VXaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XSYej1Hbmbj5A+SsspPjS80qPxYv3GT74WNZnz2XZjc=;
 b=Odea91ALZPziHrVuCTeY2sMDeyjRzrXEm5rwbBuSzNvj5Eqb544+O+cNRkSP38Jwl6r9U6G6to04YgrvpC6Ity3Jp9eC2MUz4I/MmV2EKOxioq9Km9JZn3Nnu4JOQj8fkpM7Kx1Zu+YRnis9Z6ovY0va+VxINdXDfob1lMJVTFPt83huZRg1VKF/4EotKVMbWPiEm8YH0noHpM/VrJ5qGyoYcAFcO+hH7ZyBhOzExMHqZDVsUv1/aP5oygZeBi0Gxp9jsGbjs77WXKQsRWzfwoot0SOedwVRwNRmJX7rIUvorVq9169u63QsBOzwrTkC8BRiohL42sA1sl0Lv9HIuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CH0PR11MB8189.namprd11.prod.outlook.com (2603:10b6:610:18d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 09:39:46 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::5842:74bc:4aaf:a4fb]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::5842:74bc:4aaf:a4fb%7]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 09:39:46 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next] ice: Disable Cage Max Power override
Thread-Index: AQHZ1NEKbpMgCaXCCE6+x/ZDvFpCaq/2Dppw
Date: Tue, 22 Aug 2023 09:39:45 +0000
Message-ID: <MW4PR11MB57768A5C5E5670CFE680C5D7FD1FA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230822073452.28446-1-wojciech.drewek@intel.com>
 <dd439a56-81da-a7ed-84ed-c04afd50b836@intel.com>
In-Reply-To: <dd439a56-81da-a7ed-84ed-c04afd50b836@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|CH0PR11MB8189:EE_
x-ms-office365-filtering-correlation-id: daed2724-8726-4481-6e7d-08dba2f3b881
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +1WSO1yHZcmdBdUlKjfxl5C7pXhcYv3INGu57jjEaq470PjnaOv4oeU+byheL/9P3Y4x21YEv3IUQpJ7XSrvMcwBB10v6wFhPq095b6XanBYtMtvGZzQaUDDgmWY/NcBTuMNnSF0Vloti6l7Lj36VyKmDGSZCtWCD83Xj+4/ahKaH4h4U0TSOj1YoKxGyAHRVUPWOij7GbGpwcLe5R2FsK11vywz+5fUwv5qvGAqpFwbvJuDo9oNwoHkMnXmRhf960S5PIt8LonsanPDo+ysDSh46Q54B0/gCBuG9pbTXRcRms+Io0tDcDY4HIqbhhmS7/LruKH5EEgZkfcaIfhptCnOCAaZdmJnKzLEa4QPaYGx/XCG7uV4u8qvYCyVnPbSbuQo3vcVHreGW/eOU811icWlnI6R3Vi3FrOPX/qRRQhqBwA4/9c6yum08uUwqkLApp4iycf7Iepebc01Lku3vHt7K9RHYmGaShGkB0bRu66lejW9C2OJ+JcqbAVy2OWVHyNqh3klIed6MtFIimuGycVFOM15qs5Z46yDlshXoocoKZCq1JndCkgA3Ua9F21VtB/MkBLjorSfO6FvfRHm5kFnlKHZPwBoNqx6/rPwLzYpbRimSv6Xq+xvK9squFF8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(376002)(136003)(396003)(451199024)(1800799009)(186009)(2906002)(53546011)(38070700005)(38100700002)(6506007)(83380400001)(5660300002)(52536014)(33656002)(26005)(7696005)(86362001)(8676002)(8936002)(4326008)(316002)(9686003)(66946007)(64756008)(66446008)(76116006)(66556008)(66476007)(110136005)(82960400001)(478600001)(122000001)(71200400001)(55016003)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDZKWG9Mb0lNc2x6UGlYQVFXTzIyTE5zSXh6NTI5ZUZxbXZPTStyNGRzN3d6?=
 =?utf-8?B?UzhiR09mTmczek1jTVpIbTVFS2J4djdTcnNPWkZxNFBKblVqQzRrWENtWDZN?=
 =?utf-8?B?OFNZdXZZWk9GYTZWM1pnYXpxQTdtOWNCbmZGWDE2VVlUUTR1dDVoQUpMelR2?=
 =?utf-8?B?dm9sK2tmTEg4K2tXMktwa3R4Rk04ZVF2eFcremVUTHlkdWRPL3dvMlltSGJq?=
 =?utf-8?B?ZlR1TU9lMVFIOEJkcDNYZ2EvZEh4RXhBOFFzWjliRU1QVisyVElXSkFkb0hs?=
 =?utf-8?B?NjhWenpKeFdWZFIzMktTN3FZMEZHMk5xOURrcnFNeEZvNHZFMGl5eGsvcHFs?=
 =?utf-8?B?dGhGa2FGQXQxYzZJUThFTEE3SUxLSldhM0ZTMTBuNVRpNU5aNW5wWTNJeXhI?=
 =?utf-8?B?QWxnZE9QeVBFUTA3REhsanJTa1dJaUdiNlhSZlI2WXBJZ0RhNUZ5aGtaRkF0?=
 =?utf-8?B?UzJETE5oSGRJN0VqWWZaSEFxZExGWFNQSW9MeWdhZFd5Mmd4YldoSkN6VVEw?=
 =?utf-8?B?UStDaUplYUlYVis3dkp1Y0ZaQW42c2ZCWUZ6RFV3UFExZzdZRTlNeERCUTcx?=
 =?utf-8?B?aXFHczJuaytWTEVzak90S2dUbEhwWGRCRzJoQmNpZHVKeHZSMWJtUkdxTnd1?=
 =?utf-8?B?Q2pDMnV6WHdnZUxJLy9HbUVndmFSSENIa3c5czR6Z1F1MG0xT25hNlVuUnl1?=
 =?utf-8?B?WEN4VDZsL09aakFPQjJqbCtXS2VBQ2l1a25nWVl3bDh5My85a29HQ09zMm42?=
 =?utf-8?B?NjdDc2tGZmtHTEZXZk9vdThWeEppNWVHUTFBZFZjdi96Z1VrNzkzSEtLa29E?=
 =?utf-8?B?VWVxOTRZVDZmblFHczZFbFQrbE5FS0o3QVQ1ZDZpOWNNV1VBYnYyYVNNWmxu?=
 =?utf-8?B?WFBrNE4wTng3SVpDV2Zzc2U5dnM1TFViSmt2MXQ0c09aUDNjNFhrTmQ1N3JL?=
 =?utf-8?B?RnFYYklpQ1AxelZvTmxET1Y3b1JKM0pxT2RTNHZndktrOWV6M2NrdGswa2xQ?=
 =?utf-8?B?Z2s1WEJhRGtPbmlWOUtPdzRPdU4yQnEzVS9HQ2JFUmpQYmx4Wi9KVjBmcWc4?=
 =?utf-8?B?MnZGY29QTW1sRURrZGQ0WThiajhWSEhlMERZNkdBYmFjcEJwNCtzWkl2QmZ0?=
 =?utf-8?B?VXBsQVZXTmRjaTJXUEdUVStvNTFVbG9rZlBhclN1VVpqSWNxblhQSzdwMGtk?=
 =?utf-8?B?dHE3d3ZvK3FQZ2cxZEZFODJLcXdGTGJsanFwOXhWTFdRYkE4MkFqcEYwN3A4?=
 =?utf-8?B?QUxUaUtqVHJPUzVwL3BoU3hIS2RVeXJPWUQ0d0VuakE5V2o0azJPWW5iTk9s?=
 =?utf-8?B?WFlTU3c3ZkFWbU9PRkhZQUVLWCtlMHFZWEd0bm0rcUlEVVNyS3Nid0ppTG84?=
 =?utf-8?B?WlpIVnN3bkQ2czRlam9xeHVWME9VRmgzZFEwT1Mva0ZsL2phQTZTQkFhNjhU?=
 =?utf-8?B?K3A4NnR2SDIxeUNCWlU3TzlIUUZVcTVpam8veERXUWVQVFNLSTNKT0krQlY3?=
 =?utf-8?B?eFhJRzVPSU9CaFZSdldpTnhneHphTGtpVUhNeC82cjVsQ0JjQWpTTStUNFl0?=
 =?utf-8?B?dUMrdFZzQVhnQVBJdVN1UlJURzluMEdvOS9oUDlzL3B1TSs0NlJaQ2d6UkVO?=
 =?utf-8?B?Mytjb1laWi9KcWVOZXRnWTZ2SjN3VTBMU1pQR2grZ1RFbENmL1dVZ01rdTZx?=
 =?utf-8?B?WW9wMmRhM1lENVBEMGpveW9MNWo5L0V2S21pbkJUa0QzOTNzSXloWTNDejE2?=
 =?utf-8?B?c0xOYVFsMXlEYjBpeC8rRnM1OEIyalhPdXJyQU5RU2huL1EwTG9uYXZpK0kx?=
 =?utf-8?B?azRJL3Y2OEZyN1h6eHB5ZWVZNjdTMGU3cGQ1Wk16MlBhRUZCSWgrYXlQRkZF?=
 =?utf-8?B?S21IRjZ1YThGWEpFN015WldJazdVblRyeGh4UlVYd0diNlFVbm8yYXEzeVpC?=
 =?utf-8?B?SlorRzVVN09FUUQ1VEZnZVFCcGU1RHNnSTdZUXh5dGMvb3QrYm5ram9lcFhh?=
 =?utf-8?B?c2tmU080a0FEdGpLekxCNUxDc2dzT0swZGs4QUlSOXIrdVROQXU5SENzNXh3?=
 =?utf-8?B?UFZ1K0xCc3Vqc3NVVW9TWVlobGYzeHRtclZvdFpOZU1Cd2pJODY0VTJDbTI3?=
 =?utf-8?Q?7YhN3nrxakbep/Nct9fIqMhu8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daed2724-8726-4481-6e7d-08dba2f3b881
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2023 09:39:45.9239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bn1YxiA7fAhYJ6G03PDQriDtE3wvoElyWrW2dyW1y/hyS1C3kgrwkHJPpXBHm9GXF7DO7Ku+la7lXZ02Y75yymzDZmnTLQuioTDYM52PC9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8189
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692697191; x=1724233191;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XSYej1Hbmbj5A+SsspPjS80qPxYv3GT74WNZnz2XZjc=;
 b=KdxvHRS/ozO+06eV0XxZw1iadBsIChmO0ULJd7RWYA148pUyVA+z/1cd
 Aupwx9JgRz81zNqlOUuQrogFkJ6GuHzQldf1ANU3PcHoloUWeV10Ioh8B
 ZbBb8ryEJlN8ewjCoYhxP3158aQV/o+ptOuipkKx9b4rH1iM3xlTMKWCb
 ot7YAePKsuExf1SKlO7kEXXi90e55oX0i3Y2slOxkLq5qKOWbtP7OoAIj
 vP4ABMBIYa3DD1Vx84jdozGsG6A3x7DWyMgYDMCU2O13prn+NwThlFKt6
 +VuEtA/60q9Z+p9Z8S8ERwfVPiPwCMTK9WnPQ3uDJeiZZegO3goX4rnQV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KdxvHRS/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Disable Cage Max Power
 override
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: wtorek, 22 sierpnia 2023 10:17
> To: Drewek, Wojciech <wojciech.drewek@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next] ice: Disable Cage Max Power override
> 
> On 8/22/23 09:34, Wojciech Drewek wrote:
> > NVM module called "Cage Max Power override" allows to
> > change max power in the cage. This can be achieved
> > using external tools. The responsibility of the ice driver is to
> > go back to the default settings whenever port split is done.
> > This is achieved by clearing Override Enable bit in the
> > NVM module. Override of the max power is disabled so the
> > default value will be used.
> >
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > ---
> >   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  9 +++++
> >   drivers/net/ethernet/intel/ice/ice_devlink.c  | 35 +++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_nvm.c      |  2 +-
> >   drivers/net/ethernet/intel/ice/ice_nvm.h      |  4 +++
> >   4 files changed, 49 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > index ffbe9d3a5d77..a3a49d922650 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > @@ -1569,6 +1569,15 @@ struct ice_aqc_nvm {
> >   	__le32 addr_low;
> >   };
> >
> > +#define ICE_AQC_NVM_CMPO_MOD_ID			0x153
> > +
> > +/* Cage Max Power override NVM module */
> > +struct ice_aqc_nvm_cmpo {
> > +	__le16 length;
> > +#define ICE_AQC_NVM_CMPO_ENABLE	BIT(8)
> > +	__le16 cages_cfg[8];
> 
> [1] here
> 
> > +};
> > +
> >   #define ICE_AQC_NVM_START_POINT			0
> >
> >   /* NVM Checksum Command (direct, 0x0706) */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> > index 80dc5445b50d..e9300df9ef40 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> > @@ -591,6 +591,36 @@ static void ice_devlink_port_options_print(struct ice_pf *pf)
> >   	kfree(options);
> >   }
> >
> > +#define ICE_NUM_OF_CAGES 8
> 
> perhaps move this define to ice_adminq_cmd.h to benefit from it in
> struct definition just few lines above [1]

Good point

> > +
> > +/**
> > + * ice_devlink_aq_clear_cmpo - clear Cage Max Power override
> > + * @hw: pointer to the HW struct
> > + *
> > + * Read Cage Max Power override NVM module, clear override
> > + * enable bit for each of the cages. Write the settings back to
> > + * the NVM.
> 
> Read+clear+write is "how" or algorithm here, but doc should just stick
> to "what" most of the time. So I would just:
> "Clear Cage Max Power override enable bit for each of the cages".
> 
> "how" part could be inside the function, just above "read" call.

I'll rethink that.

> 
> > + */
> > +static int
> > +ice_devlink_aq_clear_cmpo(struct ice_hw *hw)
> > +{
> > +	struct ice_aqc_nvm_cmpo data;
> > +	int ret, i;
> > +
> > +	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 0, sizeof(data),
> > +			      &data, true, false, NULL);
> > +	if (ret)
> > +		return ret;
> > +
> > +	for (i = 0; i < ICE_NUM_OF_CAGES; i++)
> > +		data.cages_cfg[i] &= ~cpu_to_le16(ICE_AQC_NVM_CMPO_ENABLE);
> > +
> > +	/* Do not update the length word since it is not permitted */
> > +	return ice_aq_update_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 2,
> > +				 sizeof(data.cages_cfg), data.cages_cfg,
> > +				 false, 0, NULL);
> > +}
> > +
> >   /**
> >    * ice_devlink_aq_set_port_option - Send set port option admin queue command
> >    * @pf: the PF to print split port options
> > @@ -623,6 +653,11 @@ ice_devlink_aq_set_port_option(struct ice_pf *pf, u8 option_idx,
> >   		return -EIO;
> >   	}
> >
> > +	status = ice_devlink_aq_clear_cmpo(&pf->hw);
> > +	if (status)
> > +		dev_dbg(dev, "Failed to clear Cage Max Power override, err %d aq_err %d\n",
> > +			status, pf->hw.adminq.sq_last_status);
> > +
> >   	status = ice_nvm_write_activate(&pf->hw, ICE_AQC_NVM_ACTIV_REQ_EMPR, NULL);
> >   	if (status) {
> >   		dev_dbg(dev, "ice_nvm_write_activate failed, err %d aq_err %d\n",
> > diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> > index f6f52a248066..745f2459943f 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> > @@ -18,7 +18,7 @@
> >    *
> >    * Read the NVM using the admin queue commands (0x0701)
> >    */
> > -static int
> > +int
> >   ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
> >   		void *data, bool last_command, bool read_shadow_ram,
> >   		struct ice_sq_cd *cd)
> > diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
> > index 774c2317967d..90f36e19e06b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
> > @@ -15,6 +15,10 @@ struct ice_orom_civd_info {
> >   int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
> >   void ice_release_nvm(struct ice_hw *hw);
> >   int
> > +ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
> > +		void *data, bool last_command, bool read_shadow_ram,
> > +		struct ice_sq_cd *cd);
> > +int
> >   ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
> >   		  bool read_shadow_ram);
> >   int

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
