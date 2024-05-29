Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DE58D3221
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 10:48:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10CA881D16;
	Wed, 29 May 2024 08:48:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tqGhjUI50Zs8; Wed, 29 May 2024 08:48:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 199E481CD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716972508;
	bh=EGnVMaroI/Q8of1H09hmrzUjane9s8kOd48k+uDrjsQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tp5bLecooE1oCzgJYQAwWIsF5vTU54QZBfAjru3cG6VS70BVGEBiGQAAAG9/WN3Ys
	 IKAce4yiTL2hcdBNhvQXjhkWJOw53QU0X0KvE7hniIKZSVMSdPPPOAw0tGHQwZnUKq
	 dWho5gsZVcYES3XS//qgiYK/JW7B3rfa98RrxdCn7yhjN56xkr1Os4jHZ1xVntr7CL
	 Zg8EOO1FSgGUQ5miNSbZ08mWtfgagHPqjVv4t9Qdcsd5HH1yWt9aQhXgyf71ELzAO5
	 jQsASmsvNNV3xvDiFycDHjWTduiLWgV66y96Ceg+E7s6exyaOxAnQWYHBIAlWjihnp
	 yEpdOwKBloIhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 199E481CD0;
	Wed, 29 May 2024 08:48:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D13261D330C
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 08:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC8536076A
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 08:48:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AMwrVDJOHgIW for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 08:48:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DCDEC60756
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCDEC60756
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DCDEC60756
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 08:48:24 +0000 (UTC)
X-CSE-ConnectionGUID: 0G30zgADQhetYZuM+3f0lQ==
X-CSE-MsgGUID: qezcPSULTVGGC1VS9mBazg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24776231"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="24776231"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 01:48:23 -0700
X-CSE-ConnectionGUID: VGYU1veLQjGCv+GfLS0l0Q==
X-CSE-MsgGUID: yty+TTz2R8WKZCAH3uenjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="40361597"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 01:48:23 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 01:48:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 01:48:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 01:48:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kkCSJdgDiqbtUgdfcvDOALb5AFsBebaSICCrwPxYonJD0ZIwxwGh5sfHhLDDHXlLLSGSQzXcifev27hE8+x0Vqr9YaCzpjRj3mktg4N0PzQDhp/N2krnrotTrZ2ijHtZNUrZU3twkDuDoaFvA8bic6KBZLAIIHybFYyj9L41WGBBYcEsY1o895WsfV4vfbBTOzNGkFoNO1gmBZXWIY2psXPR4keAdoQc2nS/oIdrrAJpGwoG9GsEQ3KJP451nDfDesafoQCOixzza+evX3smI8MFdS8UzHpPW3P11iHg/GM8fa/HhN4L4tgY9M7Nk5JiYjFtysDtqaBRoKpZ0D0yhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EGnVMaroI/Q8of1H09hmrzUjane9s8kOd48k+uDrjsQ=;
 b=UQ50dCgGD6k1dYAzMsVu04hvY0xAwPx319i7bnVHRtSIvhoVyXZvCt+1yhB9rgbyQFtaEAbDo3EeIwwLxIS4S7yd3Wb9idf6UpzkgzarX4tjP+kzUtqYTv2R8SuBQPT6oe3Ge8Co1CWVo4xBl74/BgHjgOD1qmiKlLJkeg/wKwLMZ1oloRljzMVqB2bgrn29koVnjlJC3HJdoQ3Ev5otIe/gQTWOQXAMJL97q4vr4pn9HjpdJRe5I8BZiIcLSE1gUd2Nd6nzV5Bfl7KwQG6XAYc2VjgsvJGvlwoNNCgf6K9dVlKyiKtozeCiHQQOLp+NPhhoYwSkL6gIOG1E/9Anqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by BL1PR11MB6052.namprd11.prod.outlook.com (2603:10b6:208:394::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Wed, 29 May
 2024 08:48:20 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7633.018; Wed, 29 May 2024
 08:48:20 +0000
Message-ID: <627e3bcc-b4c1-454e-98ef-7589753a8fb7@intel.com>
Date: Wed, 29 May 2024 10:48:15 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, <intel-wired-lan@osuosl.org>
References: <20240528110132.483447-1-wojciech.drewek@intel.com>
 <20240528121658.0bb99e8e@kernel.org>
 <c30ed6d0-bdf1-4f59-a8af-209d0050b7b5@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <c30ed6d0-bdf1-4f59-a8af-209d0050b7b5@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0013.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::15) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|BL1PR11MB6052:EE_
X-MS-Office365-Filtering-Correlation-Id: 78c97bde-1554-43a1-0538-08dc7fbc1723
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QkUzV1UxbWFHQzZaNWJkRTlGRjNvdHRhUUVPcTZQZmYyNUZyQUR6OUtHekFq?=
 =?utf-8?B?Z1pFcnBLWW9YdnNIditwNk54bGFUSFp5Q1JUb1NiZUxDb1R4Y3NpS2J1RXkz?=
 =?utf-8?B?Mzkya3paeE5UcWduR2ZvaThUblNtcnc0QVdKRFBhSFB6NU5jeElTbk1IbmI0?=
 =?utf-8?B?TktCcmFmT1lGLzZSQWZNcXo0NW4rZkZPU05vdjZJSUUyYXc3QlZLS2s0MGY5?=
 =?utf-8?B?LzJyUUxMY1J5eUw1Z0RuQVFIVVBYUUNOdklyYlVWTDdtQ01HZ0Uxb1JWYmpL?=
 =?utf-8?B?THorRzdHNE5JM2hDcEZpOU5Md2g5NElLY1d4OStOR2l2NFpJR2FHNUtsQURz?=
 =?utf-8?B?eHU2OUlKR1NIWEhVak1rSUxNZ1dOSHZOQWVGQ0lKcDIrSENEaWlsc05lK3Bp?=
 =?utf-8?B?ekoybHJCWmEvU0p6ODlxUnNOenExVDV3cTB5dGhmYnBjZFJBZnB2RlpQL0ky?=
 =?utf-8?B?L0hoWUt1NldCSFhDa2RMNTI3TnF0TGMyblM3WTQvakNmZC9pcU12dmlrR01H?=
 =?utf-8?B?aW5sbCt4dzlYZU1ZMThJelRudDZBNjFxNUNwcGlDa2I4QzZSK0FyY2VQSnBr?=
 =?utf-8?B?WDZZR0Y4SHY5UExZb1NkcEpreStuWjlZSUJYbnF2Slp3S2Y1bFljQ2VRTXd1?=
 =?utf-8?B?b3k3bVQyekExSkFNZUxNZEIxNWxseWN1VGxtbmhQSStZdUJyWFlKMXEwV29r?=
 =?utf-8?B?VVdlYWFURUZld0xRSVR0SVFzSWVJVHZIUDdxc0o4VlZjWHo3NkFpUEVYWHVj?=
 =?utf-8?B?b1FFenFwczQyb1p4ZGM1Ly9RNFlpdFBpRSt4MlduLys5bm1iSkFoYU83UVN1?=
 =?utf-8?B?d0ZmWVR6SWhFMXJvSWNhYkhON1FNRGVzOVQ5Y3pCSU9KUlpvNHpMTTc5OTJF?=
 =?utf-8?B?MEZsTUkyVlBvdFFQNlI1dFdXMnVvRXJzR3lWVVVEN244Y3VEWGxPREkzcEFp?=
 =?utf-8?B?R2lOeFF6L2JkckUxek14bnJ4SytZZW1aVEZxTThaWkhneGhlUzUrR2RPM2Zw?=
 =?utf-8?B?QmxTT2VMdXVKaW42SStvcVYwbGpvalNKWWtlYTdyVnB0dXBaRE1tR2w4c0dq?=
 =?utf-8?B?a2c5VVpLZ0JXNVdaOE9ieHN6YzN2RzB6MURlTitFb0JjV01MaVJtdGsyNGVr?=
 =?utf-8?B?ekFoenErNFJHSDhNZVptaUVlRU9HazVHUTNZMUdCYTNyd20zNzNKcWhVcjI2?=
 =?utf-8?B?NzR5eWVRb3JpcEl5VU5ES3pObUdHTXk0QmdnS0dCditTeXc0ZFlsNnJJUmRF?=
 =?utf-8?B?WmN0elBYeE80aElyZmFxZEs0RGNpWmtvSy9iZkphMXdFaU9kVlY2dzNyWFV2?=
 =?utf-8?B?dGx0amZVajJyMVpzelJJWjlsbGYyM1BOZGduRnJPZ2NjVVVldG1DTnRGMFFM?=
 =?utf-8?B?OXVGdHpxSWFPK0VJZ29vS2pSVG52bHVKMzAzRStzY2VMcEhOUDRHZTE1M1FR?=
 =?utf-8?B?OUV2eCtYMlBiTEVFQmtXLzBWbWpiNXJwWHoxNkVIeUs0bGd5S0hYQWE2SFVi?=
 =?utf-8?B?SzZmQzhVUGhpdzhFREZ1TmFFdjFUdzFKOFBTcDNtOTdJcGhrUnN4bEV4Rzcv?=
 =?utf-8?B?L012Q1RPR0sycFBNakxwaUI5czA3Mm53R0hGM1pOSm90ZmxaWG43K2JySExJ?=
 =?utf-8?B?OGlXenV1eGhUeUl1RkVWNDRLTXJOV21MUTIvMGJZYzlQbFpGN1FVZ3loeVlN?=
 =?utf-8?B?ZkhuSGxldzBFMis4ejhZSm9IVHZDVGlSZlYweVZaaUxxMTRneWlsQ2V3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW02TGcyTUx4RGFURkRIWUd1QUZMcTZlYW5vNTh3eHhRdzZUV3NwTmIwbHZx?=
 =?utf-8?B?VDdGSE5XWFNGVnhHeDN6NUZGckkxNGxqOUVuQmdnSlZpVUE2RkhleUtob3Y0?=
 =?utf-8?B?d2d0NEo0Q2hSWmVZZStla2pEWHEwa0t6ZTN6cVNNYURYYml5V041L1dsNHVa?=
 =?utf-8?B?Snh5eW5OYVFLWWh4VnV0QmlXREI1NnNNcis2dG4rL3F1YjhKbkY5YkIwR0Rv?=
 =?utf-8?B?QUFGd2VsU3pmQVE2WWtGWWo5R0NUbG9UOUkzTjBtN3RSb01PZVZOWmtWSHdn?=
 =?utf-8?B?R1prUDg3QjdKTE9UWENHVE1iaFB1cFBDa2hJZDdSbGdxQVA2bnpWblZXY3JO?=
 =?utf-8?B?TDhQajRmM2hDZDBobGdYVWFJanhZQXlmWFZUVmx0K0VZZHZOMElTblVKSWVN?=
 =?utf-8?B?NEc3TzhsQWV2VjlJdEtTRWYxRGJnQ2FJYmF6emdKbkRxWUw1a09kVFg2czhU?=
 =?utf-8?B?SDk4TXpZYXgwdTg1L2ttUW1SamdicHlzUG9FTEY2emZ1TEhsZFVOSDJnNThJ?=
 =?utf-8?B?NDl0Y2RxcFFqUnV1UmdQVGFYM3h4dVNCZDhNRG94OXZBa2Ryc083bkRWMUVx?=
 =?utf-8?B?b0NqNWpNa1krYmt5eStocWh5OHVCOEJObTcvazkzdmtOYUgydzFDbzdPK1hq?=
 =?utf-8?B?M2hHZkw2bEFrWXNVazNIODY3THI5VndCZW41eVVCOU9lV3VHWGY4ZWh4UFo2?=
 =?utf-8?B?Z2xTZ2FibkE4NENHbTN0VDlrU055bnJkcW1Jc29DWW94RmtYYkFPYzN1Q3NG?=
 =?utf-8?B?ejJlTm1rbWhZYW1nSUVPdXBWV1JBSkcvZXdKeGpYMG1FbDcrblhSMWFQM29w?=
 =?utf-8?B?c0trejFQTUowYkVsclNSSXE5ckNTckIwRXlkMGFRcWEvVGQwRmhtNWxYRGFw?=
 =?utf-8?B?ZUZDQjFmRWgxWGI4bXNINUtHdi9FM3lKNzF0QmY1RXdjQkppcU1rUjJ1K0NH?=
 =?utf-8?B?RS9PVkRVUERTKzVFRlJHU21ZWWJURk45RkdyVTFvc0F4OWNBVGhMUUNpRkY4?=
 =?utf-8?B?bDh3azFCU3UreWExdHBxT3BXZEs0NmIwNGRtSXBHOVE2L1NQOGFNcWhoZ1E2?=
 =?utf-8?B?N2lqcWdqdW92akdJWFBiZVBLaWphbU1QMnFZQ0djVk5hRTBYS1VrUER6N3l0?=
 =?utf-8?B?b2ZRMnZhSEJlZTNURTdWRlBaaDFtWURCeVZxb1VuQXVvUlpFbDROeUhnL0VC?=
 =?utf-8?B?ZWhSakgwL0h5TUtpSVN3dWRUTlhUczNNTTFhR2R2WmQ3OExpNFFvVVhkcko3?=
 =?utf-8?B?UkNmSDVjbDRhN1NqQlBaQ2RWTUp4TTFMVGNQQStLTHRhc0FNUzdDQ3pteDU5?=
 =?utf-8?B?ai9qd3Y2SEpkY0xybzNvOXR4S09IZ1JYb2c4QVJ1K3ZrZzdVS1BZZi9nOElY?=
 =?utf-8?B?cm92SlJISnF2bFc1S2pxbkFPRnVKcDlqWmJXUHpiMDRyNXNyemlqUzk5U1Vx?=
 =?utf-8?B?R2tTZDhMRmlSNDd4Y09lL3FEeW9UY3p0ZkQ1dWlzdVJUUkI4TXFQR2pDYm1a?=
 =?utf-8?B?dEUyZU1aYUhhcXZlbldNTUNraFRUbisrVHJMM21QMzlKWXEyU1ZwT0tNV0py?=
 =?utf-8?B?S1FUZ3ppWXFqSW5tcnpvZld6VktWUUg4QWFOT1hIQkIyU2ZITHpMbU1rT2tN?=
 =?utf-8?B?WHBZNjVIdnlTYUc5bENGREl2QkRkRDcxKzZROUpvdWw3T1pyS0pFbE1qZEJx?=
 =?utf-8?B?SUlKUDhodCtsMzgwWlhQQ0VUTDFVemt5d1JRNncwL09DMFpxYVNSUE00QktJ?=
 =?utf-8?B?Ync4ckZYNU9ZTktjTDJRMjRSK3VQbHIyRG9hVjc0RFY1aFp3SE1nWXJjekRu?=
 =?utf-8?B?OWRPalMyMjlHOVFrS2xlUWZUenNhOE4yL2VQRk9zaEk5eDNxZnorYkR2TW93?=
 =?utf-8?B?ZnVydndYdFhtNFlGN3JZK3VUVWlDZzdNRCtwZENvV2lSS2JsZm83OEp2UEJy?=
 =?utf-8?B?RTBNZUVMNTBWejlFL0hNVjFZbDloSStzaVZGazZhTFB2N0l0WjRZUWxESkNR?=
 =?utf-8?B?SkxyUk5lb0pBL0paUFk1Tk0wT0FjZ01QeHU3K1NBTFdKRUhXUk02cDdEcHdO?=
 =?utf-8?B?SjlzWDNFRG9OQnMxQWRSUUNJVTQyeU5mQ202emJuNlAxcG54RGpOODllSFFy?=
 =?utf-8?B?Qjdvb0IybVNvTXNOemZZTDR2andMVXJ3Smgxa0NJWEwwUFBUN1J5THoyZ1BO?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78c97bde-1554-43a1-0538-08dc7fbc1723
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 08:48:20.0813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eXrDvFCfJKPOTc3p6JDmb8zp/TIyjM0xKVJgFrRgTL+Uy3rSGI5w0oIddBJ/YkliJcG3B5LeFzPnCE218HnP5i5Nt9C1X4jn1uCGioPRWfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6052
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716972504; x=1748508504;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7+Biblki+WabO743sQmRUttTjl1oCQrIbDaB/wIsLyY=;
 b=kRw1l9U0k9ueejACc+4omQ396wm/t5b9qG5+cn3Gm0mfiajc7tAXMXYx
 r/Rx7u88VxVGjERIkHFgwe2tHRkYrovqBE/+eQSJWxQWgQI5HjRCSwauj
 Mcqa7uhpHEVxEmwPZNpL5vdqOKZShhH0izzkTQvarxd+rl8DJdMnFV3Jt
 nXXevTLTw/bC7ukVGaRPGbiSlV7xWSYhIMTPEEsDJSKHit8WGU7P3E6Sy
 9aaYu7L8OaWeE5uNWkUWQTFuSEnuV14oaZIn0fhJcakN5gb9kmu2BoM9y
 4jaORpLPtDV2v8SqXY9E5xE5rtF9j7LkMmd8a5Cqc+MrsoRRDIelN7uj0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kRw1l9U0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add support for
 devlink loopback param.
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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



On 29.05.2024 02:02, Jacob Keller wrote:
> 
> 
> On 5/28/2024 12:16 PM, Jakub Kicinski wrote:
>> On Tue, 28 May 2024 13:01:32 +0200 Wojciech Drewek wrote:
>>> Subject: [PATCH iwl-net v2] ice: Add support for devlink loopback param.
>>
>> iwl-next, presumably
>>
>> Param makes sense, although the name keeps giving me pause.
>> I expect "loopback" will control either port loopback or something 
>> like hairpin. Would "local-forwarding" not be a better name?
>> Not a big deal, I guess.
>>
>>> +        ``enabled`` - loopback traffic is not allowed on port
>>> +
>>> +        ``disabled`` - loopback traffic is allowed on this port
>>
>> The meaning seems inverted?
> 
> Yea this doesn't seem like a bug fix, but implementing a new feature :)

Yea, copy paste mistakes :)

> 
> I like local-forwarding too, but its not a huge deal overall. It should
> definitely be fixed to match intuition with respect to what enabled and
> disabled mean.

I like it too, I'll change it "local-forwarding"

> 
> Thanks,
> Jake
