Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE71CB4A3D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 04:43:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0543608B3;
	Thu, 11 Dec 2025 03:43:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sg9_J2KFVYRH; Thu, 11 Dec 2025 03:43:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0188A607F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765424583;
	bh=cVRWdXEbUv3OcYsFnARa/qmDu1h7yUYsWW5HQ5XvJmI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C2S40fA8VAs3XIbOXexozTP5g9zt1qbDECQeR5FWcTl2+y4mUArKvmz8FPbhD383D
	 Jgpvq1mdCUmG7z463vkQa/Nh5+f/gfGn4+8wnxepqLZlSAeS9deTOskXCUUg9kUZt+
	 EhwXfM0cr5BSSMxj6ZgkzkTlVRM1jiyq06zifMadAiAN5AhZZuc1D74e4+aujaEweg
	 YyH+lm9YTOvhlrJOrU6eVgkZ1x5C8koWy5QRXFFYMNAm+bvepxE6RFWceq1AkYEy0h
	 3EYtI9w9EELFXO9VNq5wJw5QNMeDvNhul8KKraAeEGhK9QM1/WdruR158wVDiWPPx5
	 ILPrmt53qP+XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0188A607F5;
	Thu, 11 Dec 2025 03:43:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E6F442C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 03:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E12F4400E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 03:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X1h2GAjAiArP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 03:43:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DBD9840073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBD9840073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBD9840073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 03:42:58 +0000 (UTC)
X-CSE-ConnectionGUID: 9nQ8InUMRS+OoHFQPGMUxQ==
X-CSE-MsgGUID: CQqLGmlkSE6zjnF3OFJvdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="78768645"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="78768645"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 19:42:58 -0800
X-CSE-ConnectionGUID: ILAnydHVTV65Kyc+zH8qDA==
X-CSE-MsgGUID: mlawkH3kTCGfd26LrUpflA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="227344813"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 19:42:57 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 19:42:57 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 19:42:57 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 19:42:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UdWYdqhEblrG0/pPmt3PJ3GoDpDQUxVcOPN+cWBtr7XLiBuVtvr9ZFTG2rwY9A/8WiaAvuDB20rFoHeYvT5wRh3VMb0mYvhDeYkdPggWWC+DmLB/79gschAruXWkUouFuMcRsYtpVPWMmk+sK6II/MnF9jQVPqJtGDyid/GrNZKmAt5xvZjR4fw9SFSHIHmKO20J6YpycK4L4/tK/KZTpx9XYIT6lSfGdEOYjTvKuv9NhMgPG7epr8T/aHXw/FqomH7EE3nHLiMK5010D6pxXCa/2GxrICJ5m2n9LOBiuYX/UC7TutobjaMEw/UWdYoG5wf0vq5UV4ObbmsZA4Vslw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cVRWdXEbUv3OcYsFnARa/qmDu1h7yUYsWW5HQ5XvJmI=;
 b=pE9h9jyvuJx2y20lHFiwf703aqXc8A3fQJIbLdYBhRFiKdyo8hKFCgcWgJYnjyudCPdPPVziKZboV2eoaUJpb9lFVGjxYuXpmaRF7c89l0Kpm7jOps1TSw9tG4iI8hsg3x6oPl43gViHf6vAL/d0zlqZya5Qlg6aIA9qSrFtgGTvu9lMwGlFeKsjuk6JEYFPhbQirRYJCGqtrE58aFa0DGz9l8D95xcQzCrClSXWwJU8biHj43vRar3e9tzrbw3enLy4fgRCQKL3WpTA7ga5lnWWsJJjFFd4KGjR8ylMbxmmZp7qd/1AZHB04m41rdA51NX1s6dthbH6jdRCXxllVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by CY8PR11MB7291.namprd11.prod.outlook.com (2603:10b6:930:9b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Thu, 11 Dec
 2025 03:42:54 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%6]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 03:42:54 +0000
Message-ID: <f9a69abd-dabc-440a-a3cd-c88b184f7e77@intel.com>
Date: Wed, 10 Dec 2025 19:42:53 -0800
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: <aleksander.lobakin@intel.com>, <sridhar.samudrala@intel.com>, "Singhai,
 Anjali" <anjali.singhai@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Madhu Chittim <madhu.chittim@intel.com>,
 "Josh Hay" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, <jayaprakash.shanmugam@intel.com>,
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, <netdev@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-10-larysa.zaremba@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20251117134912.18566-10-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0257.namprd04.prod.outlook.com
 (2603:10b6:303:88::22) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|CY8PR11MB7291:EE_
X-MS-Office365-Filtering-Correlation-Id: 263698ec-d38b-4d60-5ebe-08de38675de8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZytBSi95Y2NGelM1dzB5OGs1YVYrSHlJaGNlZTlXZXVvUVZ4cHFJZnBEakVq?=
 =?utf-8?B?L0VaS25tRHRDTG5NaGwxREVlQkVRK3hvMjdRVm8xRm0rNTRmYjNDaHNSNmx4?=
 =?utf-8?B?R0xFZXd1dit2VlR1a0ZURFFPMUVrVnpCUFlVZlB3ekVlQmFqUm05d25WRGxw?=
 =?utf-8?B?TzJQdDgzNWxIWElIbWdoVHhKTDlQNTU4VFFZTHlEUm5HakRXRkVxK1FsWmky?=
 =?utf-8?B?S2hHbndpZ2xXb2ZydGNaaSs5QXh2aGg4TU9VYzRsdk1kaG91Lzd6K0NIS2tp?=
 =?utf-8?B?dnkxNThTNktxSmdpOUVnb0lNcmxPQlBNeE8rc0dad1hQV0V6cjRUeU4xOE9S?=
 =?utf-8?B?VHF4NUlTNTVqRnZISEcvaUpnNHlzK2N5ME9KRkJLZ2JzS1BESGg0dzBRa290?=
 =?utf-8?B?ODZLZURLN3paYUFsSTNHMDlqNE56QU5qaVlIcllST25XazJWSnpHNmlEMEZH?=
 =?utf-8?B?MXFrVmNoeE5PdDFmN0tERmgzbmRWL2hHVU5DbVlKcW03VUxRSmFnMXlsSHZz?=
 =?utf-8?B?eStIaHdwUEMxaFhZSHo2NnJlajFtRzhnQ2d1bXA0OGhIeWpFYTRWODdqbHZs?=
 =?utf-8?B?MVAyZlAvQmhDb1I2YXp6cWFPOXg0KzFFQkpVVEJoTmNxY0tqTGJtQzVmNTFZ?=
 =?utf-8?B?TW9XZ3dYdnJSZWp5K3lxSmVHeE1JR28yVzlISHVuNXNxU3FGdnU4aklqOHJy?=
 =?utf-8?B?Tmd2bTBBZnVhN1J6citsYm44RVhVd3oxczIwWUJqUlJFdllOc01rUFkyY1Z2?=
 =?utf-8?B?b0Fxc1lHV2l4aXgxdWlIZFlGTEZXeGI2UCtrQlYrUGl3MjVWYldyVVVWRzZI?=
 =?utf-8?B?ajhLTHlVcVIwcnhjMm1mT0hrYzY3RUU1TDNpVHY3WHdldUQ3N3lHZWx1R0JF?=
 =?utf-8?B?b2Yyc1hFcHNGYWZXQXNzdy9XVndaaStUdVhBUHl6ZDRKTXFqRzRYaUI1NHl5?=
 =?utf-8?B?djdIaThadzVuT1Bac3NTQ2p1enZ4RDV2dDNoYmJrb0c1WXJlWDJoRGxtTTBM?=
 =?utf-8?B?di9YTkxFMmkxdkEwYldVd083WnJiRlF6a2Uxcm1HQ3p2OHQ4OUJ1YUpLVkpo?=
 =?utf-8?B?eEl0akJiWGM5TkJhZWJsc2w3NjdWRDhsZ2dJUU1qWXZ4Tk5QTWtrd2RKOXVz?=
 =?utf-8?B?RVQ3QzRoSlo1b2wydmVySUNkczBTd2o1cW9KUXRXMDltbStzaTZKWjkxSTlF?=
 =?utf-8?B?MG1mTEd4ZzJKd1BIVk45dmUrcVZxNEJBb3k4eG5NVUgxSFcxTWZqRWVZWG1R?=
 =?utf-8?B?R3MwWkd3OVNTQ0luL0RXT0Z2dnl5UDVUZ012K0ZrM1hobmlSYkJYa09IL1Bs?=
 =?utf-8?B?K1FXVFV4eVpWeUdUcCtSRjBlV0J0VTdiNDRCcU9YRU13VVo3QUIwMDNJcGxY?=
 =?utf-8?B?enh6dmhIczB1NkRzdCtKT3p1ei9mS2dYOFQwc3RRMFFWUFB3c1dXMXYwMmNm?=
 =?utf-8?B?bEwydll2Qm1BYnFjNU5haGlzbVBOa2VDNlpueHZRZnhRWXVUZHFUaFpiaGg5?=
 =?utf-8?B?dFZzaUVWbEZDclYzSTB3dnUrV2dBRTcvT3JCdVVoaWpFdi96K1B0WmQ0Q2o2?=
 =?utf-8?B?UGVqdFpIeTJkaHZYdk5vaHNVUkNyUXAyMXV5NTVZYlZxVEt0VGV5M0F3MllW?=
 =?utf-8?B?em1OeWhtODMyTHQzTEJsNGptZDhBdXFDYStBT2hyVkkzajYxcGtyM09LRnpG?=
 =?utf-8?B?bDE2NnJpUTVyd205dkpLeG5NUmxRMjhmS1F3U1Z5czhhODUzdHFJOE5abkxE?=
 =?utf-8?B?REhLOE13TXkzNUFxZzlTRWRMUXh0Mm1JLzMveVZRWVFQeEJ4RjVGRHhsNFdn?=
 =?utf-8?B?L2tuWTI5bGRnK2hwVm9sNlVkK09Vak1Cek1zLzFqOVVYblJZZG1Na05pTE9r?=
 =?utf-8?B?UUoyQ3ZWUVlvMVJPVEhvUzhrdnJWMmJsNkVnc0JIZ0w0Njl6U1g4aDN3MllR?=
 =?utf-8?B?OE5CakttSlk1TmJWZmpnNERFZG1OWHhCc3o5RnhiQ2R4SHZocDdwYmZxUHFT?=
 =?utf-8?B?ZHRRdEZEOTdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmFWUUp2cFZ5OFgyVE00aFFadWV5eXlsYVVZUEJZUUV3V3ZCQzFaS1U4bHFR?=
 =?utf-8?B?TEs1dHJiNXNRVWJEUWZiNUorallIRHFPUXBXTXpVeDJISnNmdkhGc1FLdXhC?=
 =?utf-8?B?dG1JR3daSEY2VmVzWXJvNFE0aktxS2xLMkk4R2JYcmFlamcxZVptVkNRWVRu?=
 =?utf-8?B?anI3Vnp1NnFab0VoNGpjZjZSZ3dpS3JCQWNHTnJuaGxYc1F6RS96ak10Nmxl?=
 =?utf-8?B?SmxQandiNC8vRTJ4Ti9CYXkxV2hmYThlYnNPbVZQbnhibThKRWFNY1VQQnhT?=
 =?utf-8?B?NnZUS1FBVUxCTEIweTd3Y2VFZzhxRDNaZ0trVHVCNEZTOEIxRXNXSGhtT3Rp?=
 =?utf-8?B?dlpQbFNrVmkzNlZpN0VzZnd3SkcycGRaYlpEQjJWMld1K0Q5WVhJVlhPb0dG?=
 =?utf-8?B?Uy96R2lZZTJKcmFGa2tuNHlUVzlkOFpTeVhNSDEvbnVVYTY2RG9JaloyRjNB?=
 =?utf-8?B?NllEYUlVdEZ1N1FPODJCNDRXeG1NYzBrM3ZPNW45VDlKUUpPdzBFeGJ4OGFh?=
 =?utf-8?B?cC9qQzR3aXh4RlFsS1cwTkNQRHBUZGpVQkMyZmh0TEdCYWk4QTl4WnJycnNG?=
 =?utf-8?B?VnZaRmNPc2F5ZVl3YlRRK0JtNEc0VWE0NC9YS2xJQ3hBelNiVEFFdkdIU2dQ?=
 =?utf-8?B?cXRjcFg5QlBrMnpNTXZoSTdzd213cXVJRTcvYVdaZzFaRWg4bDJrZExITGVJ?=
 =?utf-8?B?SDdhL1E2NWhGMFpRaGVXdncwNzRqdlgxL0tQbnptemViVStvU3NCc2Y3ZWxX?=
 =?utf-8?B?N1d1UTM2QU1CVlJJRHZ5VXRzdkNMaHd4VzljcnlXWFc3bUwxYWV1cTd1OW5x?=
 =?utf-8?B?eXY1YWlFZldwQ1g4N3lLWTFUZG9ieU9UT3VKZFA3MEh5ODdmcXlDS2RlRzQw?=
 =?utf-8?B?MU0wL1d5eExKWWVvWFUyMjFXckY5eDFoYzFYeWRTVUttS3NOSzI2YmVSMnhD?=
 =?utf-8?B?ZFE3Z3JGM25GMUcwUU16T05kU3d5cFB0SVdWWmpNZjVhd2Y1b2FiaFNzZ1J4?=
 =?utf-8?B?dDBlRU9tTitERkFYY2hURmM3QmlNREtldG9KekUwVkozOHlBd0tIMHkrajEr?=
 =?utf-8?B?VDhMcS90R2ZmMlVTeHhPM0wrbWZlRnJEeVJNUVdHYXJTMVAxL1RQSjFqdWxQ?=
 =?utf-8?B?ZXROS2JBb2VwNW9zaWE2YTJ2bXJaQmhDUVgzeG5KblVQSmNzc2tMeWtxRUxp?=
 =?utf-8?B?WDNJbjFSWXZDMnk0R041SmlZeTIwTFp4TCtDUGZvWnZPd1FZQmJxQlppSTdr?=
 =?utf-8?B?OEIzOUgwQm9OWTk0UDlRVWxuVU5wMmhFM09HY040cFJOWnpoS3Nma1J6OTFF?=
 =?utf-8?B?YlNjTHVpcXkzTDhnWXVCZngxdmxOaTdtZTRxR3I1MjhPRFBudXludk91R1VI?=
 =?utf-8?B?STBXazNBYmNFaGF3ZWFSRS9wdTVxdW16ZXBHRWtjcXZpb1BKTzR2ejd6SFdG?=
 =?utf-8?B?WHBuQUVPUUQxc3RIeWtud1lqYUZzNG44NFd6S1lPMHcydVVwY2lzZE1jNEZr?=
 =?utf-8?B?dFdoL1NRZEwxU3FQRVNNd1JvRXBPdWRtRFlXVlJxUnFmK211aDR2Tmsyc252?=
 =?utf-8?B?eFptNEQwUVNjeGZFbElZRDU2WTBNKzMvdnNmMitYRU95clVldXRCTGFIRm9L?=
 =?utf-8?B?R1hPMEY1UndITGZHM0xKZmI0RWIyZVgzN2F0ekNUZUZmZlY2cVhqYk9qQklv?=
 =?utf-8?B?VU9VYk9lVHF4M1hOam5lUi9GeWRrTk1pL1R3NExxcU84YkJ3TDQ4UzNaaGJM?=
 =?utf-8?B?RklNOG54VElKbERsNG1pcVFNWDBUaFBCaU1TU2dQT1pzQzhzTU5KeFJ0Q0lW?=
 =?utf-8?B?NGRneFBneVBIL0x1cjlWZ2VpN1VDVVpVWklpd3RJRW42Y3VEUG1XenFQVlUv?=
 =?utf-8?B?WS9mcGJrZjVHaGVwVjRiTTJ3b3R3VVVkRXVFeGNrWUNZUEZUQ0trc3RncUh2?=
 =?utf-8?B?VmR4Z1h3cUs2bGRMNVp4Uk9ZR2N0OW0yUHZVbG9ZMVJFdlNscDFVV2pSaDZ0?=
 =?utf-8?B?U2xJQ3MwNFhWeEdpNHBGOHVPdmQrUjZCcGxnZWE5bnZ0eXhwQkxTSWdMSnY3?=
 =?utf-8?B?MzRVLytVbXB4c0JaVDZvcGtFTnBWMERnOHJFTjI5Rk0yWWpwdTNRRWhsMURk?=
 =?utf-8?B?b2laampwWUt2K0FvMkZNalkwS1ZZSFZ2VXFOSm1vaXRDbnczV0tKRzRvRFBM?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 263698ec-d38b-4d60-5ebe-08de38675de8
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 03:42:54.2923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jj4GDxjKQo7d4BooMdPWqgBukjEnbivTFKL6yfmByf3EkSetXdgfc92GxJZuzCn5dJeGkd8fPfQfId9AN5yuXvPlCXYe4jxcZccXRNuFS6c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7291
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765424580; x=1796960580;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J7DCJQRqQZ2FNhCgLDJC7zehfhZJphMk7gIvwtU6Big=;
 b=fDuuB7n5lXEfyt9izlFLnrFeRfFpQyUbXAKG2LNlMuuAtmxSFUjGnMaQ
 f8Nb3wVKk5TpiLS2ui2LCEJ+waU9dbPrjQLngcRII9Au+wx+vbtfM1KIc
 6LWx/bXKwVTM0ItYKCCBZ1s16YfJRmQH5yBGuifr0Y72+c4OOL1j2QNnl
 o9XwJwmLqTP6H+gkEY9DgYlvHYJkYF/a6lD5RKZia8aFvrY+AuGWCQmQC
 MG/8IwYmeF7DtLjzMEOP163qEXwbiRQfdaO24BxgpONOyFFkF3KdQMYZ/
 W446ZznW4NqMTCpFQMKGpiJ26Ijp6fV3KJCNnfrJhFP6AUZjcWQFvVExs
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fDuuB7n5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/15] idpf: refactor idpf
 to use libie control queues
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


On 11/17/2025 5:48 AM, Larysa Zaremba wrote:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> Support to initialize and configure controlqs, and manage their
> transactions was introduced in libie. As part of it, most of the existing
> controlq structures are renamed and modified. Use those APIs in idpf and
> make all the necessary changes.
> 
> Previously for the send and receive virtchnl messages, there used to be a
> memcpy involved in controlq code to copy the buffer info passed by the send
> function into the controlq specific buffers. There was no restriction to
> use automatic memory in that case. The new implementation in libie removed
> copying of the send buffer info and introduced DMA mapping of the send
> buffer itself. To accommodate it, use dynamic memory for the larger send
> buffers. For smaller ones (<= 128 bytes) libie still can copy them into the
> pre-allocated message memory.
> 
> In case of receive, idpf receives a page pool buffer allocated by the libie
> and care should be taken to release it after use in the idpf.
> 
> The changes are fairly trivial and localized, with a notable exception
> being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> under the latter name. This has some additional consequences that are
> addressed in the following patches.
> 
> This refactoring introduces roughly additional 40KB of module storage used
> for systems that only run idpf, so idpf + libie_cp + libie_pci takes about
> 7% more storage than just idpf before refactoring.
> 
> We now pre-allocate small TX buffers, so that does increase the memory
> usage, but reduces the need to allocate. This results in additional 256 *
> 128B of memory permanently used, increasing the worst-case memory usage by
> 32KB but our ctlq RX buffers need to be of size 4096B anyway (not changed
> by the patchset), so this is hardly noticeable.
> 
> As for the timings, the fact that we are mostly limited by the HW response
> time which is far from instant, is not changed by this refactor.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/Makefile      |    2 -
>   drivers/net/ethernet/intel/idpf/idpf.h        |   28 +-
>   .../net/ethernet/intel/idpf/idpf_controlq.c   |  633 -------
>   .../net/ethernet/intel/idpf/idpf_controlq.h   |  142 --
>   .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
>   .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
>   drivers/net/ethernet/intel/idpf/idpf_dev.c    |   60 +-
>   .../net/ethernet/intel/idpf/idpf_ethtool.c    |   20 +-
>   drivers/net/ethernet/intel/idpf/idpf_lib.c    |   67 +-
>   drivers/net/ethernet/intel/idpf/idpf_main.c   |    5 -
>   drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
>   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   67 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1580 ++++++-----------
>   .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   90 +-
>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  239 ++-
>   16 files changed, 783 insertions(+), 2520 deletions(-)
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
> 

<snip>

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index e15b1e8effc8..7751a81fc29d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1363,6 +1363,7 @@ void idpf_statistics_task(struct work_struct *work)
>    */
>   void idpf_mbx_task(struct work_struct *work)
>   {
> +	struct libie_ctlq_xn_recv_params xn_params;
>   	struct idpf_adapter *adapter;
>   
>   	adapter = container_of(work, struct idpf_adapter, mbx_task.work);
> @@ -1373,7 +1374,14 @@ void idpf_mbx_task(struct work_struct *work)
>   		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
>   				   usecs_to_jiffies(300));
>   
> -	idpf_recv_mb_msg(adapter, adapter->hw.arq);
> +	xn_params = (struct libie_ctlq_xn_recv_params) {
> +		.xnm = adapter->xn_init_params.xnm,
> +		.ctlq = adapter->arq,
> +		.ctlq_msg_handler = idpf_recv_event_msg,
> +		.budget = LIBIE_CTLQ_MAX_XN_ENTRIES,
> +	};
> +
> +	libie_ctlq_xn_recv(&xn_params);
>   }
>   
>   /**
> @@ -1907,7 +1915,6 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
>   		idpf_vc_core_deinit(adapter);
>   		if (!is_reset)
>   			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
> -		idpf_deinit_dflt_mbx(adapter);
>   	} else {
>   		dev_err(dev, "Unhandled hard reset cause\n");
>   		err = -EBADRQC;
> @@ -1972,19 +1979,11 @@ void idpf_vc_event_task(struct work_struct *work)
>   	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
>   		return;
>   
> -	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
> -		goto func_reset;
> -
> -	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
> -		goto drv_load;
> -
> -	return;
> -
> -func_reset:
> -	idpf_vc_xn_shutdown(adapter->vcxn_mngr);

This will cause a regression where VC can timeout on reset:
https://lore.kernel.org/intel-wired-lan/20250508184715.7631-1-emil.s.tantilov@intel.com/

I think we can keep this logic, remove the calls to vc_xn_shutdown in
idpf_vc_core_deinit() and add it to idpf_remove().

Thanks,
Emil

