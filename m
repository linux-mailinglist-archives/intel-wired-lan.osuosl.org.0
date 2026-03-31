Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5q+JFTQ1zGmhRQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 22:57:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 179663714C3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 22:57:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C75560E13;
	Tue, 31 Mar 2026 20:57:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5uSHYo0RrFKd; Tue, 31 Mar 2026 20:57:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC22D60DC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774990634;
	bh=LYDhN7AXIDEQycEXgfvf1QZNK5ljTU83uonld7+HXug=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bHuHeGMROtfJutMjtMHRbeXzJkvlBx6kj9OeOPVJqC+Qq44mxU9Cs64Ol/DF1gu9i
	 0+V9rcV8++VmXxAqWFJcn+a7VP2fsy4SIm7XG9vovOOeeAJRHolsZe3DfXClsR6ibf
	 HbSbkslVRMmcM1GLLkOFG6ymyWobcObAQZphObdpFs7Px30yAKWgrK1cvPsQJ8nYj+
	 +T4XE62haB47m7brJlCwh/ZmplFnLOpH+QZCOGc9YxgqWqW/Q/2x8VfqJdcteyff/t
	 1klSG2SNB5tDoCRfZTV8YbL0u/WeiZKvL3osbKmn7+VtRmZN0YwB50QXE650M/GJg6
	 ZAMQCJaIid72Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC22D60DC1;
	Tue, 31 Mar 2026 20:57:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BE85AE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 20:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 99E4182AC3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 20:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UHcU7JutkSql for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 20:57:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A80A982A2E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A80A982A2E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A80A982A2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 20:57:12 +0000 (UTC)
X-CSE-ConnectionGUID: mYL7o6NHTyK96PaTiLXbLA==
X-CSE-MsgGUID: zOvhpyNCRxaJKXg9NNFrMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75190621"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75190621"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 13:57:12 -0700
X-CSE-ConnectionGUID: LQ0FHFhmSh+J4sfKwgqaGg==
X-CSE-MsgGUID: DKEmvmaxQw2mLEeiZ0msiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="231397957"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 13:57:12 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 13:57:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 13:57:10 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.38)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 13:57:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LlnWg/G09P/vLo+TJKgNzfph+lzh90fxGzv/E7dPnaJVe2aH/HyNZOyRejk9TCAnp+iu22aroUOMQ3FMnjYAleMhLa3yFJWYNYOwRh5Y1OS40Z1s2nDy4qBEBg0kA81VbTvVPc8ZzRFVw68gfJz9yqIrQ10lp8zAo9I9h17ks8fmecA4Xi7bHSR86ztbvi5M+okjiEjEToIlzHrEAriqrPCXdoP2Op34VAK5a6tLgiMKGhjCcSpHqNkw+fl+nm3Kl4lA2/u0YaLJImKvXyuYUTIkTwIAjJfxVfS8U4lUX6vGq3+LJNgbs35ZK+j7GZ5wlLz6Zs9YgyFZ1Thds9DpuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LYDhN7AXIDEQycEXgfvf1QZNK5ljTU83uonld7+HXug=;
 b=KvIR3lsWzQ3MEClclNSICpNqOuu9lUhQfyPgmB0ZiK6/ffd1cz96dcD4eIuHfA2PhcGlnx7O3LQZAJCr0egn4OunsP2BXOvew6r30+Ps3mhbdsHccSj/taU7STFgW8h0a66JtwAy2kaMfcvzK5JvDIRUvD/wVh7dSj79NztOqKPDuwHbFEc76KxqjnDSjztnu9FxZPD2Qy2pYZPuWutq4CZWB3Hn80UKzzIA8fqj8aLtJcXk3bHzrilf2sYRB8KeChH7JWxcj2fP9ne/pmhp2TzqQeEyV67kq8yQZeNS6wxLSzIxCouZAfYHk/7Lebsv+/iJTpyvKZ9scL1xiwYvmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by CH2PR11MB8779.namprd11.prod.outlook.com (2603:10b6:610:285::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 20:57:08 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 20:57:08 +0000
Message-ID: <b10a86fa-d827-4aef-8faf-99e6f4dcee97@intel.com>
Date: Tue, 31 Mar 2026 13:57:05 -0700
User-Agent: Mozilla Thunderbird
To: Agalakov Daniil <ade@amicon.ru>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <lvc-project@linuxtesting.org>, Daniil Iskhakov <dish@amicon.ru>, Roman Razov
 <rrv@amicon.ru>
References: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
 <20260325151615.1407182-1-ade@amicon.ru>
 <20260325151615.1407182-3-ade@amicon.ru>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260325151615.1407182-3-ade@amicon.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0386.namprd04.prod.outlook.com
 (2603:10b6:303:81::31) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|CH2PR11MB8779:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bd3cb8a-db11-44cc-1791-08de8f68122e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: qVOYvnmZ7z3cTHyZ4nPjAaB8wN3TyGJU9XWFi/9izbE6lfhitXNsubFmjtFBx9JJ6GDP44tp31+we1yoUjUnQFULi6gaagQufOttsFgGjY+g8ofLINaRleOMehK/izLPsoyhaI4a4f6wH8q58W9BAW+zQvRE0j74K09S5Z46xoXkPRCLLskloAbDPvlD1jgWhrpWPOm6Bnm6n97Bcc1Ir6F/62Njb5PBbnUKOZP8h1vIYiQ+DlnxT/bzQlQSEP/86XSfDhUq9Bbwb1vU9uKu62SSbCXocGcnCxj8mY1VHOdO63C8tJORj8eDQ3iyRojXJ72EBZBb8Fo5Nc8Xqrwu2T+w9kpuoxB47M3AaeyhFIeMkVfKJZ6nn88OaVhXe7lEidMx/mwtICSkxgopfWPVtb7aieI8THubugXR9xdYn0i/dYk5DBKjjQn+3+UoPVVNDNfmnoUusG5xjut6PbexsDi1ZGMAwAnCjpjPBEQx9e6hNx3qMlO/1Eumg29nX3Ff3Z6QFE/sNr2xNCEi0L5U1WQvK+PXtRFv2LFHXaWjbMpK/39vs9KINovtS3wZ5JPeGo5BsqXpEA7MsYXIfoquVhQJeBVTwpSgf9ZMhPz76McwkXuRJHVS0brwXAst4ofHLaUX5Ff+JeDLS0mp9WIC0FUXMk8HfO2nZvPh3j01G9k+1QPhsT9//VU6sGgqEkc+dryUFgpu6jFyD/AARhdj3pc0e6UyzwP9s03CIXiKYz0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWRXV0JXSjhlaUZkZlRlOVVtT0dHblFabEhOQkhiUHZQa0pnYi9FTGNpUFBB?=
 =?utf-8?B?cmNOOUVpZS9zQ3hZdTdTc3dXYVhsb0JNOUtxRTdqRDZGZkxKZjJDYURvY2N4?=
 =?utf-8?B?RkpKZVcyUVJkWDBnNm4zc3NJUzNCWDhUTmp6YWRwUmRLWVBwSkdqaHZ6S0pB?=
 =?utf-8?B?RWJIQWFIQXlNWWxUY2RHd1hwRGlCU2hQVzFLMjhrUlV5MTJBZVFpT0xEUlpM?=
 =?utf-8?B?RnF2b0FLdEtoUlpQSHhvWmh6VkFrdis5cS9aTEZ5di9ESktCdW9RVTlOdWdz?=
 =?utf-8?B?TzZFVzFrSFdtcTh4TDhkenN0RUdHL1hlVkYvVm5GMWs0M1RzN1pJanQrM0xF?=
 =?utf-8?B?dlVBdWpMZXV4Ulg1a201TE8wOWwvRDNTSTVGWnFnQ2JDL2VuWGdmeUlPd3VM?=
 =?utf-8?B?VkRtRC9FeWV6ai9ramNzaVRyOTdFYmV5ZUh5SXc0MnhWWG14azRmeU9XQWg5?=
 =?utf-8?B?RkRuRUUwWGhoS1JxaGVsV3JNQ2NRMERXbFNkU2NvcnBEMkNJNndBU0x3NGsz?=
 =?utf-8?B?U252SjZTWnBEZTY2djF0eWxVN0ZVT1l2NHdWdWtMRC9wcGI4OUhIbEpjTC9L?=
 =?utf-8?B?K2pMT2kwakZkV0ZvYXpPSkt6QWdmMWRyZ1haSVBYSE9CNncxZmtuUE5vUmt0?=
 =?utf-8?B?cS9CZnhpNlo2QzltRFl0ck5oYWMzbzI2QVFKRHhxWjk1dGJIT1lxbm5QMDFO?=
 =?utf-8?B?aVJEZEtCVFQ1VWcvL2JaaXlSM0VpMmpNc3VLNi81Vms4ejB3L1lJODZQejNO?=
 =?utf-8?B?bFR2dzhmWDJpcVF4SG5ZM0dLQ0JpMFJQYkg3V09pR2E3aXdqL0VNWFRRd3Bk?=
 =?utf-8?B?Sm1sZmxtSGJNOVA1VU9CbHQ1N2pHQTJqTTJRaVZwbC9iY1JsUmxsVldpdmZT?=
 =?utf-8?B?NTRpcjJYNVBDSW8vRXc2b2RYNkNhTE9jaEJITHRaaTJXUEdOd3V2ejNSUGFt?=
 =?utf-8?B?ZVRUV1c2QUhBblk0dFhQSGx3QzcvOEc2Zk81Ym55SExEK2JOdGRhYjVQSVZ6?=
 =?utf-8?B?cHZCeFNjWGU3VitNY2VEcW53c1pRd1R3T0h0WitUTHBNUEdWeno4SkI4RFBj?=
 =?utf-8?B?bDAvVUhiS0RpSDU5NGpFMFhadkJ4MnFkUEJISXZRbVlJZlRoMXZLOWJxUjQ4?=
 =?utf-8?B?LzN1aEJ0bFNHUmFCZ3V2aW8wN28xc0hPR0J4VjQ3dE1WUkhVZW56ajd1b1lY?=
 =?utf-8?B?aFpTbkpKRTIzNVNkWUQ4eW56dG9iYk1IRWlObnFjQThUdTR6bGJwMW5qdWtp?=
 =?utf-8?B?VVI3TzdBSWJGaGR1Y2FrTjlIMFhEdXNFNHJhcmhHV1RGUFpnUGtoWHY4VVp0?=
 =?utf-8?B?K2FuVE1kNmg3eUVsaGNnMWE3ajZTWDJuVTJzdE9VRFBlcnkvWkNOUDRlcTB0?=
 =?utf-8?B?L3o3VHV0a1QwY0hBMnJDU2pxYmdXMGNrWkc2SVR6NFVkbTk0VUxESTZFZ09W?=
 =?utf-8?B?cWJCMlB0ai9tbm5lYjRSQjlwL0pXVWhlZHNCa0xkd3cxVzVzYkppSTR3dWox?=
 =?utf-8?B?QkwycHZsNWF0SUh6U0dYWkZ6N05qenVheWhFcTNHaitFZnphVzJmWkJDUXJH?=
 =?utf-8?B?a2IxOE80bFA4V20yRnNLcGJiTFl1bXlmdkcvUmI0V0w3TWNEVWdJMkQyeG9J?=
 =?utf-8?B?R2Y2M0k5M0h2WjNzVVMza3ZhU1VuNzFZaUQvZXNqeDBiS3JuQXUyQVJDUC85?=
 =?utf-8?B?emNMWGl2cHhpNzJBVWwraXg4REx5VEZOYllCVnk5WC82RCs2RHZkQ0RGald5?=
 =?utf-8?B?d1U0aTZxSThUKzl3QjRXMjYwbXovZkF3V1dFbDVKdCt1UzdaUGsyTDdWeElv?=
 =?utf-8?B?aTFJTzRrZTI3NzZndHU2TncyN2NtdDhOWm90SHpVYzFmNDA0N2xyVTd2UU81?=
 =?utf-8?B?RlE2VmlSU2dxTlVaUnNCR0lFa1BxM2RtQ2J6V1AxTTYzTXd5RWd0SGprb0cw?=
 =?utf-8?B?RUYwOHQ2Ry9lNzNnaVh0NEh3V0laUUFJSVZFQTVUM2NBaitidEl3TjhFcEh3?=
 =?utf-8?B?Q3hVTDFvM0hHSXpHVUtqdmVna2dELzFIa1ZGRGl3U1RzdUdLZkt3eTRuNTBZ?=
 =?utf-8?B?WEhvUGhJUTdXazcvN2QvU29hWWZyZzJ4OTQ2L2Nrb1AwVnJKTW9GOWMzMFVi?=
 =?utf-8?B?VmtLbk1hWXdpQWVPTmd0M2RCUDgvUmhleFdGR2NTUHNQSUZaSFU4dWhIdHBP?=
 =?utf-8?B?UUJxL2huS2tnazlKS0p1OWJPNUVBT1dTblU2cG1laUhWZHo1aEo3bHVwSlVO?=
 =?utf-8?B?OURSb2w0bldjdG1uSENlaGdjOGRXS0N0dDBKYjY1U1hmbUIzemh3YU9rTjBM?=
 =?utf-8?B?dzJTT2dqVFNyUjZFbXFlY2lpS1A5SHp6UEJ1SVlSZG12R3A4c0hNNTRMbDhT?=
 =?utf-8?Q?8bIhwbtV4kofM0J8=3D?=
X-Exchange-RoutingPolicyChecked: CeAULrQRT/0ODk7nTxhEAX5/+HWnf5OrJN+n5/Zc/CTMk9nSWHsXvU1GnRZFh4JGPe3ujZti53jpZuney72exq2yncZVSfP806U0xr8IoHi1eLLOXrZyoOWt6613EE7KfeqV8QTeryrSWikPSmXw1perAPwPzRvQdtAE0Z4OUkHALOKxd6S2C0sLsnYkcgRou8TrCtFDm/rrvHBf8WmN7oaIwUxuXrEVqpaCnUeGlYOfp8/aewQt2ZyjWt9Oq2vOhqeGOF+Us4pFuUT4kj7PhZTOjA/50pBA0KMERJxUf54s+7A5gINnvhLwSf47s3GjjM8NJq/MYTyN/bIZO4VbXQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bd3cb8a-db11-44cc-1791-08de8f68122e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 20:57:07.9558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NEzB37bOYVFKlISWAhz9g2wb1H1tBCsRgXBIfe1zGH/orvnlP4M/ZFsLNhPAHXFLOG7oxQpWisJOC/ESkwTrTJJxAYHUAFCWBNEOjACiJyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8779
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774990633; x=1806526633;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=waKhtRYofb5m0URXvGPsoDi6YhDFUy4GY3cWhhjUeN8=;
 b=W8wj7fQ2PI4IvZOMksIBajRLwx1azuZiSBrDJMvzTAJnyhiABy4eLm+y
 0wRmpDU491b6fX7f+rkEvlKAjyRUxL9+56sh+4pLQ3inx+Vxy7/7zTTgd
 s8Fs48erlJU37wit01h/K9cKKS7kkvb9c8trUY9kiOrBlNAiYCOsGlk7r
 xbps+JXqcFvWNniMED+x5a1Xg6C32ujN8TC02a1TJ3IqwQvgVnelpuSi2
 hvlfbN5Qcy9tYgREb0xLIKfNL35qxG2uYTvcamJ4xAFyZa3+UKaBjYjPe
 JBArfjzyRyutfMwgws/ZVsZUS6CnPyzHpqAPHedWyHv5fod4zY86lli3S
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W8wj7fQ2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] e1000e: limit
 endianness conversion to boundary words
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amicon.ru:email,intel.com:mid]
X-Rspamd-Queue-Id: 179663714C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 8:16 AM, Agalakov Daniil wrote:
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
> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
> v2:
>   - Split from the original bugfix series and targeted at 'net-text'.
>   - Removed the Fixes: tag; limiting the conversion scope is an
>     improvement to avoid unnecessary processing of uninitialized memory.
>   - Improved commit description for clarity.
>   - Note on e1000e: this driver already contains the necessary return
>     value checks for EEPROM reads, so only the endianness conversion
>     cleanup is included for e1000e.
> 
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 10 +++++++++-
>   1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index dbed30943ef4..785d89477c43 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -583,13 +583,21 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   		/* need read/modify/write of first changed EEPROM word */
>   		/* only the second byte of the word is being modified */
>   		ret_val = e1000_read_nvm(hw, first_word, 1, &eeprom_buff[0]);
> +
> +		/* Device's eeprom is always little-endian, word addressable */
> +		le16_to_cpus(&eeprom_buff[0]);

I think the v1 was better. We should check the ret_val first so we don't 
do this conversion on error.

> +
>   		ptr++;
>   	}
> -	if (((eeprom->offset + eeprom->len) & 1) && (!ret_val))
> +	if (((eeprom->offset + eeprom->len) & 1) && (!ret_val)) {
>   		/* need read/modify/write of last changed EEPROM word */
>   		/* only the first byte of the word is being modified */
>   		ret_val = e1000_read_nvm(hw, last_word, 1,
>   					 &eeprom_buff[last_word - first_word]);

Same here.

Also, same for the e1000 version.

> +	
> +		/* Device's eeprom is always little-endian, word addressable */
> +		le16_to_cpus(&eeprom_buff[last_word - first_word]);
> +	}
>   
>   	if (ret_val)
>   		goto out;

Also, AI review reports:

The patch adds le16_to_cpus() conversion immediately after reading the
boundary words, but doesn't this cause double endianness conversion?

Looking at the original code before this patch, there should be loops
after the "goto out" section that convert the entire buffer:

     /* Device's eeprom is always little-endian, word addressable */
     for (i = 0; i < last_word - first_word + 1; i++)
         le16_to_cpus(&eeprom_buff[i]);

And then another loop before writing back:

     for (i = 0; i < last_word - first_word + 1; i++)
         cpu_to_le16s(&eeprom_buff[i]);

If those loops are still present, the boundary words at indices 0 and
(last_word - first_word) would be converted twice - once here at lines
588 and 597, then again in the loop. On big-endian systems, converting
LE->CPU->LE would byte-swap the boundary words compared to the user's
intended values. Does the patch also remove those loops, or is this
causing data corruption on big-endian architectures?

Thanks,
Tony


