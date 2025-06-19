Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9B7ADFB87
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 04:57:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 602478073D;
	Thu, 19 Jun 2025 02:57:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOcubDvxiWzu; Thu, 19 Jun 2025 02:57:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 621978074C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750301869;
	bh=JFYJ0CzWJPLDfgel8FKdkRlsVx0DMyOoxR2bqBTRrEs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2tuZNnqiQCquUOwcpdSrKER312VX+L+Kk+P4NldGTjIwLRoi0poPNAd33xUWKebvy
	 nr/DhZEc1kqQcJD8Xrp9os9j+UOZWTywyaflh3qa586zoYPnDlWC5iBCSfyyg8/of6
	 4hkz1oTaj8xwvyK/rf6mvMZf/T/dyqJ8NFUAl7YWx15K9lpngrT2gvmz3AQwNPNh7T
	 2Fa/WwZEomW3fdDEglxQkK3/xi6alx7rE9+tQGJa4Dk/JkPo27rG9vJ6Y/UaVY2dvc
	 VzB4Ft5FuouC/S5FioCVwc0pWb6wEGoNDubIe8c+ZBlL08Sduvc1NVreaLbF6nvMl1
	 iJ4MLRAjcVyAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 621978074C;
	Thu, 19 Jun 2025 02:57:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 84C58181
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 02:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CF9A8071A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 02:57:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wh5pcMl8HiZj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 02:57:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80BDD80714
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80BDD80714
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80BDD80714
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 02:57:46 +0000 (UTC)
X-CSE-ConnectionGUID: r2VgY+3uSl2qZdt+nIzx6Q==
X-CSE-MsgGUID: zJm33W7pQr2pzeHnVXnsiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63901012"
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="63901012"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 19:57:45 -0700
X-CSE-ConnectionGUID: JHZr/D6xTxehbTsehVY8+g==
X-CSE-MsgGUID: KULy5IoQRdWUxCwwwcluiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="150185644"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 19:57:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 19:57:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 19:57:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.62)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 19:57:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ga91ldo7QIpgXGoavBFuYG5t0dFy6ul5o7WkiyqvXULP7kkxTtZG9ORN14paUQRnvSwAFWbObtv2kNMZwGFZYyA7f2hykGMVohKix+m/Duc3woNZrrUaOroz1qxMsb48z0yNZYL08hmWN+zpuyG38dIS1l8JCLjFQ6fqPhqqfdI2CVlYsMkrrxAG7ni0EGp9cs3yfBrvhleNCIuUIJ/DlV0ku8dFj7QjnXVT6m8I44DeNsrcfITqouKMZ2P0c/b/Dzu9mPHWxbBWTTsXba/TzlV3avT0fTffAieMiejVUl27EI3o+Lcyq66eDAuvpasVY8maRyEgRab1CUFmF5cF2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JFYJ0CzWJPLDfgel8FKdkRlsVx0DMyOoxR2bqBTRrEs=;
 b=eFtSDOEfQcU++WZ6Avdu7mFJjzwXw1Ptb6VDB01o0fLUXEwkp9drscK5mBBagpyThPF4CDx8xYkNRkITuLFEDBaCwj6GVRxmXBumT2onvkr4sOxVIkbCg/uYEuasPg99MTAKzUAXvphVQjoQHB5xhZFrcAB+RCwVTaI40eL9WxqxO2EILqwN4Guiw41fkGuI87I/06Ky0z9BAmA0h3MX1EZa2m3g3UR5n8l5t+g1eRitNS/e6LORgzLfqvwz2fSy5LIsf8Wve5jonjQoXuWH3oheXpAhz7JC0UlMo+Apn4oBuhtvIzyE42uY5CjXXM+P4MWsz/HZWta3gWbdFAHOnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by DS0PR11MB6351.namprd11.prod.outlook.com (2603:10b6:8:cc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.31; Thu, 19 Jun
 2025 02:57:36 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%4]) with mapi id 15.20.8835.027; Thu, 19 Jun 2025
 02:57:36 +0000
Message-ID: <8332a1e1-0683-412f-a1fe-5c6b9811a371@intel.com>
Date: Wed, 18 Jun 2025 19:57:33 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 "Maciej Fijalkowski" <maciej.fijalkowski@intel.com>, Lee Trager
 <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Madhu Chittim <madhu.chittim@intel.com>, "Josh
 Hay" <joshua.a.hay@intel.com>, Milena Olech <milena.olech@intel.com>,
 <pavan.kumar.linga@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
 <20250516145814.5422-10-larysa.zaremba@intel.com>
 <16644b14-2101-4e95-a9b8-d1226d52da27@intel.com>
 <aFJwt22XQkcZ4qQ4@soc-5CG4396X81.clients.intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <aFJwt22XQkcZ4qQ4@soc-5CG4396X81.clients.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0346.namprd03.prod.outlook.com
 (2603:10b6:303:dc::21) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|DS0PR11MB6351:EE_
X-MS-Office365-Filtering-Correlation-Id: c8d6138c-ad35-494f-4d70-08ddaedd0ba6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amJMSVFnOTBMNk8xWlM5YU1ySWRobnFsYXFVUmZMbWNsRzNhb2pSa1dzSHVt?=
 =?utf-8?B?NVNyUzYxSmh1SUk4L3hPUjNPRXdnS2NTU1l6cG9WRXB0L1BEMjVkVnhXYk1C?=
 =?utf-8?B?UGkrSUpqZWVEZkFQY0k0ZFBDaTIzQ2pDRFMxRXZRd2lRVzUxdHBuOXl1Y0o2?=
 =?utf-8?B?eC9COER5VHlZNGRJRWw5ZmE2emxUYXVTdjdPLzJGMGpaSm0vNDdVSVN2MnBp?=
 =?utf-8?B?czRVT1F2Q3BPUzkzaHRLRno3VzFlYUorYzNvRThzWmM4Qitqem41cVVCcmFh?=
 =?utf-8?B?Z01uL1NFNkFKLzJpZjlpOGQ3MFIzT2I5N2FNY1VKRHRoRURRYWtUWm5CODVJ?=
 =?utf-8?B?NUt6ZTI2cndNZFpHbHVseVNPbDRQa29VTVorTzNxVXdHd0NKZU5TZk5OSkVn?=
 =?utf-8?B?UGs0dG0rZGZabzMvS3l5Wmx3SXNmZmVFK1BqYUE4MVBpaXdBVVd0MzFRN0Nv?=
 =?utf-8?B?dTVIWTZaZFowdmtsV2tZSVNvVDhHamxhNjB4SVRic2ZNTEJpS0lBUVgzNnNP?=
 =?utf-8?B?WlNQSDN0NkdQQU1UT1k0dmpZWnRCT1pJakNyaGVqRFhtOWNURnpERDlEK2tx?=
 =?utf-8?B?WnZ3N1FBRFlGRndTWC9WUWdiNE8zUThrTTdOR3NPN0wrOGpUeWdWRDJLZmFP?=
 =?utf-8?B?YVRRRTZvWk9wajdYM2JpYURPdlEvZzRMVUJTU0JDK0kyWjB6TkIxZzYrVkNE?=
 =?utf-8?B?MVNzeFVlKy9SS1FVSUVnTFBhNlh5ZG9WN2pVT2djZGs5ejR5aUIwbnlMMjZW?=
 =?utf-8?B?RmpoVXVvMnd0c0JBa1EzdUtvS3kwY3Jma3NqbUpVb3h0QUhhRzhCSEdTbVQr?=
 =?utf-8?B?RDlCUzJJclpXNjJTeDIwVEVBeTErQTBCaTFZcG5ZM1lQb1lzbEdsMVdPaXAy?=
 =?utf-8?B?dHU2VUFNdnV6UG1PNnJMQjBDT3daTjBvU1JFK1ZvaGlFbmtnOURoWHZwNkp0?=
 =?utf-8?B?bnpoY2RsVzZsbjV0eDZTYWpFQXd6V0psL0RVUUlkYURWWmlHaTQwTFJpZndW?=
 =?utf-8?B?S3l6d0pIdUYySDFSRXVuZ0FIVnFCc0xWekNvVzhzZzBUTXVyZGhBNytsSE1P?=
 =?utf-8?B?SW9Pd2x5anhGc0tLTHgxL3ZzdEtGNUl4a3E0RklYSmZlNGJwN1AwS2NLZ1FU?=
 =?utf-8?B?cHV0a0Q1ckpWMDRLdkNSK2x6ODNDaWZteUx5YlRGTmZJc3RsNG9FMVlsY1VH?=
 =?utf-8?B?YXIzbllwMU1GK1BDMkdObkVqVjZQQ2pObjN5aXpaQ0lFQW0vTEJhVE5nWlkw?=
 =?utf-8?B?NXg0SW9Hamh6ZVdMbHk4ZUxKUWdqSjhiM0t5amRrSWdLVlBtcmFUeGhLQ2xT?=
 =?utf-8?B?U21lVGpnbHpod0ZjK3NNdC9xOVdmS0x0K2grT1kwc1lSdjF6cWJXOFRyeUYz?=
 =?utf-8?B?eG9DN3hFVDNmSDEwQW56NnFnSGZIVno4RnoyemcwNFlHczZsRVEvcmJveCtx?=
 =?utf-8?B?Q3ZKamxLK2FkSkNPMUU5TFdRR3JmQkxxZTcrc2RHeldhV0pVZFhCNHNaT1dK?=
 =?utf-8?B?VzBLelFram0yOVZMWlgxOEhHVVRFYjZkQW92cHIzKy81VWw2Wm1mWk1sTDhI?=
 =?utf-8?B?YldxN0dVbEtBTGhSVFgvSW10TEhtNC8reVFFVjJZck43VFZDRjFXMzh2NUxZ?=
 =?utf-8?B?dlF0ZGJKTEU2U0lNQmFpdkVLb2ZwTS9MenZUMnMxekMxOUJTaXd2UXJoclNF?=
 =?utf-8?B?UHRTamRoUkw5SnJFU0hueC9UdVlKUERtVlZpdDU3NHgrOVlGaXVkVlIzU0FY?=
 =?utf-8?B?WUFLdGIwZWg3WEtLZGVDUzJaeHNJbnBjaFN5MmgrdXZ6ZlVIQ1h1QXZLR0NR?=
 =?utf-8?B?VHByU2V4UEh0dDUzSDJXeDNqeGRyajRkWWZDNC9nSXB3V0N3b1NvQkJrUndP?=
 =?utf-8?B?cSt2QlNEWjRlaFM1QUE0TEoxQUpqTngxRzZiMkt4cGlKRXpaODVJOUhPMmIr?=
 =?utf-8?Q?MstyFApoJlc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVJvekhEU2ExM3JwSC8wMmRxeFlJUmdHcUFhczBvbTdhWkg3RHIzYkcrTE9O?=
 =?utf-8?B?bVROdTMvMzBKZG1UK2YrWklScklEUU1qL0MycjhNbDdGMTRhMzBlYWdDWFND?=
 =?utf-8?B?RUdsbWd1ZzBjNERGTHNrZ0ZuZTZ2S0FIZEZQckRyVzE1STR1djI5Q211eGFw?=
 =?utf-8?B?YjFHQkJjQjA4aTFQN2V4QXE4TWRraFV2UzhtdHcydk1HbDRENGRaYjFiYy9v?=
 =?utf-8?B?aGRndFNRTWphNEplT3A1MVEvUUZmNEtMM0dmSUV2OHR3aUVIYlpPYjVYVW5W?=
 =?utf-8?B?eDcyRXRTcHdFLzgycUt0Z3A4Zk1peWRFWXZkeWdqcDJZUzBZVmZtRWw4ZWxj?=
 =?utf-8?B?VHk5cnJEdnZhcnNKRkNJV2RLYk5hVStPYUFLb21VWHZRUlRlWEJ3aGJTRWdB?=
 =?utf-8?B?bzNPSytvVVZ6ZGJ0S0RNTkcycWtwRFRRaGdGSGJpZHBMdmhVc1d0S21LdVNL?=
 =?utf-8?B?ditTZlpFT3dpUnFGZmVHYzNsZUU4S25pNFJ3QUFrYVlKcjZJS1Y3TVFjdktJ?=
 =?utf-8?B?anRWSG1EakFwcENuVERjQkJPbG5RNk9kRklUYk9YUHRMVjcwbDMveDBUdCtn?=
 =?utf-8?B?RmFrT0RpL09TRmVVRkpjSUhBTk1keE1XZ09sYzU3VkQzTllLOWM3ZWlJNVlu?=
 =?utf-8?B?TkZRS2NndDVuVHN1REwvWHhDQlNkcG1VN3VPSjU3SitHSHVTbU01R1o1VCta?=
 =?utf-8?B?RHpWWW00cE1wMDF0dmZxWi82eVc5cUdCaUtNbXpPSTFLREpsbDI1dWMzUnZI?=
 =?utf-8?B?ZjJLaGNIcDgxdmZSaTBKdjdNWWt2blZpVENDcFNNKzRGVlJFVHhvZmJVTERD?=
 =?utf-8?B?Q0dHcGxqa2xRTEF2SVZOamRBT2xhUFAzY0hwcXBzNTd4b0lScmtiNFY0TEVQ?=
 =?utf-8?B?aVVNb1lYMTR0QTR4NkZFQVJjWDd2dFpwb0NFbmxITGhQb1daVm9WVWVHNElK?=
 =?utf-8?B?NUZ2bW9NSGNOVUJhWjdscDVUbDN1ejJpcVRveU1rKzF6OVgzTis3b1BOcEJq?=
 =?utf-8?B?dkZIVlFMbWY1QmV5STJ5SHRlektYOUV0eW5mOWYxRkVTeSsvd1hINXladm4y?=
 =?utf-8?B?L2plQnZ3R05WVCtpeDFUbFV5SGY3bzVna0RZK1dGRy9OeThSTGpyQWpMZTc1?=
 =?utf-8?B?aWlJbE5BcXhJNUJQWWk5NHF6d29qOHR2MzdMakZKOTNLT2QwWjJDeFFnMmhn?=
 =?utf-8?B?Z1FXUXFncytPL09CbFBmODlzeFVzZVdiZkFDTXZIUTFielhLVnZHNUN5ZjRu?=
 =?utf-8?B?VU9kbnNsYXhCZXU4Q0dzcFZEWG5nbXRWRytURTlWcjg3WHZVUzdkbVh5SlQv?=
 =?utf-8?B?UGM1aTN4WkY4aXg3UkdlREZ6SEFPamFSUThZakc5Y1VlWFVUMWprT1FwN254?=
 =?utf-8?B?YjkvNUJIVERFZGN2YXhWOHZuOVhCalNUdk1lK2FaQXI4NDJPZWg3WmNjSmxr?=
 =?utf-8?B?bDRLd1MyZ3Y2V012TzBnVzdaTWZXT1ZYTHkyWG05eXFzN21iMERFMXpQYzNp?=
 =?utf-8?B?MWxOSkd2bGF0MWYrWVZrc0NNYVE1d1B5Z1BHc3N3d0xQTkNyNlVocnlVdjI1?=
 =?utf-8?B?b2NUeXNpdEZpTjhlaFJlVnpTZHpEYzJhdjlsTWdwaG8rUmNqNXlvL3pFTGdH?=
 =?utf-8?B?RFN4eGhvRmlGa01kdjVGOGlGckFrcEZPRldkcEFLUml1cURhenB0RlpPcm0x?=
 =?utf-8?B?MEhBV1VHVnVEUm5lcjJCSEg5WjBzN1JVS0pWQ05IbkFnOFAwckpnUEQrTTdz?=
 =?utf-8?B?YXA1aE5oMlBaK1ZVeGhUbGpBUFJmb085SmRsSjk1SWRDZGFncWx6eDRzK2l1?=
 =?utf-8?B?NGpOSUUvdStKSlN0a1I1SmJoVm9VV2FJa1hzcDZGc1NSOU5lZEVPNkJjVDJw?=
 =?utf-8?B?ZytoRCt3VWhpcmwzUThaOC8zV2ZxcTdIeWdNZlNRQjNLQXRnVWliY1BxN0Fp?=
 =?utf-8?B?clc1QXQyNnRId2o5T3NzYlNOQTl3cVo3bXczVmoxSmpzVzJrczQ4cWdTRG0z?=
 =?utf-8?B?OHR4TmJ2dTlTRkk2WlVEREltZkRFN2xZL2ZWeGtZcHpqUUhFMVhYVzJpSXh1?=
 =?utf-8?B?ckxnNTVQeW5QRkxjaFBuWktoMDdlOElJS0FUNW5LYzFsVGtNcE9PVnBBZkt5?=
 =?utf-8?B?cytzcTFQQ2xxODg5UnN6MG1PNkgrb01JQ0NBRTVMT1dtcjdYcFZMSWJZWHpH?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8d6138c-ad35-494f-4d70-08ddaedd0ba6
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 02:57:36.4869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TzZzT8f01kxT0vnTVoF1n4wWlGa9rsAHiAsbPlXgtvaznEXD5UzLwBLK1Tsh2qp98rwRnXMnJWw+dpZ9FOkNbLvxBi1QysFZ2eGFvtuzAf8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750301867; x=1781837867;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WX8F4SA2dMyNaf0Ae8VhNXS9LBMigujtsXqaiNbtbwI=;
 b=N2/DnL7LN9czgMeLCG0yQOgW43tXA8nXgKrcOjdZK/qtq1zKjrQB3vOd
 YGxVzV0BAq7DUSQDteHXxwj5BUJzGPTg8wVaSsdzQLdqvMF3rAxvZh1NF
 gYty6ChTJOqUYrzZqXA/5QBUdZ+mEXNyUXf+7KjElQ0zZIuMMbNHn+ecj
 QeP3war9H4pf/6jjJMCbdMRkXx40BpKsw7kfS3AIWHURMZ/nnpd35qiq7
 a4U/e5AkFzanEqmVnnSsd3QplSbUkuqPS7u4LeGd9VtUNiTTMoJrw5Qze
 kAvTih530lPKy3b2qbAFKyxIHIXa3Hcr5yZqHvS0F5D12DwLUHgkLM4dI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N2/DnL7L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 09/15] idpf: refactor idpf
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



On 6/18/2025 12:54 AM, Larysa Zaremba wrote:
> On Tue, Jun 17, 2025 at 05:04:55PM -0700, Tantilov, Emil S wrote:
>>
>>
>> On 5/16/2025 7:58 AM, Larysa Zaremba wrote:
>>> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>>>
>>> Support to initialize and configure controlqs, and manage their
>>> transactions was introduced in libie. As part of it, most of the existing
>>> controlq structures are renamed and modified. Use those APIs in idpf and
>>> make all the necessary changes.
>>>
>>> Previously for the send and receive virtchnl messages, there used to be a
>>> memcpy involved in controlq code to copy the buffer info passed by the send
>>> function into the controlq specific buffers. There was no restriction to
>>> use automatic memory in that case. The new implementation in libie removed
>>> copying of the send buffer info and introduced DMA mapping of the send
>>> buffer itself. To accommodate it, use dynamic memory for the larger send
>>> buffers. For smaller ones (<= 128 bytes) libie still can copy them into the
>>> pre-allocated message memory.
>>>
>>> In case of receive, idpf receives a page pool buffer allocated by the libie
>>> and care should be taken to release it after use in the idpf.
>>>
>>> The changes are fairly trivial and localized, with a notable exception
>>> being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
>>> under the latter name. This has some additional consequences that are
>>> addressed in the following patches.
>>
>> There is an issue with this approach that impacts the ability of the driver
>> to force a reset. See below ...
>>
>>>
>>> This refactoring introduces roughly additional 40KB of module storage used
>>> for systems that only run idpf, so idpf + libie_cp + libie_pci takes about
>>> 7% more storage than just idpf before refactoring.
>>>
>>> We now pre-allocate small TX buffers, so that does increase the memory
>>> usage, but reduces the need to allocate. This results in additional 256 *
>>> 128B of memory permanently used, increasing the worst-case memory usage by
>>> 32KB but our ctlq RX buffers need to be of size 4096B anyway (not changed
>>> by the patchset), so this is hardly noticeable.
>>>
>>> As for the timings, the fact that we are mostly limited by the HW response
>>> time which is far from instant, is not changed by this refactor.
>>>
>>> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
>>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>>> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
>>> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/idpf/Kconfig       |    2 +-
>>>    drivers/net/ethernet/intel/idpf/Makefile      |    2 -
>>>    drivers/net/ethernet/intel/idpf/idpf.h        |   27 +-
>>>    .../net/ethernet/intel/idpf/idpf_controlq.c   |  624 -------
>>>    .../net/ethernet/intel/idpf/idpf_controlq.h   |  130 --
>>>    .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
>>>    .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
>>>    drivers/net/ethernet/intel/idpf/idpf_dev.c    |   54 +-
>>>    .../net/ethernet/intel/idpf/idpf_ethtool.c    |   37 +-
>>>    drivers/net/ethernet/intel/idpf/idpf_lib.c    |   44 +-
>>>    drivers/net/ethernet/intel/idpf/idpf_main.c   |    4 -
>>>    drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
>>>    drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
>>>    drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   60 +-
>>>    .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1617 ++++++-----------
>>>    .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   90 +-
>>>    .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  204 +--
>>>    17 files changed, 765 insertions(+), 2500 deletions(-)
>>>    delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
>>>    delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>>>    delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
>>>    delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
>>>    delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
>>>
>>
>> <snip>
>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>>> index 68330b884967..500bff1091d9 100644
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>>> @@ -1190,6 +1190,7 @@ void idpf_statistics_task(struct work_struct *work)
>>>     */
>>>    void idpf_mbx_task(struct work_struct *work)
>>>    {
>>> +	struct libie_ctlq_xn_recv_params xn_params = {};
>>>    	struct idpf_adapter *adapter;
>>>    	adapter = container_of(work, struct idpf_adapter, mbx_task.work);
>>> @@ -1200,7 +1201,11 @@ void idpf_mbx_task(struct work_struct *work)
>>>    		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
>>>    				   msecs_to_jiffies(300));
>>> -	idpf_recv_mb_msg(adapter, adapter->hw.arq);
>>> +	xn_params.xnm = adapter->xn_init_params.xnm;
>>> +	xn_params.ctlq = adapter->arq;
>>> +	xn_params.ctlq_msg_handler = idpf_recv_event_msg;
>>> +
>>> +	libie_ctlq_xn_recv(&xn_params);
>>>    }
>>>    /**
>>> @@ -1757,7 +1762,6 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>>>    		idpf_vc_core_deinit(adapter);
>>>    		if (!is_reset)
>>
>> Since one of the checks in idpf_is_reset_detected() is !adapter->arq, this
>> will never be possible through the event task. I think we may be able to
>> remove this check altogether, but as-is this patch introduces large delays
>> in the Tx hang recovery and depending on the cause may not recover at all.
>>
>>>    			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
>>> -		idpf_deinit_dflt_mbx(adapter);
>>>    	} else {
>>>    		dev_err(dev, "Unhandled hard reset cause\n");
>>>    		err = -EBADRQC;
>>> @@ -1825,7 +1829,7 @@ void idpf_vc_event_task(struct work_struct *work)
>>>    	return;
>>>    func_reset:
>>> -	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
>>> +	idpf_deinit_dflt_mbx(adapter);
>>
>> This is not a straightforward swap, whereas previously we just discard
>> messages knowing that we cannot communicate with the CP in a reset, this
>> goes much further as it dismantles the MBX resources, and as a result the
>> check `if (!is_reset)` in idpf_init_hard_reset() will never be true.
>>
> 
> Thanks for finding this!
> 
> Given the problem seems to only relate to idpf_vc_event_task() in case of
> IDPF_HR_FUNC_RESET and the following call sequence:
> 
> 	idpf_deinit_dflt_mbx(adapter);
> 	set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
> 	idpf_init_hard_reset(adapter);
> 		netif_carrier_off();
> 		netif_tx_disable();
> 		is_reset = idpf_is_reset_detected(adapter);
> 		idpf_set_vport_state(adapter);
> 		idpf_vc_core_deinit(adapter);
> 			idpf_deinit_dflt_mbx(adapter);
> 			...
> 		...
> 
> I think, it is safe to remove idpf_deinit_dflt_mbx() from idpf_vc_event_task(),
> given no mailbox communication is attempted in between it and
> idpf_vc_core_deinit(). Anything going on in parallel also should not suffer from
> having mailbox available just a little bit longer.
> 
> What do you think?

I think this will work. The small difference here is that the MBX will 
be disabled a bit later than before. Say there were already messages in 
flight when the reset happened. Previously we flush the MBX and then 
begin to handle the reset. If we remove idpf_deinit_dflt_mbx() from the 
event task the MBX will be disabled as part of the reset handling. FWIW 
I ran a few tests with the change you propose and did not see any issues 
as a result.

Thanks,
Emil

> 
>> <snip>
>>
>> Thanks,
>> Emil
>>

