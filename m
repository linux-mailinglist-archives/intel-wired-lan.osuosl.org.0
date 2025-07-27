Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0CEB12FC6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 16:04:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DD0241CD0;
	Sun, 27 Jul 2025 14:04:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UVOYuqcI8my5; Sun, 27 Jul 2025 14:04:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E01441CBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753625061;
	bh=7B+MNFC/TUhqkSZeeB3eHFPdXejvPPYIhjVjKzgYiaY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7QknDoBONelxJc45RLNnAnhKF2CfCo0I8aYycPqoYexFxbc8baP6Cnxuod6iGgJin
	 Byc1fryw59CKT9CSVFfflfFnsoyE480fYlEBrQMi0U3jiEliu+sDZ4BfydVbRZEnqe
	 De05GMCF5fR0p1QZW6k4c1Cs15PkCpcidvllAxjTt0/HRsj7f4H+45Thf4SUTvpF3D
	 JkhBQ92rwQnpzjwDF+odF8Rf0S7G4EG9zxixXyXijnrajznErONSqNHi7lHh7NW4ZX
	 btUUHlnbI3P6AApylyIC4KK7PJLCtz7U+0E0/IqipxOuX39++rU+3GHmTCQ5wid/Kv
	 YGBwPBxDvt0Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E01441CBA;
	Sun, 27 Jul 2025 14:04:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E3AF2231
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:04:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA0D740077
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 14:04:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rWUIYNYBrD8Y for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 14:04:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C15E940ABE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C15E940ABE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C15E940ABE
 for <intel-wired-lan@osuosl.org>; Sun, 27 Jul 2025 14:04:16 +0000 (UTC)
X-CSE-ConnectionGUID: uaxkXpn0TiGDfyZjBydFmQ==
X-CSE-MsgGUID: Ot507C1aS3irBjc3C/5I1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="55771718"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55771718"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 07:04:06 -0700
X-CSE-ConnectionGUID: bAgHPXfTSumxqL3f004ACg==
X-CSE-MsgGUID: ydZWNlSTTW60b7agwgZC/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="161871990"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 07:04:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 27 Jul 2025 07:04:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 27 Jul 2025 07:04:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.69)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 27 Jul 2025 07:04:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YebKyJ67FV+XK4ZGFYv25N6DPvZA6MnomYPE445OXG0gODl3KIYkd0TUqJztOLZ3s/wh/yrpDnY6QWwY/t63Qq7+EiW6UHrQ6mzrza3cXGMAoAcDxtm1CLRpdLx7iB7x3BfhZYGpuHXOv9Lbjg0hWRFP1+YWTFlQGP/cI7PAOMizfL70FcZXnu5Mtz5hBYT49Fkag41qA7WofFmVwfh0Cq7ZdXkR+Q9fa7o96eqUF6HCSZ/KfPCOWrlWV9mqIULCoS7bHcNTdBjOiD21SACv+glBaKriG4zEn7JN6yjdeVoK+qcPRoKDdhKv9BUQui60WMp/1q/zMcrcGVlcPl51Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7B+MNFC/TUhqkSZeeB3eHFPdXejvPPYIhjVjKzgYiaY=;
 b=lwIL/X7GuebLdAUAOcdP6UCP8kiaHac52vXDC8BzEHCVDG/inr7SS1BhFurwlNaBwf6lUAyjpijDcy/UMvFIGiM6gFF6Es+i95Qdnu+yDcNFKHpOkZ1XX6/eNUgE2XOrRuCIpBkGyPedQECDiI40CyCeZdNcvuJTYa13C9PBBi32xrgGJI2EOGdcIl5RF90nHSb0x+fCnvwkMD6qV1Hip82JcqJsKMbM5cBRXp3+SurBPHY0kdxoVF1XbjmJv8GQXhraiix2sHIjv89Dw3e6nG7OUl0BMNHZVKpHcKMlwZKFXsGK8IgDvMxvfjrX3D+jsv2+hKidV4/kdMWoKDpYYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3SPRMB0026.namprd11.prod.outlook.com (2603:10b6:208:575::6)
 by DM4PR11MB6334.namprd11.prod.outlook.com (2603:10b6:8:b5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Sun, 27 Jul
 2025 14:04:03 +0000
Received: from IA3SPRMB0026.namprd11.prod.outlook.com
 ([fe80::7d8f:a435:614:a319]) by IA3SPRMB0026.namprd11.prod.outlook.com
 ([fe80::7d8f:a435:614:a319%3]) with mapi id 15.20.8901.036; Sun, 27 Jul 2025
 14:04:03 +0000
Message-ID: <c5766eb1-e770-4512-9141-d957d23e9d65@intel.com>
Date: Sun, 27 Jul 2025 17:03:59 +0300
User-Agent: Mozilla Thunderbird
To: ValdikSS <iam@valdikss.org.ru>, <intel-wired-lan@osuosl.org>
References: <ac3d9591-f564-4306-9638-989ebb328d29@valdikss.org.ru>
 <20250727140011.527375-1-iam@valdikss.org.ru>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250727140011.527375-1-iam@valdikss.org.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0027.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::11) To IA3SPRMB0026.namprd11.prod.outlook.com
 (2603:10b6:208:575::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3SPRMB0026:EE_|DM4PR11MB6334:EE_
X-MS-Office365-Filtering-Correlation-Id: 79acb67f-95ca-4f66-690a-08ddcd16717f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d1BTTnpyK3B1cHNFTFQzMUIrZHhWLzAwK1pxenhQZVQrS2ZvWHd1bFJZQnVv?=
 =?utf-8?B?R1M4SXNqRVJ3UVh4SDdTNkorcHN1OUV0RStvalJmQUk4bytPWFUvVFc5KzNz?=
 =?utf-8?B?QXJ6QytRYlUzTStwMFZJMnpDZlZTeDJZam54UUVBY2l6NW01VmFNTXBXUFdO?=
 =?utf-8?B?UHFUNkE5NGtCU21VbDZuaGJxOVNYVVlPMGFtU2Nqd3JXUXZwNE1oNEdULzhp?=
 =?utf-8?B?b1QzYVlOaTM2WnhrVmlCQmE2VFk3YjBiSXRhbDFRWTkzWVVGdFZ2YktZOU9x?=
 =?utf-8?B?OUJydTMwRGtsOGxuemVhUVc4NnBHT0ZGY2NnczBMMTNlWittQVR3eXRaaDBm?=
 =?utf-8?B?WHA3UGRlQWFiUDNxN09GUFdSNFp0Tzl6ZVBpd3Y5ZlIwNVhJT3hXUU9TUFBG?=
 =?utf-8?B?MkhBSmpCcGtMcVE3UmdVNXgrLzB5MDBsaEV5WTVjbnc2WUp1WWZDby9BMy9T?=
 =?utf-8?B?UXo5MXVwQjIrSU0vRFlTd3F1Z0dyZFE2djZETDZEcFNDSldtaW9RUUdNaThu?=
 =?utf-8?B?TW9iT3cyT3BtRHFHY3UydGo4YmlXRFF6S21lNUpQbGo5azFLL25yYlpyVnBh?=
 =?utf-8?B?MUdOUzlXSWsyakFQV1ZZSThiakovemR4RVJSVFlkbFhTbis5STZhVUNKUy9z?=
 =?utf-8?B?U2JpMm0xbXAzQjBKeWxCd2xtelpRL2Z2YlhsdFV5RGVxem13bUxLWFpZRTdF?=
 =?utf-8?B?SUY2Q1FJY1A1eWh1QSs3aExZTElxTkNKK2gyNXc5ZWdYMXZOTXBnNjdLNUds?=
 =?utf-8?B?aVVsWXVpWHFzVE01ODhINjhtY1hVODlrTVlwZEg1UzB0TTlyNGdGQWpxd0U2?=
 =?utf-8?B?UEE5eFJVL2tkbk8yLzVZdHRLMmtjSzZ5bFJpV2NpWlJpaHRkZUpSMnA1N3B1?=
 =?utf-8?B?UXdwWnZ4WVdZa1p3WjJCWUJYSERSbzVjUm9ScEU2U0ROQkdUZldVQW9PYkM4?=
 =?utf-8?B?b0piaU53eUhsQStCblZTbGJpbmplRUE4blhPMVBmaC9wbVluNEQwaUpjUTda?=
 =?utf-8?B?RnU0cW9uNXBuOFRvSS9pMkZPVEQ0eVZudDU1TzdlMmczNW5OYkZJU0tEdmdi?=
 =?utf-8?B?elJqdU90eUhRcmlaWFN2dU56YjRtNHdUeEdqaVNvTUI0NG9aeXhsNGhPL2xT?=
 =?utf-8?B?MjhzZEVVaUt3Um9BN3hacG1zZGNwMHU0UmpYTnNKR29CbHh6Ykx1aXNEaGFF?=
 =?utf-8?B?MWcvSVkvZzA3Z0hMT0hsSzFobU54bWQ0bi9zNnY2N1oyYmgvUndpV2NxdWxx?=
 =?utf-8?B?aTBIT1ZUSXVMd1hGWE84bEJmZ2FCY1BEQU5UZzFOT1pselFocDcyZnFtb3U0?=
 =?utf-8?B?Q1VHVjhKT0lqWFlJU2M1bTFmRjh1aFAzWGZWYXN3MmNBQ1VicUF0T2VEL2Vy?=
 =?utf-8?B?NWdvTXBZY0RXTnFVaDE2SGVoRW5lRUk4S004VU5PbTFHZUpUQ1BJVEFjaEQ2?=
 =?utf-8?B?L29IcmRObGozNVFndzRrMHpkczY0dXFKbDRPU2lXWlBXV0taTndnaTdBalZm?=
 =?utf-8?B?cGJFY2YzU2t4U2dOMDg1T0V2dlhicG9ucGljZGgzQVN1Y3M1N3lIRGRQTlZy?=
 =?utf-8?B?MkFvMEFXeDdaai8xby9PaktTQzhmU3ZtYWJQeTRxZUdMRGdqNVhwVzFidnVY?=
 =?utf-8?B?eGV3ZE1PbkxoQzdIMkFpMnRSTnNBNnB5b2lSQ0I5ak0wdGgxL3JrSmdzcGFi?=
 =?utf-8?B?REZvQ0d2Q01LWUhzTFh6TlBsdlZraDE0QmJWVGt0YXc0a3YxN1o4d0VyeTRV?=
 =?utf-8?B?aDBKWEZkWDZ2ZG9kOTJIVGY2QWYxMy84cE5leWdCNnFzNFRnaUNwRUJJQjk1?=
 =?utf-8?B?dUxhK1RzVWljMkNDZFRLa1JLeFFzSUMwMVp5cVVxaHRqV1o3WTZiMDQ3QXVq?=
 =?utf-8?B?dXJNNVZ5eWdjZS9reDd1b0RqZjkxRGNrK3MrUFlqTWFodzNIaFQzSGV5UGlE?=
 =?utf-8?Q?9WvAdKiZ9eg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3SPRMB0026.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkxIekx2TVRaSjBGaU5tVGcydWZMVFd6Wkd6ckxHVDdWUVg4NEtRYlFiMDhR?=
 =?utf-8?B?bHF0aFBUaDR4MFFQcVB5cUJRKzM2T0x0UENxL0k2NGZaK0JSQjhZM2R0NXNH?=
 =?utf-8?B?UEs5OTcwbE0rUnZKTjU2WWlBRkpuRnRZaDRSbWpFNTZRRU9MbVlzaFNheGpl?=
 =?utf-8?B?eVY4OHBuc0ZBVVg0N0VwdW9sRnhaelBhblJYRWRQUkhiOXhENjlnN3d4NHlm?=
 =?utf-8?B?ak1XOUw2ejdVc09Jd1p3KzlGcnRzT09vbE04VW8ra296Q01kK1VwdUlVZ0F5?=
 =?utf-8?B?R2hweUhZdFFkWUJBRGhVT2cvbmF3bzdyVEl5T2RxL3NXem5LVTk0TTk4V0tl?=
 =?utf-8?B?TXhNVWhIbEdYRGRjRzhXVmpjVlA4ZUd2a2JGUmhLb3FEQWppUGluRHJEak0w?=
 =?utf-8?B?ZnR2Sk5sYWxSdURadldURHZFNVQyMUYzT08vYnpNMHJHeW5SaXM2cHJCVVhE?=
 =?utf-8?B?K2ZRZXBqNVNDLzRZbk1BTUJGTlBKTE1mRER6YWdQeWVHT3cvUXR1ekcraU0y?=
 =?utf-8?B?YTdzRnNVci9VcUFwNFJ0dWpVay9VQWUxVmZTVUlNbWRaWXBoMEh0M21TZTJF?=
 =?utf-8?B?MVBKSExqdkUvNUY2dXFHTG9GV3JCa1QzNnE4YzNONFM2ejlKd0RaQnpvR0VQ?=
 =?utf-8?B?cFNjVE13WE5JZEdYa0tIa3hEUjRUWjNRYmdNQUpZY2Q4WU5mNWd5MHp2cVdL?=
 =?utf-8?B?WTNTNjdxekZYVEhXajE2SjRLM1VkaVIxdGhqZDdqaFkweUxrZjA1em9MOU5m?=
 =?utf-8?B?aTRsbkpnd1hSOTJnV2UyaGdPaVphVStZTjFQRGlKQlBPOEZKemUrd1hQQ3Zu?=
 =?utf-8?B?NkhxOFNvQU9ORnFBMmQwUlgrc3NzZG1EU1o2WVlHMDBVZzE0d1AzQThhNWFV?=
 =?utf-8?B?andEVEd2cHNWSm5JeFN3amRQdVJ2dzNudmEyYm8wVUtlVXR1emRidDE1Sm9D?=
 =?utf-8?B?Q1JpSDBzditMRmdkY29zeVVHN3IwUmQ0eEZoaGY5bGpSSDE0MEpYMUFvbFZZ?=
 =?utf-8?B?M0JYOG5Kd2s4RjBzNk5FbWtmSmJHR0pDRXV0L2RJU2FodjhhUnRoWDdHZy9o?=
 =?utf-8?B?bDdnM0w3TGYwWVZoTnJ1Z1crOFpwZiszbjJGN1hBUDhoZTh4cHAxeFh6VUx2?=
 =?utf-8?B?dkZ5NEtPU0FoOXJvdHQ0MkpOS04vMUxtRXk4RGV3WFhKcWVXVjR0R0hyeXV4?=
 =?utf-8?B?MHdoSTIzV1JSWEhNa0hNTHBuN3dBQVd4aU1PQmw1ZGdWVDhzcU4yN004YmpH?=
 =?utf-8?B?NGZjcmlyVHRGcDBFSzlqZExjb1VrRWVqR3QzT0NuaUVVckx2TDdJMUtYRVMy?=
 =?utf-8?B?Z1NoTnFDMUlTV1BNc3lLTWV4dkM0ZkVRWnlOVDBkOSs3N29qWDExTlVUSUlq?=
 =?utf-8?B?MGhIUkNsYWtKbUFHN0FyblQ0cHdyVWVqQ2dINDJiUERGaFFvWU10d210MndC?=
 =?utf-8?B?Y3N2d2VKMDlDL0w1NUVTbnJZV3BmTDJhS2hhL1pTSzVkQ1hIekFqY0dBZkJB?=
 =?utf-8?B?L25HRWUvcytzTzh3aGNCckp1eWhsZVVRTGFWVVFlMUxOdnl6WUlXTjNUUlFK?=
 =?utf-8?B?QkFuOUViU0licXdIbnYveUFRTlRheU1rUlJUOTRQOFoyYi9PTzlxY1BSaElq?=
 =?utf-8?B?WTRZRkU1TnNYRUxJRE4wb1F3MWdmejJ5VkhhbFI1RG1qeWlsQ2ZtUzVhbUN3?=
 =?utf-8?B?ZzVOWEkvZlJCV0pTYWd4YXMrWHpvNkZKc05qZys2T0daZEpTemVjQ01lbHVr?=
 =?utf-8?B?dkJBOTZDb0dSUklnWS95V3dueG9MVkowdXV5U1YrN0gvNEh0blppQzErWnBX?=
 =?utf-8?B?TnJpZHJEMWVCNmJDTGt2OER0cHBUb0ZsbFNxVmdXZkQ5K3Yyc2pEcXdjdzdF?=
 =?utf-8?B?aDN1ODJ3VjNPYnZXelprMDVvYmU0ak04NHRpRUVqRXF5V0hIV2t1aS85MlBa?=
 =?utf-8?B?cWlkU0tkSEhlZUZlNHVjOHY2TGIwZlhXZjlqOVo2SlFOQUlTcU5Zd3BOTW9w?=
 =?utf-8?B?dUo1TUE2VFk4eFhESnp0REhOUG4wTnc5Sm1GSjhlZDg2L1VUNGJleFIwU0VW?=
 =?utf-8?B?bUZkZ2tYK0M2RlFuYjJoMHdLVTc1ZUJid0QxTk1CcE1HK0VYaDFxNUhqaUZr?=
 =?utf-8?B?SHBaWjRMcHlKQ1lZNHpXNkdiNWNQT29RSEZxZ2hNMktqZ0VXckU5TENCNWNt?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79acb67f-95ca-4f66-690a-08ddcd16717f
X-MS-Exchange-CrossTenant-AuthSource: IA3SPRMB0026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2025 14:04:03.6137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SZ3s1YmUL83gOV5Sf/bycIzoKkdgDK2neqvc9Lh3YT+aNcMkUQyCd5s4rP+HlGuIGhr40E+fx+u+sI+ZvWh64k3JibLywZF57zvnq0OpycQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6334
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753625058; x=1785161058;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JZNCQdJnOE+Zq/iCMzN2EnUIBlpcNin9tnCfkTm+bCI=;
 b=TcqGPZ+fqmFh+bF4yn4jtj6uUAHjWEnJRZPH+waBqAVlX36xFJWSc6x6
 HzpstcL9gFHwc++LAR6095s9JbZyNNj4nARTKWW6BwHCoeb6HLuTaKPv8
 ND3sZSiwkymzXHV57VR2eJmXewhpZI5uWR9Ukis3vqPH3VeqtfiqjHKgP
 3fu8kFAuS7yPxX0Jt2xtYwFrekbX6HtC15ajueMm7UnfwbDwJdeW8GHH1
 Rtqc7du866TEDJw23EuMcIvOGKwifcSeWafmgkPRIymT8j1aYDeyL6YBx
 emBB5CJzNo0zglx7zr5CBY0murVC6C+7P8eDxUXW7bQyjZbf8I9HymueL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TcqGPZ+f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/27/2025 5:00 PM, ValdikSS wrote:
> Device ID comparison in igc_is_device_id_i226 is performed before
> the ID is set, resulting in always failing check.
> 
> Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
> Signed-off-by: ValdikSS <iam@valdikss.org.ru>

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 031c332f6..1b4465d6b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7115,6 +7115,13 @@ static int igc_probe(struct pci_dev *pdev,
>   	adapter->port_num = hw->bus.func;
>   	adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);
>   
> +	/* PCI config space info */
> +	hw->vendor_id = pdev->vendor;
> +	hw->device_id = pdev->device;
> +	hw->revision_id = pdev->revision;
> +	hw->subsystem_vendor_id = pdev->subsystem_vendor;
> +	hw->subsystem_device_id = pdev->subsystem_device;
> +
>   	/* Disable ASPM L1.2 on I226 devices to avoid packet loss */
>   	if (igc_is_device_id_i226(hw))
>   		pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
> @@ -7141,13 +7148,6 @@ static int igc_probe(struct pci_dev *pdev,
>   	netdev->mem_start = pci_resource_start(pdev, 0);
>   	netdev->mem_end = pci_resource_end(pdev, 0);
>   
> -	/* PCI config space info */
> -	hw->vendor_id = pdev->vendor;
> -	hw->device_id = pdev->device;
> -	hw->revision_id = pdev->revision;
> -	hw->subsystem_vendor_id = pdev->subsystem_vendor;
> -	hw->subsystem_device_id = pdev->subsystem_device;
> -
>   	/* Copy the default MAC and PHY function pointers */
>   	memcpy(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
>   	memcpy(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));

Yes, exactly!
Thank you!
