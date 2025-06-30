Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA0AEE709
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 20:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46E6880AEC;
	Mon, 30 Jun 2025 18:57:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UAGQqqrDb_ol; Mon, 30 Jun 2025 18:57:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 700B380AF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751309860;
	bh=cutFLNNIQe94SZSbKQJPWOtmQxAatb4NfZ7nXZPTx9U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mpAGn/JFhrblr1SCnyx7KIZVyJ9u2Pr2p3dtkd3oxM8wYHzMkwvYBJ2gGkRTQBzTA
	 jMjKc2yv+lp53AYngpv0siNvPG7nFodAFsgih79cooaGF73ojgd4pOEpctvLDxnS/T
	 MOg51e2Hz8e/KZxMgVyPMB1wODL9bFbZllRejwo4SvtsdkPY8USokcpxIKHpaqherb
	 +ZMY2bHpvB6cjfMGhX3kdamOBNDd/awHQecWZ1grZaFaE4nzLekGZRN3wvt9h7arc8
	 YAJVQEAWDLMq+9MAXYwXC8NzYHBTj6Foow2UyheJAnjj8K4n2V0Pk7MCPdro/kYnAc
	 GXCvttljzDvZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 700B380AF9;
	Mon, 30 Jun 2025 18:57:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 451EC1C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 18:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3592240E95
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 18:57:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NaLh_Vcf7k7O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 18:57:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7357B405AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7357B405AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7357B405AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 18:57:37 +0000 (UTC)
X-CSE-ConnectionGUID: bnM8qpQkThed+1ZkbknoYg==
X-CSE-MsgGUID: P6QM/SnDRHqaLbnDMArgNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="57356209"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="57356209"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 11:57:36 -0700
X-CSE-ConnectionGUID: wQewwgW+SXiqb9XyctFDnA==
X-CSE-MsgGUID: q3a1TGsQRe+2xMG6xap0Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="184561720"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 11:57:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 11:57:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 11:57:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 11:57:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GnslNAsQjilsz6shLs4zk8ofofdSRn4hNbQommq3qwtGvdeOX7RU/X6R3LQkKzihn/jWVCzv9CMGkCVYsx9ulEIL10fWuOA1L4pAZs+W3DHU0pwB1UIdVWsMFq7fG0bFwr7FJFYDdUWaBQfeVO2KnJC5A80KIGf6cNL3yrSZou0OiM51zpMa0NgHTLmTafVs6nvQRycnaZav8KDY7gdfDVQgQ81HsN6L2nCccHx5yRuTqcOG7+rQceyBB/Z/yBLYL0FXuE7KKihxckF7eopXTWq3z1FwG7CpeUUGaisMyzGFwII4MF6k8GOT6gag1JZ1lou2rLrb/ujjA9axefDcPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cutFLNNIQe94SZSbKQJPWOtmQxAatb4NfZ7nXZPTx9U=;
 b=xuzZZdLjTiFKgYwb96xCfjj6C4z0ChBf2tlXNUg4wUqF05dH5H1iVLQuca3qO7c/akMsIS6a7rukuVcnrH7WTpkvF7MP6DfPEEGZXJTSkdfDbMdxwPtpoykeDunMouk9G3I726lGWcMRa5Ecw7VL+65iuhDoVXMUUWAKx71Ba9YMvbNUFrWDt6pBRllAAm/hhFyNlMiyNaBfdy1PjoncDwVCLoQYfzdIq4PXF/3ULLCEJ5ct5v4f8TgxWN/WPYcUnaLiUbLVoIaVeGvxLNiNrY3GeVuuejTyLYx8pt/Yzy3PNmmfHngkmvhYofl+YusHj55oO2zrZPCUGCPuYMu6NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4893.namprd11.prod.outlook.com (2603:10b6:a03:2ac::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.22; Mon, 30 Jun
 2025 18:56:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8880.029; Mon, 30 Jun 2025
 18:56:47 +0000
Message-ID: <7d330d84-42ab-43aa-94f1-5240b67c49dc@intel.com>
Date: Mon, 30 Jun 2025 11:56:44 -0700
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-5-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250513101132.328235-5-vladimir.oltean@nxp.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hQSzwhGBd7E9fiWdmWWbqYzz"
X-ClientProxiedBy: MW3PR06CA0021.namprd06.prod.outlook.com
 (2603:10b6:303:2a::26) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4893:EE_
X-MS-Office365-Filtering-Correlation-Id: a3e609ef-8d40-4656-e077-08ddb807dc74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UC9INVJjS2ZRdDhrQmFHVkVzbXc5M0JsOXNSQTh3WXVMNGRwVzhzQTBmRTRD?=
 =?utf-8?B?czNlVmx2MEZmaCtHRk5oRThyRnZFRThXWnpMN1NXMzZmZ3J3YjZCZVIyMEJD?=
 =?utf-8?B?RFBHVzkzZEluSDErcS9mb0ZzbXdrNnlGeVkzdDFjV3dnQXVZVlkvblZRaFk5?=
 =?utf-8?B?b1M4WlBxb014Y2hMZzNuOWpIS1J0bEFDU0hsN2dFZXNCbmVRbUtwa2hLTG5R?=
 =?utf-8?B?RERmQjBkTEhWU1lDY2lXZEdPbzFVNjFTMnMwSVQ2d0hzeXB1MDZweko1bnJv?=
 =?utf-8?B?c0dUejdXUi85UVc5WWNpRnphTGRMUDUwK3RCZFoxM1pieVVQcUFrVzRKakp0?=
 =?utf-8?B?cStMWURXY0FUMWVwTlBrS0loUXUwZjg4MFBlQit1a2VsV0RtY21rMXdiRVR3?=
 =?utf-8?B?cXZVdlF0ZGQ1eFBrTHBFdkRXcE9CcllhT3N1QWlyblhMTklTSlNTZ0RyZi9y?=
 =?utf-8?B?N0pzM0hlSW5BMndrZFBmb2pVSCtpSTd6NnVwVHhnSFp2c1A1ekwrVW9yaFZX?=
 =?utf-8?B?OU9vRncrQ3VnbmtMTmJrbmY4V1NtM1BNV2ROVDg2SDR4bEhBS0RKaWZiU3pX?=
 =?utf-8?B?UnZ5RUlOMEd3UmdkZmU4VExHZ1VPVWtVNTYyTDh1WmtEaEJ1NnZqN0NQVjFk?=
 =?utf-8?B?RFNzYTl3TnBPREdjRDBVWDRJaWNpYi9tRGloeE15aE9VYVZGNHBsbU5oVEdX?=
 =?utf-8?B?eFdYVkhXcXp6K05tUWovblhiSDlYOW9TYmNtY0k1WmNIanRZT1dTZk1WZmFo?=
 =?utf-8?B?MHBaOEp1VzFRUm5JV3U0YnFLMVBCMGp0SlJDcVVUb0ZJSzlrZEJkbzlOb1Bs?=
 =?utf-8?B?aEZjT2xKTyt0Rm1XdU45R3g4RThJYmFQSGJYdzR5QjlQZUlZR2hQazRLMFhU?=
 =?utf-8?B?Vm52dHdUb21sV1dwQ1NQTkpkV1hBQ25pZkpjc25LbGFVSGl4Mm1QaWQwTE9w?=
 =?utf-8?B?VWJSMjhXdW1TMzlGRTRvVnFRY0Q3UldLRzltUUQ0SXFrUXViODJkSUthbHh6?=
 =?utf-8?B?MVhCNVFVdVprRkkvS2xhRWsyVEx0NDRLNkNZZHl1WVRrai9ObkR4dklsMzZs?=
 =?utf-8?B?MFZMOURUN0haVXh5NFFwM2hCeWY2eUZrSFFzUmJiWGxpa3NEcHJ3Z2lVS2VS?=
 =?utf-8?B?ZFQ0K2ovWFNpTXRGV1Bod0RFaTVYVkRPSkRVZURkUmZDSzZCVDI3b01hbThl?=
 =?utf-8?B?VTJEeFRCQzJvL1IzY3BIZHZ4VnJ1c1RwcGRUemFpT3Z4UktyeUQ4dlFVOHF4?=
 =?utf-8?B?aDg3SFgxSFo4TzFYdUxDWXJjYjY2Wm9JNEtDeW5aend3QlJsUzlPc3dwVzJY?=
 =?utf-8?B?NXNUMzYycWhubFptcE5kNFE1SUsvbm03VjdOYzN5Q3dPbG5SMHNKTFRhMWRh?=
 =?utf-8?B?Y0pVb0NMZTQvOHYrV2FHVUYzcGtGTXdtZ1FPOHRsdS83TWhVTk9OcHFGWmt0?=
 =?utf-8?B?NkJFZlQvbUQ0azhaeDVsNjdOeHdnb1N4QXJ4RUdoK2dHV1RidDhpTnVSeW9V?=
 =?utf-8?B?czVHd1VYZFRKU3l3cmNiQTB6M3FhTGRTTTkvWGNtWlkrQ0VFNVFQT2gwZEUw?=
 =?utf-8?B?b1I5enk3Ym1nQmMvWDMvWFdEZ2tRN3lzRCszeWpXcm9WOUdveFdncEhyenJ6?=
 =?utf-8?B?UWs0Nng2NnRkSkljRFF6Vk1PRGVGRGdIQThXS2drYXlyR0c4WC9jSmc2M0NX?=
 =?utf-8?B?SjI3TEFpcFRxdTNRZG5EdlhzcDhKV1NWZ0F1bHNORVBOMm1tN3NvWnpTR1dX?=
 =?utf-8?B?Z3p3QTNuZGp2eDgwSHRZc1k3ODA2V1ByWFZYRU9YNUF4VFZidGlRWmhMenZk?=
 =?utf-8?B?R3hLVTRlYUVtcEdEU2plTTVlRGVVazhBaWsxOXN0ZFYyS3Z5UkpQVUxtZmdK?=
 =?utf-8?B?eXlqenhqZkd3VVBpWE9Cci9EU3Roa0w3NWtwZW14Q3liUzZMTUtMR2pZelFX?=
 =?utf-8?Q?eddxmmJHtkg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUhUTkppVEtzWDQraVVOTCtORVM3VnV2eGJSUGtBQ0F4T1ZGYVg1K0dwdEFs?=
 =?utf-8?B?MEppNHRqQWVFUE43T1FiYnp0VkxhSDlWbEJ6TlM3U203VWtwaVFLSHFBVVd0?=
 =?utf-8?B?ajV2UklNeXBaRGtySTJMak41eURFNm9MazBiU3FtN29rYnVnMVJJZjJtVGNC?=
 =?utf-8?B?WU8xcWRXNnlscCtRR1hUK2xSTkVYTE14ZHczUTRFd0g4dmUzcFJzOEVhTGp2?=
 =?utf-8?B?KzhYOWFNako5U3Y1Y3hpUmZCRW1hUkd3T1ZsRC9DK1RqUmhNVlZOUXd1U045?=
 =?utf-8?B?d1k2c000R1EvTnB3MUlqOXcwUFZhUFBVdWhxVVh0TC9RMUxlcytZUmxBUUFr?=
 =?utf-8?B?YVlSNktOblQ0elNjdlRmbHcwc3V0eE9MMFJqYTRaOUFWTSszcmFYL2lRdjdu?=
 =?utf-8?B?cm9aTWIzbkVScGpLdjVndWVnNTVXMVpZaGpadWc4QnlYYi9rUXpmWjV4b2Rh?=
 =?utf-8?B?NmRDUXJ1TnNGRGM2dk9sMjN6WkpSMEFkWHhrbEI1MU5tcXZvanUwb0k4UUt2?=
 =?utf-8?B?alZjVVowdHJZWGUvZXRqNjlxbisvdmtFcW1DNHN4ZFFzaGVLRis0OVFqNThP?=
 =?utf-8?B?KzhucUltRmU5by9WTTQ2MHcrNmJZVDlIWDEySmV2N3d5Z0F4dk5JS3hsK3Fu?=
 =?utf-8?B?NjY4L0s0ZmJrOS9kaENYNTJ3bmFCeVA4RXpIZTdTaDVVS2FOdDhwNU45Zk93?=
 =?utf-8?B?RmRjRmxDR0FnLzg2TTZlOCsxVXNkcFJYMmRLUk9VaGYxZmVsakV2RFR2NWxa?=
 =?utf-8?B?R2VVb0RMdEJIVkZPcEczNFd5Y2hkdUJqSm92bEQ0OHFRNzI5TUliV0FCSEFt?=
 =?utf-8?B?NGhHUkdKeG9MUlpsR09YR1ZBVklpalBROTJXQ3dZOFdKb2M1emF3aFVyYWJC?=
 =?utf-8?B?Ulp0UG5STW1EWWQxZG8zbXgyRlFpNXV5V3hDcXNkWk1lWmtKaUJVWDl1TWhG?=
 =?utf-8?B?SlpKZXQ2aDdTM2poRCt1ZjlIWUREVzc0czFSTk15b3ppQXIxWEt6WnIwSFg0?=
 =?utf-8?B?OE1qQkwzcUZEUS9TSm5NdUlrVWhpd1FCM0t0UUhOaFdBT1JKT1hWQ3IrKzdi?=
 =?utf-8?B?VmQ4eFc4WlhBeWRVVm5rVEdJdUJJVVVPOXl2Tjc3L2JldTRxSUkya0d1enNC?=
 =?utf-8?B?TFYwMFVDTEtaMWRmNzRWb0ExbGFqbUVMMGtVQ3ZTeklZRnJ1VDMyZnk4MnVB?=
 =?utf-8?B?cXhPcEtZMzgzdHcrZThaeU5FR0lKVWRndk51UDJKS3ljc3UwMXc4Z0ZxcDJr?=
 =?utf-8?B?TU1JeFhNRkRRV2hhK1lhU0Z1Si9JYVlZWEtyQmRSdDNOak9LYkl3SHNvaFll?=
 =?utf-8?B?d3VWb0FKbGd4TG9PZHA4NXdQck9SN2xTMll4VWZVbWRSNlhYRHN5Zk1Uc1lm?=
 =?utf-8?B?Y3p0SmR6clRtNmY1bCtSakhmQXQ4TW9QMDNKamN3b1ZrcERGZEJSMWxuZFl4?=
 =?utf-8?B?Q1pxSjNuMkd1RDZJSXljR3J1ZlhwazN6M1VLVHYvdG9oRDk5UGtUUDF4bGxD?=
 =?utf-8?B?OGJPc0s3cWQvMFVIZmsxOXZ6TVpyU3loSytEZjFCVmRDd3hleFZQb2tTQjNv?=
 =?utf-8?B?NGx6UjdQNDFCK2d3ZnFPa0s3Nk9kNzhwdmRFb1hjWTE0cVZOK3I0VGFuWVhM?=
 =?utf-8?B?YWRhSk5ZQjFLTnpWMWduQXRuNTIrbk5qYUk3V29wa1ZuckwrSWtaZ09HUU9a?=
 =?utf-8?B?SlVWWk1JbVJMdTJoM2d0NE1MaklzN2xQR3BnZ3cwRmRESWJRNm1WaFUwVUFL?=
 =?utf-8?B?VlVSajlMcERid3pPMHlYWVdJTW9pYTUzaWFWTmNtc2twMm1GWndabnpxT0lH?=
 =?utf-8?B?c2lXVkdOMWRMZ1FCS0dFL24zbXZPWm8yb3BHQUdHUTRxd1pLVGZ3RXN5eDdn?=
 =?utf-8?B?UjlJSmNDdlQ3dUVyRGxHSUZVdHZxTFRjRGU3VlkyUW4reFg5L1JoUjR2VzFy?=
 =?utf-8?B?VUE3cENQSGxHb29aMnZ6WnJMMkt3S0R3elpFMDVHM0s2emFyZ0xIVDVSbEh3?=
 =?utf-8?B?K29oSUxXdHBQRlMxS05ZNGNScnREMEYvRVBodmJRZVBEVjh2SW0yWFZheXI1?=
 =?utf-8?B?S2lnLytza3AxbTl5YUJEWWZ5TlA5M0MyZXgySklIeE1BSWc0bVBIenA2ZEJp?=
 =?utf-8?B?WTduSDhOWnA1RUQ0U3A4ZGJycVptRWkzTVdBTFB5b0ZrbjBVZUZFMUhsQlNF?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e609ef-8d40-4656-e077-08ddb807dc74
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 18:56:47.4207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y/GvKV3jYBQfzUNMIWIIHzrq24LoMmK2IqvkfuUJ7wx8GWwHr3wysemn2f274WbUl+GRVbNnmpweTD7E9GnQzHm2hychWNSg8YASKctX/RM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4893
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751309858; x=1782845858;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=lsorS/qzznObArOy9TnAfoFKlc1Iwa3DgDhiP1/bvxk=;
 b=PL4zxSCubRkGJqLU2hQUjWXwQ3j0rsPyStBB4oGfwOLHFk542CKFMpQi
 BghghhYCkCOZtETP/DD0tC1Nmyl1V/6GcK3kEwI9FNQYdwuH0I7uyikha
 BTvvwU7cD7fGN2nAbHJNOg0hy1JqYv8tyzVYeZ6quGC8ehFV2IvftSC9v
 5pqNHkMGvJx2/UIwIswkuUhuS0CyPTPYAA79UZGz4NrkjUcxCqRryiKUG
 ByghFPKPyB2kRTHp2T4EbfNexfJfvwJjgquYqcITfSFOPnm15SSNEY0WH
 RYP5dvNuN1jjF4P0FaDRnVj1ylQHwMTTWaV+wUqS8JNnYScKf9joRWfE+
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PL4zxSCu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/5] ixgbe: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

--------------hQSzwhGBd7E9fiWdmWWbqYzz
Content-Type: multipart/mixed; boundary="------------OeYUTEKuQrWxhDtmudrBfURZ";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <7d330d84-42ab-43aa-94f1-5240b67c49dc@intel.com>
Subject: Re: [PATCH iwl-next 4/5] ixgbe: convert to ndo_hwtstamp_get() and
 ndo_hwtstamp_set()
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-5-vladimir.oltean@nxp.com>
In-Reply-To: <20250513101132.328235-5-vladimir.oltean@nxp.com>

--------------OeYUTEKuQrWxhDtmudrBfURZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 5/13/2025 3:11 AM, Vladimir Oltean wrote:
> New timestamping API was introduced in commit 66f7223039c0 ("net: add
> NDOs for configuring hardware timestamping") from kernel v6.6.
>=20
> It is time to convert the Intel ixgbe driver to the new API, so that
> timestamping configuration can be removed from the ndo_eth_ioctl() path=

> completely.
>=20
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---

Ugh. Apologies for the late reply here, but this took for ever to track
down what was wrong in our testing.

The ixgbe patch has a somewhat subtle bug which lead to failed timestamp
configuration and likely other forms of memory corruption.

>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  9 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  | 42 +++++++++----------=

>  3 files changed, 29 insertions(+), 28 deletions(-)
>=20

> =20
>  /**
> - * ixgbe_ptp_get_ts_config - get current hardware timestamping configu=
ration
> - * @adapter: pointer to adapter structure
> - * @ifr: ioctl data
> + * ixgbe_ptp_hwtstamp_get - get current hardware timestamping configur=
ation
> + * @netdev: pointer to net device structure
> + * @config: timestamping configuration structure
>   *
>   * This function returns the current timestamping settings. Rather tha=
n
>   * attempt to deconstruct registers to fill in the values, simply keep=
 a copy
>   * of the old settings around, and return a copy when requested.
>   */
> -int ixgbe_ptp_get_ts_config(struct ixgbe_adapter *adapter, struct ifre=
q *ifr)
> +int ixgbe_ptp_hwtstamp_get(struct net_device *netdev,
> +			   struct kernel_hwtstamp_config *config)
>  {
> -	struct hwtstamp_config *config =3D &adapter->tstamp_config;
> +	struct ixgbe_adapter *adapter =3D netdev_priv(netdev);
> =20

ixgbe doesn't directly assign the adapter to netdev_priv and this needs
to be ixgbe_from_netdev, since there is a wrapper ixgbe_netdev_priv
structure. I didn't dig into why, but both get and set are wrong here,
and are misinterpreting the ixgbe_netdev_priv structure as
ixgbe_adapter, which is obviously wrong.

See its definition quoted here:
> static inline struct ixgbe_adapter *ixgbe_from_netdev(struct net_device=
 *netdev)
> {
>         struct ixgbe_netdevice_priv *priv =3D netdev_priv(netdev);
>=20
>         return priv->adapter;
> }
>=20

Whats odd is that the netdev priv structure is just a wrapper around a
pointer to the adapter:

> struct ixgbe_netdevice_priv {
>         struct ixgbe_adapter *adapter;
> };


> -	return copy_to_user(ifr->ifr_data, config,
> -			    sizeof(*config)) ? -EFAULT : 0;
> +	*config =3D adapter->tstamp_config;
> +
> +	return 0;
>  }

Because we're completely pointing to the wrong memory, this overwrites
who knows what since the ixgbe_netdev_priv is just the pointer address.

> =20
>  /**
> @@ -978,7 +980,7 @@ int ixgbe_ptp_get_ts_config(struct ixgbe_adapter *a=
dapter, struct ifreq *ifr)
>   * mode, if required to support the specifically requested mode.
>   */
>  static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,=

> -				 struct hwtstamp_config *config)
> +					struct kernel_hwtstamp_config *config)
>  {
>  	struct ixgbe_hw *hw =3D &adapter->hw;
>  	u32 tsync_tx_ctl =3D IXGBE_TSYNCTXCTL_ENABLED;
> @@ -1129,31 +1131,29 @@ static int ixgbe_ptp_set_timestamp_mode(struct =
ixgbe_adapter *adapter,
>  }
> =20
>  /**
> - * ixgbe_ptp_set_ts_config - user entry point for timestamp mode
> - * @adapter: pointer to adapter struct
> - * @ifr: ioctl data
> + * ixgbe_ptp_hwtstamp_set - user entry point for timestamp mode
> + * @netdev: pointer to net device structure
> + * @config: timestamping configuration structure
> + * @extack: netlink extended ack structure for error reporting
>   *
>   * Set hardware to requested mode. If unsupported, return an error wit=
h no
>   * changes. Otherwise, store the mode for future reference.
>   */
> -int ixgbe_ptp_set_ts_config(struct ixgbe_adapter *adapter, struct ifre=
q *ifr)
> +int ixgbe_ptp_hwtstamp_set(struct net_device *netdev,
> +			   struct kernel_hwtstamp_config *config,
> +			   struct netlink_ext_ack *extack)
>  {
> -	struct hwtstamp_config config;
> +	struct ixgbe_adapter *adapter =3D netdev_priv(netdev);
>  	int err;


Same here, the current code would need ixgbe_from_netdev()

I think the right thing to do is submit a patch/fix which drops the
completely useless ixgbe_netdevice_priv structure, but I'll have to dig
into git history to see why it was ever there in the first place.


--------------OeYUTEKuQrWxhDtmudrBfURZ--

--------------hQSzwhGBd7E9fiWdmWWbqYzz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGLd7AUDAAAAAAAKCRBqll0+bw8o6IZS
AP9NyFFWdu6qskI+qcA03f0T0q4Gpy1wzmGQTIqos0Ha6gEA5gy5GO8/O+R6DtavDrE2ubrDv4U7
NR5prMluI+uRQA8=
=yKhs
-----END PGP SIGNATURE-----

--------------hQSzwhGBd7E9fiWdmWWbqYzz--
