Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eADYE/JuvGmcygIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 22:47:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F302D2CAC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 22:47:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0448E61624;
	Thu, 19 Mar 2026 21:47:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VYXqWtzE8FdH; Thu, 19 Mar 2026 21:47:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FB3860A51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773956847;
	bh=duNT4D4GZRJLwIcthFdN8bvxRqQnJ5xhF38tQ8yUdHo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CIIEqExipJ3blYNlZv8CCgcl09tbf0GfhhwNQ0LgQrFGK/wLYLTItbATc9RJrOKMf
	 7xG+TLj6KOK/PaL2SpNUBqdtmyjqR7DmYDqBMANuuAr7M4+d+YVRwIzJw6nh9Azbuf
	 zaR1KkR4SZNcUT80LWoML4n699W8/r83GTb0FwXFyD1TAwz0rCGw4ADdHdXtqr5ENy
	 qgDY0jQarP4uV+dtmgI0TIOcMbu9dUcjQzJZJLxenwc5NYQZB0avah5yesQ8tlMNxk
	 oTSTC2i4HiWI/lYmD9ViagHzSKBlMFlrlLqsmUrPOvy10sIVue+MJ6sEkcObHB16De
	 Yws3EAepfHHkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FB3860A51;
	Thu, 19 Mar 2026 21:47:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DE2D265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6271140485
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:47:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3E4KF_Oux_cU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 21:47:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8ED1E40065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8ED1E40065
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8ED1E40065
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 21:47:24 +0000 (UTC)
X-CSE-ConnectionGUID: t4UtbD5WQ3+1MEWRcfey2Q==
X-CSE-MsgGUID: v9KBE2JeQNGGmXiN5zWslA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="75112154"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75112154"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 14:47:23 -0700
X-CSE-ConnectionGUID: v/PhVJsTSGOrE4MtqtjkQw==
X-CSE-MsgGUID: F1HStFNFT0+fRiR6zHaGbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="246119850"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 14:47:23 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 14:47:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 14:47:22 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 14:47:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IjpeOAl2HRbQLP68Xd3MSnozB6RiM5aJkDh54/2wbhoEzS/s7Qp2S/AcJkUvzFH1j+/ZVDWlPazmzEFuyfeyLIz8BXEab876Sde9t5s2r1B4hY2Cc69oJKbe3RA6SZVXzVyKKaMha+uDWYasAubMCXSS7yTuuxvV+dgYDx1m3THJob5SrMwUgoW5LfrPeH8NW9r4Yp/8ObG7GFhWoOSVWH5R0aTTbPoZS2HqejOLO4iTcdBw9M5AbWjkev+jcH4y3/ZtFV+wQCbQ+ztJL3T14NYK8G56D89vKaC96H2dqWbhK4g/N4tBNulMkILV3nnlNIMgsqbkLTXXj5w4Ztimaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=duNT4D4GZRJLwIcthFdN8bvxRqQnJ5xhF38tQ8yUdHo=;
 b=UYjx12XZgslQz37V6kGnmVNNE8wPOgFrn5K+frJsR5efzYGwyy7ea3FiPxDV5zzaJ/SPwek4oeU5NTqzALe1l9jrf1CjuQQBGA/yMkISPK1J9FvZIVhT0/TtOPv2hdE7Ix+cLcXWBjl2qPAuGkOoaewI4+ddIGN7T/nvt2oD7KbwNt0RFnzVyLUkgcdc/i+UyJrnP7YWTM2qcgWIFHjc0o0RL8lQqg/EHJOr9hni3l64DnTqZW/WiHpqwfmuv0pluAd4FFDQIUY+5Eo1+yZl5sr5rPR9tXnaD2emly2+JURYJ50Y97hjnj1GFhR4K1AnZij3Yxo1Pkv9YDZepLlCAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by DM4PR11MB7208.namprd11.prod.outlook.com (2603:10b6:8:110::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Thu, 19 Mar
 2026 21:47:19 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%5]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 21:47:19 +0000
Message-ID: <7bb04cd3-b787-455a-a989-50e3805e8c5b@intel.com>
Date: Thu, 19 Mar 2026 14:47:15 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <aleksandr.loktionov@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <ast@kernel.org>, <daniel@iogearbox.net>,
 <hawk@kernel.org>, <john.fastabend@gmail.com>, <sdf@fomichev.me>,
 <bpf@vger.kernel.org>, <decot@google.com>, <willemb@google.com>
References: <20260318011545.12874-1-emil.s.tantilov@intel.com>
 <a666510d-8664-4b74-aed5-91eb28ff9d51@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <a666510d-8664-4b74-aed5-91eb28ff9d51@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0321.namprd03.prod.outlook.com
 (2603:10b6:303:dd::26) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|DM4PR11MB7208:EE_
X-MS-Office365-Filtering-Correlation-Id: cd90a25a-da5d-4df8-4612-08de860117f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: IMBSviL2tO2y1WJf04Bui396DNY9iWvHmzo4/xjTA0Boro1t+nAlns8Z+h0oXfgl+xeODoc7/mBRLc3VnsLBYdeoWfTWw5yIkk8qtGiagu1peiRE3cSF8AizP2087/PaxHah0SXq9MEbHbMvpdXTtoq+5pzGHtAIMdszzni6RzxuI0ajvRbeHLRNuaNHn0oNvRMPfHEu44UUztkV+WSwfEcCjvEqUQpZs5e1tvDJTfZbS0H0uqh1PVBeDHvuz/no70NpGTcnv+o6lSNWjNgANrIydO+YkYPe1kuJ3nohUhozh8qEOhcgbWDFATEJl3nytGNWB5PUgqxVOqq/yppH3ixeah8NOovFBfHw9jNU9EfN55yaz7VD/2SMfocHWibH5GU0/avppdFqvEnvNPDaflq8CoM1gwiK3congIqVh15SzWu9RWJblsUGeS7l0OdAJOnMxekcGo6XHmvfQaXJwsVN2qOLXDii1FvvletffgfPVxigbV0V4Dor8BQWINBX8wTkWIjawdkxNqzlKEQ1x2OIfy1h2mWMoa+nNXRUwjiC++Xx7kg0Wp2pAE/UO4+0XP58ClObf8MyMYEp5Xqi15QRecjm5pr3HaiBXzaoBoZ9tQ1ddEjwjZADJQjMhheeb0Cnc2RkzSQlqNOr3+7oo03UvntirDOBncZLoYfoqy13yFcAWIFPAY2YHKppaQFMQqUk1Do55i6QB2SmoiBiBN0ayu6HjIzusvwgPmFFJBs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmJMZk9CRUg0Z281TFRQUmdhNGUrV0RYZkxCSU0rejdRZlp3ZXRKOHVpVFhR?=
 =?utf-8?B?ZkppdFFaTWV4MlJKU1dsM3paamtqeU9WVXJsY29FeDJwakFmVTVscEw5M1p0?=
 =?utf-8?B?VHRZWnd3UjVHU1A1SlJoK203SDJOZys1bVVaUGZzeERJNG5NTmdmQ1RvaE5h?=
 =?utf-8?B?QnBFS2kyaE5TMHZ4Q0FvZ2ViMUR4cVliRUlCUlpkU1lNSlowWGQxayt2dUxr?=
 =?utf-8?B?dzAvWVJUQmVQV0tNdE0weWRZb0pMRzFRbXV4cmVKQjNacFpaVVRpN2t4RlE1?=
 =?utf-8?B?L2lmQzRwQWwxNVVaOWo3YjhjSWpmeEo3Y0I3Qys3L0w0bG9zcTRsd1hJV0lv?=
 =?utf-8?B?bWhsQXRPeldCYlEvY1RlelpiY0NpQ2xHWmc1RjdpSkRqRTFNUklJR2ZaV3RG?=
 =?utf-8?B?TDlTZkN4allmVUtTWkpiMGNBcksyL2NhdmY1NEJUeFBYQUZ0czFRaUI4TTBF?=
 =?utf-8?B?VEpxMFBiYzhJUmIwTVJwWkd4Q2NrY3NMdS9SWVhvN0hBbGFVTE9EQjdIMlFI?=
 =?utf-8?B?OWxCV1pWVnZKdkZ6QVFSWWJOS0Zad3dwZXBYdVlZamkwVi9SeERoZE9ZelJV?=
 =?utf-8?B?RnloaUgybXlyVUhYaEpwWnptNVY1eHdwTi9IME1XV01GNFRaS2xlOWo0NmNM?=
 =?utf-8?B?QXdnelZXYnVxWTNLems0L1dRTy95THlyc2VLZXJhUTRUNG1scVNESUxqRi9j?=
 =?utf-8?B?T3dXbkdvdXk5bi9KTzV6ZnpVSlNGTEt0bDU0THdqMklIVWVRV3RaVUJhc01s?=
 =?utf-8?B?Q05jUVpsUXBYRCsra1Y5a1FQZkEwYnB1d25Lb25LeFBOVFFkd0VMdmtSdDdz?=
 =?utf-8?B?d2pDSFVmSHp3TndNZWVTcGRZT1FEOGNSc0MzYm5KOU5LUjRrblNOeDJtZVRj?=
 =?utf-8?B?VEl5TzYwK2NlNElYOHFKSk1JNE1xSFdEY2lJeXNjM1FmK1Jvdy9UaW9yUTBW?=
 =?utf-8?B?N1FYTjA1TDFrbEdiLzJqQ3Q0Umk4U2JTaTZiQlRyN2FzeW5VL1dEdnBia29n?=
 =?utf-8?B?c2VnRkR5ck9ONXJOVjVlOFZvMHpuc2lneHY4RWYxNWRPZ2FNREdONlR2KzB3?=
 =?utf-8?B?N0QvbVhDNHQrVnlOcDlTVkRZdThmZEg4dElmR0RJMzdvUlMxLzdPb2dlODJx?=
 =?utf-8?B?dWFMVDYySlJmeHNnUVEzK1FSclRCK1JxNUQrRVNvT2ZuOXVjbzhsbjFab1kv?=
 =?utf-8?B?Q29YOXJTcDFCS0lJWVRhZ0FLOXZSb1hMVm42UjJBOE5EeThCdmc2bzF4S2Fj?=
 =?utf-8?B?UUtVZ3ZWVG83OUZnZUFDell4aC80aTJaeGZRM0VTM01qWFAzMXZwNG9EZW5u?=
 =?utf-8?B?U0ZGNEJKRkdHaE03cEdQay9ZV0Z1UHF4a3lqWm1pN0FWTEwrTUtBMEhRbXVK?=
 =?utf-8?B?U21FR0dUbDJYWjc5bk1lSWU3ZEY1MmxKMms5QkpJYjY1Q2pWS2FjUnVaSlVF?=
 =?utf-8?B?SkYzZWhVNmp4TlNieHdEc3FLeEFUZ2JWMzh6dklRSXFKRml0UmFxcWpLMFFs?=
 =?utf-8?B?cVdlZEFCREtqY1dFRlltZkVMcHJJSk1NbEdhU2R6b1lxZC9hVFZBSVJGeHIw?=
 =?utf-8?B?S2xsbmhDdnRVVENuY2xmYWFUaEUzMEtlL2wvQU82OHE0OEhGS21yeUtNUThI?=
 =?utf-8?B?ZlB3aCtGZ09yUGp2dTE1cnZQZVNQMnFNa3dsd1ZMNE1MMUVNdG9JK1hjWkg2?=
 =?utf-8?B?aW5aeEsycFhoZDBjQzFneFVRSHdFc2grclpZUk9Td2NpNnU2TzNRdGNabFlW?=
 =?utf-8?B?NFcwVHpGTXN4UC9TWmhNRkhaWUkzV2xjQ1lVN1MwdW5TNzhxZFNQOE9sNVFJ?=
 =?utf-8?B?SFpEb1BJYXVOZUZUc09LaW4raEZuVERzdzQ1OUI1cHR0UHdXTkZPbEE3Q3RZ?=
 =?utf-8?B?dGIrUkV5ek1nUm4xVEc5THN3eUJVbG1sT29qU1A0SmdpSjJTZzhEY0hEcU0v?=
 =?utf-8?B?Q2psYVRuT0lZdWRJRW5YaHJJU3I2L3pxYWcvUUtGTHVNNHgycEJqaC8xdHlv?=
 =?utf-8?B?UVVoam5XL2VZZVdHYzdFVkNsU3EvTHExVCtuTVFTQ0loYmhPL3dFOWZhRWI2?=
 =?utf-8?B?S0plYkdLZHYrSmdWR0NmL0ZwQStGamJpVDRUb0FhODVxMzU1L0htb0ZJTlRS?=
 =?utf-8?B?aVNiWjVXb3JIc3F4SUlsdzBvZzVpZFJKSjlmTVB6WC9uYWcydjVndC9lcTZ6?=
 =?utf-8?B?QmpXQkl6aTJ6T09XdXcxKzJBbWx5ejNBQkVBRUZIZW93ckUyT204aVJnSEJC?=
 =?utf-8?B?NTQ1eHloSXh2MXpGalhGSXhJWjMrbjBlL1ZxUEVhcjd6ODhpdTQ2dlhneXph?=
 =?utf-8?B?bXhDdmZNME1QcWRFZHdlc0xZTXpJb3BLVWpIeHhxVDBCWHk4ZnpYNm0wOTRx?=
 =?utf-8?Q?4QV13INbG8T0LvC8=3D?=
X-Exchange-RoutingPolicyChecked: KEbQJbAhkvlmtaMaXlcB4KecIX6OzIL85PSIJMYyNY2EBLO3x5oCQgPrtZjG+a4PHO1eTYOzcEtamymbPDtOAzpqaOQQi7FQFU3fTZhQTcA8wQscH6ijFzdS1IXv0hmLCviXYORyL2y4RB23B5/aoDUtVvjVPi4N5CWKrH+64A8nPU4+MkUOPIPmH1lT7JaUTG093vN1hGf/J5q6wy3hR8IjwSnX4pmSi+WbdRrcdkBpCahqs4XYXJ4VoeSe7IoJ/swNAz8npttz5NwvC48/b68j7yMqqugVExMbUk6ISiSdOjbLmBMFI4RdcKmjA0zxbsLZyggtsltFBMKkXT6Wgw==
X-MS-Exchange-CrossTenant-Network-Message-Id: cd90a25a-da5d-4df8-4612-08de860117f0
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 21:47:19.0553 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sDjUwH8yNqVGWMNgdjGt0FkdGByhJcZyojTL7Kz1ODTV5Qr2gu4yziduqbQ4QX41j/tMLTkkrDiwKGiM/hF3CGCVbTKOSSk0uTZpes9VOZw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7208
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773956844; x=1805492844;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wFkvN66Kkukpm4irKFunhSs/gtWcAi8qYE//aDCVArk=;
 b=jJnviyMe88a54nac7l+4fPH4R1FNxNBMML814YZVInuhGxUcWe1mXYkp
 CYf0j1wyl/4WqnN6kIsnvXz/jCL1qtFFspejjAi43wKY0u7T6f8gthYnq
 0noccN4tVexOMR7Iozp1oCb1lIxlUty6z3UwqTYyNiqOzdUBTKai1QIB7
 aidfIUMpqxJ0jOPPmak4iLsA2coCepXT8DwjuTIQ77kh10vkqBO2XE30x
 z01mVRU165bppUL6EcU/4T8k+bSJN2fzVtQY5xwokotsHzOcKwb3K9nxI
 z/IU/8rV2C9tVkazfEOUkRWDvuIb74zgkxdE+U55xL89Ql0nNrTPGpmdW
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jJnviyMe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix xdp crash in soft
 reset error path
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:bpf@vger.kernel.org,m:decot@google.com,m:willemb@google.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 68F302D2CAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 9:40 AM, Alexander Lobakin wrote:
> From: Emil Tantilov <emil.s.tantilov@intel.com>
> Date: Tue, 17 Mar 2026 18:15:45 -0700
> 
>> NULL pointer dereference is reported in cases where idpf_vport_open()
>> fails during soft reset:
>>
>> ./xdpsock -i <inf> -q -r -N
>>
>> [ 3179.186687] idpf 0000:83:00.0: Failed to initialize queue ids for vport 0: -12
>> [ 3179.276739] BUG: kernel NULL pointer dereference, address: 0000000000000010
>> [ 3179.277636] #PF: supervisor read access in kernel mode
>> [ 3179.278470] #PF: error_code(0x0000) - not-present page
>> [ 3179.279285] PGD 0
>> [ 3179.280083] Oops: Oops: 0000 [#1] SMP NOPTI
>> ...
>> [ 3179.283997] Workqueue: events xp_release_deferred
>> [ 3179.284770] RIP: 0010:idpf_find_rxq_vec+0x17/0x30 [idpf]
>> ...
>> [ 3179.291937] Call Trace:
>> [ 3179.292392]  <TASK>
>> [ 3179.292843]  idpf_qp_switch+0x25/0x820 [idpf]
>> [ 3179.293325]  idpf_xsk_pool_setup+0x7c/0x520 [idpf]
>> [ 3179.293803]  idpf_xdp+0x59/0x240 [idpf]
>> [ 3179.294275]  xp_disable_drv_zc+0x62/0xb0
>> [ 3179.294743]  xp_clear_dev+0x40/0xb0
>> [ 3179.295198]  xp_release_deferred+0x1f/0xa0
>> [ 3179.295648]  process_one_work+0x226/0x730
>> [ 3179.296106]  worker_thread+0x19e/0x340
>> [ 3179.296557]  ? __pfx_worker_thread+0x10/0x10
>> [ 3179.297009]  kthread+0xf4/0x130
>> [ 3179.297459]  ? __pfx_kthread+0x10/0x10
>> [ 3179.297910]  ret_from_fork+0x32c/0x410
>> [ 3179.298361]  ? __pfx_kthread+0x10/0x10
>> [ 3179.298702]  ret_from_fork_asm+0x1a/0x30
>>
>> Fix the error handling of the soft reset in idpf_xdp_setup_prog() by
>> restoring the vport->xdp_prog to the old value. This avoids referencing
>> the orphaned prog that was copied to vport->xdp_prog in the soft reset
>> and prevents subsequent false positive by idpf_xdp_enabled().
>>
>> Update the restart check in idpf_xsk_pool_setup() to use IDPF_VPORT_UP bit
>> instead of netif_running(). The idpf_vport_stop/start() calls will not
>> update the __LINK_STATE_START bit, making this test a false positive
>> should the soft reset fail.
>>
>> Fixes: 3d57b2c00f09 ("idpf: add XSk pool initialization")
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/xdp.c | 7 ++++++-
>>   drivers/net/ethernet/intel/idpf/xsk.c | 4 +++-
>>   2 files changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
>> index cbccd4546768..b670f0ea20b3 100644
>> --- a/drivers/net/ethernet/intel/idpf/xdp.c
>> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
>> @@ -488,12 +488,17 @@ static int idpf_xdp_setup_prog(struct idpf_vport *vport,
>>   				   "Could not reopen the vport after XDP setup");
>>   
>>   		cfg->user_config.xdp_prog = old;
>> -		old = prog;
>> +		vport->xdp_prog = old;
> 
> You could just add 1 line here:
> 
>   		cfg->user_config.xdp_prog = old;
> +		vport->xdp_prog = old;
>   		old = prog;
> 
> And it would behave the same.

Good catch. Will clean it up in v2.

> 
>> +		if (prog)
>> +			bpf_prog_put(prog);
>> +
>> +		goto out;
>>   	}
>>   
>>   	if (old)
>>   		bpf_prog_put(old);
>>   
>> +out:
>>   	libeth_xdp_set_redirect(vport->netdev, vport->xdp_prog);
>>   
>>   	return ret;
>> diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
>> index d95d3efdfd36..b601b6c298c7 100644
>> --- a/drivers/net/ethernet/intel/idpf/xsk.c
>> +++ b/drivers/net/ethernet/intel/idpf/xsk.c
>> @@ -553,6 +553,7 @@ int idpf_xskrq_poll(struct idpf_rx_queue *rxq, u32 budget)
>>   
>>   int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
>>   {
>> +	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
>>   	struct xsk_buff_pool *pool = bpf->xsk.pool;
>>   	u32 qid = bpf->xsk.queue_id;
>>   	bool restart;
>> @@ -568,7 +569,8 @@ int idpf_xsk_pool_setup(struct idpf_vport *vport, struct netdev_bpf *bpf)
>>   		return -EINVAL;
>>   	}
>>   
>> -	restart = idpf_xdp_enabled(vport) && netif_running(vport->netdev);
>> +	restart = idpf_xdp_enabled(vport) &&
>> +	       test_bit(IDPF_VPORT_UP, np->state);
> 
> The indentation is messed up, should be:
> 
> 	restart = idpf_xdp_enabled(vport) &&
> 		  test_bit(IDPF_VPORT_UP, np->state);
> 
> (two tabs + 2 spaces)

Yeah, will resolve in v2.

Thanks,
Emil

> 
>>   	if (!restart)
>>   		goto pool;
> 
> Thanks,
> Olek

