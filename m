Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8039BD8C3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 23:33:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D4F5608AC;
	Tue,  5 Nov 2024 22:33:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x1ELOX2ykITE; Tue,  5 Nov 2024 22:33:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 684C360881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730846029;
	bh=qE/YDRexSQi5oPoQo4ACXDjKvBakUUeiZFokA26/TIQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z1fuKi0iiWuSvvVIUQiwz9ndGk8wm4TEEmixNBxsZR7jvDpYHzy51PdoE79bsUcKl
	 XQx3kLhwOwoEzt9/+z8mgKUh+5uCX7ukd1+R4jlivdy6UQIMzdvZfKNJAx+efkOY7l
	 y4ZyfJBxNuDvKn1ZZB89c8WAbIITqtZLZGSzJq/L2PaIu9nPhjFIpiJYj+6CGXYLqp
	 3l5J5TcAzmW+GRUW/Yg02CnkCGl/qhv7qyWgQtfCiqXb+puYox4X6i2FaWDvaMFwgG
	 B49DXiSVhLYK+EwABYKfbYKA13TFk89fHuynYIsW8DRi4Ig3bJo2PhGM+5zY0xjwez
	 S0rihffcsVLFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 684C360881;
	Tue,  5 Nov 2024 22:33:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D1808B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B15CC605AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:33:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5cVLeEHXepDo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 22:33:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 459CB6059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 459CB6059E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 459CB6059E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:33:44 +0000 (UTC)
X-CSE-ConnectionGUID: y2TEJXAcSgynmnzMgvPs5Q==
X-CSE-MsgGUID: N/YBbOstQ4+2N14yM8BctA==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30842276"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30842276"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 14:33:44 -0800
X-CSE-ConnectionGUID: TKyzOkpcS1aCmVP3QuvHQg==
X-CSE-MsgGUID: I8cKqSLCRNGZc2L8gmEsdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="84285960"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 14:33:14 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 14:33:13 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 14:33:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 14:33:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rE61+hPfb9r4RYt6+hL37/i/yr8BgytAZgOAamsnryjdsnjJEMCh4Z2rfman2u1Crkf7gVImbHEWcZdBbhRz1IqAzoNXyEEk4WWVApe5B+LUz+hPbwAeOCaQ0+J/9SPYKX4UgmO0vr/5xKPIp3AJpiHLolYZd7469clP42xOE3a6YtRH0/eqqC8pd5s0wsZbZ9YmhTG5ULGQmoxTWLB5A/FYJFPT/0GN+Gui9YzbaJ5SyuRSw5P5itDaBz1Mst8uQZ4s94ndyPUo/MqXDejDfo6tden67DdcjKcLoABMof3mV5kU1+LDG4XYlecVB6wiu+Tg6FNcYUvQQSmNhCL6Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qE/YDRexSQi5oPoQo4ACXDjKvBakUUeiZFokA26/TIQ=;
 b=YANwYkf6/qRdwegyh68KxZqEIbutMBu/xHqNhQWqxbsl90iWq5oT5AhKUFaRAYFUD8DRvmPy1iNUoTk2oh3893SPKlNt9ZdwvWYUAjyaJwwijxQ3RQ23Gk29es8zt4ttNoImrqbVVVrUH3cqBDdfks010v/MnfiyBx8h64Tm3UtzB4wEDtiUW297tVWgb1R0oVnh0zfKgme9m5nf4HgMoMcgfWQm/06mPIxnTnS+4GKPK5DGosIgKpZcKN2OdEva7KXKX8/Ycii0SF5SQXnJB08RWNpyM/RHBLG+KvfXYgHzLDXxQjrZ3lL/pn17+8s3Kb/3Xh3uKfSh2qYCCMvzzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7123.namprd11.prod.outlook.com (2603:10b6:510:20e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Tue, 5 Nov
 2024 22:33:09 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8137.018; Tue, 5 Nov 2024
 22:33:09 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Yifei Liu <yifei.l.liu@oracle.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe: downgrade logging
 of unsupported VF API version to debug
Thread-Index: AQHbLLKoinwXAA1YqkWJcy4z3b1417KjjoOAgAW8yNA=
Date: Tue, 5 Nov 2024 22:33:09 +0000
Message-ID: <CO1PR11MB50893161E038CCE637718DFBD6522@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
 <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
 <4458eca8-f0e8-485f-9b7d-d5d17105d090@molgen.mpg.de>
In-Reply-To: <4458eca8-f0e8-485f-9b7d-d5d17105d090@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH7PR11MB7123:EE_
x-ms-office365-filtering-correlation-id: ac2228d1-8a8a-48eb-a6ac-08dcfde9d399
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YlBMWmQvVUVOM3NLRFhWRzhVNlA3UEJuSnBLMlRteEZ2WU1zZnVyUlU1UFgz?=
 =?utf-8?B?R3g2MHF1SnI3dGlKbUx3dDYxRklqcy9HV3pRZzhtcHJxMEtJczBHd3lmRTll?=
 =?utf-8?B?dDFUb3FhcXU0ellpNWhtSnQyNkcxSE95ZHVrYnBlR0ZNbU5Zb2p2OGNxenJH?=
 =?utf-8?B?Ly92amxjUUdtb3VUVEZIV3FPbG5oWjBiSFVwMkR4b0FJTlByelY1ZFB0dXg3?=
 =?utf-8?B?amY2bTNZWE0wbkoySmNwaTZRZk5meEsrVFJYTnFQalJjTW5YNllwWWFkeWhl?=
 =?utf-8?B?OTRjNllZZm1STlBpSzZzWVNMbzNQaUl1M3ovdUpqZm5CandCdWpGdERHekxJ?=
 =?utf-8?B?TmpyZC9ManlyT2kwWWs5VmxTdW5Ed0FVUDA1WXRMZDlEUzMvenVCSkJUSGVs?=
 =?utf-8?B?RTVSY2xFU2hFOWdYSlYzeGFtQ2piNUROckRZWWQvejMyUHlhQVdOcnA1SjNH?=
 =?utf-8?B?Y05wZ1RsODZYVHVQc0FXQ1pzRDI4QjUwOHhoKzJuZHRFNjIxVW9rTHdORDVK?=
 =?utf-8?B?NE5LaUE3MzhSMWtuOFBGTisxVEMwNkRoRldCY3N6Q1cvWjJLZkhRTVNqUHdR?=
 =?utf-8?B?TE9hdDl2a2lWSDVxM052U1ppQU5hZ0pYUUc5NFZNSk85Zm53Z2dqajZoOWg3?=
 =?utf-8?B?TEUxZ1ExczN1SHBQblRQOU4rZGV0QzVyQ05PRk43N2ZaL3hVV3FWN0twQmtv?=
 =?utf-8?B?NzhBWllDRmxPVHIzVVMyOGxuZnZIamJ0b2pzRW9TWmpidFNHaGk4NkpoY3F0?=
 =?utf-8?B?d0JWVjIxSi91YjZHU2JZZnM5Ym5IMUhlMTBPM0FzdlI5TURwMk9NcVJXYWsy?=
 =?utf-8?B?M1FXeEt0T0dEZFB3Ly80dzhiL0c0Y3BadDhqQTJkeWhmUDZac2U0S1ppSlNs?=
 =?utf-8?B?clNZcnBCTXB6YW1YamczQTY5NE8wdmtPR0x2RGRZR1Y0QlRvSzdzSTh0aGdE?=
 =?utf-8?B?YUIwYTZad3E4TGVpM1lNN2lOUURQbkVudWp2S3B0elhQOW5Ud3VCWDRYaFlP?=
 =?utf-8?B?SVpmMGZicUYzVWRJQ2oxQlZGM09TQjhUTnBTNVhta2JlVnduZWIzWDhIYzdo?=
 =?utf-8?B?ZjlXdXprY2tLK3NTVUFaOVI3elZoa2g5TEZ2d3ExeVdyZHg4Z3NsQ2lUd0FC?=
 =?utf-8?B?aU9QVnY0eXliMVRYUER5akY3QjJhZmppd0Fodm5oTzZzbHh6TlZVVHRxcGU4?=
 =?utf-8?B?ei9YRUZLVWgzdUdpWXFZYjRDRlBnQjhBU05iZGs1Zyt6bWdXWjJEZTgvUWJz?=
 =?utf-8?B?Q2VrR1VqdTZsWGhxTDBGSUhtcEVEaHV2c0FUSmFQUnppVS9ReG9HclNEUEpF?=
 =?utf-8?B?YnBrUVRQRUtqYThKY0lKZjdZVmtHRElpVGp0cXJhd1dKN3ptVzN4cXMwNTh6?=
 =?utf-8?B?MmZtb1h4bVlDRjA4ZTJaNTZLSmN0enZpbWRoYnFjUHZEOTF5WGtWV3V1NmRL?=
 =?utf-8?B?akZ6TFhrZ0crTExLa3p5VUhUOUQ5YVkrc2tYYVY1TzNSUXEvZE5HWVUydG5U?=
 =?utf-8?B?cVFSaTVFUXkyajQwSE5yZVJXdHBlcmJWQXFEMzRNTnoyRVViYkNiajhheTA3?=
 =?utf-8?B?ck53WUFhRlpzSDVJbHJKNDllNzFIUGZjcElidHM0MXEvbUIvV1NYZXVCTjlL?=
 =?utf-8?B?VkRMem8rdFBxOUMybjg0RVpaaW9NNHNuUWNhSXZpMWFwTHl4d3FXdy9XVXMy?=
 =?utf-8?B?M0h4elFYOXNad0xLc1F2QnYvODBoRFBzbXpMV3JUZWxyMUgwODVRTlRrbkE0?=
 =?utf-8?B?cVBHZHA0REdrMEtBaFRBVm00cVpid0ZDeW5YTW9JQk5vS0RUb3NqQ2tZMlBQ?=
 =?utf-8?Q?MTuCHRzHGv4HIP9bJLfrlf2b3ouYZLArb+QVA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1FSWnFwZUNJb1dGNktsMjVkZTRFMXFWUUVTMDBBOE1pa0pRUHM3cno3anV4?=
 =?utf-8?B?ZFlONXgvR3hZNnk4WGdJR1RreGhGR01UaXNLU1VlQmRWSFJiaFpkL0dPVXkz?=
 =?utf-8?B?NXl6MUhpeUdjbk1uTGc3NWlFcHMydEtORE9HY1dYMEZQWS96a3VnUWJQVWZu?=
 =?utf-8?B?R1BOZVhCVXJiZHdBMUdmV0Z6b3A3MFg5SjNmdFYxRlVDMUNQbHhHWDdMVWJR?=
 =?utf-8?B?akhEQVRHTS9oRktDdlN5emRmSW9tVE9JUTRyU29VZ0ZsY2EwbjlraytkRjRt?=
 =?utf-8?B?Q1p6VUxIVTI3R3RvbDR0Vyt2SGxKdmlrd1hQeXlnZHAwcXlsWGw5M0dGRUFN?=
 =?utf-8?B?bFY5dDh2WFlHL1gzdE1LeVJINmx3LzJ5SUZyN1RIK2tzSlJUd1hTb2ZIMXBN?=
 =?utf-8?B?Z1FoNUxaMWE5SFZXVDZwU3ErUVpZYUs0OXZicTk5T09NaFdXbnNuTk81MjJE?=
 =?utf-8?B?dkViV0loRUEvSFVVVnRNenVOV1gwd0QwanIwZm1GTTdub21tU012cnhGNTha?=
 =?utf-8?B?bmhNdm1RRGtmN3VBbFNxcHl5MEgva1l2NC9UdjBiNFhMUG5xdlo4elFGYUE1?=
 =?utf-8?B?bGoxVEhYK20yOW9HczVkdHVGcXZxdDY2N2JCWmRFWWRwRmgyVFRvTTEvc1J1?=
 =?utf-8?B?YWNGUHI3dFN4elc1UEExQ3krM1I1b1BqWkFudWFRNFJpNzRsMlBMaTllcnVW?=
 =?utf-8?B?WGx4QjN2K2tEMytxcFBHRndzUVpHeDZ6SVNLcEtmVEdjaUJEQS94SmlGT3l2?=
 =?utf-8?B?MlZSOTBTNWJPWjJ5NGQ3WTdvSVdrQ3FEMEpWK3dFWDdMd0Y0NlAveWJEbjEw?=
 =?utf-8?B?Qm1FbnpKOGgxc3M4eVZiRXpBbGdsaVR2aVRxQjZBamRKelVzc2JsTjU3TGs2?=
 =?utf-8?B?cmdWMEhybkdKQk5MQ3prYkVDSUwxa2RlME51bkNOaU1nL2lrTzQrV3J6RUh4?=
 =?utf-8?B?QmhLM25SU0RQVHlUZytwQmluZ1ZhMnp1NWlMaDF4RHpvbGV0Ym5rbTdjMUZj?=
 =?utf-8?B?M0QrOEtSTVd1ZVdTeHZYQnp2ZGxCbmFIbHlYeG83RHhkL1pmRFd0VU9Dd09r?=
 =?utf-8?B?ZUcyejYxUWd5SGhpV0xJdmNtdWRTL0NIMjZVRHJ5OGJpWDBqWS9kcjIrU3VY?=
 =?utf-8?B?TDhJRm5RSk1mK1NPdytwR2tNL3FMTXMwZ0U2aDk0d2s2L2tUaEM0UUJRZ1RO?=
 =?utf-8?B?UlJWNFZxTVZYWVFmWW5oREVkdENlYXJnU0tLYUI5WjdrdTBVQ0UxaUtYdUd2?=
 =?utf-8?B?Ly9zZVN5UGxJaUU1bkRGVWZLTUp6aDdEQWkxWTcrRzdjNVJIM2JHckNMVGJY?=
 =?utf-8?B?cEZSMG5nSzhVVDJHVm5qYndjVDBuWEo2VkxaMFpneFdHdFZQTXBhMnpOY1Y4?=
 =?utf-8?B?QTNkMTVLN3FPVDVlNXNyVHBVeU15T3krckFndTBtZ2J1QnJVMlNiejByS0Jk?=
 =?utf-8?B?UlZ1M0tZUnJ3aFlDOW9HaUtqNlFQTHNkOTJEb2w3VkhxT0xWOUtTZ212WGdI?=
 =?utf-8?B?VFYyQ3d6dHYzWSs4T1djbjVJdlROajl5TndLTjMxYWVLUmJtMXh3Z0wvSDRo?=
 =?utf-8?B?WDBmZGZtT3Z1RkVhdUR1di9vblZNWnliN3loSU9sbEVjZEhjZHlUdUFKMzFa?=
 =?utf-8?B?ZUlKa1B3NnNvNEMzOU1CVml2Q3BkSU55Rmd5dE9xQWZRem5wK2JmU1dhZk95?=
 =?utf-8?B?K3lwd0IvdWEzSW1PSGpHek1hYXZyR2tlRDZ4SXZOMVB3WVd4QkRibEgvN004?=
 =?utf-8?B?T0dHbEpiZ3lEbzF1NFc4RG9mNGJDWWloN2p4SklSbEQ4OUd2cWY3UGx1a0lH?=
 =?utf-8?B?Nm1kU0JOTXZzWlpabVdIZVZQYjU0QlJCWUt3R3pCSTdxMnFiNllZYzVzUGUz?=
 =?utf-8?B?cFVtY0ZuN21XUUhIMW1YYmdPS1h3ZUlwa245TE43VDA3WlZub3VuNzVPUmMv?=
 =?utf-8?B?d2RPbTRhM1MxSUJHYm54a2trT3pnZnVNSlU4M3BvUVVPcTBPakVwM0xvZzJN?=
 =?utf-8?B?MnQ0OUtVMHRpNlAzUm93VlBKcnA3eTFKVWJVTzR6UXM4clNpVTZMdlpDQXE2?=
 =?utf-8?B?UXJXNGNRK3loMVZXcExTTmR5NENjc1VOR2w4TFJWclhEaXN2NW9mR2VaWVBH?=
 =?utf-8?Q?LhoGqJodsNWGhyaNp2nv3pYmY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac2228d1-8a8a-48eb-a6ac-08dcfde9d399
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 22:33:09.8946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WjXpZzvT95b5di1Fji9r66V3a1XmhlRoKE8QyOgJfLmq7a6+x7KFIf+CLejU0FHw4VmkXLniw3zYxyTrxdL4agpI2TSyS8wr7e3a1OM5j4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730846026; x=1762382026;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qE/YDRexSQi5oPoQo4ACXDjKvBakUUeiZFokA26/TIQ=;
 b=nGAoEa5HIxGBly16HvP5ef34twuwZKSyES5rMSx9/lYSbpsF7r8WxjYE
 6UR64Bdd1+pkGSx496EuCF3ssURaJeqW8wN4TF6iUJJkYDvKsEiNd5y9S
 inH2Lqh+wmfLFiblHOZnjCnm+xttevfMQf4H7OSStpoKHO6Trw4FU1HUW
 Od/pPSW2ZTUGCa4yr9thD9nTHJTeStnRZ8o23Iebiye4kSDaSzctQzYWS
 JJZZ9v83q2CVnGs9oo1+3DmyqxpPL+DVSE+6AFTVY+c/yO+Zzj7wdkakr
 C/oFitVsU/UE8JGUL4K6f306eRKxwcZYT2ByJI4I4d8J7hgTn3ooyYViv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nGAoEa5H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe: downgrade logging
 of unsupported VF API version to debug
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogRnJpZGF5LCBOb3ZlbWJlciAxLCAyMDI0IDEx
OjU0IFBNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBZaWZlaSBMaXUgPHlpZmVp
LmwubGl1QG9yYWNsZS5jb20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3Lmtp
dHN6ZWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENI
IGl3bC1uZXQgMi8yXSBpeGdiZTogZG93bmdyYWRlIGxvZ2dpbmcgb2YNCj4gdW5zdXBwb3J0ZWQg
VkYgQVBJIHZlcnNpb24gdG8gZGVidWcNCj4gDQo+IERlYXIgSmFjb2IsDQo+IA0KPiANCj4gVGhh
bmsgeW91IGZvciB0aGUgcGF0Y2guDQo+IA0KPiBBbSAwMi4xMS4yNCB1bSAwMDowNSBzY2hyaWVi
IEphY29iIEtlbGxlcjoNCj4gPiBUaGUgaXhnYmUgUEYgZHJpdmVyIGxvZ3MgYW4gaW5mbyBtZXNz
YWdlIHdoZW4gYSBWRiBhdHRlbXB0cyB0byBuZWdvdGlhdGUgYW4NCj4gPiBBUEkgdmVyc2lvbiB3
aGljaCBpdCBkb2VzIG5vdCBzdXBwb3J0Og0KPiA+DQo+ID4gICAgVkYgMCByZXF1ZXN0ZWQgaW52
YWxpZCBhcGkgdmVyc2lvbiA2DQo+ID4NCj4gPiBUaGUgaXhnYmV2ZiBkcml2ZXIgYXR0ZW1wdHMg
dG8gbG9hZCB3aXRoIG1haWxib3ggQVBJIHYxLjUsIHdoaWNoIGlzDQo+ID4gcmVxdWlyZWQgZm9y
IGJlc3QgY29tcGF0aWJpbGl0eSB3aXRoIG90aGVyIGhvc3RzIHN1Y2ggYXMgdGhlIEVTWCBWTVdh
cmUgUEYuDQo+ID4NCj4gPiBUaGUgTGludXggUEYgb25seSBzdXBwb3J0cyBBUEkgdjEuNCwgYW5k
IGRvZXMgbm90IGN1cnJlbnRseSBoYXZlIHN1cHBvcnQNCj4gPiBmb3IgdGhlIHYxLjUgQVBJLg0K
PiA+DQo+ID4gVGhlIGxvZ2dlZCBtZXNzYWdlIGNhbiBjb25mdXNlIHVzZXJzLCBhcyB0aGUgdjEu
NSBBUEkgaXMgdmFsaWQsIGJ1dCBqdXN0DQo+ID4gaGFwcGVucyB0byBub3QgY3VycmVudGx5IGJl
IHN1cHBvcnRlZCBieSB0aGUgTGludXggUEYuDQo+ID4NCj4gPiBEb3duZ3JhZGUgdGhlIGluZm8g
bWVzc2FnZSB0byBhIGRlYnVnIG1lc3NhZ2UsIGFuZCBmaXggdGhlIGxhbmd1YWdlIHRvDQo+ID4g
dXNlICd1bnN1cHBvcnRlZCcgaW5zdGVhZCBvZiAnaW52YWxpZCcgdG8gaW1wcm92ZSBtZXNzYWdl
IGNsYXJpdHkuDQo+ID4NCj4gPiBMb25nIHRlcm0sIHdlIHNob3VsZCBpbnZlc3RpZ2F0ZSB3aGV0
aGVyIHRoZSBpbXByb3ZlbWVudHMgaW4gdGhlIHYxLjUgQVBJDQo+ID4gbWFrZSBzZW5zZSBmb3Ig
dGhlIExpbnV4IFBGLCBhbmQgaWYgc28gaW1wbGVtZW50IHRoZW0gcHJvcGVybHkuIFRoaXMgbWF5
DQo+ID4gcmVxdWlyZSB5ZXQgYW5vdGhlciBBUEkgdmVyc2lvbiB0byByZXNvbHZlIGlzc3VlcyB3
aXRoIG5lZ290aWF0aW5nIElQU0VDDQo+ID4gb2ZmbG9hZCBzdXBwb3J0Lg0KPiANCj4gSXTigJlk
IGJlIGdyZWF0IGlmIHlvdSBkZXNjcmliZWQgdGhlIGV4YWN0IHRlc3Qgc2V0dXAgZm9yIGhvdyB0
byByZXByb2R1Y2UgaXQuDQo+IA0KDQpJZiB5b3UgbG9hZCB0aGUgYnVpbHRpbiBpeGdiZXZmIGFu
ZCBpeGdiZSBkcml2ZXJzLCB5b3UnbGwgc2VlIHRoaXMgbWVzc2FnZS4NCg0KPiA+IFJlcG9ydGVk
LWJ5OiBZaWZlaSBMaXUgPHlpZmVpLmwubGl1QG9yYWNsZS5jb20+DQo+IA0KPiBEbyB5b3UgaGF2
ZSBhbiBMaW5rOiBmb3IgdGhpcyByZXBvcnQ/DQo+IA0KDQpJIGRvIG5vdCwgaXQgd2FzIHJlcG9y
dGVkIHRvIG1lIHByaXZhdGVseSBvdmVyIGVtYWlsLg0KDQo+ID4gU2lnbmVkLW9mZi1ieTogSmFj
b2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFBy
emVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4g
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5oIHwgMiAr
Kw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfc3Jpb3YuYyAg
fCAyICstDQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4
Z2JlL2l4Z2JlX2NvbW1vbi5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfY29tbW9uLmgNCj4gPiBpbmRleCA2NDkzYWJmMTg5ZGUuLjY2MzkwNjlhZDUyOCAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21t
b24uaA0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2Nv
bW1vbi5oDQo+ID4gQEAgLTE5NCw2ICsxOTQsOCBAQCB1MzIgaXhnYmVfcmVhZF9yZWcoc3RydWN0
IGl4Z2JlX2h3ICpodywgdTMyIHJlZyk7DQo+ID4gICAJZGV2X2VycigmYWRhcHRlci0+cGRldi0+
ZGV2LCBmb3JtYXQsICMjIGFyZykNCj4gPiAgICNkZWZpbmUgZV9kZXZfbm90aWNlKGZvcm1hdCwg
YXJnLi4uKSBcDQo+ID4gICAJZGV2X25vdGljZSgmYWRhcHRlci0+cGRldi0+ZGV2LCBmb3JtYXQs
ICMjIGFyZykNCj4gPiArI2RlZmluZSBlX2RiZyhtc2dsdmwsIGZvcm1hdCwgYXJnLi4uKSBcDQo+
ID4gKwluZXRpZl9kYmcoYWRhcHRlciwgbXNnbHZsLCBhZGFwdGVyLT5uZXRkZXYsIGZvcm1hdCwg
IyMgYXJnKQ0KPiA+ICAgI2RlZmluZSBlX2luZm8obXNnbHZsLCBmb3JtYXQsIGFyZy4uLikgXA0K
PiA+ICAgCW5ldGlmX2luZm8oYWRhcHRlciwgbXNnbHZsLCBhZGFwdGVyLT5uZXRkZXYsIGZvcm1h
dCwgIyMgYXJnKQ0KPiA+ICAgI2RlZmluZSBlX2Vycihtc2dsdmwsIGZvcm1hdCwgYXJnLi4uKSBc
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X3NyaW92LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlv
di5jDQo+ID4gaW5kZXggZTcxNzE1ZjVkYTIyLi4yMDQxNWMxMjM4ZWYgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfc3Jpb3YuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3NyaW92LmMNCj4gPiBA
QCAtMTA0Nyw3ICsxMDQ3LDcgQEAgc3RhdGljIGludCBpeGdiZV9uZWdvdGlhdGVfdmZfYXBpKHN0
cnVjdCBpeGdiZV9hZGFwdGVyDQo+ICphZGFwdGVyLA0KPiA+ICAgCQlicmVhazsNCj4gPiAgIAl9
DQo+ID4NCj4gPiAtCWVfaW5mbyhkcnYsICJWRiAlZCByZXF1ZXN0ZWQgaW52YWxpZCBhcGkgdmVy
c2lvbiAldVxuIiwgdmYsIGFwaSk7DQo+ID4gKwllX2RiZyhkcnYsICJWRiAlZCByZXF1ZXN0ZWQg
dW5zdXBwb3J0ZWQgYXBpIHZlcnNpb24gJXVcbiIsIHZmLCBhcGkpOw0KPiANCj4gSXMgdGhlcmUg
YSB3YXkgdG8gdHJhbnNsYXRlIGBhcGlgIHRvIHRoZSBBUEkgdmVyc2lvbiBzY2hlbWUgdXNlZCBp
biB0aGUNCj4gY29tbWl0IG1lc3NhZ2U/IFNvLCAxLjUgaW5zdGVhZCBvZiA2PyBNYXliZSBhbHNv
IGFkZCwgdGhhdCBvbmx5IHRoZSB2MS40DQo+IEFQSSBpcyBzdXBwb3J0ZWQ/DQo+IA0KDQpJIHN1
cHBvc2UgSSBjb3VsZCBhZGQgYSBlbnVtIHRvIHN0cmluZyBjb252ZXJ0ZXIuIEkgZGlkbid0IHJl
YWxseSBmZWVsIHRoYXQgd2FzIHdvcnRod2hpbGUgaW4gYSBuZXQgZml4Lg0KDQpNeSBwcmltYXJ5
IGdvYWwgaGVyZSBpcyB0byBzdG9wIGNvbXBsYWluaW5nIGFib3V0IHYxLjUgQVBJIHNpbmNlIGl0
4oCZcyBhICJrbm93biIgYnV0IG5vdCBjb21wYXRpYmxlIHdpdGggdGhlIGN1cnJlbnQgaXhnYmUg
Y29kZS4gVXNlcnMgc2VlIHRoZSB3YXJuaW5nIGFuZCBnZXQgY29uZnVzZWQsIHNvIHRoZSBvbmx5
IGNoYW5nZSBJIGNhcmUgYWJvdXQgZm9yIG5ldCBpcyBjb252ZXJ0aW5nIHRvIGVfZGJnIHNvIHRo
YXQgaXQgc3RvcHMgc2hvd2luZyB1cCB3aXRob3V0IGV4cGxpY2l0IGRldmVsb3BlciBpbnRlcmFj
dGlvbi4gSXRzIG5vdCBoZWxwZnVsIHRvIG1vc3QgZW5kIHVzZXJzLg0KDQo+ID4NCj4gPiAgIAly
ZXR1cm4gLTE7DQo+ID4gICB9DQo+IA0KPiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4gUGF1bA0K
