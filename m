Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 108BCC0D6F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 13:14:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B651682256;
	Mon, 27 Oct 2025 12:14:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YMHNjQfCiDy1; Mon, 27 Oct 2025 12:14:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FD72821EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761567247;
	bh=KIHKopD6OU3asz80hgZMscaQW7D7bzazHAU+V6Yp6CM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=esPh4R5FYDMNF/2253BqKI9KUlCKVYGAqqsUcVBjc3/0Z5x6YA6ICB3rkbaFdgMUn
	 XdOpjVkBeJNDTBSu2TIuNiQOCXUJAhJCdZUAqnNjuNb9NKuXf8hHINNMFT6+8Z/76I
	 BaLzV87VdJg7/jpk4PUcAd8y9dhJ7hBNn8Zd/Y7DYOs6IVKnzLnOnSRwZrzjn1dMU3
	 0VwZjrvjqTpGx9h9WG2UDIP8a5myKbbuIFKBO3QmnxCn1xSFm+ZXpFDQr8X+XLD48V
	 lquk1AhL7Dc8Xd8a6rIVb8x0+OyfwASwoS0wTSwjHu8zOhzq4x/0AG3BanLL90y51C
	 1J+WIrmpK/pBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FD72821EE;
	Mon, 27 Oct 2025 12:14:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8705143F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 12:14:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77D2B821C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 12:14:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OpiMK9IG7mrb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 12:14:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 57FB9821BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57FB9821BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57FB9821BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 12:14:03 +0000 (UTC)
X-CSE-ConnectionGUID: m7m8r4kBR6+7D9JaY6WnwA==
X-CSE-MsgGUID: MW8QQRwKRHKSyj+X0Ddqpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="89114720"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="89114720"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 05:14:03 -0700
X-CSE-ConnectionGUID: ds43cTtJQjSoittLdRWtKg==
X-CSE-MsgGUID: DTUKzXZrQYKl5OZCyaLM/g==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 05:14:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 05:14:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 05:14:02 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 05:14:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AK77lvR6pUGcsY13aZOtAzh8IZY79DgEU/7gqeCGjOA16JKrBSV+uL/zm/IINxs6fKeThJix9PKgZ7YXIRrq2a/psA2n8K89h9mdn85X3u27cU2haSfjcCakzF+ajKlBGzQT4fNuclguzhly8+6sASDr/FLCERDf0GpkCVjG/vzUmNG4zM+P0y7ApoMZ7zpFUVxFCZL4n9j/3UPh942CgWtOucz+JlGrdhPAA1J7/N8iDHYxBepv3JLgaHmHl7cYamyeMnIknEFFBhyydRaV7lowscJPYZp0SWdcCFoN5vcGjayfjKYb0feBE5D2/fd3jDwmUjSqoApFdMxDNicbbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KIHKopD6OU3asz80hgZMscaQW7D7bzazHAU+V6Yp6CM=;
 b=j4sJ2tKJQFkKoUTipeLJKWLmXMkjKek4q7JsX2tbzSFrTVf65M/ksADeZ/4HUpbumDv9mY5XJ3PL5bnimmp+pWK0/2AZflESYfwpnKuY08q7jMwKI0Oj6Mf+m3oJJIML0WCOnCeLdjdmNo8eakAzLn3kR3TxNoMQZTgEP/DFRXRpxQF95V4w/JoTHj37RCI9zrFwA772BOeeKuJu0xnSif7+iMUpExRRPI/p6EO00pJbBqb8vN/A+2kz0h+aFgBkCdWKW8QX/WLWuj4O5INN7cuPQUVXcFtxxsoRD6iIzAbl67hsKL53rVfjVMa6N4hjsLcgHYGQTJy7r9p1S0z+zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by DS0PR11MB7927.namprd11.prod.outlook.com (2603:10b6:8:fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 12:13:59 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%4]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 12:13:59 +0000
Message-ID: <ada06185-257b-46de-9e5b-470f2724f014@intel.com>
Date: Mon, 27 Oct 2025 13:13:54 +0100
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 <intel-wired-lan@lists.osuosl.org>, Eric Dumazet <edumazet@google.com>,
 "Jakub Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Mitch
 Williams <mitch.a.williams@intel.com>, <kohei.enju@gmail.com>,
 <netdev@vger.kernel.org>
References: <20251025165902.80411-1-enjuk@amazon.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20251025165902.80411-1-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0032.eurprd04.prod.outlook.com
 (2603:10a6:10:234::7) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|DS0PR11MB7927:EE_
X-MS-Office365-Filtering-Correlation-Id: 11fb94dc-c0b4-4eb7-bf1e-08de15524f46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bkJhWVJVQWNEa1dQK3Y3TEQ0Wm9ndHdsTmcybmpWb2RodDVFWC9oRER6UmtR?=
 =?utf-8?B?NVprSVVSUExPOVcrYnZ2M0E4T05VQ2NpVmY0TEdadmNxdEh0dTdxWGh1ZEpZ?=
 =?utf-8?B?Z3RKVWFySDl6eXlNZng3aDFjV0JoNVduQlVES3lJL1pUMUphS3Z1NGNsNEti?=
 =?utf-8?B?bEVScE5lZjRoNGxDUTROaGlRS2k4SWhOTU52SXMvQm5NZlZQS3E1bWF5dkYx?=
 =?utf-8?B?YjhyL2F3cFk5T0lQaks3WlBmbWF3SzBOWnZxaUtTb3R0Tk4vaTJMM2tUc1Rw?=
 =?utf-8?B?bUZ3encxY0FCZFlDZEcvMHpVN3RTc1FEWWxxcW1vc1o0SjdiYVdwTklRR2xn?=
 =?utf-8?B?QlA4c1FLTDJMRVJmT0tIaWlVSHdpUHoweVdrbzJKcDdTaEVTakpDTUM4YVhK?=
 =?utf-8?B?ZmowQXdpSndCQ0s0S3JRYVAwSzBXbzZwNWsvZjlCbUJmZWdGZWpMV1ZQM1Nn?=
 =?utf-8?B?Q21nTE1YUU9hd3JaN25INDdsWUNNeTVBZWpPdlhCbEphTG94U09oZ3FqK0dM?=
 =?utf-8?B?N3VLV29oeWdwL0psUFJDbzlSd2ROSG4zMUpKc1VNVGxQNFFtL1ZYZWhTUkxH?=
 =?utf-8?B?QlltTWFXd0NyNXg5WVJSTTVZOERUWTQwbUlmbUg1N1JQMUpvekhFNFpSOU9F?=
 =?utf-8?B?U1pobUE0WEZhWjUvRDM3bmk4NDRjdWZxZStCTWJldHpWUHRMRmUydUdSc2tY?=
 =?utf-8?B?em1USEY2WXNZZ05lcTk0cGFuUktTalkxVk5SUXhHMzlZWkN0eEdTTHlFbTUv?=
 =?utf-8?B?LzRJSEY3ZHFnZ1IvWmhCUUs0UGR2OGphTXdEaXN2TkpaWDk2R1dUVnBSSmZM?=
 =?utf-8?B?QmMvSVZERFc3aHFsZ3hnNHQrdUpYZ0JSVWpvWlFNd0pFeTJZb283Qy9jaDEv?=
 =?utf-8?B?S08ydUVOc3pWNndiWlBHY3lJS2ZXTXQvRVRRV1ZOazNhODJOQkFuanpnOUNZ?=
 =?utf-8?B?RjRmNFlFZzk5bllWclMxSS9OQUNNUVJkNDhvRHlOOXdPb0VnZEhJVmFXRDd3?=
 =?utf-8?B?eENTckoxeWJ4N0c1YVBlNWVXYmtWNVMrNFlCeHA5SmNNQzdhdFI4cjJoRnpC?=
 =?utf-8?B?MEFsSXQzeFlXbXlNbXNJbTd2Sms0Y3BJQVVCWnM0TGxJYjkrbTVOWXc5dWU1?=
 =?utf-8?B?SUozeXBsMTRXcDcxWmhMeStsdkVqY0g5ZFFVN1dBNTVwWHJkV1NPbGVRQzRC?=
 =?utf-8?B?c2ducHI2aC9XSGxsSFpaeWl3bXpCbjVsb1IyMWJYdEMvd0R0U0hiSnB0bnl2?=
 =?utf-8?B?MGlWNGoyZDZiUFlnNHRvd2RUMGZFdnpINkpkVjdBcDRJR3FnT0IvakxKWnQw?=
 =?utf-8?B?Zkpla3VMUUlCUnB5dHdhNS9VeVdXeGtuU1VCbS9EZjdwYkxiSHBxcGVkcGJw?=
 =?utf-8?B?U3BBUlF1THZuSy9sZGhOY3JYVVJuNWFCa1Y5Z0dJZGNqVWNLQUpBd09jOTZL?=
 =?utf-8?B?b0NISThmcXMvOFNMOGVNNW1RMWNPcU5WWXNhWXQrUnFVNEZoNDNITEMrVzk2?=
 =?utf-8?B?di9xY013UDFrcmZpa2VEZW91NHY4YW1sZGJ0WnkrZEdSdlFSZW5CVmk3SnM4?=
 =?utf-8?B?YVdVZlpiSnMvMExjZzhxUHhhNjQwR2NVZGxLZnVSMjR2algrclZWRE10Smd5?=
 =?utf-8?B?RUpuZTZ0alM2ZGwzTmtkMk05VXp0MDYxeWdHM0NIVDJFRExZNmFjYkZIWS9I?=
 =?utf-8?B?dFIvMGRjVXhqamlSSzlLV3lSZ3pUZkY2dkY2ZGR2Z3VwQ0Y0dWc2NWxkcWdB?=
 =?utf-8?B?cUxZZlRGenVIckZNaHpqa0svS1FKYVd4amUwUG55ZTExWFpSYWMzM1JsT0RE?=
 =?utf-8?B?TURRU1J2anBCNllNMkd4SVc3Yy9XN3gxK0hpTTJZbFBLVXRFa1NBdk90WjVO?=
 =?utf-8?B?bXozMTNmOHc3NmJBcFZGN1QyR29DZzZURUhsTlZrSjNqcjJPY3p2R2dZY0Ns?=
 =?utf-8?Q?XAMimi5pFfvbQVkAJ/nlAt1QeplXGBim?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVJuMS9LejE1ZmdwYkRRM0l6NngvRXFRaDd2VHVlL0U3eU83WCtqTFNaU09X?=
 =?utf-8?B?WDI0UmZYV2VXdmM1M2Rnc1R0anI1WGlYaHZTOERXNWZSc2tZUzBpQUlwc2pp?=
 =?utf-8?B?Lyt3Z2lUR2I3L1dYSEVrRnNIWFd1N3AxMkplNCtTOHBXQ0t3dE1yY3d3dEpy?=
 =?utf-8?B?SDRicFhRZUc1eW9KZngwNHVzZEpqWE5xVzRMNkhvd2k1dDBhRDhySUxYa1ZK?=
 =?utf-8?B?TDI2SnFqVUx2TFBtMnVOcUJES1Qzb1I5UHhOUXRwMFdKMjFtWkNjVGU3RTZs?=
 =?utf-8?B?MVBsVFA3eG04TElrOHJMR2Q0dlNmVkdncGRvckZxTU9SVGlCVlZ5cmZwQ0xz?=
 =?utf-8?B?QVdDSkVwY0x2YWd3ZXdhbjR2ZU9USitHS2R4WS9SSFA4VzZzWG5nOWJqS3lQ?=
 =?utf-8?B?alpKbHJrd0JnTEdlRFFDQWFTVGo2NjdvTER6NDl5RWYrRG9TU3NLZTk3M2Zj?=
 =?utf-8?B?SmFUeVBWY0lJbzFHTkd2RkNCcU1CV29mZ29UM2JCdjJSSzlYVTZKTnd1b1JR?=
 =?utf-8?B?VGJoM2YwODY3Y0J2MGFoWldNelNUZno2VCtnaEtwNXl5M0FlcWtsUGkrMHhq?=
 =?utf-8?B?eTMrNWgyRXBYS3Q0b1V4OGtUTE1TNkdpdFJHT3hDNXY0Y21ESVBQbkNRS0F3?=
 =?utf-8?B?eTh1TlhLWnFmTUMvWXd0OE10QUlMU3MvS1B2YVoxTUZ6Qk14d01XS3RQQWRx?=
 =?utf-8?B?bW5rU0dZcmFrQUJCalhyeTd1azhkTnRjczhwZ0RyQ3NzN1N0NjU2YnpJSXRJ?=
 =?utf-8?B?dDJkVldWdTRQM3UwTitFak5jdElaa3EyWDJUNGlKekxtMzc3VUpQVDRNeEU3?=
 =?utf-8?B?TWhwU0NMdGRnaTJrR3JFeXU5SSticG1Ca3o2cUZpUm9tY3hQNXJ6R2RjUENC?=
 =?utf-8?B?K1l0OERiWkRuaVk4T0g0UXNZYzNBTWpZcGYyRXVoejgwdVFjcVdFV0cyUUJP?=
 =?utf-8?B?R09WUHpKOVp1L0RMbHorbHRzd1U2eTRsVzVDVkZ0OUtybTd2SDdzcDNCbHo0?=
 =?utf-8?B?TkRTTXhZblIxNjEyczhlU1M1OEdEd1lSM3IyMkZVb1ZUcU1qZGlmOWVtalk2?=
 =?utf-8?B?TnhrL3djV1NBZ3hkZWkyK2tKUkdqL1dRTFhSemVoUVdvWjhPYTEvL2R0dFJs?=
 =?utf-8?B?Qi9ubTVrNFkybnVCWHBRZG5EREd6Y20ySmV0ZmhsanhJc3puNlBFZVZGT1U0?=
 =?utf-8?B?cERWUXNFMGQvNm5qZlNXOGdKS1lXVVlOM3hFNjN0OS9XNkFEOGIwdDlGa3Zz?=
 =?utf-8?B?QVgybTJrcm9CdXJ2N1dobWtBbE5USHI3bWZKMnhkYTR6dXZoN2FWdUllTnRN?=
 =?utf-8?B?NUVKOHExSlY3elRFeTJDZFVhNm1ieXVISy96WDJHcEZUb2s4c1FETFNJcDBv?=
 =?utf-8?B?Y2hjTGYwdUgyMUo1RmNSY0wzTll0Z1czMHRaZThhWnEyZEhBWXgzQy9VS25U?=
 =?utf-8?B?YUtONHhoVUdBZzVaNGVEMXpUalh2bHFETHBMZVZOa3pvTE5YWkIxVmFyRE9P?=
 =?utf-8?B?Vm1ONjhjbU9KQXJOVk1MSmZ5ME9HYndoY01pZG94b21hQUtMNEp1SmYzeUc3?=
 =?utf-8?B?S2pqOWZYT2hMbUFkeEhhTHcxTnpjKzZnMGNpcEhQd0dxYzMzRDlES0pVMkh6?=
 =?utf-8?B?djY0NWdoSWFJVDJJazR1NlFpZHJYdStVcEd3R05zNEhCZWVlOC9xNENOb05U?=
 =?utf-8?B?NVFKYUxxMy9vQ25NODA3b2JhRGdQL09ReU1PWEFUR1IzWENoTUdxNVk2cmor?=
 =?utf-8?B?NUtiL3l1bkxNbFp6R2JSdE5nODdNYW5zVTRrQStkVU5VUTdabG9WbmNyMTNY?=
 =?utf-8?B?Q09xODRYSjNoM21TbEdnQm9kWkxwOGxZcmw0bGhBZ0ZQZ3diQUc5RXQvMkFU?=
 =?utf-8?B?Ukttdmpxc29ZWm1jbERQRzVWeHdSQVkyQ0ltTk84d3IxbWhyUkRlL3ZycUho?=
 =?utf-8?B?NGhsbkY0aTF3cmNuUG1FYXNyTWFqZkFUU21oWEovMFZwZ0dIMk9oWW9TaTIr?=
 =?utf-8?B?QU94Z0dzT2NTMmRJbkE1N2lQcDRETkdyZzFRUEhRTXZyNUlRRGVoRmxnVE9k?=
 =?utf-8?B?SVp2OVZZdHNOWi90WlZzWHFLUXZldUMxaTNQZ2xMaXBTb2hBOU5ndC9qWUM4?=
 =?utf-8?B?bW9rcjNsbnp1MEUzT0kzb2RGYmM4KzdXS0p6TGptSzFMU3ppdUtQdVdVeTJC?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11fb94dc-c0b4-4eb7-bf1e-08de15524f46
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 12:13:59.7715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y0Vy40yS9/lCpzoS7UEqTiCnioDqMJZZ25Ed+xbu1N77zq/asQ+kymjslBehnaRN3DhZ47D3/LukGACWxln4MM7esj59N3DZy8ety55nUpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761567243; x=1793103243;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mZ6wGFdPsNhfGUsTRsl2YZWR0707QQxXEV+snF+7pRA=;
 b=K5cjo5Eu+ZBmhO3VjKPkYl/Dl+mpUAJPDt+NFc/sfs5UeteBZj66d01v
 9QzRpy3AzZ1iKQMli6TQzXwGRM+oPrVKYOEjEXi/oO21UNSaS7qKgi6eG
 dZgSk2b8wJDNvWpL4cUFA4j0RiNjaD2zCpbp6gELG4sMm4hh/SBjUeCQv
 NrxJrWaX+NP4cwWJrNf/aJNMEWmgv/oJesrgGyPCxawlac0T8vsCJGygm
 0nO8O9bs53SPNhnLWfCgYufPqRuB6vhQDvPEZFWTCpyNv6D44QOInqvDf
 dqcTz6RWYPI3mzYIZ4j/6L//0y9GC82wT4ZtHJGH06CpkQRROCkP6G7Sz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K5cjo5Eu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] iavf: fix off-by-one
 issues in iavf_config_rss_reg()
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

On 10/25/25 18:58, Kohei Enju wrote:
> There are off-by-one bugs when configuring RSS hash key and lookup
> table, causing out-of-bounds reads to memory [1] and out-of-bounds
> writes to device registers.
> 
> Before commit 43a3d9ba34c9 ("i40evf: Allow PF driver to configure RSS"),
> the loop upper bounds were:
>      i <= I40E_VFQF_{HKEY,HLUT}_MAX_INDEX
> which is safe since the value is the last valid index.
> 
> That commit changed the bounds to:
>      i <= adapter->rss_{key,lut}_size / 4
> where `rss_{key,lut}_size / 4` is the number of dwords, so the last
> valid index is `(rss_{key,lut}_size / 4) - 1`. Therefore, using `<=`
> accesses one element past the end.
> 
> Fix the issues by using `<` instead of `<=`, ensuring we do not exceed
> the bounds.
> 
> [1] KASAN splat about rss_key_size off-by-one
>    BUG: KASAN: slab-out-of-bounds in iavf_config_rss+0x619/0x800
>    Read of size 4 at addr ffff888102c50134 by task kworker/u8:6/63
> 

[...]

> 
> Fixes: 43a3d9ba34c9 ("i40evf: Allow PF driver to configure RSS")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index c2fbe443ef85..4b0fc8f354bc 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1726,11 +1726,11 @@ static int iavf_config_rss_reg(struct iavf_adapter *adapter)
>   	u16 i;
>   
>   	dw = (u32 *)adapter->rss_key;
> -	for (i = 0; i <= adapter->rss_key_size / 4; i++)
> +	for (i = 0; i < adapter->rss_key_size / 4; i++)
>   		wr32(hw, IAVF_VFQF_HKEY(i), dw[i]);
>   
>   	dw = (u32 *)adapter->rss_lut;
> -	for (i = 0; i <= adapter->rss_lut_size / 4; i++)
> +	for (i = 0; i < adapter->rss_lut_size / 4; i++)
>   		wr32(hw, IAVF_VFQF_HLUT(i), dw[i]);

this is generally the last defined register mapping,
so I get why KASAN is able to report a violation here
(I assume that we map "just enough")

impressive, and thanks for the fix!

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

>   
>   	iavf_flush(hw);

