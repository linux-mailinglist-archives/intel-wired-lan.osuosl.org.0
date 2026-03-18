Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ho0NmqjummyZwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 14:06:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 715AA2BBF0F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 14:06:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E58F140C1B;
	Wed, 18 Mar 2026 13:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qc9GjsG3DYFw; Wed, 18 Mar 2026 13:06:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E8DF40E42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773839201;
	bh=YYXJ/vnU+0iBS8v4C5KHG7iGzgWkv+UwPHa6SwKNRy0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ne4HT/KBg5UrJWbRhm8fAIEe4/cYYNUm6GszDMOTFgkgdakYdbuKI4n0dVyjeXWrP
	 6rdcrjX4B09ePx6V9cG1CtiJBs+SgOEXj9n2FH4kL9zyMzONi/CMSbqLJkeOQyiqBb
	 nZhuFb2l53lH+yzPMs0rGgBZEEruMvli77UZPEUUsZ/P4IKol9iTCF/gHJE60pq4dY
	 nagUKoam+OGHAIIoT4k5FvvGQwixLV+LQi0wHVAn/179lLK5ZzcF5K+husnuKAk24n
	 UZdJsyfT+EVHEQWmMbbIefQiX7WSeEQ9IK4en0vQxQDez4iQ87GUpS3ahZ2PsSFA7P
	 0ehI/j1YUFBww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E8DF40E42;
	Wed, 18 Mar 2026 13:06:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D93891AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 13:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9F3F60A80
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 13:06:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VZJ1uHHuH7bf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 13:06:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C7EF660A7E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7EF660A7E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7EF660A7E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 13:06:33 +0000 (UTC)
X-CSE-ConnectionGUID: /pLCWoSqSDqDjl/IdczpKQ==
X-CSE-MsgGUID: dfwDqLGaSb2NCzUOKC8NUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="62454797"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="62454797"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:06:32 -0700
X-CSE-ConnectionGUID: 02iAsLwdSbCLMLdtDHjz5g==
X-CSE-MsgGUID: OMHu4ZkCQv2f2hP5EJJoXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="218197020"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:06:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 06:06:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 06:06:29 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.12) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 06:06:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d4BMAwvTurSkphr6IBPDgcjea+bk4cEFFAELlQflbXAl30uK+kZn9Tw6vnFZ0eICIO6NN2KaqjhPXKa9JlNh56fPkLIwB2fTLNH9rxKj4wQLLe9GPwZJHLYWsFqkTmS5HGdOBGJktlVzwzaVdHbA3msdgVoAxESMSUgyqx4C5ZAShNfyCPLqLuOoK92YiCfMEeHWdVZMoATy4JUrCirgPn1ppExXQOyBhLhJy4TtN9jb7wZcKYUF7ER4TvxutcInPmyQHb8+G3msL7NGSBktUDamUNZj0cz73CVKN6EbReYHiuWfz4q4JcViJkKvAr6fgEI/J5ufrI0ud+vZUpu+gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YYXJ/vnU+0iBS8v4C5KHG7iGzgWkv+UwPHa6SwKNRy0=;
 b=W6rpS1TzbNld9i59plbPbPDIOduacF0vPqqU78BVZMpAVuM06TBvd169I22uJeBDhsKxZogVCI3P+pAPcA9Y0S3fKZvVrZ9fYlj5CDMvF7ClZ9TuID2iRIBUBKCXzaYjYOhhLXG0wQ24iyjcwqxEwtzNUYhYOM4syoonGb/y5TeuZvoCOERivTaGWJgUEww8P3FzkLkcMDrj66qfsliBmqya8Qd+T3Zb/lvl0Jnen1pSBBaN78I9QxkJFN9Xl9lXh7by2Wu/+dp7EYLO1ltb7ga2sV1xI2sDlt2RrvvRXteauUEwVd2B8me1lm1fGje/rG/iC4IbKE494KgyOZIDWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by DM4PR11MB7206.namprd11.prod.outlook.com (2603:10b6:8:112::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Wed, 18 Mar
 2026 13:06:23 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%5]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 13:06:23 +0000
Message-ID: <3ae6f24e-0c72-4fcf-9bc9-3591fd9340d5@intel.com>
Date: Wed, 18 Mar 2026 06:06:19 -0700
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <aleksandr.loktionov@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <clrkwllms@kernel.org>, <rostedt@goodmis.org>,
 <linux-rt-devel@lists.linux.dev>, <sgzhang@google.com>, <boolli@google.com>
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
 <20260317090054.DuPZ6O0O@linutronix.de>
 <7247024b-fc8d-4a75-ba15-a10399db03bc@intel.com>
 <20260317143850.BLrnAox8@linutronix.de>
 <f77ad6b1-1fff-4f3c-a411-5115bb66e31d@intel.com>
 <20260318072436.4JmVdDfK@linutronix.de>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20260318072436.4JmVdDfK@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0056.namprd04.prod.outlook.com
 (2603:10b6:303:6a::31) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|DM4PR11MB7206:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bf0a24c-0c23-4a04-a031-08de84ef2792
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: t1Xz3WqQMGoJFHfb4FeJFjoNfmhfsFeafrGzTcZ+NAkF5Jrw/2O8e74kPosupGgXLR10bf3LRptqXRf7vYgTZ6qV0wYJw021YQoReddc+LGcJVSHVgSDu6qFsIeccfAAXUa32v24wkXgyo8anCOuDuzTMoZMg35HTEcKgycJg8j7cI+V5LlUIwj3sA/d2H1ELCMYm7i/m6/GyWwu8F8ihXm/o/sg4MuQ9rQHfadlHOP4/htg8F+1q6dBnen2yCHoFBzQ/RHvMCT5WWBmeA0RN0xYQfx/DJaGC3ap0X2L+iKz2YefYsSZDr78qk9c9kPdgwATtIJIB/4x9ca6+A+IwhgAOGEutsqd8C6o0/lllwO3R5PZpUqIL8ht8a05AITsbUikxLEEhL/8mJZA4AJbQ+diLEV7uEPSGDeAccE/FHf/Di48JwD/PqO9DN40aA5/UTe3AT0j2tUu8595cZdsT5gXJpnYhhnD65sNWUicXp1HOBAYSQ1dkUX5bX9H16FCKCZr1TexmNdrfC7slZx9v9C6TbKcgUDucyS7J7c/9UsWjPFdGXL/sJu0jwv4HtMOfNiTRbIk3i+9bHmi0OectCv5R9ZvH97/0BSnXPrOtw5yxJaQKGb05qhTUZ8tkQT2oWTIvbvb+zgvL5XOi5ZRZNiktzD9GCwTKGNFjnnQ6rttEgkQmkMeWMQzQJieJXQWjeNXSE4kGgcIQZEAsmEHRy58OWzFA5pw9r9GaPFTs8s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzlsL2dWeFZQSjNZcU9VYlpmRDdCbFBUM0Q3ZEhGaUVGQmI0NWJyNGo4TGYr?=
 =?utf-8?B?b01OR3IyYzlnb0IzSE95UEphTGJsSGlVRmFndytnUFQwalJXd2VPckVlQURj?=
 =?utf-8?B?MCsrSWNLcnNOSk9EeWtEL1pNdU5vTTJqc1BMRmdPZlhLcWdUT2Q4eEh0Zkw2?=
 =?utf-8?B?UGhOb0tNbjk1RTNlSXVLWGcxOUU2aWhCeEhNeml1VXIrQUViRjVwU0lsenk5?=
 =?utf-8?B?UzlzOExuM1NqbDNDa3FZYXlRNjJGZHYzZUo0VGlZc2t1cjJUb3VtVkpYMXF6?=
 =?utf-8?B?cGt2NHFEOGh3M3o0bmJoVWRGQVN0VitBWS9HeHBmZlRZUHN5ZCtMYk9hZE9V?=
 =?utf-8?B?Z20zeFF3MjN0ZW8ycHYxS0tMZFdJUkJVZ25hL0MwWU5LWHlyWVpMK0N4ZjRP?=
 =?utf-8?B?QVMxcXFMRnpSM0JSR2xHb2FoNDNzWmpVb29qVzI1K01QMXVKR2VRRDUvazlT?=
 =?utf-8?B?VEhoY3FmNVpSUEZ1Nzk5YUFrUWxrVk42aE1ISHRaQi9LeDNxNUgyS3JYVVZL?=
 =?utf-8?B?YVkrVWhDZm1MNFYvU3N4KzBDOUN6cE56OFgzSnUrUmF2b3NCNzYxWFpzNkpH?=
 =?utf-8?B?aWllNzArY2Vvdk15SHF1dUhXbEFRMGg2Y1RkSGlZOG9VU0JTeDUxNEhZTlBJ?=
 =?utf-8?B?cUxTZDNDL0Q5ZGFrWUhPWGpuMDFUMXpJV0dZL3V5bnpLWUVDcUNSRDZnOFhC?=
 =?utf-8?B?ZU5mZEE1Z1JCdEhTeW9EK2ZHVDdvT254ZldQOGozaU53LzA4MGxZczlEZHc0?=
 =?utf-8?B?QXJWQndzVFBweGU5OGl1bE5vMGN3KzNUcXZSVFVDRlhSZGF0REd1YzlOWEJF?=
 =?utf-8?B?YUhtS1NZSWl2Wld1czFRbHFQR2lzT2cySzNTSHdueUJzTTdzbnJSZzRweUNO?=
 =?utf-8?B?bVljcklJWjRKNTNGL3ZyWVlGNnViZTBvUmNJMEJrUnJLckMyamxiWHR0MUFY?=
 =?utf-8?B?cE5FTFZUQXhhRk1yVjliZjdhYjB4TjVaNGxlc1ZOMGVLYnczanNSelNWcDNn?=
 =?utf-8?B?RTFwTmIya0VJQUo3OU9Mb2hFd0sxVGFTQ1AzZGZ4aUNLOVM3RlM1M2V1TUFQ?=
 =?utf-8?B?MElxc0t2MTlTV1BZMlZEYlcvU204bEtITmNWbzBPb0tBSGt3YTF2OXoveFgx?=
 =?utf-8?B?V011QVA1RVRreWJ1Nzhuam04U0ZJV0VSTnBMV3VFaVdScmRkNkJGVHkzR3JZ?=
 =?utf-8?B?S2poNUdoTVFkbjB3V1NpOC9oZ0ZuRC9CUDU5MDZGVzY2YlRHeHVVVDljRDVr?=
 =?utf-8?B?WDFuNUJJOXpPcjhJbkUwVjFQQkJ3alVMWkVXQlpTYkgxNFcyM0VCZlVEaHEx?=
 =?utf-8?B?bEErYkRubUo0MUlpVGtLQWM1WkNGOU9EcTI2a2VRVXVpK2VqeW8rS245NUN3?=
 =?utf-8?B?bE43V3g2Ri9sWlFITjBMK2lTSkNXQVRza09zTXRHR1F6ZzVONU1FWmw2QU5w?=
 =?utf-8?B?NDhvbFVoTEhwcnRtNUNNOGVqbEJkT1NETWx2RnZlWHFmN2pnMUMvcE85QUJ5?=
 =?utf-8?B?T3Z2MVNjTWxpVFdJQmVBcmV4UTJtRWdoOWpwV2lwSlZRRUFqUjBZRXpWVzZK?=
 =?utf-8?B?a2l2WG9WRjZONHZxZ29OWlN2dFJKUTFVbklORGc2eXd5Vzh3dStsOEUvWlBR?=
 =?utf-8?B?WFFpV2tuQ2hHWElIVEhsSVFDQVd5SEtXSG5JOVVja0REV2RpR1cyN0g0U04x?=
 =?utf-8?B?T2Y4ZklKQy9sKzd2dk5SREovam5YOHFYNFUzTkIzUnZvMTV6dkJ4L1g0TUFB?=
 =?utf-8?B?WFo1NkRtQ2hPWlpCRXg1QnZWRmV2NzR4QzVZemNNd2paZlBWR1M5VFUyK1Yr?=
 =?utf-8?B?WlBEbU11UHdFTE9JSFNycjRRbzBZb1Joc2JRaFF6ZklDTnQ5WFNtdjIwUWtX?=
 =?utf-8?B?clc3amJKUlEvaEwvMjhZUnhUcVg1YzRNUXJ0Sk8vY1dyNFlJVVFNQkM1elhZ?=
 =?utf-8?B?UVNGRXlhVlY0SGNvZVJadWsxam43NU5ycjB5elJlTU5BMjkwUnhoN1dLTjJq?=
 =?utf-8?B?Q0hwV3lXYzhJVGJXbGVwSmd5cGp6MFJtMWNjU1lqbnVhZGUzMmZrK08vUG9a?=
 =?utf-8?B?VnAzc2RxbmtiWkRjaFFITTY5cVZUZFFLZEJ3TjlHQUJBNjVsQTRWZlloMnVU?=
 =?utf-8?B?TFJUN2JtZmhqWnF4WStDN1lOeVpzYWQ4aXQ0djQ2SGlDNEVwTHMxdmp4by96?=
 =?utf-8?B?MGlUZTAyUkhkeVlRZzRpcUhHcjgvZnpwM1JCeEFZeE4xSmJQK1ppZ0ZucXB6?=
 =?utf-8?B?L0hQUGgzU2VKa1creXR1bUh0QitSYXMzQzNtK1JBR3YxNC9lK21kMlIwaVY4?=
 =?utf-8?B?bzd3eXZWb2RzLzdSZ3J4d2JsV3RucVUvRjNYd1d2Vmw2UEVndlBkdz09?=
X-Exchange-RoutingPolicyChecked: tp0iAOlgnDhkYuHRc366Dd8DjKWv8qMPeZmhMBubOyIujfnZ5T4Tz8E3mIXTa6o6N5L4GpcKocrgoQW3G9M8SLHUeCq/Z3ed1mXT0HvNQBqNlsv/neFSyR1qqCiKBSaIEtrhvNsh0R2aUFDQlaSG+RelaZuyM2KBihjkvkbakQO5tEwS5Cbi4qGL5+vI7Y1dh3vgUiiV9Q3nurBdIufSEanOsS/V/daZB2QRDqcNBAREJpoB1zMm+WCOZUP9C1/2ZYxx/PixW/trQSpepKKDriwVt2EMDh96Dh7lYV47GNh4sVDPBqgmHMPKBTWRN/bpYQaWuktw/eKNwmUM5I5+YA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bf0a24c-0c23-4a04-a031-08de84ef2792
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 13:06:23.1055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GGU0cHwvEUSCKBd0S5WC9BwkXg9cjW3UdDLcl9cdYE4XaI8Rf8zLbL8OkEWLBSWrAKyKudxArIEw3Yky7jMHqreEUB4srt7NW32ZUWmTBzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7206
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773839195; x=1805375195;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=086OD4ATFGr/Ki98hSi/pIK9EorbmGclyXPugi12R0U=;
 b=JOe2WCJuHP8hx6DbwhP37fl16g07f9fB9uueZ3XjHMj6/xfQH1vtdoXL
 gkbmBgMveTtgrbIy9LUmzfuNxE3s9FJNZc6pUeKDaTZliH2TNeh1ONTFQ
 1aU7boeE/m0pDqCehzTbpp/J63Nd3ksbky99m3tx7GySRGdz580A0s/yF
 A4S+jOpxPf8SIYuZ/wtw5WY0xYKQ8ii2euBFwMWXcO23FhZ5BTDXRHZEQ
 qrWoFS1Gl7r2wU376ZQvcR1Z8pcBInowREc6ccFZEXUhho0cKtvj9YMJo
 33+KnPJRZOaly3QFjp6EUM/l67o5qitX953OLKwlOicOCY6acTeBIbiFQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JOe2WCJu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] idpf: virtchnl locking
 and async fixes
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bigeasy@linutronix.de,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 715AA2BBF0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 12:24 AM, Sebastian Andrzej Siewior wrote:
> On 2026-03-17 12:30:39 [-0700], Tantilov, Emil S wrote:
>>> What would break if you make that lock a spinlock_t?
>>
>> Right. Scope and risk - these fixes are specifically for the async
>> handler and I did not want to touch the global locking that will
>> impact the entire VC handling. We do have series in flight for -next
>> that refactor that code, while moving it to libie:
>> https://lore.kernel.org/netdev/20251117134912.18566-10-larysa.zaremba@intel.com/
> 
> Now I understood. You fiddle with the completion's lock. That is
> something that should not have been done.
> 
>> ... that also remove the raw spinlock. With that being said, I can look
>> into converting the lock to spinlock_t if that is the preferred approach.
> 
> The preferred approach is that, if you pick raw_spinlock_t for locking,
> you are aware of all the consequences and you have a solid reason for
> it. The comment in the file says
> | For now, this API is only used from within a workqueue context;
> | - * raw_spin_lock() is enough.
> 
> that is not it.

Understood. I will convert it in v2.

Thanks for the feedback!
Emil
