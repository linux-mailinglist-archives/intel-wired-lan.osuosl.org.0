Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E2F7A60C3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 13:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B569B822B7;
	Tue, 19 Sep 2023 11:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B569B822B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695121891;
	bh=nkCFRUmjz7TzrEx9WtCPGO/vVUZsoRit1870TIXQ35k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=osDIixWClyp0HvDK5vrrA5di4B8G+7YUKp+BcdDyRc/3FiDQmiNcMwi+1NQdbgBNX
	 CKcSjZypnvipuwKF5KDSeFQxRhU17wZvsEJTcT/H7oIIUJIY5Cmr5vEtXkwUHKZ2GL
	 i9G/DNuUyER9yopY8C/IxOEzvfssuGjzlsS1/cvPTEPFYVQwjkeEu8aaDAHDeXa2ef
	 Q9At0zMd0A6NbxgIXjb1mQb/hke13pSvWbn/K0N6CCHXpfLbsMAdFz1qLc2WoSbPQ5
	 /DcwG2Qf9G6RNXKvXCT/O7yX7aIhIqcUMbIleXVlEazocGIqMLXbuDHMeD+9X28+cB
	 OZz+4LnDW9wLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e_Nse5bdNbdS; Tue, 19 Sep 2023 11:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92F648140A;
	Tue, 19 Sep 2023 11:11:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92F648140A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 500581BF339
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 11:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C7FC8225C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 11:11:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C7FC8225C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 75jisNqEVg2o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 11:11:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EDF882266
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 11:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EDF882266
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="383735434"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="383735434"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 04:10:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="869936930"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="869936930"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2023 04:10:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 19 Sep 2023 04:10:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 19 Sep 2023 04:10:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 19 Sep 2023 04:10:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HWYIg6KOMn8W58Pfa9tW96JH3Wh3otaj3cGtKFqGKvQLaFxVC5pX9dTnhP+EGycigZgD+EB6shXa8nkcADORSjdvtnrqzC7im3uQg9UGK/aid+r8zTBmdSaMS1yckVY1hpW6MrkrCDh0+G8FfYMqsBHrNYUFprbwjxHqvmsdDY3EuFwatIuD70cg+F5INSnhyCJF3zl65yl8BXDkH/LuL/inJjoKyTGRfSJ8yxEN4pxfB70mJhzvpEbMtehcNUODQ27fUvD5aIzj7cDIs6CKcu88Peq9nKeUNjiTCCzEXarYkaYhYx/TMdbUVkGvEtS89Ul/QV8VQCKv7Uz7UMXz9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p527wQjRC7tU4WXNhMcnkX5fdPx/BSPym/PJPloVnAA=;
 b=BfrPY4eaGrSkKJhutxAh1BgsAwoDeefJ3QLnEwEjZ+BEzgV7m1XAMkqIYdjUZ0MIwj9Tepr9b1SmKQ+uPGf2Mqk4zXl0eZ/vuMRE/gXUFtxJO4jFBjMBQHZnGq9r9x6o7R6y5XAEI/7TumYifWK2lrQs8wbwnQtnWwUBG/w0DxaZUIBHm94zoOEdBdbKbvWYaX/5aK9WQ9N/sPmTSmSIfJ0W11URgSdy7k7mXs6gRUtvCTID0hkPLUKMEDX1voFZCPVAYVaN08vMchsUr5g4b5qwb01hy+II9lQhi18nhGH3o/Iae0fm6tmGYnEJxWRyjeE36xQsf1dPRjYI6w3G0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DM6PR11MB4578.namprd11.prod.outlook.com (2603:10b6:5:2a7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Tue, 19 Sep
 2023 11:10:45 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6792.026; Tue, 19 Sep 2023
 11:10:44 +0000
Message-ID: <5c59cc11-f6b3-3ac2-d26f-9470f57d7570@intel.com>
Date: Tue, 19 Sep 2023 13:10:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
References: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
 <202309120916.5313AE37C5@keescook>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <202309120916.5313AE37C5@keescook>
X-ClientProxiedBy: FR2P281CA0086.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::14) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DM6PR11MB4578:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a575bcb-2320-40a1-2ec3-08dbb901115e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jPk0vTj4+s22wq/s7/ALIuJrvw1XpKddGh3q1oH4/p9c3zVpbxTVpgCqqVzamy0Y8n5wea9uLUskG5fM+QDQpHXBIlWWfUN2DAmAw3RqeTkEdvUmC90m1qRcPgawzhAffT6ILUJhv3YKP4Ivif+XOGPRFeYjrz6FtN+ZGo7nmuWBvKgRV/5OgWkNfZVll2/+2Sk5NnlfdOWfZ0d2bQGLao4wYN6yfppSDP1kB1iCcMG456x5E/nk/gLAsWAMpzc0o1IrpGpiV34UCgI3dpNB12wT4fHkUAP00RlNnjKztFT+Hn7A08LF6ck9S4+fI7CjA3VO2D5XZu2vYzxe52Irf9lUt+Ey3rg5HMu8KyX4+NtJ6PaQ56VVsNB3RWn/zjVHa+SZRcMSAyysmULKugmCdFyqIV6LtfgqPjs+s+7IzgWE3z/WMiltsQfzEmBaIDHmAh3mQqNmttwB9XgNNCuBhWUgUpO8LsAQwKQs4+zsJH+2ALVHj0A5zSDzIwg9vgAaoVwvnF0md4jauJxTaIxFuZSfbRTd9YQ2AwvqlyQngttbXiwm6bGmm/JvPjp47CcP6dKuYwvSZC8JRleUAVsGJILipQODwMC1Vsyrul5yIiCy7UML0cV32rW6u59fTwPVeqvstCGXqIFPP4BeYZ54pA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(396003)(376002)(366004)(1800799009)(451199024)(186009)(2906002)(5660300002)(4326008)(6862004)(8676002)(31686004)(8936002)(41300700001)(6636002)(316002)(54906003)(37006003)(26005)(66946007)(66476007)(66556008)(966005)(478600001)(53546011)(6506007)(6666004)(6486002)(6512007)(2616005)(107886003)(36756003)(82960400001)(86362001)(31696002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REVSMG0zYW94QVpLY3N1Y3Y2RjBWSGxyTzZ4TURhbVJBUjhnQ1pMWTRSTnJJ?=
 =?utf-8?B?VzNlYWx2QTFDbWpkbHZkUWxLMFRIWkJ6cmtGNXFNSGg3d0U4WVVKbXpxQ0xp?=
 =?utf-8?B?ZHlRU21lUVpaRTNmaHpNZ1laeGdhVmIrUmxJYmpzYzgzMnJVaVIvMS91S1NI?=
 =?utf-8?B?ZDQ1cURqWlBYZ1E4VTdyNHEyWTFrR2ZQS1VITytBMFU4dWdhcU00OTBrdjdZ?=
 =?utf-8?B?d1hvbmxQTFZhVkpUek9VUDdjUUZiY1lkd2cweFNIS242blB6VERSN3FCVzJz?=
 =?utf-8?B?SWoyb0NQWG5vQXVWbWJjT2UrSGZibmtLSStlV0o1Tm5waEJESDhDdkJuSDc3?=
 =?utf-8?B?YUpiVjQxWGg0bjNUTkJOeXdVaWVoWTVKcllCamVyaU1OTUhJVlEzSDVDb2R3?=
 =?utf-8?B?cStvYTlUM3MzRXp3cnp1NEVaSUI2MjZKY3pMS1ZsNktVTjR4bjdWRlA5MUd2?=
 =?utf-8?B?QUg1MmtWZVBDQUVrQjhqSVlKaWs5OVdTaUJwaWJtSlNoSGNwOXhxTVlZckJF?=
 =?utf-8?B?SVRPc3RtVGFDMWhtUVlrWFpyblJRWVV2NThVWWwwZWg0clo2M05oUHQ4a2J6?=
 =?utf-8?B?UHdIWGtkeFN5cyswSFVGekFYL1IxTk5NQjI2Rlo2Mld3M2tuZTk5QllSU2pk?=
 =?utf-8?B?SnNCY2lxYldpMlpsaW5DUllLalRmS0tTTGtiRTJYSHRrS1BIQ0VoVytqSWxU?=
 =?utf-8?B?a1I0NnBwU1BUNnVVT1JibWdtaFp1U0hZZ3NESmR3S3ptM3BVWjV6U2xGcVll?=
 =?utf-8?B?UjNKcHhmSU8yazBaMGNPWTZaQW5kTTlDb0hLVnRDWTh4ekMxbGxHMWVFWGVj?=
 =?utf-8?B?YWxqalRsb2UxZzR3U0ZMYWNNdlluWVNaWFpqbXk0dFZ1ZitMeU55dThlL0dD?=
 =?utf-8?B?UTZBU2ovbWdjT0l2aVdQNGRYK3RjMzkzdDN4UGdsZ1NMT0FUSjlqL0FSaUM2?=
 =?utf-8?B?TFVhOWx4ZHdqd0RGSXRwZDNsZkZMS0lVYVBsY0RmdlkzUEtOMXo4R0RTWHNV?=
 =?utf-8?B?MU1VamNoZ2NydlMvR0NCM2tHNzlCbysxOHc4TGpwMjNGUlZyYnNRWi9TS0Ju?=
 =?utf-8?B?bytSYWoycmdVNndaREZnck9oUHBueEQwdHlzcU9vcllwY0lmUFJaTjlIU3Z1?=
 =?utf-8?B?aGp2OHgweFRGL0hhOEgwdVBmaWMzaUVrRmhjNjIzLytCZlNPUXhIZ2puajUr?=
 =?utf-8?B?RW1wM3F5Z2hUZnFRWlkyZzlTbEU1dldoVXArNGpJR2w3aGtUWHFGL0p4c29Y?=
 =?utf-8?B?Y1N4eFhzL0FiZFJNT2ZRVmtnbHNjTUxTVUtPdDVxbnJacFdxMjlDS3lJUnpu?=
 =?utf-8?B?Mml5R3NlclVJTUgyN1c1VDdnY3o3Zi9oYlpjY0VaSWpFazFodnFsSjZHQStw?=
 =?utf-8?B?dGdIYnVCQ3Z6SFRoTk1rRlZKTDFsbkhIVDdlQzhXUExxYjF2RmMzdDRaYnk0?=
 =?utf-8?B?SmVjb3VpRDZ4VXFkNFNYT2ljOWR6TEphcXpHVGJ3eGJzTjRtM0wxLzFzcHRx?=
 =?utf-8?B?ZGc0aHdyL3BHUlJ6cGp6Zytvb3pWbWQ1RjgvWlZwbXpOWlVHaUZGR2J5dFRo?=
 =?utf-8?B?NFZuZDZSTVdxaWhJS2N2VUxiWEw5WGVGczF1Z1VzUmxFS1dOekhzK3JFQnBI?=
 =?utf-8?B?MTRBSTZjOVdJcVdMczg3MWFWQWJUOE1scDlDSUJ5a21UaEdLc3BiUGV1aE9l?=
 =?utf-8?B?Y1BKWU9zdUZxd3E0cjd6UmZMcGNQaVgvZjd5MzUyL0dLcC83YTMxbXhYVE9B?=
 =?utf-8?B?SEszRWJDSkZPdVBOQzZxU21yMFRwR2RiQ1ZjVjNjOVBybUN6QnovQjljR2NG?=
 =?utf-8?B?azVLbldaVWdDOGprUk1qTTFBeTFpaGVFUnV3eU1iNko3OXFUeEVvbFppYk1v?=
 =?utf-8?B?NDlraENUa0pWVXNOcytDclFlVW8zM2RmUDh6UzVWTGF4bC9UOUdmYU1TelBI?=
 =?utf-8?B?ei9hcmdpY3UzVVd6VVcrdGZGWE52eVViY1JSMUIrblc2WGpnblVaRXUvbFU4?=
 =?utf-8?B?cnBrUGVyaHNhcWxZU0s2QjA2eUJHSm5LUkVCdFJxRncxQjMxRzBCNDIvaVRW?=
 =?utf-8?B?bWZxQVZDVzQ5ajI4ZUl3dU9jZndYNVNDd3IyaFY4UktmdXdXbEcvQ2tiRStC?=
 =?utf-8?B?Y3d3K1FiSk9ZTlBiRWREUThnMTF5TkZoNVd5MXArYlJqRk1kQ3NGSGcvYnln?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a575bcb-2320-40a1-2ec3-08dbb901115e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2023 11:10:44.2063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oWOIYf7ecZCI25gxIDfjl1rdq+apeFm4efim1LbeFrbGSOJ1Sitr9IqJcErmlKon2gmYYR70/XmM4b8somnWniS5/dSMt1XiPQ8UIzDlAz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4578
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695121883; x=1726657883;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KHChUeSVCPEu+/V9LBK7FmlxxrRHfnUDCi1kKj3o0zE=;
 b=VFn8HfWE7dHzaz901e29Bl+DDyMnA8iD8619q9LqfsWbe2o7gHGdmFr0
 qOF8q1mU997yacFJdU6Ir7e9mNnQCoFBvAc4IMzxn7K4VQ7NCGp5DjKRM
 rcugSzjLhGmQ6+Vywup1QA8m8bLv+e+rqUYmIKziP99K7LllHBVKiAYFJ
 32S5zGmdHEiANxZbcLs9dZwnL7emNeVt4Db5UKKirhKh1WJpdkHk0+9IM
 J5nm+QRH84byGi2VW6V8b3CE6wVoB342y3jxp2PliZ8Q583GDxmWRDwXp
 2Ml87n0/Rr9cNbpqgmBQoLwDdRySCjlAydkxG4o7W/j7JcG5JTW+BgQLF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VFn8HfWE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/7] introduce
 DEFINE_FLEX() macro
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Steven Zou <steven.zou@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, edumazet@google.com,
 David Laight <David.Laight@aculab.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub
 Kicinski <kuba@kernel.org>, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/12/23 18:16, Kees Cook wrote:
> On Tue, Sep 12, 2023 at 07:59:30AM -0400, Przemek Kitszel wrote:
>> Add DEFINE_FLEX() macro, that helps on-stack allocation of structures
>> with trailing flex array member.
>> Expose __struct_size() macro which reads size of data allocated
>> by DEFINE_FLEX().
>>
>> Accompany new macros introduction with actual usage,
>> in the ice driver - hence targeting for netdev tree.
>>
>> Obvious benefits include simpler resulting code, less heap usage,
>> less error checking. Less obvious is the fact that compiler has
>> more room to optimize, and as a whole, even with more stuff on the stack,
>> we end up with overall better (smaller) report from bloat-o-meter:
>> add/remove: 8/6 grow/shrink: 7/18 up/down: 2211/-2270 (-59)
>> (individual results in each patch).
>>
>> v5: same as v4, just not RFC
>> v4: _Static_assert() to ensure compiletime const count param
>> v3: tidy up 1st patch
>> v2: Kees: reusing __struct_size() instead of doubling it as a new macro
>>
>> Przemek Kitszel (7):
>>    overflow: add DEFINE_FLEX() for on-stack allocs
>>    ice: ice_sched_remove_elems: replace 1 elem array param by u32
>>    ice: drop two params of ice_aq_move_sched_elems()
>>    ice: make use of DEFINE_FLEX() in ice_ddp.c
>>    ice: make use of DEFINE_FLEX() for struct ice_aqc_add_tx_qgrp
>>    ice: make use of DEFINE_FLEX() for struct ice_aqc_dis_txq_item
>>    ice: make use of DEFINE_FLEX() in ice_switch.c
> 
> Looks good to me! Feel free to pick up via netdev.
> 
> -Kees
> 

Thanks!

Patchwork [1] says it's "Awaiting Upstream", which is the same for most 
of the "to: IWL" patches. That means it's delegated to Tony?

By any means, minimizing "usage examples" to just ice driver makes it 
easy to merge via Tony's tree.

[1] 
https://patchwork.kernel.org/project/netdevbpf/patch/20230912115937.1645707-2-przemyslaw.kitszel@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
