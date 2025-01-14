Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B321A10513
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 12:11:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1FCD60E94;
	Tue, 14 Jan 2025 11:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZHq_tWrkqgOK; Tue, 14 Jan 2025 11:11:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3016160E7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736853109;
	bh=gF6DFEgNit/dSTjI7gFLRQsSibGpbYHZWdL0YHgR054=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OU5UWOzZtXZsTk//OzOQTRE8Yp2xlarbYXUqJ+9IQF3eT5VjjkhyfCvbo6qyHAu0c
	 QLUC7yirLDAe75vXq1FEmT/Fyh6DNQifca7gKCf9sHQDQ+oMEJDNSXwAIgg/4k8f93
	 DU0GRgCQ9Chpz01kFp0Jtr2FwpBtrazz0Dajtbu5pyjVor6y2ukDeHbaJ6D2mW/u6E
	 7Srit916GCHQI0VIhL6XfQPazSt+zfyNjl3kY6vAcYf9XyEaCdMKW7Ni131hBADvqZ
	 HNpRd2TH/XfL4vpMuR8BEbSzUoOuOCA+mjzLVT8ZzQlNAtnufZ3POMlaizlVVaIMfq
	 38VTVJK/EmVqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3016160E7F;
	Tue, 14 Jan 2025 11:11:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id ADCDEB8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 11:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D97340D87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 11:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GGxaBXOPfL_W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 11:11:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 951B5408B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 951B5408B1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 951B5408B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 11:11:44 +0000 (UTC)
X-CSE-ConnectionGUID: eZe7nxkBQtaG6QJAbvfbhA==
X-CSE-MsgGUID: QhkjAxLGQdKEDH/z1iZ18A==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37298465"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="37298465"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 03:11:44 -0800
X-CSE-ConnectionGUID: FuKd8E87Txu+jJ5VyFb0+A==
X-CSE-MsgGUID: NTk/NNIcRRe0H16WARNYsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="105286562"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 03:11:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 03:11:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 03:11:43 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 03:11:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FXTYCdYSSNrWXCKLgpp7Ptz6JIh73dBzmkYDlBeKOc1idRMUciKXSPzq7kpQOWhzZV4ErKpu3UaqHhg/PoaO68hiCZ/B+p8HJMEjsxZE0xYoeUb3l6taZTxFBaRfEPyqfIixEw1/0Kaf7Bi7TxnH8CLqMHxDyjq74zpuZRJ+7QXGej1l1MuIYPCNVq8/UpbGWsK+8pFJI0sncA67o9J4ykYXmb7ESKJm2N998QV4AMAenkk7BBZnvuWeYGU5cN1zaX8C/T7e2wVcwoESUEndRmXG+zRCwwuYHexvnjg8nDyPKd1JIBomxqL33DYIYbC3NfFgmroC6sHJCNMEx11vfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gF6DFEgNit/dSTjI7gFLRQsSibGpbYHZWdL0YHgR054=;
 b=sVdYaDTn15YKbxWhGIqQffXyr8NGLLTeMkYDzkynvhDVSTbtIYEqYbYSNvamUEdQbUmDiNc4f3FiN8D+mXsubEGe5quXRO8pYXANJtJkcCEvjHJYYWfxGaUL4o61PS+xnvkCa9rNmVktEUziulsvBEkQ3TejvuGmzz8EMa9vbL9S7HEc/cVuhA4ltnLbn3fqLdSVu3sAcik9dCGZYyzww/EBoTHIkWEFBpjWJ3QNNSM2OYve3LMDjUKgG9CmuNF2xgSsYpLVa9UNSZLKn4+CMaRHIjhNHOWaEiPWYNCH/Mz8D7nQ5/wjxJ5nQR4asLqUkNj+tSEzEapf67JmEWBicA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW6PR11MB8440.namprd11.prod.outlook.com (2603:10b6:303:242::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 11:11:41 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 11:11:41 +0000
Message-ID: <c1fd73ab-1a96-4a60-99b6-5e632fa03372@intel.com>
Date: Tue, 14 Jan 2025 12:11:37 +0100
User-Agent: Mozilla Thunderbird
To: Yue Haibing <yuehaibing@huawei.com>, Piotr Kwapulinski
 <piotr.kwapulinski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Dan Carpenter
 <dan.carpenter@linaro.org>
References: <2c7d6c31-192a-4047-bd90-9566d0e14cc0@stanley.mountain>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <2c7d6c31-192a-4047-bd90-9566d0e14cc0@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0051.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:53::6) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW6PR11MB8440:EE_
X-MS-Office365-Filtering-Correlation-Id: db5b9169-7e49-4ded-8669-08dd348c3931
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enh5cXhTdDFUeTJTdjZvc2ZueEpXenFVR3hBSysxZm5YYmpzV2pWNTJSUEJu?=
 =?utf-8?B?c1d1VFovZEhBQVR2dVFmR0xXNnZLc3o5NWFKaUNtMEVBaEpXUm40aWVrZk9k?=
 =?utf-8?B?Q2RUTHBqbGsxeUJta0VZVm1LYkNYNk93U3J2NkppS3JHY0FlRWEvRnoxVzk1?=
 =?utf-8?B?MVF4ZngxZzMrL08wU0VPMElYZ0Z1M0pPcExvT0pJR2orS3IvV2ZoeGN5M1dv?=
 =?utf-8?B?WWw1WXdZMXF5YVZ0QWpPN1hFdnJMMWdNcHo5RlpsRGMvUURTYUxDbE9mcERs?=
 =?utf-8?B?WW85TjJRQzFlTWdrUzdkYWJZeXl4R2FaZHhpZW1WSTUvd0dJTXpuaDh6VVUw?=
 =?utf-8?B?SUg5ZWszUmFGNlRzY3RMdDBUYzJRMzhLcng4eGZMNDNnK3g4VkxCOG9NWjJp?=
 =?utf-8?B?WU5HZEdrK1FDbUozUWRQa21GSW95czU3azV0bkhjUnpQSlNlYkN3SGpFVkU2?=
 =?utf-8?B?aTVsdDh4emtob1pxQ3JUWG9YcFZobWpQVmQvNEY2N0g3LythZmdCaDc5VjdX?=
 =?utf-8?B?dmdHUUlUM2tJUmRpZ3lhSzBXOURvdll3YmNSdzNCSFRGdkhOeW5pV3NvM3Ba?=
 =?utf-8?B?alhVSW1CbUc1UzlqditwdzllamdNalQ5OEFCaGxkdW1LS0F5bElxU3NSRW8v?=
 =?utf-8?B?aklSMGlmZDJET1hNQkFoRXQvT1N0RDlHWFg4N0JodTdYVDMrUjZvR1JZUHla?=
 =?utf-8?B?ZVovaytnN25JM3VxMXFDZHRYdFBvL21tZG0yRm9VWXFGWWZGNDNsNllXWWVL?=
 =?utf-8?B?bmZwNDJJZ29OTDNNb1p4NVI0YXNiemZmMmx0d1pHWTBuY1dJSWFwZHdpd0lH?=
 =?utf-8?B?R09XYnFqUC9UU2VQLzlnT3FDSCtJVjB6QXd2QVUrcG1nOFovckZBV0N2NWZh?=
 =?utf-8?B?SjhTR29YM05BYkFwRUFjZk5sSDdWa1JLeG1pUENsUTdyVENLNm5WL2JyUDYw?=
 =?utf-8?B?eWh1VHB2K1lyRCs5dm1FUXpWdjgvQ3RMZjRrejlLOFo3N3N0Z294eUplRG9Y?=
 =?utf-8?B?cHF2WTJSbnp5QlpDd1VSTXpNdFlTOCtQQzVGc2VydUhvS21HOVNWUGx5enc0?=
 =?utf-8?B?cEJHQ0FiNDBtUkdjVG1WcW1rSXp1V1NsK09RYVpnRmZLT05LQ2liSHlRcmFQ?=
 =?utf-8?B?ZkZQMnRxUGhzVDBubzd1aU15aUtyVzdLSEtsWmcyTlFoWFFoY1E1YjJZaGFl?=
 =?utf-8?B?NXVoS1h1SUVRTVVkOEs2OHdaeFhqMndMS1NzbXhUc1ZpV2tIbHNkZzFsdWVX?=
 =?utf-8?B?NlpKMm9HaHNFMkJ0dkFqWVhGblgxMElFU0VKTVhRRDFsZldCVFA1VmRyalRk?=
 =?utf-8?B?Y3lGaTV1cjdZMS9ZRlFrdmxoK0p4bUtaaWZXdUpabzc5dzVLYmcvU0tRc3Mz?=
 =?utf-8?B?UE5xK0lXbXg3OGw0T2tWZXI0TjJ4Ym0wT1Vnb25NM3dUVGxFcllEcWNtMlYx?=
 =?utf-8?B?VTBzdUhPN01nVWk4QWRzbzJiQkZDMVViWFloeWYxcElyaTBjajczd0RrZURn?=
 =?utf-8?B?T29zSlBJZjgvNTd2TWh3Mm9tcFd5S29nNXhxUUNGRFJSelVXNTVtcXBoUDVn?=
 =?utf-8?B?ektYTFBORDJGWVJyemdvYVdnYllJbjF3K1NRU1hiV0xxK08yTWZyVmZ0Wml2?=
 =?utf-8?B?RDB0NnRSbTR1ZTVvcXQ4MnZodnZkc25IeWkwSXArbTdUckpacFpVeS8vMHA2?=
 =?utf-8?B?S3JkdEFMUWtDOHhhbW01YmlJREpoQ013UGF0Z2JsdTR4ZC8xT1BWMitGeWty?=
 =?utf-8?B?cnd5Zm5Ecnh0Z3NBSUlqaFNGZUk2bVZkZ29UajcxUm9tT3pYMVY1bGNxZ2h0?=
 =?utf-8?B?WXVla01iV2NkWlVCMUJSOEcrbXQ1ZWxKUWp3NHM3NWIzc0tQNFpsS3lRNWta?=
 =?utf-8?Q?vR637NGsn498b?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFl5VjdSZDFwT3VsclczWUZBRzJGT213ak5QcHJnS044aU9WbzREUGJiR2dn?=
 =?utf-8?B?SE9ybmlFS2IvbG43ak51bzB6b3ZFYWpkcmlwYzNIb2tRcktTaFJlYTErZ1NX?=
 =?utf-8?B?L2NPQWZ4UGRITUtqd3F6RXZGdGI4ZzViVlVnWEw1YkltZWNoRFZsN3pQZ2dU?=
 =?utf-8?B?MGNVUGVDVE5hUzBwS2ZHZVp2ZkRMVzlURmc2MlAyKzRabWVyNjg5K21KU3Jz?=
 =?utf-8?B?RWZRc3EzS25icFBtVWFJRUhjWW1mbVlBN1FuZDFNYzdzRGtEMTlyQ1J5NlMw?=
 =?utf-8?B?QlBjc3Rka1FFdUJZZGdvKzJTaUZkMHlIVEZ4Q3k5QWV6UHI5bnFORTNMdVht?=
 =?utf-8?B?Y2J2UngrODBaVjZEQU9oOEcwQUNOUERJQkx6dlFzZFpPdUVqZWF0Z3ZhU05S?=
 =?utf-8?B?RmU4TGd5MTlxeTRLZ1RvQUZWcWQ4MGFvK01Td1RhTnY0Rlp6TDNTdUt3WXVr?=
 =?utf-8?B?VkF2U1c4YUxBa0lRbUMyRk1oZkJoeTVYM2NNeG1pcXhCNlBDMStiRDNjUm4y?=
 =?utf-8?B?cTFNQjNuRG1VY2o3STdWOWQyRHkyWE5CYTJMSWVGcXFSTUxWa0puYzRkWWZ4?=
 =?utf-8?B?aXZ2NWsrMCtyYU5xSzVqR2RrUE5Oc0tZNnVBWlRBZGUxYldSMmJjR2liY2pG?=
 =?utf-8?B?LzFjS1pyODhGeDY3emlNVmlhYXl1cGNManNLalBveE1PNVA4UEx6bnBFZi9P?=
 =?utf-8?B?L3RobmN4YllqUVBUZlpkY3VRd1FQWWtabGtFZGc5V093ZmQwRmdlRmhmWU5M?=
 =?utf-8?B?RDljRFBpT3ZiclNYZnQxWU1Za1BLZ24rcWI0QnVJL0p3SndwOEhua2Z1YTlz?=
 =?utf-8?B?S0krbEFETW9KVDBHVlgvamMwRVJ3N29DZTdYSHJhM3hYaFRjczRRcU12UVBu?=
 =?utf-8?B?cCtRWm5Eb2NKY21UV3RTeFA3aHBUbzI5OVRwK01sdFdiMXE2ZnhHc0ZhNjVY?=
 =?utf-8?B?TlNpR3dUV0QrcytHN2hKeHM5UnNHZUFpUWFGOXNyUHdjNjBPalV5WWNZbHZt?=
 =?utf-8?B?RXlZdXpSUE1kQnl5ZnBmVk5TUkJ0U2JBNUZJZENLNjE0R2pXaGFKelEzb0tE?=
 =?utf-8?B?b1BnV1JvcnFyS1lYZVhMVkFoS3dzU054U2kvbmdHRTNjRmQ1aHhoSkY5T2RZ?=
 =?utf-8?B?ZU1IbU1EbmJOdWNSQkxtSUhxLzZ5dENwbFhhQ2I0bXBnaUhJRlg0K1hFVnR5?=
 =?utf-8?B?UnlPbHZxQ3ZDWTJaNiswMWIvWm1iWmxWdjJkSTJZRVJ5a0E4ZEpoZU83Uno2?=
 =?utf-8?B?R3I4Ti9iUzY5bG5qWVIzTzFWcjg4M0FVdlppMlEvcDI5TlEwNWVKZmkwMUVG?=
 =?utf-8?B?NG92SU85Z3ZyckVYQUlPYkxJWjFidDdyQkJQZVdmVjQyOHZabWt5b0Qwd0Vu?=
 =?utf-8?B?dHZ6WUNBb3ZTQlgxS0ZBbzBjNENKSEs1WlJCS2JXZU9rclJXTDF6SytNQ2lk?=
 =?utf-8?B?bTNFOW1NRmN3MmlXdUhSVmNiaFdndkIwVVlEVk1yNFFTdnVKMXBNUUVWbE80?=
 =?utf-8?B?MHErSEg0T2haaE5GSG5JbXcvcXVQTzhCQSs3N09lUmpYb0VHT1JMaGZEL2Qv?=
 =?utf-8?B?SDI4cXBTalMrNFdoOVVXSlFDNHFnMHRoN2ZhcTJtR3ZyZ0xTT0h1V3FkMXRO?=
 =?utf-8?B?TE5Ueno2bU1VMWc4TDBNN2F3M3I1MStEdkFPSFNBRStPRmtJYVNjV25oY0dy?=
 =?utf-8?B?NENJTG5sMTJ6RjE1eTgyS2VkTnF4cEo0bWU1S05kYS9TNjFCcVduRVFtMnJw?=
 =?utf-8?B?dHVhSlQzeFdNNzI0aHFkVG9YbGNJRDBlTDNiL2tPNy9zR3dFQ3VXMUdTanlG?=
 =?utf-8?B?ODV0dE56VENZUDA2UEdQTXZ0cFpvQ0Q0di81SURoT2NzSWRQUFl0NHROa3Uz?=
 =?utf-8?B?TFhmMUJaV1NubkJVYVBBcjNQWW02cGYxcEpyOUo2U0NhaXM5WjBmbHlxaVdv?=
 =?utf-8?B?L24vTjZMK3I2Y29ubjNVa2krek9mSmxVYlExZ1M2OHpEekFnajFhRk5YUGdS?=
 =?utf-8?B?OHBJdFNjL1ZtK0Y3VEZCTmVFbk9uOXBHeVE3ekVUOW1GcFJvOGZlQ3JHMlAx?=
 =?utf-8?B?UmJLNmZWMC9PVk5kL3RCbGtBTmZxaWJJVkF1U1BuUDVpeFFIdTZQSFE5RGxP?=
 =?utf-8?B?MGZYV0pIa3IyVUIzVDJxUGpycTZQdk5Odk1vMHJTdWgrRzE0cUdwNWV1cGcw?=
 =?utf-8?Q?GLVtKnd5ZW9Ex4uJJtZuQVE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db5b9169-7e49-4ded-8669-08dd348c3931
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2025 11:11:41.7281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UFNw132XePpcN+XqgHnshzjmwY8M2dhWd2dZ5Hy/QOf5Ajup2F0Cfp5vHM/dEPKPkBFFl6cjuTU88Eni0fbTG+je8R/SlIDHfXP0J4DHam4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8440
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736853106; x=1768389106;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=37v+3qIOJ5ndFGGNzn43G80+HwgPozUDuY25WaCJeCg=;
 b=NdGDX9/dWbWp5/ZxXejO21MWswY+VvctfIoa4p9vsZZ1gFVrh6MssEE9
 MuHoCYMxgKZ+5/nzWsveBPVnnln+5zzshVgBHx/v5sdzVMEBaauZ8giuo
 8iGGUDb5F0he0QD1+TIBzZDRScj5MhCOE1PGp5CcCYIBS+PXPzFGty+R0
 XJrF+TlECJ5gphfLGJJYkOSGZq1UBXXz9em/pAEtSKcRhD2tL+SjmZ6pP
 ZPqTugfqhEQS2a7EYfbsmWzXe1uX54s/4SS07uxCvB2+rL9dFsbJgHLNy
 YTGPP6x4BiI5f0V2nS4YKKeWGItd2v8ShcrphN4XAYFYgO0MWZWOnyr2x
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NdGDX9/d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [bug report] ixgbe: Fix passing 0 to ERR_PTR
 in ixgbe_run_xdp()
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

On 1/10/25 07:34, Dan Carpenter wrote:
> Hello Yue Haibing,
> 

Dan, Thank you for the report.

@Piotr, could you please fix it?

> Commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
> ixgbe_run_xdp()") from Jan 6, 2025 (linux-next), leads to the
> following Smatch static checker warning:
> 
> 	drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2108 ixgbe_put_rx_buffer()
> 	warn: possible NULL dereference of 'skb'
> 
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>      2099 static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
>      2100                                 struct ixgbe_rx_buffer *rx_buffer,
>      2101                                 struct sk_buff *skb,
>      2102                                 int rx_buffer_pgcnt)
>      2103 {
>      2104         if (ixgbe_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
>      2105                 /* hand second half of page back to the ring */
>      2106                 ixgbe_reuse_rx_page(rx_ring, rx_buffer);
>      2107         } else {
> --> 2108                 if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {
>                                       ^^^
> This can't be an error pointer and probably it should be a NULL check.
> I'm not sure if your patch introduced this issue or just exposed it.
> 
>      2109                         /* the page has been released from the ring */
>      2110                         IXGBE_CB(skb)->page_released = true;
>      2111                 } else {
>      2112                         /* we are not reusing the buffer so unmap it */
>      2113                         dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
>      2114                                              ixgbe_rx_pg_size(rx_ring),
>      2115                                              DMA_FROM_DEVICE,
>      2116                                              IXGBE_RX_DMA_ATTR);
>      2117                 }
>      2118                 __page_frag_cache_drain(rx_buffer->page,
>      2119                                         rx_buffer->pagecnt_bias);
>      2120         }
>      2121
>      2122         /* clear contents of rx_buffer */
>      2123         rx_buffer->page = NULL;
>      2124         rx_buffer->skb = NULL;
>      2125 }
> 
> regards,
> dan carpenter

