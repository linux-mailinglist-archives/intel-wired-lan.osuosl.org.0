Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EB57536E8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 11:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB4A161419;
	Fri, 14 Jul 2023 09:45:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB4A161419
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689327959;
	bh=uJZZlOEJfQQYXf2sEy3cnGMj4IJDibjbhq22rgeGWd0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xB+Pey85pNjrz6h4EI1LLFz7cKAIL0jiXrYLc5mnYhIFY0CVJEEzFyaNR4mIlg7EG
	 DnirZGYOARI4x7N2Iw0GVuYj0c3VNpzRadlP4BirU3i71N0K4X+OIaRz1TH//ms6ku
	 migrgDU5EjTI3YAy0l/qSpMml/ViYHf7MdX9MYHp2MqnI6d6ZgBsttB7J9QQWrhMOk
	 fc+yLWX766MII6j07Q1/oz6gFTwog3fkMaF5XqIu05eKEaIr5FO8DnWpLCOx0zUO5C
	 H0rRvq/G/cD1NAPd61FCDPSbqY8m8ABWYKTdoUSkQJ2GsL8dx8iCYNx9bOmqu7Ojyy
	 Atj+9D8px9qaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 17n5XTdrnJdz; Fri, 14 Jul 2023 09:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B47FE61411;
	Fri, 14 Jul 2023 09:45:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B47FE61411
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAE621BF97C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 09:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF0DB6140A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 09:45:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF0DB6140A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBv3xu3ShCy7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jul 2023 09:45:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D155A61408
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D155A61408
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 09:45:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="368985065"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="368985065"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 02:45:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="751977156"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="751977156"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 14 Jul 2023 02:45:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 14 Jul 2023 02:45:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 14 Jul 2023 02:45:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 14 Jul 2023 02:45:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 14 Jul 2023 02:45:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=con5PW010m//kDdQnhxkiIi/H658WLfhvEzef97OVjgzs/8D/FcXzYhTmmv98UQOu2f/LKLX/2ScpHUtEA/BXcAgSGbwLIWb+cuHN77xPE1sZB+DLmfpgjYr6LcCnkQ/FtE6RBQ8S4K+7BmpDaqLjiSjXfnkePV6KH2Zs9+DY1IzLVHaBdka49pQ3D7LYxlV3G/4lYkn0p3TdTkao9OQTVCMupFMoA7k6KyRM+7uaZEUNFBcCWUJy9yX81NXvbw+mbNqEk2DVasXQGMKrtPqMNH9/UhTeq4BOzmYwBu0n3brlZFtIBMzJyJ/zX6XfS1hwD/ZyNx8rHJQ/lxF7BJRyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=reC/IsUV0onI1LocFfjlYjEniWpwVvnnMy+GXDUHhWE=;
 b=GAixPe1UObeiRhgCcp9wcCGWhIRRlVMIwLXj0L9xhvxaGjFnNLCEZYyVkxH8GLFzCL2oSFYhl6VNIMkMqS/s3yP3lV3HOv5L1tQkLTYae2y9sFCCYPU8t4HYN0NiTNDFDrG6EEQZIzEXF1JrcKaXLRhPirfFExqeJCGY98UrW8eeQrGXjZtOJLBZu/s6OK2d9yB/fKAr8O5HdNQ+wKb5AkQcELP58RULVjIoqwGBa2oLKH0LHgK5PmcxvLA265LLdLXav+9IsROesaQ7R2USDrSAAWo06NbnsNoY+dTBxhbp70M5/2urQlB3XUBx35gZ7JKHIJQjHPCriv+Y1dlk7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH8PR11MB7024.namprd11.prod.outlook.com (2603:10b6:510:220::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27; Fri, 14 Jul
 2023 09:45:39 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::6cba:7ffb:4681:a38b]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::6cba:7ffb:4681:a38b%2]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 09:45:39 +0000
Message-ID: <6e605023-1560-0736-4dd6-04e1ee526a71@intel.com>
Date: Fri, 14 Jul 2023 11:45:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20230712222936.1048751-1-jacob.e.keller@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230712222936.1048751-1-jacob.e.keller@intel.com>
X-ClientProxiedBy: FR0P281CA0072.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::9) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH8PR11MB7024:EE_
X-MS-Office365-Filtering-Correlation-Id: c68ebc27-228f-4aec-ef3b-08db844f14d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BwRM6PAoIUB5gj13th2jLDJcj9YxuC6pSl94CyCf89dMtfevGsOa0R5stA4eu1dMw5Zf0W/Hpc7E4JNMH+rX2m84eOZg2qVdvvHWGyoBJHtW9vXDToM7neC5T0lkHYDFsL+ewHlxpLLDUSGXmzVs6EehRq7G35VVivhuQHdk9Kx2BG0hdym73iOFQXpkF7M+Quca7lxGCfg4VNa7RbFU09E2DBkn4cLJPG8FDSwvtQqmcySaZdCdlRuS7+NROrc4Gl2Lo7EHgM3hLQC4XkmfIsqmBg9sIn1d4q8FUGpM4eI05+bBwfO/IZRE867XCRIHsbJfxyOLeeAFwykd0LH5U8M/Rk0M5vZR2CTuehJuNKYQffCvZPfskY4p7or0qWVnEhjLFrpbqqxMDWk7BFXtsxkuClpiYYXdHLYEGTCM1KSbXFs/wYgg8KykiKib7/bqHipr+n5tSha854V6j4qLvZHu64I2fl3QtVjl/Gz6zEH5it2s7SLzTLp5lyNjYtzQlFEV5QYq81jGT6T1qKzH3A6vcSl7IghTi7iwYFDkXTApcC3sQNWYPr5VvyvdM9tKlzNtE4ORZcich5nbIzrqCEETVqOGk42Y68iezWGe0MsABALbdTW+qOD14oeMbgX7daoEWVQ73SL64Co8n1Fgpw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(376002)(396003)(346002)(451199021)(6666004)(6486002)(478600001)(110136005)(186003)(53546011)(6506007)(26005)(6512007)(2906002)(41300700001)(316002)(66556008)(6636002)(4326008)(66476007)(5660300002)(8676002)(8936002)(38100700002)(66946007)(82960400001)(86362001)(31696002)(36756003)(2616005)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHdLMkh0TnVSaGNPd0R6S0xRRjdocjRSeE5PRjFJbjdJN002RG1WcDZJUkFM?=
 =?utf-8?B?N2l3bWdvVm1MUE5UV3hKNkQrbVFNclJhZGQ5T3VzRDJDRTFsbTFuUFZzTURs?=
 =?utf-8?B?ZXlLZnc3eHhRUkV4L2wxeFlMWTRMeWpPd1h2Smo1em9NNDdCMnd5ZjBSOFVG?=
 =?utf-8?B?NFhDbEtLNTdyWDZibDh5M2VGbUNlcTVTRVhKaW5lMTUyNVZ0Q2d1dkIxcUN2?=
 =?utf-8?B?S2FLbktHQ2ZmUW9xdXBRTEU5M2p0c2VwUEVZdzBQVjd0RzBOMjl2TGJUOTd3?=
 =?utf-8?B?M0t2QnRqVHcrblVqNUR6TXhYRkZlT1BJTHZkUGRzZDVJdzBVcEdXeGo2N1RX?=
 =?utf-8?B?SGM1YXFvZ3pieVRyMXVNM2UrdlR2SHBHVGY0ZFBienArOWRBNXJPMWVGbG9Q?=
 =?utf-8?B?N2F6UlhET0RIS0JBS1VSYXJFMFgxaytOMnBNVWxrM3VpYW1DVmdjck05Y2Iz?=
 =?utf-8?B?VmlTZGxtVzVKSm4zcjVsOGJuNlk4Nk4vaXBXM0Q5SU1MRGUrT2FyWlhuUVJ2?=
 =?utf-8?B?VGpsWHduaWE3eWNPVFhSMHlSZUVMamcybDJ0RlgybjN1a2h4enk4d1BraWFY?=
 =?utf-8?B?elduM3BZVW5yWjRib2pXNUl4R1lUdllIcm5ReEdLU3dpOVh3S1FDZDhjUmxM?=
 =?utf-8?B?RUFXUUpBcHkvRzNnQzJmR3FsRUd2S0lyVnpLS3lHVVM1SHVGRG5pVlNGMjZl?=
 =?utf-8?B?M1F4d2k5MkEwM0xHcUM1bi9rSHIySno4bUEyS2NhVHg0bzlha21RVHE2eDhO?=
 =?utf-8?B?bW10Mm56M2p0dzdGRndaODRsU1BFclRybDBMdUpaZnU0cGJxY3ZwSEx4a2Ja?=
 =?utf-8?B?QVF1U29HMFlwVVZTQkUvMkgwdnBGb2xrSkhFa2xFWFBqVGZxM25HelFIK1lC?=
 =?utf-8?B?THl4OHFLNTBreU0vMm9zakQ1Q1V5Nnd6M3RUaWRBWEw0TldCOWgzMWdlOXZR?=
 =?utf-8?B?RG4vbllEbzdtOG8wVkp2NmJYV0I2Q0YvampoMXcycGxsTXM4cDVkZm10dHJD?=
 =?utf-8?B?N0Mrc050YUVOM0EzeHdmZkJyckthNU9iVmhLL2pGSW9vaCtjTVJobDFzWXk2?=
 =?utf-8?B?aU9GYTk4d1Yxa2d0M3JXOE9uZ2UybVlJZ1BnTTEzaFg0S0Y3T3E5VVVvY3FY?=
 =?utf-8?B?enl3Ymt2aVpqVThpMGY0eVM3RnF3M0g0cmVrc0R1MWczZkJveGdwWnJEclZ3?=
 =?utf-8?B?bkxSWXRRMVFRcWVtUjB5a0hVSStCaWVJMXFQVGN2U0NCVktmdEx2ZDRnUmY2?=
 =?utf-8?B?eG1qTmsxZFBaRGhzYmN3dnkzd0dhK0pyZ21VTE1rbEJXZ2FwTEgvQVlYa0VH?=
 =?utf-8?B?NU5nMFJWWlBvbkVLTUVNeTduUUh3UkxuTkUwTXUyYlNuam15WUdjeThTbUkr?=
 =?utf-8?B?V1d0cjd5dWRlWmZHZHEyL2Z0Nk03RnlqT1pWYUNRcEMzZTJSbUI0bW51aUVj?=
 =?utf-8?B?YlBLeUpwSHJpS1JmU215YVBXVkhuQkgraGl3Z29tSjVVQXkzOHN6amxxaThw?=
 =?utf-8?B?b1NlTVl0c3JtZXdjMFd1Q3RQUHVEczEwdWhmQlI2M1hyRlhjY0dGbnRFVVI0?=
 =?utf-8?B?dlJFZnNacENUSlB0U3JTMUNTbW1UMVJiMklXNGZ1bGdGV21jUkJhenJWVnlB?=
 =?utf-8?B?SWcrV3RtOFFtQWw5RjNFU05SNkpOZXhKTjd3TVFjSzJ4VS9SaVVwdnhJRWp5?=
 =?utf-8?B?a2hrcUhkZ1FBbkhrWndaQmtRU0ZldU1VUTZTanhNdUZ4TjdjOUN2TnJRT3o1?=
 =?utf-8?B?WkN2Z2p3YzlOQzBvTlhaQlVPeGlJaWRrcGVhUGU1VzZCNU5hWGk3V3JrdUk1?=
 =?utf-8?B?bjlEejliNGhyWTdrV3dGbWltckN2UWhTbGxpaUdmR2Z5TjBOdmZnL3MyV3Rw?=
 =?utf-8?B?b0pUd25iMjZsSEtnMnk2ckZjRWw4WFQ5VEUyelk4OGN2dlduckdEMGJTd0sr?=
 =?utf-8?B?YzBDbnJaTmVrT1RaY05vQlo4TzEzNWh4eVJldVdsM0x4Z0NMam5qYXlOSjdu?=
 =?utf-8?B?S3Zaai9rZGxTU0s1OWJwUFhHUG5mazV5dDdqNHY1MlJnMHlteFRnRUI2TWFZ?=
 =?utf-8?B?UjhvQVorMUtNWFgyMmh3SlBmR2E5RnJiQ01FUXlQVVFTb09IWjR4UDBjMFFG?=
 =?utf-8?B?cTVSRWlHUXhVa3doS2svWUpIdTMwSUozOWZ2KzBMeUI4REFTdzBEMWhNcHVH?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c68ebc27-228f-4aec-ef3b-08db844f14d0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2023 09:45:39.2505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UHgDtzJIbl6SXupDMxIOF5HXWVGKfBe5twGrYRBYDxiF6t8GylyWnyjFKmii28w2pHNBSiX1Fy1EFkOC58psG7l8n7kiny0jNeEbqxj7TEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7024
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689327951; x=1720863951;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cpjr8RMEEB365NhhwuB6D5PigwNvYjQrdNkGD6zzQms=;
 b=oKwLjgk0j+plFYG6FE9IHWBuTYfPDig0w3KP2bSeZa1OPR/YzZYJZ0uv
 wPLJ+s/TZlif6f6LzT6wFzbbXmwezjR6M0XypriFDFClfTj6eZBZRxlNS
 ZhvrvNOYoy9Ks+30eLc0GLisBSfJt8pOq104Z1MN2/Y5qvV3/32IA0khN
 hCHYhLuGfaTZ1sKYmKAq5jqtR/PImT/+ST5ZZApYgIkKO7kWHKA6imItJ
 RhbpBcNCodcPsYX+tGL5z+IOyZZxSB09qwQHZ9jd84pqB8OZZ1hIEMBla
 yN+9mDGyVb+YvkMxD1IOuYp68crErIgruip1cgiTsVTDkIcGd7mlwHokB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oKwLjgk0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: replace
 ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/13/23 00:29, Jacob Keller wrote:
> The ice_vf_create_vsi() function and its VF ops helper introduced by commit
> a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi") are used
> during an individual VF reset to re-create the VSI. This was done in order
> to ensure that the VSI gets properly reconfigured within the hardware.
> 
> This is somewhat heavy handed as we completely release the VSI memory and
> structure, and then create a new VSI. This can also potentially force a
> change of the VSI index as we will re-use the first open slot in the VSI
> array which may not be the same.
> 
> As part of implementing devlink reload, commit 6624e780a577 ("ice: split
> ice_vsi_setup into smaller functions") split VSI setup into smaller
> functions, introducing both ice_vsi_cfg() and ice_vsi_decfg() which can be
> used to configure or deconfigure an existing software VSI structure.
> 
> Instead of completely removing the VSI and adding a new one with the
> .create_vsi() VF operation, simply perform a reconfiguration of the VSI to
> configure its new parameters.
> 
> Call ice_vsi_decfg() to remove current VSI configuration data. Call
> ice_vsi_cfg() to reconfigure the VSI with all new configuration to match
> the modified VF configuration data.
> 
> This *does not* remove the VSI from the hardware tables, as that only
> happens if the VSI is actually fully removed via the ice_free_vsi()
> function. ice_vsi_decfg() only deconfigures but does not remove the VSI
> from the switch tables completely.
> 
> This new operation does not re-create the VSI, so rename it to
> ice_vf_reconfig_vsi().
> 
> The new approach can safely share the exact same flow for both SR-IOV VFs
> as well as the Scalable IOV VFs being worked on. This uses less code, is a
> better abstraction, and is less invasive than the previous remove and
> re-add cycle.
> 
> Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v2:
> * Switch to ICE_VSI_FLAG_NO_INIT to avoid leaking the VSI in firwmare
> * Remove now unnecessary update of the VSI number
> 
> Thanks to Michal for pointing this out and suggesting the fix. I've added
> him as Co-developed-by for that reason.
> 
>   drivers/net/ethernet/intel/ice/ice_sriov.c  | 19 --------------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c | 28 +++++++++++++--------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 -
>   3 files changed, 18 insertions(+), 30 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
