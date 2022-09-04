Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B435AC2D8
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Sep 2022 07:43:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD9A060774;
	Sun,  4 Sep 2022 05:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD9A060774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662270181;
	bh=vAO87VTYMOCbbMDf5Boo6C8j4frUG7PFHT7k51S+BUU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qcCERcIhVczMy7UMFyMl2RIbsMoLtyN9Fw6ZBAOAx+JOTtz8nNYFYYdH2we87Ffnr
	 o2UO9YggK8dcYmgfgolN7GJxsaKmBC7hWhF3r5gtrUMejE7Q9ryJkFWnhOHgDPc7P0
	 zmB3gXVYg2qMUvOAPsw1jafCrdTYXB2CrvFY9VJqBXcDATzk3Tey83dn0ULM5f2xTC
	 f39e44SNg/2sRac3439+r+HwxYtRYO7J02eQKf60R8gbFKvi5BURhfD9RS7SAWGR5G
	 tZsxucvagwVsVG83flPGzgX4rKlWlx1Yy/QN+pH2Mh0GVPe7SulcRELUPUAQk7AXEc
	 69KmXUIJGXWtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vt9sg3HEMajg; Sun,  4 Sep 2022 05:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 829F560BB2;
	Sun,  4 Sep 2022 05:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 829F560BB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 995101BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 05:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7244840407
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 05:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7244840407
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mI3VZp3k-DlG for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Sep 2022 05:42:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E0E4400C4
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E0E4400C4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 05:42:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10459"; a="297510498"
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200"; d="scan'208";a="297510498"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2022 22:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200"; d="scan'208";a="858631609"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 03 Sep 2022 22:42:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 3 Sep 2022 22:42:50 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 3 Sep 2022 22:42:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sat, 3 Sep 2022 22:42:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sat, 3 Sep 2022 22:42:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KRo5yyWvhASdjdfph7N5yjM3/c6cM3FQUTeKt0KCJ6LH3y9E646aAI9DQczm3ibvcK2rO1EVqHiUvS+Cjw0ebzd0KTuOK98TDoEWpS84RtchDOVHLhLbzPLRzCDWtW+BWCkPCtxDKZFly98adKlTir9OMzOOeInBGBlFdmPf9Z5R2VfqiWt3j2rJK31LjGr8GXN+vcBH2QqUm+NjdtIHhkGTuF1n8vuea9hvDac06nWhnntAPnt4clW5KU5yekw9S/fb1ZIfpnU/GH3sPaYd38pwr7aClefCUvy/I604D0BH/1dbdBnjgrPbGpMGf5CYfOx3zYCmCzpkPkKGmoKLIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pnVJM1ewb2fOQfc9A3517DaSu75gSu9WCRKbNc8Lei8=;
 b=Y87fONdNDy2zu4JV75hBp5+Ojh0q17UqwsINMn5yAyfcR1GbitM9o133ZBU3tkvaZY5RXAQMD/sMoBcoYVNDiXuwOsE0LH9/f5uZ/pqMgpzE7sEbS2cVMhSicHludSPGRmcN/gAI+5yBfQt120QoLFJOWgLePhXCzPAZLnJL07q4rQVfFxlM6vvYLsPtP+hjdC6XSi4Ms4PtTBII/7ODg2zy9fZAwxyBiNBEaKvhNuLkW/80TpvMzIJfqudK2w2pzgds/QXXxe0+3x+QYXhth0q2RMCeqeq7J5r2vzgXGFrw8/znx236yrh4WfogkRXHK7XOXKyke6SvPlw3R97QyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by DM6PR11MB4251.namprd11.prod.outlook.com (2603:10b6:5:14f::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Sun, 4 Sep
 2022 05:42:48 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::6956:55cb:1f16:adcd]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::6956:55cb:1f16:adcd%11]) with mapi id 15.20.5588.018; Sun, 4 Sep 2022
 05:42:48 +0000
Message-ID: <e71e44d5-356c-7689-4d4d-d95049c76c3d@intel.com>
Date: Sun, 4 Sep 2022 08:42:40 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
To: Li Zhong <floridsleeves@gmail.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <20220830071549.2137413-1-floridsleeves@gmail.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20220830071549.2137413-1-floridsleeves@gmail.com>
X-ClientProxiedBy: AM6PR08CA0039.eurprd08.prod.outlook.com
 (2603:10a6:20b:c0::27) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1e4bd34a-e855-4a99-b9ad-08da8e384c51
X-MS-TrafficTypeDiagnostic: DM6PR11MB4251:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qgR/R8e0wG824RkM+3YkYfNGr5qkL63GgZ95M3QEhAC+ElRgDVl8O3oVNcBt13TVNhIclLZiyZwHlUVqMyi6/Uu5rZkX+M8Sqhz3siKkPKjBpC2rrKK9cyN9Uf/0ITLdHex/XNkjcygISYzVsNloe93AoNmteuAFvONr6lCje2KKlVr53GQ+x715V/SUzm5u2WgfwUyw3uha7y8YgLHN+d/InPzO1pHYkAMSTpp1MNK2bKiPgVqMdNOcdbE2yvuU8tIb4jhnhmbxev8XzqWM6F0gizZIIw/3PgPzndjCUMyGFfMSEFCkLJYy1sJz5lhuDT0dwRlcvHB3CBs9wAXkRmbi/TQaQAOG4x1n5MmfLEjjGAqkjaRu78blgYAazYTiIh/Jmt/wtQY0yCoKZ/lN12XP77K4Y2Y4PvEo5zWf94XI/JVM7y5IShknv/qdbPTm5dbVM3QtKpx8qUijXlJJKAIE+V7VhsqiU6Mmy/V5dS+O4+E3GhkqyZqqTaqYUbwG7d4VTk57g1VA6YIXHf6dX6rr6BO/XteYo2OuMy4tae7JEOl36ADJ0QqdpYdxbgZXunuyCNLbK6/xpyWAuECbq254C2FOkD3o7SjnMIjh+6CgXH08KRaUC2Mcdge73+K4ZN/8jSZ5An790oE4cgn2PRwNI2bPFCUUClLVE0NdNRT3qFYU6ajZp4whMkPMxb3Snqr1Yrc2M7rf88/TsEhITR7G4XyPRNKMIalAJ21wj4A4AWVrLv+leuvWoZJmfgvK2J9VMddgyVUJARipN+pypbowN8/BJaepN5TMGMBOCVg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(376002)(136003)(39860400002)(396003)(38100700002)(31696002)(26005)(82960400001)(2906002)(86362001)(2616005)(4326008)(186003)(66556008)(8676002)(66946007)(6512007)(36756003)(83380400001)(66476007)(478600001)(6486002)(6666004)(41300700001)(5660300002)(8936002)(107886003)(6506007)(53546011)(31686004)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1NaalJsa1c5KzVFYnlZSjBPSnRhZllrTWt4cW93OTByTWhpU25OaEpiQ0Vy?=
 =?utf-8?B?cjcxTFI0d2x4d2xRUE1TZjNBQkdMeTRTUkdDaW5pWjFZL3JNZGhhUEswSEU2?=
 =?utf-8?B?bVNlTURxaFRJTXN3VlFoUjQ4OWYyUEpHSzZPTmJWUGM2R2c1ekcwYmsyYlJG?=
 =?utf-8?B?YldmS01jRXZLWngzOGVRSG5KbEdtLzNNMUJ1SG80SSs5MzMzRnNReVVmKzFX?=
 =?utf-8?B?dTExWWI5c0RzczAzNjRkOHRhQ2tWWlFqdXE1NVpaT3RhVHhkeUtuNURYQWdy?=
 =?utf-8?B?SXE0U1pHVDNYNlMrM1VHb3dYMk5CMXMzK0lXVGxCZWk1ZWNBVUtnOXRDNjhT?=
 =?utf-8?B?Y2wzNzVjcDljbEo5cVhrM3VIemZIZlFCTytQdDVDSjl1MEJNdWg2ODJQSGRp?=
 =?utf-8?B?VTc1bjc3Zzdvcmh6bi9MOVZFcEk0U1dqekoyWXBYc2xBNUd5Q2tFYzd2SjMr?=
 =?utf-8?B?OXRMUmR6MnVkSlJxNjRjekUyNkJJUXdrYlBzQ2tBMXlocmJub2JRdUdKSDNQ?=
 =?utf-8?B?OW5rUlhUWEN0dlFBVVhTeVg5R09uK1NuZGFBdHBwaDFDNDF3NTJWSTNxS0Za?=
 =?utf-8?B?cW5LRlFXRVNkQlpSRXdnL0RiNkxnWi83Ty9oNEViMFFraGc4VjBGSUN6YVQ1?=
 =?utf-8?B?U1FOSENNa1VtRGNKdHBNWUk1aVdCK2tycVZxTkNQWU1pa1gwMzJ0S2k2Uno1?=
 =?utf-8?B?eGVvNGVSc3RDNlFybzRyWjNYV1BlaTFBY3JxdFBVT0Fvc05VUkdjQ05kSXdj?=
 =?utf-8?B?WERER0czNUhlc3B1SjZWellhYm1RSE1ySHFkeDh3WlljVHp5Vzg3SnQxMUM2?=
 =?utf-8?B?TTgwcUNCVzVURHQwazViYUZtV1dIcGg2UTIvVjNjMjZOTDBCUHpxbkN2Q3V3?=
 =?utf-8?B?NzVIQUdJUlpjM0E0bmNPd3JaZlBUbFpyM2djeHF3a2VtVlpoRWNLN0VVblNi?=
 =?utf-8?B?Qk1vNERSR2M5b2JCeGhxVWlWS2hYWmFPZ21ZYnduTVQ0eUtTYkRXZ1llZzlm?=
 =?utf-8?B?cnp6RTdSa1NzeFBPbEZwRXNjbnAxc0Q0V293MkVkWW1LN2xXWVRoOTM3a2hw?=
 =?utf-8?B?bUZIbWhDU21OSzlwRDE5M1ZFY1ZDeUd0VStyTzQvWDdxaHNzYzgydWY2VGlW?=
 =?utf-8?B?QWRpTHRMUGVPLzZGenJoSDRWQzFad0tIU2IzY2FFRTJqSDl2cG5mL0IzNmJU?=
 =?utf-8?B?aEtHNTVYU09wdk5MclB6cGV4TlJvR00ySlZ6QmlSMWFERGxhYXBpd2ZMcWNB?=
 =?utf-8?B?YnVpTkZ0bC93NHBOdXFnNnd6R2JoeGZFcEQzRitFNGNPM3hnOFdTZ3ZrRlh1?=
 =?utf-8?B?cVFYRUZrQ3Z1cmFXL0xrc2hLc0lmZHNVYkZjMzc5M2Rpd0s4eS9pWHA1YzZt?=
 =?utf-8?B?L0lhcTVCTWwraW1jOEduMDh5UTl0NW9GR1c2UEpmNzZNcnZNaWp2THhDaDMx?=
 =?utf-8?B?K3ZNQUFuMkd0TlM4OUJLd1B1NlF6Y0t6RFB0dFE3YThMVm5TS1JmZWdnN3Jr?=
 =?utf-8?B?UjFCMVVHd0xjbEtIU0xscDJHdFZCbW1UL1VPcFFleEF1NmNHMVZKN2xjREtT?=
 =?utf-8?B?M2t5R2JNeFlEbGNZN00wcFMrMnI0NmNUWjB3bVBWaHg3ajBsc1UrcmhWeHBy?=
 =?utf-8?B?Z1RRYjhEdklHckY3dEZYQlIvUVZMNmFqaXdrNEluVk12Nzk2QzZLRjBRcjU5?=
 =?utf-8?B?QnpuOFlzRmtGNzBCZm1tU0JzWmJOS1RrTm5IdzhpNSs5TEpjdGV4MFR5L1Jn?=
 =?utf-8?B?anl1N1dMWmZXbk9RLzRpbEtOM1p3dU5ZSUt5b0psMUIvcms0cWh1VUI0blpx?=
 =?utf-8?B?cVlFNEhrV3VDcVZWWXdvUERIeExETy9YNWNjYkEvcjBqL3RhRFlnQWE2dHIr?=
 =?utf-8?B?dWNuVGxBSlVYaWR6QzlkY3F1YjkxaWwxWGEvMHZiTjdHU0ZCb2dZYi96RnlM?=
 =?utf-8?B?eTljZk5ORFIxeHlPRG8wc1lucGR6alUya0YwYjYrcHNleUVKS1N3eStIcFZI?=
 =?utf-8?B?Z1B3aVdaQU1mSFpveWNEOFNSN3VkajVGY1BFTkY5amNGZE5Wazk0MHhieFVV?=
 =?utf-8?B?QUNnM3puY2taN25oRnJwNStqNk9nT09OTVM4VVBEV3FGWThzWGpTdGgzRVh5?=
 =?utf-8?B?UmtQZTlNMXZ6Vi9UemVvOEkwRUZnNmRHWDloblluSGRCNCsvMVUvb3hJNEph?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e4bd34a-e855-4a99-b9ad-08da8e384c51
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2022 05:42:47.9989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G6cnHRFZEbF8kwRj6TQwz2bFBunbMYTqZTqItqu5zDoohQC+miIBMr/3rNTRKkajb3xgn0IdoGU8BawFfOIsFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662270172; x=1693806172;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+/MK2VaMjI52bcuVGJRNhjoKW1CBFBu2sYSVz/bJr6E=;
 b=Gknqf162p8r0+PUgqlCL3gTaABJ2VJeo8IGCCC5GroElTVzo7uOVXS2w
 sIerQsXATeo76NQyOO5mKJBbJ8TuRfuImSCkRZcrlz6PG3XplEgo+MU+s
 rbfy27DlVIY0bhQNzleG3qr+dvn+flo4Hw/vNa6p0Tf8lAdr4q/J7XWG0
 Dld39Y0ZecEr244N65X70vCk58ATPPmW2zxQsKRq4FFvNQQYqulVdZzMt
 dzzZZR0EleN40Nyi5dsGyLbJz7YDsqzjB87D3QzSe3vJpfMEf3Ksv+1/q
 NaiAD8I9gDkzmn+AcPxb7SNI4U9EXwSAJS50+QrnJvnhmm26mWTo2JQGh
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gknqf162
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] drivers/net/ethernet/e1000e: check
 return value of e1e_rphy()
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
Cc: kuba@kernel.org, edumazet@google.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/30/2022 10:15, Li Zhong wrote:
> e1e_rphy() could return error value when reading PHY register, which
> needs to be checked.
> 
> Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/phy.c | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> index fd07c3679bb1..060b263348ce 100644
> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> @@ -2697,9 +2697,14 @@ static s32 e1000_access_phy_wakeup_reg_bm(struct e1000_hw *hw, u32 offset,
>   void e1000_power_up_phy_copper(struct e1000_hw *hw)
>   {
>   	u16 mii_reg = 0;
> +	int ret;
>   
>   	/* The PHY will retain its settings across a power down/up cycle */
> -	e1e_rphy(hw, MII_BMCR, &mii_reg);
> +	ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
> +	if (ret) {
> +		e_dbg("Error reading PHY register\n");
> +		return;
> +	}
>   	mii_reg &= ~BMCR_PDOWN;
>   	e1e_wphy(hw, MII_BMCR, mii_reg);
>   }
> @@ -2715,9 +2720,14 @@ void e1000_power_up_phy_copper(struct e1000_hw *hw)
>   void e1000_power_down_phy_copper(struct e1000_hw *hw)
>   {
>   	u16 mii_reg = 0;
> +	int ret;
>   
>   	/* The PHY will retain its settings across a power down/up cycle */
> -	e1e_rphy(hw, MII_BMCR, &mii_reg);
> +	ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
> +	if (ret) {
> +		e_dbg("Error reading PHY register\n");
> +		return;
> +	}
>   	mii_reg |= BMCR_PDOWN;
>   	e1e_wphy(hw, MII_BMCR, mii_reg);
>   	usleep_range(1000, 2000);
> @@ -3037,7 +3047,11 @@ s32 e1000_link_stall_workaround_hv(struct e1000_hw *hw)
>   		return 0;
>   
>   	/* Do not apply workaround if in PHY loopback bit 14 set */
> -	e1e_rphy(hw, MII_BMCR, &data);
> +	ret_val = e1e_rphy(hw, MII_BMCR, &data);
> +	if (ret_val) {
> +		e_dbg("Error reading PHY register\n");
> +		return ret_val;
> +	}
>   	if (data & BMCR_LOOPBACK)
>   		return 0;
>   
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
