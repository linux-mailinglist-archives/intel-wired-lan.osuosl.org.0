Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB5F587AB9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 12:31:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A44860BE7;
	Tue,  2 Aug 2022 10:31:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A44860BE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659436266;
	bh=4wq/2HNpB5I7PjU72rp8RMWhVdGKJdl6lMJDdjltM7I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q4MN1SqSyBzDix92Y2W9o345BawdZQddGxUGDWl0dLEbdh9Bz3f5ky+wlJJfTc18V
	 EgZiKQ5eCNtlrYxBMmwmMjFPJVlXHGbwVxNSldHWBDd9FOHHwJzJTGMCNSZ4znLX9z
	 3LKC0u1qPEAkSIkblzMCUdrRi4GXZ9AZ5PLd9b6FjR5hqgbTPdiAMcOUU3AFN4XjIG
	 0Zo0BWcR/NaTEZ0FD/Q9I9okbs//cUeUqVmVhOAwub7kg9jlQTukorEIEZSVkRr+Fc
	 IJWYt+dGnB+Cc0d0IaX6fS6sm2B+cjfdpeoBMWRJpblVF1/DTfeB6feq63xvXpKMM9
	 MSp0uwqn6gZ/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGXehOBFJjeV; Tue,  2 Aug 2022 10:31:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDAB860AFD;
	Tue,  2 Aug 2022 10:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDAB860AFD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D41C21BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACF0260AFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:30:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACF0260AFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDfLp2DUw9j2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 10:30:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA327605B3
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA327605B3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:30:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="288133392"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="288133392"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 03:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="552874360"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 02 Aug 2022 03:30:54 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 03:30:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 03:30:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 03:30:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JUVxL3DXg9midU4JswLNGwopoCoUkPmxBMDX7CUhMHNTaZl7KU547yXMjVwTzEZEVO6lshOEiQQsQ7eaXRGbZlhTi863t2Pi+eabke+FecCtIxWo1PEftJRTsGZ7m2uMOYNafj4jijNHJwXk09vCsPTsjEfDhE4gUB9wUMlSMO+dYanh5KEOllCIYBJs8KOoDoStbsLMjqN4uweaP2057Auzy+RLueFTBuKkRH3vZi79n+3J9N1YvfmOF4MSttUn+yPH7Ylv/4RMAhsFMY/EWvfdWT7kfsMMHEEQEqTnrDF3rVL7e7BGyoz1N2G5wdL9W/nBZn+foX/a6DEkaPdVOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aQiguDlrJebZ/1tvfucXSVXEzXA8b4GLHnksT4+Gr3o=;
 b=muOK89UOu0INr8Fg+QiIXaNmk4FEFJI/lI3m2Wob4HC/A10fLDGXcP0KqmwAoWEiZHA5WQF2DvfYbanPiSfh1eV2JAU3owwKeA3MybX8mZT8AiWVCE7Ayea/ouheAmax/IChYMBXZyKecQONoYtumWfayk9ZrnfBG+EH/QF6hG8n/s6X/wRaN+zxJ/KLCYzHel8lllmHA3sLO/skpXJ9vQQw4AvEcNJ121b0Hfci7fxwHiChbOk9kjZGUE+3R2KjaoG7tvvwYcdIpEQ7WCexf+33vBjGl/KevMxynqDa0+8J8xyfffnYfR/2ogUTyHJ9s/2jquRD6ZrUEuULktWJLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by BYAPR11MB3685.namprd11.prod.outlook.com (2603:10b6:a03:fa::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Tue, 2 Aug
 2022 10:30:51 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::6423:dab9:c2a3:41d9]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::6423:dab9:c2a3:41d9%3]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 10:30:51 +0000
Message-ID: <bea8ee46-5b45-acf5-b722-8121f43ec73f@intel.com>
Date: Tue, 2 Aug 2022 12:30:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
 <20220728140426.664140-4-anatolii.gerasymenko@intel.com>
 <5847d865-6959-9ff7-a92a-dffdc503b780@intel.com>
 <398129b2-be77-fe06-b58d-34e53c219d17@intel.com>
 <9550278f-63b7-ee6a-5e4a-911d9d3202cc@intel.com>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <9550278f-63b7-ee6a-5e4a-911d9d3202cc@intel.com>
X-ClientProxiedBy: LO4P265CA0017.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ad::15) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f64855dd-82fa-4a4f-67e1-08da74721284
X-MS-TrafficTypeDiagnostic: BYAPR11MB3685:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WnPYaRwbjwqamxeYeb6Z3sFSd/y9Sof6TnryoTM8MG4X+ZVsyXjizYBxeN2ckpybIe+3iQTChDIpdxxDwLt8Bo8gOuA4PPoIvCGCkMz4wIMfBjJo7v6ChIee2kkwkk6NXAeb49rnX9ysrqeu/0X7npgmUZyQI6+Y5C6b6RGbmgFp5qGEPLj6WoqCzz5pBgVXTmFx7dg4HEtwwf2wRPAqwvuauPchtCeGgGVEzjG4VFAsclvJ4FTk4LINUQDri4z/BIBq8hhOSnIDzdrt05Q2+VWp2c63QCEYftpbZbjetQkGUzmjqfah0IEm5XRzGMa14iyp2rCWjcfNtChaeddUJDVQY+8vuC0m6mooMUSppr33/cDvHrzCFn8HuK7lWSw8TXiy5479BlAA4oVBmI27FAQey5u480Az1eI4wTicgWud/vP3AY4p8WIPkiK7eWH8GO7RbaEeyB6DKCPiAo0eh8Dpl1gX3yfv66YeV7XoQQiP/hJDjwiOWCf57EgtUDBEJywrPBtyJ2r4DZPfXwFhn6ogoXoAdY5TEkZC9PFk43q3sahmF/SJX5UNWRARXIJQpkt+ApgBevWJq821Fkb/EHdxyErgkgacXvqogXogr2db2w7xNevnaKE+7Q7KAULUzzqKiOgOVkgsD0J57p5K7bWF6I9Fm+dvuN6UHVi88L9fUw5H4/C5PR6GeJnyNjijT91rvTcHqmBRN29xwpM9Yl+349N3Dp0L+ViP+hAVzidGRZ2t8RLsL8U0hD+1op7J+V0vVYnoADI5kEaMLOSPAycMkyqDVWCKV7/bQdwBMZBn8WWuTVB/yWbup6muH12h1wZG7dxi6yOd7YLqMrYrO7xXodJenpBFS+ODzh3wFMdnp8e8beJCfJU24xErH598hPgPiCnz+h/SXrXGV/1aIw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(376002)(346002)(136003)(39860400002)(316002)(38100700002)(31686004)(31696002)(86362001)(6666004)(82960400001)(53546011)(41300700001)(36756003)(6506007)(2906002)(66946007)(44832011)(966005)(8676002)(66556008)(66476007)(6486002)(83380400001)(186003)(2616005)(5660300002)(8936002)(26005)(6512007)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eURnVzBzc3FWQXlJQmJFdzZYNVhnd1U2M2F2cTJ2U0g3VUFwbFBIc1dlRjln?=
 =?utf-8?B?eS9JMWxtaVN3bVZLb2YxNXVmRVlLRTF0WDFKZ29NK2xaN1ZKR3lsVEk3TlJ1?=
 =?utf-8?B?Y0J3VXF1SlUwa3Q5MkdrazJMZjF2UEpWc1UzM2J0bFp6L2FFeUVaUUgwa2xP?=
 =?utf-8?B?N1VzbEM3TGRiNWFRUjVGUUsrUWJxdlJRRnd6TEQvUnM4ZnhHMTRLWndyTmRP?=
 =?utf-8?B?SEh4K1lQN1FTWGk1SXF1QVRJNUsvQ0t0OEttbWxSU1AyRWlyOFdodTI4ditW?=
 =?utf-8?B?cnhiTEVWNEZhT1MrUkVWWXNTTXZxVGdQaTZTRGtCZHUxN2oxTzhEaUF2eGJm?=
 =?utf-8?B?ZHB1Z3lTTCtHYWlxZ29Ra05CNkVwQXZObDRSWm5OQnN0MTgvQ1NLWGFlV2to?=
 =?utf-8?B?cXJzYTlHYlprdEpGaTFJenVaUFRnNTJ1aUFYcHdHTVNjanNyRVZnclZwaHJI?=
 =?utf-8?B?Qk96Mzc3eUpPNUpzZlFiSHA0TUYrazR5VjRnWXIzQ1EycnUrMDFqUGRBeG1q?=
 =?utf-8?B?STdHc1IwRCt6b1BJMTRvd3pEVTc3NlRYMHl3dTJOTDJySjZlWWl5WHhFWnVU?=
 =?utf-8?B?VGxXdmtEVENTQ0VlQXdvZ0pjMUo3TUxPUTdNSE94SElVVWxUSGo4b3V6eU9J?=
 =?utf-8?B?K0Jtdmd3b3h0MmR4bERDZmxSOGZiL3daNHdOcnhSNXgxWEpBRHBPREcvcmMw?=
 =?utf-8?B?ZlBia1N6RnFIZTBtZ2U3YjNCOFNOSUVFZzhaTkR2UEVTMlFHdVpwaEZhbC9S?=
 =?utf-8?B?SWwyNGtwbEdwbmJlbnNwS2JzTWc3QjFkeHdpVVMxekhJVEZGZjJQZjQyZ0ht?=
 =?utf-8?B?NEZPc0RPZGVqb250UTFkRkpmVzMwYmxlUDBETU8xaEZ2dHBZcWJXcEk1NkIy?=
 =?utf-8?B?QlhERTdhTVkvZnk4S0xnVHhnV3hRNDE1YnV3MldZODM0ZE14Mlp4WDhWSUZD?=
 =?utf-8?B?cjZGcHJVZURUOGZFc3M2blJQRkU5cmQ1cnVlSlBQbUdES01JdGJCc1Q5Z2w2?=
 =?utf-8?B?VzVxcENyNjRhYk9uUEk5d2l1QzlRR0V0MUhyTTRoT3NUMEFaalZ1SWw3eVdZ?=
 =?utf-8?B?VXZPTVh4Yk1TVkRURExpclBjT3l2cXp1RzV2MW0zZnNIYkFXaW9rMW0zN0tK?=
 =?utf-8?B?MHd4MjFJd0tlZ1l5YTlmczQyUTQzQ0hCdTBFd3RCNkkxUndMaENTL0g1aC9r?=
 =?utf-8?B?dFlRRDFuS1VTZVdIcU9HQVdGWlgrOWRVYUVMS2IyZ3JKRG4yQVNBTHJhejB5?=
 =?utf-8?B?SmR1d3dNMDdTQU96WmxyK09vS04rZjVsbXdaeXQ1aEhhajN5bUJ4N05xUlJZ?=
 =?utf-8?B?cFRuWDdoY3h1UzhESVVleHp3RnZUQmNEcnhycHlka1F3UEozNXllSERnNFFr?=
 =?utf-8?B?NE4zQm9zN1Y1c0V4VnBPMWpzaGtEN3BPY3lJRWhCZlJEY3QyQjFTY0FoM3Rh?=
 =?utf-8?B?enQxZll5NUthcnYxVlI3RXhtUmUzSlJnMU84YjlXcEdkTi9wQng5Q3VHaXdX?=
 =?utf-8?B?QWNscXRvclZ3eEVmNWNZTUp0Ty92YUNKcUFqSk5UK0F2U0VrME4rcVpyN1p5?=
 =?utf-8?B?d0dGTEZObEJscXRVaGgxSFlGNThDdHIwQytxSnQxOFA1Ti90elBTdjRPTEhE?=
 =?utf-8?B?QkszaDhERWY0djNXZTdGdEZUME5tOWFrNVkxd29HTFA2YjNNZCtYaG5raEZw?=
 =?utf-8?B?TVZMTm9ML0hZcW5hR1JFS0hubFJ5SUg4ckRjVlhQcUIrY3RWZTFrQVp4N3Zj?=
 =?utf-8?B?aFl0STUvYUp2dTd4SlEvcDkrTXdtRjZueFdnU2RVcVdEMGdrZFdKMm9ndXcy?=
 =?utf-8?B?WTlzWUZ4OXh4V2VMdENPalVSa1Y1SzhHVUc1UjkxbTZqVEhLdnBPZFBLVW52?=
 =?utf-8?B?dVhpNGxQZUxqaHYrdGZSSU1QOUl6ejA3TlpPTjJ2UkdYNFl6SlU0Uy9zUFln?=
 =?utf-8?B?Qm5GSEJDdnp2SXJyUHJVK1pmWTlKOWF3YmFHQjVzWExpVlkyVnFRYk9lRFZh?=
 =?utf-8?B?T2NINlZLajJMNm5JWGllczlNSlVSM1pJa2RGNWV2TWZ1d1czeTFScWJrZzFE?=
 =?utf-8?B?MkUzU1kramM4VUtVR2RZNXl3MjFQaG5vakJjVGtJOGlxUlFVVmNvWi9oR2ZG?=
 =?utf-8?B?eUJGUm1MT0k1L1N4Vk1McmZuVEdWQzF6N1ZRY2VHVWNQYndrUkFOTDFjY0pZ?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f64855dd-82fa-4a4f-67e1-08da74721284
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 10:30:51.5388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VvK+cjSis/qDV+TSIqf/pXLjp1449BI3QGsn3z1vkLxy3SqPxtpUF9EjjZQ0bQ1it8xB9l0o8PYwtsv+MPV1I8qjiG98taQ3hu15DqtGUAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3685
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659436255; x=1690972255;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YtnSJtHWjbkc1wLmKEg7RoamUjLgpR1sOvzJRozN/2Y=;
 b=AKsFBS2EnZVUTYP8gUF1FfqhGQka3ht6bujpo93PB4lx23vylq3NRHxR
 0ytsebKbH07rCn4ermPP82xqckBKILQTjmjI23SkcXzqgoyemHfgEcTro
 otSvu8SuoASsX0PojhRGkU0dwz/GtKZ8fS5anzwuXYP4Nn9Fe0Qoe8Nnb
 aNBvR5LvZ/QH9zyUOzCVXsBG2b6Dz0Zk9SoEnNXSXORzbI6NGvgosW2/Y
 ngQILuYGjK4vQJI0wMBkq2wh0lV8hvIR69jau8bsuWh+ZfozNAwHQ6gPJ
 /Ydbbny1KRABVNl8Aj4S9YCB37/y0XfBvUajGyxTveeRmga51aldZ/VS/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AKsFBS2E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] ice: Handle LLDP MIB
 Pending change
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMDEuMDguMjAyMiAxNzo1MiwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gCj4gCj4gT24gOC8xLzIw
MjIgMTowNiBBTSwgQW5hdG9saWkgR2VyYXN5bWVua28gd3JvdGU6Cj4+IE9uIDI5LjA3LjIwMjIg
MjA6NTUsIFRvbnkgTmd1eWVuIHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiA3LzI4LzIwMjIgNzowNCBB
TSwgQW5hdG9saWkgR2VyYXN5bWVua28gd3JvdGU6Cj4+Pj4gSWYgdGhlIG51bWJlciBvZiBUcmFm
ZmljIENsYXNzZXMgKFRDKSBpcyBkZWNyZWFzZWQsIHRoZSBGVyB3aWxsIG5vCj4+Pj4gbG9uZ2Vy
IHJlbW92ZSBUQyBub2RlcywgYnV0IHdpbGwgc2VuZCBhIHBlbmRpbmcgY2hhbmdlIG5vdGlmaWNh
dGlvbi4gVGhpcwo+Pj4+IHdpbGwgYWxsb3cgUkRNQSB0byBkZXN0cm95IGNvcnJlc3BvbmRpbmcg
Q29udHJvbCBRUCBtYXJrZXJzLiBBZnRlciBSRE1BCj4+Pj4gZmluaXNoZXMgb3V0c3RhbmRpbmcg
b3BlcmF0aW9ucywgdGhlIGljZSBkcml2ZXIgd2lsbCBzZW5kIGFuIGV4ZWN1dGUgTUlCCj4+Pj4g
UGVuZGluZyBjaGFuZ2UgYWRtaW4gcXVldWUgY29tbWFuZCB0byBGVyB0byBmaW5pc2ggRENCIGNv
bmZpZ3VyYXRpb24KPj4+PiBjaGFuZ2UuCj4+Pj4KPj4+PiBUaGUgRlcgd2lsbCBidWZmZXIgYWxs
IGluY29taW5nIFBlbmRpbmcgY2hhbmdlcywgc28gdGhlcmUgY2FuIGJlIG9ubHkKPj4+PiBvbmUg
YWN0aXZlIFBlbmRpbmcgY2hhbmdlLgo+Pj4+Cj4+Pj4gUkRNQSBkcml2ZXIgZ3VhcmFudGVlcyB0
byByZW1vdmUgQ29udHJvbCBRUCBtYXJrZXJzIHdpdGhpbiA1MDAwIG1zLgo+Pj4+IEhlbmNlLCBM
TERQIHJlc3BvbnNlIHRpbWVvdXQgdHhUVEwgKGRlZmF1bHQgMzAgc2VjKSB3aWxsIGJlIG1ldC4K
Pj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFuYXRvbGlpIEdlcmFzeW1lbmtvIDxhbmF0b2xpaS5n
ZXJhc3ltZW5rb0BpbnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqDCoCBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2RjYl9saWIuYyB8IDI1ICsrKysrKysrKysrKysrKysrKy0tCj4+
Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2RjYl9saWIuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGNiX2xpYi5j
Cj4+Pj4gaW5kZXggMWM1NGViNjQzYjZmLi5mMTZlNGM1NDQwOWYgMTAwNjQ0Cj4+Pj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2JfbGliLmMKPj4+PiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RjYl9saWIuYwo+Pj4+IEBAIC05MzMs
NiArOTMzLDE2IEBAIGljZV90eF9wcmVwYXJlX3ZsYW5fZmxhZ3NfZGNiKHN0cnVjdCBpY2VfdHhf
cmluZyAqdHhfcmluZywKPj4+PiDCoMKgwqDCoMKgwqAgfQo+Pj4+IMKgwqAgfQo+Pj4+IMKgwqAg
Ky8qKgo+Pj4+ICsgKiBpY2VfZGNiX2lzX21pYl9jaGFuZ2VfcGVuZGluZyAtIENoZWNrIGlmIE1J
QiBjaGFuZ2UgaXMgcGVuZGluZwo+Pj4+ICsgKiBAc3RhdGU6IE1JQiBjaGFuZ2Ugc3RhdGUKPj4+
PiArICovCj4+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpY2VfZGNiX2lzX21pYl9jaGFuZ2VfcGVu
ZGluZyh1OCBzdGF0ZSkKPj4+Cj4+PiBObyAnaW5saW5lJyBpbiAuYyBmaWxlcwo+Pj4KPj4KPj4g
Q2Fubm90IGZpbmQgc3VjaCBydWxlIGluIHRoZSBjb2Rpbmcgc3R5bGUuIElzIHRoaXMgc29tZSBr
aW5kIG9mIHRhY2l0IGFncmVlbWVudD8KPiAKPiBJdCdzIGEgcmVxdWlyZW1lbnQgb2YgbmV0ZGV2
LiBJZiB5b3Ugc2VhcmNoIGFyY2hpdmUgaGlzdG9yeSwgeW91IGNhbiBmaW5kIHBsZW50eSBvZiBj
b21tZW50cyBvbiBpdCAoYSBjb3VwbGUgb2YgZXhhbXBsZXMgWzFdWzJdKS4gSXQncyBhbHNvIHNv
bWV0aGluZyBzcGVjaWZpY2FsbHkgY2hlY2tlZCBmb3Igb24gbmV0ZGV2IENJIFszXTsgbm90ZSB0
aGUgJ25ldGRldi9zb3VyY2VfaW5saW5lJyBjaGVjay4KPiAKClRoYW5rIHlvdSBmb3IgdGhlIGlu
Zm8sIFRvbnkhCgo+PiBTbywganVzdCByZW1vdmUgaW5saW5lIGhpbnQgYW5kIGxlYXZlIHRoZSBm
dW5jdGlvbiBzdGF0aWM/IE9yIG1vdmUgaXQgYXMgc3RhdGljIGlubGluZSB0byAqLmg/Cj4gCj4g
SnVzdCByZW1vdmUgdGhlIGlubGluZSBoaW50IGFuZCBsZWF2ZSB0aGUgZnVuY3Rpb24gc3RhdGlj
Lgo+IAoKRml4ZWQgaW4gdjIuCgo+PiBUaGUgZnVuY3Rpb24gaXMgb25seSB1c2VkIGluIHRoaXMg
Ki5jIGZpbGUgYW5kIGRvZXNuJ3QgbmVlZCB0byBiZSBleHBvcnRlZC4KPj4KPj4+PiArewo+Pj4+
ICvCoMKgwqAgcmV0dXJuIElDRV9BUV9MTERQX01JQl9DSEFOR0VfUEVORElORyA9PQo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCBGSUVMRF9HRVQoSUNFX0FRX0xMRFBfTUlCX0NIQU5HRV9TVEFURV9NLCBz
dGF0ZSk7Cj4+Pj4gK30KPj4+PiArCj4+Pgo+Pj4KPiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbmV0ZGV2LzIwMjAwNzMxLjE0MjUzOC44NjgxOTY5Nzk4OTM5MjAyNDIuZGF2ZW1AZGF2
ZW1sb2Z0Lm5ldC8KPiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjAxMDEx
MTIyNDIyLjU2YmVhY2FhQGtpY2luc2tpLWZlZG9yYS1wYzFjMGhqbi5kaGNwLnRoZWZhY2Vib29r
LmNvbS8KPiBbM10gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L25ldGRldmJw
Zi9wYXRjaC8yMDIyMDUxNzA3MzI1OS4yMzQ3Ni0yLWhhcmluaS5rYXRha2FtQHhpbGlueC5jb20v
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
