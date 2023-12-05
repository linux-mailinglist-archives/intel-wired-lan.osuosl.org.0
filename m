Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4747804944
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 06:19:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 610E660B01;
	Tue,  5 Dec 2023 05:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 610E660B01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701753582;
	bh=CFrEACZ9a6PkoKLQu7flC8kY+W+awWvkKC+h5zR2gl0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r/gz1uGUGpAfP0qu1x8dNn8dHe4Dk1FDbhU1tyQQdCB6nlLOjgcrre/G+aP0Kc4tQ
	 fbP2FNQiu9BvtasDEEgY+y3NDSoASSbJJvxWgiLRW5rpfYYpDxBnLtZyHu1wqwK8er
	 4TxEA0RYlMKqDPPSiJTAY91p25oUjXx6xoE4vvSVLEKmSW3WykNVS7HEeFIZFvTFgU
	 2Jzi5q0GQv5EKexgYDhfa/e6kgZXM9rMuvgzv8Ijn1QdQv8SEDC4KOHH36C57tepkp
	 kmWD/mlMQicXNoZ1pByMqPFsr8JjvTlvYM9GgQ/guzhNIMH/VBPwRqBDL9HM7Pm/Nn
	 uErVTvAXp04hA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gs2gmgH97qoQ; Tue,  5 Dec 2023 05:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B9D560777;
	Tue,  5 Dec 2023 05:19:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B9D560777
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DFC61BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 05:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3186A417EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 05:19:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3186A417EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnE_aB9-vssD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 05:19:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F04BC4090A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 05:19:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F04BC4090A
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="378872604"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="378872604"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 21:19:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="720571924"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="720571924"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 21:19:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 21:19:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 21:19:31 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 21:19:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIQ+jEIAr4vWguv+w40xxyjLLpZ51GjdzMWNwRxu7Y88hCjDuvwQ3PVXURHMY9Q+c/wx2BT2+JUEPRmq/b2jyKIpWE26Yny4ZwjazDhEjTWt1zbGR/zh5OkHCAC4paTL5DcASi2LWKt1weC8nL3wxuqanVn0UuaU+KAB5rdPZyiBfkdnza669oHex0jkklCuRcyqDHCo+FLUrIQOai1fj0/0peIoGFwEIdo9l00XeUMccFtWOKBD0RCY1nw7hAlJCppLJGE0IuT7bOadRBAW0FqH6OsYAPHO/DYqREFue2nYauKtJW8Rraodmsq/KGf8A6wVURr9qNgznCjPkks8ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZOykDaNSe7sGA23vouGM7QiY79DoEoYLZGMmKiCOMHw=;
 b=m8JaqTKmm1qdvaJ7fohiT0RsTi3YXJhnsFrzB3dIqnnvxRDv67p4WOHI5DwE9YVYGT/b7Bb7Lmox6lOYEMi7CFifeQgsBcdFJOVqKUS3pTEljhFGCSY4Yyz1H8xWPgyXR7Gk0lzkHGOMQIr4ID0u63ErMWdZsvBXgxYLa/xBG5gvsuOxud2NzhKqqtDpNh1p7QGqwtF7jjlPHRBgoblKqQ9/2TDfcgB79d+wP0ToTSQpyE1uOmexl7tWHwzrbcO2J5oKEwuKmlApSzpu+vtwp5a3MLjjkOYbDYx4w0hLl1fqkoKqlPx7xDyfZ6xgKxGcvXsdg5jcjbhyMCeKHcOMCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH7PR11MB7122.namprd11.prod.outlook.com (2603:10b6:510:20d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Tue, 5 Dec
 2023 05:19:24 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 05:19:24 +0000
Message-ID: <d0fc7d04-e3c9-47c0-487e-666cb2a4e3bc@intel.com>
Date: Tue, 5 Dec 2023 06:19:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Johannes Berg <johannes@sipsolutions.net>, <netdev@vger.kernel.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
X-ClientProxiedBy: FR4P281CA0085.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::10) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH7PR11MB7122:EE_
X-MS-Office365-Filtering-Correlation-Id: 311cab4b-5619-4507-4114-08dbf551be98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6jLtky04dQfhzNmSCknqTRUrTl7FiMhxjSKyOfvs1f6m3YYiu9ID1TByFgWjvTXP5Z9fY+DMawvlQQAa3Ig/yrg2h06f1Lgl7J0jyxUqdj+0CPV/67jWnTQCu1YoQD2/52+IcXbZ0OxdRGoDX9iQh9b/KPMjJM60NIMe3i/Hqi5d56xFh5OQ5NR9lyNDed74NzKWf4dZKMsU8TZfrPZhvq7A4NyLdPjxQaznmWFZq9TNrJ3cHTz4YSVQMJzR9Zm2qN7ll8ifYOM9hMZoHf+LiUzE1KTVxIqLMnaDFB7wBGkU8JZtOqJqkKdHJ/qdT0ARRjDYD58dCTPzlOTFRyjOHi3HL59lvPumLOWdXws1H4bXCdBIBz2bbkMWjKUSBmxFqg9ZkD+sYclwehHTZK+YktunMINpOKuPxkwtUtk5YatZSOV3HFXlzFlPNA8sIUQoe7eMjbjxX8znHEhdIZZZcduWWqNwe9TSUroLQznCBDLz3WgOln65DdtvhmVO70qPYSaeOE5Wp1SIZoKUqcNUw6v63q2i76+Wgb++9z5VKeI9o6ytmU6zwftff5TgedtzlrTRRE41pg8O3yDGhs0MTCORlD5EeHftE4jxUMpc/U7zCgL7zL9b+xem0/Day1GcCGmifLGmv46js3S0blFhGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(39860400002)(396003)(346002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(2906002)(31686004)(5660300002)(31696002)(83380400001)(26005)(2616005)(66556008)(86362001)(66476007)(54906003)(82960400001)(38100700002)(66946007)(4326008)(6512007)(6666004)(8676002)(316002)(36756003)(8936002)(6486002)(478600001)(966005)(107886003)(41300700001)(6506007)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjAwMlhFRHFHWkZtQlpjaC92UGtITndwM043SkxCU2d4RS8wQiswY3VBUGFT?=
 =?utf-8?B?N04rTHU0RzlJdWpUd1c1N25yVUZ1Z3BuUGtwVkgzdEtkZ05lQ0wrQmh1cURG?=
 =?utf-8?B?WFhIQi8rTnlPa0tEVnBXZ0syajJaUi90SmY5blc5NW1IZzN0YS9vU0VqdEJZ?=
 =?utf-8?B?MnJZNFlUMzBjUkY4Q3B3bm5ibVA1MFQ5NU0zeVZva3ArODZHK1pwd3BGTjJw?=
 =?utf-8?B?K2ZDQnlmVlROY1BTTzZoYlNadm9udTZrV1BHUExrejZPNlFVUW1GKzh4YjVX?=
 =?utf-8?B?dGxrdUw4SzNsZ0MxdEhWdkZMN3lWVmZnV2VxdVZyM2pURjN2cnpCaEExS2JQ?=
 =?utf-8?B?aWNaaGtEUDA2aG9yL2oxVWJJS2VGZHltN2NnSHZaQkZMdG55QnU3Y0ZBRUlB?=
 =?utf-8?B?SC9zQ0NQMTNzNlhsL0Z4TDVMZlZGY2thWmszVlU1OXdaRWFkbS9UQW52dWZi?=
 =?utf-8?B?UmZZR0VQN09LMlEvakVuT0JBZWJ5MER4aUo4K21xb2UzRDhVS1FPUVBHL2Qw?=
 =?utf-8?B?RTV2aFNqQStmMkV1aDBiZVkyTUZ6TFJsTndsaVV4QnFKR0Z6RnhJR0I4M0RR?=
 =?utf-8?B?RCs2QThPZWZSc0ROSjZIVTJaMlZPZzV1aFBHQ2xHWnpnV1VKR1VWUGV1Q0c0?=
 =?utf-8?B?RHFCQUVIREQrQkFMbkhFaDh1L0JSbVJyZUpwQm5MbEtXT3VVejV3V1l3NDNu?=
 =?utf-8?B?Y2NpWFpmNnFtMXU0VGh4MFNreEdHS0NNcGpDR3ZQd2tFVXBpbDl5TlI2MVpH?=
 =?utf-8?B?N3BmbGltY0xrRU1mWnI5cDZvZkh4aXgvQWJLV0xuL3FKZFdzM0lpempNd3g5?=
 =?utf-8?B?RzB4VjhZN0dBMFdJaTFVUDRJb3pGY2V6RVlpMjBQUFJwVzBMS3FrNHZBTUhv?=
 =?utf-8?B?YkNRclVKNE5wWVFtNWJUQ2cwQ0VjZmpXL0JYMWZheGt4NVZuQjdvbW5qeXdn?=
 =?utf-8?B?TE5DeFgvSGFyZ0RGVmw1Y29yYzUwcmVsdS8zTHlUdkZBY2U1OWg0UjVrVVh4?=
 =?utf-8?B?L211bXlsVTFqbEdOMjdUdlE4NWg5bjlBZ1ZGQ1NNMGxzakZRV0w1TEFveDFY?=
 =?utf-8?B?N0tCV0J0bFlKNlVBaERsSHorYW5makZnWHRpSzUwbWxEZ0dyWnRzbjd1akxQ?=
 =?utf-8?B?OVNZTW9od1VscjUvZlYxS080OXE2Rk5vdmtOaWpnd2VPdmlTWGV4eGdkaFc1?=
 =?utf-8?B?U2pDZ2MyamhHMEVIc1ZwN3dYQ2ppUDVZUDVFY3h2ak50UEhSOXNWMTg3SDRL?=
 =?utf-8?B?QzcyWU1EbXZ3Y1hWVGdrNEc0bUNTZmd1Vkl0QjM3ajBsVzNrN3BYQXQ4c0NO?=
 =?utf-8?B?aWprQ2ltU0kzd0l3L2dKYlJLR05DdVJqTnppa1JQNUNkN05OLzFKYmRVVFhV?=
 =?utf-8?B?azNNQmlNa0s2d2Y1MmdWZFRlWFpxTGFPZXV1UG9DQjFxT0psZ1JidTE1eCto?=
 =?utf-8?B?ZC9WODU5eEVQWW1xZ1RWY2pDam5Tb2J2U1FoT0dzSGJyTWJld0o1UlZkL2Yw?=
 =?utf-8?B?UFllVHZPcTgySXlBNjZWdDZ6bWRzdzRlWExsbjkyUitQdWp2cVBUOCs2L3hY?=
 =?utf-8?B?NE5wMC9oYzFnRWJ5bWdqemhHandoUWlIQjJlWHFXTmIrZk82a2hPUSttK2s4?=
 =?utf-8?B?ejNkL0ZKeDlQY3dXOEtYYlZsUGpOUXYzL2NKTm1wd3RNUElPeUVpYTJtSVk2?=
 =?utf-8?B?emN3c3E3N1ZDRGVOanZKZmdXNWh0YjFxY25RZlgrWDhpM0l4ZmU0VGxxcEg0?=
 =?utf-8?B?YlQ4TlUxSXMrYkZYL2FwM1BxOVhVRDlYdkxLWWVhamFSeklPa0RWMlBEVklv?=
 =?utf-8?B?cjYzbTM2V09qZElYbGg4akZodGJqMXFGUU42WENMSVkrS3NMOU8yZ3FVdWNv?=
 =?utf-8?B?MmhpNGlLM1htNXdoY1hoRkd4YW5hQUVMZ1Nxbmc2MzlzY0lHYkJBRkJYWS9u?=
 =?utf-8?B?YnhZa0NFRGVNQjJuVC91WlA1MkIxSDJITktvWDlmYWx3L1R1WkVkQzQ2aHRa?=
 =?utf-8?B?Z3Zqa2JwL3U0RVBYOS9KK0prSVMxMVdXMEY1c2RRK1FDMnNKVUdScjZJK0JO?=
 =?utf-8?B?aS9lQ3BEZCtValVZVHJ3OXIzdVc3Z0NueUlOdFkzL0MvTzBSZFhOS3E1K2t5?=
 =?utf-8?B?SVcveEZGRXBjYmNJMXllRUE4MTVjMDdxZEJkUnd4R1JOc01tYmZEajZxM3dh?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 311cab4b-5619-4507-4114-08dbf551be98
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 05:19:24.3094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8jF8t20GdFPCD2RzkWCH7hKU/8TShrdWZ1JnunIdEgmp0vyNVClhYHn7IjG/KWqUTNh0zto7LMbAmvPdibR+Igdm3/vlc1rtWG4uDFqtkqg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7122
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701753574; x=1733289574;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Eas9xM4LjnNifMxuOcgw016dOZy/n5Ig86aew3Z+dYo=;
 b=Y9hN0Q9OVeXUYBkRTtOmxTIZkmZslx8n4wZ8OkkOiMlaEXyK1/AnnMkJ
 MDvyYdabjfv4l4zPLDWf6IfUCzbb66MZVphoTpuT8uLARnohcDPWxUuUi
 NoDqy0Mmpb81YrrdggU8u2E2Q67lQ0GNcp37843qCygSilz9U6AN2rlkW
 VwMtzRpL5VAAxuIoXnaecB+L5nUJDNWIvw3wO1jXP4PaLuI0qiqjVY742
 a7s3UxW98SuMKACdRolbXRqnvaPOH4DlJIPbHEi5SIPw31C35TsDmxgrB
 TQP7Vh2j/I010LujKtBQ74IcYzbzUiH9u6w9BQ3s+aNkS4mBBmJ6lvdsP
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y9hN0Q9O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: Johannes Berg <johannes.berg@intel.com>, Marc MERLIN <marc@merlins.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/4/23 20:07, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> As reported by Marc MERLIN in [1], at least one driver (igc)

perhaps Reported-by tag? (I know this is RFC as of now)

> wants/needs to acquire the RTNL inside suspend/resume ops,
> which can be called from here in ethtool if runtime PM is
> enabled.
> 
> [1] https://lore.kernel.org/r/20231202221402.GA11155@merlins.org
> 
> Allow this by doing runtime PM transitions without the RTNL
> held. For the ioctl to have the same operations order, this
> required reworking the code to separately check validity and
> do the operation. For the netlink code, this now has to do
> the runtime_pm_put a bit later.
> 
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>   net/ethtool/ioctl.c   | 71 ++++++++++++++++++++++++++-----------------
>   net/ethtool/netlink.c | 32 ++++++++-----------
>   2 files changed, 56 insertions(+), 47 deletions(-)
> 
Thank you for the patch,

I like the idea of split into validate + do for dev_ethtool(),
what minimizes unneeded PM touching. Moving pm_runtime_get_sync() out of 
RTNL is also a great improvement per se. Also from the pure coding 
perspective I see no obvious flaws in the patch. I think that igc code
was just accidental to the issue, in a way that it was not deliberate to
hold RTNL for extended periods. With your patch fixing the bug, there is
no point with waiting IMO, so

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
