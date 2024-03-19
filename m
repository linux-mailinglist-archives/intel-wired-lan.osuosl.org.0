Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A6C880771
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 23:52:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 383B260B4C;
	Tue, 19 Mar 2024 22:52:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 373l1Vqs3q_q; Tue, 19 Mar 2024 22:52:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38559608D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710888740;
	bh=HeI4PfHQ9WyRvxU6SdHrcQ/IiU4Su7dhX1tVnySwbKI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fzBaz0v+h9mL9k0gV0eXTH40QFSb8hOHJxBFLPJdkJ7Q3Rzm/jL2nZEdlPxg3/uHN
	 gSGvJjB1Jo6relUP5olEYPHlDQxUlbBVdALshjkRzpEN+JGWcQkSlJzGBEmvocjIAr
	 LwqA0kPRu543ScsKsrZyN9wfrHqQOfzmBDT3UUx8XNAA6fSHYyqJXRYOmVf0jRmEj8
	 fFAoFRH/jrKJNt56zJSQhAReQx/IJK0/wz891dWgwthvoF2+Ywg1/x4VjHbxG6AsBF
	 GCjptRToJV9oXn+Q0ocmM7U421jSk+ksN40VTBqYQbDJdmc/wq1dYnTB9+FQsQdsxB
	 5x6IS10o4d9HA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38559608D8;
	Tue, 19 Mar 2024 22:52:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 894911BF28F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:52:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F8F76074D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1hnPxj4sclB3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 22:52:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6C80060692
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C80060692
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C80060692
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:52:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5913513"
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; 
   d="scan'208";a="5913513"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 15:52:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; d="scan'208";a="13945594"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 15:52:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 15:52:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 15:52:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 15:52:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 15:52:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IzewBy3tZm2UcX7mPCAZ8cMxmNgxfviNo+RZOC9MRdbRIzhpbU7hkHge18fRyvDs/N5rXHuSMG0NzHn/ntWhaDl5LjB8h7xRRz0YXRufkml0VmU/lEmnVKnsB7+AyAp131ext4LRnd7mNOQPxJ8M0fAtO/GqhwvAvFfd0r6fii1W+4dEmj7D0rdZuwmcCcKedNSLOXKxV4SgQEnjiTkIlMeN2cC505A7CJsJYXc76CiQIYXBWdFQyHnhSfE8M1tple6/B040fzcka4kAJ+soePmOlQIFYF+ZWA36cwSR79YBawsSQJjNoC79/FmxKpaBWA2TT3Z/Rp2cpgzEEgr+Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HeI4PfHQ9WyRvxU6SdHrcQ/IiU4Su7dhX1tVnySwbKI=;
 b=PZUIioVDFc6ABBzIiPN4sJOz8VdA0vkmS81xAvKxq3jsLOCttBnBcjWaALWrSjdsi3mMC3x3BPO058pCU3LELk5cyrLyyVW+KSKw0vBo93VgexfMzYSXBD5R6zQqx7BWwB2uElhHc/7bvTpydjgbZi3KCR94HoQIhJzo1yKZorBtwmIA5v9MNEZ+Jy+rQtJEVVBZGOnRIt7uKALNllHLX8BiJHl+pFeaI2L+N10gXF/Myhgf5G328UA9OcpRUToah34qRxF99oAnPxuYHYcgJjVWU01jAHiHEHdx1gOKYHcpFi3369FjwzGpTrNQSMdkIc+9HbQ1j8KqSytivOf8Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Tue, 19 Mar
 2024 22:52:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7409.010; Tue, 19 Mar 2024
 22:52:10 +0000
Message-ID: <ed784a56-1266-4d59-9b75-767490ed376c@intel.com>
Date: Tue, 19 Mar 2024 15:52:08 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>, Karthik Sundaravel
 <ksundara@redhat.com>, Suman Ghosh <sumang@marvell.com>
References: <20240305152641.53489-1-ksundara@redhat.com>
 <SJ0PR18MB5216589DBE2D5345BD016BE0DB272@SJ0PR18MB5216.namprd18.prod.outlook.com>
 <CAPh+B4JH-Wb1qetsqfnCeLcxTpOM72TSTwreqP9H6sxnP9Kn9A@mail.gmail.com>
 <0a152a46-3800-443a-b370-50cf071f7c13@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <0a152a46-3800-443a-b370-50cf071f7c13@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0036.namprd04.prod.outlook.com
 (2603:10b6:303:6a::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 893de315-93c4-4304-6467-08dc4867360b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GUuCTNZKTI7htSYUVsn1JdPsPP+YbTKfkmQXDeh+l7toqu2waemnzsRJ62475JdC39XkgtPdv3kBrb7xQP3YKeQf0P4rvg6AqHUw0cP0ne0iC8gBHGTKyd7eJ+jLu2o/aH8rSw+e/n8A//vsv3Js8PcgddbIK/agC0U9DUv0/MZpbGGoUan/GEWRn4mxJFunC1dDQ8wdxyf0v9cLZ4cyMDCtGXSvim8cQGgAwHppGmqhUC+TrjXL9KCeuI80Ok5zTtGsi0MwV7bam3/a2iSkbTpw5ovJ2v7ZaV4ZBtK0MA6CgfaU7I3UCNxBCh4ObpoccZraJUms44TtewS7ZgHoG8rp3KHojMKAahMJtoLh3zEnaWtyd5/Lo00JipzkSiZskH8HgEjNx6Vk6kb55/FBJp38HdE+gG9gVZkV2N+g0tXS5//d7aiFk665WrIlpuJh67CUZry5bn4uAtob/piVW0BXEez9SPQxp9QioUBdEKA+eUarSRYGTCTBylEO3cF2NzSDBjhz4e7HmzBSImogM3NkQgWAYDMGG6JQiwOeVrq9y5oXYGZPywS9Ojxm+IikEM6zrokEga9ozDXFRogqFlkD45bd/SPuDxh/6OFysqi2YxkCxhIgmPLVDIDeD++LQxCi2veadqHVw9R10N7Ug7yCctlyIZieVBFUg7+6X3E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGcwK3FpZm40M081bmxlUWZZVW1TOG8xamFsSDIzeHJwK3ppZFA4L0tZYm9Y?=
 =?utf-8?B?OVBRMkdMdEtoZ0Z2SzlWQWR1MHB0bDZNV0hXNDRKSWNJVkpIVy9zS0RPVDRi?=
 =?utf-8?B?cGRVSGNSUlNSS25hVE85MnRGemdrR2VCWkJ0dVpOZmtGRjJpOFdWZ0w0TWdj?=
 =?utf-8?B?WC9TZTl1bXhzdzMxcGJVTVI0Y0tvSnVpdzlKc0YyTmk3a2xFU1lEMTFWRm9n?=
 =?utf-8?B?U2kzL3dkMTd1MFBtVmtIWTFESW12ZEZmV0Z4dyt3YlN0eW9lay9LTG5ud3NX?=
 =?utf-8?B?eFVRQUdMbWx6cDNRd043M2FzUWFnUWRKUFhiYlhnMytJaHZHQ25ZaElmYXNn?=
 =?utf-8?B?djhzRGRWam16SzhiVjZ1NzFiZ25LaG9oSldIUkVzdk9LTlZQcTNQQ3ZVRnBo?=
 =?utf-8?B?d3c2SGN6U2JYeW5OdDNTYUtqMEMwZzd1czRtaUQ4NmFOemo3eG51UWJTMXh2?=
 =?utf-8?B?ZDdQNTlGMGV0UEZDRVZBWEVXZHVmRXFBajdTMG1YdTZGMlQrYzVudThUL2Nm?=
 =?utf-8?B?cDE1MUVmeVo3VWVjbjA1TFprWmNNWHRDNW9qVEZMZHhnb0xqZ3N1MHFVS2ht?=
 =?utf-8?B?RGNJaEs1NUwrTEc1V0JsWVhkMjVGWFdMelRvM04xTVZlbG4vM1hGeURYVnYv?=
 =?utf-8?B?OUkvS0hFZkMwbmdSRFBjbWVjdi9BYVYwSkxsb1dobklVMzdDbWJzMHRNN040?=
 =?utf-8?B?NU5qeThhUERCUmVRQng2RGpoWVQ5RmRURnlxdGM4b292NS9vNnRZOFo1K3RB?=
 =?utf-8?B?MkFJeXppYTJCTEd3a3hpMnF6enY1L2tIN3hwV0hjVEt5QnVOUlU0MXRnaVJa?=
 =?utf-8?B?eVlCN0h1bXRUMDhPV1UzYmV3UHBFVHZLOHR1V1hWT3MrbGsvL21MNEJxTE0x?=
 =?utf-8?B?bkg5OGliRUtKdDY2ZWl0by8xZEhpalhnaEswcGdQYUF6UWNyTXJSYk42L1JQ?=
 =?utf-8?B?dDRZUmZNVVlwTERjejM0YWZ6T1lDV080bVpBY01UbWhkM2pDZktiaHd5NGNP?=
 =?utf-8?B?M0U5U1RmaldwcVNvRGR6WEdQak5COS8wN1JJK01SL3JOOGxZRFhqSHdVTWt2?=
 =?utf-8?B?dGYzUW44aHE3UnVjRmY5UHRCQW5ZZGV1RFFCY1BmaG0rWmQ4d0ozSDhnYnM1?=
 =?utf-8?B?QlBMeUNRRW92bUZsQUZpSUd0UjVUS0hyakRWZ2N2Sm9RRWtGZ0NlNE94YlBy?=
 =?utf-8?B?YVFDNlk2TFMrVk5VUEZtL0lsaW0ydkx4MlJuWW5NQjl1WENxaHB3OElVSThk?=
 =?utf-8?B?YzVqc21GKzZOdVU0anRjd3hjRStrNDdtbXlBRnRBTksxY0FYZVd4clFlN01h?=
 =?utf-8?B?bWI1Tms2RWZFQjl2QmtzbVhXcmZtRzhjcG85YjlTN2o2alJFMDZMejYzNVJ2?=
 =?utf-8?B?WHNTVFc0cUwxL0JIUjVScTN6U050K2g4NlVjaE95UkhGWWxsdjlsZXFSRkgr?=
 =?utf-8?B?SXdQTHljMGZYNUtpVTBkUUMvWWlrSTZWUU5teTVEeGgyYlFUeDJWVUNLOVc0?=
 =?utf-8?B?d1A1NDN0dndvSzNSMDVGSkRkMENEVXZlZWNNdkN2VU5jRXMzOGptMktLbXdM?=
 =?utf-8?B?QWx6aWRFdjlQbEdUSWlVVmNVVkRBZkJxK05MSEJCQVlGRHFtL2R2amdhUWwz?=
 =?utf-8?B?TDRqR1hqWWxlSjRoaENabTJxMUZPT3oxR3ltc3MrMWJ5N2QyL2g4ZXE1MmQ4?=
 =?utf-8?B?UXo5SjBNN3AxREpPMHFqR3JnTkE5VGpKcXhONUFXbkxKQnNnRU9SWmsyOU5O?=
 =?utf-8?B?YTc5aVF0SWRkcHVjUWhqVlhneTFyazZ5eHZZd05ISE9KbGdFZGZjdENra2p6?=
 =?utf-8?B?VGJkcjB6RkNxSng5M09BQ1ZJdzRndjhGMUxiZlJ6WmljOEQ2Y3VFRUkrQW50?=
 =?utf-8?B?bUMwRFZBbGE5akJIZmRkcmdOem1QT2RWNk4yUHJleksyUjlGZW5VSVZjelU3?=
 =?utf-8?B?Sk1zWG5LcUw3R2JXTUpaZ1RydndDbitCU01hdmNuMktWdXZtRkZYd2pLV0s0?=
 =?utf-8?B?YkhuOTlGcUp3dHJtRDN4OVBzNmEzVE82YkF0SGxZcFVsUVRsbEdtdVBrWXhE?=
 =?utf-8?B?dlBWU0R4OFcxZEFsWEozOGNlQ0lXaUhIRXVLQlBtd3NzbzNKa0tVSk5TUFdl?=
 =?utf-8?B?eEN0Y2plL2hiRlY1V3NVMHdhbTB5ZFk5OU51K3Y5MHFZbEUzeXIyRURWNlJz?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 893de315-93c4-4304-6467-08dc4867360b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 22:52:10.6074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jd4chLtbifvmcy7suPlFtBrnDvB7JoP2YigS6wtS5gs8NZacDVMXszy+uZX2xRlhwv4VnYtc4etZ+fc7Yh8qCAjEDl9n4zKXN/Bf6e1FOyY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710888736; x=1742424736;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UKN8/nBQgZHKPlrJ3N+RHm+8X2U7U4mXG230CVul/p8=;
 b=AOoLLAZtog9kimuP7uSqSXhwP7mHN+YrnccUtLr7X2TsbQ8/+TZquvH1
 xqzIMn2g82YjZF3Ff7EXC42klRi6+IUCq+rPPMg3PjoGIfqPXwxwyHxMi
 wyST1gmE1Ktka7KFfgYMKTxYvC2593txDUyfU3lczvXprDW0WvgLDJhvp
 O4C6eYzqZnxDPbsjg11exji9puPaj3sc1gYCJw1m/D8MAoUQR0Q928w0f
 A2rvMSERHvM6ozqFoONA6pb0hkXBZdfEd1WL9VRz1VEH0eXoPq+SQFsww
 GMpxmnJGIcDJn0BRCiF4SzUwbNCZUAvyQJ/mMTvIqKZGRR1bDNJFUy4LQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AOoLLAZt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [EXTERNAL] [PATCH v5] ice: Add get/set hw
 address for VFs using devlink commands
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "aharivel@redhat.com" <aharivel@redhat.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "cfontain@redhat.com" <cfontain@redhat.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "vchundur@redhat.com" <vchundur@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "rjarry@redhat.com" <rjarry@redhat.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/18/2024 8:04 AM, Wojciech Drewek wrote:
> 
> 
> On 18.03.2024 12:55, Karthik Sundaravel wrote:
>> On Fri, Mar 8, 2024 at 3:28 PM Suman Ghosh <sumang@marvell.com> wrote:
>>>
>>>> ----------------------------------------------------------------------
>>>> Changing the MAC address of the VFs are not available via devlink. Add
>>>> the function handlers to set and get the HW address for the VFs.
>>>>
>>>> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
>>>> ---
>>>> drivers/net/ethernet/intel/ice/ice_devlink.c | 78 +++++++++++++++++++-
>>>> drivers/net/ethernet/intel/ice/ice_sriov.c   | 62 ++++++++++++++++
>>>> drivers/net/ethernet/intel/ice/ice_sriov.h   |  8 ++
>>>> 3 files changed, 147 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> index 80dc5445b50d..39d4d79ac731 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> @@ -1576,6 +1576,81 @@ void ice_devlink_destroy_pf_port(struct ice_pf
>>>> *pf)
>>>>       devlink_port_unregister(&pf->devlink_port);
>>>> }
>>>>
>>>> +/**
>>>> + * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink
>>>> +handler
>>>> + * @port: devlink port structure
>>>> + * @hw_addr: MAC address of the port
>>>> + * @hw_addr_len: length of MAC address
>>>> + * @extack: extended netdev ack structure
>>>> + *
>>>> + * Callback for the devlink .port_fn_hw_addr_get operation
>>>> + * Return: zero on success or an error code on failure.
>>>> + */
>>>> +
>>>> +static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
>>>> +                                        u8 *hw_addr, int *hw_addr_len,
>>>> +                                        struct netlink_ext_ack *extack)
>>>> +{
>>>> +      struct devlink_port_attrs *attrs = &port->attrs;
>>> [Suman] I agree with Wojciech about using container_of:
>>
>> [Karthik] when I use container_of(), on some occasions I get core dump
>> in get and set functions.
>> These issues were not seen in the earlier versions.
>> Can you please suggest any pointers on what could have gone wrong ?
>>
>> struct ice_vf *vf = container_of(port, struct ice_vf, devlink_port);
>>
>> [  597.658325] ------------[ cut here ]------------
>> [  597.658329] refcount_t: underflow; use-after-free.
>> [  597.658430] CPU: 18 PID: 1926 Comm: devlink Not tainted 6.8.0-rc5-dirty #1
>> [  ...]
>> [  597.658506]  ? refcount_warn_saturate+0xbe/0x110
>> [  597.658509]  ice_devlink_port_get_vf_fn_mac+0x39/0x70 [ice]
>> [  597.658607]  ? __pfx_ice_devlink_port_get_vf_fn_mac+0x10/0x10 [ice]
>> [  597.658676]  devlink_nl_port_fill+0x314/0xa30
>> [  ...]
>> [  597.658835] ---[ end trace 0000000000000000 ]---
>>
>>
>> [  859.989482] ------------[ cut here ]------------
>> [  859.989485] refcount_t: saturated; leaking memory.
>> [  859.989500] WARNING: CPU: 0 PID: 1965 at lib/refcount.c:19
>> refcount_warn_saturate+0x9b/0x110
>> [  ...]
>> [  859.989671]  ? refcount_warn_saturate+0x9b/0x110
>> [  859.989674]  ice_get_vf_by_id+0x87/0xa0 [ice]
>> [  859.989777]  ice_set_vf_fn_mac+0x33/0x150 [ice]
>> [  859.989858]  ice_devlink_port_set_vf_fn_mac+0x61/0x90 [ice]
>> [  859.989940]  devlink_nl_port_set_doit+0x1d3/0x610
>> [  ...]
>> [  952.413933] ---[ end trace 0000000000000000 ]---
> 
> Ok, I think we forgot about kref here.
> Once you have a VF pointer you have to inc the ref count using
> kref_get_unless_zero and you have to check return value because the VF
> might be already freed. When you don't need the VF's pointer anymore call ice_put_vf.
> Would be cool to have Jake's opinion on that though since he implemented it.
> 

If you can get a VF from a devlink_port which is embedded in the ice_vf
structure, then you must guarantee that port is still valid for as long
as the VF is. This means that you can't delete the last reference of the
VF until the port is removed I think. This is tricky because we have
multiple ways to get to the VF now.

What manages the life cycle of the devlink port associated with the VF?

If you obtain the pointer to the VF via "container_of" on a valid
devlink port, you have to assume that having the port implies having a
reference to the VF, and that the port won't be destroyed before the VF.
For this reason ,you would a) not use get_vf_by_id, and also b) not
dereference the refcount using ice_put_vf.

I suspect that you accidentally still called ice_put_vf() in the case
where you used container of?
