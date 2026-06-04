Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CFK7EZHyIWo6QwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Jun 2026 23:48:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D09B643ACA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Jun 2026 23:48:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=uto6yvLJ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DFCB4EEE4;
	Thu,  4 Jun 2026 21:47:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ozULYSmsYcen; Thu,  4 Jun 2026 21:47:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57D514EEE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780609676;
	bh=zHv5GSXojnSUp1XeQLdeerBfm4B/q8Lh788jtfoTiFs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uto6yvLJCg5XjyFS02T3A31OjhNY08ow/JybSq7J41I3P8gxyxREmqckAZLsZ30CB
	 jQfPw0RYcLrXeDVWEhrVhQ6WemqA052OB7LAR7CEIRalg+fLdZiaL93Ep3KTD4YllJ
	 iPpNExFI8sh6Haf6Y16PxjtviyydTmzHDj0N3n7ZQUpyCcpeyAcZ3VubtwNAsn5SJU
	 HGIW/HiKOrMkrb1eHzwjo3r2emRj+QvI7jDx0dWx8QLUrUG4G6B7dnxdCkUo3Hbf1Q
	 zM3MVMS6MvcF5pPuVx1Xd8rjkuwZXHudta5ix3CY31pKIdESTQQuiMuOLrmwoi3yQr
	 Lk+OtcY5SRCVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57D514EEE6;
	Thu,  4 Jun 2026 21:47:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 48D95DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 21:47:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3AF9B85850
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 21:47:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hKCEzeXmuF3T for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2026 21:47:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3CABD8584E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CABD8584E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CABD8584E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 21:47:53 +0000 (UTC)
X-CSE-ConnectionGUID: c+3smPnLQVy1M40B9KNnYQ==
X-CSE-MsgGUID: UxHkAHbmSuSLTywQepB1ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81629283"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="81629283"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 14:46:51 -0700
X-CSE-ConnectionGUID: OpW7oKIjTr+1pO1MOLtX4A==
X-CSE-MsgGUID: QLWjLeTxS5CnhitW5kWDuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="248594480"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 14:46:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 14:46:49 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 14:46:49 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 14:46:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ydk1QZbr3KqkWIqMywdDXj/7gH52VSypLSIjZd5c2dWFRe6dhlcHTVlXv8rohkzKUvgRvbf59lQJKa5hjfN2bgNsddNIruGmbTaQsEDP8P9BBUwRmOKS8K1xtIvXNsDnx1lX2NmevZF48wHaGsZagwiCckMO+Hw000vocG8DHxWCUGoffOUSyhwANG5GEKJxiwre2z2zAFj1B7tsg+aRH2NAeijOQCHYtGkqcEDA5s88P9+wXrtDJY0rJLmLCfY4M/P6K/3NecGAUaGsT3BIFNujJPEmKtNxEuuvSQB9Zr68ZUmC+ARugVw/UCLFc0Bci+OVmJEYaOnu47wjqlVp8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zHv5GSXojnSUp1XeQLdeerBfm4B/q8Lh788jtfoTiFs=;
 b=FjDo+taOcInqAYFGpvtGkr9sys0G9zpr6QJaaHOB80zaiAafiphCJVfLbjiLpqiJla3HbViE7gr5UF582odAXtNK+bI4b+4AlL42kxH5zN3bHcY7SicPSAQOJjfWlE03F6seJDTQBbdT+LNKH3g0u0RKDxuk9kqu3EJcL/+d2pFOb0X98GusDkdaZ2xzVPEfS/IfhV9EgXmU1628b/yai3EKD7SS5NFhfTj/0hDVCnm8PpxjPBeCcf068THevlg7jM/TEbDGtmUY+phkPlnczZVOyi2yCEBLJAOoueBoK7QhabWa7mOwUdyXEP5FwDLSCJeaTmEsM2KoW06vgMN9Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by BL1PR11MB6004.namprd11.prod.outlook.com (2603:10b6:208:390::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Thu, 4 Jun 2026
 21:46:47 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0092.007; Thu, 4 Jun 2026
 21:46:47 +0000
Message-ID: <3121f020-92e8-42bd-992b-0820303de4c8@intel.com>
Date: Thu, 4 Jun 2026 14:46:44 -0700
User-Agent: Mozilla Thunderbird
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, Grzegorz Nitka
 <grzegorz.nitka@intel.com>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Przemyslaw Korba
 <przemyslaw.korba@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>
CC: <netdev@vger.kernel.org>, Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20260603-jk-fix-e810-ll-interface-function-v2-1-426a745e78b2@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260603-jk-fix-e810-ll-interface-function-v2-1-426a745e78b2@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0343.namprd04.prod.outlook.com
 (2603:10b6:303:8a::18) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|BL1PR11MB6004:EE_
X-MS-Office365-Filtering-Correlation-Id: f9f48367-1c3c-48fa-c370-08dec282c67f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: eePRK/sWB+pdf2GHK0wQzm1pI750Kx5HKqUewRtj/ybb1XYtHHT99BKi2Ursn3MrcRu2LyfOAjv9a8241Nxv8z0hcmWPscS3txI2Vc/ub+ewAOVzbnao3FLdGNm56oV0efvgjd9q5FQLlvA0uICKQ4MsrRGv+Is1lTRGJQ7i5Y8dsq7YEKQHs0LHu5b5e8YrB65Y8ExZ0cO5MUzM/NU/uiQOqOayzeiUegNHl5nBziZPOfKmhb2pxKGCkKSuRns7wZEkF+ZHAqg1p8wWMl/SDBydGxxLzvHppSJJ2Akuvvy7cMRbm5/ru54bAx11ZSYP3wuL1OPIP1YriUv9OPAX/VfQ9i0cBdWOAEw8Bs/eSqEuwS7AiMUoAit9OC5lgLy9/XJSWkbVxf4GeVQj5TXJ0CL1YvbB9OsqtXrSFM5ueVysMxtreyDo+RSZ1ROZVFoQH384DLru2vbrfXRrpMZnKXD5zKX+pEcJjQ/9zaiL+tTiTw+apRCiWIrhnAOppZPUAz0YgBmxRzuvAO+WFbfbUCLXDho7Pt6D1PX8ehdlKcLnWVu2aGshY+ZocENJFJIxrhTUtHJwO+W5AdsdOyp7uEAHXFLxwX6A1y347xnfWkB2KjFlsjGj5yNCxyRL+y50iU0P+kuSbSivFKEf1JU7QvuShZo2XbCDIRhUWn/2LmtNrmynUeoC7S/8iRR9p01/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0VLM0Q1WHJTNWdpZThoV1RZcmxOTk55THJoaEcrNVJFVXB2VkZNdHkyS215?=
 =?utf-8?B?ZFdoZ2UvckpScEQ3YVpST2FDeDBZNXBCNjBNV0JJOXVjSDZOU3F3aVRqR2xz?=
 =?utf-8?B?NEJkKzUvNC9HelcyUnlOUkZCQXNjajBZTUN0YmNnUkVXVmU1Q0FYQTlUWU5F?=
 =?utf-8?B?eUFzaFlFdmE0VlJwOUwrL3p3UnhEK2hjcThRejltZ0k1Y0NMMjNDVXlGbFVY?=
 =?utf-8?B?Y0NDU3VxUnFhUHcwTXh1cHZOV2VZMVJBbG41d005Zy9zQTB1Ym52K2VUNVZl?=
 =?utf-8?B?NG9JZW9rd0RpZ1NEbEt1WFlTY2x2bnlVU3ViNXNKZGl4UGVSZ3dzMEUrT05j?=
 =?utf-8?B?Y2t4RGo4dXRYVnVvcjVQTFIzdlV4VTNIK3Y3dktRUkhnNHk0d3pBejNJekxn?=
 =?utf-8?B?MStuWTkzWEs0RjlTVVZiQXRZZS9sUkhKaWpDcnlzNDNMd3A0cTczRHFvT1F1?=
 =?utf-8?B?N2w1ZytWQ1ZNV3NvMlozR1Uxa1FmZXBoV1NsTExqNFlQMi9QU2VVcXErbUxF?=
 =?utf-8?B?UEx2YzFTZURYTWUra3J3V0RWT1AzY0owY1U4Y0l3TXNMT084Qnc2bEpjMEI2?=
 =?utf-8?B?TFBnS3hvSjdKMmNGU2s1MWNROXlmRCtrU1JmUU5zUlo4V0hoL1N6QkNKbUU3?=
 =?utf-8?B?dUU0cU10S1lnbnNxU3ZyYWxrajkyTjRwZkFDQkVyNHhQN0NUOGFzTThjUDl3?=
 =?utf-8?B?WTdtMVMxQ3EwNSswQW0xZ2RBNGdNYlVkbEVNcWtCZ3FzbVllUkUwMkdzNHZh?=
 =?utf-8?B?RGlCbUZEWDdNV1JTYVZ1K0U4ejFWVFBIUHBOcmNuY01KVEladXVGQlJINit3?=
 =?utf-8?B?MVNEUnVlVzZQaERKaHowUkJ2dlFYVk9ZZzhsRFROdU93MVFicUVCRDl0cXlm?=
 =?utf-8?B?d1VaWkpXTlVNL2lUSHlPYzkrNDJaZnoxT01tWkVSN3V2UjhlTE5RTVREajAv?=
 =?utf-8?B?WklhbUhCb1VGMTVkam1UYlhDYUk4VU43ZXZGUVVXMHd2TlBqQ3hVTlRhUUpt?=
 =?utf-8?B?RzNEdzR6QXJRSER3S2dZbXltOWJBWElhRXdCTDNWdzJxb25FTkdDQW42Y3hy?=
 =?utf-8?B?bjJLckkybDRRVjlMbXdZcVpPRmFwU0NDMDJBZUhyWnppYUtEbWVqTEMzWXE0?=
 =?utf-8?B?dWxUeEFFWDNQMU1VbS9hbUR3ZWtqNmpNQ0d2VGRFNS8zaGxZem1ySWt6R1Nn?=
 =?utf-8?B?cTN3ZnNoYW04NEdLVEVUODFYb3A2WENINERDWWpveU1vUm8yY1lNbDJYeU43?=
 =?utf-8?B?RzJOb0hoUHYzc3hDcjZEZkhxNUYwNitUVlpzVFpVeTRKSGlIdm5KVGU4V1Br?=
 =?utf-8?B?TCsvSWtzeE9oWERLcmtUSzhoNmNyZTA1OVJndTBCclhUTGRrcmttR3k3R1Bo?=
 =?utf-8?B?OW5XK2FDT2hBWUM0bkU0K2M3RnA2eGlPNytzeklKemdBMWVZUXRQOFR0d0kz?=
 =?utf-8?B?TnBSVWprd3d1R3hveUxDZlZSRloybWVIcCt3L3ltcEsvU0NTemx0aWl6VGhO?=
 =?utf-8?B?NitrdzI2WWgzdjlpOStPcis3SEliZkZHcXhtbEY1bkVwL0Z2NjdoWmZPT0pi?=
 =?utf-8?B?bnpZN09scnJkSk96a3VzVzY4VzJiR0tVOFlVaVpFMWJjK0kzT2p2SWcveXpy?=
 =?utf-8?B?L0dvTWdQUkxSendzampvdm5JSEdOZkExcUhiR0ozekpCRjJ3TFFFakFFeDVl?=
 =?utf-8?B?TkxzbDVkbGQrei8xUXE1NmVEZWdWdlZJT3dPbW1rT1JCYnhIdytqdUNVZjc3?=
 =?utf-8?B?YlJiMkw5WDhHeDNiMndJeUxCTVJodnpDK1piejRya2NGaXd2ei91d1NMdXda?=
 =?utf-8?B?V05qQ0RjV3NsYjQ1Qmk1S0Ftd1o3R29oOEp0S2YwRnAvOFlHNWd6SmpUTW5V?=
 =?utf-8?B?ai9BSXRGaTZoMFVpNE5CYnYvVGJ6Rm5IclAxNXZqSWg5eGZwMFFkYlIzZFY1?=
 =?utf-8?B?ZndYbW81VXRpcDVrSk5YdWZaWU5nTTZqdFRWbUFmRVIvbnBjTWV4QWdaQXBy?=
 =?utf-8?B?NkJ6ZXlzY2YwWnRTaDIvc2Zpb1dYdk5Kanl5d3ViTkUyelI5eS9tbEt2cDJl?=
 =?utf-8?B?c1E3cUhVQ0Jpb1ZVelBuNENmT0tHUEtKYkxlMG4vcmFVTCszekFPeVJiSCt3?=
 =?utf-8?B?amkvUUlRS3NMNEs4aDFGU3FmRTZsbjQ2VDNzZkFpTXJ1UTU5MlNVSUc2Ry9l?=
 =?utf-8?B?QnRXRUh1N0JDN0w5T0hUdy85Q1hMTWFMUHR3RnEwMEJNZjBmbzVzL2lGK290?=
 =?utf-8?B?S1Z0TWQzSGRNbkxMM3RHYlBibnF3dkdTRGFEdGs3OWRHUkV5YzVDQU1hOWpu?=
 =?utf-8?B?cDBSb0RvejNxNjFvL1BoY3VjUjN4b0h6WTcvbGNyaWg4N1JkY3FlNnY1Ylg4?=
 =?utf-8?Q?SjpYmybFneofI2hE=3D?=
X-Exchange-RoutingPolicyChecked: saD6GC2l91uZxD+gvhnbZs8t6oZRozEkb8qFc79lVVZ9jcWxVE0rsD51vh4k5SSkSKL3pPigh+Ll/lPH5fQqqVzc4saSMIdH/3v7B0qYQOQZwzLw/wc0AQNJqBUomy99rc8UTb209qF4yWCUNGgoVQ855FXgS7erCEYBM6AwbTsKRqzM8pH1sEkCZLPZE/btTLug4NS3ze4L6vkxaWcOFuUFz0vFFiMt1IgKhHhFYaCHoN6NA+LoQYhOsoSBDNHPWPcu/b2shTrMwa+7q9jMI5Rw5OYid/QLCvSlXT2UaKpjZEMaBo6APjSCL1wR35PEp6CM7vRD3DRylK7Z39da1Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: f9f48367-1c3c-48fa-c370-08dec282c67f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 21:46:46.6833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w+Yme/lQOaDQu+GTvT+/TpIEhcMphxifULh/VUPLIRP9e8s0z0DZ/KsQDauWGLmWxbMixISyvDivERVdLfW94TKlQrScH7KahQCDZMAKaDY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780609675; x=1812145675;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LdV+StyBSwT6fVQ6xvWZxd3mFw9DIeNClHGrRGeaM1U=;
 b=Mx3slOOtkL4GUDdaA19/Ewe5KI/GvM3Rbygt8Ik55xN9TC3lZPV2dgYD
 H61qA/IhZh8pDxdBTqVYgby0SvxVsOXWEzEnzBFoDxtBIUMFKH9aEkK4u
 1qF7Mdfv8YLvNKfZFwOHhnafAx7bFOfo5stmFDCSGP/roIZb4b5ywLNbr
 jUNaiHpqom+2kczEO4rUNxNMT8C8GVH7h4zWqI4Qv6KFfauGGQ2kMVvqi
 /PDDp2pPUZKgG3pFaw09ORHEdzoknnjWMs499UP+gnCXQTyDUgfIiW0zm
 l/TfoUAE4IoACgw5Q8ol+nMmE9fHCb80ehief6V5YTjcjC/TI4L+O7rQY
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mx3slOOt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix E810 low latency
 timestamp interrupt handling
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D09B643ACA

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 36df742c326c..a00fbce6337f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -382,6 +382,7 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
>  	struct ice_ptp_port *ptp_port;
>  	unsigned long flags;
>  	struct sk_buff *skb;
> +	struct device *dev;
>  	struct ice_pf *pf;
>  
>  	if (!tx->init)
> @@ -389,6 +390,7 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
>  
>  	ptp_port = container_of(tx, struct ice_ptp_port, tx);
>  	pf = ptp_port_to_pf(ptp_port);
> +	dev = ice_pf_to_dev(pf);
>  	params = &pf->hw.ptp.phy.e810;
>  
>  	/* Drop packets which have waited for more than 2 seconds */

Sashiko says:

> 
> This is a pre-existing issue, but does the early return in the timeout
> path of ice_ptp_req_tx_single_tstamp() abort the hardware interrupt chain?
> If a request times out, the function drops the packet and returns early:
>     if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
>         ...
>         dev_kfree_skb_any(skb);
>         return;
>     }
> Returning early without initiating the next firmware read seems like it
> would stall the chain and strand any remaining timestamps.


I think this is plausible, if unlikely to actually have happened in
practice. The 2-second drop was copied from the normal interface for Tx
timestamps, and not the low latency interrupt.

I think this should probably be moved out of
ice_ptp_req_tx_single_tstamp() and placed in the caller which determines
the index and drops stale timestamps until it finds a valid index.

> @@ -408,7 +410,13 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
>  
>  	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
>  
> -	params->atqbal_flags |= ATQBAL_FLAGS_INTR_IN_PROGRESS;
> +	if (test_and_set_bit(ATQBAL_FLAGS_INTR_IN_PROGRESS,
> +			     params->atqbal_flags)) {
> +		dev_dbg(dev, "%s: low latency interrupt request already in progress\n",
> +			__func__);
> +		spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
> +		return;
> +	}
>  


Sashiko says:

> 
> If ATQBAL_FLAGS_INTR_IN_PROGRESS is leaked and sticks permanently, does
> this new check prevent the system from ever recovering?
> Previously, calling this function would overwrite the registers and
> effectively self-heal. Now, if the flag is leaked (for example, if
> firmware drops a timestamp or during teardown), the function will return
> early. This could lead to a permanent deadlock of all Tx timestamp and
> clock operations.


I don't know of a real case where the firmware would drop a timestamp.
However, if it were to happen this could now deadlock the timestamp
interface.

>  	/* Write TS index to read to the PF register so the FW can read it */
>  	wr32(&pf->hw, REG_LL_PROXY_H,
> @@ -449,7 +457,8 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
>  
>  	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
>  
> -	if (!(params->atqbal_flags & ATQBAL_FLAGS_INTR_IN_PROGRESS))
> +	if (!test_and_clear_bit(ATQBAL_FLAGS_INTR_IN_PROGRESS,
> +				params->atqbal_flags))
>  		dev_dbg(dev, "%s: low latency interrupt request not in progress?\n",
>  			__func__);
>  


Sashiko says:

> Can the ATQBAL_FLAGS_INTR_IN_PROGRESS flag be leaked if the completion
> routine bails out early?
> For example, in ice_ptp_complete_tx_single_tstamp(), there is an early
> return before this flag is cleared:
>     if (!tx->init || tx->last_ll_ts_idx_read < 0)
>         return;
> If this early return is hit, won't we leak the
> ATQBAL_FLAGS_INTR_IN_PROGRESS flag? Since the new test_and_set_bit()
> check in ice_ptp_req_tx_single_tstamp() relies on this flag being
> cleared to proceed, leaving it set here would cause all future timestamp
> requests to permanently fail.

This is ultimately effectively the same concern as the previous comment.
If the timestamp doesn't complete or if we get an invalid index etc,
this will potentially get stuck.

I think both of these concerns should be addressed by adding a mechanism
to clear the flag after some time if no timestamp has completed. I think
this fits well with our existing PTP watchdog thread. Thus I plan to do
the following:

1) move the 2-second drop out of ice_ptp_req_tx_single_tstamp(), and
have its caller perform the check while picking the next available
timestamp. Depending on size, this may be done in a separate patch, I'm
not yet certain.

2) Add a mechanism to the watchdog to check and clear the flag if we've
been waiting for too long for the timestamp to arrive, and we should
therefore assume firmware won't respond to that request.

Regards,
Jake
