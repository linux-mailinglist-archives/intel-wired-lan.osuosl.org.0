Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBxJLEzcAWptlgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 15:40:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E128950F1E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 15:40:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98D0840F4D;
	Mon, 11 May 2026 13:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Afbe0mk-Y4pp; Mon, 11 May 2026 13:40:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13FAF41289
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778506825;
	bh=dUhRE0dWFOafXzg7IjEpshYonkzGOx8TdhH/wEH9R/I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4JhQ7iRW08eZdigZUv2TDradiMFHUT+36EvkkkyhE6WSRq6Ac6dUp/Ddcj2tH8MmK
	 L0JVTJWzzuvrtbDLn1jHvF/XSqzd07bO8I+42pTG3qEzfvof28ZE+G2f37WU7j5NZR
	 DirCE7CJ2rgj6z3N6DUr0LCLes3alzr+6WMv0LkCW1AMSjvqZ8gzXl1SUQe3xms0Md
	 fhUU2m32z8HPEnL/F0o6eIVFrZ7sTIYkzNAYkDI/HywCG64kWvAZWabLlOnMsc0wid
	 nFqEqM99TjDha18/1WRSUlXvA8TPdsYMTfzt+DieWfJfJp1jKEX23yPoQZf3wbgiVj
	 1JGiHVRACIbtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13FAF41289;
	Mon, 11 May 2026 13:40:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 05073173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 13:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02E8260885
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 13:40:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d9tRA1QGPbZy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 13:40:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3AB4C60883
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AB4C60883
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3AB4C60883
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 13:40:22 +0000 (UTC)
X-CSE-ConnectionGUID: IxmbKn+vTiGggBT8ckcftA==
X-CSE-MsgGUID: YKOcCfrCTUKY8kplKWB14Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79422809"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79422809"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 06:40:21 -0700
X-CSE-ConnectionGUID: iJXYN6FcRXmt/t/pIs0y5Q==
X-CSE-MsgGUID: CnkxCayuT72dgMCfJMS5cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="236481565"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 06:40:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 06:40:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 06:40:20 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 06:40:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ORrypf2NByozMgG04vny8oSYPOMftd12zfX00Qo5J2qxhquAl/ed7DPhwAP1YnUqvOF/bT9wkFoMoXVX5yE5Ga5KmBerf6qPdV2QPKkKTdGGchak2Af8+/Rl7hKemmK0tApbG7cj4WYogscuEgYtlGF6kh+H1mG168I9rwwHI+y/hfIFDcbqGAXlQN9ZgL6xmmrDVCQBhg08EFVydYytCpZjKOn7eKtdl+yQgwKaYE7RxlYUi1Mjro+Oo3bOZPjlDvC6U65+1HDR/HRIRIwOHX8YZq5RGAsncdHSF4zvK51QGFma6IbNZbY1kcdie9AuzyeitEvTRJNhurgqo5IsyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUhRE0dWFOafXzg7IjEpshYonkzGOx8TdhH/wEH9R/I=;
 b=KQKQlVTLIPunJZHHRSd9CwtNhaXstDmHfVebpphEYMglAw7cDkd7/Fhr3pPgDErjwEoP7zyewo46L0wTi0gK6pMHEEXlYxHT7LBtB1vI+S5oE98tUrNMCxjXNNsdUDUP3PzJCD6hk0XUX+lDSWqepoMCpZip2he6gfcBnMjyyyIR934M3qvzQeQCNIyoi8Z1B5nq06J1/HpCdQZAAZjhbM4p9NCOCjkLSqJ+Uqb3hPJkxHA9Lmrq8dI4Vt9Hr+7nkOap/NsjUG0klCGz5UizhrUt4MQ7Ba1bXHnj/gZsln4EzJ6QFdk+Z2fhu2TthNMUxJtyrxNOT7f4jPVBthPomw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA3PR11MB9062.namprd11.prod.outlook.com (2603:10b6:208:577::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.21; Mon, 11 May
 2026 13:40:13 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 13:40:07 +0000
Message-ID: <a998b2f9-278b-4bed-b050-d292ed4c8c64@intel.com>
Date: Mon, 11 May 2026 15:39:59 +0200
User-Agent: Mozilla Thunderbird
To: Ratheesh Kannoth <rkannoth@marvell.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: <akiyano@amazon.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <arkadiusz.kubalewski@intel.com>,
 <brett.creeley@amd.com>, <darinzon@amazon.com>, <davem@davemloft.net>,
 <donald.hunter@gmail.com>, <edumazet@google.com>,
 <linux-rdma@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <horms@kernel.org>, <idosch@nvidia.com>, <ivecera@redhat.com>,
 <jiri@resnulli.us>, <kuba@kernel.org>, <leon@kernel.org>,
 <mbloch@nvidia.com>, <michael.chan@broadcom.com>, <pabeni@redhat.com>,
 <pavan.chebbi@broadcom.com>, <petrm@nvidia.com>,
 <Prathosh.Satish@microchip.com>, <saeedm@nvidia.com>, <sgoutham@marvell.com>, 
 <tariqt@nvidia.com>, <vadim.fedorenko@linux.dev>, <oss-drivers@corigine.com>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
 <20260508034912.4082520-4-rkannoth@marvell.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260508034912.4082520-4-rkannoth@marvell.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI5PEPF00000988.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::80a) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA3PR11MB9062:EE_
X-MS-Office365-Filtering-Correlation-Id: d684eae3-34d3-4cc5-8b46-08deaf62d0a2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|3023799003|18002099003|11063799003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: gJmz8gUREIvYsZpiUQAG+hkTKhVu1Vn/tlj6Y/L7xDAZrtQldgOH99Muw7j6mANGEXVET5oKiRb7wrBFe3FRY7Pop5/JJgFUh1CwMLNAOftVWzwfqiv/8rRpFgULePVVE1EiCg0ePkmbqqkN7oL9CK1QJj9eXv77G1qzc0yLdpdJqvC6ndYA9lzgKmJEAWWd8EKhefjOF0DKRdnLdiFz1esjmTg5HHw990Y1M8dTGRNqu883jBtmYwMzsNSQN1PWkompIwk76XekD+hSu3J+2iUbMFBG6wOagpjpOx0d2JDlLimKjNwPwSl+zLxboYIQlrTNyJCD5dunH41pepKoZHC7BksDHGIxIV7Cj8Fgk+duJDr+T4iK9p93r69uTKNPS2bdodbT1HfeSItMHDYwv1SPhjSyR3KOzlbp+Wy6WczU4ulJF3Z2xQY5mG/zTs0YOBoUdgSdoOeZUB+A1nxOrTCM7corYZBuTztWFJcsnfsz58O1fKDlXQvbWhf+9kxJ95u4H4YC9Cpt6vpUyKVrT20sBm1dThnshEdEDXt/6HZZAKNJkvEtK4tzKDGB1ooi+TUz7oh1u/AlVkS+oiaJkflgCRRM8PbLtG0lhc0ENY/dxyOMNSt0gLBLEa1tLcoPYyWvWmff5iQAAX2NLIvJ41geRSqujeJPtEvIK9Eyc8lAXrQyVc9+vXjaYwNSdPA5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(3023799003)(18002099003)(11063799003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUNNeFQxK2plSGU2N3c5Tk1leUdwRC9QYWZ6MUwzVE9UVmxad1YyTHlRMlY3?=
 =?utf-8?B?VkZ0REI1TWJCZzQ5cE5oYkJHL2phRUpQZXN4K0hDY3crTzFUU3VacDlNT0Vk?=
 =?utf-8?B?clI2RlJ3TjRTMHFoYXBYcGJKZFA3WWhrdm5qejFsUStLenpNQWVrZzZROXNT?=
 =?utf-8?B?TStETHljTElRMTF6NFhrb0pxOXpCRm5hdytWbG1NL1FBVE0rdWdFa0hnWEVx?=
 =?utf-8?B?cllqbWc1VVJ0Y0FYV0FCY2hmbThjeU9yZlVjWVNsQTc3VE1jQ0J5WDFrOFRt?=
 =?utf-8?B?aGEyNFZjaWlZdDZSS21CQndycnM3cjZybWhCTjJwN1A5STBzdHB1Zmt4RDVC?=
 =?utf-8?B?cCswVlJFMlB2SWVlcTBKOG9Db3RTa05SdjBuMm04Um8wNUNGb1Nwb2tBRkkv?=
 =?utf-8?B?RG1xeUFVWm9xOE5qS1hYQ1dTSHFzZmxNRUgzbkhNUkZiOFpiWlcwaXpFd3pz?=
 =?utf-8?B?b3R0ZEdCaFhqMDFBZnhLd0kxandPcENLQklITjdMMHBITFF6d3NzeGZZbGw1?=
 =?utf-8?B?Y1NiTHJXOUpvTlNTVmRSQUlLVEhnS1hSRU5QaXlMVHAxWjVFWDhxQ3pqUjA3?=
 =?utf-8?B?TTJxWmhXMTlWZkNvVFJuZy92Y3JvK3Z0UndacUNxNkJLbGpiZ2tUN2ZYcndL?=
 =?utf-8?B?ZUZTTUlWenAyMzA2SmVNY3RDeVlKSjVPNjdyWjFBaU5xYTBKRnFLa21oalY1?=
 =?utf-8?B?THYwUjJEM05yenMxTHp1dGhxS3U5VjhsZDhtU2dBQVQ5OXo1K2tCaERwaitr?=
 =?utf-8?B?b2ZpWGJSM1RCQ3E3VldMcnZZWVhrZGxpemowcWtyN0tmQ0w3OGlXNEIvWG5a?=
 =?utf-8?B?ZGtTaFJQQ0lETHl2UXpVV2pDQnpwWlNYd2pGYzNtUURncHc1RVFvNk03OUNj?=
 =?utf-8?B?cmkyVklzVTVnQ1ltWDFZNm9QVEsyZnZKenZ1K0F0Uy9OelN1YVJqZXEwTVUz?=
 =?utf-8?B?R0l2dnp4dU96ckh6Q2w0UURNdk4rZFB5Q0ZpT2t2dzlKT1pXUHVzTFZRc0Ey?=
 =?utf-8?B?NkM2RVFXVnRuVnhMcUlzNW1WdysxVDVDaHNRM1N0TzZDVW9CMWw3eXdBai9F?=
 =?utf-8?B?WHBkUGRDR3IzOE1qaTlEd3ZvbmFwS0VONXg4RWYvcjNZRkEyYUtTZ09ZQnhF?=
 =?utf-8?B?djJWN29VOXRnaGFUUzdsVmJoSEJ4VHlBWFplZVdIckRKeUxPNHpOMzRCait4?=
 =?utf-8?B?UlRnTXZkM05wVmhLWnNiUHlaTGZFTUhiaXc5K2lOWktya0hGR1hWY2VYQ1Fh?=
 =?utf-8?B?elBjWTczSDVlMDBXRUJOQURzZUhOZzdCUU85aW1kRXMraXVtTFFFWUlSVGRV?=
 =?utf-8?B?ZDFRckM5bnBJUWhOVjlXSzFGdkVjVUpkaWlZSzRHN0NVeGVMUGswdzdWaC9Q?=
 =?utf-8?B?L2QwL1ViVmEwQ1NITFZSZnVKL3pPclJUQWVOdnFmaVFLQVQ3MDFFMjJ4UnlW?=
 =?utf-8?B?bFBUWEVBYjhuRWtCUW9SSFFrSHBMR29aV25lTXZ4OVRaRHZJNkVuVVRoVnJ4?=
 =?utf-8?B?c2hRbWRnZTUyWVBKY05salI4RHE2dFdpUms1aThpNGZyaGdQRXVCSGR5SUVI?=
 =?utf-8?B?VmZyVmVqRTRyWHZBWURZemJjdFlrV1NaT2VrNUV6Rysra3hWb2VTZXYxUmZS?=
 =?utf-8?B?ZklXdHFPYnpLbkd4T05VQk1mSTFLazk0bEJaVTBrRjB1RURtNkxjTlBGeUY5?=
 =?utf-8?B?ZkkxYVJUcis5QzRCeGZhNlloeFFSd3ppc0xVSjR0OUdlTXg3QmVwekc4V3Y2?=
 =?utf-8?B?bi9hWjlXQ29vbkhNR0F4NXI1K1k0Sk5STjFycERUYTBnL1VNejBKbHpYKzVo?=
 =?utf-8?B?Ty9MZVpHQTdWdW5xaHMwbFNHYmJta09CemcvZkNCWkFBbWgvY1YrdnVLWkRG?=
 =?utf-8?B?Slh5UVFFdkRXaU1xWm9jZjViQW5hd29TUmdEMEljdWlGc2E0SS9oL09QOWtD?=
 =?utf-8?B?YzY3eW5KQms2SmFqcXpkT0owaFQ4Z1N6WXFUYnZLZkhMdTVMUlU1Y21BdUI4?=
 =?utf-8?B?UzBVbko0bzI1NWxtS1VaQlEwUWc1S0xaQ0dhL0MxUVNITU5wUEg4aW1tYVI4?=
 =?utf-8?B?UjhPYnVBTitqbXY3Zks1OCsyZTA4bjdoTTFKcGFTMW4zQWRjdTc3RzJnWGlk?=
 =?utf-8?B?clJXRlZqUDZKUDlXaVFlMUJ3Y3B0b2wzeHRNN1Z3UlJvZFhnWTJLc2lCWStP?=
 =?utf-8?B?dmhHMzljWVFZSmszanMvMkZmSjA3Ukw2YnJidFRpTVZuNUJtc1o1SnZoNU9U?=
 =?utf-8?B?Q2VmMndFR3NWTlI2YVBuV0J3b2JESXprTjRTS1ZDSEtHQkhOR3BXK3ZuWGJh?=
 =?utf-8?B?bUhKMDAzaW1RRmlCSWtwVUVpblRzUUF1akFIZkdPTDJlcXlKaEpDZUdsWWhU?=
 =?utf-8?Q?KTU8YqhnTGtZ4qGA=3D?=
X-Exchange-RoutingPolicyChecked: DqhR09oVMwNF0A5XN7rPs52XEvwA7Q5WialujxoBMZC9du3Tgk5LfwS3PfXIz+QBLL/Cwvs4QH9sZpcxcSC5oiYN+BLhb4Senc5LTsL6007sM0VFQLJobjoGB14zNYn/TnQ71vtxRUZaDPxBOOLb6EjDCPncO+fwVMvoShrqDMphLFARu+2zJ+ShTFUTRaIEDkYeAZ8MReGnKDmb4lhJ4O9emvf1JD+v8/EWBq7D5WPfee1eVOnWoI8xV0kWbPJF/aV8RuAfaF8t8BDOij7c7WQ8L7FxBR5xZlrwibbNISvU3FPN/y6jHNA1j4FcLl1q3n8m88o0KGXbHhDim10afA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d684eae3-34d3-4cc5-8b46-08deaf62d0a2
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 13:40:07.8097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BEQsUg4ew7pchYxDyB3m0R0ABNsnvqDQrgdoIt2Y/2OWRSrNtXbR/Wj4VjPxSyzZEAfLxfX050DsoMjH2GgJ6bCy7dzmBWpgBrveAlZRUPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778506822; x=1810042822;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gj6iXfitaNnOMvmF7mcR7/3loAXMNhqxuPlyrMIju8M=;
 b=AE9hqTyDZID7ST9WlVor9WzVs2+5ZEgB9B6EFCCUk6n8pgc5+kGM7I6G
 79YMScsxD5UpVp9975dGcJdIKyJEZH9NN/yXtFqRuXSaIVXcz+x8D5FPq
 SDp305pRozWVU6SZU8j2xiEP9cqlYlSGoVCMuRBxpk4tO05uK6WnatrdT
 EN+H+W59Xmc7jrxJiNwq4FeyGdpM1tOsykZd4KICTY1oR9w/LeGd7o+5k
 JOv5A/c6e9lSG+EmUe40uJmYCXiZtFAk+3k6tz2tDb/LkgfJRdWyDv/4j
 zUmw8I2aBqX1QC1Y7yd1+5NE7dSBVdik4U80Eq12RREYL2RM91ms15GJe
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AE9hqTyD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 3/9] devlink: pass param
 values by pointer
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
X-Rspamd-Queue-Id: E128950F1E5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rkannoth@marvell.com,m:netdev@vger.kernel.org,m:akiyano@amazon.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:arkadiusz.kubalewski@intel.com,m:brett.creeley@amd.com,m:darinzon@amazon.com,m:davem@davemloft.net,m:donald.hunter@gmail.com,m:edumazet@google.com,m:linux-rdma@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:horms@kernel.org,m:idosch@nvidia.com,m:ivecera@redhat.com,m:jiri@resnulli.us,m:kuba@kernel.org,m:leon@kernel.org,m:mbloch@nvidia.com,m:michael.chan@broadcom.com,m:pabeni@redhat.com,m:pavan.chebbi@broadcom.com,m:petrm@nvidia.com,m:Prathosh.Satish@microchip.com,m:saeedm@nvidia.com,m:sgoutham@marvell.com,m:tariqt@nvidia.com,m:vadim.fedorenko@linux.dev,m:oss-drivers@corigine.com,m:andrew@lunn.ch,m:donaldhunter@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[amazon.com,lunn.ch,intel.com,amd.com,davemloft.net,gmail.com,google.com,vger.kernel.org,kernel.org,nvidia.com,redhat.com,resnulli.us,broadcom.com,microchip.com,marvell.com,linux.dev,corigine.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,marvell.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

On 5/8/26 05:49, Ratheesh Kannoth wrote:
> union devlink_param_value grows substantially once U64 array
> parameters are added to devlink (from 32 bytes to over 264 bytes).
> devlink_nl_param_value_fill_one() and devlink_nl_param_value_put()
> copy the union by value in several places. Passing two instances as
> value arguments alone consumes over 528 bytes of stack; combined with
> deeper call chains the parameter stack can approach 800 bytes and trip
> CONFIG_FRAME_WARN more easily.
> 
> Switch internal helpers and exported driver APIs to pass pointers to
> union devlink_param_value rather than passing the union by value.
> 
> Signed-off-by: Ratheesh Kannoth <rkannoth@marvell.com>
> ---
>   drivers/dpll/zl3073x/devlink.c                |  6 +-
>   drivers/net/ethernet/amazon/ena/ena_devlink.c |  8 +--
>   drivers/net/ethernet/amd/pds_core/core.h      |  2 +-
>   drivers/net/ethernet/amd/pds_core/devlink.c   |  2 +-
>   .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |  6 +-
>   .../net/ethernet/intel/ice/devlink/devlink.c  | 30 ++++----

those are pure mechanical changes, no problem for me
Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

>   .../marvell/octeontx2/af/rvu_devlink.c        | 22 +++---
>   .../marvell/octeontx2/nic/otx2_devlink.c      |  4 +-
>   drivers/net/ethernet/mellanox/mlx4/main.c     | 14 ++--
>   .../net/ethernet/mellanox/mlx5/core/devlink.c | 72 +++++++++----------
>   .../mellanox/mlx5/core/eswitch_offloads.c     |  2 +-
>   .../net/ethernet/mellanox/mlx5/core/fs_core.c |  4 +-
>   .../mellanox/mlx5/core/lib/nv_param.c         | 12 ++--
>   drivers/net/ethernet/mellanox/mlxsw/core.c    |  8 +--
>   .../ethernet/netronome/nfp/devlink_param.c    |  6 +-
>   drivers/net/netdevsim/dev.c                   |  4 +-
>   include/net/devlink.h                         |  4 +-
>   net/devlink/param.c                           | 32 ++++-----
>   18 files changed, 119 insertions(+), 119 deletions(-)
> 

