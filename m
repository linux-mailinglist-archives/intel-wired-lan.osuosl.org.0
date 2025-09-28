Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04344BA6DF6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Sep 2025 11:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 708E340460;
	Sun, 28 Sep 2025 09:37:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJY8vbNKT992; Sun, 28 Sep 2025 09:37:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49B7440594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759052267;
	bh=whl4NhkQLpvFu1s0edRft0u5PQGCyeqCIADZwdU3BNs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wAamvE2o5mAxaqb+iNWVeCsj0bFf4by3yYqT7RYdIw7j4o0tWLp7K/OsD58m736sb
	 Juk2C61ECsOzvMNQKNYVOQgV9o2LNkSNoAdpm9DwIvzHxmGKGk3lw2LcXgl3vZMUmR
	 ZgHzt9hnNqIxS8xA/xClw8QxvrZUA2XbEGs6Kgd8NKG1Rqvv8SH17GzoJqwTmtbmSZ
	 GQSIIqnSFRy/b5jc3K7l5Vn9NEJhBi4DHzTJ/LjL0RqTehD+hNsBmV9bGf7iDswlG1
	 lI+x5jnWjSP+4kwXMVKowUlLsKyJ+f1xyNIFqWwQACnZvbjBp0RjykPPKXpsgTlRDW
	 yjgoO5RJHYkYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49B7440594;
	Sun, 28 Sep 2025 09:37:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A5DB6111
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Sep 2025 09:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 360564055C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Sep 2025 09:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Adn40KTMJ7jl for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Sep 2025 09:37:42 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 28 Sep 2025 09:37:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D9A1440546
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9A1440546
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9A1440546
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Sep 2025 09:37:41 +0000 (UTC)
X-CSE-ConnectionGUID: l45ULMvrRDOJlFVtsoNfGA==
X-CSE-MsgGUID: Yg6dtAqqTKu4CIZr25bNPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61234459"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61234459"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 02:30:34 -0700
X-CSE-ConnectionGUID: bADRklYtRjuxQNvz6hJLIQ==
X-CSE-MsgGUID: MfAqD1vCREiQRSgImAsdww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="182286622"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 02:30:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 02:30:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 28 Sep 2025 02:30:33 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 02:30:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fHEluN349x3CihfBXmonkq++a0OXnFVUSDzrZ2v8TQWCBawqQiBxsZt32aaMs7e8roCxC+LiqSLGEYB1XczUoG3dxvzPUiH198TzoPtm2Q55LDrGmYsA/Z7eP/4o82i79ebZxGi6xvDX3ci0880OmXFb2+0p9wrzn4z4h7M8x2dHqwxd3ghKalmeD02xxSLifHuW7aDrxqCpKA1JVFfiEfbW5QO2QyUt9bMrwdHgQAEPXm6nyJ6vxTR2c5DAY8UV3sK6iyZxvqTmW7f0uStnD5nU/o9RhtOU6j/1Ls1hQrDYVucXVwL98vg6bS/yyiBPFz5qWkCs0fijgHzU2TayqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=whl4NhkQLpvFu1s0edRft0u5PQGCyeqCIADZwdU3BNs=;
 b=YXGf0Rxzihk1IbaOkCh8pXkEjGuu7Wn4/W8TR+Ob5EweLTLGml7aYV2qDYmLeCvbmTR5Lzw/k4JSHSaGxnohEr+nnBI5HrhYRiozaiEkAuhig7spshgnTUO06DIbC7nlh/3TrH4jWEhRDQuzn8ctXJxfJJqrrKA1SoZtv63Ayu715p2U1d5ntTzJs/wC/ePM2mv9DqMCuhXxOJ3HV7wDGdaHzFY8tiGT/7rtxZbMY+5FDt+JPG1oet1XdCdAyKHaWRblV8Xw4P/aOwCGtR0+4lnDVO9+oKzBdRCgaC1cdEKvM0fp96JyL7q5RtSnamADnT1AQ0TWzuz/0Qul9MXozw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY1PR11MB8032.namprd11.prod.outlook.com (2603:10b6:a03:524::8)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9160.15; Sun, 28 Sep 2025 09:30:31 +0000
Received: from BY1PR11MB8032.namprd11.prod.outlook.com
 ([fe80::f469:1c21:72a6:af47]) by BY1PR11MB8032.namprd11.prod.outlook.com
 ([fe80::f469:1c21:72a6:af47%6]) with mapi id 15.20.9160.014; Sun, 28 Sep 2025
 09:30:31 +0000
Message-ID: <fd1e8bbe-199f-4771-ab14-086bd21d0b1d@intel.com>
Date: Sun, 28 Sep 2025 12:30:24 +0300
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, Kohei Enju
 <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <aleksandr.loktionov@intel.com>, <kohei.enju@gmail.com>
References: <20250920063923.31468-1-enjuk@amazon.com>
 <625ae122-7cfc-4297-9b98-8495c3d0f237@intel.com>
Content-Language: en-US
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <625ae122-7cfc-4297-9b98-8495c3d0f237@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0009.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::18) To BY1PR11MB8032.namprd11.prod.outlook.com
 (2603:10b6:a03:524::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY1PR11MB8032:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: e88b51cb-217a-4680-6a57-08ddfe71ab26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SitiMFdTUndsMnhCUnpDd1NiSnVmT3pjaW9VcXp5Mjc3aTBDRk8zRGltM09k?=
 =?utf-8?B?Z3haRy9SNDNlc0NUTS9PRlJoVnVUTWpMTHBDOHNrTVlDZThXUEtYY25WanN0?=
 =?utf-8?B?YTJPR2Y0S2QyRk83N2R0OGNmeGhzV1lqdEp3YjFsaTE1QWJMdXh4R082cys2?=
 =?utf-8?B?ai9jZkNoWnFQbFVaQjAvNmtvYktvcDI5eEY5LzBHOFMxSnZtSGkyWFJVZ3Bo?=
 =?utf-8?B?S21hSGhKSFlWMXVXTTZhOGVUdTNhNXRVbTI1WG9aY2V3Z3JLaWdTNHhCS0Np?=
 =?utf-8?B?dnVUZlJTM0hYZDF6NEtQd3hGMk84UnNoejdEODJrTHFSeTEyUkFYRksvcUlU?=
 =?utf-8?B?Z0ZIMWNXZ3QzNW5VSkVHQTUvZWdWbGZkWExGUVlLZDY1bVAwOU5XdkVVbEN4?=
 =?utf-8?B?aHJhMVpFSm9kMGJPb3lrdHRZYkllenhiQlhtSFcxYmNXNVRVOEFUeDNHN2pC?=
 =?utf-8?B?ZXRWRFVvb09HbnZNTXY3R0FnemlzR3FuVUJBeXRsSUZMRks1UmtaTlFVaUpL?=
 =?utf-8?B?d3d1YXZ6enJ2OGlSK0lEVE13ZSs5MlE0RC8zQzRzdWtiN0h0WnpOeXBKa1I3?=
 =?utf-8?B?TGtnQXhtc0gzK0hQOWwwbGxIYndNazh2ZU9PVTgvSDZXYnBUd2JySFg1RnFU?=
 =?utf-8?B?cG1zMUlnZS9qTlNPQlNBcFYwOWUzV3J2cXpLaFdEVEZYVlZaSWsrbzRBRi8y?=
 =?utf-8?B?RUt2clpSbWpqVUpCd3JJNW1nVmdPRllBaWhPL295L2lFKzVZSlpxMC9CbkVp?=
 =?utf-8?B?amplamZqV1Z4NXpVTkFybUNaQTdYdXVya1dHYlp0TWxNclo1N2FvRnNST2ZX?=
 =?utf-8?B?TG0yZ3ZSSEhWbU1Wc2I1WGFKWkV5dThFRVVvWHJQN3FSV1JIUDZwcUlBRGFj?=
 =?utf-8?B?QzV4aWVRNkxjNU9RY0FhZFoyMGlCbjhKUm9DcHhHMzNhaTg1YXRMVGw5NStK?=
 =?utf-8?B?NXR1Y28rTWVNbmd2LzF4YjVEZ09BU3dFMjZlbGRBU2h0ek9uRjJyZkJHUnJU?=
 =?utf-8?B?THp6VVA3WDR3OUlqdFJHTS9HbjhXN3U0U05IOHRtcVlWeWtFaXpKRW16dDFl?=
 =?utf-8?B?a25XZDRoOGhSVVZFVVdxbmJDeWlIaWZSY1NER0V4aDZCSmlUYkM1SFUwMm9Q?=
 =?utf-8?B?L25TcFkraTEwd1F1QnB3SUNxNFlCWmU1TllmMzFHeE5rVElFM0tDampxWmZx?=
 =?utf-8?B?b0ZEUGt5MklzKzNKQ1ArUnVacEZjaE5sT3oyalJaWDBjTmNMcXlWcm9kYjlF?=
 =?utf-8?B?cnV6UkJ2ZkdGU3NDaEJGR3hyUW55NHlNa1NBQ0RPSUVxTkU2QTFHOGdFVGJY?=
 =?utf-8?B?VFVYSGs2bWpWUHV0VnY2ZTVmaURNVXZNMlozQTQ0TzA3SVZGaDlLTGhGVGZ1?=
 =?utf-8?B?U0dQN0R3WE9qM1JBTmdjUjg2NzZVUitxWkxYeEsyWnh0bDNkZG5KZUdKTDZF?=
 =?utf-8?B?UDF6YnJoVDZ5MjZWdW1IUCtkTkJLc0N1ejJuWnhjRm05SG0yeFB0UDhRTUZB?=
 =?utf-8?B?dERFZFVRajRjOHVUQWxzSVFyTm1IL0hRNWN6N1M4Tnhyc3JSYm44aU50ZmFK?=
 =?utf-8?B?ZjBLU2IvRnlwNVlCL1BRQUxyZXNKeWRqMnpMaENWMXo3MlR1U0lySnBnTENC?=
 =?utf-8?B?YlBvUWl4NGdzWmo5dTdHMGNFb1pFcms1L2dTSjA1YlZobTJ2T2N0elAyMDNK?=
 =?utf-8?B?RHA3bDJIQ0pUVDY1YjZsSXBGczVRTXZlRFZ2emNoVThKREdLUjE5RGJHTVVm?=
 =?utf-8?B?VWlNQkM1VmhieG13OFNrQ1VCZ2xldlAyZGJuZytONHRYeHR4Z3NyQmNLOWo5?=
 =?utf-8?B?NE1aTWNMOHpXQnl2Rjg2Z0N4aGJDcUo1dUEzaWNmeUQ3Q1dETk04VFFJWmVN?=
 =?utf-8?B?TVFTenREVmtHc1NhWVp4YjJhNnhIRHh1ZDE3M0hWNlhPVG5yYURNOVZzRFNI?=
 =?utf-8?Q?tiCwvdzYOLxbaI02aHIqDR9KzTWTGtCm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY1PR11MB8032.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGd2OE1xVzkxZWozaHQ5c0ZyVDVMK1MxZWhBeGltL1RwRUkyQlNhTDZQUkVX?=
 =?utf-8?B?NHZjRHh0aVVRRW9vdWZkN084c0tYMG12Q2VFY3ZxbmNIQnY2SlZEMWE2S1VE?=
 =?utf-8?B?ditDYTFqaEZyKzY3bHU2R21TK3d6aWF3d1JoRGRhbnFyRkZKNEJOb0NITUZX?=
 =?utf-8?B?Y1M2bVlLSjRBK0lURjBodVp3RUhTSkJ0T0dVRVJVRlFWQ3RlYTltTzNmNUpW?=
 =?utf-8?B?emdDVTF6bzVrQnZTVkpObW0ydmlvd0JGbHBwTEwwNnlNdXZTVGZBTWQydW5H?=
 =?utf-8?B?SGZML25ZQ2FTN3I3U1R5dVNIMU9qSHBOTXdQODZLc3FNKzlrclJSRFY3eTV6?=
 =?utf-8?B?bXNXMUMxTVF6WUtTZEtod0JPM2UySWM0a3B0QU9iQ3F2bDRKTlFqR0FESkVE?=
 =?utf-8?B?ZWtLZU1CRkVTdGtQMDNMRC92bnRFYkExSWQ5SFJrWjhpZmFZdkZhSllRbTd5?=
 =?utf-8?B?NGdCRDJtRkFrcSt1U1JucUVLMFNpRENQaUh1N1pLWFFCeHZRTHQwK2xCazhK?=
 =?utf-8?B?UkFXUldrOG96a0VwT3RobUhGbmRQcTVVM3FYay9WdE9zTEdUZGpST290N0x0?=
 =?utf-8?B?OVdTUXlmdlUza3dTTTN3c0hCbkJNWXdKQlNYcloyemdjSENwc3ovbGloR2Zr?=
 =?utf-8?B?WlhCRDVBL05ScmxNdmJIYlhoclpmS0o1UGdQY1Y0bWlRenZ0aTQ4cnJJT1BG?=
 =?utf-8?B?S2srNVNPaWcxNm56VGpGVFg4SEkyWGRzR0NMSHNIWHhMVVFaaW4xeHJRM29a?=
 =?utf-8?B?UktSSXM3czhhVUdQLzVhRWU4ejlqSC8vOElRQkhucVd0SlBWSW9ZTE5oWmwy?=
 =?utf-8?B?eXlYd3lFcUdvc1NkRVhsQUI3MFlhMXpza2tkNTJCYWxVWnBTODlWdW5LRExJ?=
 =?utf-8?B?NDNZZHdIbHpVeEMzbkJGVUxQWDhtbHJxUjRLdTlUeTNXSGV6N1hmeHozUFVn?=
 =?utf-8?B?cUNIK09UQXFCMmxuNGJQRmEvVU1Ya2VUZmZuYmlYOERXaCs3ZWZqSGQwbGJF?=
 =?utf-8?B?YUtzeEYvVDRlVHU3bDc4andYYndtUVN1WTVhREVyTXRsckNDNDdpY3RlWjV0?=
 =?utf-8?B?L0VHdkRHdEZySDZJN011U1BPTUgxb2xiY1F3aUx3MzIycXJzclV5NWRsbTF4?=
 =?utf-8?B?eDQ3alhQMVBoNzZjdFBQWFVQU0lqbDVKbGNuQ0ZtWUduOXZ3czRBSmsrQm40?=
 =?utf-8?B?R3dQWjRmb3VPRjk4R2lZNS9LVy9uM05rOVlTRmh0WjlrWjdsOWV6U1orQW1Q?=
 =?utf-8?B?N2Joc3JuVTlJOVliWm1lQkZMMHpjWFV6V0pNZWxUYmJvY3JING50ZnZxUTcv?=
 =?utf-8?B?MUN6VFVLbTV5M01CWElFKzY4QnNrdFhyaVB5aWxWTUV1VmlORUhvcjF1YmdL?=
 =?utf-8?B?L2FBNmhMb2M5Y1J5ZmFVV1lJaldXWmFUREx1b1gwL2hwMjZlT1ZiU0VobkhI?=
 =?utf-8?B?UXNqdVFaOSsvSE1pdEYrL3owalNLNUluYitOSU52bUNmMTRCZW5WRTlxai9L?=
 =?utf-8?B?N01NYUhWZFJFV2JhVU4vVWVZWlI1bGZqVmhwaGs2UU1Gb2dJa2FpNkZ5c0Zq?=
 =?utf-8?B?MlhHU0cxQnFmKzg3eUY2VEpkOUgvVmZrUzhCMWFsN2s2NDZpNDBES1NIVlJF?=
 =?utf-8?B?c0JIelVZU3NuTVVFb0UvZ1lCcmVQNk5IaXpCUWowMUdabUthR3Q2U1lDSFc5?=
 =?utf-8?B?OG0zUnNlbzFPK29Hb2FJTFpkRG9zQitxbkN4UE1IR2tUYjJmZzAwMmxoQkdG?=
 =?utf-8?B?NWlEamE0Wk1IM1ZoK1FxVkNzdzZWWHBGWm5nR3l2eExKR0lyYWhJRks0MzRm?=
 =?utf-8?B?a1pPY2UrNHZnemxUbWk1clV0RlMwYlY2Vnlmd2hGYWFLWEJobVNZQytrUUlL?=
 =?utf-8?B?S3VGMDI2NkVsRXhDVzAvb3BXbERIV2laY3h0RnhyWVJzc01IejBsc0RVWERs?=
 =?utf-8?B?d29lbTRnWkpKSlVSLzRZbTYybVNaMXVJbWlRSytPakt3RkQyeEZnVnFZazhs?=
 =?utf-8?B?MGU4eS9LcUc4bC9CZjQ0aEVGV2kyVFF3dUo0NDY3cEkvRGZXY3YxaHBrTFgv?=
 =?utf-8?B?cnZFSkZXR09Ba3p2WktTY0NMQXN5d2s0ejBBTHBUK1lOSkVwR2R5MDNCTHg5?=
 =?utf-8?B?SXNoQ2J3OE1mVU1La3lzaHg5dVZJeUlTSXB5WVRWMzdXaWczYnFTK1JKQmpP?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e88b51cb-217a-4680-6a57-08ddfe71ab26
X-MS-Exchange-CrossTenant-AuthSource: BY1PR11MB8032.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2025 09:30:31.5720 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BthI0Re8chFqozbN4X7iroLNEylxidfOzCci8K0gl9yhZjz2L4GxJ1GdVuP7gvBTQcSfv9DHMftVXZpc+aTpmrvwND+1iL5RNbIrEaQnFr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759052262; x=1790588262;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h3srFU4sovE/+dSAwA+VFQy5sM8lFkaCOfldt+q7Fvs=;
 b=Di/xcGXrHME1dklE88WoEFKH3BGIMWezjx6Gc431LcXst0ciielPQdfV
 rHXV6d12NSDBo5/v/51IsuPBZczDKHYdw2dl+Fo10PwIndoYTtIyjD18/
 UMNcz8WJdebA1hndYzf2/VEAh5Zyhna/HIzJQrfAxprG19rfm34K/jb+7
 MSHyBO+PpKHZOgeFNlcTxJprtMOrKVYoj0kssomIiJFElvOfehRBJIjTH
 IJX5xQvzchgx6Hiz0EB/nQIy28NHTRMD/tSiclp5uxFyeieyJmJsrjKvf
 Wz7ZvIdpcFFvww4xcIUN7NoRvgnjoy2obfRlw1NvrI2VKmM07j5TETq2b
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Di/xcGXr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] igc: power up the PHY
 before the link test
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



On 21/09/2025 9:41, Lifshits, Vitaly wrote:
> On 9/20/2025 9:39 AM, Kohei Enju wrote:
>> The current implementation of the igc driver doesn't power up the PHY
>> before the link test in igc_ethtool_diag_test(), causing the link test
>> to always report FAIL when admin state is down and the PHY is
>> consequently powered down.
>>
>> To test the link state regardless of admin state, power up the PHY
>> before the link test in the offline test path. After the link test, the
>> original PHY state is restored by igc_reset(), so additional code which
>> explicitly restores the original state is not necessary.
>>
>> Note that this change is applied only for the offline test path. This is
>> because in the online path we shouldn't interrupt normal networking
>> operation and powering up the PHY and restoring the original state would
>> interrupt that.
>>
>> This implementation also uses igc_power_up_phy_copper() without checking
>> the media type, since igc devices are currently only copper devices and
>> the function is called in other places without checking the media type.
>>
>> Furthermore, the powering up is on a best-effort basis, that is, we
>> don't handle failures of powering up (e.g. bus error) and just let the
>> test report FAIL.
>>
>> Tested on Intel Corporation Ethernet Controller I226-V (rev 04) with
>> cable connected and link available.
>>
>> Set device down and do ethtool test.
>>    # ip link set dev enp0s5 down
>>
>> Without patch:
>>    # ethtool --test enp0s5
>>    The test result is FAIL
>>    The test extra info:
>>    Register test  (offline)         0
>>    Eeprom test    (offline)         0
>>    Interrupt test (offline)         0
>>    Loopback test  (offline)         0
>>    Link test   (on/offline)         1
>>
>> With patch:
>>    # ethtool --test enp0s5
>>    The test result is PASS
>>    The test extra info:
>>    Register test  (offline)         0
>>    Eeprom test    (offline)         0
>>    Interrupt test (offline)         0
>>    Loopback test  (offline)         0
>>    Link test   (on/offline)         0
>>
>> Fixes: f026d8ca2904 ("igc: add support to eeprom, registers and link 
>> self-tests")
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>> ---
>> Changes:
>> v1->v2:
>>    - rephrase commit message to clarify:
>>      - applied only for offline test path
>>      - original power state is restored by igc_reset()
>>      - powering up the PHY is on a best-effort basis
>> v1: https://lore.kernel.org/intel-wired-lan/20250830170656.61496-1- 
>> enjuk@amazon.com/
>> ---
>>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
