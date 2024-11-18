Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 381289D18A7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 20:06:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D443D42EDB;
	Mon, 18 Nov 2024 19:06:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0vg-90c4RRpd; Mon, 18 Nov 2024 19:06:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA8BE42CAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731956770;
	bh=oIq5GTglFV0zl93ZCmNrxSGQH3BF4Mc/xyjDXJ/hDn0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fb63ng8zHT6AsJPXVnEZwKRIW+PsbJiu9I0XUft1PXbkNmY9Zr7sA2riPvJfnWe13
	 rjJlGS6TGjVpWF6sPbz3MmEIF0ttJGkyKpQCLSetyw2sL3doqSBeANLPJyGcbQATPD
	 aOD89dZYzfO/TQPh961XMNsRxJ5mWSQctb8fDcDJ8tzUBskY1dgb78MzD5Og/y8P0a
	 91WMVz7jj848rzPJbT9SBOHaiyqKcXs3624Ug0/Ao/ps6SchEOwr62pRQvIlQfhL15
	 JJA24H1t7JCzj90bsbinr8hiRJ3+UC/YCuuoQ5nRvUS5pwMb9k5LLl0xQxiD+s/0B3
	 NNrXsllkpVbfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA8BE42CAD;
	Mon, 18 Nov 2024 19:06:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B9BA7DB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 19:06:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1DC2400F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 19:06:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id umi4-Lxu-vVq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 19:06:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 832CA40B11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 832CA40B11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 832CA40B11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 19:06:04 +0000 (UTC)
X-CSE-ConnectionGUID: 1tppP1/XQ9y2L4kt7+6V3Q==
X-CSE-MsgGUID: g00pR5heQRaBMixn5lwJHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31855595"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31855595"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 11:06:04 -0800
X-CSE-ConnectionGUID: v8KHXheISZS3syDrrKZfPQ==
X-CSE-MsgGUID: eVQdrSwjTGqxJOsLg6RMuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="94394268"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 11:06:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 11:06:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 11:06:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 11:06:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fkYO+z9yXDUt74TLn9cv5OjE5YdtHCrQTN1d5oCY7xpfPVC6jhpln3r/NGfEofPGm0QU4Kqb6SqsJ+8tXEYTABRYL50SplRfkwA7YYr7jm2cSy2qjHjt8L6KU6LNrs8JLMdEAHwHg/buW0/n/0AB0FsnWnm+qqLKfsTGXg0f5CCskZPBo0oM99cyTlRrCVWNzXrrYMbckVf8/qzkM0Db3Cswuf1kO/vEY22NEi8YvIYKp0tTEguQcNo5Ay2eWBuZhHTjWSgBDP7WfeGbH/6kbvcZUlhQyxZMmkOsaL1Y+bjNXstFtGYL4fMuDNeP/Wpw/MzR2qqHOkBKAQp9+TLsqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oIq5GTglFV0zl93ZCmNrxSGQH3BF4Mc/xyjDXJ/hDn0=;
 b=suNkVDxqnbZRILs9uMUZXsehZ1Zxy1RcauTgGNlCcG5QIgE3BzBta6CLoUTHB1jeqwxuhq8x/yF+XSq/aK3V3LxmQKTGc0QKzHoU0zLeZiGcDrb1fn10W904xCrgAERolh+ycFA/s41MOAm3ee5D0nsr9SUKfPzDmgwbNgfckogGCENjCrtdYLA8IJQTMhVBFrBlsaWBeH1A6q6ObE3X//XsmYzsqzgZ77AjseSMy1cp7SastNkV8tBwxfQ25Uq1mjo30YQVEAbDu5DxSuMUDtrLlCZoS6cqeNnwrKYpsSoASlfr9hf5EdMOZVU+2bnw1yvXA6+75Ns3fr9aaYUWDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.23; Mon, 18 Nov 2024 19:05:59 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0%5]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 19:05:59 +0000
Message-ID: <adbf9696-f642-4e21-bab3-4910dbbfd549@intel.com>
Date: Mon, 18 Nov 2024 11:05:57 -0800
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>
References: <20241108223643.2614087-1-paul.greenwalt@intel.com>
 <20241108223643.2614087-2-paul.greenwalt@intel.com>
 <c004fd6b-1ce8-4da9-91d1-648338043c4f@molgen.mpg.de>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <c004fd6b-1ce8-4da9-91d1-648338043c4f@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR21CA0024.namprd21.prod.outlook.com
 (2603:10b6:a03:114::34) To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|DM4PR11MB6502:EE_
X-MS-Office365-Filtering-Correlation-Id: c0e55e3a-d3fd-4e04-e354-08dd0804097d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S254ZGtiaUFZYjRkdUl1TTNjejFtVmJJOUxaTk5nRm1NRFNoMFVEWXVDSDAy?=
 =?utf-8?B?SHlxbWhmcU9mWmRGeC9PWmYxK0RhVEY4VVBLdlhzeUw0dTZGNFJVWmFDaHRx?=
 =?utf-8?B?YzBaVnZKb1daNEIySjJsVEZRazRMVFJGbjUzSTQwTmFUcHZML2FhQ1hxUGdR?=
 =?utf-8?B?TGJmZ1FWbGlUUUUvV0xCOVd5NjlVamI3U3k3QVRHNW40eWJYTFdNdUxDT1dN?=
 =?utf-8?B?U0ZPcThqVDdlYnh5aDJBTTluRnZIWWtsZUFHaXJ5R3QxNzR0L2o3T2V0YWNY?=
 =?utf-8?B?NEkwamtSdGJaZDl4M2VyMWJoM3VCWU1MSFBCMlNPL0ZOQzhoUXJlajhWUlp2?=
 =?utf-8?B?WVpRNU44SWMzeEx0NUlSVEZsTDVTcVhZL1dVU2M0WTZtUmRmRGQwQWJXMHhW?=
 =?utf-8?B?cmk2aEF5ODc3QTIyTEdMcnhDeUpVdWVnRTNSaWk2cHRUdXZqclJTOWtIaDBH?=
 =?utf-8?B?aCtjS29kQkpQdFBWMjBwOHNveGpFVDFVRUMraEpURzQxd2w4UGxhcFhhNytz?=
 =?utf-8?B?THJUSnpMbE5kS2NTZVBRNkZsc0VEaXlncWJKWVNnaGszNFphWjl6emFzTHZQ?=
 =?utf-8?B?NXVURHpHZlZvN1h0dVRQY0pLTkxUcG5xYmZrbTlvYi95Y1hhNm5kMDdJVzNk?=
 =?utf-8?B?SGZhYnNHaFh5eUs0ZFdVa1B0SWQ3MXF3V1ZUZE9YaU5xVVhHYzBJM0o1cnRn?=
 =?utf-8?B?dmZVcUZScmxtUjdMWm9QTjJqZTRtODRqNnFHTFJTUldlU1dQRVN4d3FwYVVa?=
 =?utf-8?B?c0NuSWNMNlJ4NE95NFF2QW56YWNMMFVTcVoxNEZFV2lobm52VFcvUWtLSHB1?=
 =?utf-8?B?T2tQMlkvc21OMlFBeEl5R3lJZFFnQ2tQUCtXMWVWYXZVWDZYcDRXcUpBVjZl?=
 =?utf-8?B?RldYOVZPTmlrSXpCRUJQUHBpVWNvUHBmQ3JSNUd6UzVpOXdaWXI5bWhLd0Zx?=
 =?utf-8?B?REZFV1h0WFh4NmY1L3NnVEJpY1g3cnA5aUdxOVo1WUdnTkxGcHlvTG9pa2FO?=
 =?utf-8?B?U01LNC9XTDQ1UWx5YksyendTTmdmZzJTSTh5NlJ3QkJhSjN1bTQ2VnBZTUI0?=
 =?utf-8?B?U2RXYlhGZ0xPZkozeFdoaHQ4cUtXNVYwZmJJb2dYa2xzYk5CMS9oTEt5ejNr?=
 =?utf-8?B?emNaTmVJYU9NT1g3RDFpRGhiaWNzbHdRUzFoQTcwdjZ0cDdHcE9RazRBNUxl?=
 =?utf-8?B?S0RkSXR2MmdIRmNIY3c4T01pNWRMdUh5VlBEb0FMT2JDZnFLZDFNcCtLeWJO?=
 =?utf-8?B?UFhQVGtueVoxMXU2aDc5L1dzWFZ2bnd0QTFBcG5LQXl2RERXOEcyY2VYSENN?=
 =?utf-8?B?M1RzbCtXaGVVN1VHUHBJWVByeDN6a0Iyd0ZmV0xHS0xaWUk2K1dDb3FZNHNm?=
 =?utf-8?B?cVcwUEY2cWNabFBrMmRzWnNlZktnbjJQNUFXU3J4ZVVncEpYVWZTaFNTOUo3?=
 =?utf-8?B?RE5QSGZWRkxOSWVucnkwVWhZOHloc1BOUzkwemdnMVlWNDdFZW9RZkRaSUxi?=
 =?utf-8?B?TjZubkZaMHVjZVA3b1FDRHkrMkVXbStyTkNheDQ4MVhIcUFHMCtObURPQ2pK?=
 =?utf-8?B?RlZPV2dVS0JYek5NbU1xaDFqeDRRUkM0V3dQMnR3NEtiTHV6a3pJZGZBbmN3?=
 =?utf-8?B?NkVyUVFaSi9yYXFiR0JyL1R3OFhaUHdSR1FjSjdQYURzK0pqZHo4bWZhTjY1?=
 =?utf-8?B?SVZ2Q1YrMmVvZUNRU3ltQnVkM2FNdTMvTk0yMGxWQmlrSit6U2JjS1BzYUd2?=
 =?utf-8?Q?vVr7SXqhTt8j8N50qg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEdEeE1LLzRjQ0RMRjVFVTBycTF6NXdUbm9FZ0lDRzVVUkFUVHZzRXFBMkpw?=
 =?utf-8?B?ZkZNQVpsalNxSFNpTnhQdys4d3cvai9hN0V5NzZwQ0NILysxd2ViWjNPeW5V?=
 =?utf-8?B?eW9lZ3RGajVnVWtwZ0hnYlhkVGdaT2VpVDROS2xpajE0YTJFV2I4L0F3K2RX?=
 =?utf-8?B?aEFva3dhMk9mbzI4RHlRbzBwdXFtOW40VU9OVFl0ZnZrRzZxc1pQazlsVUJv?=
 =?utf-8?B?WGkwTU9heGVwUm9xeW84NzVhMmNHV1VNYkZDaFVNRHFVTE8vTFBuRWxtdXhw?=
 =?utf-8?B?VWltU1VrSGRldEJrZWtFMHUzVlc1MTRaa2hTU0k0cnh0REpNdy9jZE9rcDNK?=
 =?utf-8?B?MXF1dEtwV25aWXFqMERkcFJxTVJleDh1RXhEa1QwTWZuYWtRcXdaa2lMWlRJ?=
 =?utf-8?B?eTZycG9iSmtBOEVVdEl0ckRLU0pPTHFXUi9Ic1hjVVdleFppRGg1UEJUVVhy?=
 =?utf-8?B?YUVGMHpJVTNzQnE1M2w0SHZPNGJjRlJFb1F3UTZQTENObnl4TGY2alJnSWky?=
 =?utf-8?B?QzBoSTdPdHJoblJ2Qko2YVBqUnE2Y25VQU15NWU2eDNPZ1FQZGhVYk1tUGsy?=
 =?utf-8?B?VkhNVFMvYy90NDZ6QjFmOWJIdEd1WGRDdEtBZ0REMXpJWjNTNGlURmhyU3Nk?=
 =?utf-8?B?cWxrUTJXbEVPcmRCblZVRi8wbUdBNkM4NHIzSjh3OE13VlZaeThJWHdkeUhO?=
 =?utf-8?B?aDlRQ1c5NnI2TUo0eURObkdPSVdCVVdjRlI1dzQrLzEwMk0wNUJFS0gwTFl2?=
 =?utf-8?B?UUNLNHlOMGlsQ2RFM1dCTUxObjN4U3BpV3NJbDBINW8vRG5MZEYwM0szUGFR?=
 =?utf-8?B?MnJORnUwTHZDWmVCc1ZxYU9SWEllV1pyNnUxcHJtdk9STVJKQnRsTFRINnNn?=
 =?utf-8?B?b01ObGVoc0s0bjdRMCtFSHZiVlJRYmsvZjhhUERPRU90U0hxNTVxeEhtVjA3?=
 =?utf-8?B?dS9iY2d2ZzNNcVUvWndNMjR6UEhRQzJUU21mbjk1OXBUU1pxZjZnOVdqbThw?=
 =?utf-8?B?OVd2MitOMkFOTHZIdmZ4cjZSVHEyTjZtL3d3bWNkNUNyRFV6QXFjcDRFTFBZ?=
 =?utf-8?B?cWxvM1pjbUY1elFKdkh1UmtYR2xPZjdOYTRoN3A5NENoT0RjeWtOS09KRWJ5?=
 =?utf-8?B?cmEwNDZIZkkyRDRGc3JEK1BZdEYwMUU2U2dHL2FYSmJTNHBtaWRzN3piQjM1?=
 =?utf-8?B?MStSZkNCWnpJejdUdUdHQVdTSWFMMEZ6TGtBSmFneDVwcDFWMm9iWStBbTZC?=
 =?utf-8?B?RFlYc0F5SWpoNTRhc1g1R2dlcmlDUS81QlZUUXpFa3NRTnR5R0s2TjBjYXp3?=
 =?utf-8?B?YzFRclhaTzc2eU9hSDJncUhFRHNaNEZkbFMvQmtzSnRKeHRCU2lXeVo5VHlR?=
 =?utf-8?B?bHF2aDRVTkFWY3ArM2NtQWF0bys2NEFVVzMvZVhXc2FkWGxHOEJlUkgyWk9n?=
 =?utf-8?B?dDZsKzlMRm9laHBXMzRMWWI5TTlVSGNqcTNEOWZxY0twQkUyaTNuNmdwWTg0?=
 =?utf-8?B?dG1PVUdHL25DS0JwYURaTVBBbFdLUmhJd3lLM2xYNTlJMlROZ3E4dDBjYXNE?=
 =?utf-8?B?N0ExeUJWS0xwN20yMzN4b1MwcURkOUNmN2k2blR6N1B4MlU5cnBQMkIyZkpq?=
 =?utf-8?B?dlBiRkc2N283K2FpVzlWMkNRTzFLQWlzc3hKVHAxaW42eHdKb2dSMzYvOEhZ?=
 =?utf-8?B?YXZ4cThNNUhSVlNUNjJkTGl3MGVRbzRjckhwMGc1SXdIaXU4RHFGaW43U2dy?=
 =?utf-8?B?a3NGem51Mkw4MXZDZHVtNTB2dlNPeWJGVHpYcHJoYU0wVExnUUoxWlBqM2Mz?=
 =?utf-8?B?QUR4VHVHYWhCOTh3c3M1RFlSNGJKRWhKNndXUVBwWUdxWE5HNE9wcmNMa0lY?=
 =?utf-8?B?WWROYitCUmgzMnVLZ09nTTB2YSt2Mld3czNwVmlaMmVwRVQ4blpCbVFSYUI0?=
 =?utf-8?B?TENYZHRGc29tSG51U1l2emMxdkU0OU1ibHZFTUJuN1Q5Z2swbWpMeUpnd0x4?=
 =?utf-8?B?bmRUbXRyMXpCbjF0bFpNT1BjUjRzbTE2RFM5UE54WTZuaGRwcExNOHkya0Ri?=
 =?utf-8?B?YU1oZW5uSWlCbG9DblI3YkJTb3MybGprZk1kdzB2NldxMmRpUjhFZHE4SHlL?=
 =?utf-8?B?VXJiS01Mc2FKMms4MlZHYzBTZFFmZDZYejRYeWJFaXJTZy9WQzRTN1M2RWdi?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0e55e3a-d3fd-4e04-e354-08dd0804097d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 19:05:59.0470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uXCiXN+UVhHnF0XIGDUrunEQyRmT2S+UdwY42kUC7N7W4wuMym7yCXbhU3No6rPEsecUOsLv4gYEdpU9jb11ka0KRFduMQWkixFUjFVv8fw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731956766; x=1763492766;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XCDl5uIFLI+PqJ2dCzhPBrUKYimIozYF1MI8fSlxr4Q=;
 b=dG5S5txxNbb0aeVbIWcfRAyiTslBLNybrZrls2zJTqvAuQ1QndwbJCTV
 SYN3arfUpeITOdoT4EZFK7Kq2OmjZTePqpiv3ddEBoJZOkO+WOo7f+4gN
 5X+j3BH6TnenmnOp1efhtqsxDflRnamwKP/Hg0P3OwlOGFPJ2abjbYlBC
 m++MgTg4XanI+MWUYm3PHOSiv0kIHopn2DJde32pfY7jTXyEwH1yoe2bM
 XcvY6Mj4HjVSQciVLBSx0+WyqYrxyXGCe9D8HLpwJZodqdGapXES0FH8B
 nYPq68tXzuhYeLsBB7eA1c7TntskzSA2rltikrsmNGC+bfDs5uaJABr/L
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dG5S5txx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v1 1/3] ice: update ice
 DDP package to ice-1.3.41.0
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



On 11/9/2024 4:46 AM, Paul Menzel wrote:
> Dear Paul,
> 
> 
> Thank you for your patch.
> 
> 
> Am 08.11.24 um 23:36 schrieb Paul Greenwalt:
>> Update ice DDP package file to the latest version: ice-1.3.41.0
>>
>> Highlight of changes since ice-1.3.36.0:
>>
>> - Add support for Intel E830 series driver using a dual segment package
>>    with one sgement for E810 and one for E830, which increases the
>> package
> 
> s*eg*ment
> 

Hi Paul,
This will be corrected.

>>    size.
>> - Add support for 192B max header length.
>>
>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> ---
>>   WHENCE                                        |   4 ++--
>>   .../{ice-1.3.36.0.pkg => ice-1.3.41.0.pkg}    | Bin 692776 ->
>> 1352580 bytes
> 
> Does this affect the boot time, now that the file size is twice as big?
> 

There is no impact to boot times with the larger sized package. The
reason is that the driver only loads the correct configuration segment
into memory (based on the device).

Thanks,
Paul

>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>   rename intel/ice/ddp/{ice-1.3.36.0.pkg => ice-1.3.41.0.pkg} (50%)
>>
>> diff --git a/WHENCE b/WHENCE
>> index ff5b05f4..24d85bcb 100644
>> --- a/WHENCE
>> +++ b/WHENCE
> 
> […]
> 
> 
> Kind regards,
> 
> Paul

