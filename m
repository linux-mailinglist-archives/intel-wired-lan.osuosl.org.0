Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA9D899AEF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 12:33:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E64D82279;
	Fri,  5 Apr 2024 10:33:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1GHkOX_38B6P; Fri,  5 Apr 2024 10:33:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CD038227A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712313194;
	bh=gHJq7cgFjMXn5d9VlWjFL5c3EDjnZN/xA3r+uAqrJNw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jaGx8rbaDatzttX7Kqbe4hKwMS/bU4q9XIHyYUwPaLKk419pLRMkSke74JykAIEME
	 23dzS0Ocb9QUU7X/uq2/rVY8KVbUUnDSbA2t/atq7v12896ZZ8TRneJM1pnD4kSIzR
	 vWyvQfqr1/ayileckVKsJ5zgK+XzT/7q0BpVETXIlBY25f6xrsoeWblsWg97xjJISD
	 QyG13MdAgHElSh7oQ7YvLQe5xnWn754OFfG4Qx7sqyPpcqpHuwJ4YoySr5WVsxzeUR
	 qzgE6XgZT1wKuNTnMDxEPB4kwrkusjBplhANCbFbO3a7gxeMbpF7zNOHgS4yVK3F/B
	 0c0LeQZCVZA8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CD038227A;
	Fri,  5 Apr 2024 10:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBF311BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:33:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D391640635
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:33:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qu3B6gFttWmI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 10:33:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9CCF9408D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CCF9408D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CCF9408D5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:33:10 +0000 (UTC)
X-CSE-ConnectionGUID: MUw+SZNGSSaREJW+acSMfw==
X-CSE-MsgGUID: +rwdloTJSbeB8yZWUTd7eQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7482319"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7482319"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 03:33:09 -0700
X-CSE-ConnectionGUID: bG3PPeqSSA67GPqmdxnekA==
X-CSE-MsgGUID: vGtquPqWRt2qYLRPiIiByw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23593634"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 03:33:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 03:33:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 03:33:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 03:33:07 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 03:33:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bzRuSX03pQhqkS3pcGJh/rANX6pUeFv0tWwMfRlEeSkh05mRe6hBsWOaGr9ejkegaG7mJOWD9yS3A1+NUXjkHw5euoTRn1yFeWGomSF913YmiJ5f4tnNdcS8HmqXc7y1UOkc1tW3ctwNdyYAqp3BsD58vn9bUSFyApsyTuea/IIyuDd3wB82dge8el0OsxR2AvzxlbFNfCMUz5MtDF3n8iiRXp46lp6m0vsjZVwLmJc9nvj+7n6CiQ9OMclhRkbXVCJBfObcx7PGgCdJgFYMegaH+NKPVsXrTYUBg01O8/FaqOl7wPc6QCw4OYno09ARaHuJUwx0k5i9CyeHz7x/xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gHJq7cgFjMXn5d9VlWjFL5c3EDjnZN/xA3r+uAqrJNw=;
 b=NoTEq7KEG8VaBI8SDEhtIbrT8MeQ6UWyEL1BKSHX7fyplUdRWGsIWa4mz0RxPjtUYSW2rwe0zokDAGEUzquj2+3QErK5V/cIVjO7xegL8nrZHN1jer7bAuzUNWC3o0jxR2zLF0RdBsiwzncYK647A1gauyYbq3AG+czS7kPr6EIIR9uEftuQNonTeqcOUMCGV+QheCPLrNvZp9QNrZ2XHq9iE3z8kxUDC3xnqUFF3Wyd3XUcQEX/0dSV7JCRaCfOHmv0oYhIzFNBQzQelHZ6atFsPaAWmf2zRj6Tgzrs50n2ZCMf6xTVEjD1n+BJYVLno6Ua1SHbkSCAIp/CAj7bYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CYXPR11MB8662.namprd11.prod.outlook.com (2603:10b6:930:de::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 5 Apr
 2024 10:33:00 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf%5]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 10:33:00 +0000
Message-ID: <45eb2bf1-e7b0-4045-82b3-93b9f81b7988@intel.com>
Date: Fri, 5 Apr 2024 12:32:55 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240404154402.3581254-8-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0313.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::11) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CYXPR11MB8662:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GAcOweLQl8CNAodVrTIAHOaqxfo4CN11YcvsZIdTR0eorFewHtmnvo/+Boh1dmDovJE1J4EAwRD7RxHVEw5Q6RWVTX0hL0zk2iXYlUCSKMFhaLs8hUp8gHoxSo7iNYyXj9kfz8vzj9UBHdLZhr2VUVd3eSIGrXtSHKYWBzOQ1xXZnQMfHGrjGQaQ5LDpSv+DJG/ZIfcqGQ23Bztw8Uc9KTxPvHoCqlic+SmtXLSzkcatScP6lJCed3Q64qG71UErvRWi1ZDJjkbTxxswn0kD+Bax4AD2BAfz9tPH9RggB3qQx8gr7DGikqi4XodHZr8RwDyjnrqzpU9Tv4WTyhtbJ0XhTrmOPfmS0TjV3Vs8s4L+AgNd6Lik4/TL7+JROkFM4RgLcfjIyikO/4z9d6Op60UTQXtrYstAUz7wp8XzWMvfqB8ZXE3EEVioXA6RdIFoItGoTebjn5zAlPIOCmyO68x8Vo4PwvxG048Y8tQUwyRXUOh23JSN6UbFCi4LqnZ/MvfTUFrLyL89sbXVti9Gm4MFSdtYtHYEc6j0F2ybEQ0PliEdxDWjSbMI5cBkpher49mKcQykIbntnQpj+gnRSN2heBzLvXDwpSJidu460oku2ahE91RGFYSC3f1PdktxXOQUy835K/Z/IGSdYDW7IWZ+0E5oCALpKCLXt9YWzUw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXFSZ3ZhNHFwb3piaDBhdWtLWkxOdTd4d3BLaWdocjl6Z3VQRlBUUlEzemtR?=
 =?utf-8?B?VWJXVElFd2g2Sndpa1NCU0VrQ1NzbThERmtFZnVPWFFlMG9naHFldzNJOUdC?=
 =?utf-8?B?VHlvb2xQVTBJYms5Skd0RUxLUlVqcjdxNExuYTNnNzBrNzFNKzlRckJ1eThW?=
 =?utf-8?B?Mk9ERzg1QWpuYzhuYnlhcitSZ1pvemkwSjhCUm1uM2tVMzFtWmRPdU5XNVgv?=
 =?utf-8?B?bHJra1VkUVJ1WDk2eGxLVHNySjZ5bVlhS3p2MWVzcllsM0pwdm9Ec2lPNDVU?=
 =?utf-8?B?YjFKcGQxMkwwVlFiVnZQZUxudHBPTzRGSUptejRJOHYvTjl5QllzVXJzdVFl?=
 =?utf-8?B?bU5NbUc4MDBoV1VZTTMrWW9oeW8xR0dnY2J6SU1MTVJUR3lwb2tUT05LUjR6?=
 =?utf-8?B?SXpnOGRZdDgyU28rWENLOTFGTzZreWV1eE9nR0lvK2dVWTVaUE94TkJra3Rl?=
 =?utf-8?B?MFlsQzlUd09vRjRBZUlob3hmZEVlVEIyZVFBOXFRQjAyN1Q5SEpkOUgxa3Js?=
 =?utf-8?B?KzZ4ZmoreGh0V3RvZHhxSGtHU3R2S3Q3dnlBcGhML0NIRFBBNE9jekRlOU1Y?=
 =?utf-8?B?Q1QvUnUrQ3E5alNoVm9RTm9rR2Y0MVJXMTRvbkowTEtRcTV0SUVzTTd1VUM4?=
 =?utf-8?B?KzFzcnI4SEx0VEpJVDRZNXd5RkV3cnphajlqZ2Y1cTh6a3JSeUdmaUVyakxC?=
 =?utf-8?B?RWh6cTNaVkhOeEtLK2R2MEpTQWxGWW01dFJnOWxMYjJyeTZiUFFxYkU1dkJR?=
 =?utf-8?B?WDJXUEtXdWlLOFJGNGExaVJ6Q0xjTXNPU3BZc2R4VjdrUnFHSlp5VGFiNXcw?=
 =?utf-8?B?WkdOTjhGTzZudDIrYjVRUm1mM2NmTnNtLzZlb2pXaTBQME84UmpISGN4N0pq?=
 =?utf-8?B?NnVrU0tBK05yS1ZkQmE3YnRzdUZCQyt5NTFkWTdld0txOCtydTRSWlppWEFL?=
 =?utf-8?B?M1BjKy9aOXVySXlOQlZoT1hhYXNNc09Cb3N4R1VXRjg0bWo2Y0MvZnMzcmFD?=
 =?utf-8?B?SG9TQ3JVT1pET3NEbk00SGQxTnAvWCtmWWxNTndaSzNOcldmdW5BWXl4T3dB?=
 =?utf-8?B?Q1BCVjBvQ3d6aGZKZWQ5OGVTeHVnQi8zWktWK1dwNzlDNHFzaUJTdkltclNa?=
 =?utf-8?B?ZFE5dlZmeWJ1TXJVNktYZFpPK0xEcXh1NEdpL3prK2cwdS9UdDBFUGJvTk04?=
 =?utf-8?B?WWtMVm82NVRxNWhEM3pKYThNUGdtdG44WW1ESTF0cGlUTVd0ODliUHhvNHNu?=
 =?utf-8?B?OFNLcG44V0pUSGJybkN2ZzdUVERvMTBLQ2tjdHdkVmZQSW5CMUFENC9SMjlx?=
 =?utf-8?B?Ynlub2dYMnA3dzVQbGNxYy95RlZqSnFFc051dmRLSTBtWENMN1Q5MjdLZ0tx?=
 =?utf-8?B?UndBR0RWejUxNWl6VTg4ZENCQnRrMXN4SVYvd3UyWURoRFQwdElRQ3dEMDBs?=
 =?utf-8?B?dUVHR3Q5U3RBRlo4K2N4UmlvcGNDQk1udzhGOFFpY0xMQXA5Q01ZNlF2WURJ?=
 =?utf-8?B?V3JvUGRpYUJJWWFZZ25raTkvK1djWEx3UVVoMnBZQXVqN1BXR09FWkRGUXFH?=
 =?utf-8?B?VTc0bkZZYVY5eXJmQ0YzZnVuRTI2QmFtUXhGcnI1Y1V4aFd5a2swYUsvYXVC?=
 =?utf-8?B?b2k1RkVRZzdFMjlFS2F1NnN0RXdPNFR6dVFFNDBpbldPbTVYTE4xVk9BeG5j?=
 =?utf-8?B?V3VzTHBqbUgyajdYMkxkOEo3aXFKU1RqWmJxTG1Cc1lJNktTL2FOVnc5S3pM?=
 =?utf-8?B?RldUdDdpWGpkNkJ4SE53eFhnVTVtYTltdzVXK3d2azNMOWpEajNqMTBOKytC?=
 =?utf-8?B?ME1DL0txRWV0Q0JMV3pOMUZUazRCdHMvb2owaWRDdU5ubHJ4ZlZDVWlaRmJ1?=
 =?utf-8?B?QkZzcWc2SWhyMjNjWExuUWVmeFZPU2ZZR21nYkRhaVk3TkRZNUswZEZSekw0?=
 =?utf-8?B?VjdvZ2czbVVleDRqNVVRYk50M1JIQnh1RGo4SHM1cWYrVjRHdis3WUVSczlq?=
 =?utf-8?B?dnlFWm96WlRZME5sNCtSdHlObHBEcjE2TUpXNlpVT0tPUEhkcGVOdHhlUFEz?=
 =?utf-8?B?VGE2SHA0OS9yVnlEMllXcjkrMjVVVllYY0lXTzYralU5R1RENDZKOStZWk5B?=
 =?utf-8?B?QmFQaFdBbzRtTFlNRFJTR1cvVGxZWERhUEdmQThvTEhMbklGdzdLSDZra0Vk?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6af062ad-526f-49e4-c7fb-08dc555bc463
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 10:33:00.6613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QGKESn/lpiroR7xcpBtALyEOnhzU8HHw+gy7Ab5Oi9FPESE+Cu6U7q/uvwlhzMSA/zouKQEJi0BYJQtiBLSnAaNkjnMXRkixTJxkaMWuV40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8662
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712313190; x=1743849190;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O/XRHVWA1qtz5Clwi8vv1le4Z6w0GyN3nFkNTtp55U4=;
 b=BAonzL0xYFwDNkk98NTtp+ywguBQPxaOWC2FfjPKcG3bsmD9kvNvudBI
 410vgQNgR/Xll8qi15JIZ7mWYk5LcVjDgC0qYHRoEGYMAMInD09O8iJXz
 PDQRjKXRld300P1xpCW8E5QN+2qTjIZoPAR8WOw4hGbRCkqQJJkaGchVU
 vLQglk/rP55qJy76C7QKy6fAN18H9dkIRcb7WCKg/suFeRTx6UTHSf7Kj
 GMuMYG7dgkI7qmodYNTOpUM3jnRQFOPQUgejSiHCYQBGcdyDPxfr0A8WJ
 LchgNTkSfnzHkNHmDvp0+hQgHbQOimnTeBquuK/2SCpakF2JuHXOcrKsA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BAonzL0x
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Yunsheng Lin <linyunsheng@huawei.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/4/24 17:44, Alexander Lobakin wrote:
> Add a couple intuitive helpers to hide Rx buffer implementation details
> in the library and not multiplicate it between drivers. The settings are
> sorta optimized for 100G+ NICs, but nothing really HW-specific here.
> Use the new page_pool_dev_alloc() to dynamically switch between
> split-page and full-page modes depending on MTU, page size, required
> headroom etc. For example, on x86_64 with the default driver settings
> each page is shared between 2 buffers. Turning on XDP (not in this
> series) -> increasing headroom requirement pushes truesize out of 2048
> boundary, leading to that each buffer starts getting a full page.
> The "ceiling" limit is %PAGE_SIZE, as only order-0 pages are used to
> avoid compound overhead. For the above architecture, this means maximum
> linear frame size of 3712 w/o XDP.
> Not that &libeth_buf_queue is not a complete queue/ring structure for
> now, rather a shim, but eventually the libeth-enabled drivers will move
> to it, with iavf being the first one.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>   drivers/net/ethernet/intel/libeth/Kconfig |   1 +
>   include/net/libeth/rx.h                   | 117 ++++++++++++++++++++++
>   drivers/net/ethernet/intel/libeth/rx.c    |  98 ++++++++++++++++++
>   3 files changed, 216 insertions(+)
>
[...]

> +/**
> + * struct libeth_fqe - structure representing an Rx buffer
> + * @page: page holding the buffer
> + * @offset: offset from the page start (to the headroom)
> + * @truesize: total space occupied by the buffer (w/ headroom and tailroom)
> + *
> + * Depending on the MTU, API switches between one-page-per-frame and shared
> + * page model (to conserve memory on bigger-page platforms). In case of the
> + * former, @offset is always 0 and @truesize is always ```PAGE_SIZE```.
> + */
> +struct libeth_fqe {
> +	struct page		*page;
> +	u32			offset;
> +	u32			truesize;
> +} __aligned_largest;
> +
> +/**
> + * struct libeth_fq - structure representing a buffer queue
> + * @fp: hotpath part of the structure
> + * @pp: &page_pool for buffer management
> + * @fqes: array of Rx buffers
> + * @truesize: size to allocate per buffer, w/overhead
> + * @count: number of descriptors/buffers the queue has
> + * @buf_len: HW-writeable length per each buffer
> + * @nid: ID of the closest NUMA node with memory
> + */
> +struct libeth_fq {
> +	struct_group_tagged(libeth_fq_fp, fp,
> +		struct page_pool	*pp;
> +		struct libeth_fqe	*fqes;
> +
> +		u32			truesize;
> +		u32			count;
> +	);
> +
> +	/* Cold fields */
> +	u32			buf_len;
> +	int			nid;
> +};

[...]

Could you please unpack the meaning of `fq` and `fqe` acronyms here?

otherwise the whole series is very good for me, thank you very much!

