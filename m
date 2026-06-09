Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OLxiNvCUKGoNGgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 00:34:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6D86649A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 00:34:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=9RNljYfB;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 839E185D7D;
	Tue,  9 Jun 2026 22:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cCZseDmH_6C1; Tue,  9 Jun 2026 22:28:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A107F85D77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781044091;
	bh=ioCCFwhnQv6N5tAId59rsI9bBT4xdpL2EmMza1Z/tfk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9RNljYfBn7CqWX+/ZBWjQK6IXaEONm6QV5UX7zqzuxbpqcaT8d6FIjBadgx1HiM+a
	 RgxyN3orqolJnJZ+K/An2s3G6zm/nLBt5lDwMxG6hFoTpBzn9YDdBCL2Si21xS0LWV
	 TI7Kciz5DUaUgSsqtIc2cBIzPQECUXf2X/2Wh2g08pZduWJCx/YqZPur1AGYWgUEKo
	 HKofwX/0W7gWR3RgZ5Di5dktOVXFqDWhZ8WOMPkPYHJ3P40LcHRl5Tw3uLlI4OY1EE
	 pSrwA7EzQh59BuGBU0D9vfx0zHgCyun/+RS5FSNuhRCNIXRkWoRRRPHCyOdpXXuusW
	 O7ySKNlBHdpSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A107F85D77;
	Tue,  9 Jun 2026 22:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 65E27190
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2026 22:28:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B56385D74
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2026 22:28:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eKXuG6Gxj0PX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jun 2026 22:28:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 42C5385D73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42C5385D73
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 42C5385D73
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2026 22:28:08 +0000 (UTC)
X-CSE-ConnectionGUID: oau68kWqTMCQJ6stNyu+Rw==
X-CSE-MsgGUID: k8WYhWsOQh+Qk5jJ6D3nmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="104489311"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="104489311"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 15:28:08 -0700
X-CSE-ConnectionGUID: UZAZg7GxS/enQxBk0IK3iw==
X-CSE-MsgGUID: ipGt/zAlQ3CTbvJjd48ZTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="276179936"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 15:28:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 15:28:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 15:28:07 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.71) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 15:28:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IYlFSJCT/y65VlaK7dTw8P/AITs9n7Vg6pwKHZQ7wxZNpVEL1wAQx9rPl8qqBFJ7R87Cmh/CZnuArVwWz7I0OK+Qt0y9nsGRan3dJtc92yPUZ8nd6MHSp2H5A3d5YIuMZvN9V59K7GjiIJNnluuHqjzRF35TeZy6Ese47aFzLCzpHIB9vE7rFabXFP+L5R2mQVplElw2JFdRqJci57eWh0wSoOHDSTQ1QtjI2CrUTiNZeuNMPF2y2RB84B1FSjKwUBJl0rCslokNFkceNs2gfWHG7mA2s8nROIKD6mTJbgK45gtzPpaBYYirp4ta2FQLc+eAtDxDlHZm8caBB8lDcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ioCCFwhnQv6N5tAId59rsI9bBT4xdpL2EmMza1Z/tfk=;
 b=YkQK/2rMwb658EIPoyN3dgorjNnu2mM4PubxgAifiQjjAEN3Q3B5zZ9/3iKj9Vy7pVlbnzT9jCRKARYiW50OdQ/rISYsYMms1FLfhwNW/2TLvclEolez5A+3gkQ59m2USDO5dtxOb5eic0nb8S+xk/mYu4ejWuuEq89R+kMoJUarwD1dxgbJeLL1S4SBtvUxKZPf8YM/T2ItPBRKclxgnybwz5S+SQJcIB6c04q16evFxSAvFXA/NwqOlrKNOaQli+SOb8oplmNwH5/5vcmgQ81frJkiGUX68KDBX6mJHT9ZUI2WjaxNJc5HbGRR/gQvBeXT2t3WKGm3+jopDGdLeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.13; Tue, 9 Jun 2026 22:27:56 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 22:27:55 +0000
Message-ID: <00f5f6e3-e80f-4c16-8d2f-f8148bcddfa8@intel.com>
Date: Tue, 9 Jun 2026 15:27:51 -0700
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>, Dawei Feng
 <dawei.feng@seu.edu.cn>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <jianhao.xu@seu.edu.cn>, <stable@vger.kernel.org>, Zilin Guan
 <zilin@seu.edu.cn>
References: <20260609125021.3873270-1-dawei.feng@seu.edu.cn>
 <ea66e44e-c9b0-4942-af6f-0b76e3f065a1@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ea66e44e-c9b0-4942-af6f-0b76e3f065a1@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0053.namprd03.prod.outlook.com
 (2603:10b6:303:8e::28) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|DS0PR11MB7785:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bf997e9-c0d6-4d27-ae95-08dec6765a30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|23010399002|366016|6133799003|56012099006|11063799006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: AUN4Sbwk54IZxl/919PgdQNhxAnJe74uHJdZnHz19zniS/XiKCqCiDYZHM98EufQBAVb6c3XSJD2pW/1i8AaiKvGV46zI979g42EgdJpcXR0Cvt7I2d8iSkHXnuVw+5d/SLulfHXDdDE25FDHHrrgd/ssCFJNGlZGYRyoRbHs6dynQW/f1rRIvCXMveB6+nqMKMuJyzlA9pTXm6LkBZrOnPzmh7o+OI8OjsCQ2SqnAPVtFdhpWnToDUPb9KdSS3g2/HGLp3Rpg0J2o4LHu7m1mg5I1QX9HMQDF4+hsWLYCmT+PGfQrp1JeHbGeyjxPM5a5NJ/voWy+u5J10gLqDuCuBouERSnJxwefG5CaWvVnYtsp1XfaXiHH4CYWc7SP9TuTAvE/cdDB5S4xhRCl+Xz3lpcfCHzIowMDhcirRq5AQgIqzQ/U7lZr85hDWutHUrgjnj4IkGUw9nRoN+ShKLGRYguytgHEKkNjKgCXAxXn8eK3WbxK/+WvyEbe7nuCuGnVby/thY231YE67OdjV6tJ7Sbo/NYqyD13P1ZFoNJDPj5gTBlMi2ZQnD6/XYbaN1DrT5iHZe0hB6t4dGpAaGbzeOe27K+N43LXo8J+AQou9SzRergNKiQ+jO/853NKsWG2dBXddzjfEM0HCYhj8swmA8LhKop4aqsCSOOWds0jLa2PANnZ9eVjKt3T+hKeDv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(23010399002)(366016)(6133799003)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0FSLzN2dXlnZjFyREdLNFpqWnkrdzVyZEc5aklPNzFCK05pR3NkZFZ1bHNh?=
 =?utf-8?B?eVlGa0xpWHF2VEthQ1cyUEp0V212UlJwMmxyc25BcFhuSG43TVpYWjNvcUtw?=
 =?utf-8?B?cGhlQnVMOVVaa3o2M0VxdkJiREVSRlZneVJvbXRFR0dUL3l3Q1JOVWhQWThx?=
 =?utf-8?B?a09zMmtrb1J5d3llMnFzblJJUW44SnZnWkVzT3J5b1kxbVJOM1MrcVFia0Jy?=
 =?utf-8?B?YWgzOG5WV0FIdjJHUFMwQ2RPemU2MEI1RDZmUXN3WkdaSVk5QnpTNmtrclpn?=
 =?utf-8?B?cXNvcDR6aDhoNFQ1WHNkaDVsQklaTWpmYTMvb0ZFRlYvTndtS0RtM1BMdHpi?=
 =?utf-8?B?cXFZTVpjNy84SThUTHp0bFM5M3hRcFdqN0p4MWdleUxseFVWT1h6ZFdkVXBT?=
 =?utf-8?B?SzBuTWNkQXBxSHI3Qmc4dXA4NDNKTnJYclQwR3BaOTNPdDlTRFR4WWdlQ2FM?=
 =?utf-8?B?WjVQY0JLMTlUWlFPcVR0M0NYUDNJcG9iMmwyZDI0SCtuQnhxWnd3NkM4YWJz?=
 =?utf-8?B?eU9oaWtncVZLRWVSZkZLcXFSNXR2MkFzdi9namJoRzhtb21idWg5aWh2alJi?=
 =?utf-8?B?L2tTWEQzSVIrOGVpaC9qMVVHbFFmeC8zQTIvNnBKazNXdlhIaVVTWXRMQ0JU?=
 =?utf-8?B?U1R3YTlpMXZ4MW16cVBJMkp2QW9pclo5WUVTWnlkZExrMGxhdS9ZdnY1MnBI?=
 =?utf-8?B?NEtZMkM4bXJBWC9ZanE5VVY4NWIrbGF5bDlRYk9HUFo4Ukp5Z3RUZy9xcGhy?=
 =?utf-8?B?WW9NNHJPc0lJYWdxSGJ5UW91MEpSa3pvbDluSGxwS0VOd25aam9TQXRmL255?=
 =?utf-8?B?NHZNK1pOQ2p1WFYwQTZYTGJXdkF2NDZUSlNXNzNZTDhZNjZlSytNdTNSamto?=
 =?utf-8?B?RTk4QXFXeEozQjcyNk5vTXZFOHNudk9uclpHdFN5WFU1MjFkR2lQVExvejNW?=
 =?utf-8?B?WGlGRWRjTnhBUkgvdU5KQThKZU9IQVlFL2Y0Sm9ZSXhLcW1KcXNvdDFJVWpU?=
 =?utf-8?B?RWwxWU9xOG1nQUdMV29jWG03eUxMTEhibTRqUmM2ZUQycXBmVTEweWRUOVhR?=
 =?utf-8?B?MVhEdTBiY2xDSDdsd0E4MUVINks3QTlXQWtvV3k5TDI4VE9VcTVZYWR5NHlB?=
 =?utf-8?B?Qm04RTRpSk9sWlVNLzRZUFpFVm42ZFBzTjNZWGFXVWxUZUp1VUs0UldWdzIz?=
 =?utf-8?B?eTFkN0Z4ZUdHR2RkTDlNTlhJMG1Vbkxody9QOEdxcGk0NkFXNmxGMmZiTk52?=
 =?utf-8?B?YzVMN1Ywa0pNVVJpbnF3bWVOM2wrTkxnbExwaTJmUFpVaDNHWXp0OWY4aXFi?=
 =?utf-8?B?UDhWdXd5cmdlNHk0cTR4dUZsT0N1VWRKODgrQk5aMWhLSXUySzc5LzBJNzg4?=
 =?utf-8?B?L2JBcUZVSzNiQU5TeWdKcW5DRjl4NVArMmhOVkRaaE5BdGF0ZlVYQksrU2Vz?=
 =?utf-8?B?ZWxsZ1JzcHZoWHpYcmYwdDdHWkhoaTFtakVIczk5bjh3TTJPcFk0NGhycjBE?=
 =?utf-8?B?TzFmUG15YkZVR0hHUmxrbWJQcWNYWU1xRVg0ZnB0SWdGS014M2E0ZC9EMHJh?=
 =?utf-8?B?TWUwQU9Bb1dnWXEzZjB4TVhXL3c2V1JjS3NobDB1L0hNSk5NOVlLVXdaVURU?=
 =?utf-8?B?UzJibDVJejR3S0NLOTI3SEdmTWZ5S3ZUSkF4NFp6WDcyVWQ3cVlUZFhZVnNp?=
 =?utf-8?B?dFlhU3V0dzBEejFObG85RSs1NWFCL3dGb09NeWMyYlpTQmRPbDRnTzkrVkcv?=
 =?utf-8?B?TFdpenZSdlIyay9zTFNkUjBYWkoxRHlxaHFoNklCdTVvYlYwM1NOSEY1SXZD?=
 =?utf-8?B?MldlQ3VJR3FKZ2dvRTlLbkxUUklTdDNJbUpMYnpnQXhFOElRV1VsbkI3cnUy?=
 =?utf-8?B?cTl5NHRPZjY2ZGVKUlVMT1BkcXBIN3JrVHFFK1U1SHhmV21iaDMvUUEzL09Y?=
 =?utf-8?B?dlRRLzZocUM2M1NBaE9NMGRPMFpjYVJnV0dwdUJMQVpKVGxDemJLcW95Q3k5?=
 =?utf-8?B?dGlJVkxmaVhRcnlRc3JVd3RIeDAyNUFPWThwU1VDZmtUdVNxT2JyNklicS9O?=
 =?utf-8?B?RVovMTBKR3FmekEvMkpOYlZKK2toTDJQRjBSa1o4ZWI5WGgyNUNZLzNBbit5?=
 =?utf-8?B?b0hZQjNrWjJPSFNzeU5CTklVU1EyWWV3TitkWit0ZHFCcUY2WkxpWUtJQS9Q?=
 =?utf-8?B?aXkvbFZ3SStzcDZXT2F1OWgzSDZud1hiOWthOFBGSThudUZYd2tOd1I1Wk1o?=
 =?utf-8?B?UGlzdStUL2tzSHU0RFVESXBqdHBGQ2VTaFAvc2padFFiZC9rNS80dWVFWFY1?=
 =?utf-8?B?VEVLYlNFQ1V3UnJTZnZCbmxydkx1a1R6TDNtMk1qUCtmTVlPTXZmQT09?=
X-Exchange-RoutingPolicyChecked: Br9RuYglx9KBxmncjefcEacd3tVTb81bTizjTXRfNV4bqOEa86wTcg3S8asUx6N+cxIRvHD/e0ylXBCERPGbrGuLDTZNNO4RaKam6AA/oBJhn0cXqJW/GcHMtcf2bn+lx97Zc8lAJU035UyGs3wO1AF1Utq9P2jeYlr0/ZbXL3BJXVYm+W4ELq0I3PbbHQUvvCk0EqpI/C/NkFBdg08jZJw5wlxiBKPfc6URebY7YqLYR5APfp7UDED76xaSosAxertPB6uZ7vmFmhZzwcEzx/hSxqOJ+acMOGgKkAieMeAK5iV9O1n2rkyUZwOsyNp98k6SxgIrVBH7jGCrObsdZA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bf997e9-c0d6-4d27-ae95-08dec6765a30
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 22:27:55.8321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mp9dAMpj1R5PGw0AyUNABDPBZEMQsMpRSUE2Z9WVpB9M7oAxKpMQGjlZAfrdkeBSO9YMZXXYYbyHPZoJEEvehU8ejqnoR4rskHev0ry/Rjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7785
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781044089; x=1812580089;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9LVUHsrxd1BNsp3zphmRTiTNtpznqPac1d9eHFNKnNk=;
 b=EqpoNzs/oKObpyhjNHePGoNscLPZIl/MUdxlVIJ6GB0xY4abyXtAX5Br
 8/c3XhdJFR1ne99gMne7w7vARB3Tffye9Hnc6SHhQ2p5o+4pRmkHlet5/
 LZKM+4oesdJ0o/+ORQ82xEMXAhk3J5XuCRL7qasBSksI4NHaGY7zIA2SL
 lvbY723QopjHM2CUfnn1X6y10l7i1pa2y9OdS1EtsnALiufnJuoO/+N88
 uZxvzn64OLoz3BKEgRAj2ABAMV688n7nd0sy0XiQb43IPLFzR/CyAPZsS
 kn8TEpHl7ajos77fM2gz9qgH4azYVn1yJEfyAGd4cWWVSehakCxInnRGu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EqpoNzs/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix memory leak in
 ice_lbtest_prepare_rings()
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [9.89 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:from_smtp];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:dawei.feng@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:stable@vger.kernel.org,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	R_SPF_ALLOW(0.00)[+ip6:2605:bc80:3010::/48];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:mid,intel.com:from_mime,seu.edu.cn:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E6D86649A9
X-Spam: Yes

On 6/9/2026 7:27 AM, Marcin Szycik wrote:
> 
> 
> On 09.06.2026 14:50, Dawei Feng wrote:
>> While ice_lbtest_prepare_rings() correctly frees Rx rings if
>> ice_vsi_start_all_rx_rings() fails, the earlier error paths for
>> ice_vsi_setup_rx_rings() and ice_vsi_cfg_lan() jump past this cleanup.
>> If Rx ring setup or LAN configuration fails, the function leaks the
>> initialized Rx resources.
>>
>> Fix this by routing these earlier failures to the existing
>> err_start_rx_ring label. This ensures the Rx rings are properly freed
>> before tearing down the Tx state.
>>
>> The bug was first flagged by an experimental analysis tool we are
>> developing for kernel memory-management bugs while analyzing
>> v6.13-rc1. The tool is still under development and is not yet publicly
>> available. Manual inspection confirms that the bug is still
>> present in v7.1-rc5.
>>
>> An x86_64 allyesconfig build showed no new warnings. As we do not have an
>> Intel E800 Series adapter available to run the ethtool offline loopback
>> selftest, no runtime testing was able to be performed.
> 
> IMO last two paragraphs should not be included in commit message,
> rather after ---.
> 

If this gets queued up by Tony it will get testing by Intel's validation
team ya.

>> Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
>> Signed-off-by: Dawei Feng <dawei.feng@seu.edu.cn>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> index f28416a707d7..7c81ca313645 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -1065,11 +1065,11 @@ static int ice_lbtest_prepare_rings(struct ice_vsi *vsi)
>>  
>>  	status = ice_vsi_setup_rx_rings(vsi);
>>  	if (status)
>> -		goto err_setup_rx_ring;
>> +		goto err_start_rx_ring;
>>  
>>  	status = ice_vsi_cfg_lan(vsi);
>>  	if (status)
>> -		goto err_setup_rx_ring;
>> +		goto err_start_rx_ring;
>>  
>>  	status = ice_vsi_start_all_rx_rings(vsi);
>>  	if (status)
>> @@ -1079,7 +1079,6 @@ static int ice_lbtest_prepare_rings(struct ice_vsi *vsi)
>>  
>>  err_start_rx_ring:
>>  	ice_vsi_free_rx_rings(vsi);
>> -err_setup_rx_ring:
>>  	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, 0);
> 
> Correct me if I'm wrong, but looks like unroll order is reversed:
> ice_vsi_stop_lan_tx_rings() unrolls ice_vsi_cfg_lan()
> ice_vsi_free_rx_rings() unrolls ice_vsi_setup_rx_rings()
> (was reversed before this patch too, but since we're fixing it, might as well)
> 
>>  err_setup_tx_ring:
>>  	ice_vsi_free_tx_rings(vsi);
> 
> Thanks,
> Marcin

