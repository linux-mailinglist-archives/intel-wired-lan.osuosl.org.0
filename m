Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FX9J5wdw2mJoQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 00:26:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AFE31DB92
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 00:26:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5133611FE;
	Tue, 24 Mar 2026 23:26:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kL215rgjvMnh; Tue, 24 Mar 2026 23:26:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 224446120C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774394777;
	bh=J7LxkzwvqKree9f3O2Wz2FbiLVqha6NRIKppwFSGx2U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nn4I6QPqUn0MiCBjsXIbJhT8gHCFiLo4Y/5hFlPuPv1iQhPce2KzJoYSv6BzobzT0
	 iOwOjpYLUha062Fpb6BDg/ZT3ffdZCwvW6RC4v9+g7SW8RTrR5IMRIJGAFbICYXADt
	 BoAy4j0bkBNlQZpwaD3OsECoLNdWgIxDR9Mt5/l/FJbDtfKXdh0hGpYRNeZJuoLLoY
	 +PP1VdfaSs5cBJoBQHAOeztWdIg+2Z+te6y6/5IG0Ug3f3bVcWCIuv7GYr9mZZSWnm
	 JnKWMCXQXmvzSQcP2RLBfSwoVUff4FekLgiFY9qBqA597SH4+hLxTw0QBLDY0RxMzH
	 thDHrAkNDqCvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 224446120C;
	Tue, 24 Mar 2026 23:26:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7944A353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 23:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5EDBE40A48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 23:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cVdokCTJsLXN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 23:26:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6D10540012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D10540012
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D10540012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 23:26:14 +0000 (UTC)
X-CSE-ConnectionGUID: wIIUWqrpQ7G5OOfnWkCUCw==
X-CSE-MsgGUID: JPE/BrIsRP2jbMDneFIinw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100871652"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="100871652"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 16:26:13 -0700
X-CSE-ConnectionGUID: Vimp4oKWSUKD60bxr4xlzQ==
X-CSE-MsgGUID: JOI9VW5aR/C3mPKyvyRJiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="226138061"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 16:26:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 16:26:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 16:26:12 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.33)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 16:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F/+Pmls83/Am9IfXiejfY83fZFrcSBDeBH9s1lO1Fz9ytwWTDEdp8XqHmDZ+OSm8TuFUJ5+JvonVEwXGGAFj3ao9dWpZLEOxrcecZE4S7seRx5m0hCOFDQKIZMYiZLi+iXExExEH4jnCWSHELt5glOaLWfjws9AHYLqvSKO9Q7w2uxjc1U8c+mP3ysVnc8SueNmhMSsxl64VVCxQxv/QP6T8XfeOyPZSMIesjMn+t1MAiokrGUnd1FU/vNUJe4W3qXtbz81FaevpXAe3mPMw7H7NCxcZzmoRE4OSIUTCuWDU3MXNVOvbvgFL9Fr0ITAA+MovkxA76E3AmIx1F1iPOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7LxkzwvqKree9f3O2Wz2FbiLVqha6NRIKppwFSGx2U=;
 b=Y23Ffkb2y+is/5RFOApt6nWWAipY/PhkW2i/moToSxUZqqF+u6nRXg//TX4Cmwoq5tiMW9f32P0I2YxEzRWjdGTx7T6gmFl66Hw48Z+20zfz+yKSTKDg9hQEUMk8/enFVXFlBE28ahoSc20Lg+RSPA3Cm+22jYNgZO1NI4AgEJVsN3uOHcF04BfseOKHLnL3NUXvjAN4Lt92gFxMmWEl0YZnWGeg1prhMmpETie0Kj2VcJGuzoEJtK+xXlKgFL+xoeuAkVWSGXC74R5ghBb3EwWomoVzZADGTMHZrAltraDmiJlrBNcWPKyIbJJmblOKzc5M2BvbvFQxx9exQayA9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SA2PR11MB4985.namprd11.prod.outlook.com (2603:10b6:806:111::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 23:26:10 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 23:26:10 +0000
Message-ID: <5128e54e-4164-4cb1-8ae1-e58d6a40c005@intel.com>
Date: Tue, 24 Mar 2026 16:26:07 -0700
User-Agent: Mozilla Thunderbird
To: Agalakov Daniil <ade@amicon.ru>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <lvc-project@linuxtesting.org>, Daniil Iskhakov <dish@amicon.ru>, Roman Razov
 <rrv@amicon.ru>
References: <20260318120512.687149-1-ade@amicon.ru>
 <20260318120512.687149-3-ade@amicon.ru>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260318120512.687149-3-ade@amicon.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0335.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::10) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SA2PR11MB4985:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d509d76-6dfa-4bfc-c4e5-08de89fcbb49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|22082099003|18002099003|7053199007;
X-Microsoft-Antispam-Message-Info: d5BREhQKiuRoygOGFUe9uS9fUcqMOioPdaayWstJ5IAkIU5djo9z7cgNrB8V0NthGnraajPhlWdSUu85B9qLO7R/9assNqrY2HEIV5v+njruccDY5qE14gU/inhysjgSa3kSxJHl99t6aGBvs+2iKFyR3iJsIDTi1vQZGSwejHMQpOUvv5XCCBCCEhU3yRXxAn/AIMZuHgh1fubacmddEwYU8A71QvXAbqKdIQpeGgnO5X0ym9h4V3NM1mkhbFLfPPxqZT9ND7Fqs1nRtapinutIm5yW3/yDhyjXinlg2JITBdxdzWWtykGBoHHtzlk/Tco23NDrvfKUZ4aIdohUJCZzH1Ut+XjTNtyOY+g4K6GYW3yPGPGzWF/2ofU0lk3ALjhsvx/QcA7cAkuzLC88cyaKttf/YTbpkJ2PDj/p/OtMA66ybRMDKz9dLwTtc/I/gicIh27KDsenA+RADJMSezxiO+ggy2jGn2hTwH3qh7g7oG5Cpg7VzUjfZAEVESWPeVcVsXcnktuUKw4YnVA/XWJszAMLVyAbu+48rLQXaxIdBzFVfc9MUGx7nmMGrbjcYM/ejS+a7kNKi1jopITnTG0VRWQsOuliSo2enWVHEaA9AbRX2mn9c4y+Mi2A69XhBURYbVdUBTJPoMbQyYp+VtNyqAaclf3WDHoUFYHTQM86IRYJydZ2xzNrw5rnG7BXA1Rg3VdQCB4vgRpes4KKeQ4QHKTMMNaEyYCRy+q95C0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(22082099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVhuV2lhMEhrMXBBcldrL284aGlsd0NMN3IxNW1Ea3Y0QnN1OHJ6Y2tLaSth?=
 =?utf-8?B?VVFJeVNodjBNWlZoeklabCtFOFFIQ21HS0dMRjZaVmU0RzFHKzNUYmZjdnVj?=
 =?utf-8?B?TFFhUXZ4R2ZjVlRDK2FZeG5YcmFFR0w0amJNVkxqVFh5S3g2ME5kRVRpekJp?=
 =?utf-8?B?WDhKUHg1cHJpMzhTbEJnVFM0SVRRRmtsNlBmb3M0SjYzMytFaHMwZmU4dDl1?=
 =?utf-8?B?S3hyanJBY3pWWW9FZDR5aUZzMjNMYVk0MlNkTVREWkkvaXI3THFrMzdCZWlN?=
 =?utf-8?B?Z2EyNEZkdmVsYW45dG5UMEJ2VFBqcWh3d1pNa0ZGNHlGbmlpOUsyOVhDcy9R?=
 =?utf-8?B?bkcwb2h0VlN3RUdHcm1QRDJLcGVuSzRMZ1pDRHUrUlhhbE9PZXNodlF2R0dI?=
 =?utf-8?B?aXRBOUR1SVF5WHFyNld6S2lPOGJ4RmpLbXM0d3NVNVhSQk1UNHF0RDA3ajQ1?=
 =?utf-8?B?Y0ZZWVZPd0tuVktZWVNTdFZCSHd5a2tLZE1lSmdOZVJJaXpnd25aRVdzTGVh?=
 =?utf-8?B?U3BXN3R5czVxMXV6alprSXVzdkFKYitoQVNQT0YzZ1IyRStpdnBTbjZPR0F2?=
 =?utf-8?B?UFdvSU5KTW1QQUN6bEF1Vjd4eVNkNndKaElLejQ5U2EycDlxSm1Ta2djWG9C?=
 =?utf-8?B?REdBTUpkLzY1TzVPaHlOT3lJTmk3YitWb3BXRktPaCt4WVYvMjV6TXg3eitp?=
 =?utf-8?B?U2N5aWxSMHlKRDM3QnJPTVJ3TmtibDRtcVp4NUdVb0xxaG5uVUwzVmtuVXVi?=
 =?utf-8?B?SjFNemlDejFuMUg5SVVYNEpzdjBkWnlXZTJSTi91aUxIaWl0dWJuOWpzMjdZ?=
 =?utf-8?B?akVpVkhmei9FNWQ1WWFsRmMzUlBSdnZMSVl0QVhIZGdkYkJ2UEVudWhyYmd4?=
 =?utf-8?B?WTBkVnlEenAvWW0vN1dmaG4zVy9MNWw5TVZFYVlicmRNSHJVZW1lcUcvdDRH?=
 =?utf-8?B?NFZCK3JmL1QxQnMrOVpwbm5aRDVOeHcraitZdm52UGlVVzVPQjBZQWswajYv?=
 =?utf-8?B?clVlZ2M0Zmxxa3NiWG0yVmtwMzZLWHRydTJYNkJWUDFRbTIwOXQxZ093QTNZ?=
 =?utf-8?B?TEViR001Y0ZFRzNkcm9DbUgrVXNDLys1YVVOZ0lwb3YzcVR5R0p0em1YR0V1?=
 =?utf-8?B?ZEd0THl0NXBaUEYwVzlPbUhBcVhXeWVqME9xbkhsUkkyUXpBY29SNTFEL3RL?=
 =?utf-8?B?Nyt3eXNFTWl5eUxRcWUzWDdWV1pBZ0JGeGJ0eXhTZVVXM2pZd0l5aE04NEhk?=
 =?utf-8?B?QlhpRjBrcHA5MTBQbEJ1eVJMc2pyUFphMXh6cTVxRlA1c1dKc05LSFRWVU9j?=
 =?utf-8?B?dm1uS3hpbW5mVzRkOWZ6M0xtN2ZEWU40cm4ybmtEekVOaDUyZUk0eXpoUkkx?=
 =?utf-8?B?SktKSTh2S1I1b2hWay9OTys3MkhYSk5YdTZNRFlabjllTndSOHVkaWFtTjZV?=
 =?utf-8?B?YVRRRG90d1B5QjdiN0ZRMTNMc29HZlVYSkVCQitxOVpUblkxZ29ickd3NytF?=
 =?utf-8?B?YlpCTUhJNUo2TkJ2Zlh2NmlxOS8wbThmQ2R4V1Y5aWIrY1h3NjQyZ2d3NUZM?=
 =?utf-8?B?K1k2RW82c0xzeHJzNEdEQVBMNW1nWC9yRnJCOTBLNHVoVjR3Mm9BWWt0L3Zu?=
 =?utf-8?B?TmxsajVvdm1kR2tnODVKdkZVVk9Wb3Y3UjdtQjc1UzhyZWJYelNOQjU5akI5?=
 =?utf-8?B?RmNsRnk3ZVYvczIrYmZXbTRCc1E3MGlkRjdnZ29IS09uZGgwSjF0bU9weWxL?=
 =?utf-8?B?ZEQ0eGU0K3VxbnVOSWdDcGtSMDJhVFliMXpxcWcwM2o3MVFramVqeFNEbUlT?=
 =?utf-8?B?cGgwL1JrZE9URDRPTGZnYmNONUdZWlBjeWw0UWtQN1RVWGdXOXBSMVBIaWNE?=
 =?utf-8?B?ZTIxbFFTd2l5VXA2ZzJuM3kvS2JCcy9YZUcyencxZ2VNL0huQkMwNG9uR1dj?=
 =?utf-8?B?RmJ0V3RhQUcycDkrcHlDcmdFY29paEVuZjlDRElBVmszYlJmQnZyaXNIclJu?=
 =?utf-8?B?czBPQ0t2bWk3bTZPRUFQSjRzbEpuVngrUnM4enkvMDFMZEMwVmpMckt1Skk2?=
 =?utf-8?B?Q29hbktERlZ5aFVHdm94VW00d0wwNDBWTlNPQk5pS1BwUWxDTEZWOGVJSmlm?=
 =?utf-8?B?MVQ5b0NWUXZhQVJPblVjVUZFTnhMeWhNcDhqcktLMVBnVzZJWkdRcGc1YU41?=
 =?utf-8?B?QUtQMlFlRW8rVjcrc1BYdnZCUWMxclkyNnNpUWdqQlp5UCs3UHVIY3BQWEhr?=
 =?utf-8?B?dHRiR3JlVDArZ08valFtUVZWcjZyeWNDL2UvTnhIdnRqVnIrSUs5Q21XRTY5?=
 =?utf-8?B?Y0ZlZWJPMHBXU3AydFRlZ2oxalk4RGhLV0lGalNBU1pEeVROVm1MZTdHeVBy?=
 =?utf-8?Q?LU2POMcG8x7KECZw=3D?=
X-Exchange-RoutingPolicyChecked: KWFqirDJdT79SKebYrHkbOeg6if5QFbyMD5MsVloLRqLowRILCqTNEUxqfuEo57Ed+QZVGTq1pU1ZR203gZ/iuiVfjw25c4Z0IQnerUv8yVSPxkpRNEu1BJhr8wqce+vrhyLkBhT0Kq0cQztDeFBceHYIh2pr25HbEskesR8OZiveHr+iPcpjkmYnpdFMgK6T4Y2tyKQ8FQPHkVY3iEIME62rzK8zr0uU2xzM1n9YV3k5Dr0d0lHopLmWfeKcSIKl3uZ4tSyY9eB38HLJAmsHyOwTJXq0N8utOVcdMcCJNQuAibT6MdIDri60SYtKQLN8Ec0pCltttKTOLepmmz2Gw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d509d76-6dfa-4bfc-c4e5-08de89fcbb49
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 23:26:10.2170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S8/wNDiNILHbe0bgnhHX60YoxiLg7VFtxiJThFNUCsA034XN+FwyMlc6GZPwJN54nWebjHmxp+kEpJ3czuPjvDUBYcGFx2Au5kl8CoakPD4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4985
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774394775; x=1805930775;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GHMKM+wMBodEOmGm7Am86g2D+cY7V0PHp/jaqiAM3jg=;
 b=H15Zn/Ny/119Yuu+G1az72HreV4YaQ5JZRdKpUK7PVrmWb6yXdteZcTq
 TguGOPt/hGpjzQ0cMxjlka4LMC5GRWW88OVvLXAeRHWU6dw3ICp7ttUfo
 tfEhBNseG2titdBmrHA9g5YmFc0HsVDxXazs0iB1U2pMU9Rjke150VR9T
 0ceSjIhEgLM4assHDJb3HK4oQfoTBFKlmS07QK9irUennTBxHkpLm6m4l
 PyJUkJDVwW8N1Xn7pbRwg/F++FJWtM0GdsOZRCvG2u0i8wZE6FWoM2DOu
 Etni1Ntqls6H5TsxZMivbkjkc3Wime+/2TVmH3reL7FRwjPWiEej1XQaq
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H15Zn/Ny
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] e1000: fix endianness
 conversion of uninitialized words
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ade@amicon.ru,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amicon.ru:email,linuxtesting.org:url,intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: B0AFE31DB92
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 5:05 AM, Agalakov Daniil wrote:
> [Why]
> In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
> words. However, only the boundary words (the first and the last) are
> populated from the EEPROM if the write request is not word-aligned.
> The words in the middle of the buffer remain uninitialized because they
> are intended to be completely overwritten by the new data via memcpy().
> 
> The previous implementation had a loop that performed le16_to_cpus()
> on the entire buffer. This resulted in endianness conversion being
> performed on uninitialized memory for all interior words.
> 
> Fix this by converting the endianness only for the boundary words
> immediately after they are successfully read from the EEPROM.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")

While this is definitely better, I'm not sure there's a bug here since 
it's being immediately overwritten. Seems like this patch would be 
better going to *-next as an improvement.

Thanks,
Tony

> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
>   drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index 4dcbeabb3ad2..c15ad95c63c1 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -499,6 +499,9 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   		if (ret_val)
>   			goto out;
>   
> +		/* Device's eeprom is always little-endian, word addressable */
> +		le16_to_cpus(&eeprom_buff[0]);
> +
>   		ptr++;
>   	}
>   	if ((eeprom->offset + eeprom->len) & 1) {
> @@ -509,11 +512,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   					    &eeprom_buff[last_word - first_word]);
>   		if (ret_val)
>   			goto out;
> -	}
>   
> -	/* Device's eeprom is always little-endian, word addressable */
> -	for (i = 0; i < last_word - first_word + 1; i++)
> -		le16_to_cpus(&eeprom_buff[i]);
> +		/* Device's eeprom is always little-endian, word addressable */
> +		le16_to_cpus(&eeprom_buff[last_word - first_word]);
> +	}
>   
>   	memcpy(ptr, bytes, eeprom->len);
>   

