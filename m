Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E18B25311
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 20:32:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC2C861B47;
	Wed, 13 Aug 2025 18:32:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bRg6420SJytm; Wed, 13 Aug 2025 18:32:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17CD361B41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755109946;
	bh=VfOQn8wF9F7MxxxKTKCXaDiprw6DB/5MJqUE0/UjoNk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=41d3ALFDVQt12FtZzbxf8F1Wq6NVAkLphsYFSfG4dDx3F7gHKerrePW/BHEPyQZWN
	 Y14IQ7JPNK/cZ4pbd3Nm658zvhDTtsiCR+C+Lsqzk6cqbtrIl26XkHiKXqT9fO4jAM
	 F9NYIDuAxZ+9Jp9yZfmXqS6hCMu+hEe2BPSD0f5K39Q/D7q8BhFnJV+06o1h8KriK0
	 4RAOaBIlclwU5jX/jyX0L8pxbrqal9iZBGSCBldIrMs0K5pP5Mz0hGuLBcnSbKhzFU
	 h5UL3tfFW35xweyvIfHn0Ra4cFAFtyXDJYnV1hndxMjudQFKqFLvMIMCMWccm+HPct
	 8rACp5E54bzaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17CD361B41;
	Wed, 13 Aug 2025 18:32:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 88CFE938
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79E384047D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:32:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rILoAHbcM_xy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 18:32:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 951E640386
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 951E640386
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 951E640386
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:32:23 +0000 (UTC)
X-CSE-ConnectionGUID: KNp0XLwVT9CsUr1DWi00JQ==
X-CSE-MsgGUID: iDLl0kFbQ/uy4UcpaZVlUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57533772"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="57533772"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 11:32:23 -0700
X-CSE-ConnectionGUID: MnVbuTKKRZ6BIVHvZgJtew==
X-CSE-MsgGUID: lvCDZelUQG+I9LIFTQ+4ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="167350440"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 11:32:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 11:32:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 11:32:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.84)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 11:32:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ICt4E3iKC56TSd83zmfg5MQGn/iwuVMVS0H8QbhdM2P/oTE7z+LwiVgPn4PoXLSmmn4QfcC2OU10rsHWFlpooI6AK40TIoWgviHlQeJGuHANnjY1ueGdCMdoqwBH6XTaC8qvEpc3fg44dAraSpKTe5Z+UuKJ74erJXJtJC0ZHXQcIe4IjDNw0X8ZtB3M+0rTDiPGFY42LFHpIifr9tqgKo9MIRbMYsYb5Eg0QnSIrI7Tx1+n4ULClkIF9NNoils+1xxvYq55QWZ8xv0DbhzZ4p/HPzW+t9yEPRixEMUiEJHLMJ1m+fTqo9DkwAbb2FjZQDnn9Lxv/2IDPmXsg7Gfpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VfOQn8wF9F7MxxxKTKCXaDiprw6DB/5MJqUE0/UjoNk=;
 b=zDThPUpb/tjIgpDeK/5mZ+TOPquznxbFw0Q6ZWNLKIGPYNI2UJzz4evLhZu856CSI8UVNI4QzA3inIft+tevZ2DUxPtsHp+cnrRrio5sphLy0qRWakn0cWqCJMyGnAsn39Fm2mSfxa7kKlz+JXaEfnideCp6HscqzskA3Fu09PmrqlFQocXxcyPVodYnyp1ctuhI3IECXxvSk4HI3PbQCq6w6sMbz0m28INT+ffQ/AdUBoXk60GxM84w3QE0fR7tfbyCBzIBaq5uLa6xltsXW+Ld251+0lLsH5knzPeBce7Ia2XMKQz6xHQbHwOoCdn/iI+Zpn51BolS6jO5tb+iXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7539.namprd11.prod.outlook.com (2603:10b6:806:343::6)
 by DM3PR11MB8713.namprd11.prod.outlook.com (2603:10b6:0:45::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.14; Wed, 13 Aug
 2025 18:32:12 +0000
Received: from SN7PR11MB7539.namprd11.prod.outlook.com
 ([fe80::75a5:f8d8:935f:d968]) by SN7PR11MB7539.namprd11.prod.outlook.com
 ([fe80::75a5:f8d8:935f:d968%5]) with mapi id 15.20.9009.018; Wed, 13 Aug 2025
 18:32:12 +0000
Message-ID: <8f4403b8-493f-4745-88d2-1f9253646eed@intel.com>
Date: Wed, 13 Aug 2025 11:32:10 -0700
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20250811084406.211660-1-paul.greenwalt@intel.com>
 <20250811084406.211660-3-paul.greenwalt@intel.com> <aJtadxgEiPQXfRl4@boxer>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <aJtadxgEiPQXfRl4@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0153.namprd04.prod.outlook.com
 (2603:10b6:303:85::8) To SN7PR11MB7539.namprd11.prod.outlook.com
 (2603:10b6:806:343::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7539:EE_|DM3PR11MB8713:EE_
X-MS-Office365-Filtering-Correlation-Id: b86a0994-4ae2-4a95-7687-08ddda97b826
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dTNubGFtaU1QemJrbnV1cEkzZ3JhTEtYS1hTcnZIR3VZNEx3STFZbDBNdCt0?=
 =?utf-8?B?WXF4a0g1Q1FDeSsyKzVCM3hCRGo2TnRhTks2VnQ2cC92TURhblBUcFljYlBH?=
 =?utf-8?B?Y2gzdXJrTHl0RzJXNzN3bStWUytYNzg4cEpPb2lxTDRrMUVkeVNaT3Y2bk42?=
 =?utf-8?B?NHAzZGp6Q3hpTDFzdThFL1h5N2YxZ3YyRENjcjFhb0grL0wzdUF0czRuNVpl?=
 =?utf-8?B?RjluN2VIRzZBR3d6RXNQZlZsYTdOWGIzSHR3N0tVQ0xIT29TUGhaOEVVVzA1?=
 =?utf-8?B?QU93cW16VFlDeVJ1aE56cWlVS1BnSzZkWXlkeURVeTgvaEZzb2MwREI2M0Rj?=
 =?utf-8?B?N2xDdzdHNFd1Mmx6VFBOOHlSRkJlalRvalRDcXZGMTAwS0JYdGZTT1RiWjZN?=
 =?utf-8?B?dnl3ZitCUTVUMitxZXdqWTlpOGQzczBlL2tHeG5YalMyMXJZYXVxRlkrTGJu?=
 =?utf-8?B?Q2RwbFJuaGdLTGI4dmZHNDhXZXc1UkpLeEVkOUdFczJ6NTV6ZythUUNzZGdR?=
 =?utf-8?B?eTFSVDYxcmR6RjB2U2Y1TWVBYlFYNzg0bFQxalJMMjhtZHg3bDRTWGZyNVhX?=
 =?utf-8?B?S3IxcDQxV2NMUy9rNWp2UHQ4UDMxRXZLRzdLMkhzMWlBaUEvNGk0bzBjOEtB?=
 =?utf-8?B?WHc0Y3hWWjZXWGl1NUVSMzRtS2RzUHJnTUtqaXFDdFlhazJsUERkby9GMm5h?=
 =?utf-8?B?VkJjQTlTLzlGaDZ6N1JNajFjT0wySmV1Y3U0am9qc012NGdaQnlMN0pKRjdq?=
 =?utf-8?B?U25JWGtKL05LZ1pEZDBZS1R3TEc5YlJkUzRoMXRUNGhLTFFTZ2pqeDZhaHRP?=
 =?utf-8?B?aDd0djZNQVpVZUEyRGxBaEtXTXA1S2swa09tWmdYM1ZNYU9KQURnZWZzYUdP?=
 =?utf-8?B?cVBsbVVPR2FKOVl0bnZRUlc0OFQ0aXJRcmpIRTlBdTdMeVVnY0trOGhBajBn?=
 =?utf-8?B?NlVSdHpPN1VTMG9hU1dlMGdPWEpIa3M5c0hxQUdGZW0xNDRhNG9wdUs1a2lB?=
 =?utf-8?B?WHVpaWdQWFJPcnhVS3Z1VXNqUVl1K1ZXMytueU5WK3JOenNNSlE3SkRwUVF6?=
 =?utf-8?B?a0JBODhDUmFIQ2JlWDE4Z0MxaWdFNnJVNU5tWUJOOExBM2FIcVdGZjJTbW5p?=
 =?utf-8?B?N0lsN1QzbFpaVEpLN0c1cjVuSzV0T1hUV0JINUJjWjQxVVJGaHlzdi9vQnhJ?=
 =?utf-8?B?dFVqVVFNUVBvZkZBNVFqSk43WnVxVk1GcXlzTnJJNXpBOUtIR1FwNUFTVm55?=
 =?utf-8?B?bHROMmdsSFV6cDE1VkJTWmhxQ1VjY0IzaWNNMjhQQzNwWXUwOHVQcXR0UDMv?=
 =?utf-8?B?eFk2V2Raalo5N1gwUmN1ajVhOUxuLzcxZUlZaUJBb1JQeVhzVHdmN1hKRkdi?=
 =?utf-8?B?QmpJM0hNMzFaQ09PdFlsMExKOGdwSnN4d1Zya1dhby96ZW9taXU0OEF2bGpH?=
 =?utf-8?B?SjdCankrY3R3OHVuMW85V25BL2E0WTBRcTZQWjFXYmRaWkM2dEwzb0ZxWGhS?=
 =?utf-8?B?ejhWR1J2aWpXekJ1eGl0bnlTMnhuQWFOMUJ4MldscG1hOURGNEM0TldxN3Yw?=
 =?utf-8?B?MFlYZ3d3anFROUs5blY0RkJxckVnNWVncjV5ajYzckgwc2l4TExoQm9oM1RX?=
 =?utf-8?B?ZE11cjJHbW0yZXQ2RG1zQldaSGZWcnRvM0pKbkR0c1l1T2dzRzRaWktIWExz?=
 =?utf-8?B?SW53UmFMV3F0bElwK3NLWUhQSzNqdjNRVjNHeWdybXBBeDBsazV3NWE1UER5?=
 =?utf-8?B?TktlTGxsZVh6eG80ZGpPTExYM2NiTzdmbFZkZC9YeGJTTWpsY3hrN0t1Uk45?=
 =?utf-8?B?dlo2YXQ1Vmx5eGhsNVlXdmJEVEU5N25YYUQrRXlzOXJNOVdHK2NTSCswS1hN?=
 =?utf-8?B?Qm5HTnU1clJVUkl1RXZMUC9YVm81Z1BQMnBnNHF6WThOWWplQmlhSXJRV2tX?=
 =?utf-8?Q?jO5ob+Ha3LE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7539.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHVBVXBzclVTOU1EMXo3SC9YR3hSeW5DOGQ1ZmlSRFl4QWNmeFZUVnJhelY3?=
 =?utf-8?B?Vk5WclJPVmpLZHJOSTlTcWdLZUlQTG5ITHdKaTYvTlpwd1hkU0RTOVNhQ3Fp?=
 =?utf-8?B?SzJ5S3JaZHV2TDFlTUZ4blBDV0dkVHFYYVh6aGdXN1g5YkpiMGJDUG9LTlJE?=
 =?utf-8?B?Z2F2cXJ3anVZTTZVSW52SmE4WGdMNjBqSzR3NmxjUHhjRCtmSmdCVmp4Vy9H?=
 =?utf-8?B?dWFKbVh0NUIrZlVWM2RYSUEyNkpTbmlXKzBJeENWd1Nvb2tNVGcxUnNSbkhm?=
 =?utf-8?B?NkRybm1QS2RDV3RhUWIxVFVqcWtZckR1OXZjWkgyL1ZIcXo0WGdVQmkvRDlI?=
 =?utf-8?B?V0dsM0ozVTN4c2FZQTRITE12Tis4dXFUU1lCdE1oQ3ZEM3NRYVBLUlBtMHFR?=
 =?utf-8?B?ek5aNTFVZFkvbFZZWmpRQXJaWnNWUnZEUno2bVg5V2NPMUhLY2pPVGM1bktj?=
 =?utf-8?B?NE5LSFBNdEhERjhaMFlHMmVGbk43eERpeHhtdkQ1RjBOWmVLQlQzY0drRmxY?=
 =?utf-8?B?TUg5TVFCMEtiamt1VWRnMDJNU21aWHZNMWZmUGVmVDJmaHZPZUt4T3FzWkdh?=
 =?utf-8?B?Si9ZeUtOa2R2K1VDZ2c5NFV5SE9wZ3o2TnFDVWRXY1FyMFdubFBrQnB2enFi?=
 =?utf-8?B?WXFGTWlTVllzNWNJSUFVTEd6bUVVQUdobUVtdE9rQ2MvTEVVMTduN2NoRzVK?=
 =?utf-8?B?NDcvSTg4L0o5bnNkb2tEWFRVYkFpeXNVUlU0ZFpOSVR0bzZhaXBuazVRL09T?=
 =?utf-8?B?RUlhSk5kTVo2K01IOFc1TTUwWUpLdTBmNEM2MXRaWDNvQ2NUM1JVb3VVRFlm?=
 =?utf-8?B?OC81bkVqS2hUS013Sk9FcUIyMUl5WVdjb3BUL0d6OFdvSGFYMVUvek5DTC9u?=
 =?utf-8?B?MTM0NzRWbm9pVTV1TnloV0xuNEFKam0yWk5QcjdhWGNMWmQ2VFhPeXRTaWt2?=
 =?utf-8?B?TlRna1ZXMnd2Y3VaQzliMDA0Nk5Wc2N5cWNtcmFFcVlCZzEvKzUxaDdPd2Ji?=
 =?utf-8?B?Q0tCTkx6VVQrOW1kbWEreVp0dWJPdmgwNmkzMlZwUnBQNWFSZVorNTFkR2Mx?=
 =?utf-8?B?TXAyUFlwdnlHMUVtckYyNlovSzhIakdNdDBqckU0ZUxweDk0K3JUelJuZ2I2?=
 =?utf-8?B?Z1hHNDBmdlhsb3JwUUs0OU5YVzMxNmF2enNtUzkzeW50MjNOSE5zOE5lNWZY?=
 =?utf-8?B?M1V2cFFyVzVuZkNiUm54SmkxSGM1VjQwSEd3Z2t1SExWY1J6VjhLeHQ3MUpN?=
 =?utf-8?B?WkN2R1N4Y1lLWFpYRXNIRWNwcHFYSHF1RHJkM29DY3NnV3dubGpQS25acEpu?=
 =?utf-8?B?SE1TK2d1cTd3OExwWkxpMGhQcGlYWjhkaXBQS0N5bjNiQ1NvSzdoNk1UY25h?=
 =?utf-8?B?VjZIUFVMNW1RK0RsVWl0M3ViS1p5djY2REVrQTRRQzhWVWNpbUFwRzVTN1FV?=
 =?utf-8?B?Z0ZtQmxZY3BlN095Y0NTRWdiUzE3Yk5SeEIrMDJYZTVaVjRGRjFxWnB3a1JJ?=
 =?utf-8?B?eXUyZmdZN3pBZ2FhblFVdlBQNk1YdVQwcENEL004K0FPMlYrK3pvMnpvZTlr?=
 =?utf-8?B?VkltWGZlRjlDa3lpVE9UcGp1b3JyZmgxSlFtZUxwQTVkb3RzV0tZTllLU3Y2?=
 =?utf-8?B?WWltZldqU2hmWHRMQTNmWCtTdVEvNmliaUsrU3RYcFl1MTBCUG1MMGMwQmhy?=
 =?utf-8?B?UldJa3dXR3B2TTlKZXhKdVg0eUhSd1RwRWs2ajNDNW5KUTl0aUxxMEpkckdU?=
 =?utf-8?B?SGlVdlo1cHNzRG8yUW5uTEVBWHliYk41djBoZVZpSnRHQXRQSE1nWk1scXdF?=
 =?utf-8?B?bytYMG9QZmNkclUxTkg5a2pFa2p2Z1JZVkszZ3NGR0dDNDhVSTAxS1BpanZX?=
 =?utf-8?B?T2lob3J3TnE4aURZVVBpSEdmem03ZjJFT3M2dE5NcGR2NVhERi9mMy9aeXRh?=
 =?utf-8?B?TFRzdHFEenRZTU43QjVIRC95ci9Fd3B5VzFhenU2aDVaVkVIMGo0aDZkTTNW?=
 =?utf-8?B?QVFxelJ3enlxK3Q1VzJRdUhmNzFEWFcrVmh3b0NrUjhIOUV0SFVteFJIMEFn?=
 =?utf-8?B?RUVkU0xEKzRBd2krK3Jtcjk0alZmUk5uUmNVWElWeW1QSXNTMk9xbm5XSCtW?=
 =?utf-8?B?QmQwZ1RhTGQ0ZEJoYXR1elVWRjlVQW5ZVzE0TmQ1eU93Y2RHYlo3aElCVTZ0?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b86a0994-4ae2-4a95-7687-08ddda97b826
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7539.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 18:32:12.2776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0sF3swEd3ZTI3brhmh3YL/9A/xLRRucQ8irP9s0OpfKeeGtytwK9y8D+kR4G77CfVm45urJth4t2kXSzb2gG9fnZ9AMd5jrR97GLVRzE6JU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8713
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755109944; x=1786645944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gBtzxCMscWHMlqHYmiqw0hsllacr14jpeqTghjbV02o=;
 b=RR6O3iezd36I8gE4hGx1PLBYXbRMFoYOdnIDJ2iMYlV2zvjxc08YpMJv
 te3s+KscOvMefZjXpoTuRcYlcJ92tCAHT12GBX97N+EKTndT3D/lIpXsF
 LHk43SrIKc0Law3cRHkjxLSlPfrtWOa4S7lmdwZVUAJRzR0NRKC91NRaU
 2pApFhTT+TXkNC27+ifGLUJKQotEWUmSRGh2AWSuliKUe8OJKyhgf3keL
 Stf3JrPN369WJW1yPOIM6Xzp6A9uyQpgDsOglgdRYQFTJmF1aP3C0GhnZ
 UytVVkbHhM5MPINp1j27ff1iuZfkR/5+PC5eq0wwS4TRQjSI+HvTy7Puh
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RR6O3iez
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/2] ice: add E830
 Earliest TxTime First Offload support
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



On 8/12/2025 8:15 AM, Maciej Fijalkowski wrote:
> On Mon, Aug 11, 2025 at 04:44:06AM -0400, Paul Greenwalt wrote:
> 
>>  
>> +/**
>> + * ice_cfg_txtime - configure Tx Time for the Tx ring
>> + * @tx_ring: pointer to the Tx ring structure
>> + *
>> + * Return: 0 on success, negative value on failure.
>> + */
>> +static int ice_cfg_txtime(struct ice_tx_ring *tx_ring)
>> +{
>> +	int err, timeout = 50;
>> +	struct ice_vsi *vsi;
>> +	struct device *dev;
>> +	struct ice_pf *pf;
>> +	u32 queue;
>> +
>> +	if (!tx_ring)
>> +		return -EINVAL;
>> +
>> +	vsi = tx_ring->vsi;
>> +	pf = vsi->back;
>> +	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
>> +		timeout--;
>> +		if (!timeout)
>> +			return -EBUSY;
>> +		usleep_range(1000, 2000);
>> +	}
>> +
>> +	queue = tx_ring->q_index;
>> +	dev = ice_pf_to_dev(pf);
>> +	err = ice_qp_dis(vsi, queue);
>> +	if (err) {
>> +		dev_err(dev, "Failed to disable Tx queue %d for TxTime configuration\n",
>> +			queue);
>> +		goto exit;
> 
> nit: in this case you leave queue pair in limbo state. i would be trying
> to bring it up regardless whether disable succeeded.
> 

I will make this change.

> 
> (...)
> 
>>  
>>  dma_error:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
>> index 2fd8e78178a2..be74851eadd4 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
>> @@ -310,6 +310,12 @@ enum ice_dynamic_itr {
>>  #define ICE_TX_LEGACY	1
>>  
>>  /* descriptor ring, associated with a VSI */
>> +struct ice_tstamp_ring {
>> +	struct ice_tx_ring *tx_ring;	/* Backreference to associated Tx ring */
>> +	dma_addr_t dma;			/* physical address of ring */
>> +	struct rcu_head rcu;            /* to avoid race on free */
>> +} ____cacheline_internodealigned_in_smp;
>> +
>>  struct ice_rx_ring {
>>  	/* CL1 - 1st cacheline starts here */
>>  	void *desc;			/* Descriptor ring memory */
>> @@ -387,11 +393,22 @@ struct ice_tx_ring {
>>  	struct xsk_buff_pool *xsk_pool;
>>  	u16 next_to_use;
>>  	u16 next_to_clean;
>> +	u16 tstamp_next_to_use;		/* Time stamp ring next to use */
>> +	u16 tstamp_count;		/* Time stamp ring descriptors count */
>> +	u8 __iomem *tstamp_tail;	/* Time stamp ring tail pointer */
>> +	void *tstamp_desc;		/* Time stamp descriptor ring memory */
> 
> we spoke about putting these onto ice_tstamp_ring...if i am reading this
> right you want to avoid touching ice_tstamp_ring in hot-path - is that
> correct?
> 

The time stamp ring next_to_use, count and *desc can be moved into the
struct ice_tstamp_ring. The reasoning for place them in the ice_tx_ring
2nd cacheline was to avoid possible cache misses.

> if that ring is etf-enabled then does it ever process the normal tx
> traffic? what i'm trying to ask is whether you considered putting these
> members onto union with next_to_use, count and *desc.
> 

The E830 ETF support requires the use of the Tx ring (i.e. next_to_use,
count, and *desc) as well as the need for a new time stamp ring. The
time stamp ring contains a the time stamp and a reference to the Tx ring
descriptor, so both rings are used when etf-enabled.

> how different is layout of ice_tx_ring after your change?
> 

The variables that where moved out of the ice_tx_ring 2nd cacheline are
not accessed in the fast path.

Thanks,
Paul

> rest of the code looks good to me now, however i still would like to
> clarify things mentioned above.
> 
>>  	u16 q_handle;			/* Queue handle per TC */
>>  	u16 reg_idx;			/* HW register index of the ring */
>>  	u16 count;			/* Number of descriptors */
>>  	u16 q_index;			/* Queue number of ring */
>>  	u16 xdp_tx_active;
>> +	u16 quanta_prof_id;
>> +	u8 dcb_tc;			/* Traffic class of ring */
>> +#define ICE_TX_FLAGS_RING_XDP		BIT(0)
>> +#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
>> +#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
>> +#define ICE_TX_FLAGS_TXTIME		BIT(3)
>> +	u8 flags;
>>  	/* stats structs */
>>  	struct ice_ring_stats *ring_stats;
>>  	/* CL3 - 3rd cacheline starts here */
>> @@ -401,13 +418,7 @@ struct ice_tx_ring {
>>  	struct ice_ptp_tx *tx_tstamps;
>>  	spinlock_t tx_lock;
>>  	u32 txq_teid;			/* Added Tx queue TEID */
>> -	/* CL4 - 4th cacheline starts here */
>> -#define ICE_TX_FLAGS_RING_XDP		BIT(0)
>> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
>> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
>> -	u8 flags;
>> -	u8 dcb_tc;			/* Traffic class of ring */
>> -	u16 quanta_prof_id;
>> +	struct ice_tstamp_ring *tstamp_ring;
>>  } ____cacheline_internodealigned_in_smp;
>>  

