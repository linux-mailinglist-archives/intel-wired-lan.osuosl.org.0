Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AA9905EAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 00:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AC3E608D8;
	Wed, 12 Jun 2024 22:43:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kd47ECLYCLMS; Wed, 12 Jun 2024 22:43:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E234608E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718232198;
	bh=8wLAguZffk9hXWRl9rkF3p/Cif/zwEOjGLU9hW9HMLo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2JyQ6WnPBsn3mCWMPDxspizIzMqawJ9U3sBJ1mdj3c4D4Kw6c14LVP2GEcygoHusd
	 sbbUKmLEXnxu8Hvnpidiod7fXQzdPFZYaKmu9jj8RAOzP/MUN180sytETutIkbX2T3
	 KBEcyaRZHCOi7L/NG0tGepxeAaF2nc8Y+oRdAHxWnG/HAt5fMSHayU65bjni10tnPY
	 QgW/zxCywRJsISRkMgbx/Ze2b/0DwL0ERqnJ8+TdfuMtmfeisZ3oe83zAKRjiyijCk
	 I5hCbncqcwGMVf6BwT3+R+em6iCUP9+AAFdLXH6z5E+7eOXNmvdfHvC19xofjRhU7v
	 t/ACCqjWviGtQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E234608E0;
	Wed, 12 Jun 2024 22:43:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAEE91BF365
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96125400AC
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:43:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vjwG6MAGaEd4 for <intel-wired-lan@osuosl.org>;
 Wed, 12 Jun 2024 22:43:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6BF9640025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BF9640025
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6BF9640025
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:43:14 +0000 (UTC)
X-CSE-ConnectionGUID: 6vJkeWgMTr2WwbkLETnn3Q==
X-CSE-MsgGUID: zJnZ86XhRpaRmeidlaWuJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="26444606"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="26444606"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 15:43:14 -0700
X-CSE-ConnectionGUID: O+mdz4MkTSOZrby7eHku+g==
X-CSE-MsgGUID: MqBkXvgYQDqpk+APshQqsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="39854354"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 15:43:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 15:43:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 15:43:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 15:43:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mjROBljnx7anJSvaW0RD5tMklDUqimut/9RbM8ePKBTFH7DS5FGPwBOvQhZsYMql/m4s/JyEyOpYEoIjRaxPYjHmYUtq218QGWM9/WovpUQjWbGAzPhMt5vUmPzafem2oNuD6y7Gw0HQ9gCn1lFdw8y3iLgTxW7/mIgZVTCTkwDJMAvpVdSOI8oxqY8d/1Kq7vHRMFJzcsqO0s8jhSPeqmwwBkxqSKePo/cgGPyw1LgNtn82bysU64vDvJuScpO5vh4iYE+mmmGAvOvbMAqERYt5CoHk+w93IWwFYPk3389CWQuI1nJ77Rz/lNiSBYcEx6Ko9+wAaYXWEBJhw9E9bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8wLAguZffk9hXWRl9rkF3p/Cif/zwEOjGLU9hW9HMLo=;
 b=iBXSXhT4iCbY7NmlJy4x4lh7H20hLiTocP0ifwdEh5x6S3YLsQ3bIiAFyuG8gpj61FN+XYRtI0bMSnMksYA37JEJ5utRoXdpT+KHerM8+w2pmpjP+IbzYfpadO6gRDEdZPMWIE+DqzmK6x55ZO8Yo2Talpt12GDpoBJYWJ0PVR37ziFsSwNjJbX16Lg31gm0ScL4EVJul/7yiHPdsVbLLlSgArcGOUnmKRQ9YcgPN4LMm/423VfVqLp/r6YOLJITxH2ndJ31BF70DBg+ZljTEakmTFH6GXDJX2xKCLdGRtZh8qxz+CfhIVbyohI069Vs02ZZ8HZTIzAdWWAXBDdUeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 22:43:06 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7677.019; Wed, 12 Jun 2024
 22:43:06 +0000
Message-ID: <80240a36-dd1e-44e4-93b4-6eeea95ce9bc@intel.com>
Date: Wed, 12 Jun 2024 15:43:05 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-8-aleksander.lobakin@intel.com>
 <c4967261-b461-41af-bce4-de54e3538c9c@intel.com>
 <f65c89c4-728b-49a5-8e78-7c211896cf5b@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <f65c89c4-728b-49a5-8e78-7c211896cf5b@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0341.namprd04.prod.outlook.com
 (2603:10b6:303:8a::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW5PR11MB5860:EE_
X-MS-Office365-Filtering-Correlation-Id: a3eafdcb-1399-46a6-4ef5-08dc8b3106eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|366010|376008|1800799018;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N243TzlCNGRYWWZzVTE4SGJFZnZzTlVNY0FOMThMOUhVTVVBWWJiTmU5NUg1?=
 =?utf-8?B?SnRPNUlna0N3UXdCTTg0WVdKY0NKeFd0bklzdWNlYm1iT1NZaTUvOEtKeE5F?=
 =?utf-8?B?MzVoZmliYWJjVExQbmE4QU9URkozTlpDaXRrWWF4TTJvUVQ3MkErVkg2MkVn?=
 =?utf-8?B?bDRPekh6cGh2VjBqRHN0MmYxZjlrd1ptMFZtbWloWnZXZVlVMG82aEpCTlNM?=
 =?utf-8?B?ZG9kQXo4aTBqZmZKTDVuM3lIMnAyeGx2RzhaVW9IVkYySXNjeVlSeEt1Y1Vm?=
 =?utf-8?B?ekVPT0VPQnZSam9taEFLL0syUXZqNExBb3hzQ0llZnVSd05JU0VSVlJiQWpQ?=
 =?utf-8?B?VW5iMHNsOEw0dnFZS2QxZkFLR0x3UUwybnRTc2ozRVNDRmhVUUNvYmFydnlh?=
 =?utf-8?B?anEwZk0vOGpzbUlFcFpwK201dXlWQ0ZSVnNYbHQzRkVDcWc3ZXhrU1hNQ0Vo?=
 =?utf-8?B?ajJ3a09iLzFqb0pJYWpBM3VGYjRrbkI1ZXRpaHMyN2FVUHhvaVNsMWJKQmRh?=
 =?utf-8?B?NDZQdzVyTUdCZG40NGNKUklzOUZQa0t5UGlDUTlBRnprSStxT014MkdnSkxy?=
 =?utf-8?B?VWlvQU5FNTVOb1JMazJDMDBSYklEaEpoUHZiUWxNS3NlYk9TVUpkWEt1bGNh?=
 =?utf-8?B?Mkp1ZGR5cm9vY1hEZ0ZHMHNabmU2N0RacUw1TjRmT0M5NlVsaTBhZjZSV0M5?=
 =?utf-8?B?MjI4RElHd0VhT0doazkxZmVpMmpCVXFKRGMxWSt3V3QvYnRtWFVzbkl5Y0Za?=
 =?utf-8?B?V29qYUE5L21RL1pZM25EUGpRNnFnVFYzVHI1L3hvcjlaeFF6eDVZUy9BVUpu?=
 =?utf-8?B?eG9jSUN2Zm1TL25sMzJGU0pKV3V2ZkJaYStKNy9vd21lMkZtZForRjA5MUg4?=
 =?utf-8?B?clZDWElZamQxQWxHUXRzdHppaVozYXZMMnZ5SDRkOTJnSm5qMFQzMGF0alA5?=
 =?utf-8?B?dm1WSTFYK282eXVLWDROL3pqalBCMEVmU3hXYXZtaW9oNTA0aVFhYStNNU1R?=
 =?utf-8?B?WjlZdURVZGN0QXJ0N3JsM1NlRnROQ3Brb1J0OTE0RmJyZGdnNXlCYUFMemU2?=
 =?utf-8?B?amhkbzJ0VUUzT25yWkNvV1JPeS9ZV0NhL3FnQmE2d0xqdUppVEdQQUcxUStS?=
 =?utf-8?B?QUFLeG1qWjNnODdpK0JRZ2hTdG91MnhUREVZSnUzS2J5NTgvOU1Bak9Jb2x2?=
 =?utf-8?B?V21ESzZONkFPR1N4VGpEN2NnV1JoWC9mUy8rdDBUc0tYM1RhOHl5U0JzenZ5?=
 =?utf-8?B?Z044RmFOdEttZFVMVFFDdFFIL2V4RHZNYk1HUzg0aEpDT093WGtwVkp6WkV3?=
 =?utf-8?B?WkNLd21WMHBsTFV5YTVSZlg0MUpCQnF5QWRIdHdWYXI5akZ0aUNjMDRvQ3NY?=
 =?utf-8?B?QkhCNGtvQmw3aTVYZDlhb1lyamVyOGRJTWNqVCtWVGtwNFoxa0tua3c1NzVk?=
 =?utf-8?B?czMxU1VXUVFWYzJXSlp4T2tOYjcyTzF6VVZuemdoUkl6VC9PcVc0Y1Ixd3U1?=
 =?utf-8?B?Qk9hQm1MQkdyM3lHcTlkenY4OTgzOVF5RXd6SmhRVE1PRVdUaWNTY2g0R2d2?=
 =?utf-8?B?MDBBR0xHOFFubzExSzV6NWVGZ3lwMlNzQVZWSUoweHJqZ3QxRWhDamczYjRM?=
 =?utf-8?B?RXR0ZitxRHFmU3lzRWxldFZGczFXaUVJU3JFUDRoaCsyM3RGaFJlbXhtUnRZ?=
 =?utf-8?B?ZnlmUWhkOTlVdWdwbFdLYzIwbVhSc0ZIbHJRREZvY1BPTWNKVEJ5cWpWS08v?=
 =?utf-8?Q?3FrIA1WQNFJ8lxFf+Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(366010)(376008)(1800799018); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmFHWm9IbUpsbk9LeXBGcU8wU2dkTXNaa3VQaDFvSEw5cVdmM2NTRkdQbUxs?=
 =?utf-8?B?LzNUV1UweGVtRDhTUkNXdm0rZTBpTW9iYkZMZ0xEazRteUNVY2dlRDUyOWZF?=
 =?utf-8?B?N1p0dnJNay9mNktHNytWa2RBZm5VTGZQYXFFZjJ0bXUxdURlZ2MzRUh6Sk51?=
 =?utf-8?B?OXdhQ0NwQmxYbUlacG9PNVVBQkNhRkdqT0lXWlAreWJkSVZFSWNMNnJiaXA2?=
 =?utf-8?B?dmR2UmdSTVl6T1hTNk1UZ254Y0F3TDM1SWF6OU9nWWZ0dW5URzZCdXBURFdS?=
 =?utf-8?B?emJLcWpSWXNDcHJWSlhlczUwaXo3bDBWM1NLWlZMSmM2dTV5NHpkeUx0eG11?=
 =?utf-8?B?YkYwRXNnbFZwVzVEd1o1Zy9IdlJnYzhCT2hISVcvN0d3MjhpUTdwU2Z5cWQ1?=
 =?utf-8?B?ZzdTYzhUWlJQejVibWJpMldNdldDelNuTHdFdE1jRk5Iek1DaGFCVHlyZXdh?=
 =?utf-8?B?MkpTVHc2K1VwQ01vK1hRNEhMRnd0K0xXVXNSNFFoanZBa2J4YWM5RFExU016?=
 =?utf-8?B?dlZVUm54NS9LZ0Z2ckFiWmYxa09Jc3B5UHowNjlYL0k1WUNmS3l4OFhoNC9j?=
 =?utf-8?B?QmV2bitaS1JTTnRtSUhGTjdOeXhxNXB1MFNMTmlRUk5MM2lHWkFsTGRHc3Z5?=
 =?utf-8?B?dFgrL2RMQVc5ejRlNFVNRE9SZC8va256QmRuakpKQXBBSVJCcEM0T3c3VnM0?=
 =?utf-8?B?VXRaMTliczk1aExlVjNDbmZkcmg1NUkwbXoweVpCSDF1UFdRREw3aklPRXc0?=
 =?utf-8?B?T3Fna0NvMjBvb29MWEg3a1EzZ2tRRHR0RkZLc1E4YklpU0ptajA3UFlKNzRm?=
 =?utf-8?B?d1M0SDQ0dVpzNWNDdS9qaEl1VU4vNThaNEZqR2Vra0hzU2Nob0lGejdHQ09O?=
 =?utf-8?B?b212bE8zRUtNcVhWZndSL0lYVmlKUnNta0phZXRUazRFaGJ6NjJaUHNvRjla?=
 =?utf-8?B?MDBYaXFYcGdmb0xWR1hWVm9yd0hvK0RCWkp1N3NBZ25WUXZQeG9VUVN5d3Ez?=
 =?utf-8?B?bnJ0Q3VSR3l1aW5lOW9hVHJ3aWVkZTB0YmVxNE9UNitwcFlRZ3lnT05UN0RN?=
 =?utf-8?B?aUphSVRjM3BRZThVa1Q1S1J6SzFzTGFEWVoyUlBWU2YyTm9jTnRNREtSUzMz?=
 =?utf-8?B?SUhwaFhCVkV4UXlqRS9KUW9pb1Z6S0Mza29IY3hUeVZhK3BvQXdQbnlwaE1s?=
 =?utf-8?B?V2pxdGZoc2Fwei8yZ1Q2WWQ2NlpDcnBVM2JNOUhOQ0grR05MekpwQTJkMUNp?=
 =?utf-8?B?NGIzd3o1eUdMcWpOQm5adzdhbSs5Y1BHakNyUVNuL3p5YnFqWHB6a1B3L0tq?=
 =?utf-8?B?UzhyTzNORDcwMlVRUzYvOGtEZ29qNTBEbGNHZ1N6MWk0b3FEeExqU1lVbitT?=
 =?utf-8?B?akFmL2N0dHJWcG1iT1Vld24zNzgveWozV0pmUTdoQnUvS2o4M2V5UXgxNXRz?=
 =?utf-8?B?ZDBBWWZIaU5LNWtjQUtTcXQ0ZXlzbmVPMTFVemxEVHNzOVg4b0ZuUG85c2hO?=
 =?utf-8?B?Y3Y3VkZWNU5wVjIxeVR0YjRlNzRzbTlMaWJsamFzKy9SQkxod00rVUhhY1hJ?=
 =?utf-8?B?anF6L1ovTVQwNUkrWENuNXFCeHB6MUphYTgwcjREbHptZnF4ZU1YN20zS1Z6?=
 =?utf-8?B?Y0ZHVFhRWlBIbVVMY0RkYWhPVzJHL0hBK1NVeThodzhMWHpnU0RNQkhzckZR?=
 =?utf-8?B?MHl0aHFxNVJZYzdhbmVqQnJIOGpzeTArODVmNWVOS2NBWUhXTkZoN290ZEN6?=
 =?utf-8?B?VmpoR005bXl5U0RESDlSaUdnY1pWenI5eDdJTFNtMHpYVTJrd1lqaWQzOHpz?=
 =?utf-8?B?YjJ6WjM1WTd6V3hkU2Q4cFhlcmRndlp6c0F3eFZhN0ExbWtBalNCS05DbE9C?=
 =?utf-8?B?Vm9kQXcwaHNVaE1EWHJGS1c4U1ZqMmVXbzBLNmlZTjFLL2tZWVhLRXZzNUF2?=
 =?utf-8?B?dVVIQ0ljdmIwODVDQ095bUdYVTNuek1FYVp3d2Qwa2tOWW10SklQK1hndDhx?=
 =?utf-8?B?cVNvMldwN25EQk1ibnk4WU0xVzlQSHhJQVNKVVo5cDhWdnpkSXNNNTBYaUFC?=
 =?utf-8?B?ZVYzaXp6VzJKUDN4RWpBcmhjdkZmdkNrb0dnY0RqSU9iQk5TYkQzYUQrTFFL?=
 =?utf-8?B?T2VYOHdoRlZDNThhRTh4ckhrSUF0UnRUYlBkQVZZbmJmZHQ1ZVRFeGgwUm9V?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3eafdcb-1399-46a6-4ef5-08dc8b3106eb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 22:43:06.6135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: As1Ls834DD2U3lSg2zSt6g8aq3rAfcEZM0sUKPzWpIIt0PZKEXYLKGHOLAJK29+FYCvxKpHLEQ2qoQ71weAnelMuRIsxoAJ0LLL7SuaXbOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718232195; x=1749768195;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ec6TryqpP5h4lBvmnVlQawsewXAay0cBUbCpY4RFGuI=;
 b=OgGiW5ixNMoW3etdEsnLFKjuZimkA6lBrzTSmm6vlmq2eIr8aMdKvXZK
 yyP60bWIuA6kE69uqUHJXRM7EJ4cgdZmjM2mGgubPsOTeG66eqU1T1L1c
 cKPUKX1xo0GAdbUSe5MODamapQFv88hNJ4IjQvmiFbM+YGU1can6NhwPx
 iY7ihk2fB2UUPWMLbHlVi1Y/oUQFpw8AunXiZHNJEuWrZlrKesKe0T6G5
 Vc3QtVU8UKa0VmnugBk4kgMMXkT3Kok2/GBpArwuc1e82efpmhLy+4QL1
 mdwOxTNwLDNEP+g18GkCkEU2y8BVYWX1skHRY2f937EUjmCHlpQWTV5IB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OgGiW5ix
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 07/12] idpf: compile singleq
 code only under default-n CONFIG_IDPF_SINGLEQ
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
Cc: intel-wired-lan@osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/12/2024 6:15 AM, Alexander Lobakin wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> Date: Tue, 28 May 2024 17:47:32 -0700
> 
>>
>>
>> On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
>>> Currently, all HW supporting idpf supports the singleq model, but none
>>> of it advertises it by default, as splitq is supported and preferred
>>> for multiple reasons. Still, this almost dead code often times adds
>>> hotpath branches and redundant cacheline accesses.
>>> While it can't currently be removed, add CONFIG_IDPF_SINGLEQ and build
>>> the singleq code only when it's enabled manually. This corresponds to
>>> -10 Kb of object code size and a good bunch of hotpath checks.
>>> idpf_is_queue_model_split() works as a gate and compiles out to `true`
>>> when the config option is disabled.
>>>
>>
>> Could you clarify why we can't remove it? Presumably there exist some
>> users out there who depend on this (and can thus set the CONFIG option)?
>> Or is it because we intend to support some hardware which only supports
>> singleq sometime soon?
>>
>> This is a huge improvement over leaving it as-is, but I do wonder why
>> not just completely remove it. Its also a surprisingly small patch, but
>> I guess thats because the singleq_txrx is a separate file.
> 
> I'd be happy to remove it completely, as it has bugs, makes some
> optimizations more difficult to do etc. But I was told there *might* be
> real users for it, although with no particular examples, so it can't be
> removed. Maybe Emil or someone else from the idpf team will finally give
> some ¯\_(ツ)_/¯
> In general, I have no idea why one might want to use singleq when splitq
> is available: it's way faster (one queue is strictly RO, the other one
> is strictly WO -> better CL usage, less descriptor reads and writes
> etc.) and more flexible. XDP will be available in the splitq mode only
> -- it would be hell otherwise with no practical benefit.
> 
> Thanks,
> Olek

Makes sense, thanks for the explanation.
