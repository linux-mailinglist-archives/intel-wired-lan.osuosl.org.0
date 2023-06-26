Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F1073E1E8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jun 2023 16:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E55040C94;
	Mon, 26 Jun 2023 14:18:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E55040C94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687789117;
	bh=Frvu7ZmfNxj6CjNjVOJuSMfUN/mPTzonEnfMhhwQPgg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OSxjyN3ZN7Itd9zMbnjjSvbSY0obqeu9+OqPxNIjG/ttndQhc4d1WegFB8j2X1+z/
	 BW5zWwZ8K5iV7l8d0rlHAK0E16/JngAPqsplFOhb8blNzgn861C7gwoLuPYgU7ljwf
	 nY5FHTucJTS6cH4KCpUM3swpF8K+FclM7frlxo5EjRnrkbdjJbVp47iJntTgq2GZUd
	 8xzyJf5oflpyJnTUZjeuuQLkc1jHe+mLdyDWlrvCbUeG2IRHk2LIaW9KxyZ1dathDA
	 AYfklHA95a1s2lMjTKW7Xx5BVKdG+bgo+yiqBy2fECv+IWEQEVyH/01X3ICX5+B0k3
	 J5tEcqdQ252HQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v99EFCXgIeGd; Mon, 26 Jun 2023 14:18:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B17D940144;
	Mon, 26 Jun 2023 14:18:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B17D940144
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A63861BF383
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 14:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AB0F60B3C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 14:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AB0F60B3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ZDhmBz06Hup for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jun 2023 14:18:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58A10606EB
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58A10606EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 14:18:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="364729613"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="364729613"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 07:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="716155565"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="716155565"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 26 Jun 2023 07:18:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 07:18:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 07:18:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 26 Jun 2023 07:18:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 26 Jun 2023 07:18:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mW5kJ/UqPabJyo0jwsvnVgYzigs4MHR6OKfAxeNPwI7utM4uGf+bCG2wLNq1Xw1cFXjmUQDXa2UXCXPjyyoA5uKciAjEufbuKadwS5flT1rGn0WaWEJaF/AVPw+c8bIFAIdU7Sy2bzS1bdGV71U0mwZUx5UYYjUJ9PQRewS5oT27FN8JaeEcXE4uyupLxEjFKImryZ6v6Eu1U8Ux5H2HPM8bDDWLQcpFF7vjO51W7rW617mvafzRJ59eZ9To69UTDm83Qttln0j0zrefOVkCqud+CgB9/33LDA04lSlfBBhKa3x18t2sjTkzGnjb8WOVU5aw7HVF3Ma0KaiED3Kh5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+fj7gXjgf+6GKcbWSaLbL5jh9yDK9tbYiByrcHbEFA=;
 b=by6WZxevi+7jc1TlDweshb1YjMx84COYe1TBjCxIC3RMDXbHjbVbwTBCJUOZ9qAvhvbEXSNO3OPQOatQ10Wtoy+qcPqjZQgDMicmvYqr2Vhuxm6kHR52dBh3PIDhRkYBevETpmMSTYl3c04SQSNyh3YMZ17j7o0FzaTOgJlWEj1oS12FJoJ47JQIfa5mcZiudOxL+DhqQ9rfTD3RKWEL8waimOMEj09Is07Is2SYcoIRYw/hTyoSohVejwMIhwJ4sXRYtv1FCGg+vIWnP/2lw4eL6X0XP8wO5UgRsdmChMAtZtI5KI3pPWW+58BGuUJgmAlW6ddxybYuYrNDGFX/+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by IA0PR11MB7402.namprd11.prod.outlook.com (2603:10b6:208:432::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Mon, 26 Jun
 2023 14:18:15 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%7]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023
 14:18:15 +0000
Message-ID: <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
Date: Mon, 26 Jun 2023 16:17:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0050.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::19) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|IA0PR11MB7402:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d0e3234-89f2-45da-7bff-08db76502e55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qVDbw9Gdl7/UBvRazrKwqyJPLxSQmfQbkiqkYp1G/MeEBa92+5Vg5XpRmH4NNdFaFtghy7I2PZbge5WVdtMPBewbkYhuwqFv+1Pnlh4xoxunx7IidxABc9uPXSUmWSjko+X7R5lpAmrg2Esm0h4LORT+QX7LDrNoCHl2c1aRWhh8a/rHsgW7KoTbXM9XMhPlgk1ILb7v+3xFaAeRJybN4XuicgEb5mgBrc0vtVg8jGsJmAzYth7rAeDNuScTrNF7sQaBmaFrKQ4+xaGoOo6c/zD/Ywal6VoOa7qbvlDEK2X7A9ya+GMeBGY3SBL1gQaVVzQ5yBSD76VSIA40R3tvhtuOFi1eHrkSwYFE+GIRxGpDqthgw1zVHQkQ1AV3Jev+6bhPDcKnofzgyAacxP4U7MStViCiC2QgtxUudMQY10wOm/ghxRXSMn/rO8X6PVMq6n9SiQ5d18CmrefeAqrE7T5I1b+dcrlwEwK7f9yUp1JTbAS+J9wSRS5/K78cp0bwZEogiz3jRAqPm0hGRUmO2znWH0wxWEUfY0/lqjW514h+d3OB4hLdqwo7HsTb999PKariMLg0IBnFF+Udjazl/8D9hBLFcpIlffbvIZB1NTOmkWSUXdZIxIEF7ycCM+HtkNNxu41Jtb8dugreFUuPuQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(376002)(366004)(346002)(451199021)(31686004)(5660300002)(4326008)(66946007)(66556008)(6916009)(66476007)(478600001)(36756003)(316002)(8676002)(8936002)(2906002)(966005)(54906003)(31696002)(86362001)(41300700001)(6486002)(53546011)(6512007)(6506007)(26005)(186003)(82960400001)(38100700002)(2616005)(6666004)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDVuZzI4YUdlTUkybjFQSnNsVUhyNTV2di9TN0dFYi9OZ2docjhhR2dkdlBr?=
 =?utf-8?B?SkFRZVNxZXVvRWo5cmVhZlFLQkltOVdENkVRZmVid3hJcnJOZm53WE5kaXZF?=
 =?utf-8?B?cUlvU1BJN1M2TGpHOHpYdmN6aWlJQTZPM1Vhd2RMaEZ5VGRDcDRvSVpWRFBT?=
 =?utf-8?B?clZTd2Z4UjExQU16d3pXdFNYMGtiSlpvc2hha1E2b3VMTnhVcnkrdWh6ZVVB?=
 =?utf-8?B?cStTQ2I3RWo1SUUwK3hFM1NuY2lLVG9DRUxrVndyelZGZER1MUVhc3hFa2x0?=
 =?utf-8?B?RzhKRFh1aWJsRFRkSFZycVVzei9NNE41TVR3R213dVJEZERuT01wdWJFWmht?=
 =?utf-8?B?REtoR2UzQ2VtSE16dVNJbFdXOFZKMVhvdXF1ZFhIRm1PNjc5QVRXd0xWa2lH?=
 =?utf-8?B?Y0RvbWs2RUtWbXJwdmh5Q3o5VTRCQlBwN01HZVJIb2l1L3lGNFVSS0xaUkRZ?=
 =?utf-8?B?bFhwZG1FRWc2cDlKTlZpdzQ4VUdOTkMzcFVxc2FYbXU0TVpKeTBZOWg3Q3Bu?=
 =?utf-8?B?R3c2TzBvdUtIbjRrQjdTQzNHQThWdERNUGF1ZEpxU0xsdHl5UkNqWjZxYU14?=
 =?utf-8?B?NWR4eTU4cHJMZGs1QUVBcWNuUk10a0FTUXRSOThURHZwbE5jUUZabUNZRW5z?=
 =?utf-8?B?ZmV1N0tleG9RSVo1R3d1U1RYYnIxUkFLdTBsK1F1ZXVTaUFPcGFiSzVBaHhE?=
 =?utf-8?B?cks1T2RVcUNCL1ExWTd4RFFWbHVtUGlGSjlhamNFWXhoUWFhczBYTTVxUTBT?=
 =?utf-8?B?dmgrNFlGbUJCZDNBakxpbnF4TllXYmdvWlNLOTM4OFIwM0h5L2VzNlNyQmpo?=
 =?utf-8?B?M1oxNS9mWEVVRUZ3WjBtYi9Mb1pieWFtMzZIUHhEc3JKT2xXeVdET1BhRC9p?=
 =?utf-8?B?MXVENm9uM0FJTEhXeWttek1nN2JLMHEwM2VCSWdhRzZvVnU5S1gva1JkaUhv?=
 =?utf-8?B?S0xuU2RaT3dNbC9UakdYdjNGcWlpVkVsZmFQSzRjbEljREErbkowaEVVcnhO?=
 =?utf-8?B?c0poZjc1cUpoSkZYa0NEWHNvNlhpdE1BekJ3aTVqNFUwOVBZYVc5SUpYQWVw?=
 =?utf-8?B?L2dVR0k4Wk52U21Vb3poa2I2aWxESWlDY0tXd1hIcXFJOHljWUdqTUJxZGRV?=
 =?utf-8?B?YXRzQXNpSDA3ZVRkQ2hOSlVjNitzTHNMd05PQUVrUzJrdFlXNnVkbWgvSFBX?=
 =?utf-8?B?clBCTmdXR3pBNmZac0E2dmEzNVZWQVJlcmlqUndFalBldE42Y25ncjUzQ1NN?=
 =?utf-8?B?N2ZBamFzdFptQ1BINTgxbUZoU0w4NEh1dEl5eWVaTW5JbWhlMlNHV0lNakRs?=
 =?utf-8?B?M3VreExOZW5Od0tlaS9vYnlWcUNnZk8xWlhVTGdCcFAwMzhMTHlYMXB0Zysz?=
 =?utf-8?B?dTc3dFhDSWUxdmdZV2llWnptYmwya1A1NUNtMFlsdGJuaGxLRS9nTWIxSytR?=
 =?utf-8?B?WnovZ1hCSC9naUs0NXVaQWZEZnpUcVl3OEN4Q2xRVVFoWmNwcnl4cE1IU1Vq?=
 =?utf-8?B?MGU3azQ0b0d0S0xhb0d1UG9RLzAzeWJ1WENjRW5GZUVlV01lM09BWW9EY0RI?=
 =?utf-8?B?Ymo3R1hjR1BiZzE1bjQvSmJkTEQwdS9ueFI2WGdPWTZEcUxsWnBOUis3K08x?=
 =?utf-8?B?UjNTS0pVaWgrWHVqcmFiRHNIZTRVdmY1b3hPUk40ZUQxS2hIZUJlUjNEZUdn?=
 =?utf-8?B?bGpZVVppVUdqYVNtNUNzZTIvN3ZqSmhOcUZWNGV3MDY5UlpiUW9CQllqcG42?=
 =?utf-8?B?NTBKbThUdnBtaUdYKzh5U1Z6d3NGMlJyWjBsMHRWRVJycWY5ZVZyRWN3TDB2?=
 =?utf-8?B?ZSsxSkgrNk1EeEljdUZwMjBDeFdZT1JXWDVuSFB1c2JTWnFnVTBXUjVKQ0Q5?=
 =?utf-8?B?N1h5Mzg5dXBoT2lJblVJQmEvUWIzREJnMTdpSjk2MzJKWmRIOFg5R3dMcUQy?=
 =?utf-8?B?NXQ5OWx2MGk0NTl0dTdUUHVqMVlpUG9NUWZ3MFpTUnZlR2lrbkg1VUdqckhu?=
 =?utf-8?B?L29vS21kNTV6SE1mbFhKUDM5dEZ1VXRXVHhpK0VCTCsrbklNeFgzNUVIV2Vi?=
 =?utf-8?B?bGNPQ2NMeWhmVkF6bThjbWtlMEpNTmMzVU8rN0o2TzVCaitzUisrRlp2MU5u?=
 =?utf-8?B?UG8rRU1tVUFsWWJkc0xOenBVSWhid0c5eWNNbXkzcmVOYnRjZWN3eTkwRkJB?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d0e3234-89f2-45da-7bff-08db76502e55
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2023 14:18:15.3081 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X+gJY4k16FTYwhUekZxYZjDeiyrvh44gMR78cPPTDQFMGrKGejpa3Ay/yAG/Fncc7udHlYEApMcVoeZyDlEv871GV0zD3n7nJd+Zdc9CLX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7402
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687789109; x=1719325109;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FEJr/ZjR4L6Mj+m+ANvbpToFUixMw4uM+zrYAXaYqio=;
 b=Y++fTupbNcMrnVCiHf5CO2w1fk3eYjyje6MOVyLD5M/g2XS6KvNetBua
 qSh9S+DT66uomkyx+e51WwmuKdYkwIHEJB5I+4kqgCRK23WkdPg0MS6Xz
 IjmhpJ3HmYmgbpfsYFP57WoGJXF+XGLdoMifLaWNhuYYdCrrGqH0uMROz
 B8ROzX8SdtcAmh9lrotpMrlOsMOfgEgVYU9fDa0jWFwpwf8I+5ijLbEZM
 WZTWjYMBdgmyuhG1JjlFOvcWgDd6nCSIGKMfC0eyMaDl26oJKVsqa3E6G
 eJB3Vt0LNda9pl+4HLWZWKqQ96syXi+T7Y2bzjAUVz05r89FqGiL9T/Xf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y++fTupb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSWFuIEt1bWxpZW4gPGlhbi5rdW1saWVuQGdtYWlsLmNvbT4KRGF0ZTogU3VuLCAyNSBK
dW4gMjAyMyAxMjo1OTo1NCArMDIwMAoKPiBJdCBjb3VsZCBhY3R1YWxseSBiZSB0aGF0IGl0J3Mg
cmVsYXRlZCB0bzogcngtZ3JvLWxpc3QgYnV0Cj4gcngtdWRwLWdyby1mb3J3YXJkaW5nIG1ha2Vz
IGl0IHRyaWdnZXIgcXVpY2tlci4uLiAgSSBoYXZlIHlldCB0bwo+IHRyaWdnZXIgaXQgb24gaWdi
CgpIaSwgdGhlIHJ4LXVkcC1ncm8tZm9yd2FyZGluZyBhdXRob3IgaGVyZS4KCihnb29kIHRoaW5n
IHRoaXMgYXBwZWFyZWQgb24gSVdMLCB3aGljaCBJIHJlYWQgdGltZSB0byB0aW1lLCBidXQgcGxl
YXNlCiBDYyBuZXRkZXYgbmV4dCB0aW1lKQoodGh1cyArQ2MgSmFrdWIsIEVyaWMsIGFuZCBuZXRk
ZXYpCgo+IAo+IE9uIFNhdCwgSnVuIDI0LCAyMDIzIGF0IDEwOjAz4oCvUE0gSWFuIEt1bWxpZW4g
PGlhbi5rdW1saWVuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+IEhpIGFnYWluLAo+Pgo+PiBJIHN1
c3BlY3QgdGhhdCBJIGhhdmUgcm91bmRlZCB0aGlzIGRvd24gdG8gdGhlIHJ4LXVkcC1ncm8tZm9y
d2FyZGluZwo+PiBvcHRpb24uLi4gSSBrbm93IGl0J3Mgbm90IG9uIGJ5IGRlZmF1bHQgYnV0Li4u
Lgo+Pgo+PiBTbywgSSBoYXZlIGEgbWFjaGluZSB3aXRoIGZvdXIgbmljcywgYWxsIHVzaW5nIGl4
Z2JlLCB0aGV5IGFyZSBhbGw6Cj4+IDA2OjAwLjAgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwg
Q29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVjdGlvbgo+PiBYNTUzIDFHYkUgKHJldiAxMSkKPj4g
MDY6MDAuMSBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldCBD
b25uZWN0aW9uCj4+IFg1NTMgMUdiRSAocmV2IDExKQo+PiAwNzowMC4wIEV0aGVybmV0IGNvbnRy
b2xsZXI6IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IENvbm5lY3Rpb24KPj4gWDU1MyAxR2JF
IChyZXYgMTEpCj4+IDA3OjAwLjEgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRp
b24gRXRoZXJuZXQgQ29ubmVjdGlvbgo+PiBYNTUzIDFHYkUgKHJldiAxMSkKPj4KPj4gQnV0IEkg
aGF2ZSBiZWVuIHBsYXlpbmcgd2l0aCB2YXJpb3VzLi4uIGN1cnJlbnRseSBpIGRvOgo+PiBmb3Ig
aW50ZXJmYWNlIGluIGVubzEgZW5vMiBlbm8zIGVubzQgOyBkbwo+PiAgIGZvciBvZmZsb2FkIGlu
IG50dXBsZSBody10Yy1vZmZsb2FkIHJ4LWdyby1saXN0IDsgZG8KPj4gICAgIGV0aHRvb2wgLUsg
JGludGVyZmFjZSAkb2ZmbG9hZCBvbiA+IC9kZXYvbnVsbAo+PiAgIGRvbmUKPj4gICBldGh0b29s
IC1HICRpbnRlcmZhY2UgcnggODE5MiB0eCA4MTkyID4gL2RldlludWxsCj4+IGRvbmUKPj4KPj4g
QW5kIGl0IGFsbCBzZWVtcyB0byB3b3JrIGp1c3QgZmluZSBmb3IgbXkgbGl0dGxlIGZpcmV3YWxs
Cj4+Cj4+IEhvd2V2ZXIsIGVuYWJsaW5nIHJ4LXVkcC1ncm8tZm9yd2FyZGluZyByZXN1bHRzIGlu
IHRoZSBhdHRhY2hlZCBvb29vcHMKPj4gKHNvcnJ5LCBjYW4ndCBzZWUgbW9yZSwgYmVlbiByZWNy
ZWF0aW5nIGJ5IHdhdGNoaW5nIHNob3dzIG9uIEhCTwo+PiBtYXguLi4gKQoKV2hlcmUncyB0aGUg
bWVudGlvbmVkIG9vcHM/IFdoZXJlJ3MgdGhlIG9yaWdpbmFsIG1lc3NhZ2U/CgpDYW4ndCB0aGlz
IGJlIHJlbGF0ZWQgdG8gWzBdPwoKcngtdWRwLWdyby1mb3J3YXJkaW5nIGlzIGhlcmUgZm9yLCB1
aG0uLi4gMyB5ZWFycz8gQW5kIFVEUCBHUk8gaW4KZ2VuZXJhbCBpcyBtdWNoIGxvbmdlci4gSXMg
dGhpcyBhIG5vbi1tYWlubGluZSBrZXJuZWw/ClNvIG1hbnkgcXVlc3Rpb25zIDpECgo+Pgo+PiBU
aGUgY29kZSBzZWVtcyB0byBkZWNvZGUgdG86Cj4+IENvZGU6IGMzIDA4IDY2IDg5IDVjIDAyIDA0
IDQ1IDg0IGU0IDBmIDg1IDI3IGZkIGZmIGZmIDQ5IDhiIDFlIDQ5IDhiCj4+IGFlIGM4IDAwIDAw
IDAwIDQxIDBmIGI3IDg2IGI4IDAwIDAwIDAwIDQ1IDBmIGI3IGE2IGI2IDAwIDAwIDAwIDw0OD4g
OGIKPj4gYjMgYzggMDAgMDAgMDAgMGYgYjcgOGIgYjYgMDAgMDAgMDAgNDkgMDEgZWMgNDggMDEg
YzUgNDggOGQKPj4gQWxsIGNvZGUKPj4gPT09PT09PT0KPj4gICAgMDogYzMgICAgICAgICAgICAg
ICAgICAgIHJldAo+PiAgICAxOiAwOCA2NiA4OSAgICAgICAgICAgICAgb3IgICAgICVhaCwtMHg3
NyglcnNpKQo+PiAgICA0OiA1YyAgICAgICAgICAgICAgICAgICAgcG9wICAgICVyc3AKPj4gICAg
NTogMDIgMDQgNDUgODQgZTQgMGYgODUgYWRkICAgIC0weDdhZjAxYjdjKCwlcmF4LDIpLCVhbAo+
PiAgICBjOiAyNyAgICAgICAgICAgICAgICAgICAgKGJhZCkKPj4gICAgZDogZmQgICAgICAgICAg
ICAgICAgICAgIHN0ZAo+PiAgICBlOiBmZiAgICAgICAgICAgICAgICAgICAgKGJhZCkKPj4gICAg
ZjogZmYgNDkgOGIgICAgICAgICAgICAgIGRlY2wgICAtMHg3NSglcmN4KQo+PiAgIDEyOiAxZSAg
ICAgICAgICAgICAgICAgICAgKGJhZCkKPj4gICAxMzogNDkgOGIgYWUgYzggMDAgMDAgMDAgbW92
ICAgIDB4YzgoJXIxNCksJXJicAo+PiAgIDFhOiA0MSAwZiBiNyA4NiBiOCAwMCAwMCBtb3Z6d2wg
MHhiOCglcjE0KSwlZWF4Cj4+ICAgMjE6IDAwCj4+ICAgMjI6IDQ1IDBmIGI3IGE2IGI2IDAwIDAw
IG1vdnp3bCAweGI2KCVyMTQpLCVyMTJkCj4+ICAgMjk6IDAwCj4+ICAgMmE6KiA0OCA4YiBiMyBj
OCAwMCAwMCAwMCBtb3YgICAgMHhjOCglcmJ4KSwlcnNpIDwtLSB0cmFwcGluZyBpbnN0cnVjdGlv
bgo+PiAgIDMxOiAwZiBiNyA4YiBiNiAwMCAwMCAwMCBtb3Z6d2wgMHhiNiglcmJ4KSwlZWN4Cj4+
ICAgMzg6IDQ5IDAxIGVjICAgICAgICAgICAgICBhZGQgICAgJXJicCwlcjEyCj4+ICAgM2I6IDQ4
IDAxIGM1ICAgICAgICAgICAgICBhZGQgICAgJXJheCwlcmJwCj4+ICAgM2U6IDQ4ICAgICAgICAg
ICAgICAgICAgICByZXguVwo+PiAgIDNmOiA4ZCAgICAgICAgICAgICAgICAgICAgLmJ5dGUgMHg4
ZAo+Pgo+PiBDb2RlIHN0YXJ0aW5nIHdpdGggdGhlIGZhdWx0aW5nIGluc3RydWN0aW9uCj4+ID09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4gICAgMDogNDggOGIg
YjMgYzggMDAgMDAgMDAgbW92ICAgIDB4YzgoJXJieCksJXJzaQo+PiAgICA3OiAwZiBiNyA4YiBi
NiAwMCAwMCAwMCBtb3Z6d2wgMHhiNiglcmJ4KSwlZWN4Cj4+ICAgIGU6IDQ5IDAxIGVjICAgICAg
ICAgICAgICBhZGQgICAgJXJicCwlcjEyCj4+ICAgMTE6IDQ4IDAxIGM1ICAgICAgICAgICAgICBh
ZGQgICAgJXJheCwlcmJwCj4+ICAgMTQ6IDQ4ICAgICAgICAgICAgICAgICAgICByZXguVwo+PiAg
IDE1OiA4ZCAgICAgICAgICAgICAgICAgICAgLmJ5dGUgMHg4ZAo+Pgo+PiBCdXQgY29ycmVsYXRp
bmcgdGhhdCB3aXRoIHRoZSBzb3VyY2UgaXMgYmV5b25kIG1lLCBpdCBjb3VsZCBiZSBnZW5lcmlj
Cj4+IGJ1dCBpIHRob3VnaHQgaSdkIHNlbmQgaXQgeW91IGZpcnN0IHNpbmNlIGl0J3MgcGFydCBv
ZiB0aGUgcmVkaGF0Cj4+IGd1aWRlIHRvIHNwZWVkaW5nIHVwIHVkcCB0cmFmZmljClswXQpodHRw
czovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvZjgzZDc5ZDYtZjhkNy1hMjI5LTk0MWEtN2Q3NDI3
OTc1MTYwQG52aWRpYS5jb20KClRoYW5rcywKT2xlawpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
