Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA6B9BDB08
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 02:15:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DB46405FD;
	Wed,  6 Nov 2024 01:15:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sfvUmk_79kRf; Wed,  6 Nov 2024 01:15:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48131405D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730855724;
	bh=reGocxHtfQ03QvK4nVmh8ssz/K7W38ZXobfLSIiib2U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oCRD6HzKWwDL4BGirr4pyrNMczB2jFuKw6VPyr3VoyYPl1Xe87CJYRzWkX5NfDzQv
	 WwHrYfy1Bur/nRhNKi55rYCzX2xoxgeJD33z1oqHF+zr5ZEp5Qj3CZMugd6ZcpcPIU
	 VnuqKcZdHtUgKuP3d8vkTZO8ewiO1Rb88OiR8nZ9Zw192EiwMjsxIpZAAdJ9RcwIqr
	 RukEWrxoKVWSKOwwZ1fWmEQFWWNDG10OJ5h5mg37CCnL7cs/ztucq1W18V0sN0PHXB
	 TR2iztL8zQAL6Yvy1APo1xAI46y57IQYS+3pNR2BjJBGOUXJlWVp6nNBFLsli7dVvl
	 Cqa2BvGBJhJYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48131405D2;
	Wed,  6 Nov 2024 01:15:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 970473B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 775CC60844
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:15:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Kuz5laULur5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 01:15:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 89336606FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89336606FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89336606FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:15:21 +0000 (UTC)
X-CSE-ConnectionGUID: 9Cmp7vXmT7y6e6f3ebgGkw==
X-CSE-MsgGUID: ZvVVqKjjQC2G4fF8pt2MoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30063351"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30063351"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 17:15:21 -0800
X-CSE-ConnectionGUID: YYDcmcfPT8aQixDNQLKxIA==
X-CSE-MsgGUID: lYDGmrvJTz6Hm49To1gQCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="89078135"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 17:15:17 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 17:15:15 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 17:15:15 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 17:15:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RdpJk9s5xpu2g1P6VStIPdxUqaGLt75V/dY8kSXp4XYVsW4J2uq0OtRWr4JwhRs61Zn+CUdtnP4KAfAFmVwX3VbNhMj8rnCjjiqGQnWLA/dd65qAka4smfCyLwhLwLuT5NxxBxpiNn8gx9n0Ww++AKsIt7pwpLwqAHFBWMKo4ZBhH8voDy3T3PKnVEFKoBL1KFnCJTNx52R4UKLBlKWwSsvyVt4vxGsch6lMU1br9osUA4/oAdp0wDUYbTJQIePjLcJbpzzaAKPgWs5xlAYlvZwr4MxluMtTydxRyXv7rYFMVDWu2AkteLeTbwqYnDmuZKlo1SBTXRvy6fOCJM2BRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=reGocxHtfQ03QvK4nVmh8ssz/K7W38ZXobfLSIiib2U=;
 b=oPcjrkBN1DJZV6Zyarvk82paScj6DxYu7sSOOImiB12uljQQnkHow8m1TjNdt0QI2lvbYWpcQ1d8pZfgaVir+3vfNzg6DQp3FhgBWuXLpA1bNRfHu9oyricJE2+B3zZGDPQ72CWYnuflAw3ChzmujgrKUQ/qbKm/j65rh0kX+JmxdbUboudiM3S4+Ki/CvHUBeBEwuCk1IU+u2YWdLJSAjhOFNnv0EbQLUrrmb57obXTRixFmBKAigaDm+ymetxYHcoLY7/SLhQPMLXMsdoHVHd5NHbsgPEeS0aSyQ9DWWBp1cWCEsdlQGUbomeSYMaJFc/S3Dt4ngtPt2Z50AZ65g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24)
 by SA0PR11MB4640.namprd11.prod.outlook.com (2603:10b6:806:9b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Wed, 6 Nov
 2024 01:15:12 +0000
Received: from MW3PR11MB4666.namprd11.prod.outlook.com
 ([fe80::1979:c166:9d53:81f3]) by MW3PR11MB4666.namprd11.prod.outlook.com
 ([fe80::1979:c166:9d53:81f3%5]) with mapi id 15.20.8114.031; Wed, 6 Nov 2024
 01:15:11 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 0/2] ptp: add control over
 HW timestamp latch point
Thread-Index: AQHbKXtfF8vSeg5uGU+5mdBqSZ8srbKdmOoAgABCo4CAAA1/AIALlfWQ
Date: Wed, 6 Nov 2024 01:15:11 +0000
Message-ID: <MW3PR11MB466680659C24F17A64B37A279B532@MW3PR11MB4666.namprd11.prod.outlook.com>
References: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
 <8899c12f-bc2f-49d3-bded-e838ac18fef8@linux.dev>
 <MN2PR11MB4664B05DF435E9731B7877419B4B2@MN2PR11MB4664.namprd11.prod.outlook.com>
 <54b8ad89-5bac-475f-b655-942c7e6d60a2@linux.dev>
In-Reply-To: <54b8ad89-5bac-475f-b655-942c7e6d60a2@linux.dev>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4666:EE_|SA0PR11MB4640:EE_
x-ms-office365-filtering-correlation-id: 64308b32-5b68-4cf4-a7c6-08dcfe00760b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VDVlcEhVc09JQ3NFb0oyZGJxVkxsRktyVFlvVEFFRjFyM2xYamduZFdRYmhY?=
 =?utf-8?B?Y25tVVE1S1hya3F3S2xhNVpHeDhUZXF0N0lLdUxkS2hoTFNJeVdJb1hFZW5m?=
 =?utf-8?B?ajlRdGhDQTZaUENKZHAwM2hSYjE2blBnQ09WaXRaZHFjTGJjdGNUVCtacWZK?=
 =?utf-8?B?S3dzM3crUGxkS1BJWHpXUFRERjJ0V09mZTVmUDhueU84cW9kSHNQSHp6bkJs?=
 =?utf-8?B?U3NMaytFVzJpbzRZMzZYdzg2Vmk1NThIUkdVdkdpaVlmYVg0YjJQb2srZFZX?=
 =?utf-8?B?SkpDcm9senpYUG5ZU2E5YVdYWS9haThyV005SUdwaWRUczA2NmFVOTR2Q0Vn?=
 =?utf-8?B?aG0vSXRPYWRHRkJveCswKzdSdWZNMXFsS2hPVlFFekF0SEVuYW9wOTNwcVpG?=
 =?utf-8?B?aUlwendtTlV0d0ZVUnpqbWZYL1F3S2U0TWlxR3hralBlSDVxWWN4bStWWmFB?=
 =?utf-8?B?Z01ROFBLUFR5WTQxeFpXUDlRZmZFYy95a1k2aXo1NGNYTmMybUpoaG4xeWxR?=
 =?utf-8?B?WjRnVUd1VFBUNDZoN0JtcHFUcmgwVXFXZWFwTytwREI1am1GTHNLckJta3lL?=
 =?utf-8?B?RTlsKzhXYWVkRG5qaERFQXBMSGdmWXFGYml3Q2pFWFFKc215dkJEZXFaQ3pm?=
 =?utf-8?B?V1hwd0lmbC9OeDI1RDBzb0VZaFVsbS9QckZDSXN1VjV4a3lOdGNpaGxpMnA4?=
 =?utf-8?B?RnlhM2tsbWYxdzNyUkZjU3I4Umk0c00xSVhwTXpKSUFGWDB6M3FNd2dlMkpQ?=
 =?utf-8?B?cHhzZUc2MWhLYTdCU2ZuTUloSGtVTGVrRHZVbUNTZFBGQnlmT21ZSHQ4V3RJ?=
 =?utf-8?B?Z3JBOEdyTC9ZR2psSGhUUWRXN3FuOTNlempidEQ3VlhQaUhhR0hjZjJkSzRr?=
 =?utf-8?B?cnY3OVpCeTZDT2dtL2trbVd4Z096T3V5OUJ4a05EN21YdXFPT1R0aEphZ1hQ?=
 =?utf-8?B?TU9SVWJHeFZ1Nlg1cEpvSmcxdlk3ai9wcjZKMS9CZ3Nza08wd09XU3FjeGMx?=
 =?utf-8?B?eUMvaUpCclVVQ2I5NFZubDZMSlBLN0JoN1ppdnFHSFdIc21tRnBtUFNLZDlm?=
 =?utf-8?B?dGRtdFpoK2I5d1lxU1ptUDVZYmdtbXdFNTRZczNST1ltZ0dsMFYwOU50eXEx?=
 =?utf-8?B?aGpEQXlSZ1ZycTBzSFJhRFZMbmpWRzY2OW5nTHpGWVZxQjFVZzFBbElqdTh0?=
 =?utf-8?B?UTdEY2NNVWJXQW5Tbjc4ZUR1MDNpRTVRTHV5ODhhTm5GWW82MnhKRWJrYmJP?=
 =?utf-8?B?aWk4WkZSdzRsU0dPK0NnYkRXWUY1bzA2NDJ4K3RtOVFreDczVUVuazNRZGU3?=
 =?utf-8?B?ampyd3F3YjBMcVFwM2hwNU5CdW9wMW93K3N2QU52aG9ZNE5vbXErL2xpYzRR?=
 =?utf-8?B?c2p5MGZLaEZKNDd2cWZ4eDk4bWZWK3BEeXJ2Wk5Yb0ZJVXB0UUhmVlFoV3Z4?=
 =?utf-8?B?TE90Q0lKRzVHVjN0WXJEbFY2cVo4S3p3YmxRTEU5Ukk0d2xXRnJlUGsrV21N?=
 =?utf-8?B?YnNDRVoxMFJOK09FTE5hbi96eUZQdFZsaiswUGtibHQvSkdHU2pZQmQwbldo?=
 =?utf-8?B?Qk9mS2kzUm50YnM0TjB3TFdNSHBVSFlabXd0eHBzZjdLZmdyc0FzUTVaV00x?=
 =?utf-8?B?Vk9iR2xXNmgzUVdNZERmTjMranVzcGJXSklNcDUydHNjUElPWXQ4d3Z3aWF1?=
 =?utf-8?B?NHRDQjhEeUVZdlBIMW5PeEdpODk3WXQ4TXc1aWlLMW1WVXVVWXFsWm9hMlZI?=
 =?utf-8?B?YUYrVmZOcmVZTEV1bVZHNFNqUldKQXdkV3hYanYwN2N0VXk5QzVuQzZEMnpD?=
 =?utf-8?B?UjhjeWsvRUdNWGxyUGg3Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4666.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGpTdkgza2lLa3JhWFFoM21CUlR5cTZEWkkrRHRHOG10VkRTMCsweDE0eUpI?=
 =?utf-8?B?MHdINWpLUDhhdExUMGVCTUEzNFhXb3E3d21sbnRVRS91b09WRFJzQVBJRWpY?=
 =?utf-8?B?eEhKUEdXelZzNk9MQ2RLUmtxMjJLa0NYeWRRSEplVTYyaWpwNlBXaksyd2xJ?=
 =?utf-8?B?SENhR1FQa3RwbCtuT0dlTG1icnJnTGpMWkpLWG8rL0IzZ0cwVjZ2UjI4ampI?=
 =?utf-8?B?YVQ4UkJZVTdrd1c5bENudXFHL1JrL0JmQnM2ZDgxdUxVQXEvY0l3WU5nOERl?=
 =?utf-8?B?VjFJUDdYZmRETmdLejloWUVPMUlKNi93Y2x5UWZydHVYbTRjcUZGZzkwV2dN?=
 =?utf-8?B?enJHQkViRTJza2JIL29hRDRWR1ZiZU5vY044VUNlMStqODJPWGM2UXJNMlBn?=
 =?utf-8?B?dVMyZkgxcnJqS1RYcWZ3cFVsUWJBSUlIamVLeWpwZklOaStZampFbTZVWlFa?=
 =?utf-8?B?MG1pbTdMa1dqTVh3aTNMV3IyM3hpTGsyQmJJcWRGL0dSU1V4ZTJmRHIwd1Vu?=
 =?utf-8?B?YUMvOG1EU256NW4yT2hEd3ozWmVQVEVrb2FsYVhKL1o1NUlwZGZhYUlMbW5B?=
 =?utf-8?B?VDR5N2x6eTJtdkcwUUlzV0NCcEhoR2N6TkJETnpEd2JYMnRQNkJYYytKWDJq?=
 =?utf-8?B?Zkg4d2NyaVVDZlRzOFVwZ1MzWVNCRDBFenh0THFJV01HQmI2RW81OG1EUXZL?=
 =?utf-8?B?d3pTMUxqUkhrTnVJNzc3Q2RraUhwZXRoY1N1cFdNWW93NUtIRW1RUzlUM0Fx?=
 =?utf-8?B?MU9zRHNaaEZMSi9lTk9ZTG51VFc3dFE5b2wrV21ycXJmTmZvbHNwK0pTWlAy?=
 =?utf-8?B?RmIzQi9tOXkvdmF4K0tCU3htL2dYU1g4R0NqVHZibUlza2VFRTRjTHpNRzFL?=
 =?utf-8?B?eEdLTytobk5aU0p2WUVqZzNGUVhrUUhNd0xYcnluWXV0U2FlRXJrOWVuSGVK?=
 =?utf-8?B?aFVVUWlpQW43Nm9rUXY5SnNaYmxoS3pRZnpWeWNuMkVKQ1djTnBIOXY2eWxV?=
 =?utf-8?B?NDhRZVRSSEZ2aVRQcGd2dmp3dCtnRmY0VXcxUzEzdCtLb09mOHNTRjg2YTlL?=
 =?utf-8?B?RVgvQUhjNmlIWEg3eWhYU2I4eG5ZYVcycUZEc0dENXYzVEpMVHR1YUdUWk80?=
 =?utf-8?B?eEZCNytJSEZ6Nm9CTzBpTG1CSitNdVcySlcyRThMZnA5YTErYjU2eHhrcGxO?=
 =?utf-8?B?QXMzeWk0N0lyRDhCOE5zTVNCQW1zV3ZPeTdmL3grZ1g3ZmZKTU1MTlUxMXVL?=
 =?utf-8?B?RmVsUjZqTWJESC8vL1dMMGYvVjltUnJuRlR3ZHYweDhRQVBZYUxHTWE4cUJB?=
 =?utf-8?B?dmE1Z0ZHRGZkWDRHbVRjaWJ4d1M4bFBrbUJJN3dIMXgxL3ZkcVhKNHlmbWwv?=
 =?utf-8?B?aUMzaHZZN25ZRVNXQzgwcnVlUkhYOFFzZlpWWUdDaU0ybXAxT0xvV2dZQU5J?=
 =?utf-8?B?SXJ4RGhRMFFhZnhDUTNPTWZCc1QvcTdEdXAzRnc5anptb2FlbGNnTlNmMjVi?=
 =?utf-8?B?bTdSUDNVT3d3TWtMK0xLaytiMFVja1FFdE85Z25uODVCSndjZG1sejBwM1lk?=
 =?utf-8?B?OUVjdlZzaDkyM3BKZHNGVlByVFRnR0ZkSWxjbEtmWWdTd3hqTzNHbG5ZNzVy?=
 =?utf-8?B?TkNEWk00VjlOWWJxdmdTQjlRTis1RGwvM2R1dHBjcDRyT0dEb2tpdGplSnN5?=
 =?utf-8?B?YjVLdWlMMEJxM1loTWVVREttMFBQUlFscmxuQUJUNUtBSDdvTmVYRTRMYVhl?=
 =?utf-8?B?RFNQYUVnc2tybEZ4dHlmTTgwSy8yZW1JekJWc09ldE1ZMVM0Y296SEV2cGg2?=
 =?utf-8?B?Y1lUN0hIR3Z5VjdmNk05YVN5M0pTOXRFVUJPcndwMHJYWVA5Z1B5SzJOWXpu?=
 =?utf-8?B?VnhBSU50WFNTUVJ0L21FTFlnMGtRL0dtZlBtOEtDNXBmS3dHaE5aTzZUWC81?=
 =?utf-8?B?MXQzUXFyeE5raUFweEplYXoyTStLVVBGUUE1aW1mam81eXV3c3l0eXc5Ky9M?=
 =?utf-8?B?YW5QQnpWcVlzZTd3YUFsYlVDcDh2UmV5WlNjbVNwMkJaeFdpZXJMajZqTWFJ?=
 =?utf-8?B?b0NYNFFZNmFNWmhtRHplRU04bllPUkpiUTd5NCswMDdya0lDVFI3d21WcG5T?=
 =?utf-8?B?MGxWTStkTzM4WGhsYlpCNlNhb3J5Q2wxL3M4cFVsenN4aXZveGUyWXkybVMz?=
 =?utf-8?B?V3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4666.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64308b32-5b68-4cf4-a7c6-08dcfe00760b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 01:15:11.3621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b5omiw+FEqAz7noPnBv00lLa/CaDCbxtCiBE/Miqn56f6oflxVK1fdkYR/cssDEOFMJ79pcXlSs/9vBEtHMNwVc20Dj0jCvNoi7XoQfzVZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4640
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730855722; x=1762391722;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=reGocxHtfQ03QvK4nVmh8ssz/K7W38ZXobfLSIiib2U=;
 b=fg79OM50/DE2YyoWBzNfQpUC+hQMwDmT9xFqBdoK9GrxShlGQkfuWAFR
 xbQfjgsEKOd4PlwMNQ4Csw+xr8Aj6VRUqzW6AOdtG6J1XbneTzFyRRaSt
 bLmkbgNmpjayvKmY2+O5H027MmyhHihN/dsQqwWYMDozCZejxn0/XGkrE
 0iJXjmPlrbcBGzCILbJj41X6HPtJecrrZ3+6FTtKgMfJrF1FuNB4uOcbl
 6wrrxZgYPJwA0DFRBbH1g9YUwYqC2ord0BIt3oJUjP4vRk4Nei6gRt9Ho
 EzoW7CGTPlyF1+58uVV9V4OkSfBE126MjaMC2JrS4hlZF4VSSi8NsjDIs
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fg79OM50
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/2] ptp: add control over
 HW timestamp latch point
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

PkZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9y
Zz4gT24gQmVoYWxmIE9mDQo+VmFkaW0gRmVkb3JlbmtvDQo+U2VudDogVHVlc2RheSwgT2N0b2Jl
ciAyOSwgMjAyNCA1OjE3IFBNDQo+DQo+T24gMjkvMTAvMjAyNCAxNTo1NiwgS3ViYWxld3NraSwg
QXJrYWRpdXN6IHdyb3RlOg0KPj4+IEZyb206IFZhZGltIEZlZG9yZW5rbyA8dmFkaW0uZmVkb3Jl
bmtvQGxpbnV4LmRldj4NCj4+PiBTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDI5LCAyMDI0IDEyOjMw
IFBNDQo+Pj4NCj4+PiBPbiAyOC8xMC8yMDI0IDIwOjQ3LCBBcmthZGl1c3ogS3ViYWxld3NraSB3
cm90ZToNCj4+Pj4gSFcgc3VwcG9ydCBvZiBQVFAvdGltZXN5bmMgc29sdXRpb25zIGluIG5ldHdv
cmsgUEhZIGNoaXBzIGNhbiBiZQ0KPj4+PiBhY2hpZXZlZCB3aXRoIHR3byBkaWZmZXJlbnQgYXBw
cm9hY2hlcywgdGhlIHRpbWVzdGFtcCBtYXliZSBsYXRjaGVkDQo+Pj4+IGVpdGhlciBpbiB0aGUg
YmVnaW5uaW5nIG9yIGFmdGVyIHRoZSBTdGFydCBvZiBGcmFtZSBEZWxpbWl0ZXIgKFNGRCkNCj4+
Pj5bMV0uDQo+Pj4+DQo+Pj4+IEFsbG93IHB0cCBkZXZpY2UgZHJpdmVycyB0byBwcm92aWRlIHVz
ZXIgd2l0aCBjb250cm9sIG92ZXIgdGhlDQo+Pj4+IHRpbWVzdGFtcCBsYXRjaCBwb2ludC4NCj4+
Pj4NCj4+Pj4gWzFdIGh0dHBzOi8vd3d3LmllZWU4MDIub3JnLzMvY3gvcHVibGljL2FwcmlsMjAv
dHNlXzNjeF8wMV8wNDIwLnBkZg0KPj4+DQo+Pj4gSSBqdXN0IHdvbmRlciBzaG91bGQgd2UgYWRk
IGV0aHRvb2wgaW50ZXJmYWNlIHRvIGNvbnRyb2wgdGhpcyBmZWF0dXJlLg0KPj4+IEFzIHdlIGFy
ZSBhZGRpbmcgaXQgZm9yIHBoeSBkZXZpY2VzLCBpdCdzIGdvb2QgaWRlYSB0byBoYXZlIGEgd2F5
IHRvDQo+Pj4gY29udHJvbCBpdCB0aHJvdWdoIGV0aCBkZXZpY2UgdG9vLiBXRFlUPw0KPj4NCj4+
IFNlZW1zIGRvYWJsZSwgSSBndWVzcyBzb21laG93IGV4cGFuZCB0aGUgY29udHJvbGxhYmlsaXR5
IGJlaW5nIGFkZGVkDQo+PiByaWdodCBub3cgd2l0aCB0aGlzIHNlcmllczoNCj4+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDI0MTAyMy1mZWF0dXJlX3B0cF9uZXRuZXh0LXYxOC0w
LWVkOTQNCj4+IDhmM2I2ODg3QGJvb3RsaW4uY29tLyNyDQo+PiBPciBzb21lIG90aGVyIGlkZWE/
DQo+DQo+WWVhaCwgdGhlIHNlcmllcyBtZW50aW9uZWQgY29ycmVsYXRlcyB3aXRoIHlvdXIgd29y
aywgdGhhdCdzIHdoeSBJIGFza2VkDQo+YWJvdXQgaXQuDQo+SXQgd291bGQgYmUgZ3JlYXQgdG8g
YmUgc3VyZSB0aGF0IHRoZSBpbnRlcmZhY2UgeW91IGFyZSBwcm9wb3NpbmcgY2FuIGJlDQo+cmV1
c2VkIG9yIHNvbWVob3cgY29tYmluZWQgd2l0aCB0aGUgc2VyaWVzLg0KDQpTdXJlLCBJIGRpZCBz
b21lIG1vZGlmaWNhdGlvbnMgdG8gYWxsb3cgdGhpcyBleHRlbnNpb24gaW4gdGhlIGZ1dHVyZSwg
YXMNCnRoaXMgaXMgc3RpbGwgYmVpbmcgZGV2ZWxvcGVkLg0KDQpUaGFuayB5b3UhDQpBcmthZGl1
c3oNCg==
