Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4058F85224A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 00:07:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3EE760A53;
	Mon, 12 Feb 2024 23:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vYJDhiF8N6N5; Mon, 12 Feb 2024 23:07:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E86CF60A42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707779254;
	bh=1TC65/WtmnnqFMMpQBPJ5j4LcDxoUyDmwwjVNn80Qxg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f9nLdkeRKamr4IlG5F/CcXBmultSFQpZl4mS3Ek49odYi1HOijSZOxeEeHmrSjUWK
	 DMAHm27x+TVvZYQ0iHO2LGVolbMNPTNb29KbSemcM7inWQPg2M1v1upes7tzN/oh+1
	 YE00LiV0HfHzV0P+UN5rXVgMCx067Y7CXGLg83iu7Xbhd22YRJ7HjKtP625aigesnM
	 ujh3A14Td9JMOv3gn947A4cMu9y5N+W2DQIRN5HXsdTGGeSsB5cY/jNeRXbRECU/XF
	 ug1mfSc2xb8Pz6/AhhvAiNpwAxwTFW6Jbj63avKwPaonoJMn4HSdLm0AffSOZcGUMY
	 g1qkmC6ES8bBQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E86CF60A42;
	Mon, 12 Feb 2024 23:07:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12D361BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 23:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B39A402DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 23:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jOc2UNavtmUI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Feb 2024 23:07:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8108E400D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8108E400D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8108E400D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 23:07:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="12866637"
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; d="scan'208";a="12866637"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 15:07:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="2675040"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 15:07:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 15:07:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 15:07:24 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 15:07:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/viXKge8w8q4x65/xHucNWTUgqjg/Wk+uxLu3HNsLyD5Bf1CsK0FDRJ6dO6p8fvZcZY9a+C3zPDvP6D/vHTRguSFwwt9pKEHKw4fdPXQ5G2V58pVHTs5vFUrC7LooHHp7Gk/FcDrFf0rF/NnGfNVfx7IJ8G7WFwGVymXt2YhQhcVD89JprwF8zxvubAuQRhlilkUIAxxo7TarCagDzI2x9/KY3Zc8KEuiqlGIzpIau/cu4Hr9YoBGd/epKEvEr4txJVvFj2bQOp0/M6CUjYly4AP17wHtXwJs9NWRdQX7wJLO8pjJFW/JGS596uOdIER+dzG66cvlU4eRoxHadepA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TC65/WtmnnqFMMpQBPJ5j4LcDxoUyDmwwjVNn80Qxg=;
 b=laDcPkJsAHNs6yWJnd7izXlY+QtgoHMgWz7H39e0imFioPkqiD5b/3OokU6u2Rv7ZbEH/4lr/sOWtUjUZjCg8YfFuJOMIloH3QJRuRS18DFnZPz8y+h2jnyZOH/ZBlQuCL25FtsB4XlMMFgtjmtmiwtWWMOwpGkyfvuDncVHJA9riNjUEvFAOEnC3x6Qlggxma9W/n64lb+6W+qeO0QQ2ljuAg2eMWm9oDOhF7Fr0QKZsxTTtlarQ2Pynj//xmRBEMJKPF9bZ4R3WP0AaJB+k4VnKNqPJbwq6iw4zzCOENRwFGkh5dZAgR/gI8GNNWzpcq74chnb1TUsv6TbR613SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB5245.namprd11.prod.outlook.com (2603:10b6:5:388::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.38; Mon, 12 Feb
 2024 23:07:18 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7270.033; Mon, 12 Feb 2024
 23:07:17 +0000
Message-ID: <6cb65005-aa47-4924-803d-cc7c3758c756@intel.com>
Date: Mon, 12 Feb 2024 15:07:15 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brett Creeley <bcreeley@amd.com>, Yahui Cao <yahui.cao@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231121025111.257597-1-yahui.cao@intel.com>
 <20231121025111.257597-4-yahui.cao@intel.com>
 <d1a5437e-a1ac-1fde-dfdf-9c1d8768b052@amd.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <d1a5437e-a1ac-1fde-dfdf-9c1d8768b052@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0195.namprd03.prod.outlook.com
 (2603:10b6:303:b8::20) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB5245:EE_
X-MS-Office365-Filtering-Correlation-Id: 91c80a21-ed3e-4539-b387-08dc2c1f5be5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AmKtO8BTTMop1e4sTeB0SW2bN1Y9DxVgOG6XiRfB2mYh3KlAbJHCUj/eUqnAV/MjyZcgm9B65baWDWy+2Wyz0dbBjdp4rYS4BO2EATB6KsjUnXMVyhAkJtMAP11t20bB2o/Xljyu7Ly1zDd3KKgZ7fexnUBXEHm9Vr0lSO2zynsfHPMJN332ywhdO6XteBFy3qto6ywsL8ns91CG3otjR6a3L6yt63B3nC1vDw5z4O6KQ2YG9L5kKNDPMGrHG+9kaIKhxVr+yu/0+xwrFhEkFzuQxHIRho39iuDkSChIkLIAY8E4GzP1IhBUh42mOYizOX5gc0veGn6HxgZRV0nbHmeVrwpbkWzW8/f8otQHzCGYO1bV1sD8+XII1Y+TO+zGWLIT1aIWtxVsSjbzeTiPbQ60OdULSRYkY1HDQJdmVTu1ghKSB0N07JzVEMDbS+obQSKYLZuOI9/gwp1NKK2inlRXp/Iz4aywr/GYu2gqbvNZoCE8VuWg1VDVzfwYQ7Q5a3BnfRgY6YAACDlsUIU37GeYvn1+8xsqWX9PRGNvyzxrG938tEQuKI+5LlnshQsB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(376002)(136003)(346002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(7416002)(31686004)(2906002)(2616005)(53546011)(83380400001)(478600001)(66476007)(66556008)(5660300002)(6506007)(6486002)(6512007)(41300700001)(4326008)(8936002)(66946007)(26005)(8676002)(86362001)(36756003)(110136005)(316002)(38100700002)(31696002)(82960400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NE9uTXJvZzZnalJxM01tS0tNRDVJN3Y3ZkVJRWpWZnJ3SUg5VXoyVkl4MkEw?=
 =?utf-8?B?MzdOc2FHcVc0SXJqRVZkVkFaZmZrRFA5ZjdrVXpQdE1SNk5KeDBKaGFvZnd0?=
 =?utf-8?B?YUR2dE5qYTJKL29OU3ZmU2NyYWEyY3N2QWZmMC9CVkcxdnJDd1NWcnFlR1Js?=
 =?utf-8?B?UHFsZ2FUSkE2eWxCOGZRWWVBZmlDUFJteDk1L0hzN25CTUxWczRHbG8zUnov?=
 =?utf-8?B?UWdzTG1WZEdZdlA3ZWNCVmxrRjJkMm1OSFRmalFwTGZKQnVkdmFvY3RiUzNk?=
 =?utf-8?B?Y1paTTgvTjRyaFhhMGJ3NnFaSExwSEQyZG9mM3YvcWZkdU9kVEg1NWwzYkMv?=
 =?utf-8?B?ZWVqNWZjQk1PRE4raGlXUmljaE45Z1FXc2NXK0dnb3VVcS9yT0VHNzg5MWdt?=
 =?utf-8?B?Wmg2elg3WXJkQjhKVWh1K09BMUxBV1IyTzJuUExheTdXbDZlcFZPcGFRT29k?=
 =?utf-8?B?Vk95V1N5UVdGQ3M5SUlZNThwUlE5c1JrcjZIYTBvYko3QUhYUU1DUGZPcVhO?=
 =?utf-8?B?TlNaVklMSDNabk4vSWFQUGR6WktOUzRReEJacDM5RjRyN3JzaFVVOENvVnZ3?=
 =?utf-8?B?ZE1xZGhKZXh5R2ZsWmZLSHdldzV2RzlrL3N0a1BKU1hySzllRVlzNTZVUlVG?=
 =?utf-8?B?SkZkTUxyZlROZmF1L0gzZ2ExY0ZOem50blFLWHpBV1UwSXBtRkJqRXpKRllN?=
 =?utf-8?B?Tklybk9IUjRhVWZjZG1qWFB1Q3lxd2xtQXAvNldrUHBWWmVTRDRML05hUy9h?=
 =?utf-8?B?VEdDdWxSb3dsbkY3OGVKQVJmbGpNNFpzQkh4ZVI4Y3ZnS3FiaUkxZHZRRVdM?=
 =?utf-8?B?MEYxYy8zMWJkR0pmUzdicEF1N0JrbWF5KzFGS1QwNzFvb2Zsc1FxSXBVQVha?=
 =?utf-8?B?cDhXQi9ETnN6Sk83M0xrMzBVcm41d0ZhT3hVekZSN2ZFdE9mQjJFMGhPbnBX?=
 =?utf-8?B?OWNpVnYzZGJ4NE5GTEFwb2dWK2lmWG5qYnBCRWk3azlhUytPd1NmMzlINmln?=
 =?utf-8?B?d3hzMnQzcHovbEFjT0haTFdlR0JmcmpUeTFMWVRtRjJlNUhWQ1JNSW1xRUI3?=
 =?utf-8?B?N1JETUI0Vnd5Yko0enUwNGh0ZWJicGZSSjUwMG51Mm1tUkZydzBnQjlTaVR5?=
 =?utf-8?B?clE1T2EyYktZSGNsYyt1Y2RZRFJUS3ozS0wwZmJBc3pnZU42TS9mZ2NaanJX?=
 =?utf-8?B?VUhuNmJEazFCa0dtZkI1VWx6R2wyajlBdXJqNHkzamsxcGpxYi9wMytHZm1o?=
 =?utf-8?B?cTFRaklHcDBEMFl3djFhOExiZmp5NjdLamlGQ3pjYURFT3NCYUhSU3ZTSjg0?=
 =?utf-8?B?NXJ5MUhvdU5KSjRSMFBRdlROcWJ6L2ZBMHNSSFdMSFJrRGk1UG5wQlhERyto?=
 =?utf-8?B?SVdJMnU5UnFwK2duWVhvRURaZnBMTHQ2RmVKR0NySXZuNFA3aUo2eHFvZUhV?=
 =?utf-8?B?S1pOSDJ2VSsrRzhVUy9JaCtrZTlrLytpYkluMlhsN0Y1NTM3UlUxUG9qZTdB?=
 =?utf-8?B?UitTemc0WkpsTjJscG9CQVVOMSt2SC80b0UxakdFWmR1OFZ5TkhOd2VuWlJp?=
 =?utf-8?B?d3R3WmprUXI3aW50OU51Q2FWK244ZWd2MXFETlBsTURHajVybzM3UGo3Nitq?=
 =?utf-8?B?dEJPeW5Ub1hYaFdUQ0RPTVIyakVBOXIza0tTQVV6RkZHRzlkQzl2OVl0Sk5a?=
 =?utf-8?B?OUZaL1lUTUpMa0gzMnhxamxYUnVNR09nK3V6azB4QVNabmh2TnpFMzBVMWxY?=
 =?utf-8?B?YkZrS3BsakZ2d2xzRlJFV1d1UFR1SmNvcE5xam5pZVZhU2xaMlNLNUZuM09v?=
 =?utf-8?B?NDllQmcxY043aVZKUVJTSTZGU2hIa3k2bkxhS3JYZ0EvQkp1WU9MSFg0OG5m?=
 =?utf-8?B?TEViT3dVT3R5M3ZtYWI1bEJtOFdFbXZ0bDZRaEcrS2o0OXlTUzJjeFkwV1pi?=
 =?utf-8?B?VnRNZ0NpV2toMm9hajk4QUFtc3VtbVpTVnhhQStKaWs0OCtnNnNBK1IxcjV6?=
 =?utf-8?B?Nlh2RFY5NUxMQk9ab0RFdDJvYlNQczZHUmU2VHk4WVVGY2VGOS9qdWhLVzVC?=
 =?utf-8?B?a1oybDRVd0o2ZndBT3lCenpqcjJycWtrNzUzTXpmblNYVVVxQmFPOERvNTkw?=
 =?utf-8?B?K08vbURoWi80L3NoZitEc2NiZmhrTUJpeVZTR2dlcnRwcDl3RzE4amJaZTRh?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91c80a21-ed3e-4539-b387-08dc2c1f5be5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2024 23:07:17.8699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7p8545TW+FvYJpGhHDH5/uAe1ySw5zpCv1jGYdcicR1HeVzPXALC+qliUvBd8+It7RjK0mx+zAItS0Jmuf+pc6h7JbOnsunXd4T8hw1eEy0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707779251; x=1739315251;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0ONcZCPPW6T+uOP/2bmYbRjc5wluwsvBiyPOFBgzL5c=;
 b=WgKjIj0rZUNlKA8FJcBFg7z80/k73vmtX2qStgHg1uVPOVVu4pcw1WXP
 DZQm4rl4gI7Tq1whB41APmdALP7ma5gQ+An45eudkEQauMXYn8G5vhnRN
 FdiWXdX70BxzjAXpWD7p5LKRqLum416n2ghSY9u9b/P6U40WsNL9EjRmE
 nsfFJIhnnjLwc4sR00vbGPx+9BAVeMEfCEIa3HAN24EMhczd0xkswoDq5
 /mNASMSRioN4nXyp46kl2Q/mXbVK+5KbzKMzwoMeKOPnR8W8L5VyjmQOx
 ShktAPBno3KvOxilWd/WxBHcZDSqLP7ggHv0iNSF9rikp+kKdg8acX8/m
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WgKjIj0r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 03/12] ice: Introduce VF
 state ICE_VF_STATE_REPLAYING_VC for migration
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, alex.williamson@redhat.com,
 shameerali.kolothum.thodi@huawei.com, edumazet@google.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/8/2023 2:28 PM, Brett Creeley wrote:
>> -int
>> -ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
>> -                     enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
>> +static int
>> +ice_vc_send_response_to_vf(struct ice_vf *vf, u32 v_opcode,
>> +                          enum virtchnl_status_code v_retval,
>> +                          u8 *msg, u16 msglen)
> 
> Is all of this rework needed? It seems like it's just a name change with 
> additional logic to check the REPLAYING state. IMHO the naming isn't 
> really any cleaner.
> 
> Would it make more sense to just modify the current 
> ice_vc_send_msg_to_vf() to handle the REPLAYING state? It seems like 
> that would simplify this patch quite a bit.
> 
> Is there a reason for these changes in follow up patches that I missed?
> 
> Thanks,
> 
> Brett

I remember making the suggestion to switch from "ice_vc_send_msg_to_vf"
to "ice_vc_send_response_to_vf" irrespective of the live migration.

I guess i could see it as just thrash, but it reads more clear ot me
that the action is about sending a response to the VF vs the generic
"send_msg_to_vf" which could be about any type of message whether its in
response or not. But to some extend thats just bike shedding.

I'll drop this change in the next version regardless, because I'm going
to move away from the virtchnl as the serialization format for the live
migration data.

Thanks,
Jake
