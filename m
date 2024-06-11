Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E514903B44
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 13:59:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F145D4051E;
	Tue, 11 Jun 2024 11:59:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 44Rl0WBMTmAd; Tue, 11 Jun 2024 11:59:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B15D4404DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718107194;
	bh=fFgLcxjkFzoF+Kse/rDiMYQFXcdFPAXanL+Uyot1gBk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VKQbBAO3p3OpnO+WuOFddF9yzOxCOExnXyWGmtt8cpxuvXS1AxHWTbIqXlxw69Et9
	 q/LcdU5k6o3JEIE7ZsqWR15vZ7QnUsDH5sM+ZwhF0EGYNB7tRdLT9sX5st3GrVn0yc
	 ByK44Nu0melCU4GIYHG57IP8n4d79xIoU9OpPtHEm6f5nJZTtYYK0XcXUgO5zmncnh
	 few40sPhH+LhSQKgxYoLPESYR3XHOfYDBWLYQzX0jk2312Mviv+dez5TY2bI/KNbmd
	 61T9BPqZqydG9X/tGlTZis5qgqjD4IVkl/ZcF6wkFFRW3DchzI3AfhTqq7laZsmrlU
	 nwpTtJN610prA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B15D4404DB;
	Tue, 11 Jun 2024 11:59:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 103D51BF395
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A09E60629
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:59:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qwoPUuYjpV3s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 11:59:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D56A6059A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D56A6059A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D56A6059A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:59:51 +0000 (UTC)
X-CSE-ConnectionGUID: 9E9hGL9NT5Sno3/4bjBqpw==
X-CSE-MsgGUID: O+K3LVYdTGqNY57q2Ikyhw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="17733115"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="17733115"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 04:59:50 -0700
X-CSE-ConnectionGUID: hYX4tXmdQ9uOGuqCPzMceQ==
X-CSE-MsgGUID: JiJSwScpSH+pjbAM/Tw+GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40113289"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 04:59:51 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 04:59:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 04:59:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 04:59:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PlL4yeMuJZrVnJR5sG6QGtLs2XK9QiwYYoeStJ98bSqpH2KKIZWmFvkvIh7tE6xttGS/O/5tXEcI/OaFmJxA2uheakloyiSvnRJbmSmiAaVr28W08f/KI7n0g2HCIYbHvm46GUP+vf+1o7j6GY69xpRg76hE6kgwQLyvICpGpljbgHSSpZvv/skIptpyiPM/t2hmxfoqOpPaqGMK+QMwKK9Ww3oZ+dfR5WjXo9weCPwiGYb12NNp9kBNsSJW2NYMjKgr48F18ywYD8cqCs+l7ELukw25ammRrTI9jMt8LxlnMo5YZiMsp2Eoi46W1OhIUFZUWICCQjXTpwyApQLcxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFgLcxjkFzoF+Kse/rDiMYQFXcdFPAXanL+Uyot1gBk=;
 b=Qwy/BxJE9DlNLvJW7DSCUCUGucBkPi6CuT1+7+lLD3md7gpvuzny7nT+t5JIBKSaNQYpUvyzBNml9evRki+loxJz/B3Qv8c972br8c4yyww/rjNYPjXrejLbmCd8GLBm+A8hrfPekikkAmAf/dBu3RR62yYz6BuEZsPqMHS0Pe44CYC6aOoAez1xEE1/aBVBrQSOtui+JNK5aHebn9E9mCYVWuxbOeKYe0t4U4IGIySMORE5vgCb+CkVzNqIA4lc84GQoaDUEFk7+2CdX/uFnXNFs68g1EEq2cpf3gcT39gVpxElmYTzu5mobbyKlbOdK1MLDDDGlXO2dQFdvk7pBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8722.namprd11.prod.outlook.com (2603:10b6:408:207::12)
 by MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 11:59:48 +0000
Received: from LV8PR11MB8722.namprd11.prod.outlook.com
 ([fe80::314a:7f31:dfd4:694c]) by LV8PR11MB8722.namprd11.prod.outlook.com
 ([fe80::314a:7f31:dfd4:694c%2]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 11:59:47 +0000
Message-ID: <6f616608-7a56-43d6-9dc9-ea67c2b47030@intel.com>
Date: Tue, 11 Jun 2024 13:59:37 +0200
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
 <20240604132155.3573752-2-maciej.fijalkowski@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240604132155.3573752-2-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0055.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::6) To LV8PR11MB8722.namprd11.prod.outlook.com
 (2603:10b6:408:207::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8722:EE_|MW4PR11MB7104:EE_
X-MS-Office365-Filtering-Correlation-Id: cfe570de-4277-43d8-24c6-08dc8a0dfdcb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2E1SmxBdWRieFJKbUhqSDQzSjFWTWNCZ0Z6L2RtN2ZsUTBnb1FSZnl0VEZJ?=
 =?utf-8?B?QjlaOWlTNFVYQnRYT2k2VVZkK1o2cy9LYkNoTGhQUEc1Y0g3T01LeEV3VGNh?=
 =?utf-8?B?ME1EWXQrMkpJMFByQ3VpRTBGRXZ1K0VVdWlldzZQMXJ5L1NUcnd0RkZCN2gz?=
 =?utf-8?B?R2l0elQzN1RmY2R5amFiRmVSbFlMcFRZWksxWDFESjdHTVZNU3F3eGlTRXVG?=
 =?utf-8?B?Ui9meklyYWlnbU1qMHJqYktzS0NVblY4dXZCVy90WGhqMWRVYjYrTGR5WFJv?=
 =?utf-8?B?VzJuOEUvd1VkTWtVckppVTY2YWdwK25lWHJtaUdUZ29QM1ROckZNaUlOc1oy?=
 =?utf-8?B?M1U4Nmtva1dCOXQzMythZHZiTlJ4MC9KcCtRUm04T1FocHNJdWl4RXFIMk5J?=
 =?utf-8?B?bFROVlNhT3ZPUWxpV09qNjNTdVdBalRCQ1ZkblhBVFdFb3ZCWlhLanBnTWJt?=
 =?utf-8?B?UHo2NXBHWXdOZEFvYmI1cnAwTS9KRlVROEtMc0dSNDU4WWJ0NnNEUGFDTTJj?=
 =?utf-8?B?K3hjcTRRczRwTmhsaXZCTWV4Zy9FWXkwYmdKUCtobGJwUkZPcjAwTmg4Rmht?=
 =?utf-8?B?V2czY0dLVUV4VklzTGM0eDVLSE5veVdvN3d1b2R3aFVWbWdRMldkNEgyeXVO?=
 =?utf-8?B?WkJaQmh5VGw4Vm54aWVrMXM0blN5bE9xVnNIZm1DNjVWVTRnbzdYRGdLR0ZE?=
 =?utf-8?B?WnUwL0lTTnNNKy9WQTVmUWVET0Z3VEhMNjR1b3J1bHhIQmZpWXB3alJ0aU4r?=
 =?utf-8?B?OXhKdWFYWCtxRmlKdE9vOHJTQ2hpUWd3VzMyQlRteVhZcWZUOG5peGs0Sll2?=
 =?utf-8?B?NExhOWgzTTg5RkdvaUpmcis2M3d1YTRKSGxQVXUydGIyYkdCb1ZPK2lGVith?=
 =?utf-8?B?YzZVYzFjaW9TOUU4czdTUTBnMDBGL0t3MEU4RVI1YnJISnhGNkVMTDVVWFdm?=
 =?utf-8?B?ZDNMTlJ2TnNVK09LMUd1WkFlT1ZaQ3NsalZ0ZnRoM1MyU1NSVDI5Nk1JYUdX?=
 =?utf-8?B?eGxZYzBBWnE3RFd2d05aVnc2dW0yNTlrTmFYY2VnZmo4SlIzNUQ2NEhnR3lu?=
 =?utf-8?B?clhSbGRzWmtZa2VlSTAvMkVaWlRkd1VZdXUvaFFwbE5oNWJmVzMwRTVVdy9h?=
 =?utf-8?B?U2l4d1hXVStSdDhaMkZHc1Q3L3lJM0RjL0hpZm5zVU1aZVpYa1IxYWJ3R3JT?=
 =?utf-8?B?MnU4a0ZHazM1NVhHUVYyNzNJRTZWd1VvTE9lTHpqSjJiNmRDcWIrV3ltMmRR?=
 =?utf-8?B?bHZtcnVLaUtXMDMzbElIdnBJL09xM05BZVN4aTMvQXJmeUdGQ2NuNVpCSFhm?=
 =?utf-8?B?emhyZjBjRVlpeWdmM0xIUjl1YzRTVmNrUVloL3FSUmlOdVZaeFRzRFdubWpT?=
 =?utf-8?B?UTBhcFpEbVEyeTgwY05GdjZWMEptRDZvb3U0dzJsMFlNaHZjbXBDbkxMSmd5?=
 =?utf-8?B?dTllQU9sd3R2UUdZVnVyQ052OVhKT1BpVmsrYnpoN244ZmtmZEdONDhtNEhq?=
 =?utf-8?B?eWhXTmdWRDdyNDdzbEtKQ1FvOXpCcnRJYzBRQVRjWmx5VWV6WWV1eXY3ZlJp?=
 =?utf-8?B?bkVGYmJUcm4xcmlWakQ1eTkwSE0vWVRXWDlXaEV1N2NzTVl6eFRtekx1Z24w?=
 =?utf-8?B?N1BCWklNV09LUWpnT205aXY4WVRrZ2tIL3dTT0VUYys2VHJmZGJNWmY3am5w?=
 =?utf-8?B?UHVsZTJDVk5FK1BVYVlLdkZUSUF3eWVRYTFnS21kTWZWa295dkhPa2w1MUh2?=
 =?utf-8?Q?Zc81H5mCfjIG6PEb1pS+NndeG6glml64Jwx8uwU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8722.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekV0NnRtbWJVS2NKNmZRWEhnYm4zaDJvcCtXektpRWpzZDUrRHRvNTUyQVV3?=
 =?utf-8?B?UnVQemFwM0pVUnlUcTRESFRSbFFsZUlvN0ZmdWRNOTJTMEhkNkx2NjFpRGJW?=
 =?utf-8?B?US96SGtxb1hFb2R0THB0SUFqTk1XWkRzN0JkTURrTmJRNWszVHB4Z3B0NGVI?=
 =?utf-8?B?eDdrd3M3QytYWUtVdFRkSTl6WTdrMlpyYk1vbklZWHdDd1gzZWpIS3VyZGYr?=
 =?utf-8?B?T1BFSDJiNFFHU0hQYlhUNTQ5L0FxOEFxTEFmNUdZUDdCRUlQRGJuczB6dC9s?=
 =?utf-8?B?V3I2dXNpZDh5LzhYdFhNcjRHQmlzUTFKT0tDbUJoMlNaM0xqdHpVTVFpRGRG?=
 =?utf-8?B?Nk1Qc2kvdUppWGpCRDF2VnA2ZkxrV0tZVUQyOWtpem1hYndOQjdWRWpGY25s?=
 =?utf-8?B?b2ZTNGdBNnN3U2VHV1hRQys1dXUydU5yL3A4RUNqV0oxUE9Ua2IzVFAzY1Iw?=
 =?utf-8?B?a1MwK2hCeUJCK1NkSFVXV1RDNWQwL0lwK3dHKzJORGNVc3ZJa2dkZzk3dXdZ?=
 =?utf-8?B?VTBnQVBON2FOZWE4VlVwNTZicldKNFZwWW1MVnJPM2xFK0F4NTVDVHFCNm5v?=
 =?utf-8?B?UUtIQ3dCTXYzYWtVNlpHK1dNQzJBRk9CY1ZzY3hNSVBCVDlIdGtNL0dOQTZo?=
 =?utf-8?B?Y2ZTK29WRW5YVk1CZDJuUTA2bmVVNEg1bWJkZmlVbzFtMVB1RlNFclh2ZlpN?=
 =?utf-8?B?VjBrZjdkM2s3ZEVBNUFaaXNMNHNCSTMvc25HVFFlUzd5bmlmM2xYaXhyd0N4?=
 =?utf-8?B?NzhIblRFQWdreUdmbmN4TE5pS29RWVVyNzcrUjNNbVh3Z1JLOU43akhtemdE?=
 =?utf-8?B?UWlIRWdJdHNydThsR1Bsd1hnU3dObjhrVWdtMjRnTjJFVEFIQlZKcFFEWkJI?=
 =?utf-8?B?cFo2bnc2V082YzlJWGVBOUtjTWFKbHNMMi9wZkc0cjR3TzBnTVdMYmJ0WW1E?=
 =?utf-8?B?TXNta094WGhLK3UyYlpuY21qNEFON0RHdEdieUZWVHp4QmdXUmV1L0N3eWNR?=
 =?utf-8?B?RzVvVlJva1JFUTRDbFV5M3Z3WkxTZ2tobmp2THZtaTA0QjQ5cEllVGVRTWlO?=
 =?utf-8?B?dldGd0RUUWpHTmR5RGN4aXUyRnBJMms4WElrY2FKaDM1eFJnTGtMU0pKbXBx?=
 =?utf-8?B?bU96cU40NGl4cnFucE9rclpIQ3BiWERIVklkaTViaHE4WmpJbjBqNEhpWjY4?=
 =?utf-8?B?QnVTVjBwWEhhaTlwRlkvTXh1ZWRJa0g4WnlYMW0yVmdMeTIya1dVaGZEbDRt?=
 =?utf-8?B?N3NLWkNFWnQ4Q2NJcVYyK3dzYlpXUXJGczVMRG00STkrUFZPZVJGMW9ldnhj?=
 =?utf-8?B?RVpySHNUbkh2RHBtWC9RaFhvZFVLT2FIM2ZlRGVPcjNhY2ovMnNoL2dVS2lD?=
 =?utf-8?B?ckRjbS9uMW5nKzV2emxxc2tINnFQNFlRYUc0V3NKWG5zZk9aWENyc3FwbEJT?=
 =?utf-8?B?SlZzaklkWXRZaXB3VUNrdURLczRQYXJsTmFnaEF2anM4dlNrci9CTG9ZMkt0?=
 =?utf-8?B?WVI2a2dScHVtQlhuNlN1NXhoQjhweUZxQm5rTVAwN0YwcXlwbHU2NzJNK1E0?=
 =?utf-8?B?K3puUFBROTF6bm9QVFFsSk0zRUxpbExqZW5lZllyaWUvWHhtd2V4SXBQV2Mx?=
 =?utf-8?B?UmRLd1FTTlJMaHdtVmJoUTBWb203bSttc3hyUmRsN29IVmY4dGVhM2duSjk0?=
 =?utf-8?B?R2pLWThLWUhIL2JSVzNIbHB3WDVyY3VISmJkLzV2T3p4Sk9sby9Sc3hnMERk?=
 =?utf-8?B?Q3pQY21KNWNhUjkyV0oyRE11YkpjcUZJbGE2SmFVQlpBUzZhL1N6YUtvNHBB?=
 =?utf-8?B?TjlvMUkzT0hkODRQeXBpVlVzSDNiSHdrWkd0U3dHNm9kdWNOMjNQWXZReEJi?=
 =?utf-8?B?bTFtRHB6ODFpaWp3cFluRTJDMDhxcEYvK0Z2dUZhSWpSRmZoOGFXNFFtbCs1?=
 =?utf-8?B?akF0dGlaL1JSUU9XMmEwTnZYbkJDbzZHTlNmVlJjUVRKV0RyV0t0a3AxY0VQ?=
 =?utf-8?B?UEw2MWVhVUJIVGdDbVZIT1NtK1I5ZE5ORnhNZG9iOXJjYjBFaHEyVFdieFd3?=
 =?utf-8?B?VGRnQW1OVnVsM0dyVUR6alhSa0VjZitmcGxkL2Jhb1hFNGVaNlZIWGI1alZY?=
 =?utf-8?B?ZGdweHJDYlNFc0dsTXZzTW5GTHFHc2hpSjdGYmJCejdXV3U5SVpkRnNRYlFP?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cfe570de-4277-43d8-24c6-08dc8a0dfdcb
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8722.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 11:59:47.8585 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CS6Rj6s5pLhJ0ceKNFqGK9ZnI1PLjV4tuPlv4S9lWHJiKlsaQ+FY8OXXqYr5ovtJenjZn4lgCHYylzbIJHXzz1jtlz5fMfTy6GwWa5DoGQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107192; x=1749643192;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xnbP43GScGI5is607VUsqbMiVsh3q3n4iUrg+w4Xj5k=;
 b=YwvoS1Ec1tQ0JAhSC0HaVdYNrge5WPhDNpX5Ed4Eejy0X+BwMELt/C2+
 Z2XTpgcOsvrAHLbeGdm/T5L1CJazfX9qG88jvl0lfg39htZoxDuHJ8Jj7
 akND7BBIz3bR4X1pZYdXq7A39N4LyHHGkWIUONZIAfXnPSjAGHKCn8KII
 r0XeqqAEuVjD663e5SVRA+5YUh/3GXiCehgHRo+M9u6WYRpwLBWd5+PVY
 2XW1iaCxepDytcAR1iFndJOxxac72J7ItKIhwCc13PpOL1WSxkHN5+16b
 qiRXpTgKSwn5GMdjmxdJw9dRST27jvHgiJIKVSVqp+iOslV/xDIPfb8n0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YwvoS1Ec
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, Shannon Nelson <shannon.nelson@amd.com>,
 magnus.karlsson@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue,  4 Jun 2024 15:21:48 +0200

> From: Michal Kubiak <michal.kubiak@intel.com>
> 
> Address a scenario in which XSK ZC Tx produces descriptors to XDP Tx
> ring when link is either not yet fully initialized or process of
> stopping the netdev has already started. To avoid this, add checks
> against carrier readiness in ice_xsk_wakeup() and in ice_xmit_zc().
> One could argue that bailing out early in ice_xsk_wakeup() would be
> sufficient but given the fact that we produce Tx descriptors on behalf
> of NAPI that is triggered for Rx traffic, the latter is also needed.
> 
> Bringing link up is an asynchronous event executed within
> ice_service_task so even though interface has been brought up there is
> still a time frame where link is not yet ok.
> 
> Without this patch, when AF_XDP ZC Tx is used simultaneously with stack
> Tx, Tx timeouts occur after going through link flap (admin brings
> interface down then up again). HW seem to be unable to transmit
> descriptor to the wire after HW tail register bump which in turn causes
> bit __QUEUE_STATE_STACK_XOFF to be set forever as
> netdev_tx_completed_queue() sees no cleaned bytes on the input.
> 
> Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")
> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
> Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 2015f66b0cf9..1bd4b054dd80 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -1048,6 +1048,10 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
>  
>  	ice_clean_xdp_irq_zc(xdp_ring);
>  
> +	if (!netif_carrier_ok(xdp_ring->vsi->netdev) ||
> +	    !netif_running(xdp_ring->vsi->netdev))
> +		return true;

Why is it checked after clean_xdp_irq_zc()?
Also, unlikely()?

> +
>  	budget = ICE_DESC_UNUSED(xdp_ring);
>  	budget = min_t(u16, budget, ICE_RING_QUARTER(xdp_ring));
>  
> @@ -1091,7 +1095,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
>  	struct ice_vsi *vsi = np->vsi;
>  	struct ice_tx_ring *ring;
>  
> -	if (test_bit(ICE_VSI_DOWN, vsi->state))
> +	if (test_bit(ICE_VSI_DOWN, vsi->state) || !netif_carrier_ok(netdev))

Same for unlikely()?

>  		return -ENETDOWN;
>  
>  	if (!ice_is_xdp_ena_vsi(vsi))

Thanks,
Olek
