Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C068C4C63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 08:36:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FBED827F0;
	Tue, 14 May 2024 06:36:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ezOLna8wspHn; Tue, 14 May 2024 06:36:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17B9582779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715668591;
	bh=f/8ZzDPLE0nAGecd72bUk7Z0els6zL2LQQ22qSxUy4k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9J2tIozpSdnjG2UGj5tCZmI/aVg00l7jC7ZP1wlCZxGhx1iqIIx+4lY3hfOVJou3j
	 4lanCcOMxYuKyRVkDHHJVJaz01cT50UdWT9eAtM58TI/XLkJAmbs2rauVWiBmdLi7e
	 QdgsIMabtRaUuQ7Dnqa019Y83zfJ6z9T2GZ5Df8Z8TL4WNStsQVFoGRrjjgBbgUNgx
	 5QPwY/6b+jeT+kuiDGs1mBWcaypfwxQ22+nygFBru/QAn5uJs/zNXYNj2QBh78UE3G
	 Xak71anORFhdKtgse5RuasOqZbNe43odyARk0JeNnpKgV87UAlRAgRyj5+JJ8lroCo
	 qH6Gila85YXjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17B9582779;
	Tue, 14 May 2024 06:36:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 714281BF38D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D02B405D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:36:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id viUF7ZkvG441 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 06:36:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8F427400FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F427400FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F427400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:36:27 +0000 (UTC)
X-CSE-ConnectionGUID: asN/YpTpT4SDiYXSQw7jpQ==
X-CSE-MsgGUID: AkNKFpQsRuiNGiKQySGkog==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="34148250"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="34148250"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 23:36:26 -0700
X-CSE-ConnectionGUID: BUVVJYW8Te6lqUeonSa6GA==
X-CSE-MsgGUID: +i24169mQ8avwTCa3G/ilw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="68050233"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 23:36:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 23:36:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 23:36:26 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 23:36:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4imd35hJWBK90+hwR1iNZNZnkdYKa0JFB5KTsKXkqb6SKRF8sDVpqh4bQAVmQueS5hFTdaLeJeafkjStwA1U1K32IugFVxV9ULgwPxCbRuWAUS8fkTUvmAF2Wz8xSnnNc8zdqaygQhfPTMyZqtburzf90YEAa/oyvpjyKjl5nq4oTFfWoli19l3ki3UvttL1ZeGRARt5q3I1frOkbprEFTN1DptwgbIu0qGx6k9Zd2yodyavYXa/yp50A8wxV3O7MAI/X9ApScF6a5ecNqj0WayKxkVasji5Ah+jmQgAZADKWoEKsYt3lcBSrSenzrG3WxODw4LFy9qQrtDo9oFBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f/8ZzDPLE0nAGecd72bUk7Z0els6zL2LQQ22qSxUy4k=;
 b=C6ObgG1hbIHxGWY0McQdLKxDHJpNxEY4BjnROr20TwxeejVmGob7RNDv2dzNitrFiA32aN8YzdE4UE/Zj6fXqQdLDhPuIlFUsxZO2TvB9Xos1TFQGERhVvRyNdqwPatE41uBonWPNtcCib4QxNVozr7BH2vDOifhfuXP3GoH7iQX5plLwxGRaLk0OaIRXTSe0sco9URk2cuaYNlCKgSK1uC9d6RNfx9nLXC4rpVdDOqXKxzmPvZWRtZMQpgw3iEjezSJ1ah/U4Wjb8Xi/GvWa6aRKilGTdz5Eg7f6Tb/6p+GI7g6ce44QqEEJmZMH9B0mkGpjT1YBuGGNic5IiNL/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by DM4PR11MB6264.namprd11.prod.outlook.com (2603:10b6:8:a5::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.55; Tue, 14 May 2024 06:36:19 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%5]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 06:36:19 +0000
Message-ID: <65fdf18b-a40b-4f49-b892-c8446e814e61@intel.com>
Date: Tue, 14 May 2024 08:36:09 +0200
User-Agent: Mozilla Thunderbird
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Kalesh Anakkur Purayil
 <kalesh-anakkur.purayil@broadcom.com>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-6-michal.swiatkowski@linux.intel.com>
 <CAH-L+nPnpxJKscC74YoDUr6pirHNuiBBFN8U+o9zRsW8gw2C8w@mail.gmail.com>
 <ZkHp+fIvfw2m4De0@mev-dev>
 <CO1PR11MB50891AEDF7A2EA2D1C394E44D6E22@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <CO1PR11MB50891AEDF7A2EA2D1C394E44D6E22@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P222CA0024.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::29) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|DM4PR11MB6264:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e86839f-c494-41a3-837d-08dc73e02a04
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXFWcnZaRkZyRTAyZnp1WHFkMWY0bUU0NFZCV1RBSkpMaFNkRW1SblppSHJy?=
 =?utf-8?B?N043N05BYWptVHNBMkR1MHRGbHd0YUpmMVR1RGpzVE9NUDMwM09lU3FXVTFO?=
 =?utf-8?B?Z1NFYUxCbmphRVVsQ050MUtkcUZlYnphTXJmbmhhZ3NkdUQwNmdqdXF0KzJT?=
 =?utf-8?B?UjRGSncwR01BTDFlODVPRWhwRXBlZWpJNCtNTzk5and6LzREWHNuT21qQVFW?=
 =?utf-8?B?WTFISDJLUSs0VWZuVHFTVlhQSnVBQ1JyRWZSSXJPT3ZzeTI2dnhvMVhybU1C?=
 =?utf-8?B?WHZOUUVTN2o3V2krZHMwOWF0dUptekpKY2pzMitDQnhWZVliUVhWZEJCMFQ1?=
 =?utf-8?B?TWtQV1kwdVFBYk1qRVJoZnJJbjRCODN3cVl0NzhZdjNzVWlYNUdRN3E5M3E2?=
 =?utf-8?B?NHptS1JZdERiZlZZSStZYm9zSDBLNnJZYUVaUGNpVWZUTlBFZDc3Uk53c3Zi?=
 =?utf-8?B?UTQ4NGo2SjhTRUN5bkQwYW0yZ2ZIUmNxMnZsSmdCcmtlSUQ0UjI4dUhwQ1Rs?=
 =?utf-8?B?NTFSY3dkaktlb0pvaGJaK0d0RE9Iamx0LzlCTk5IWFVXeUxZY1pkcndmd2JF?=
 =?utf-8?B?MnNGZkVwMWhLOWZpUXlkVzBFNEVGSktCM2V4alVEd3RaMWFjQVlncHVJQ1VL?=
 =?utf-8?B?NVlXTmljUFBaYmowZXF3Vldic0Vhay9pbGdGYzhQRDUwQnNRVlpaYmFPeVho?=
 =?utf-8?B?SVNLVWhhenBqcWhkcGQ2L2pkRUJhMEl0amY1cVZEWDVCM1B6L05QYjg4enkw?=
 =?utf-8?B?Z0M2a2UwQjJNYldpamV6L3lvcURpSHd6am5WZm10eXowRDBqSmgyd3lwUG9J?=
 =?utf-8?B?cS92RVJPU0tDL2JQOWMrOUx4Y0lLNnRDMGh3aGhJOHZ0MWFjREhybDN3RDYy?=
 =?utf-8?B?TFFtaExoQU5udXk5ZFN2WkJ6NGdhVmtVNks2eHN2WEFZd0ZGNXk0ZEhhMHcx?=
 =?utf-8?B?a1FrWEdGNTBwMTJMYnU3aHVBYzdrNEE4OG03RkpNSC9DcSt2dnVWcVZGelRs?=
 =?utf-8?B?MjZ5aWoyeVhlSTlLOHBkNlJjUnlFY2RaZ2VMVDJjdWdHb0lIQkxHSDhBdmdw?=
 =?utf-8?B?MUtwM0ZNQTlWV1JCMzU4QXJoNjdPd0RjRUtNSXNXY2w3cXRpU2NZYzJ1cm1s?=
 =?utf-8?B?b3NUNVF5cEdRNEpnQVpsUG12cUNmR2JmR25MaVBTcWNBN1FnRkpWU09EWnNh?=
 =?utf-8?B?bkhVT1ZZTk1NWmFrVTJPandlSDZhRlIwYWx4d3lIS2VXY1RUc0VycHdnd0NL?=
 =?utf-8?B?SXlKaE9MYUpoeER2a1lPdTFWTW5DNTJvcnJsWldudEhZOTkxTHAyU2lOT1Mv?=
 =?utf-8?B?S1Bxd0djSkxiWFAzRjNzOGtBVHk1WUJjM0d1YUdNT2pxaGphQW05RGVmaGht?=
 =?utf-8?B?T2VyRW5sUjRpTW9yMm1GS0VaQzJSR3FUUVIybkdTNmVucFNJWXF0UXVNY0c2?=
 =?utf-8?B?MDJMSFR6OGJvVllkQlAydVd1QmRWU1IyeXRDM1pDb2VmMWtBcUg4NXg2aWY3?=
 =?utf-8?B?TVJRRThiaW91V1k1UkpaTHZMRlltZEY5RmlWaDFsUnBnRmxaQ1pmRTJtWWJF?=
 =?utf-8?B?eXN6cDNYWW9GUnhqN2xYbWZUbkFkalhTdDhNMk9JQjlEeHFpVXJUUlloa0c1?=
 =?utf-8?B?REEvdTl1ckdvck1VeW82SHY1V2tvT3VyM0VEa2N3aDFuL1JRQUcrcTB0aFJr?=
 =?utf-8?B?aFNOckRrVktQcGtVU3BlVWJTbHBQaUxkS2twOGQvNlRUUk1DNVBaK0RnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aldpN0hpZUJZLzJoeUUrcjFDL1BLcEF2d2dXUVYzcXBDUm5ncVJ0SjRHeUlL?=
 =?utf-8?B?eWdkRmliSTA5RVlwQWhDbFQzUUNtZUVlV2RET1V1M0Q1Z21UNDZpQmdmL1ZF?=
 =?utf-8?B?MG9MWDFUbkdGQTl3WmROb0J1NEtESGUwSHdTTk5yOUt5QTVSZzMzdWZ0dUdG?=
 =?utf-8?B?UnNoUG1xMHdSRGsvVGllRjNkSFNmdUZXSUkvekJKTy9UMHo0VEJ2SzR5M1JL?=
 =?utf-8?B?c0FwWjNQam8yeHNmSWNBWld6MWwxSVdtU2piNjRGUFNzcG9RUjNjajFxcUhu?=
 =?utf-8?B?NWtncjdzS1VLczhndDVadDhYZk5xSE9rVlpTQmdPTEt1VURDZVVWQnVxaTlx?=
 =?utf-8?B?bUduUDFiSjVDU1RPMnlDNVV0WXBmaUE2TEJBVStBQzVUbzdqcG1MTENObnh0?=
 =?utf-8?B?STdtNHpqMjlqSlZRQkNzQ2NzaFQxUlhtaVVNVzliVWF5UnA1UEpMSVllaG5o?=
 =?utf-8?B?alJhb2dydm9NNDE1WnhlSHhML3JBVXhIL3pIc3RDNUZkd1c4aWF2eVZwOGoz?=
 =?utf-8?B?K3dJVlN4OHltQ05qaHVHeFJ4S0RISk1yWk5waGZIUjFyL0V3NnZqQlNzeDFs?=
 =?utf-8?B?MTVUV2VQTUlNZll0d0JPeXZwMHRNN2hVYmhWVGNhbHhiUmFJSElIeUNXTlFw?=
 =?utf-8?B?TUVYZVpoRFRCYTdNTGlpZ0lMVXZ5UkQwZEFxNUI4bFlkNHB1KzByZm5PQUZz?=
 =?utf-8?B?bnZkYWZjd2VMRDRCNkZra2dSN3BYWnp6V2JwQmlRamRZWFZQUUM3MTJSenZj?=
 =?utf-8?B?TGE2ZW5mWEtMQW8za0lNcklBQldyUjBFVUZpNXZTTXNQNnE4SFZZMDBtZGVj?=
 =?utf-8?B?TXo2Wm5WelVNUW1QM1dXek9weEZpZ2Q1MmQvalNQa0VubDJIT25xWTdHdVFq?=
 =?utf-8?B?d05RYXBPVTQwNUlWZFZYQWNqQlNjQ2dzQklmeXJVWlJXVTVFMnY2YmJnaVBu?=
 =?utf-8?B?NTNyeWRqWWh4ajJlWUEveGF1MktadHFJZ2p3VzJQVW9mL2ZFV0hJeUhyeTNX?=
 =?utf-8?B?V0hkUDZteDBDVnV0OVNSY0dvSDMzbkY1MVRRbU1FenVab2lGZWYzek5Fa2xF?=
 =?utf-8?B?dzlPQ2lsRVFjTnJaUnh3VklDRC9nc1d5cEtwMnhPTForb0FONVQyajgxRDJX?=
 =?utf-8?B?dkI5V2JtVVRpRVBSRVUzSUVzTDNVWDV2eHFrZVIvc2xNelg3ODkrV1ZHOHNu?=
 =?utf-8?B?VW4zaHQ3L2ZKMlczZEptMmlWQkw3V2hIRDA2dTFoL2hVVGJzcWgwWVFXQnJC?=
 =?utf-8?B?YVJSRnM3VlBvRzFOTVF5MW9XZlE0K3JLVW9GaFFWOXVhdFplUTkvazFvejYz?=
 =?utf-8?B?cGt2SWxCT2d4U0xMKzlPRkNWV20rWmRDR3N4ejVSbTd0M1NjbW1UVDlrT0VO?=
 =?utf-8?B?WXpHVE1rRlpOSTRFSkZqa0dYNjVsUlkzMzFNQmZPaW1MZCtGaGVmUlBLcm9a?=
 =?utf-8?B?SkRaOUNicXRvYW1pODVQbDdxYXUxcVowYXpDVkJvaUxYVUNQcmNlMGYwa0hO?=
 =?utf-8?B?OHBMWThFV0xhRGVzTEhxREk1OHVoK1ZiNHoyZ3ZFb0IvSnR4RFlxcGoveWJv?=
 =?utf-8?B?U29pMHd5TFlUdm5RYmJkVGtNY253c2Fob0piV3pWRTAzZWhXRFBzeTZXRG9Q?=
 =?utf-8?B?a0tCVmo4dmlHRVNrSEJhQXBvREFqeHd2WG9xUitwZCs4Y28xR3VNY3d1TS90?=
 =?utf-8?B?dDB1S3RKOGU1SU9HUklnTnlnTjNiTlBudVluQUtBbjhqQ1Z1eUdRbkdaMk5B?=
 =?utf-8?B?V2pwVjNRSG9wWDE0dmVxY3IvcDViOU0xMTBjTWJyRTNIaDkrdTYvL1BRSDR5?=
 =?utf-8?B?Z0Z0WG1Uek5rVVNFWUtnK0tIdFZMeCtkZkw2UUY3TlRubllTLzNqWUtvc0pH?=
 =?utf-8?B?aFFCZjJ1elFrQUoyTGY4eS9TMlpxUU1HTW85czMvZUpLc3RYYnp6aGhRcVlo?=
 =?utf-8?B?NERDaVRmdVE0S1JDVUdyY1J3czRzSlRYaE9tMUFVVkUrUkMycW1VMG4vWVA4?=
 =?utf-8?B?aEp5YjM2NkdWaVNwaUVmdjgxbDNYU2szNEUxcFlST2dFUDlxZlVXalZoMW9B?=
 =?utf-8?B?TFgxSTZkYXZWMHp6UEtXYkJsTENydHRTelA5YTVOTWc0dTlhd2x4b3pHcFVx?=
 =?utf-8?B?c2E1cVNXd2ZjZkp6UzluTGEzbXAwbDVqejNNZGVpeTZZT1JNMjJCcW1Ub2RF?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e86839f-c494-41a3-837d-08dc73e02a04
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2024 06:36:19.5769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Do7Qo08yvKuckhZBxkQ5Qcjkk4nxy3wJlkYQ7wFvvqHr+bcd0gvDT1beO+78rXyPd4t/gMHjZ02i4rlBmuchB3R1XVFpH5lMViCZupSIT7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6264
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715668587; x=1747204587;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XujOcYNuBy3Wkrxc1RdI8Zg0TKu+4vVLyRE//2/tsT8=;
 b=mVAlbxFV/kLGKNuUb7ATJLrUl5xHKVMvSMDBGqMQ0T50saczFN6soDIn
 6ykTngl4XhJg0sXzBdRyATN2L14j9ehQcxPHfPoVlMDDX8rgBgxHQ/hOi
 V5ebUBVYXlH611u6Y1eD7m1g6rU3El0UMKx0bBioxoVBXaH/qVj/ERAUw
 H15vB0iNE9OgKYLoZHbOrJITx7fP+Jy1gDJtu4nVTygr8jxPBJj35LUYb
 rpFnEbNrDf9PP1Z0wsnMXIogHnp7ygbM1BmpTJvD1sv3Y0wAd0YAXHHQI
 Ld69mWSOCwYLALrCmr6fvLhLb/KLKeVegs/XS+flgNqp2dXmcR5TQdzBl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mVAlbxFV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 05/15] ice: allocate devlink for
 subfunction
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/13/24 23:37, Keller, Jacob E wrote:
> 
> 
>> -----Original Message-----
>> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Sent: Monday, May 13, 2024 3:23 AM
>> To: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
>> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
>> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.org;
>> jiri@nvidia.com; Kubiak, Michal <michal.kubiak@intel.com>; intel-wired-
>> lan@lists.osuosl.org; pio.raczynski@gmail.com; Samudrala, Sridhar
>> <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
>> Drewek, Wojciech <wojciech.drewek@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>
>> Subject: Re: [Intel-wired-lan] [iwl-next v2 05/15] ice: allocate devlink for
>> subfunction
>>
>> On Mon, May 13, 2024 at 02:55:48PM +0530, Kalesh Anakkur Purayil wrote:
>>> On Mon, May 13, 2024 at 2:03 PM Michal Swiatkowski
>>>> +       struct devlink_port_attrs attrs = {};
>>>> +       struct devlink_port *devlink_port;
>>>> +       struct ice_dynamic_port *dyn_port;
>>> [Kalesh] Try to maintain RCT order for variable declaration.
>>
>> Maybe I don't understand RCT order correctly, but based on my
>> understanding it is fine. Which declaration here break RCT order?
>>
>> Do you mean that ice_dynamic_port is longer than devlink_port and should
>> be moved up? Didn't know that RCT is also applied to inner part of
>> declaration. If there will be more comments I will move it in another
>> spin.
>>
> 
> RCT (Reverse Christmas Tree) order would be to put the longest declaration line first then the rest in order down to shortest. RCT is preferred over using initializers in the case where initializers would add a dependency that forces a non-RCT ordering. In that case, you would delay initialization to a block after the declarations.
> 
> So here, you would put dyn_port first, then attrs, then devlink_port.
> 
> Thanks,
> Jake
> 

Documentation/process/maintainer-netdev.rst says nothing about how to
resolve ties, and we sort by byte-count of given line. For me it means
that author is free to decide.
(Thank ASCII gods that we don't accept full width CJK chars;)

Here order is correct, swapping devlink_port and dyn_port lines will
be equally correct.
