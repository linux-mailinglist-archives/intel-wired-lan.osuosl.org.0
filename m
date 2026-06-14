Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wYS2D6pVLmpPtgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2026 09:18:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4386808A0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2026 09:18:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=wwOGp8yP;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFE1D4133B;
	Sun, 14 Jun 2026 07:17:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t45Oy5kRoN9X; Sun, 14 Jun 2026 07:17:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF07E41338
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781421477;
	bh=4v76yXWfXwlZG6MRPEGfFUkb4lLITZ+dzbaVOqFpJyw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wwOGp8yPrbJt4QGVDeDedmqemMXBeNRLN2A9E0ubGJunIr7Cbcd0iGA+GyQWJz7nn
	 mG2+goe3fhGhuzfXbMScBubDIE2qYbcOwslxsuOTkjqah+5dNbaFaAXKlKn1ez+/bh
	 oqFul47Rrov23AgxcEH/ojAf49vca6cYruqjlvRlTHOeXb7syq9pRAtLpzTBUPpA5I
	 rq6UuGUWAJ1eTWLiVVp9jU5ZxV/UDQOGPaZzIKeBrTsza1+KoSpFpbmhnQW1+ScOjC
	 ojVZP9aKIl4iR6A+EBUB8T6sDV9HwFlLV40xDyBcMwRIGx8G310To/IFsN8L8RfVPP
	 cKHfRYYudis/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF07E41338;
	Sun, 14 Jun 2026 07:17:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B4CB2EF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81B82610DC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:17:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8DqeS7Bnn1X3 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jun 2026 07:17:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4EC9F610D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EC9F610D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4EC9F610D5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:17:55 +0000 (UTC)
X-CSE-ConnectionGUID: QEhbfXeZQ6eTdT30h/kbqw==
X-CSE-MsgGUID: Uh+lz2GCTLWvmM3yP1BBEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11816"; a="82204207"
X-IronPort-AV: E=Sophos;i="6.24,204,1774335600"; d="scan'208";a="82204207"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 00:17:54 -0700
X-CSE-ConnectionGUID: fdy6JFnPSEuy8KqSSYQ50w==
X-CSE-MsgGUID: J3NOePqDSlm789JmwOoZzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,204,1774335600"; d="scan'208";a="271254404"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 00:17:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 00:17:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 00:17:53 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 00:17:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V/3wgk8UPjqt/6HDg3vrzjGW+ROLEcH0BNJu66qD+e1u5yypAMezBV6BQnc+XfwvYmunAIEdXHAl1J3EY7nw+v722jaD01qbn1dGAWQwcpm4ZxaRRKDnDBgqOnvTZEAf/PFv+uK0dPPRUF9U1T1LySzhpYTdezxoT5uLMZG8o8ysPBC92F2D6MewOOyeHYoZ+rYMMTqpIlvNJIzGC1fT8EmfMsnWchy8q0W9MnWjlzkXJb5Gr5ADqvgu3jabv/EvH5V6DXeddwFGme4X4w4IATdW00B5yFq3u+8bOHAdneI0vm2jyRWckaCZ+m/rocurx/41gDtT8PuzfL+aes2qag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4v76yXWfXwlZG6MRPEGfFUkb4lLITZ+dzbaVOqFpJyw=;
 b=xvTUqoVniG4EM5k9++NAUfw6FHGIdJLoMDR/lpOTLGU0us2vkHGLesFu+JWDrKc1QuT19IrJXWMeMfjVd1w9hPE3MRj50IoN2BOR+cS8oYC1bflG+Abk6xDC3oftQLbVvI45F4XLTFGGOI36IDdXrKp0Vx208o8bOcKraA3wN4TBqGZaY6nOwHTE7IPgmjSgqeL7My4RB79i5JKvWTFbza+agi4OmvBVYO35GxADCmwVS9iQD3ttxJxffGTL8xqAcQ4yQcqSgR5LJs16Jw8Pa7ZKXt0z0bVZti5QVZBrvHhfJFpFza1t7BDZVbGDw+hLx/BdfZHh6vd1SxUy4qB71w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by SA7PR11MB9541.namprd11.prod.outlook.com (2603:10b6:806:4cf::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Sun, 14 Jun
 2026 07:17:45 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%5]) with mapi id 15.21.0113.015; Sun, 14 Jun 2026
 07:17:45 +0000
Message-ID: <d8f4f16c-adf6-4d99-bb76-09c047ba19eb@intel.com>
Date: Sun, 14 Jun 2026 10:17:40 +0300
User-Agent: Mozilla Thunderbird
To: KhaiWenTan <khai.wen.tan@linux.intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <faizal.abdul.rahim@intel.com>,
 <hong.aun.looi@intel.com>, <hector.blanco.alcaine@intel.com>,
 <khai.wen.tan@intel.com>, Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
References: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
 <20260507214706.309984-5-khai.wen.tan@linux.intel.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260507214706.309984-5-khai.wen.tan@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0025.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::20) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|SA7PR11MB9541:EE_
X-MS-Office365-Filtering-Correlation-Id: ee23573c-a0ce-490e-be37-08dec9e50842
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|23010399003|56012099006|11063799006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: AIP7jlCrzQ0+vWVTAPod/8PZGCcLVeMA4/UpQdH7Fgh30uWWyusC42RckjwZcxXMMoyeUIK7RgqIkKFNuORKs8zOb8Kaq7eWX9rq8ocI/NPVEjSRiYkziP5iloFJYBWscXKlPyQN2Vl2o6q5ZulXQuU2vO8C4Q5uvClz1kfZguS0YrUm+82whllbxKpAWZ85lDMoNhqYrs79EMFPGnojU09jNWQFzCuwIxy51njpNyJO/gUrspKQVHgo9o7yVDAEoiC+7F617RQd7Mn2DyisnscYv3c0nMkT6EXlQewt7GSbm8JfPIOUNYecFcZtVzZr6LYn0i05UrH6N5BOJzVag6oeU3oBDkrofOQrUrbVyfk1WhujJzqkbBmYW8DbzSV52C9QWGCCM+UPq2qJS71wHLyJx7FyOHvuuDxAUbZ2gpQdyz/EHffp0qYedf3Diek8qIFadbsCVWLh/erakRcUCmkdzvVzLHlojnPUDEbkTtR/mLkXfFxNoiUkNBKkxvPvmmALFL1/wbhgnKXK3N/r/YBQzfwuwTLy3j9OwlJR5js03fIyySYIOKgj9WMQ6RgxSfIV6VDFeYippGF3FFiG1wa0PxxOWHB/FLcMCGo1532D62L+tI2ykB4A4nxhDTBGYWSr/K90LoOC9LLYpne5ZX2N34H6bMY2wuoGW8GhyKnhXlOT74dQgXFzs4IfqBU/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(23010399003)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnBuT2Y3NFU4UXljYzBjWFNpbE1acFU3Q1lJQTlidnZ4OGswQ2FvVnFEem4x?=
 =?utf-8?B?NFl6RlBnSXI5cnFERzlkZmJXQmxERDUwU0NBRkhrbldSdmJEVUZ6NTc0RTR2?=
 =?utf-8?B?N1hLYlNIZzVKb2dWRkREWTNmUENaeXZzK0FxcU42bzVqenM1WUt5a3lkVVE1?=
 =?utf-8?B?NC90cmVlMUVONkNrc3dxd2JEaHVKWHQ4bklSSitwNGlDUVdpNzZsUko1d0M2?=
 =?utf-8?B?eFd3NTRMNmVPd295Z3MwWkNZdy9rZ08wakhMNVNla1RtQmd1VTBReGEva21p?=
 =?utf-8?B?Yk1Pa2ZOYzFjcGtGOHBVTnNLb1kzVDZSdUFrNWxVam1SMlliQzN4STZ4dmVF?=
 =?utf-8?B?cFJsQ041cU05RHlxL3g5Sys5M21IekdYbGlpL0tFYXhweTVhd0NwVFB2NWhj?=
 =?utf-8?B?TTU3OFk5ZFRuNExtWlBwRkNVRXV5UGNvcER4Nkl0b1hwc0VUUW9HenZ5ZEJm?=
 =?utf-8?B?MlpCcVVVWjV1S2J1U2xwODZ3RGtkNVJmb1VoYjVseHF3ZStSRXhWWTM3TytW?=
 =?utf-8?B?NmZ3czRHMUJXcjFncmJyVzgrVHVINUluSkFvK3RPVkhBcXpKNG9DU2VSTGg0?=
 =?utf-8?B?MUhudDg1UlBXb2lIQ1EwTk1mbXZqSEYwNlNobi9ldjhPaThIbHJNRldxZVE0?=
 =?utf-8?B?dTRjSm9qcUpGeFJFSlBZSnpWeTRtcGZoVEtqWm1jUW9SRitIZisyUG9XeTIz?=
 =?utf-8?B?V0ZBWGttLzM1TkJjcUpJUi9Ra1BwU1pBeGtWcFNaWFpCcSt1UjdQSXkzbzlF?=
 =?utf-8?B?QWp2ZVFtRGZCVTFOZ0h4SFJ3bEMvR2hFcTdiQmxLTHBmQjdBcjEvOG9pUmZi?=
 =?utf-8?B?YXlQRzFsYkJWbkIzbSszZ0VCblowQ0xuMkZxOHdjYjBVWlprMkpnQk9aa1JQ?=
 =?utf-8?B?bWdLa2NWb0NYWXk4T2l0K3R2THBrOVE2cGRHVHFmM2ROT2hPZkc0eVE2NGdu?=
 =?utf-8?B?RVRlMEZyY21VU21vVXh6ZkxSM0hkRy9Rc3JGUE9VVzJiRmpYbFNNTmtCOFdu?=
 =?utf-8?B?YllVVXZldlBMb3RJNll4OSthVm9XVTlTUS9qQytkZmtCWUxET295c0tKeG1n?=
 =?utf-8?B?dkp6dXBGZWRXbGpXNnJXczV1N0J1cHZUa0RnckE3dEh1d0cwek8wa1Z4ano1?=
 =?utf-8?B?WkpFQWRDT2ZwRWlha1crWklkS2IzMzB2RXc5eEl4ZUNOaERBeVViVUNHczVI?=
 =?utf-8?B?M3NsbTB0b1hGU0hOZ1M4NXdxTUVXZHR4UHZJN3BJU0Y0VXNJUllHVFVNS0s1?=
 =?utf-8?B?aFlvZjB3Q0RMMTNtWEdvakNaYkRmVm5BRTRudms5NjRrdjVYUVdJcUdCbVlo?=
 =?utf-8?B?UVA5VDJ1dDBieFhnN0FINWlsa3ZFbWNPalVPdFV2NUJYL2Z3Q2NRWkhIUi9L?=
 =?utf-8?B?QXJYMzhCS1Nic0NKRXlKaXNXYi91dkVjOWFpem1hcGk1Rng2REE2ZVJjU2hU?=
 =?utf-8?B?NGVGNTJUV2FPUmlJUjZNY2l2SUlUV0lwMkhDVXpxQUxJcSsyejgwVWlvRTM4?=
 =?utf-8?B?N01kOHpYVFcrUGhXQmRzZ2RnT1E1bWlpTGUxOWViejArejN3bk1hL2RwYll3?=
 =?utf-8?B?S0tXQkpGTUhadlRhQys3WHNrV1YvZWxwdEsyOWVUMk4rRmE3MC9PSXJmTTNh?=
 =?utf-8?B?alE0aHpMRHhiVFBUcmNhY2hRMkphQUcwcC9JZkVXWWM1YzVUUEJQNlREQTR2?=
 =?utf-8?B?bk11V1dtMjI1ZkRocXJHdWkxVEd6Y1kvTkc2RnlIUnlnbXpCWFNzb0kyUVNq?=
 =?utf-8?B?Q1ZCb29NRFFwOHhFOXVjUStjOUcrU3F2TGplaG01bGk1aktodHRHTjBKR1BU?=
 =?utf-8?B?VmpEQUZCREVkdXZCR1FtbFRDUzhBdTdTb1JQeXlxU1d5YTJpb3VGR1l5WEpr?=
 =?utf-8?B?cDZBOXA1SXVnVU4vT011VFdaSVJOcEVha1ZoT1dic25qc0tBWlBFUzVDQkxK?=
 =?utf-8?B?WjdrUzFZTjlITHpPVUp2bEdFV3ZRNUN5K3J4VEpUOHRKV1o5dTFNUnBNV3li?=
 =?utf-8?B?WVc0OVV4bUpGczNUclh2Z2lncmt4Q2daZkJjcGRjVU9FcU9ySnorT3lxOVQx?=
 =?utf-8?B?azN3UFIvKzhoZ3NDR2JXYlc1clFaL24xM1liSWxSdzdLQnpSc3JsL3pLN2xn?=
 =?utf-8?B?S0l5N0pXNU9uQ2FueWZmTlpoWE5KTVArZXFtbmhTNUtjSGpNSzBRaFlrcmQ2?=
 =?utf-8?B?Mk9pUmZoZHl4OWpYVjR0em55SVM0dkhuTG14L3dsbkxsVzN1TVM0QlVFbU1y?=
 =?utf-8?B?REk0TFVyckNza0ZDYi9DWkV2Tmw4U1lCalFwRHNxdFhNUDVTU1p2dkpDa3Az?=
 =?utf-8?B?S3dtMXN0UWljRVBrVG05bmU3MzR5ZUxsSjQ5T2xCQTRZRkpLOW1Hdz09?=
X-Exchange-RoutingPolicyChecked: cBHQCOWKDJEPIT/XEwxxM5kRWXH456jwtYt20PH9MWcx7s3Sg/UNifLzZsFp0ZL7+a25T8VSQcTfOStgy+tN9yRvVAh/VSr7y7kBi0KqNeCXHc83bf00f4T8KLZ7wpJMNqhjYl8UL1it+jnTDrYcELexusbikxrQX/0AGkRH8Pfv5ylpRXRbrsIXsTQXEEP1GBfeKxeTppiqpcT+9IfxSXwV+X6jZT9nXG3CbC5cSPik3hoQUz2QrT+057N5K0nWQ/l+LlBZhYgtTB92dt8vaS++PTXao/tFRQWGWdCJlSKxFmfeR7EZNU3B/MpFmftWqptWmAId05/ZsSPNSHlggA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ee23573c-a0ce-490e-be37-08dec9e50842
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2026 07:17:45.7165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +UXZpqIZQB0UOLObzXjOX/YLLHHvJf5czyMdo4nj+tuReMjRUKgtXTMmXnIuufQSHUjvoPSIE5d9Y88woiMWrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA7PR11MB9541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781421475; x=1812957475;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9yC6AFg60eYdnZqWz23bgctcqL1x8o/9NKLBBvXq36M=;
 b=WRDjVd2Fq3d4Ga/c61gkQy37CaUvGdIuBG0oBo0yEsSnBAFay0mJCh9U
 a69yfopO8G6OuUsZDcjLGUVrBsUCszF9PkyRI8ArSx9o6ChZ2ME2kFdpS
 v1cgfuvkE/JOeMmkewWW1h3SDiKJoEi7MVU8Pd1mwFo+eJ4EQxXyshohH
 zYWg6WcakurPNx9isi9CxaJziEwra55lAUy0QViioMxCEAuVhWwpbXsRG
 i86SZ7Am0WkfTBHgh7tskcEvarj7pRznM/kbH7+okElwr9VChxfa9G3Qk
 tOSYJ/Xk92UdaXr4Zshar7Y9G4m+15Zen9v0VkqO6p4IqzrSp1Lcu08qy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WRDjVd2F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/4] igc: add support for
 forcing link speed without autonegotiation
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E4386808A0

On 08/05/2026 0:47, KhaiWenTan wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> Allow users to force 10/100 Mb/s link speed and duplex via ethtool
> when autonegotiation is disabled. Previously, the driver rejected
> these requests with "Force mode currently not supported.".
> 
> Forcing at 1000 Mb/s and 2500 Mb/s is not supported.
> 
> Reviewed-by: Looi Hong Aun <hong.aun.looi@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: Khai Wen Tan <khai.wen.tan@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_base.c    |  35 ++++-
>   drivers/net/ethernet/intel/igc/igc_defines.h |   9 +-
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 138 ++++++++++++++-----
>   drivers/net/ethernet/intel/igc/igc_hw.h      |   9 ++
>   drivers/net/ethernet/intel/igc/igc_mac.c     |  12 ++
>   drivers/net/ethernet/intel/igc/igc_main.c    |   2 +-
>   drivers/net/ethernet/intel/igc/igc_phy.c     |  65 ++++++++-
>   drivers/net/ethernet/intel/igc/igc_phy.h     |   1 +
>   8 files changed, 220 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
> index 1613b562d17c..ab9120a3127f 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.c
> +++ b/drivers/net/ethernet/intel/igc/igc_base.c
> @@ -114,11 +114,35 @@ static s32 igc_setup_copper_link_base(struct igc_hw *hw)
>   	u32 ctrl;
>   
>   	ctrl = rd32(IGC_CTRL);
> -	ctrl |= IGC_CTRL_SLU;
> -	ctrl &= ~(IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX);
> -	wr32(IGC_CTRL, ctrl);
> -
> -	ret_val = igc_setup_copper_link(hw);
> +	ctrl &= ~(IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX |
> +		  IGC_CTRL_SPEED_MASK | IGC_CTRL_FD);
> +
> +	if (hw->mac.autoneg_enabled) {
> +		ctrl |= IGC_CTRL_SLU;
> +		wr32(IGC_CTRL, ctrl);
> +		ret_val = igc_setup_copper_link(hw);
> +	} else {
> +		ctrl |= IGC_CTRL_SLU | IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX;
> +
> +		switch (hw->mac.forced_speed_duplex) {
> +		case IGC_FORCED_10H:
> +			ctrl |= IGC_CTRL_SPEED_10;
> +			break;
> +		case IGC_FORCED_10F:
> +			ctrl |= IGC_CTRL_SPEED_10 | IGC_CTRL_FD;
> +			break;
> +		case IGC_FORCED_100H:
> +			ctrl |= IGC_CTRL_SPEED_100;
> +			break;
> +		case IGC_FORCED_100F:
> +			ctrl |= IGC_CTRL_SPEED_100 | IGC_CTRL_FD;
> +			break;
> +		default:
> +			return -IGC_ERR_CONFIG;
> +		}
> +		wr32(IGC_CTRL, ctrl);
> +		ret_val = igc_setup_copper_link(hw);
> +	}
>   
>   	return ret_val;
>   }
> @@ -443,6 +467,7 @@ static const struct igc_phy_operations igc_phy_ops_base = {
>   	.reset			= igc_phy_hw_reset,
>   	.read_reg		= igc_read_phy_reg_gpy,
>   	.write_reg		= igc_write_phy_reg_gpy,
> +	.force_speed_duplex	= igc_force_speed_duplex,
>   };
>   
>   const struct igc_info igc_base_info = {
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 9482ab11f050..3f504751c2d9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -129,10 +129,13 @@
>   #define IGC_ERR_SWFW_SYNC		13
>   
>   /* Device Control */
> +#define IGC_CTRL_FD		BIT(0)  /* Full Duplex */
>   #define IGC_CTRL_RST		0x04000000  /* Global reset */
> -
>   #define IGC_CTRL_PHY_RST	0x80000000  /* PHY Reset */
>   #define IGC_CTRL_SLU		0x00000040  /* Set link up (Force Link) */
> +#define IGC_CTRL_SPEED_MASK	GENMASK(10, 8)
> +#define IGC_CTRL_SPEED_10	FIELD_PREP(IGC_CTRL_SPEED_MASK, 0)
> +#define IGC_CTRL_SPEED_100	FIELD_PREP(IGC_CTRL_SPEED_MASK, 1)
>   #define IGC_CTRL_FRCSPD		0x00000800  /* Force Speed */
>   #define IGC_CTRL_FRCDPX		0x00001000  /* Force Duplex */
>   #define IGC_CTRL_VME		0x40000000  /* IEEE VLAN mode enable */
> @@ -673,6 +676,10 @@
>   #define IGC_GEN_POLL_TIMEOUT	1920
>   
>   /* PHY Control Register */
> +#define MII_CR_SPEED_MASK	(BIT(6) | BIT(13))
> +#define MII_CR_SPEED_10		0x0000	/* SSM=0, SSL=0: 10 Mb/s */
> +#define MII_CR_SPEED_100	BIT(13)	/* SSM=0, SSL=1: 100 Mb/s */
> +#define MII_CR_DUPLEX_EN	BIT(8)	/* 0 = Half Duplex, 1 = Full Duplex */
>   #define MII_CR_RESTART_AUTO_NEG	0x0200  /* Restart auto negotiation */
>   #define MII_CR_POWER_DOWN	0x0800  /* Power down */
>   #define MII_CR_AUTO_NEG_EN	0x1000  /* Auto Neg Enable */
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index cfcbf2fdad6e..b103836a895f 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1914,44 +1914,58 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
>   	ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
>   
> -	/* advertising link modes */
> -	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Half);
> -	if (hw->phy.autoneg_advertised & ADVERTISE_10_FULL)
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Full);
> -	if (hw->phy.autoneg_advertised & ADVERTISE_100_HALF)
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Half);
> -	if (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Full);
> -	if (hw->phy.autoneg_advertised & ADVERTISE_1000_FULL)
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, 1000baseT_Full);
> -	if (hw->phy.autoneg_advertised & ADVERTISE_2500_FULL)
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, 2500baseT_Full);
> -
>   	/* set autoneg settings */
>   	ethtool_link_ksettings_add_link_mode(cmd, supported, Autoneg);
> -	ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
> +	if (hw->mac.autoneg_enabled) {
> +		ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
> +		cmd->base.autoneg = AUTONEG_ENABLE;
> +
> +		/* advertising link modes only apply when autoneg is on */
> +		if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     10baseT_Half);
> +		if (hw->phy.autoneg_advertised & ADVERTISE_10_FULL)
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     10baseT_Full);
> +		if (hw->phy.autoneg_advertised & ADVERTISE_100_HALF)
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     100baseT_Half);
> +		if (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     100baseT_Full);
> +		if (hw->phy.autoneg_advertised & ADVERTISE_1000_FULL)
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     1000baseT_Full);
> +		if (hw->phy.autoneg_advertised & ADVERTISE_2500_FULL)
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     2500baseT_Full);
> +
> +		/* Set pause flow control advertising */
> +		switch (hw->fc.requested_mode) {
> +		case igc_fc_full:
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     Pause);
> +			break;
> +		case igc_fc_rx_pause:
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     Pause);
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     Asym_Pause);
> +			break;
> +		case igc_fc_tx_pause:
> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
> +							     Asym_Pause);
> +			break;
> +		default:
> +			break;
> +		}
> +	} else {
> +		cmd->base.autoneg = AUTONEG_DISABLE;
> +	}
>   
> -	/* Set pause flow control settings */
> +	/* Pause is always supported */
>   	ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);
>   
> -	switch (hw->fc.requested_mode) {
> -	case igc_fc_full:
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
> -		break;
> -	case igc_fc_rx_pause:
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising,
> -						     Asym_Pause);
> -		break;
> -	case igc_fc_tx_pause:
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising,
> -						     Asym_Pause);
> -		break;
> -	default:
> -		break;
> -	}
> -
>   	status = pm_runtime_suspended(&adapter->pdev->dev) ?
>   		 0 : rd32(IGC_STATUS);
>   
> @@ -1983,7 +1997,6 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   		cmd->base.duplex = DUPLEX_UNKNOWN;
>   	}
>   	cmd->base.speed = speed;
> -	cmd->base.autoneg = AUTONEG_ENABLE;
>   
>   	/* MDI-X => 2; MDI =>1; Invalid =>0 */
>   	if (hw->phy.media_type == igc_media_type_copper)
> @@ -2000,6 +2013,37 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   	return 0;
>   }
>   
> +/**
> + * igc_handle_autoneg_disabled - Configure forced speed/duplex settings
> + * @adapter: private driver structure
> + * @speed: requested speed (must be SPEED_10 or SPEED_100)
> + * @duplex: requested duplex
> + *
> + * Records forced speed/duplex when autoneg is disabled.
> + * Caller must validate speed before calling this function.
> + */
> +static void igc_handle_autoneg_disabled(struct igc_adapter *adapter, u32 speed,
> +					u8 duplex)
> +{
> +	struct igc_mac_info *mac = &adapter->hw.mac;
> +
> +	switch (speed) {
> +	case SPEED_10:
> +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
> +			IGC_FORCED_10F : IGC_FORCED_10H;
> +		break;
> +	case SPEED_100:
> +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
> +			IGC_FORCED_100F : IGC_FORCED_100H;
> +		break;
> +	default:
> +		WARN_ONCE(1, "Unsupported speed %u\n", speed);
> +		return;
> +	}
> +
> +	mac->autoneg_enabled = false;
> +}
> +
>   /**
>    * igc_handle_autoneg_enabled - Configure autonegotiation advertisement
>    * @adapter: private driver structure
> @@ -2038,6 +2082,7 @@ static void igc_handle_autoneg_enabled(struct igc_adapter *adapter,
>   						  10baseT_Half))
>   		advertised |= ADVERTISE_10_HALF;
>   
> +	hw->mac.autoneg_enabled = true;
>   	hw->phy.autoneg_advertised = advertised;
>   	if (adapter->fc_autoneg)
>   		hw->fc.requested_mode = igc_fc_default;
> @@ -2059,6 +2104,12 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
>   		return -EINVAL;
>   	}
>   
> +	if (cmd->base.autoneg != AUTONEG_ENABLE &&
> +	    cmd->base.autoneg != AUTONEG_DISABLE) {
> +		netdev_info(dev, "Unsupported autoneg setting\n");
> +		return -EINVAL;
> +	}
> +
>   	/* MDI setting is only allowed when autoneg enabled because
>   	 * some hardware doesn't allow MDI setting when speed or
>   	 * duplex is forced.
> @@ -2071,14 +2122,25 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
>   		}
>   	}
>   
> +	if (cmd->base.autoneg == AUTONEG_DISABLE) {
> +		if (cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
> +			netdev_info(dev, "Unsupported speed for forced link\n");
> +			return -EINVAL;
> +		}
> +		if (cmd->base.duplex != DUPLEX_HALF && cmd->base.duplex != DUPLEX_FULL) {
> +			netdev_info(dev, "Duplex must be half or full for forced link\n");
> +			return -EINVAL;
> +		}
> +	}
> +
>   	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>   		usleep_range(1000, 2000);
>   
> -	if (cmd->base.autoneg == AUTONEG_ENABLE) {
> +	if (cmd->base.autoneg == AUTONEG_ENABLE)
>   		igc_handle_autoneg_enabled(adapter, cmd);
> -	} else {
> -		netdev_info(dev, "Force mode currently not supported\n");
> -	}
> +	else
> +		igc_handle_autoneg_disabled(adapter, cmd->base.speed,
> +					    cmd->base.duplex);
>   
>   	/* MDI-X => 2; MDI => 1; Auto => 3 */
>   	if (cmd->base.eth_tp_mdix_ctrl) {
> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
> index 86ab8f566f44..62aaee55668a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
> @@ -73,6 +73,13 @@ struct igc_info {
>   
>   extern const struct igc_info igc_base_info;
>   
> +enum igc_forced_speed_duplex {
> +	IGC_FORCED_10H,
> +	IGC_FORCED_10F,
> +	IGC_FORCED_100H,
> +	IGC_FORCED_100F,
> +};
> +
>   struct igc_mac_info {
>   	struct igc_mac_operations ops;
>   
> @@ -93,6 +100,8 @@ struct igc_mac_info {
>   	bool arc_subsystem_valid;
>   
>   	bool get_link_status;
> +	bool autoneg_enabled;
> +	enum igc_forced_speed_duplex forced_speed_duplex;
>   };
>   
>   struct igc_nvm_operations {
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> index 0a3d3f357505..d6f3f6618469 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -446,6 +446,17 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>   	u16 speed, duplex;
>   	s32 ret_val = 0;
>   
> +	/* Without autoneg, flow control capability is not exchanged with the
> +	 * link partner. IEEE 802.3 prohibits flow control in half-duplex mode.
> +	 */
> +	if (!hw->mac.autoneg_enabled) {
> +		if (hw->mac.forced_speed_duplex == IGC_FORCED_10H ||
> +		    hw->mac.forced_speed_duplex == IGC_FORCED_100H)
> +			hw->fc.current_mode = igc_fc_none;
> +
> +		goto force_fc;
> +	}
> +
>   	/* In auto-neg, we need to check and see if Auto-Neg has completed,
>   	 * and if so, how the PHY and link partner has flow control
>   	 * configured.
> @@ -607,6 +618,7 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>   	/* Now we call a subroutine to actually force the MAC
>   	 * controller to use the correct flow control settings.
>   	 */
> +force_fc:
>   	ret_val = igc_force_mac_fc(hw);
>   	if (ret_val) {
>   		hw_dbg("Error forcing flow control settings\n");
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 72bc5128d8b8..437e1d1ef1e4 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7298,7 +7298,7 @@ static int igc_probe(struct pci_dev *pdev,
>   	/* Initialize link properties that are user-changeable */
>   	adapter->fc_autoneg = true;
>   	hw->phy.autoneg_advertised = 0xaf;
> -
> +	hw->mac.autoneg_enabled = true;
>   	hw->fc.requested_mode = igc_fc_default;
>   	hw->fc.current_mode = igc_fc_default;
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 6c4d204aecfa..4cf737fb3b21 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -494,12 +494,20 @@ s32 igc_setup_copper_link(struct igc_hw *hw)
>   	s32 ret_val = 0;
>   	bool link;
>   
> -	/* Setup autoneg and flow control advertisement and perform
> -	 * autonegotiation.
> -	 */
> -	ret_val = igc_copper_link_autoneg(hw);
> -	if (ret_val)
> -		goto out;
> +	if (hw->mac.autoneg_enabled) {
> +		/* Setup autoneg and flow control advertisement and perform
> +		 * autonegotiation.
> +		 */
> +		ret_val = igc_copper_link_autoneg(hw);
> +		if (ret_val)
> +			goto out;
> +	} else {
> +		ret_val = hw->phy.ops.force_speed_duplex(hw);
> +		if (ret_val) {
> +			hw_dbg("Error Forcing Speed/Duplex\n");
> +			goto out;
> +		}
> +	}
>   
>   	/* Check link status. Wait up to 100 microseconds for link to become
>   	 * valid.
> @@ -778,3 +786,48 @@ u16 igc_read_phy_fw_version(struct igc_hw *hw)
>   
>   	return gphy_version;
>   }
> +
> +/**
> + * igc_force_speed_duplex - Force PHY speed and duplex settings
> + * @hw: pointer to the HW structure
> + *
> + * Programs the GPY PHY control register to disable autonegotiation
> + * and force the speed/duplex indicated by hw->mac.forced_speed_duplex.
> + */
> +s32 igc_force_speed_duplex(struct igc_hw *hw)
> +{
> +	struct igc_phy_info *phy = &hw->phy;
> +	u16 phy_ctrl;
> +	s32 ret_val;
> +
> +	ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_ctrl);
> +	if (ret_val)
> +		return ret_val;
> +
> +	phy_ctrl &= ~(MII_CR_SPEED_MASK | MII_CR_DUPLEX_EN |
> +		      MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
> +
> +	switch (hw->mac.forced_speed_duplex) {
> +	case IGC_FORCED_10H:
> +		phy_ctrl |= MII_CR_SPEED_10;
> +		break;
> +	case IGC_FORCED_10F:
> +		phy_ctrl |= MII_CR_SPEED_10 | MII_CR_DUPLEX_EN;
> +		break;
> +	case IGC_FORCED_100H:
> +		phy_ctrl |= MII_CR_SPEED_100;
> +		break;
> +	case IGC_FORCED_100F:
> +		phy_ctrl |= MII_CR_SPEED_100 | MII_CR_DUPLEX_EN;
> +		break;
> +	default:
> +		return -IGC_ERR_CONFIG;
> +	}
> +
> +	ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_ctrl);
> +	if (ret_val)
> +		return ret_val;
> +
> +	hw->mac.get_link_status = true;
> +	return 0;
> +}
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.h b/drivers/net/ethernet/intel/igc/igc_phy.h
> index 832a7e359f18..d37a89174826 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.h
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.h
> @@ -18,5 +18,6 @@ void igc_power_down_phy_copper(struct igc_hw *hw);
>   s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data);
>   s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data);
>   u16 igc_read_phy_fw_version(struct igc_hw *hw);
> +s32 igc_force_speed_duplex(struct igc_hw *hw);
>   
>   #endif
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
