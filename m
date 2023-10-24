Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD557D511A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 15:12:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 614668487D;
	Tue, 24 Oct 2023 13:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 614668487D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698153120;
	bh=GimHShkCD+Z7CSrVQaa8Wu52kR62cJZKr7R6QZXpnk0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WvItQS6KCGEmi5TL+BVtKBRd9SqXPTttoRp55MH1D6eDY+Lq+YDdOhKpQG89kGwU3
	 CWHIrr4nZWy27THghTjkgmDVU8aegxd542gMhEXOCVhuQ/OLSYEf2p/1JKrWBaNCna
	 pNl5T2vP9Jv4sPPkqYodsOeKkuG7x0nilCHoMn7Ce8qkArIvd662AdQgILIrrbzOLq
	 yQeDHVBl2oEcjjbBVXspj8XkbP3lmZ+DC8ywzw4Tf5XTz39T49HmXFk4h9o1ZoWPYh
	 13HpiNxAXCh/+HHIAx9lAvdk8cMvzUTnUvv3zVmlBcC3xylebxrTrd0eE1vy1uvzCg
	 6ji+TmJvfxqSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8H6swD3C2hKJ; Tue, 24 Oct 2023 13:11:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B9F884475;
	Tue, 24 Oct 2023 13:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B9F884475
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 006AE1BF407
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:11:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C930C42EF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C930C42EF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qD85SScYhiqG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 13:11:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5768E4011B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5768E4011B
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="389901957"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="389901957"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:11:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="751998224"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="751998224"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 06:11:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 06:11:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 06:11:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 06:11:14 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 06:11:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AbmDElkvMH05bAsb86bTRfIPs2knsMlpiISMAvD9zN78YdohY9taCa6KXJwOXkMoITe2pnoHQ5gfI7jXM2rsVQntIny/eTl4mmsGUHSXdLhTCTY+eJfmsWQ+mvIV6kLMhHc+k0/LofsQtaW2d0Bfj8UBLjy1uN93RKjzGDz3qt7fDA810FOLgJVqvdcmdFWO/Hp+qq7i3NXjrmSqJ0G4df7VtSYqTzoZgHx4WUhaGJtgXHIqXG5rFUvc5SrUBtgXwH/Lh49kx6GgmKC1/issQy5k09VwI+efq78W+L5YNiuaf1WkvAxWjql7MtYZ/fw1wsLXwk/BN6KGc0jgJeKaLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oDq0rmibhifud9pJjCg1S5BNWokkKWSh3dcz+eZs0jw=;
 b=oY//+kXxwlZLZBFLqYE6lc0CeKzPBuhV0OrC9j2Fr3p+LAjxp3rAMJ0eE6Wl7mDxT8gBJJXct02qF292yGVz0gB5w2zLK0gYb1E6quGzF3CNOCehu/TD4UFERIWmy+vI9ta82AuH0TmZ8fr8WFjhP4E2M8zCUtxmbMXNLA9l8/uyqrhKHQvYL2Cn2Fy9Jwco+UHS+hoYVRwnce6ds+fZY4Dxkucyk38aGRycWeCL0HP+c6Vl/eIeDanUgr+YGrrvuxNQj/0stzLp0+OXOhP/rbMp1LaLFbPpRXpmQLdCzLoE8HRPcZHmHe9mO4TkHSN4K4Fxp3OqO89lsiJQKmRHKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 13:11:11 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::71a7:70c4:9046:9b8a]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::71a7:70c4:9046:9b8a%4]) with mapi id 15.20.6907.032; Tue, 24 Oct 2023
 13:11:11 +0000
Message-ID: <cdcd6b97-1138-4cd7-854f-b3faa1f475f8@intel.com>
Date: Tue, 24 Oct 2023 15:11:05 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231023162928.245583-1-ivecera@redhat.com>
 <20231023162928.245583-3-ivecera@redhat.com>
 <2aba9a2d-9dfd-49f2-bfec-1ff563a5f017@intel.com>
 <d71f2fa2-e5b7-4221-bbd0-86285b6c1c33@redhat.com>
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <d71f2fa2-e5b7-4221-bbd0-86285b6c1c33@redhat.com>
X-ClientProxiedBy: WA1P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::25) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|PH0PR11MB7562:EE_
X-MS-Office365-Filtering-Correlation-Id: 731349e1-1e09-4689-edcc-08dbd492b1b2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RwRPAlEsNOrf2vBwxBv0KjiPhGADwdfo62mxh7u8AVTfJL+dkmFz6+H742iGFPBO2YzmOLmXCEdjizq+IHTZi7oP7AUsuFre8g+RSjNFHFKI6xkq2RhMKZPqhyFt4xL3IZdWgyvDoIa5T6S22/ols84vUV3ap7YO7Y/wlUJ/e5kWzQ9yyQhMu5Goe8cGJMWwhOhjKmjc2aaEIzsbEAiAcbU5SoGd0n26plI+AjtzOIwZvQI+0RW65IdYci3PKdvICseiSLwjNjolh06mFK5DsIpQlPaE3/4uU89/H1hKsgLkIAVVxEXqeqAidkdS1P8ZwtP3851SJzNrtuoEmTb2E8vkKPKeNVdDFW9Thv086b+5XkauOWHaeVN7LiY5oIvyK3YrpojqsrAP7ZMqQ2era07WvMfiIHmIB6oOvacPrk5bNrHgG0ha7KKG/8S+a96zAXf354EY4BIJxEc1g9civWa8t++m6AnQybmbunzpOh3TwHlZ0vQyWCfgWg7xbZIUKCDHL11nWzLSasHxn2iHJg2AYPbe/IumFowISRctEeFtaPsYLVPij4Ut42JlqKtBJK5pRYcr5JXf5PERipThef+dJgszgFT4C/do4QR2CHuTZzmTLJN7VVxVqjMZcmHq62OJJMzrUMVzAHBQYFuieg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(83380400001)(31686004)(44832011)(8936002)(4326008)(2906002)(2616005)(36756003)(26005)(41300700001)(478600001)(6486002)(53546011)(38100700002)(8676002)(31696002)(86362001)(82960400001)(54906003)(6512007)(66476007)(5660300002)(6666004)(6506007)(316002)(66556008)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anZEb2ZaSGNIbGZhVUNpMnJ3aC93ckthSHIxM2JBUDBLNnpHYklnb0EzUm90?=
 =?utf-8?B?aDZHcm1Tc1JwZ25WUEVUT1VlSzdyZE1nTkpUT3RXMldmY3JRK3ZUMnk3VjEx?=
 =?utf-8?B?VHdyUTdGOVAvdy9aQUtUY3FnanBJRHQ3YTNGU2pGdkh3dlhuaGhsQU9odTdx?=
 =?utf-8?B?NCthRzJXQ1BpM3FBVlBBWm03TmVtVmNMSmZ2d09wL1llNE9FaGF2bUlNTHRx?=
 =?utf-8?B?ejNQMGhEWHNuTGpab2pLa0JNSU1WcDFLVUtFNWVhbGN6NHBZWlU0WmVzNXhz?=
 =?utf-8?B?WEhXaUZMdDZsZ2FDUys1VnpROWYvT2Y0cGsyL1grd3pJYUx0ajNuSytOYS93?=
 =?utf-8?B?L1RBSmlZZThuY1NETWp4RXlvdk9VRFBsb25kZ21QWVgyR2ozY2hxdjY1TVVZ?=
 =?utf-8?B?R1VYVUdCT3o5cHp4NG8yb040UHRmUG4xNkdkNS9xcnRYSzNad1pNdTk0VERS?=
 =?utf-8?B?Q1pIUWh0Wm0vM0ZaZ0w3WDFrb01zRXp2L1ZxaWl2VGltZnM3b1hucmVIS0Zi?=
 =?utf-8?B?TGh1cXg4cVIrQnZLaDBwQzZhaVZsZXVrcitLdzlmZFBvOS9QaWVDWVp2S0NL?=
 =?utf-8?B?WjdTcmhPUkZYdm1qeitxNHNtSU12YUlUVkxka3R1emJJaDB1L1kwRElXcHBR?=
 =?utf-8?B?b29NaUg0VEtlMDQxQVVUODJjeFlQRTRsUEFRZkFBajZTeDNnMFVJdFNEZHF3?=
 =?utf-8?B?WWxmMm1YM1QxNldrQVFJTktYWFdZYU8wNTBDM1o5ZDhFa0Q0clVJUkR3SFpv?=
 =?utf-8?B?Zk43L3ljQkNkT2t0Y3NiTmZhL1RIN2FoTmErZVowNGhGQWlhSHZpMDN2T2FX?=
 =?utf-8?B?Z1lxUkUyekNGdjVidkp0a3ZsNGVjMlcxWHFPRk5SZS94QXcxenM5dGJtOHd6?=
 =?utf-8?B?NFZOalRyTE8rM1AyRTAvMzV6T2lWd0JkUlkwMGcrbEw1SDdNV2lOU0grcEdo?=
 =?utf-8?B?ZVh5NkF0MjJNZ1VPWVpTQkNEa0o0TzUvZnk1aWk2SE04dEdWOTlEWi8yS2RZ?=
 =?utf-8?B?RXE0YTZrQjN2eERlSFRHOFplTDd3TE9SdkN1c3ZocGFFeExRM1RlaCtUYXFu?=
 =?utf-8?B?a3hBSzNWeGFiamk1c0U5VWlDZ2hzUlZYdnN6TFhIelhNV3JQYzNCaHh4QUZu?=
 =?utf-8?B?bUdlNEhhOFZVMm4yczloTENhWldKUXNjZFVBWWhtM0N1aEFVM0lrMC9VeXpl?=
 =?utf-8?B?Tmtid1JMdzM2VjdpenppMXRKNjkvVngreHk0NjFxM0FjNnVsbU5zbSsrT29r?=
 =?utf-8?B?L3BFQStsMi9xckkxVkpNSnBoSEZ6d1hOTFp4QjRTbjNpWVFPYjh4eFFiSnJm?=
 =?utf-8?B?dlpqZWVIckNZWUw1Q0pva3hrUU94K05Fd1ZDNXlOQ0NWUEkrUTFrWG1iUWJj?=
 =?utf-8?B?QVZnQ3ZHOUxOQW10WlZFcFZ1Y2VPdnpaZHFFcVRnTnJobWZERkh3VnVpK0tJ?=
 =?utf-8?B?bEJQdGxBWW9Idkw0TnpJSTJaOUdPY3czUDZPT002OUNsUmhZT1AvUFNXR1Rt?=
 =?utf-8?B?emhyRlRjTHFiQXA2Nm5ENzBaREw5SzlzQW5oVko2L0xoeS9YUU9VVVN5R1cz?=
 =?utf-8?B?aTFSRHJ3WUJpcytpUWErdnRIbDRCeUNYR013RzYvcUNFVzM2TkY5eCsrSXoy?=
 =?utf-8?B?K1FXQVJqZUd6aHpzemhueFYyd0xsY1BzYXF1S3hGQVpaM2RyRVE1RjVRUmha?=
 =?utf-8?B?YXdJY2ptODFVNGxTUk0ySkxnMVBNcG1vU0xOcnlSbm9iMDRxdktoK2dTZ1BT?=
 =?utf-8?B?T1BLYVh2cmxER3dtMFpHbm1RMU1KeFpieXNIamt5c3QrSXliM2JyWHp5cDlu?=
 =?utf-8?B?RDI4bjlEbWlnQURtUkN0R3pkTXVXMElTZmFMWUxFOGFnSExsYU5jQ2lCbi80?=
 =?utf-8?B?MklwMHA4d0JxQUxEdU54RHpiTTNURlBESFIrWVpQd2RKMVlnMkMrM3l4b0g2?=
 =?utf-8?B?cnQ0aVZKc21yYU5QdU1FUG1ySGJiNWxkZWlwMkVKa1ZuYzd5YWtxZTBTNFZQ?=
 =?utf-8?B?OWFLWUZqMTlmUXdRNlZLWnVHRlNGb1pHcmFPWlc3Y2NnM2dHRmI0cWVWSGFL?=
 =?utf-8?B?NXo2R3kvQk5WY1JNeTdDbEN0bkF3M1Bvc3pCRWUxNWU3ZmRMTFNwVDBGYTl3?=
 =?utf-8?B?Qzk1SnllR0w2T05OS1VIUmNubG1OQXUrM2dQUlk3MWtoVmNPUUZrcVJ6a0Zi?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 731349e1-1e09-4689-edcc-08dbd492b1b2
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 13:11:11.7375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PIs85IcYeCkvXp5ATfK1r23Dw+Kw911M9wEHY9BqoLhV7eAqIsCPQ5E2s92yR5gLUPnkPpCbVUSgxBzK1IB6SVfJoG4PDIAYD23pL+FMzJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698153110; x=1729689110;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hpdpp5mYC5WNPDwH2YRlg1YnFy/j/+krlqDkb44b698=;
 b=cqHax+kcOIA0risYxD2IR440f8q4Es5QkxB3uLn2NT+aJjbQiBBC/I78
 jqCAZLIJos+EEvc9hs2I6tH9fa267r0/6D+7wJopMu3Hdubgp4zYxWRbc
 ASdG7Kfb6A3aTc9KDH8F/QrjRgPcotR0H4wRFkfNgomW/CHMNg+qvvMzy
 mKZMOXG0Hecwd17L7/GZklBaDNT+bVGuv63StUJiI32k5+Q/GBWV1LjQB
 NwieaS3AwXRkLqHek7qu+Kpmk2PDmavjFRRaCaBz7bZsW0KB4vkk5I//n
 x21p8Wgt4Kb1w5mEFn5N7YnCGqIo+ojsngLmRJVHcvga67dX6Z/TImRFM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cqHax+kc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] i40e: Add other helpers
 to check version of running firmware and AQ API
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyNC4xMC4yMDIzIDE1OjAxLCBJdmFuIFZlY2VyYSB3cm90ZToKPiAKPiAKPiBPbiAyNC4g
MTAuIDIzIDEyOjI0LCBXb2pjaWVjaCBEcmV3ZWsgd3JvdGU6Cj4+IE9uIDIzLjEwLjIwMjMgMTg6
MjksIEl2YW4gVmVjZXJhIHdyb3RlOgo+Pj4gQWRkIGFub3RoZXIgaGVscGVyIGZ1bmN0aW9ucyB0
aGF0IHdpbGwgYmUgdXNlZCBieSBzdWJzZXF1ZW50Cj4+PiBwYXRjaCB0byByZWZhY3RvciBleGlz
dGluZyBvcGVuLWNvZGVkIGNoZWNrcyB3aGV0aGVyIHRoZSB2ZXJzaW9uCj4+PiBvZiBydW5uaW5n
IGZpcm13YXJlIGFuZCBBZG1pblEgQVBJIGlzIHJlY2VudCBlbm91Z2ggdG8gcHJvdmlkZQo+Pj4g
Y2VydGFpbiBjYXBhYmlsaXRpZXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSXZhbiBWZWNlcmE8
aXZlY2VyYUByZWRoYXQuY29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfdHlwZS5oIHwgNTQgKysrKysrKysrKysrKysrKysrKysrCj4+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHlwZS5oIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R5cGUuaAo+Pj4gaW5kZXggMDUwZDQ3OWFlZWQzLi5iYjYy
YzE0YWEzZDQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfdHlwZS5oCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfdHlwZS5oCj4+PiBAQCAtNjA4LDYgKzYwOCw2MCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTQw
ZV9pc19hcV9hcGlfdmVyX2dlKHN0cnVjdCBpNDBlX2h3ICpodywgdTE2IG1haiwgdTE2IG1pbikK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAoaHctPmFxLmFwaV9tYWpfdmVyID09IG1haiAmJiBody0+
YXEuYXBpX21pbl92ZXIgPj0gbWluKSk7Cj4+PiDCoCB9Cj4+PiDCoCArLyoqCj4+PiArICogaTQw
ZV9pc19hcV9hcGlfdmVyX2x0Cj4+PiArICogQGh3OiBwb2ludGVyIHRvIGk0MGVfaHcgc3RydWN0
dXJlCj4+PiArICogQG1hajogQVBJIG1ham9yIHZhbHVlIHRvIGNvbXBhcmUKPj4+ICsgKiBAbWlu
OiBBUEkgbWlub3IgdmFsdWUgdG8gY29tcGFyZQo+Pj4gKyAqCj4+PiArICogQXNzZXJ0IHdoZXRo
ZXIgY3VycmVudCBIVyBBUEkgdmVyc2lvbiBpcyBsZXNzIHRoYW4gcHJvdmlkZWQuCj4+PiArICoq
Lwo+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpNDBlX2lzX2FxX2FwaV92ZXJfbHQoc3RydWN0IGk0
MGVfaHcgKmh3LCB1MTYgbWFqLCB1MTYgbWluKQo+Pj4gK3sKPj4+ICvCoMKgwqAgcmV0dXJuICFp
NDBlX2lzX2FxX2FwaV92ZXJfZ2UoaHcsIG1haiwgbWluKTsKPj4+ICt9Cj4+IEl0IGZlZWxzIGEg
Yml0IG9mZiB0byBoYXZlIHRob3NlIGhlbHBlcnMgaW4gaTQwZV90eXBlLmguCj4+IFdlIGRvbid0
IGhhdmUgaTQwZV9jb21tb24uaCB0aG91Z2ggc28gSSdkIG1vdmUgdGhlbSB0byBpNDBlX3Byb3Rv
dHlwZS5oIG9yIGk0MGUuaC4KPj4gU2FtZSBjb21tZW50IHJlZ2FyZGluZyAxc3QgcGF0Y2ggKEkg
a25vdyBJIGdhdmUgaXQgbXkgdGFnIGJ1dCBJIHNwb3R0ZWQgdGhlIGlzc3VlCj4+IHdoaWxlIHJl
YWRpbmcgdGhlIDJuZCBwYXRjaCkuCj4gCj4gSSdtIHNvcnJ5IEkgYWxyZWFkeSBzdWJtaXR0ZWQg
djIgYW5kIGhlbHBlcnMgYXJlIHByZXNlbnQgaTQwZV90eXBlLmguCj4gSSB3b3VsZCBzdWJtaXQg
djMgYnV0IHRoZXJlIGlzIGFsc28gaTQwZV9pc192ZigpIGlubGluZSBmdW5jdGlvbiBhbHJlYWR5
IHByZXNlbnQgaW4gaTQwZV90eXBlLiBXb3VsZCB5b3UgYmUgT0sgd2l0aCBhIGZvbGxvdy11cCB0
aGF0IHdvdWxkIG1vdmUgYWxsIHRoZXNlIGlubGluZXMgaW50byBpNDBlX3Byb3RvdHlwZS5oPwoK
U291bmRzIGdvb2QKCj4gCj4gQnR3IGk0MGUuaCBpcyBub3QgYSBnb29kIGlkZWEgYXMgdGhpcyB3
b3VsZCBicmluZyBhIGRlcGVuZGVuY3kgb24gaTQwZS5oIGludG8gaTQwZV9hZG1pbnEuYywgaTQw
ZV9jb21tb24uYyBhbmQgaTQwZV9kY2IuYy4KCkdvdCBpdAoKPiAKPiBSZWdhcmRzLAo+IEl2YW4K
PiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
