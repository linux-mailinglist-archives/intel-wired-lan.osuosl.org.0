Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A89AC0E32
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACB3183D25;
	Thu, 22 May 2025 14:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z-MtHmZFt8-Y; Thu, 22 May 2025 14:35:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FBBD83D20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747924512;
	bh=bKtMbn1wjQ29UIYbSIrHScGnkKAXozhjcyoPfFZY4Uc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i66vIfT2yQMZGYgqsWuWHVA59sRnQcKdH/HwFdvBJPWd2hXDjJNOcNrAM8qhAgiTD
	 Eb57HhbHwicrlObY5vG/WCdXY46djassofIG7mAHd2FiRAToqy/uwhca1Ag39vrMq2
	 rQdCn+bO1bbJIq4pxvp7m+OTzXBieBI8hB84KCY4ksw6QShcYV2KsH7gdJ1Uk1sS3B
	 pWvc4hJkSvkC5hkzby4FLiEWQX7YnleewZ7t8EfGfppX7d3Jbp4ICDeDdfSmP6kKpr
	 kYFP+fLoMmvEAe0Fnm2WVmu/aa1xJmILBg7mvWrmSvVBLKE5+ldXlV/7eaqttbeuRG
	 Wo5nP5D6uxONw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FBBD83D20;
	Thu, 22 May 2025 14:35:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ABA71221
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CE7281F9C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:35:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RCK6jryx-yw3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:35:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0820880EB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0820880EB2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0820880EB2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:35:09 +0000 (UTC)
X-CSE-ConnectionGUID: WAmGGh8oQ5+H2Skfff6xWw==
X-CSE-MsgGUID: s5pYcDl0SrWuI3ymAzBWHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49872224"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="49872224"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:35:09 -0700
X-CSE-ConnectionGUID: P+oMK2gDQz+41JyP5MNTfQ==
X-CSE-MsgGUID: Jj9TMbY9Ray5RpM6rFwmng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="140507319"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:35:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:35:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:35:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:35:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BVA2p8/8Icqlnqs9eBg3ItrRj4tIDz3LiTuz0QDFNUEpP9uNyinvbOZQl6Uf/ODKJtCbnfS4No0rtH5x4XjXHW3jRJJkpAa4CthtWCaW3P1zaPgy8Mxpi0gASWX5KvuhUE70U+EUiTzdC/j5HJS66CilBAyyv9AlA+fycBGoR3mpwSb/7zUI3X262f8mKVEuCcJuVfoL9mLwEEc+M17UvXMMX9KFHkNftFSxnMdCUAJPn36xRkZ6zJwMkpakTgfgHdAJehKodevAkEkBT24+/LYKlUMnZPu+E+siKInykkfctNuzKVHGIq3553IEVyHbuYYZScY8MryP4ECCc9r2IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bKtMbn1wjQ29UIYbSIrHScGnkKAXozhjcyoPfFZY4Uc=;
 b=BeRb7S3vmxYekmRLlBxc+HOxM7/lwK9YAWYvOQ485zDoAxHwUUvd8Qi99SLkj/0VbCEZB/xUAI+66YEOyGrKIxApqZbpRhvaSUn6kAKPEPyJ1LFaJJ/5SKOuekKHb7/mweATlNVPZ7xwesX+lMcY3aIeLDkMSdYevPwAGcgzJ7QDj35YbnGtXIOuK4y9RNQXeNGjUZPkihVgNnVjcaeIoMIyGitVsNchG2oG6UCaRgwrairLBLF3AINPr3rYel2WGKZUMh07RtjEFbjMFS/nNvjKeM78c0+H50T6+KYfE9o6Zj+yrDV7pTjW0HDA4c5DK7mZJji4BVk7Wn7xUHqt5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 14:34:53 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:34:53 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 12/15] ice: wait before enabling
 TSPLL
Thread-Index: AQHbuuwxedrlx9alXUSMBVSA5DjONrPe1yag
Date: Thu, 22 May 2025 14:34:53 +0000
Message-ID: <IA1PR11MB624182F9B21580D2595729C38B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-12-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-12-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA3PR11MB8021:EE_
x-ms-office365-filtering-correlation-id: bdce8dce-c37f-4b75-15e3-08dd993dd0c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aDZzcUx6aUhkTkhHcHk0Z1IzVEpMN2QveVZHSlZZbkNsTkpyTlMyZDhCRSt6?=
 =?utf-8?B?NWw2WmJ1UjdWU1hjWUFkVCszNUVqUDEzVmhVckVHQjh6Zjh6Y3hUNzF4OVRv?=
 =?utf-8?B?RTlRS0F6OSsydWFzZXFQdHlMNG94eUNDMk05R1ZpRGNNcmgvemZ2dGlxUXho?=
 =?utf-8?B?S1lVTURIQnNWYk1mRTJmZ2Q4SnZFRjIvZHo1akJWUFpKMEhsbXkrTm5jV2xM?=
 =?utf-8?B?UktHeGJxTThnaHAzakd2Q3dKK3RGSkhNR0NtZkYrQ1JMai9SR2c2NlNyTzJM?=
 =?utf-8?B?TkJidG5MK3NjcGY1Nkt3eTNLTmUvRVpYd3dmQ0hxRVVPdHl0d2JVbXNMTDRM?=
 =?utf-8?B?SDdPSzROa2VSWXVGeXc5VmhQbk96aDEyMzdWL1dVcTc4L2Y1MkowTGpZUWtR?=
 =?utf-8?B?cE5yb2Y2b2VMdFJxTGxQMS8rZm9tbTVydzVXSzRHaVE2Tk9lbWUvZm5ZaVA0?=
 =?utf-8?B?ajk4T2Z1ejlkZ3pHZklnMXlPREhOcTFtMTYwaVNDMktvcG00U2dpaFk5Rklj?=
 =?utf-8?B?enRNWDNUSi9nSWtjQU5acjZ3c1AzTko5UEtVUHN5S2ZxTDk3WXBGMXZ2b1cy?=
 =?utf-8?B?NEVObGJYd3ROakdxZmt2VGY3enByT1ZvVTBHLzNUYlFIMjNDTElxTU5rRUVN?=
 =?utf-8?B?L1hMOUpPeWhVY05qYTRybWxZc0JTVkRTQ1VJckF5R1pmVm12YmhKQ2FxV3Rv?=
 =?utf-8?B?TkVWTTZ6dkQrRWF5VFgxRW5rSUxyUWRzV2YyZUd6dEN4VzhyZzRlcE5tbzlv?=
 =?utf-8?B?bnBNV3ZjMStMSnkyVDRRaDM4Y2xVb1IraDI0MlVUb2RubDBQR0U3Q2FaVzBP?=
 =?utf-8?B?cyt1UG9iYzE0ekV6MWE3aE9hdlkwUnJSc0htZ2NoSXRuV0lhVUdBZjBxaU1P?=
 =?utf-8?B?U3YvYy85U1hMSUFsbDE0em0zTVhjSW9tWXhRczNxK0pVSVlOTXNzcFVTalN2?=
 =?utf-8?B?K0hVR3pnMmdsV0MvN1EyRDI4TjBWOXd3d3ZYTW9jSjZRN0ZzUDdOMzY3Y2Fx?=
 =?utf-8?B?MXJndlNQc2lPTGZranVhenFoQTRrOGg5YTVDMlJSMWsrdit0Nkh1Vk1NaktN?=
 =?utf-8?B?YVJYNkZMV0FPMWhDbE9qanNqVmJFWUF4UHU3b2tRS3RUTTlxWjlVbUNVbTFC?=
 =?utf-8?B?RFNoZjJDQm80UHdOTGFxRVZPWHMyejliNGNjMEpWVzNYQlRVSVBsMUFZLzho?=
 =?utf-8?B?aVUwenZ2VVgzVGNvWW1OTzRxN3RoTm5hK2NjNjcyVFZMWi9VSkRjaWF3SFZU?=
 =?utf-8?B?RFJMRlNZWGJKNmV0WWh4QXljZlBjeHhZYzZxSWl3Rm03QlpzME9MaGJCbkVX?=
 =?utf-8?B?RlpVckVxM1UreE9ZV3Jvdjd3ekhHaUZTbWYzRWV4TnU2cEJBdm1RZ1EwdENS?=
 =?utf-8?B?Si8rd0xMaWZFaFlOSkNFbEVHWGZ4YzU5UFUrN1FqKzZTSitaS0tJV0w0ZDBH?=
 =?utf-8?B?SThaNlkzeEtVUytWM1NLaElkMFVDY1RjVkZ0MEYzMWdyZ0FxNU9HMDJmdXp3?=
 =?utf-8?B?RDVHMTN0elBzc2ZnS01hLzdSS2RpcldpS3FLTFhQK2FWTEt4RVJrelkxbnVN?=
 =?utf-8?B?RHJqTlMvVmNaTFVnWnBGNTRXR2s3TElBOFFDNjVGQkhoWUR4T3JQTWthUk9V?=
 =?utf-8?B?aUdOcDlNbitoc2ppdGxRMU5VNU9HYThXL0ZtVFZCL3c4VU1YS2FXeXE0eHZR?=
 =?utf-8?B?cXRqOFJPSEIyNUxaYmRETVMyMWhJMDhBQWRtY1preUtzK2NHd1pzZHFQdUF0?=
 =?utf-8?B?c041NVNKZi95N204NW5UczRrc3ZDYVRlRHlsNWtTZmNIdWcrRmt2MkRYeHBF?=
 =?utf-8?B?LzJQaGVscWE3aFRTTXdqNnBBT2tQamxHQWR2MTF4TzRwOFVqTmpGTkgrUUZN?=
 =?utf-8?B?aTVLQ202TE5kM1Y1VHpqY1ZRM3VjK0xyUGVqczdpc2c0K3dJYlQxdS8xcmZj?=
 =?utf-8?B?TDVOQmtidGJJZjNWVHhROGUvczFQUjkwMWpXTUk0YmNXcndIZXNIbnNNYlJH?=
 =?utf-8?B?emFoaUN1NXVnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFI2NzZIbUQ2S08wYklacTdTN1Q1R25CaU00dDVBM1MxZWJBaGRocGhzKzJV?=
 =?utf-8?B?b3BTKzd1cWFTa28rRmYyQm1sN3NiOTc3N2tzQk4rVEVwaHFXSFlQZzVYN29V?=
 =?utf-8?B?cWZQb2ZGenVTRHVSL3Z4ei9qalpHSTR6OTNuS0I2TEFwdDVDWEhVSUtvVDRY?=
 =?utf-8?B?WmRINElPRW4rWnRJZ0Jlcnkybk93OTY2LzhTZEtZaW5GNVF0OUhzdzQ2Wnl0?=
 =?utf-8?B?bFF1Z2xLMDVLcm1FR2c1OXQ0RUlTNEFxQkt5WUlhZWsrV3QxdERSSUVsZkhP?=
 =?utf-8?B?TFhhV1JHdFBFVVgyVURiUjNTbUo1dDNzUlAzTnZ5c3RrYnl0YkdlSnBtSnM2?=
 =?utf-8?B?WTAxZjZZcVRJSTlkemNObGRWYW80QlAra2w0UEtKM3FWSEtOU3RuZk5PY0lP?=
 =?utf-8?B?QnlmLzVtczlyK0hxelhqUWs2YjBPU0hYNmoweEtZbWVSOW0zbW1HMWh5YzRD?=
 =?utf-8?B?NHJDRFhPMXhlSXByWlZXcmpIbjFVK21OczYyQVEyMXRzR3lHM2tMSitYMWZC?=
 =?utf-8?B?NzI0eVlvMS95Z0hqeTBHSi9HbGN2bkx3TmNwRUJBWGpHZzU3M3JiWnZyMzgz?=
 =?utf-8?B?L2U2TzZZQzV5ZWxDemp5c2l4d3dLM21CRW53amJ1R2UzbklaUTZNQ2NJVHg3?=
 =?utf-8?B?K1NLcHdYTVRLNFRmSm5hM3F4MlkyU3Q5ajl1eTVEbHpDQ1FRZFJZYURyWlpW?=
 =?utf-8?B?MWFBNzd0bG1TdlAycmd4RWF4QzNxazBPN21GcUFtUFhSTVNFaWpsOTVJT28z?=
 =?utf-8?B?bTcvYUR3a3dPaWFuMkNKZFZCV1poTHJnZjZuVk45T2ltTHAxb0tsMTVWZUhY?=
 =?utf-8?B?NWJPcURXeHAzQUNCNE5aUk54QXVuVmNoRnREZEllMjBhQXFkTGg0OHd2Z2No?=
 =?utf-8?B?b05wRDliQThWTElZVVk4V1VlNnkzYnQyVXFZdGhETWJXcE5iMmEvaHlhTzY5?=
 =?utf-8?B?bGthN01QU2VaanNXaS80eUEzaVcxM3hBUnNiRlNYUlU0eWc2dWFyNUxiVDd3?=
 =?utf-8?B?M1ZxN1E5Uk5oOEVmYnV6d21PRURKV2FOZDRvVmVhQkxvUDNJZU12YktSdG55?=
 =?utf-8?B?bVc5b2VjTUQxbE05M05nK1lMUWZUTUEzWThyOWhSVysrKzBjYzNKNlFMUGQ0?=
 =?utf-8?B?TlVwdmNvSHRTTUJMVGcxMFpZYWRJM3c3WUJaS000QWhscnpGdVVCeU5wN2lC?=
 =?utf-8?B?d1BCMzVmRHp2TWpadzZ2RzNPVTNkTXhOck15dnIvVUxPSW9MQko2a25mN29x?=
 =?utf-8?B?U1ZmbzUrMHZpSUJzKzBESW9kNEpvaXV2ZzJMVS93VmtoNXJIaFZDNnFETnVk?=
 =?utf-8?B?TGYySVJ1UVdiS0owS1NkeHdOSlBTQnBrZ0FER09iYWVuSVAyaXR2MjR5ZTVZ?=
 =?utf-8?B?ckwxdnpMaDNhNkxyeUNsL2lLYkZ3dlJsL2F0aEd1M2oxMkN0aXBxa0FKM0hU?=
 =?utf-8?B?eEdsUXZjSGNSMkJzNVRHMzJZb3Y3R05jY2pTV0tXUzFKbjhUVnhpb2pPS2dw?=
 =?utf-8?B?YlFCNFRWa1kvTVRjNnc5M2R4MUVyTFdGYVZ3Q0pMeDJLQ1V4ZnZzclNxeTVx?=
 =?utf-8?B?WjVlUnNZOVliT09BQnZiRmtBSFB5WTRLVTFvK2Q1d0gzcG1wOHRFVzhDcUdi?=
 =?utf-8?B?RTJVNG1ITmUvTHg5Q2ErZzFHMnN2MDhVZkVTRkNrZ2FTREhLSG9GeXV6Y2hv?=
 =?utf-8?B?M3ZYZE1HM1RWMkJVUHJhMzZGcm82VGJEeHRGZ2FkOWIwRFd5YnhFUFoyYXNm?=
 =?utf-8?B?UEZvNDZyTWp6OCtEQ005SFNEVDBrSWx3c25zRkxnbnNHUkNyRGY4c0I0cDZV?=
 =?utf-8?B?QWNrc09SMi9Ib3VwR1lTNE9aUnBkZ2MyUHJaL3RmWDRnOUVmaGJTdU01WVJT?=
 =?utf-8?B?ZVlFaWIxSHpQaFlsQnUwWkZVT2JVYm9MQmpUL05OWFBWWUh3aXpNcDhVbTY2?=
 =?utf-8?B?OHVMS1pMamsvY0h1ZWswN3JvT0E0aTVnZmxEczZNRkcwREMwUTV6eHhrSGhv?=
 =?utf-8?B?L3R4d05NQlJrTkVWempTMzZieHJpM1RMTStaK3lsRk5GZDM3d0c5cmxKWi9M?=
 =?utf-8?B?MmdjSlJUa0tYVHlidm8wdktCUTBGano0OGZkczhUQS9mZmkyRUtlY3JZZXlh?=
 =?utf-8?Q?qMaqs/GlIyb38Nh8L94M50ffb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdce8dce-c37f-4b75-15e3-08dd993dd0c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:34:53.1128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s3w1Gc0KfNiPNdnYiMsUzE3ztZY9yZBueSYMD1Mi/lwxkMSVsiCR4rpc2/KkFX8OBCJrDXEqV8RGIvYwTYxuAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8021
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747924510; x=1779460510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bKtMbn1wjQ29UIYbSIrHScGnkKAXozhjcyoPfFZY4Uc=;
 b=amXj8decTXIIoXlRknGu9aC9iIJmTYZIQvSIHVUcpB1qI/Rlr7J6ISLb
 VFJkKGSmtYMGsLYRvbXgvyGmR0L8z4P773pbLLDlsBhFCN9vpNPvWimsK
 sdbPG23BuIcu5z3ESfbW8eKtM0rl146odBlitSDHJVrSFbUPQe4sd7cTr
 SVqTRRJ9f2nQqIF2xiBByzL7HGHsRvgSWDgl3EFWFGYovFMLl0uJaQ1hw
 cJ2iColyppi2yI4BpjakCdEOwABLCoy6K+oz+H+LaBA/4AnxR8DoChCX0
 U2HxHs5th1P8VSiNUnysCAIMftiLwStGmM8tKJTztdgnPOMonjGSKdDo7
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=amXj8dec
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 12/15] ice: wait before enabling
 TSPLL
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDEyLzE1XSBpY2U6IHdhaXQgYmVmb3JlIGVuYWJsaW5nIFRTUExM
DQo+DQo+IEZyb206IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwuY29t
Pg0KPg0KPiBUbyBlbnN1cmUgcHJvcGVyIG9wZXJhdGlvbiwgd2FpdCBmb3IgMTAgdG8gMjAgbWlj
cm9zZWNvbmRzIGJlZm9yZSBlbmFibGluZyBUU1BMTC4NCj4NCj4gQWRqdXN0IHdhaXQgdGltZSBh
ZnRlciBlbmFibGluZyBUU1BMTCBmcm9tIDEtNSBtcyB0byAxLTIgbXMuDQo+DQo+IFRob3NlIHZh
bHVlcyBhcmUgZW1waXJpY2FsIGFuZCB0ZXN0ZWQgb24gbXVsdGlwbGUgSFcgY29uZmlndXJhdGlv
bnMuDQo+DQo+IFJldmlld2VkLWJ5OiBNaWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lA
aW50ZWwuY29tPg0KPiAtLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90
c3BsbC5jIHwgMTQgKysrKysrKysrKy0tLS0NCj4gMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pDQo+DQoNClRlc3RlZC1ieTogUmluaXRoYSBTIDxzeC5yaW5p
dGhhQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQo=
