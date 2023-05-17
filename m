Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E05706A3D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 15:56:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D982F607A3;
	Wed, 17 May 2023 13:56:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D982F607A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684331761;
	bh=EaLGADg2M+iPSxHdn/6KM73oYcoF+zYLgKOUX00w41w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ItPCb5zszF/bTyo6wb6HD9uNw9lsWwZeUIKYbSrAGDoDufRJSkkJNjK0dkp+qhXyC
	 EegLXuGT0IZSKmcEUdzmTWqUJdxJqNVQp+w7ZQzwWmQlweI4bezoV57E1vMdhB9jKd
	 TPI96kjXBSST3Yhxyfx4I6EQOT5QqHUnQk2jiELQ0db97PV25PDM3bKM4VbIXEk5ky
	 fwK39W/BJFIBT0oWxtUXAcvA++tnQZ5xfVsPTpjTRxrmiSbGdzWxB7bTXHNttu4+xk
	 duEJbDNkdfIuKRrNTxnyv7kRnfdZVhh/mgVejs56cz9QqaNrgJfTUuQ4LKinXGS7bY
	 X6cfvASLGcYvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J7FORUJAbNSm; Wed, 17 May 2023 13:56:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACFE360776;
	Wed, 17 May 2023 13:56:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACFE360776
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A3211BF487
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:55:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16DE14272F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16DE14272F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRdW7kEDt5hO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 13:55:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26B3241F02
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26B3241F02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:55:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438108267"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="438108267"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="1031732386"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="1031732386"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2023 06:55:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 06:55:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 06:55:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 06:55:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 06:55:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TObuc9PtzVLvf4bfNQnuaC/axmeZYk8ZJzZ4aXL4BUNXLas7o/LV1AFLpXiHfYNV5e6riIXt41/AIKHIucv7rLHG4/4p/7HHiY0z58T32xG2xn2tWowOcDPMDE1cAxuGfqE49vBRkkrpHOEONPFD8v63d5+XvmquUzGP3W7DwYhhrsnKOxO07q8WML0aH/k4wKVjlS1DoJbL/dKC1LFCBTIKqwbMp+fHsWFkH+RzyOPUdLgRXMnzJ7J4LQKBNxJ0+6Gem61swPIEo5ABgP0rkpauDOSg5uRgx0epqmN4WaL8ZM2VnhKZXevjhqwye2/lDAJ9f2dPm9QbaaawUljg1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u0SbZJKldV4Of0PMh/2v5lqfgv2v4VGa1ogPRwHQLX8=;
 b=L5rlhWtkJ8JcGFsTQbO5yM3PJ9RfSRjSQdy1IxP4zskoae+gIATEFaprx47ZXCHIel26Yywa8pwTpacFiOz+RwfYZV7i9mT2FTHdriIvRtW0BPYy2dGSuiEjiV60luaHhqXY5xE76Ge+Gl1H2MgSOnU1wLRYvGOkyX04nh/xGX9KJKDv7eluYQVIiuEOjOEFfi9Mm58jqOyxW3YYhnA/9xIMXJGC8LpAeGcJh++ANAxHxkTYXasR6qidGmwcXCDllZFQYJh48ead4MUSIrSG720kK7ymvaZEJqdd6/3Jd+UT5DV9OPxlqLeKCXc2Uw3JXg+gtge+YXPdFVLr5DiWkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 by CO1PR11MB4788.namprd11.prod.outlook.com (2603:10b6:303:97::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Wed, 17 May
 2023 13:55:43 +0000
Received: from BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::c5b8:6699:99fa:fbeb]) by BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::c5b8:6699:99fa:fbeb%5]) with mapi id 15.20.6411.017; Wed, 17 May 2023
 13:55:43 +0000
Message-ID: <ef551a54-ba3a-201d-6687-fb14992d1ebd@intel.com>
Date: Wed, 17 May 2023 15:55:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230517125247.331227-1-piotrx.gardocki@intel.com>
 <52dbbc99-85a8-12a3-6c27-99c08a7e7ca1@molgen.mpg.de>
Content-Language: en-US
From: Piotr Gardocki <piotrx.gardocki@intel.com>
In-Reply-To: <52dbbc99-85a8-12a3-6c27-99c08a7e7ca1@molgen.mpg.de>
X-ClientProxiedBy: FR0P281CA0261.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::15) To BY5PR11MB4451.namprd11.prod.outlook.com
 (2603:10b6:a03:1cb::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4451:EE_|CO1PR11MB4788:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ee5a5d7-5f70-4331-476f-08db56de67ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lz9IFiQwK8/f/Fkc6qUL6HDgu+ULVPiBYADSMkvt08U7sN9dDuiPoitikhyoGX9tCOB/ZucnODOiZvNKS+n/8KIFf7gL97Br6krjYkVMF2JZVrVejUyMMoG++inlQRB23V7nym64SMoQrxOFDOjnLtoNRM7z+1o8B/7F2COrn4n7OJjxIwGWIvGuNhgb9Tkwclnj3sZxJiufNDeppRoOLkSPpZO39PeQ0TSQVekDQfQPArFkyd/3iYQjZDAxQgxyf0VqEmjSS4a/nvXYbIJJn5pnUYv9DyyqlCzCvC7s7v+O1xBj5mEGse0x09Sr+mpN6YbfxnqY6OCm8KW+atRWrU3jcY5SkxcPzSSlXqZ6LFwmyjs7zhex4B454QDlPo2wFXPSTlSD2VMvZr6JENhy/ELNaturftV2LdYHH77d0HhOVbhF7rNnMrUKlxXZz73pitMBqMRU38zZTSYlECGgbUQDe4O7uZFDx0/ZtkrSbFBq3kjz7Ho0ExqUuvs9z6BiuKBc409SBpF+uAfpuBUEfAPmJ8OaODAjfJli7YFQipNTnN/0KDOZ4wj+NX+kOwxqjDmrrOqmMbKDu26HRbGu+a8zOTjq/LHvLDub9EeZP3kreXyw1Iv7ROJT9kpvLZs9O2IAhoe2+OBWSM1DxVvbEg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4451.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199021)(6486002)(478600001)(6666004)(38100700002)(82960400001)(31696002)(86362001)(83380400001)(36756003)(186003)(26005)(6506007)(6512007)(53546011)(2616005)(316002)(2906002)(4744005)(31686004)(8936002)(8676002)(41300700001)(5660300002)(4326008)(66476007)(66556008)(66946007)(6916009)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ak1rVHFOWVlCZ05XRUZKWlp2MTRtYkpPQk5pMy94QmVmRXBJTVVMck4waGNP?=
 =?utf-8?B?dzFyZW90RWxiMW5GNWF6SG95bHVSWk1GRGY5SzJURFZuOU1CcHZJMzNHWlh2?=
 =?utf-8?B?bDJVNnpxbUREb0pMMGJ1RXltL05WMDRLTUtQYTRXaXplSzVud3J6VUZVN2x1?=
 =?utf-8?B?KzRjTmhjeVlxVVhDWVpuMlB0Q3NwZDZma2FkUVVkTGZBODA1ajFuUDVTMjhM?=
 =?utf-8?B?cmhmZ0hibnRzM1hUS1V4aWxWWlNlS095dnBJZEltNVptZ0hENTBYYS9QVXk4?=
 =?utf-8?B?SitYSTFXeFFxQUdUb0ovOFRDM3pZanBsZXZTMExLM3kwTDEwRVdRbjhONWli?=
 =?utf-8?B?L1VHWnNTVUk5SktmRjF5L0V6UUtrdTZSWlRMUXBqSEErV04yRzdreGZsN29I?=
 =?utf-8?B?M0wrZ1YxM2NqNWRFbTVSRFNMWDAxU0RpV0lNNjRrUldUMWlzb3dQSDQ1MnFx?=
 =?utf-8?B?bHBOb0RxeENVcFBjMXRobGxnb2dweHp1Rk1MKy9QcVoyRE9weWUzUkd1MUMw?=
 =?utf-8?B?enVGeitwWTZ6eEc0LzZoanRFQUJVTkJENFdCNVZQUDIwL2JDNStsVVpCeEsv?=
 =?utf-8?B?Uk0rK24wc2ZweWdnRWF2dTFKcHB0eWF3NnROL3AxL1dOVU1QQVMzVTlrKzQv?=
 =?utf-8?B?bWhUdGMyV3BXMlJ6ZXV5UmdJS09yMlFxNDVJSjFnOHYvVWp1NFF0RWcwaXho?=
 =?utf-8?B?UHREUGFSSU5aZVpNWWxJc0RZczdNelpldE05VFl5emM4eGo0dlZjZGxsalFu?=
 =?utf-8?B?ellkZHFlR1lkdjhJVkljdU5OYmVoY1NDcGM1OVhCT3pWOUlPSUxKeGc2Qks1?=
 =?utf-8?B?L3JWS1BCNjJ1d2RhamV1NWlBNVdGV0VjSzdvNm1zaWxiTlptRjROV3JGRGVp?=
 =?utf-8?B?TlFsWnNXRkROS1JCMSsvNGxSakRlSld6TlliQzBTN2UwdFovTlYxZmJTbTNm?=
 =?utf-8?B?N1VOaEZacXdaNFg2L3pMUm5LMHJaMTNWbWgwTU5sMTQvZU0xemNZd09PZERP?=
 =?utf-8?B?dDU4SklxMGpxT0RSVEIybkpYNTNLZkRhZWM3SWFTbEFUMGErN1h2RHp3WkY4?=
 =?utf-8?B?d1h5L01pTDlROG0yTVJNODBNWi91QnJIbU5JN2I5WjgxSDdKVW16b2NzSGE1?=
 =?utf-8?B?V09WY3owUC9tdUl3V2l6QXRFN3lmM1ovSDJDbG9PbnRacU1jQWR5UjNtYW9Z?=
 =?utf-8?B?dWVLZTdnODJuUG5Zb1hjNTRYNVJYeXdwZEFQQkg5bkd3d08xNXBFQ0JuWXpD?=
 =?utf-8?B?ZTRwMWQwVGhQa2p3elVBUlhlQUJVVGhFUmpVOEVIc2xyc1NiNjlXaW1aL1g4?=
 =?utf-8?B?Q2tiaXFkVWQxYkpkN2VJYlh0NTRzRnpuRWducCs4cFROcnVicSt5NU1rVWN2?=
 =?utf-8?B?eUFkemFCTWhlVHJDSmIraTM4TzRZaHN0dTN1VGJ1LzhqaUowNEJQS0swVmZK?=
 =?utf-8?B?bm1xOHhJbDkrUVhBSnhxMDhnYy9OMGFzaW4vcjFSeHg2cVdXU003dmtMM1pG?=
 =?utf-8?B?a0J6QVNueXZQblkzWk1XRG10WDEwT1hKOGtVWTVXYy9zbzZoUzAvdWovelJt?=
 =?utf-8?B?MXFDMGJvRjJkZDU5RVZreEZjV2MwbGdobjVWcHczRW54N1JYZ3Bta3FkU3Rw?=
 =?utf-8?B?bnZuM3ZlNUhrNlFJSVZGeHBUL0xYQ0lmdE8wbEp2MU1MTUYwWW0wSmFTQUlw?=
 =?utf-8?B?dmlNTzcxOHdGNzJoYXl1MWZwR092TVB4eTNMdkxMT1Z3T2dkaFluTFlYUGgr?=
 =?utf-8?B?L3RFNHNvL2thMkJQamhDUTlhN0xSMU5Gd2oycnZndWNQbHRFUXc4cThhWUJ4?=
 =?utf-8?B?VTJNRDlodHBGaFNWUi9TOTRsNUVYeGgrb0tMcTRLdU5uMk1KTVQrY2RpMkpV?=
 =?utf-8?B?U04wSnNkTzVIelRNYmEwSWVlSk1Fa3BkcEVLeGxudmdNNy9BZzZEUlo5ZnVW?=
 =?utf-8?B?MWN0UDdCUjNXVjFEQVVLdzdzQW5kRUxraW1HUVU4eTlURzdLWjlLdjE2QU1Z?=
 =?utf-8?B?OVpMWkYxSy9iVDR6aDhFMDZFc1JTS1R2WUhtNVBDU3V1K3I1UTFyRXRuQTZm?=
 =?utf-8?B?d2M2c2pjMExkWlpKVGhZV0ZWdm43cFdsVUdNb1FWYlEwOHdEbjhkV1NJYVlU?=
 =?utf-8?B?UXFjaFZTUFNoaEdycDllWTg4YlkzWHRaeVBzakNaOVhzNWk1ZUs4QWQzYjNU?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ee5a5d7-5f70-4331-476f-08db56de67ec
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2023 13:55:43.2245 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vnk04/p1wSoI8ZNWg4hYr73YXB4d80Ftv7Fnzt7S1QGQsDwKllRFgvJ6n7KpKS/scTUboiT0iIMlLy4y9p02vkBdX36ex9hgRplECq2PBFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684331754; x=1715867754;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7TYAt1KS8MKvLnmGwAqZWMILdTYxlhjUYwo7K1xbHXY=;
 b=GNz2OxF+K2Q3E1unYQ5U59dOxN7CKXKUKv7SNuRt3KV9nNOpUfKZGsES
 UO3nb6fJnGJhOe5hKKtoGuKhJwRC6aUa2KfTehOJETVZUZuzeOXjtYHkc
 5UtX2vGROGoTRAUfPOVmzVbQl6oLS5bztAqvtDmmGWBNTGAx3dhaGY3yz
 g/Z3RsXnD9UNKBiC3dDaz6vzCMyHsjw3kPr6SEwTXQ7wUn4K7Mq5F8/Gb
 vbgB1JaxP5FFa0OgBYdwVdygcb5fuAY5/0jKJ4A2Y7hUtuZ13jUPDpNZC
 Yc8WI7iXAikL89/fEI77Sf7xWbkIuyegabtK+rebeCBPyd+knU+2Yq2oF
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GNz2OxF+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/2] iavf: cleanup
 procedure for changing interface's MAC address
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxNy4wNS4yMDIzIDE1OjMzLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFBpb3RyLAo+
IAo+IAo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaGVzLgo+IAo+IEFtIDE3LjA1LjIzIHVtIDE0
OjUyIHNjaHJpZWIgUGlvdHIgR2FyZG9ja2k6Cj4+IFRoaXMgcGF0Y2hzZXQgY2xlYW51cHMgLm5k
b19zZXRfbWFjX2FkZHJlc3MgY2FsbGJhY2sgaW4gaWF2Zi4KPiAKPiBKdXN0IGEgc21hbGwgdHlw
byBub3RlLCB0aGF0IHRoZSB2ZXJiICpjbGVhbiB1cCogaXMgc3BlbGxlZCB3aXRoIGEgc3BhY2U6
Cj4gCj4+IENsZWFuIHVwIHByb2NlZHVyZSBmb3IgY2hhbmdlIGludGVyZmFjZeKAmXMgTUFDIGFk
ZHJlc3MKPiAKPiAob3IgQ2xlYW4gcHJvY2VkdXJlIOKApiB1cCkKPiAKPiBTYW1lIGZvciB0aGUg
Zmlyc3QgbGluZToKPiAKPj4gVGhpcyBwYXRjaHNldCBjbGVhbnMgLm5kb19zZXRfbWFjX2FkZHJl
c3MgY2FsbGJhY2sgdXAgaW4gaWF2Zi4KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAoK
VGhhbmtzIGZvciBjb21tZW50cyBQYXVsLCB3aWxsIGZpeCB0aGF0IGluIHRoZSBuZXh0IHZlcnNp
b24gdG9tb3Jyb3cuCgpSZWdhcmRzLApQaW90cgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
