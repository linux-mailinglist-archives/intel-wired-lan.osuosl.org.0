Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMLnJ/GruWmEMAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 20:30:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3DA2B18E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 20:30:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2621383ED5;
	Tue, 17 Mar 2026 19:30:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0AaO2AkjaLHQ; Tue, 17 Mar 2026 19:30:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9008783EE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773775851;
	bh=m7wQf00CXyQjGVzrxM2BeEQF7n6Yeq03bdrDPk0QOjY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ldWNQ26l97UjFSTyTl/ZzP0qAQ42rDy84tWRObvRg+QhYD8nhljXALjIr2RyHNTud
	 NCEsx6JE2VpfmcD1eHmZcvKXyYS7p4sZkMMURA8naqR8AoHkB3xiBQM0QGKexl2+Eh
	 V5bGQVkG+m6mbYPYvIVtGY1/nvT9qZYjDY0URbcSi4MruT3ZCv7VE9Qyv22N+dTXnC
	 XCOrUWSQXghYTtmLcEu/haYWWJxEHjzLgOF9IqfqCdi6MJqIn4+7yA2OvzEUO7rmXe
	 eS4cnu0eiAXSevdMa/wMkEHSf9wedssgXGe624vqiRQ71zw7ZI5/z17GcCXZvMBD37
	 +gpMNK5A/hhHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9008783EE2;
	Tue, 17 Mar 2026 19:30:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F9BE1B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 19:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 455E3400EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 19:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HfvjunynXfBy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2026 19:30:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 317B840057
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 317B840057
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 317B840057
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 19:30:48 +0000 (UTC)
X-CSE-ConnectionGUID: uEREBOvnQsOcl/qmgcyRcw==
X-CSE-MsgGUID: HnKvFgv0RbqJwocX9HIkrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="62384092"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="62384092"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 12:30:48 -0700
X-CSE-ConnectionGUID: NVGvoFYTTPexVhDcpruH1A==
X-CSE-MsgGUID: qF/lRvgEQ9aTgInFLqQfjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="224512004"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 12:30:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 12:30:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 17 Mar 2026 12:30:47 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 12:30:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kQY9G0uQN1PdjLzQOHHGqfIDCSTHiQSlaswYhQ/kAlOIILL/qiwUAvFqfHw1qiiqkcMC+RozFsnzpOLXpeTigxJKzStVTfXH/zWBnUEQ4Mw2YCg9r/QIUhpPc/QmjwyoU26ELYaoabRapx5p2jgf5k0YV8h17RmLhEqTmHMnZEYYZh5nfrIh+LX1O0YXE3tv76HAqannH8Sk2HAr0lFZMt0I9xZ1KguYYTaUcZXV4Q5Q2i8TRyDcI4ZHVa6wKi2mst0ORrU62cjMKRVroS0uzFSbqkydU6lCaXmv+NXXSW7+tpAaaUYYp7s9SRNZwjK9TC9JWms+qivMYx1DSaEnJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7wQf00CXyQjGVzrxM2BeEQF7n6Yeq03bdrDPk0QOjY=;
 b=jPd9LkAeUeInGNlYS6AZQh2IPIO5H63DJGEOgAzw5urKYBGS8E8Zh281iM3g/9xjpmL/jAnPr6QdHyrU204QMuxRhxR4YcgNtrl7B1xIEszwAiUw3qI01IX0Y6cpl7Ycmq3sgvFUrS6T7GdfqS9HFXV33icuWuDPsQTzH/QGEJyrUx6SnwyytDCTPzpux0jV9LgE29KFE1Clk9COM+SRjOy/2p5BHVvp/ICuhrtjRL3X4iFqwQ9kNrdIHnm+bUDU1MzEzdYjndaOlX8Tn1veVwXRkr40i3jmiwX5pb1IseRa5aiO6rzgQvUS+bNkvdEmmUn2EcKE54XQo238WJPx4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8172.namprd11.prod.outlook.com (2603:10b6:208:478::9)
 by MW3PR11MB4649.namprd11.prod.outlook.com (2603:10b6:303:5b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Tue, 17 Mar
 2026 19:30:44 +0000
Received: from MN6PR11MB8172.namprd11.prod.outlook.com
 ([fe80::a60e:30b5:37bb:ecfb]) by MN6PR11MB8172.namprd11.prod.outlook.com
 ([fe80::a60e:30b5:37bb:ecfb%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 19:30:44 +0000
Message-ID: <f77ad6b1-1fff-4f3c-a411-5115bb66e31d@intel.com>
Date: Tue, 17 Mar 2026 12:30:39 -0700
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
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20260317143850.BLrnAox8@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0154.namprd03.prod.outlook.com
 (2603:10b6:303:8d::9) To MN6PR11MB8172.namprd11.prod.outlook.com
 (2603:10b6:208:478::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8172:EE_|MW3PR11MB4649:EE_
X-MS-Office365-Filtering-Correlation-Id: d0b47638-b3c0-4c1d-4514-08de845bae6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: MDd3vrmgZvhFZE85OWqht9juvrHnIuRVh8slZopICr6jtN07dleipruSuYRDh8258Jn2s+SkMECHIGGDiePDA0F4/d09dvG+A1qy2AmkFv+l4qgmGbLz2A6ePEOoCOf7cFkeACu+G4vg15QqGMWZ2EdvcrPwGh7Lvru9JXIKS+pSHSIjXKk3zSmRKiSieYahdOBfC7ouSZsN4IxlYgJOPCsSqlQwaK1qhxa1bPbDfVLYYMzgsPRrFS4ZGnPxexneGOK+jqYlgzV+TBzTWVCp0eX/baxnBax+xxm2Uu/3jM8o7KPRcQ0cJZPFVh1HW7+f52uLqOqrV1hXDOUpTg+cKBfoDA237NkXCZhGcrkr9JT5gCTQaj+MFcPDy+gD3VE1WwTxbB/qOcjIkt/8QaZz8cXAtNx2WVjNxaeYUndcKDBh5/3CHL2rI5iScKw9B77/d+ogz7hI0v7+WMiTBAZacUtFuK0FfNjxnRQdOC4k5rH7P7biBYjrsBJHaGhm2KqA5zb9izEYx4pxpK/9pks7AqczHWSVF3amt3DOQzGPSjA9Rga2GWyTlmoVW64lLShCZFUg+HHTJVqWZzM/qaqC6wAOnP6yUp8XSEXcj/TrVakf1GcTbggy+B6IyAoJ1mXrBFfbl748XTq83h70sDLgQ6HLn1603LEfwtlg/17L1mqcsqrQsGgrigTZ3opW1xQr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8172.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVZOSXNUbjRCVlBaUWtBRVhiTTk5ZldMSXZqRGJXWEpvdTlZd0pXbUZVU1Zm?=
 =?utf-8?B?SGtNZnczNWp2L1ZSc0djVWRBMDAvcWNuOTJsUnBoSFplS0tCWjBaMVNaelE3?=
 =?utf-8?B?LzdmZ0ZGZXlpR1MzSit6ZDdMRFU3THk1eFFBNVpucDlzbWlwakoySGFvdzV4?=
 =?utf-8?B?aHZEVkZMaWZwMHRNWGVubGZjMmYvRFFuUHk3Q2ZSWlgzdkJwR1E5YWk0dy9V?=
 =?utf-8?B?MlQvSDBDN0ZpNzJ4cEp0U2lHbEc2WDlNZVRQL2lwbTI4bFVGdXUwZVhvU1Fx?=
 =?utf-8?B?cVBJWHBLZGZoQ0FCT2tPWUVES25EYkFiTlAvSFM1Rjk2VlJFOEVpRXA0T0cz?=
 =?utf-8?B?S3Q2SThKMXBuUXMrMERsa2RjdmhqNWhiWjk5NGtLc1A1N3hPWVRteUtoNVJl?=
 =?utf-8?B?RExnN3lER1hnVmtxNjU2UEpuZUhDSGV6ZGQyUHBmVVppWWp0SWdpclhTblI4?=
 =?utf-8?B?eng3Qkc3RndlRVpjV2NtdUZiWVp6YjBmNWJKSTRZMU9Ib21Ka3BFOUZxVnFN?=
 =?utf-8?B?dGJ2L0NSemoyTndTUGFabGRHMFA3bmxuWHNEVXptVWZUQUJvTy9qcWJqVTRD?=
 =?utf-8?B?QUtFTXlEcXQzNWtoUEFEQjNkNDFlbGo3VkpwOHJFYmp5L2hXRlRBSWl6dlQw?=
 =?utf-8?B?dGNxbGkvY1V0OTZ0YUp6M09SRVVqQ24vL0lmRkNYczJWck9RZHZwOUJUaWY2?=
 =?utf-8?B?dENseHZRTVpQWkwzRlFQNENRTE0wU05Sa09wSHZzWGo0dmxWOUJacVlrZVY4?=
 =?utf-8?B?bWRVaXNXL0JQVm1qd3Q1ak5uQWptK2RoVDNyZTVTaEszNEZrc0I1VHdVY3JE?=
 =?utf-8?B?ZkJtMzl5ZXZoSnkwNkNEUDhGYTNYUVVZTnBBOHR6NFEvUG8wOFo2YlpseTdC?=
 =?utf-8?B?SzBneEV3anp5V1BxdFFwODdBNklVRDdkRlJ1UVFzZUwwVzc0RXhPYUg2N1NZ?=
 =?utf-8?B?M2I0MDJtYlpucWxoS0VYRjVqTkFHalQ3Zzlsd3pSWmFjMjF6RTBWSUdHb3Fz?=
 =?utf-8?B?a2o2bXZHQ1ViVVJiTldBa0drUVBhT0x4RUlybjhqQ0YyYmRjSlNRV1hhRTVN?=
 =?utf-8?B?K2JqRTRoZ2dDS2hDUXQxYTJuOFpQNFlDa0h0Qlk1clJYYmgzclNmcVViVEZH?=
 =?utf-8?B?Q0VWcHhHNGJGaE85bmZXRDNJUlpyeTN0NzEzb0xmV1FhUWpVellVVFgyVkE3?=
 =?utf-8?B?eE5XM0FJKzEyS2c4S1NPRE5sQzVmRUl4K1puMnJRZVZwYkhHV0hSN25UQSt2?=
 =?utf-8?B?ekVCY2xPZlJHQ1NzTzkwZUpxTDhtaTlOZjRud09zVEZGRUVMUndNNzdCQUhw?=
 =?utf-8?B?aHBEd1hMaWZ3YStydjYvNjBBaks5UDFYb01YNG82Y1M0ekNiZ3gzd1ZlUytS?=
 =?utf-8?B?NUczUjhkc0JpT0w5OGQ3NU1XMkNTdnNKVHpLOHdGMUlsNmtwOWErd21UVy9U?=
 =?utf-8?B?YzdSZ3lJUktlYmNYLzB2YktMdllaZ0ZLd3hYNTVHK0UyQ0syeC9FdmNaMWht?=
 =?utf-8?B?aXRvZTVMM2UyUXdrVURySXlFVkdWRnAreXZtZkNEVXY5YjV1dlFsdmhqWlRq?=
 =?utf-8?B?c0I1WVY0SzNhVCtaWlJGamJRclMzay9PYWNHQTJ0NE0vVVZ4ckdKOFBrUnpv?=
 =?utf-8?B?RWYxREUvQis0NGZsNkhEbE9NT0V2dndaYnNON2JaNzVVaTgwUTRsMW9NSXJ4?=
 =?utf-8?B?MTlpTHJERkVaVHZadUhYTGRzNUpEYkliWkZOK3VkMy8xYVJ5WVVidERLaE44?=
 =?utf-8?B?WWlRTjF2a1l4NTdJZEdiR2wzZ1RSYzNxSWFtdHVKd0ZWWDhHam4xT2VhYXQr?=
 =?utf-8?B?dC9SbUxtZkJvQjd3RC9iTzBOQVhYMGJCQnVscjhaZ2JxUVlkaDZzRmgydXVX?=
 =?utf-8?B?bWdQUS9LelZ1RjFRdW5aalZzNjd1dUxkMmNwdGxlbTgzQjI0T2lwRWJMMHhR?=
 =?utf-8?B?SGRZelAvc005TkJqSytsVjdiREhkWXM1ZS9tVDd5TlhYZ0Q1WmVTTFJOa21P?=
 =?utf-8?B?WXJqVWZxdmNNdG9qL2lOTW45ZldEZjkwd0FUbjVXUi9jWWxSNGtXSUQ4N2ox?=
 =?utf-8?B?WmpwcHBYeVBPMW0zcjE0cW80WUlSVVhiUzEvaDZoR1hMaWlxZE1lbkFaMXcx?=
 =?utf-8?B?RlJ0ZEV3ZVp4NG84UEdUa0hoUnl0dVYxcG91TWlUME1qc0hvQ3VncXlRd2gz?=
 =?utf-8?B?WnFwSW54ODVCam5wYjBTMG1jYS92NXlQT3F1ejVodHRiRzVVd1M2RE9SWXRr?=
 =?utf-8?B?ZDdQZVA4c2pqVnlBYm5LTUJITmhvWGN2RndVdWZ2WGczUHl2M3JDL2ZtRDQ3?=
 =?utf-8?B?TWM4dDl0MmFvTG5KdmdsYVAvYkdaOHVXTnRpZUlrTW1RN21abHF3cDRqOStx?=
 =?utf-8?Q?OZXMiX5pF8e81uDI=3D?=
X-Exchange-RoutingPolicyChecked: AVxRXzC5JWrBfs/YhYLQVIiEed6IxJkezCQVHoREAVllct0ZHAP73bZN0ame8bDn+M2yPjP32rr+r0P3VZvQrTeVy0/2PfDw18xoZoNAeObiHbYCSmhA18dxnB6hCImoloCy7YSflFOmS55MqdbfPOHoNKbE8+B8645BLsbIbAXurjvUsC6vMpov6IjtHjt5EZeMGja3HmujYMpm18lAee5x8B3SNgiCLTE6bVfSbJfTF6hxqPwcgdDAh4jSA/k1Cf1l1ueDHVs09BX1DXp83+fBPA+SQi6E7Hegp5PfCzOF+hfFUSoEGzABF10thzrG6XnAIEqBDOpuRt00ytafgg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b47638-b3c0-4c1d-4514-08de845bae6c
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8172.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 19:30:43.8812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SrrSUAQv+MHeIZcAE+XNL50llzcG0RH/4Rtavjmf8KLbsFK7qSFjIna6wuSm5a4WTRr45Y5NNbwQokdrFN7hdMOQxIRbY+QfqeXu2GsE4Ck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4649
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773775849; x=1805311849;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W44SxiM12rwYuYS2n7pZgOTDkJfQqZn3l2eBNgY91iI=;
 b=MLyApB2XAfQjY18IVYJSE2euYRdv/3isx76KSc+VPJ/eOJRjIb3jCqwA
 sz/ajt2y/UGiZ5blDqbDPmo9YTwIMzHOU9UFlQHXsKLx+tvWBIkmk3+dC
 Y5GHp41gE1/k6YrcmeOrlINWtm504lsHfKcdgHOcDxaS8psR7s+0AAsCj
 EgHsYlqxEXApc+cSxP2ItZXl+DVnAx91t7mW0MbnUNetnAY11zx/2FoTO
 X5WtIkJZdW8CpKkWaqXEHU7C3f/vExoAT9iuB7CkXzuBsb6qlweYwjxU2
 Dhk/7z4S3IgeGghl57rxtr3HiWwCaHF10T3zvIk4gDNxMWzaiBbWgHuAu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MLyApB2X
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: AC3DA2B18E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/2026 7:38 AM, Sebastian Andrzej Siewior wrote:
> On 2026-03-17 07:20:18 [-0700], Tantilov, Emil S wrote:
>>> Why is there a raw_spinlock_t? From a quick look a spinlock_t would do
>>> just fine with not runtime change for !PREEMPT_RT.
>>
>> The handling of the virtchannel messages is done via the completion API
>> and the transactions are using the raw spinlock from struct
>> swait_queue_head:
>>
>> https://elixir.bootlin.com/linux/v6.19.8/source/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c#L298
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/tree/include/linux/swait.h?h=dev-queue#n44
> 
> I am aware that completions use a raw_spinlock_t. I don't see the link.
> What would break if you make that lock a spinlock_t?

Right. Scope and risk - these fixes are specifically for the async
handler and I did not want to touch the global locking that will
impact the entire VC handling. We do have series in flight for -next
that refactor that code, while moving it to libie:
https://lore.kernel.org/netdev/20251117134912.18566-10-larysa.zaremba@intel.com/

... that also remove the raw spinlock. With that being said, I can look
into converting the lock to spinlock_t if that is the preferred approach.

Thanks,
Emil
