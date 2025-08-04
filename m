Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF556B19EC9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Aug 2025 11:29:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAB2F412FE;
	Mon,  4 Aug 2025 09:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vLxG1UBuYIsL; Mon,  4 Aug 2025 09:29:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4790540E61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754299786;
	bh=ktYOkgBP+qVk+BFu14IlmXnFMFfHJY1BohTw09WR1W8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rB1jwJJ1ZeiY7oFHkaIfIVhhZUOf4N2gkqkqMYPgUbWeDR45YXlKaEV0vVXZSUnQ8
	 iOlpXQLMCDPVqE9TP/ko/XzQcd6HHoiKXbyQ86JPzQHXA2VUhiygyl3HpTj1saTo8M
	 GEsHUXkU7NRRVrDBK/dA8BWsJFAJGGS3Yg2HbCLyT0NDyin8AswOgynawXilSMpIx0
	 V+P9Be4pNl6+1oMmn8tnd6MRpy+C+ZeN8ECHr8EI9n17vOXJoWx8ELq3lTihZKXr6d
	 xul8Z+gjXMWTOSlQAVe2x81zFRrWt1wiUhDgI75ZEU/NLTCn3eSwg/HF04P39yPUh7
	 3DxV31UstuAQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4790540E61;
	Mon,  4 Aug 2025 09:29:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E8A4233
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 09:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8F6880B81
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 09:29:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Za9m7ab7qjJ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Aug 2025 09:29:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 23BEF80AF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23BEF80AF0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23BEF80AF0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 09:29:43 +0000 (UTC)
X-CSE-ConnectionGUID: fAjBELHNRNyFgk4fvaIprA==
X-CSE-MsgGUID: Y2hNEx/PT5K+nplz+SUoGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="60371888"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="60371888"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 02:29:43 -0700
X-CSE-ConnectionGUID: KPilSJwuT2mkFlfYRRMSDQ==
X-CSE-MsgGUID: lLqTcuQxT8C4rLixKO3p6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164440799"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 02:29:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 02:29:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 02:29:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.58)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 4 Aug 2025 02:29:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BhPqOb9R3QZm2CEBPzcYmwHAbcajUikPlvkrsfdHEW2DE4kzw9CmThb3N8s8zZiNddLMX9s8h5o/cNVgM11r4crGaWqkdTyDtl3HHF1fhqg9LafdIkgUIcQmaX8HXH1VCdAwV4Gmej1jsAfOOb0a88+af/teasY7GX+ejSz0lBeZzBqPYRFpOgZc34WUD2OuHdjgyYYPZfWiYDT900fFImRD0vkOpa+yCLhxNRQY8SfIP+EMFPaD2WgvxyOE4BOjQeLzwujvQ74r3qmWscr3kpKdpLwh0UeK2opSnow/W3dJoWJjFRZ1yKi1q1VkXszlOEdFyHpm0DJ1o6CRDJ4dsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ktYOkgBP+qVk+BFu14IlmXnFMFfHJY1BohTw09WR1W8=;
 b=yQz1NgOi1exc3vil5baAuhW6C8zUspvNST9nNtS08idPMtclekDQemwxTEDCQbdKIYiqhBZ+pXvZfh7SNdRuPBI1BGpF8/+W+UPERF90Q/gDnDWg2Q3hA2MpDClfPxZ0qQgcjPAqDJb4w7JrAoMnFxZQx9TgHjLHK5Sn3mQbMNdvPNIaG4gPmYnioE+qPEnjJROAqwJdrnh0pdzS4HQyatpQ+Xz/yvZKRlUmObblbSFDQHO/phYG8c+rMpKw00loutTK72n9rokAzmSAEh8pg7lMxOpoTe4WBOjwnsRIRCdpMRJs++wY6r9d+XdL+9viaGTDKWOfYmOdD/R0Hvb9Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM3PR11MB8669.namprd11.prod.outlook.com (2603:10b6:0:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8989.20; Mon, 4 Aug 2025 09:29:41 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8989.017; Mon, 4 Aug 2025
 09:29:41 +0000
Message-ID: <cba05d39-7660-4b46-9e16-6e78a5bd68e9@intel.com>
Date: Mon, 4 Aug 2025 11:29:36 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Grzegorz Nitka
 <grzegorz.nitka@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>
CC: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, Sergey Temerkhanov
 <sergey.temerkhanov@intel.com>, <netdev@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0006.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::13) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM3PR11MB8669:EE_
X-MS-Office365-Filtering-Correlation-Id: a9a9531b-c39e-4993-5a4d-08ddd339705b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b0prdktTLzBtenp2UFdqN0FQWVRrMnlJVkc4MnZrSE1wNHgrc3AvaXptOWp0?=
 =?utf-8?B?cXRmZUxsbVJXZ2NBMDdzZUtUYVo2Y29iOEc3RzlpWGdFUVpkUUF5cUxabFdx?=
 =?utf-8?B?TU9HRjFtbWVQdjV5V0VyT3Fpc3Jpc3dIcEs0MGlCeExTTlZmdUF5WlFQWGcz?=
 =?utf-8?B?bGlWb1ppUHRuOHlYcTJKaDRMcGUyZGQ5QnJ5QWkvaFMxcGdicEpaTml0SHZD?=
 =?utf-8?B?c3lVS2xlU0ZCdUdRS28rQktOTUhhdmlvZ0c3MXNwLzh1WGtxcWdyOEJnVVQ0?=
 =?utf-8?B?U242bHlJTDd1ZjhwaUFxd3NMMHJ2S0lXU2pYNDAxKzJjby9FdHNFbVByNlBG?=
 =?utf-8?B?TTlveEhVVVRHTFFQdk5nMVV2d213ZlVMdmJ5Q29TNFFTMk9pd3cyZDdBRmgv?=
 =?utf-8?B?OWNkZ3dNWi9rVkdFVWNIbXJoSGNMZTVXT3Q1Q1cybmZxdXl5QzROV2NpbERF?=
 =?utf-8?B?c3p0dSs1aXlpQ2I5TWdtNXo5bzRzMWFIS21Gc0NDdnhQYzczbklLKzZkRjRh?=
 =?utf-8?B?aFc5QS9rTHhLZG5PT1BVeFRXY2dIVzYwQmI3Nmh3RXFVQ1BHelByOC9oNEJZ?=
 =?utf-8?B?NXZrZzh0SkFEL0kvUFpUR3Fsc2Ricm9RclVBQ1VQNEZSajQzalhqWng5QSt1?=
 =?utf-8?B?Y0tuQ1VqSzliMWN6ajNmNS9RMy9yYzZka3R0UTNZQ0Uyc0ZKd2VHSkdJVTND?=
 =?utf-8?B?SXQ2UGNQbEdvekRMTVhQRXkvcFlEU2lJY2lMREhoMGZoMWoxUVNRY2I4ellz?=
 =?utf-8?B?OEYxSUF2ZmlHdTF0cFM5SCtGNW9ZR0ZwbC9oaGgxc0krY2drcnROeGpRa01r?=
 =?utf-8?B?YXNJRHkzdW14dkZXZkEzTjd4T282S1VJcHNielkyTm5lQW82OHE4V2Z1WnpY?=
 =?utf-8?B?S3hiUDlUMjR6eldrRGo3anM3bDVUZ0c1eFV2bHhJQVEwaGwzaFNPOUU0ckpM?=
 =?utf-8?B?TXg2eVJwU1BMZVJEVytERUFhVFdtK01URjZIYWt2YnYzcDdJNmc0N21BQ2pN?=
 =?utf-8?B?aUJTNnkwMjAyMERuOE1PQmFlaFpNNDJhYXFBLzc4eWc5ZEdEOHVYaXJFVm5n?=
 =?utf-8?B?RGxjR2wvL09hNmVTYnZxM3U1M2U2TjBzUDY1RkZwK1ZSamt0NVdXbEFNK0xF?=
 =?utf-8?B?SlNUb3grY21uSnc0Sm9HVUNEbmg1NHErb2FRN0pYN3pQWGY4WkUzVjk4a3pk?=
 =?utf-8?B?Rndadm5yZTZ2TVV3bC9sVldzT0lrdmtOQWp6eERXdnJlY2J2SEl0Q2d1Y1dL?=
 =?utf-8?B?WENpbnZVazJSWSsxdkJUOFc0SVJSMEw0WE51bzdYV3puWG00R21mUi93aHYr?=
 =?utf-8?B?YnJUeUVjeVc4bFNmQTZncVZlNXUxNkEvSUFOdXdKWTZZR29NZ0NSRnNpeEtJ?=
 =?utf-8?B?SGx4dDFINDlzZnAwN3loYVNrZjFDSkFFc1JMbDA3ZUhRZkhKdlFmaFRqZjFy?=
 =?utf-8?B?K3VsZ2tUNHpDZDh5V3Q3RVJudDZKYzQ4MDZ3b0o5V3dnb3Y4aFBDQTNybDVC?=
 =?utf-8?B?emRPSlFyZ0RsamFXYVRMQVladTl1VHBTT2ZJWWdYc3hnV3ovOW1LTUtJM2RL?=
 =?utf-8?B?OXFEUkV2L2JBeGVxVGh5ZEZ3U1hqcWxMSVVnYkVYTndZUTdlV1JTZElVUW9u?=
 =?utf-8?B?TVRzelVFNWtkQXZ5dWFuL0pWdmg3TldQSWhTS0hjWU1ZNWNZUkpoNTNWY3gz?=
 =?utf-8?B?QmlXNDBRMjV6VXVFakVEVFV0eGlDeHppVHB0WGxMMytneXkrSTN6QXI4RGxt?=
 =?utf-8?B?dTRDSktvVnRwcnlNVXJxNm9KcDdoZlB5dWpocU9VZm9ZS092cFlDOVpzb1gv?=
 =?utf-8?B?MUxCYmNWeUpqbnJiYURCV1NTWFRscDlCNzBWQWNRUXNSb2k5RWRvQ2EwTjJT?=
 =?utf-8?B?TDVFRE9uZXBRTWtIeUg5MDBubGJNN1IxUEJXMXh6ZzJEN1I3amsrYUxFOTZT?=
 =?utf-8?Q?Rj/I8j3ulGc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0hRRWFha2RCck82U3JEYkFYdTMzdit3a3k3Nml0Y2JTTWhyZUZoRnRrVk40?=
 =?utf-8?B?TjZOeVllWTR2QXJ5anFweEdQWE1KdzF3N0ZXb2pBbC9JOW1vNktNUG5HbnVW?=
 =?utf-8?B?UkZYdEgyU3hLOHdPMllqT2NkM2tkVit1M3FpcTJCTHRBUnhzbFQwTUpqY2hY?=
 =?utf-8?B?MEhwQ1Y4d3Zxb21JOFFYOXZQd1R2YW5uRU1IT2dmZmZNUWY2b044aVpaVW9s?=
 =?utf-8?B?Vzdmaml4ZnFZNXdhSWVqbGU3ZGxpbjJtVzFWVDdaaWE3a1JPUjNldldSNCtj?=
 =?utf-8?B?YTYzc1pkQkhnc2V5R0VFQnRpQXhjNWFjY085cEpJU2ZIa0d6OExIa01GRHRq?=
 =?utf-8?B?aVpvcCtQaThLTXJZSjV6bCtRVW5jdWs5ajlGdmNJenRqRXJYa2RCQkZEdWJP?=
 =?utf-8?B?dC9VY3g2ZXJUYldZNFNNRU5xZTVuVCtFMlRJcTYxMUk5RzNpVFVvZDhwOEo4?=
 =?utf-8?B?bW9NcmY0cmhJZ2I1bkwxTE0wVmJta1dEY3dJdUVac1lqQS9PVDRkWTBKa1My?=
 =?utf-8?B?UHFvZThxSEhNVCtPT256T3FFd1N3alByUUY0RkY1bkRjd1V6SE5naVV5Z0FJ?=
 =?utf-8?B?SmlodUdNdlZIN2FEd0o4UnA5OW0xK2lvUUxwNC9EeERUY2hhMzVmaks5Vm52?=
 =?utf-8?B?S3BHVWd2M0RVeDlIZGNtb0ZsaXBjQ2QzZDJ5ZW9LZGlIUGp2RC9iaG5BUGFS?=
 =?utf-8?B?bkxBNWVPQ3VCWXJmS3htbUZwdEk2YlgzelRsdzRnSVhpdllGSEJQL2hnb2dQ?=
 =?utf-8?B?MXQrZ0lUb0YvcCtxTmFLNnkwQVhCTkpoZklIbEZKYkF0TjVGSWxnRTlrYy9Q?=
 =?utf-8?B?N2IrV1JTMHRrbDY4SHkwdWJVQWFvaTNQa3puanJZclM2WDZjNnRjRWN4NEU5?=
 =?utf-8?B?U1pybm1sZ2lIWlFpZ1BOZ2dhdmVKSEFWZ2FRQ05sTlhRb2xtN2daQm5HVGlh?=
 =?utf-8?B?OVlmSkhGK01DQTcxN0RjV05sNTFjRGtGZ0Jqd2JMZlJoSlZzWnowM1dtV095?=
 =?utf-8?B?RXdIZmZ2NEF3YS8rZ3RWL2x5SFVGdVoycXZ6YUNkc3ZCYkpacGVnZzFOci95?=
 =?utf-8?B?OTBRRTl4T3pscXdWMGxncjY2TmJsU1dMcU5HRnBCcnhYWUkvc3V3aU9mUUpD?=
 =?utf-8?B?RDJPNXl5MHZiVUdYY3BjQ3RxazltZllidkY2NVprK0lQZCtOT0xNaU9sWENv?=
 =?utf-8?B?azZQZ09sa2NiQ0o5Y3VvU2UzcmFBdmlWRWN0dGczN01wVmQvdmJteldWcTF5?=
 =?utf-8?B?RG1uemRrQkM4TlFuSU5Ja2VPbk5SWm5wZ2huVE5kQithL3dIa0I0OFoydDNw?=
 =?utf-8?B?ajA2UVdNSEhuM1pjZ25DaXN1VWNTcFUxVjdIMVVJaHM0aTRCa3NFei93Y3Nn?=
 =?utf-8?B?dXBCeHJlN1hjelR1K2poSVR4TW8xRERGTUdERUdHWGVRNWs5azRRVkYyQU1P?=
 =?utf-8?B?WHQvNUtVaGNtb1pxT3ZWU2lqL2RKdy95TnpJQ0dOV3h3dUMzbUlWZW9MZGlR?=
 =?utf-8?B?SlYyeC9Wdlpkekhud3FWVlkxSjN2MjA0Q2pWTmtyY2RlVGlCcmZmSHI1cGtQ?=
 =?utf-8?B?eUtSeE9sNlZpZHM2WlBmeUlsQU5ULzdOL2VZTGxiNWxDbmJJeEdGdkVkTzBG?=
 =?utf-8?B?WFA1cjBFVlIzRTFmaEtEdnJteGNZSkVnUERBQm1CMGxNa05RYXBEU1dSUEVK?=
 =?utf-8?B?bjI3U2ZRcnhZK0tieEhIM0IybXUxMG5ZeVh0a3FaQk10UlpnbHNqNGg4dnFE?=
 =?utf-8?B?VkQ4SzNIelp4T2FoZGlvanhDVFoweWVETUhoT0NFUVBncit3cDdHRFlnRVRG?=
 =?utf-8?B?OTVjTTYwa3pDRWJmbUo4VCsyQUhUT2gxNEVkM0pOS2JZRWg2Z3JzWkY4OTgx?=
 =?utf-8?B?eDIvUlQ0Rktyd2J1aXovR1Q2cHJML1pFenhGcGdHR0hldGFrQmZYZFE2ZmZp?=
 =?utf-8?B?M1oyYlJxVkdEUk9rY2s3TUh4RkdsOUpCL1IrV0srTnVtMEJOODBZcUlHc2xh?=
 =?utf-8?B?NUx1UWhNVnBZeXRTdHArVDgwN0ZXeE9Yc1RpSHgrUkRyZ21RU0FOUEhCY25w?=
 =?utf-8?B?SFdVc2duQ29TdEd3RTk1RUhZZHZ2bXZnRXpJQTI5RnhWNUR0RkZkWTVIOGYv?=
 =?utf-8?B?T1U4MVJ0akVubFJDdTQ5TE03VzMvYk9yRHhxcUpodnh5bi9zbTZ6NWh5akx3?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a9531b-c39e-4993-5a4d-08ddd339705b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 09:29:40.9389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zUzsIfD1Qz67ZjPz/Oy6N2vNvaYEO/bgTu0GnIrbUrBnrSZ22FFag5pWSRtuWTYwUbPuZ7z9Y8OqOejitGAGam0J6IOh/vNZnk9ZQuv4Z+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8669
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754299784; x=1785835784;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PiKr6ODUIshh5maj28mgm39z5AIuTDJP7XiAYKBS8uk=;
 b=FjWR89q4XmWgk2vhA364eNT4SFVlGf043PgWQTE8q4HuvXkRVZsJuv1Q
 WV+prPAw6o7HhjdoTj1Xofd1FEksrRl/MF3ikCJnIO465J83AaqMybWYk
 GgsU43GZ7liq5YM+PxrxZCYk4vOWp03m5cK/r6RvqP5+tkssDxys7ahBq
 ZWG5ozwvs+2f5IPW5SAIsCk+Q8/mPHQwUG8GYGFeiSxSs11/7Ta8iSzO7
 DBOxbJiXh/wotGnYuyXK2R1VHazBAyDzgGagaUKrdzoGhTk2BTdeQiY1x
 qDB1mH4G4VHGJqrGX6NX7OvZD4MTucYkd0NU0yvqAOh0gxQoszvfPxQyj
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FjWR89q4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: use fixed adapter index
 for E825C embedded devices
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

On 8/2/25 00:27, Jacob Keller wrote:
> The ice_adapter structure is used by the ice driver to connect multiple
> physical functions of a device in software. It was introduced by
> commit 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on
> the same NIC") and is primarily used for PTP support, as well as for
> handling certain cross-PF synchronization.
> 
> The original design of ice_adapter used PCI address information to
> determine which devices should be connected. This was extended to support
> E825C devices by commit fdb7f54700b1 ("ice: Initial support for E825C
> hardware in ice_adapter"), which used the device ID for E825C devices
> instead of the PCI address.
> 
> Later, commit 0093cb194a75 ("ice: use DSN instead of PCI BDF for
> ice_adapter index") replaced the use of Bus/Device/Function addressing with
> use of the device serial number.
> 
> E825C devices may appear in "Dual NAC" configuration which has multiple
> physical devices tied to the same clock source and which need to use the
> same ice_adapter. Unfortunately, each "NAC" has its own NVM which has its
> own unique Device Serial Number. Thus, use of the DSN for connecting
> ice_adapter does not work properly. It "worked" in the pre-production
> systems because the DSN was not initialized on the test NVMs and all the
> NACs had the same zero'd serial number.
> 
> Since we cannot rely on the DSN, lets fall back to the logic in the
> original E825C support which used the device ID. This is safe for E825C
> only because of the embedded nature of the device. It isn't a discreet
> adapter that can be plugged into an arbitrary system. All E825C devices on
> a given system are connected to the same clock source and need to be
> configured through the same PTP clock.
> 
> To make this separation clear, reserve bit 63 of the 64-bit index values as
> a "fixed index" indicator. Always clear this bit when using the device
> serial number as an index.
> 
> For E825C, use a fixed value defined as the 0x579C E825C backplane device
> ID bitwise ORed with the fixed index indicator. This is slightly different
> than the original logic of just using the device ID directly. Doing so
> prevents a potential issue with systems where only one of the NACs is
> connected with an external PHY over SGMII. In that case, one NAC would
> have the E825C_SGMII device ID, but the other would not.
> 
> Separate the determination of the full 64-bit index from the 32-bit
> reduction logic. Provide both ice_adapter_index() and a wrapping
> ice_adapter_xa_index() which handles reducing the index to a long on 32-bit
> systems. As before, cache the full index value in the adapter structure to
> warn about collisions.

thank you for the fix, I believe it is a very good solution with NVM
not open for change

It's nice that reserving one bit for special handling works also for
32bit case (despite being xored with lower part of DSN), :)

given BIT_ULL() fixed as you mentioned,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> 
> This fixes issues with E825C not initializing PTP on both NACs, due to
> failure to connect the appropriate devices to the same ice_adapter.
> 
> Fixes: 0093cb194a75 ("ice: use DSN instead of PCI BDF for ice_adapter index")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> It turns out that using the device serial number does not work for E825C
> boards. I spoke with the team involved in the NVM image generation, and its
> not feasible at this point to change the process for generating the NVMs
> for E825C. We're stuck with the case that E825C Dual-NAC boards will have
> independent DSN for each NAC.
> 
> As far as I can tell, the only suitable fallback is to rely on the embedded
> nature of the E825C device. We know that all current systems with E825C
> need to have their ice_adapter connected. There are no plans to build
> platforms with multiple E825C devices. The E825C variant is not a discreet
> board, so customers can't simply plug an extra in. Thus, this change
> reverts back to using the device ID for E825C systems, instead of the
> serial number.
