Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9419896C4C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 12:27:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9126C416DD;
	Wed,  3 Apr 2024 10:27:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CSEN5VNLa00o; Wed,  3 Apr 2024 10:27:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0E6D416B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712140046;
	bh=KY3RiYgYAZkV7OKIygBdtVsQQjYhzwbw/Yc9vbgXtpg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uGUSSDY2fNS5iDHYc+46O7zdSDHRVXVrvWSF07kBmfQRYt9T2xXFZJsYiacfJBNuy
	 Qw3OUvOUbeNP2mnD+CZ7kHxqKM48/8nGVO9GGsaOJlH3AHfvt1owAkuRV5mUYyJ5+i
	 ePDrBMPs7CoHv2aX+uB4z1GtCytf/u+LPlxHJg24zkUgRepe8SkGz9J/eERTz62jIq
	 ht9gbxjnr72pKkAx1nKpsqmr9vyN2AinhEUaYSS9PhEIDufAhuig8hb9vaHzBIq1Wi
	 5W/CvkvdOulbBeKHzRWX9xOdA5r5Epk1ddxazAEikdJh+0HEb02dqTT9O2jXN9QvuC
	 3Td4V+8IaogUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0E6D416B7;
	Wed,  3 Apr 2024 10:27:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C5751BF349
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6502B60E18
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2YufSIyqrfM2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 10:27:23 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 03 Apr 2024 10:27:23 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E4E460D77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E4E460D77
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E4E460D77
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:27:23 +0000 (UTC)
X-CSE-ConnectionGUID: bu/ZSjWPRBS3zW4+W/ZjXQ==
X-CSE-MsgGUID: sT8AX24STzW6K4L6WegbUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7520682"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7520682"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:20:14 -0700
X-CSE-ConnectionGUID: InwUHsXdTTCYU8yFozzRdQ==
X-CSE-MsgGUID: 8B48xVU5Q5GZpLQm+zv8zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="22865885"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 03:20:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 03:20:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 03:20:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 03:20:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 03:20:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0lL5rf7vDX/8qN+sroBeSRXP0xsuTligQ1ziQ/MK0Mxygx9cFgvDI248gKoMANCMNdPkVQIlJg2qevoJ9qvO2gXIOFdP1i/2B+AJidGP4oLkViclXRq5tNUmdRI/qIYgymlA/vzmv4q5yFdg0nB88pwCnr2CoUhx2NavqMw2HmnwTjfKOFCTj+78DjitNttbt200jdwf/4ED5kV5Zu6xw4+L8yChZsx0XTamcCmOarXjvYrnFV+0gm4QFzOhCqTCaSScRSwImf9VoVkW6gu3EXL1UhnvpV5DJwxg9DkfNdG57GUaNeho8cGPyXxwLynAbhtKmwKpcqJQxkgXR9YCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KY3RiYgYAZkV7OKIygBdtVsQQjYhzwbw/Yc9vbgXtpg=;
 b=lWiaqGFCKCqgfpxwiktGgT4Lte1F2qGJFKayWDg75KorhDlR3pPR5+zC+wagS/YHLizKpMTDdyVmKerDWHdrqoeKo75GdXFrksSBZLciY6Zm0WgSCy6Wmf2k+H3R1hCdwPeCfeLJXM5r4+u7ja8vuxo/R32KRuewhRNED7lhu6OX05SO0If9btibj2Sj1fqErXIGIGa7bvlPwcfTVNSUkVMXeqmX2zl9jgZCGiOkCeO5kqZCWmbFRhO4plpAmMetjYeRgDxvO9kr9VULROanH2Z+QZyGzLYt3Kspe5Y5fr1WYfaHGW86KZkpbB0itQ4Uf4r39VgY3HeKC/I9p2vGyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SJ0PR11MB6768.namprd11.prod.outlook.com (2603:10b6:a03:47f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Wed, 3 Apr
 2024 10:20:04 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 10:20:03 +0000
Message-ID: <348ead57-cdb8-4db7-a3d7-e8053a5f00c1@intel.com>
Date: Wed, 3 Apr 2024 12:19:57 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <20240329092321.16843-3-wojciech.drewek@intel.com>
 <20240329152954.26a7ce75@kernel.org>
 <f7c6264e-9a16-4232-aba2-fde91eb51fb7@intel.com>
 <20240402073421.2528ce4f@kernel.org>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240402073421.2528ce4f@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI0P293CA0009.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::6) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SJ0PR11MB6768:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /yPBBl65dASjdLfLB4WUzPlGPHVy/4zrHjS5gMe2dglP+vhq1jIfSaGp7oBYxNa5OaYIb2W3dhHiVYLDh2RLpGS7cqkQ4jUKjoaKbZGXHg9mQfMkK/cTgfdhm4d6t60aw1WBrbtg7VPI9d0w+jGQBqO5zOe2eEUUj4Mv0dTpos+ZCddAL9RJad22lDt13yoYT1Y8Uz1drpM0p5lnIABTKF8W4Ehc837SnEV8STbwISmH2PPK39qD/Tg0WL5KK41Vcbl0zgGej7kR+GxlpD80btGbxpD23w+fC6vuyF9U82AgiqCb7bVrN2L0isOWgidkLEycJv3/CKHfOVMjg7JXHqvYaL1J9cFyfMc8uNvopgMwGKPOslnwwWxLi/9gSicandHVkY6Z0mUVVPdZufnclYwV/wJvZnLBof3juue+a1/JSkzcCKATonZ0t2qybe4hy3dH3mUuQDOVoAnfJy2jjaDIAjCJ2j9sfGIlfKhv/leEa9vnWV7v7qYMTb49YEsvvI/gvv69N+zV+cO7zOPnL/JteE0IsFlHp8BM8Fk3fO+Bt5IHvMKjbisOgESKgQnnfz90l4r6dpvqmby9UffsFdcAsvFFER40k3K0EaAkGCluz3gRfzNS5EiiSOSrqZJ0p7Qm84l4WZt2Q2PWR7Y75MDXIpl3LhF6pUsG96hUXRo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWFGdkdUZHp4S0wwdFkzT2IralVyK1B4NGV1L1hVQTNwUG5xb1hFSmRRbW9x?=
 =?utf-8?B?RE41d2tIUmVGbWdxVWFaUUVpRzJ6M2IrRFM0TGY1a0NjWnJyWnNqT1FhL2Rj?=
 =?utf-8?B?TjFmUmJxQ0I5TUhpOHRxZDFZQ1FZRGVoL3RJQmVaTTR6cXFGbTlzVFFhNmEw?=
 =?utf-8?B?QUhHRjE2b1V3NnAweTVLaFp6WTBDMFMrSnJIWUtiUGZRVit3RHdYMDQ4bStF?=
 =?utf-8?B?NWQ2Nm5VN0lRMEE2RUlpV1Q3R1E3L3djdHVOS3pIeklzZ0lVZXphakpZUnVz?=
 =?utf-8?B?MTZndGdiWS8xbnZ3aldLT3BubTlqZEpMVkFrZlhqTlZQNWh3R0hjWitTWWNq?=
 =?utf-8?B?RVA1ZUhrWWlHQ1Yvd1l2MThrb0lpT3NQMFJWM2x4OEtvblpxZXdKaW5qMVBM?=
 =?utf-8?B?eU1USzZNR1BzSjgzUFg1MWVnZE9CVmZLdlNJLzl3UENlNTV0ZmNLaUVyTFZx?=
 =?utf-8?B?ZzVydW5NbXkyVUZkampUTERhVVBJZExDbC9nM3N5eTVEVXA0Wm9BV0I0SjVr?=
 =?utf-8?B?VGVETnptOWljaGEwekUrZ1lRK2EyNlRrS3ZXbEExaEMya0xaUnJmQ0k3Y3Zs?=
 =?utf-8?B?NTRHdDJiTUN1T1l5MEVqb283S2xLOStMYlRrOVJJSzdHNmFUWjhlemViM3Rr?=
 =?utf-8?B?NmV5YndVejVZUldBNHRpaVJ3V080TUkwUjlUbktTNW5QazlCLzdGRlF4dDk2?=
 =?utf-8?B?bHFSZ1dTTEx0bEUxQWZ6YUhIUnVDY0RLZFZJbklyVGY1ZkMwMzhWNzdGVkRN?=
 =?utf-8?B?QS81ay9nUWpQekRsT3pSUld2c0N1VG9sZnJlNXlnREl4a09ncmZKZEJERXhq?=
 =?utf-8?B?OUhZdHp3bFdRS0RDRld4MnZTditYUDd0d0dTZ1didmVDZjN4bmhxNUs3aEpl?=
 =?utf-8?B?NzQ2SzM4dTZ1WEtvdHNrTC80TitRanoza1RiVWo1dlNnNytaMXNjWVlITGZ3?=
 =?utf-8?B?Qjcra1VkbkpxaXVrOUVlL2xaZWk2N2ZHZjF0WUJzbXlDQjBObndWQXIzUEl6?=
 =?utf-8?B?SWs1ZGhZRWYzOUpNYmFQZ0xiTTZDbzVZVHNVVVVFbGh6OXJaQzB0blp0VmVp?=
 =?utf-8?B?Z0NyU2NXYWJnMDRrUjBVc0NMTnY4Nm4vajgyWUNDL3NhVC9lV3ByOHR1ZDI1?=
 =?utf-8?B?MXpaTTBSTURBeXVHMG9YWFhXa1E1bVFHcjhRZW5UNllzNHhDNS9LZncrMFRh?=
 =?utf-8?B?cVBpaVd4aTdReEE3bjVidjJqT0VFOEJZQUdXZ1ppTGhCSDZWYXNWSGREdnEv?=
 =?utf-8?B?dWtzVU5GZzdDTDhQZVpOT002QzN0Z2NQN2xpMXErUWw0R0RCKzRoSGtKSkFr?=
 =?utf-8?B?ZHFkWmhrNlFhUUV1ZGF1a3dXTWZUT2hmTUIrSjloMEN3ZG90SndHaVBGUzQ5?=
 =?utf-8?B?ZkRyQkVJdS9WeW1iQnRqZjYvWkY5b1pYZW1rc214MXZaeVByY3BQN213Q3Rx?=
 =?utf-8?B?bUN3WDZsSHJSYkoxb1dnT1FEKzE1VEoxWmZ4ZlZlR1pWamF4M0JMLzNQNjA5?=
 =?utf-8?B?M1ZpeHZUL1RpNUx5TURYRHdqQnY0MlNpM3RISG9lZmloY0RmRVJVWFFMV1hQ?=
 =?utf-8?B?UjdqOXVOQmRjVlVpZ2svaUlIajZnemg0OGpPRXJIMzZsNGhNT0NEeGxaVGJk?=
 =?utf-8?B?anRpbDNBNHpVb1VRRTkweDdHMFoyR2d4NVJMd3hwdXowNkkrZmtUaDJoOW9X?=
 =?utf-8?B?dzF3ZmV6T0dsaGloNmZrQUlaU0FURjNYSTIvOWtMNWtqZ0V4SzhHQUZiZnd1?=
 =?utf-8?B?WHVMSXROR3Jrc3UrcWVtTlp4ekw3M3lUQjdjL0c3SzZvMHAxb2orVFZvS1BC?=
 =?utf-8?B?T1lvR0VlZzB5M3VGMm5hbDdHR2dkRHpsdUJpVFhWZEVOQjVKcWZaQ0JaUmZP?=
 =?utf-8?B?eXUrOFVsbTVIUEpRWFFxa05vNFJhT2k3WWhpbVVCSGxFNzA3MmhzbytDdmU1?=
 =?utf-8?B?dUNXZVhwaUorV2NRUTlVM2hRMWlmQ1dXV2lESFRINXY3VlYwRHMvN1YzNlNT?=
 =?utf-8?B?L0w5QVpwVzNxVmtJKzcyOE11a0E0N01Nd0dCbEU0QzF2bUNPWlYydmFpcW8z?=
 =?utf-8?B?VHNxKy9idWZQc2Ivajl3eEhvRHpmcXhXV2JvaU12ZTdoU2NKa2xwR0tja29F?=
 =?utf-8?B?Ti9YN0VFQ1N2NG0zSDlQVzRPVkVqaGNUd3BMT2lqYU1pdngyRDcyK2ZyUk1y?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fcad343a-22f8-4e17-c507-08dc53c7a08c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 10:20:03.9439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1SQO/ieApOKD9IVAyiBvXS4kMopH9DF80Whsl81BB+l+xKjCxNHhOaypvCajgiZ4JR9nkNrl5HlEsGQ/i8aLSqbuxkzEB2LB9sEYsOxylUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6768
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712140043; x=1743676043;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bkBNn/nHsnJhCe012+WVHieWlwgEddlc76DN7URwC6Q=;
 b=Eh0goiENGj9W7vJ0vnLwm4CvzorQ34NRQR0HWroL5f7jrnZb0eDNT3J+
 ygwWimm189BeEkSVFvaFa6C8XxUYjNljDKkK7O90RycKQCzR8y0MH7C7+
 DtrXds978ckPMEeQ4KZ7q2v+D1q9f2PKRiuzKQLg7bXczvQAkys+MqCJX
 V9bWUPXtqOgQoFIgpnW+lDIG3HMmvu/+ZjuL4Wjw+dsWQmaYfWXtHOWxs
 Y/ePOYr8hG/BC2be3uUZycunbhMGGr7Y75FvlFATqhf/iPlhmw/1/LfkW
 59+3aPNMpddpqLk1v1H+ssQymWmU1UieEn4/3gReyDOKvsxr3e/Z/aBez
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Eh0goiEN
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ethtool: Introduce max
 power support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, marcin.szycik@linux.intel.com,
 anthony.l.nguyen@intel.com, idosch@nvidia.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 02.04.2024 16:34, Jakub Kicinski wrote:
> On Tue, 2 Apr 2024 13:25:07 +0200 Wojciech Drewek wrote:
>> On 29.03.2024 23:29, Jakub Kicinski wrote:
>>> On Fri, 29 Mar 2024 10:23:20 +0100 Wojciech Drewek wrote:  
>>>> Some modules use nonstandard power levels. Adjust ethtool
>>>> module implementation to support new attributes that will allow user
>>>> to change maximum power.
>>>>
>>>> Add three new get attributes:
>>>> ETHTOOL_A_MODULE_MAX_POWER_SET (used for set as well) - currently set
>>>>   maximum power in the cage  
>>>
>>> 1) I'd keep the ETHTOOL_A_MODULE_POWER_ prefix, consistently.
>>>
>>> 2) The _SET makes it sound like an action. Can we go with
>>>    ETHTOOL_A_MODULE_POWER_MAX ? Or ETHTOOL_A_MODULE_POWER_LIMIT?
>>>    Yes, ETHTOOL_A_MODULE_POWER_LIMIT
>>>         ETHTOOL_A_MODULE_POWER_MAX
>>>         ETHTOOL_A_MODULE_POWER_MIN
>>>    would sound pretty good to me.  
>>
>> Makes sense, although ETHTOOL_A_MODULE_POWER_LIMIT does not say if
>> it's max or min limit. What about:
>> ETHTOOL_A_MODULE_POWER_MAX_LIMIT
>> ETHTOOL_A_MODULE_POWER_UPPER_LIMIT
> 
> Is it possible to "limit" min power? 🧐️

Right, I'll stick with ETHTOOL_A_MODULE_POWER_LIMIT

> This is not HTB where "unused power" can go to the sibling cage...
>>>> +		} else if (power_new.max_pwr_set < power.min_pwr_allowed) {
>>>> +			NL_SET_ERR_MSG(info->extack, "Provided value is lower than minimum allowed");
>>>> +			return -EINVAL;
>>>> +		}
>>>> +	}
>>>> +
>>>> +	ethnl_update_policy(&power_new.policy,
>>>> +			    tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY], &mod);
>>>> +	ethnl_update_u8(&power_new.max_pwr_reset,
>>>> +			tb[ETHTOOL_A_MODULE_MAX_POWER_RESET], &mod);  
>>>
>>> I reckon reset should not be allowed if none of the max_pwr values 
>>> are set (i.e. most likely driver doesn't support the config)?  
>>
>> Hmmm, I think we can allow to reset if the currently set limit is the default one.
>> Right now only the driver could catch such scenario because we don't have a parameter
>> that driver could use to inform the ethtool about the default value.
>> I hope that answers your question since I'm not 100% sure if that's what you asked about :)
> 
> Let me put it differently. How do we know that the driver doesn't
> support setting the power policy? AFAIU we assume driver supports
> it when it reports min_pwr_allowed || max_pwr_allowed from get.
> If that's not the case we should add a cap bit like
> cap_link_lanes_supported.
> 
> So what I'm saying is that if driver doesn't support the feature,
> we should error out if user space gave us any 
> tb[ETHTOOL_A_MODULE_MAX_POWER* attribute

Ok, I get now. Normally checking ops->set_module_power_cfg pointer would
be enough but here we have two features in one callback. Right now I assumed
that the driver will check which attributes were provided by the userspace
and will print error (like I did in ice_set_module_power_cfg) if the driver
does not support given attribute.

You're saying that if min_pwr_allowed or max_pwr_allowed taken from get op
are 0 than we should not allow to set max_pwr_reset and max_pwr_set?
And similarly if policy was 0 than we should not allow to set it?

I can implement whichever option you prefer.

> 
>>>> +	if (!mod)
>>>>  		return 0;
>>>>  
>>>> +	if (power_new.max_pwr_reset && power_new.max_pwr_set) {  
>>>
>>> Mmm. How is that gonna work? The driver is going to set max_pwr_set
>>> to what's currently configured. So the user is expected to send
>>> ETHTOOL_A_MODULE_MAX_POWER_SET = 0
>>> ETHTOOL_A_MODULE_MAX_POWER_RESET = 1
>>> to reset?  
>>
>> Yes, that was my intention. Using both of those attributes at the same time is not allowed.
> 
> To be clear the code is:
> 
>  	ret = ops->get_module_power_cfg(dev, &power, info->extack);
>  	if (ret < 0)
>  		return ret;
> 
> 	power_new.max_pwr_set = power.max_pwr_set;
> 
> 	ethnl_update_u32(&power_new.max_pwr_set,
> 			 tb[ETHTOOL_A_MODULE_MAX_POWER_SET], &mod);
>  	// ...
>  
> 	if (power_new.max_pwr_reset && power_new.max_pwr_set) {
> 
> so if driver reports .max_pwr_set from get we may fall into this if
> I think you got it but anyway..

Oh, I see, I'll check the attributes at the beginning before reading them

