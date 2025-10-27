Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D34A6C0C733
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 09:52:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F4AE60AA0;
	Mon, 27 Oct 2025 08:52:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dD55IOCfo0ud; Mon, 27 Oct 2025 08:52:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF70060AE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761555163;
	bh=mg/jiLfzZY9xUbSZIZWdkuYpoY6bqI2UoPIeI/eJ4g0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mujoUJHI42oXlTNqAQPBXh0ueydhV8a7QLQtMLK5ml0/5W2tmHmgM7oW7NqWFO591
	 Yb96VsuoPIe8PiwqbuS49XFwmlLWoNOOzEVvwDiu4GeClNSZK2S7C+PoBeMAgsQoIx
	 P2b/I1Ky6VjIITDZkVuPOAsp7t6ZzwLrW2FGG0D8PntIJjnX8Rp03FVgEwXr2cBE3Q
	 8soU6hZ418oSaVvsgC/qaPYD24BKIQ9oXjhq3B05ihVBwsgQNP4VOrbgPQIs4BaHqR
	 pDUKagB+rnYE8+ElaJy0p6ifIKM7Dv07Tv4wCTkMC40J/RzzgqQXtsaIagifgSHY3W
	 V/Cgz4mbb9PhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF70060AE4;
	Mon, 27 Oct 2025 08:52:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EFAD8976
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 08:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D647084031
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 08:52:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H1LtSK2j2C_9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 08:52:39 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 27 Oct 2025 08:52:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DDED684030
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDED684030
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDED684030
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 08:52:38 +0000 (UTC)
X-CSE-ConnectionGUID: xZHmBAbJSpqJOi6ePs4whw==
X-CSE-MsgGUID: xvYLNxaCRhmqN25c0SX/yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63519301"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="63519301"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 01:45:31 -0700
X-CSE-ConnectionGUID: 7wKJPKRaRaueYo6ohHurnQ==
X-CSE-MsgGUID: II9K/Cv1QWioYlEodlDv/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="189361218"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 01:45:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 01:45:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 01:45:30 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 01:45:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HvJo9m663E2xitL0Ulwsqje8Dnl6MjHXbrRbdNOGHH4bfw0oq9r2oSqQ0S2VHo7Rx89oF6JAIxEdxvmo2jiOIeCqyt3b2cD8GR1nC/uj7n8UhE9tln3yDA4Hc3rIyodSlrdlwLpHDTffb7p7spEOWz7EBnc5k+ltLnUQkYccDFKWOM8MFwoA/w5zRu5VXvjAxEDpTyVID8bA9EkIfEWU+0QQRK0xypqOjyFfVV683OMj1NxLEIvj5lwRaC8YPcwBr52gQwytYCCDB2PNN/x8ER7xy47FLzxlJZWkrTsEBtS3gwZW/kF0GcE3pohLabOrsZvC1EREuXYtZdOGzFjbxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mg/jiLfzZY9xUbSZIZWdkuYpoY6bqI2UoPIeI/eJ4g0=;
 b=gJnMRHjuLVdsjeG3dtexXm0TVxlxD78CXVl8Y0dJzxNe70w0liL2kdacbpQ9Px+0vZn1gdJwXFQiEAFTfa7QQWUX17Fm3oyhG1bMxuWrenMePh2dPs5nDur+/C57uzOCx3siUx8/iOMjxIaPthVzusAo2uySo9IrtthzCMnbZmgF2Cx10Ir3HO0zrRb1oZT4m/qQYKGTTmKSfR5LC1+0mx6DcsbKqfaWubBXodGrGlcn/p3KptLCoEJRPFs3o7A6cdQZQurmpvJKBbqomRe0K3aH8Z48Bulv783RP0S2Jv8ZY6aYMT7dWlc1dF8BC72z3l+B3JIc+f2/wA7I7M2LMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ1PR11MB6105.namprd11.prod.outlook.com (2603:10b6:a03:48c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 08:45:23 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 08:45:23 +0000
Message-ID: <47f8c95c-bac4-471f-8e58-9155c6e58cb5@intel.com>
Date: Mon, 27 Oct 2025 09:45:18 +0100
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>, <horms@kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
CC: <alok.a.tiwarilinux@gmail.com>, <anthony.l.nguyen@intel.com>,
 <andrew+netdev@lunn.ch>, <kuba@kernel.org>, <davem@davemloft.net>,
 <edumazet@google.com>, <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <aleksander.lobakin@intel.com>
References: <20251024134636.1464666-1-alok.a.tiwari@oracle.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20251024134636.1464666-1-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0056.eurprd04.prod.outlook.com
 (2603:10a6:10:234::31) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ1PR11MB6105:EE_
X-MS-Office365-Filtering-Correlation-Id: 006266e0-bed5-4ace-60c5-08de15352b02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NjBiUWNPbW5iclVFc3dLU3VjWFFKRk1EOG41cktLRFJUUzZ6NU13VkxpUmY2?=
 =?utf-8?B?S016Y3V2aCsvSFZla3pBTEtZK2Y3U3RVa25JZEE0d21EQWVNMENMRXZxOUlO?=
 =?utf-8?B?OTg5eTNlNkxEazJNTmNJZ2NoZHVINFFZanVDaEdkdmVnQnVuVUl1b00wVEhL?=
 =?utf-8?B?eklLemhYczFJb3RwcmFKNHFIS21YL0R5bkxCYVBXeHNIdHBsanMzN0NuOFBw?=
 =?utf-8?B?eXhwVHY5MDVteUNtTlhGTDZRM3FLQkpkWG9tYXowWkFFYXpnU1pHUUJUcVh3?=
 =?utf-8?B?NUtwUTdhZkhCOFpFZk5YeDJTM1pybGRpdXF3MlhaRU1yOWNlamYxYzQ3cVVv?=
 =?utf-8?B?dkpOb1U0K3QrMWdDMjhwQ09vODY5bXlwR1R1ZEdLZ0hVbmNqRmZ6S2dBbzE4?=
 =?utf-8?B?eEg0T3JUOHJOajluZDBtWXN4OHJGSjZ2cENWd1FnNjQyc0swWGFlZkN1Vm5N?=
 =?utf-8?B?R1JVeForQnlQeHBBbCtnM1Q1b3RYNTZnZ0tlTlFKNjQrbVduVEtnODNsWXdj?=
 =?utf-8?B?dms2YnpCTXpmQit2UEJXYzV0YjYrdUJIL1gwN0tOMUR0RENMT0xxOTRqVUdo?=
 =?utf-8?B?a0Q4RmFyTHRZbDdJVDhhWndibVQ5WWRiakpXcHJmRTZyUk9XOTNhaTFkTnpB?=
 =?utf-8?B?TUtzRENTVWhVYW00dzZmbjc1dW11SHE2S1U3YnVLeG92eHNhV1BxWEJGTTBQ?=
 =?utf-8?B?WkkxeDE0SWU4VUx2b1dKWmdUOGprcnlBU2IrSm95bUc3eGZ5YjdlUXhYVGlm?=
 =?utf-8?B?VC9sUGp0eld4cmM0Q2dmVVhtUHBQNCtMKzh4ZFlpcVkyeHZod29MS1I5aFRB?=
 =?utf-8?B?ZkhiMWtIRXVEdkQyQU9NZHZsQzd2V3Z0MGJrWklmaW1QMGZSc2RzRGtkKzRS?=
 =?utf-8?B?c1FEYm0xWE5YK1pBV0ZMb3F2cXlJQUVZY3NnSW5Kb3JzcHZ0OG1QWksyK25U?=
 =?utf-8?B?OEk4eGF1bWpaMWh2MjA0aUZxN2FJZ0JqU1R6SVQ5Qmo0TXhoS0svbVBnZlps?=
 =?utf-8?B?ZXVVcDhCSHdVL3B5Tk03WTZZK21JOG4xWXRWNlJwWTE2UzVCWkw3N0wzYnoz?=
 =?utf-8?B?MmsyUzg3L2UwbVpQUUxjY0M2KzQzZlVNWDFqblRtbE9TQzI1c1BHSElaMkw3?=
 =?utf-8?B?R2s2amIrWGpKdzM5RkZNbVVGb1kyT2JHUFRWL01RSjN3Y2hqUDRxempDRFh4?=
 =?utf-8?B?Z2hjSFhXQWVqSHBOZGhVUDdMdmJYbDcvQnN2UVhkb2J0YnJ2aG1idmtyaDRN?=
 =?utf-8?B?RnduNW9sOXl1NkxvWjJVV3dRSXA0Z0I0N2Q0dmNSS1FidEhnRWF6ZUtPeHBB?=
 =?utf-8?B?RlBpYXg4eUx6bmxwRndvZ0ZyUjl1NDV0S2F1Z0szQUtpcmVqK2ZrdG5yOXRj?=
 =?utf-8?B?UHpaaGR2K1REa0pPMS9pMEduREpiZU5aOTQyZ0lrR1JoQjZBVzgwTWFCQjdB?=
 =?utf-8?B?U1JBc0k3V0R2bWVMbzhBR0xBOHdFR0hmVkVnZzZURncxdVAvYitqVFdQTENi?=
 =?utf-8?B?QVNYTTFLOTFPTldMa3I4RWVVVUlvSEZ4cmdLVFdKdHRRdGlYQ3I2YkJBOUxo?=
 =?utf-8?B?bjBIeXhIYmlUV0JVZ0hWdjMxaE9DK3dlSDBOcEFzS052cFJoWmpXSEpkb0pr?=
 =?utf-8?B?MHB1eWR3OWdNek90c1owYUxsQmpCYWdsMTYzUWlab28yY1N1NGxGU3NjT215?=
 =?utf-8?B?QTFEQ2dkYTdnN3BQcXRRTk5UbFFCYmdEa0dZZnpkOWJuRVhkN3RESHZVWVNu?=
 =?utf-8?B?Y3BNcGFxSzlWUk11Q0huK0RyNzROeDJ2ZDBUTEkwaEFDY1hXNVJFaGpNL2JU?=
 =?utf-8?B?bitGcEhQMGtVTksrRHRXOVFheUF6SGt0ekpiaUk0eitUK0pNekpUMUVMeE05?=
 =?utf-8?B?NmI4Qm0wdCtpZlF5VW5yZEhYQzhTTy80YnRIRmc2c3NLMHhpOUt1R1RFT3c1?=
 =?utf-8?Q?YVcaucKKDNlzK7lR8z8cTFV8mBCiDpqy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0hDWkpXWW1vekQ1cmMzSCtsR3N2cDMwRUJDNGlhM09lc2pEQS8rNkV5VXY2?=
 =?utf-8?B?djkyNE9kSG1vWTVWcFBpMUNIeVBkcmIzTWx0VXFjK2YvbkQxM2R2QzRCL1hK?=
 =?utf-8?B?TVJxM0lXRnFOUmp1RUhrTUpnNWNlSXB6SkRDTkZ1VTdRbkY1SWtBU1RkanB4?=
 =?utf-8?B?RVVlRlY3WGh1QmU1VkZWbUVFZWZVaE9hSFpQR3hjNnZLc2NmWDgzQmlHamE3?=
 =?utf-8?B?TW9yaStpaFR5Z2c0WDAzL1JvcFdrQThpdnl6M2RaSG93T3c3aVczdkRYYXpL?=
 =?utf-8?B?RHhPTnFhQ0JnVTc3RFM3V01kR3E4eFVySU85eG44R3FSa2FNd205dytGbksw?=
 =?utf-8?B?aS94ZHJ4MERUSnMva3lUUkdDN3dLL1ZZV0VLSGxRU2FhMnVUeEVQc1p1MmZm?=
 =?utf-8?B?aXBmY00rRWVoaSswVWltQVdEdEt0R05rL3FpbVdSR0xGcEJJeWpLQy9YNVRp?=
 =?utf-8?B?a3JRcWZ0Y3FRWVdqNHJPN1B6MHpYTkcrWjk0OTA4Y1J0N3l0Ykt6OGg2MVhh?=
 =?utf-8?B?NjBzN01wYU8vMlJGS3VyWEVtZ3pkYWd1c3d6ZjBGRWRGL0VjeGxycjZROEtX?=
 =?utf-8?B?ZzBTV2FFZnNVSnE1SWZML0dWN3U1VXBZLzIrakxCays2Qml2UnErMXd5RmJ3?=
 =?utf-8?B?MkcvSm1VNzRqUmVSQnl0S3BMZkRhMkg0S0U3R0FxemxCY3AwQ2xhbnJMbnp6?=
 =?utf-8?B?NkRUblNrODJwRGdkVmNiMGlHZ051cGl1aVNkTDBLZWltbGtaM2JoYWxIRUZY?=
 =?utf-8?B?ZmszckQ4NUsvUjh5Z3pyR3EraUxteURrTU9ucnVQY0s3amhrSCtEUzFXNHgr?=
 =?utf-8?B?c1psMEFaYkJoWStDRUhXZktMYXFQcU5mMzA4K25RbXg4VEZjYVR4TDRIdE5q?=
 =?utf-8?B?MTRIaldTMFpoQTM4cjkvK2ZzVGRrOUVwL1hJQ2dzRy8rWnRMc1QxRTB6NXNQ?=
 =?utf-8?B?RHBlbit0RVc3MjdDSnJtU2VidjFEN2NTaHVEY05ac2w0d3BrNjM0bDVReG5P?=
 =?utf-8?B?cUpWK1JtcFdJOHJuRGpDWlNrWDRoUVVjRVlSN1VBSGJqVTdzUmFRMGJiYlZJ?=
 =?utf-8?B?ZitEanRKY25uWXFlSW94d3lLZlFCb3hvbTV6UUdYeTA1TW5VeVF4Sys5Q0d3?=
 =?utf-8?B?N2VwdisrcVhzYkxxdHBzbWdsUFR6U0RNRGJ2bThoZGJQdWNMZHAxWTZKWkZv?=
 =?utf-8?B?MFJ1MTliUzNmaERRYmRURTNPcjJGc2hVMnJUQ3p1S0pkdGNZd2txd0VKajV3?=
 =?utf-8?B?T250UFpwNkR1VE9Ta1RlM1VRdVZZbWtwYmhmY0JvTUVSVWlNWnZneTJzdkg3?=
 =?utf-8?B?NHM3Um1zQjdZcVV1N0NOQ2lwbWpaZFVRMlBwSXkzYzh2emhQZ3VDQUdRb09n?=
 =?utf-8?B?TFhSUFVUSGt2SDhXNkdvQVMzL3hsMUJvN0hWMThheXdnWGdCbHFzUWsxL2Zu?=
 =?utf-8?B?dkxxZ0RpbXZLcVFxeVd6L2luWTloVW5uYlVLUGk2eXRUZ3NJYnZjYVNrcWdu?=
 =?utf-8?B?amhpay93MXpxOWZvMm54THM0ZE5JTk54SHN2ZERaVHpzSm01UW9KSXY2Y3l5?=
 =?utf-8?B?T09zbmVYN242MWc0a0JwZmJyN1NLc2M0OW4xdElWampwT3Jkd0pOWXlremhk?=
 =?utf-8?B?eTFmVjVoTGNvNktrM0d5MUthc2FkV2s0OTJGNDhXZU1aMENva0w1TlNUUFlE?=
 =?utf-8?B?ZHAzRXcrSURxK3ZYWExoUlFIT2JTSEkxNktGeEc0SG9yOE5JWlp3bldlRG5s?=
 =?utf-8?B?SFpDZTJrTkpoSFQyQXJ1ZHhpKzU5cmI1L2NWSWNMNGErZ0hJdnBULzg5Q2Zj?=
 =?utf-8?B?cnhhTzdEUWFzSTQ4MmFJU0xEVm9Wc3p6cmVIYkFCRC9XZVpjVTgyZW8yejl0?=
 =?utf-8?B?Y0dYejBWcG5sb0lldXdydWg0Ly9maW96VUMyQ3p6N3labWZZdmZGeXB1Vmdn?=
 =?utf-8?B?RXczRVB2MmM1K0t0NWhzV1FPTWlkWkNocXVPTWhPOXFlcDBXUUdKbnJYNVYr?=
 =?utf-8?B?OW55bWs0c0doOHV0bHlqU1pTam1NRzBHWG4xaTg1T0ttNnF4WnlTQ0UxVWgw?=
 =?utf-8?B?U2JjckJQMVNmMmtwR2ZnekU0bkdpb0pqQzBrMHJaeEJ0TldLMllLQ2FKT1Nl?=
 =?utf-8?B?Q3l4SUF2VmpXZHNNa2RzUnlLVGF4UDVmMDl0NTNuaytmeU9HcDJISk0yRmNy?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 006266e0-bed5-4ace-60c5-08de15352b02
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 08:45:23.4580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FG4ss11H/CLrVYTnJV6uNg2QUygwt/hmst8SFs49oK6AqCe1XEXVjYciXasSBtt+ikuAcIB8jMXJGLOpr6I/YhE57WEmK68Sc5ULW48tttQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6105
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761555159; x=1793091159;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lZa/V5oKMtko/O4RriM938w4TghEFwO1JFYKUzUwa7s=;
 b=IVlvQjaMRmojKRYxBEH5b13tyBugVYpZUFfWBYDeMTa8TFWztWab5MBx
 C64meXpTEQ5COQ+MB/hi89baHM8j7hMtU+ZJx5zK+6PRY0MTifyNG4ult
 PbnYh0SCUwiD0cOxK0WYj9Lk3s0wXGTFdNVnmzFsmlshpqzttIRjzbhHe
 3UX3WjHgHH72ofuwA/l+z7gUa+b/okGUMT/WC6cTlSBGcrTwISrVi/rJ/
 QWMT3eXaaE+Mp1TV6HgUZJLxVMd5HeuA2fkgOzqPivHuR20UG3jDUqbzL
 fLci7FrtYWVTNdzeVDn9DnBslYRgXP6FmLOqc7X+sj0qsAFzsDY72i6jn
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IVlvQjaM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: fix incorrect warning
 message in iavf_del_vlans()
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

On 10/24/25 15:46, Alok Tiwari wrote:
> The warning message refers to "add VLAN changes" instead of
> "delete VLAN changes". Update the log string to use the correct text.
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 34a422a4a29c..6ad91db027d3 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -987,7 +987,7 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>   
>   		len = virtchnl_struct_size(vvfl_v2, filters, count);
>   		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
> +			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
>   			while (len > IAVF_MAX_AQ_BUF_SIZE)
>   				len = virtchnl_struct_size(vvfl_v2, filters,
>   							   --count);

As Simon said this is a clear copy-paste error.

But the message itself is not great:
there is too many VLAN DEL requests to fit into 4k of memory, so what?
driver will just split into multiple virtchnl messages (with the "loop"
for splitting is put multiple call layers above from iavf_del_vlans()),
and everything is expected to work fine (despite the fact that this is
likely not tested frequently ;))

I would suggest to also lover the log message level to info, and
rephrase as "Too many VLAN delete changes requested, splitting into 
multiple messages to PF",
or similar. And the same for ADD requests, the same for v1 message
(so 4 cases total).

with that there will be no eyebrow raised for the dmesg reader
