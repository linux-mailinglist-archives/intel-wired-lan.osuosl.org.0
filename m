Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3BE8004FF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 08:47:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DA6E42086;
	Fri,  1 Dec 2023 07:47:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DA6E42086
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701416863;
	bh=bLmWxvIrX74OyRgA/fnzoI5lJpctRNWzI1i7Cuch4cs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FaiOq9kz6Cjys9RJxWCxb613dqiC98rKJ5959//TIMC13JdroU8tgslZ/+AV7j11t
	 qUy/9PDrnkIs2sfyQvqLKFuL7QwiplEpxmetz8xWr0bK4GBDUpFyhjlfjSjeIVHa02
	 wrQVS7EYrPEpspoNW0R8//61Mradxd3iWUHxQWDuL5Az11iWjuskstCIDTaSd9tqsA
	 l6H1O4PNymcKEEcVEeIbIm/uknk5uqUDXjqU23sRZb52n9aDO7m1wfkc88CdqSlNfF
	 zMtEyYBRkuSx1eGhyEoiNYVxaKLO4us+kC50B+SVHHCba0cRCDHXAdSjCom6x3yKmU
	 voVHzZJGjT4cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b39p1JR6tOOf; Fri,  1 Dec 2023 07:47:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 308184207A;
	Fri,  1 Dec 2023 07:47:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 308184207A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E91D1BF98D
 for <intel-wired-lan@osuosl.org>; Fri,  1 Dec 2023 07:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07B4F60B3B
 for <intel-wired-lan@osuosl.org>; Fri,  1 Dec 2023 07:47:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07B4F60B3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SRxklqZAw4jk for <intel-wired-lan@osuosl.org>;
 Fri,  1 Dec 2023 07:47:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D16D1607B0
 for <intel-wired-lan@osuosl.org>; Fri,  1 Dec 2023 07:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D16D1607B0
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="459955779"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="459955779"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 23:47:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="860469615"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="860469615"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 23:47:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 23:47:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 23:47:32 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 23:47:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dRycQZZDZ/35m4TVkaYST/+z+r0oQ+t6b9ztFQj0Kj5DKc4kBavSuaO6G+KgwwQT5dTcnkl7dFWZmZmKFJ7Uv0irhINoL/Ijp8j20AW3I+tUJA+qWm55UlH1Vre/NxofqM2XKladH+KR5IK8/a4m3P34HZBUfPIbKF+lIHY1OP7+mSThZ1qUyxqUhagOq341sIx8HYbXV1uuXYg1IQ/aWZF2jQOQc8eOJzlnfaiuju9LQorZg2JJrs2elOU5NrlWjyHkHhjj99F5+Nn+c0Qgf/uNrfsyIJn6sLcrrXYWV/nWmuApuKaCYiHo/dyFTPA3pSExuDhMChMfiy3jdMoB5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8pBTcJQMkXoePot7hRwMfEQpUWpb7JlKskPARuRTvbw=;
 b=Hf4xDoPQF+w5F2gjYi+5q9JHlDinwu5e+++hafrZMs16CQWunQ2rzaSfOGam0QaOTL3B0m8/S0TmalwgZmUzt+mHmClZTpLn5rYAT3dRdUFZAA9YIPkcUBC+kr7CyStxsBtICvtPo8Ky1HGA6j/D/psyirKB8LUtdDPbx97pCN74xEYJV77amghAtXAkCnIjkbu/Sxrslnh27qhNJ918MeOcLffchcdd+HjV4Vd2AsSrVFZS5tCPcTGwj8X+2/fe1NoM5ezyZJfj91a0m37dH2kJ3zt2irOQ8d1itMo76WipotcKhPFPfa6MqMbnNmf5y+p4HKWqiPRsM3D9HqSz3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SJ2PR11MB8402.namprd11.prod.outlook.com (2603:10b6:a03:545::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Fri, 1 Dec
 2023 07:47:25 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7046.024; Fri, 1 Dec 2023
 07:47:25 +0000
Message-ID: <acb99fc5-035a-1191-89c1-f4b3b073c94e@intel.com>
Date: Fri, 1 Dec 2023 08:47:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: <whiteheadm@acm.org>, <intel-wired-lan@osuosl.org>
References: <CAP8WD_ZLjaAF+xZ4AA8o250ckq6naRhMMfeWQ9TFi70Rhuo00w@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <CAP8WD_ZLjaAF+xZ4AA8o250ckq6naRhMMfeWQ9TFi70Rhuo00w@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0292.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e7::8) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SJ2PR11MB8402:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ce584a6-336b-44d9-0a28-08dbf241c22e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rqUcbom8bWkBhntu8h1G+J203rYI5obmZjWIU3MI0dmfU4IuT5+sTdc9whBoBMz/eeMHs8N6Vf1gvYea81JZHhnR5N+9vZCUGtLBnT21bbYHXFgFxfiFHJ9RvLMPOSVvoz6QB1lmV1hbbfFiyxyTpN+KX85/PeOogFUO4Z6mhBhV3kwgv18phOLYwLToYAUH7DcIhAbfqulBF0v33WyIka/lS1ufitf1jTUIULZcSBicqWx1Wbh6XQKji/b9U9pbGY+OO7ArPv7HMz7HlVQZneWSUA/I/lmSCAClmfbtM+hMZ4TCVF2qOmygpkQHZ1XCny6ijwZacfJibIDencQDXR/WD4WWXLqFsMq3EW58CgVf8yTX76KUp6hBN4Z2Af4FU1P+05pIBx6l9S6tYeoDqzNTo8VPsUUYMBmokmIuPl1Zy03SnrIzGmH1Rz2SYG1B322/+c9RhMLI/nY/a1SPlU0XV2xVKbHsD7NdogCcejShpYTKXLjthL6gCA6Mqc3FN2bABsFaaoAwNa2pAjANhw7Xw3jTLcLmXQ3x0wKPXmgeV5GqPmwdz0u9KGEKyCo4R2sezu+ctghj9b4KAzLeyN2KEliBtvxuIUpIdg8nQJofYABMQQt4PIQBO582K7+trungR9crfTuqOrgyw2MqVfsarajGF4SLqGFXJPQSXUAKuvXwgUxsA0jrZat2Z7nr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(346002)(366004)(396003)(230173577357003)(230273577357003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(26005)(31686004)(38100700002)(82960400001)(5660300002)(2906002)(6666004)(6506007)(53546011)(83380400001)(2616005)(6512007)(36756003)(966005)(41300700001)(478600001)(86362001)(6486002)(66946007)(8676002)(66556008)(316002)(66476007)(8936002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVA0NjRTbnhzbWF3blhsQWJpbGhUdmY2bGFFM2dzY2hrVGFmMnR0RStZaDhP?=
 =?utf-8?B?VUV6R2pCYitnZEYxRVFLdENmTDJVQmV0ZDA4RTQvN2NXN3hreXhpT3MwNGdF?=
 =?utf-8?B?bWJBanRLRXJPMC9wbE1sK0Q5TVRHMmttQi9LQUtGcnF6T2svd3VNTENkTG9D?=
 =?utf-8?B?REdkVzlzMXU2MkUxZmVqM2VHeGluNlJCKzEwS3RNeXQwK1JzNVFFQjZuU3Fw?=
 =?utf-8?B?TWNwOVVDWS9wRis2Z0NmcERidmp0Mmh0ckhBNVVGTHhOQ0FmZHJHVzg0Ync0?=
 =?utf-8?B?S2ZXb1FlMHBYSG1qV01aS1hOSUtQZ2lmMSt5TmdFNHp5REZRdWY2Z2ZKMytM?=
 =?utf-8?B?UjM1QXJpWm5SNUJSU2l2VXlPSFZoQjgzM1AyWGdsdHAwZjM4Z29RSDl5TDE1?=
 =?utf-8?B?anNRUFVYVml6b1J2OXlhV2tiZnZWMXJQSjkrcHpzMHhzK1JsYXRJdVVUWHM2?=
 =?utf-8?B?ci8yOFk5NmJSSnlZaC9RYkVqVW1UdS9CeDQ4ZHgxUG01Z0dIckdpUXlDOUNl?=
 =?utf-8?B?bld4czFDWm1ZcTNyV1hJVXk5dXV4eEF0SmhuU0tRSWtidjliTGx4NnNZR3dz?=
 =?utf-8?B?VE5YZlAyZjVHd1JZMHY0RWFXdC80OElNVGpsK05BYlQveEdPZXhGZGhYR1pr?=
 =?utf-8?B?WlA2bFRXUU5rMWRtZVJUeDlWMlZWNkExUGdXZWtLNXFCYU5MUHBKeTBKKzVX?=
 =?utf-8?B?WUlNTnozN2JidEZKVzlNaEpkYzU2SVBGVENpUHdCYlFpOG5iRlo2OEpKT3I5?=
 =?utf-8?B?ZnlGS3FyQW9FV2ZZTDBWQ0U5TnBOd0oxbCtsQVR1Q2I2eXYwOXpzU0plSTMv?=
 =?utf-8?B?SFFzTUNOUUdTLzd1QVpnVk8zbGlzQTlFWmpKZUhtRXMyQm1TQVVBaVpzeitl?=
 =?utf-8?B?KzJmTmx4RmJPVW1uS0VKMFBvVnVJekNXTksva0paZitnalpwQXVDRWtUTmJW?=
 =?utf-8?B?bjBxUjArdTRQUGxrZTloK1UwSTlpTjJJNVJZUlR1ZFhUcUd4TnEzNDNuU0tP?=
 =?utf-8?B?ZDE3SHQ2VHVHdmZ2MmN6S3FtemtwZ3JyRFdDN0tsT2Z1WmtCTWN4WXdHS3VU?=
 =?utf-8?B?Mi9FWTNvenRYUXNUOFBDV0RIcUV3bDRyajhFc2dXUFExbzhjU1dxYytNMm15?=
 =?utf-8?B?dzdrSTlqZWZoelVMTVZ2b3J0Z2tmYldZWCt3YVRybkxDWEZVakhxazM5OTFZ?=
 =?utf-8?B?UkF4enBBbk9PdHN2TWdJUVJwcFRMakJFdW0zU2VSYm9sV3UxblZ3L2REdWNx?=
 =?utf-8?B?Uk5IRUFSRk83cFlvQTZSTDFaWmJCSXZSeFhWc2Y2LzhBak5WeFdkTG4zOTc1?=
 =?utf-8?B?akJzNDVzaHZMRllWUm5OQ0t0blpSYXdteFBPSGFudzE4bk9rZExHQUsvQTBW?=
 =?utf-8?B?OW5NdkZGTmR3YnpIRlNKN3d5WklrLzhZMy9UNm1LZnRxcWd3b3AvUFVzUWV6?=
 =?utf-8?B?VkNqYU90NUtFR2lSYnRkSmlqMjhIL3Z4M2NvSG5JVXpiMXllL3p6dUZCS0lx?=
 =?utf-8?B?MTMxa2xHUGpwZDVUUHRoMXpXSkxFOUoxWCtHWitLcHphYnU3RXZRelZ2RnFk?=
 =?utf-8?B?b0NNc21Wb0d6NU53R0NBUWdZRHp2cS9wcGJnK1ordkk1RWV4R0lIMnRtVTQ0?=
 =?utf-8?B?cGJtdDJsNi94R1MybTh2bndtT3lTUjhoa0dNYXRNcTAzWXJKemtvWFArZHd1?=
 =?utf-8?B?ZUFIenFCZHZnUEdNVjd5MHk2OVdpZ0VjQ1RNcXNzYVJlUVcyaTJoSG5sQldM?=
 =?utf-8?B?cWZXS2lhK2N0YjRaWHJvNi9JcCtwRmc0WmJOZDFjMWNGMWYzTklHWHJRWWhn?=
 =?utf-8?B?TGY2REJXM0pyMGRHeTJHTkhHZktickxicGMyZnZUSy85SUNDY25pR2hGVGVR?=
 =?utf-8?B?OHh3Z1I1YlJUYk1ScXVYVFQ4eVVFVTRSdGpnaWsyRDVaUWcxbVNvREVPanJx?=
 =?utf-8?B?Ui93UU9SMzhjZXpRY3JaS2xEZWxwZElaZjlxWWMxTG1jSU5zd0FDd2JKWkhs?=
 =?utf-8?B?N3hyVHErUEVrREVzbG9FTE1pQ1RybkYzeGJjWDJIWW1BOHRkMzA2RjlrcHJq?=
 =?utf-8?B?OGpWdGsyS2xjcDZXMmV2V1RNdTNDMEtXWXZUWnRXZzRXaG9qS1ZacE9zZmx0?=
 =?utf-8?B?aG9YaWM4SzJQeDh0SWk3Q1N5TmQ1WitEVm1mRitWRWZ0eUlJRkVkVEhkN1Fn?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ce584a6-336b-44d9-0a28-08dbf241c22e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 07:47:25.2722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hJVqG2s/VKM7ixdhapiSxtcswaZZpsdG62tUtjXzo0hp02sn3QfF3BHpO9PPKkqVu66BIATc5jKhi2FsPvh/cKuII5A8+kX8Mz6bidZzEjA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8402
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701416853; x=1732952853;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qAp4LaTQFeihnrDmPrC5/RDyBxzmc6q3Yxza3kSp44Q=;
 b=ImXe81GamOCh0UFvQ34KhegTJLmtj+WTuQzFBmzylfO57ls4VOD2Pvx3
 Z7Q6xhdQkC4ozpTnzVO4+SX5JrGp86+1/8zpt9c3ix3jAJL78kyHIMth6
 BpKvaKnRzy0GvETvnYebQQyeLCfoixNoUrU2zlsH+PihmSgO3nu+COgwF
 +JZtz8Cw8MLgVROXyCAljNlZaTBY2IeRO8dFsvH0LW96J/Uyfada2zaOj
 sZF8nApsFM7tmXnT/IR0SpK4Hm3h/i9fjKyCM14w31zzcxJ++gK+w3nqS
 9CSAmhblDRPJ9gkACV2Mtomlnzx4oijfxM94356QTH32VVarHskOET3qA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ImXe81Ga
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Compile of out-of-tree 'ice' driver fails on
 32 bit
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMzAvMjMgMTk6NDksIHRlZGhlYWRzdGVyIHdyb3RlOgo+IEhhcyBhbnlvbmUgdHJpZWQg
Y29tcGlsaW5nIHRoZSBvdXQtb2YtdHJlZSBrZXJuZWwgbmV0d29yayBzb2Z0d2FyZQo+IGZvciB0
aGUgJ2ljZScgZHJpdmVyIG9uIDMyIGJpdCBpMzg2PyBJIHRyaWVkIGl0IGZvciB0aGUKPiBsb25n
LXRlcm0tc3VwcG9ydCA1LjEwLjE5NyBrZXJuZWwgYW5kIGdvdCB0aGVzZSBjb21waWxlIHRpbWUg
ZXJyb3JzOgoKQXJlIHRob3NlIHJlZ3Jlc3Npb25zPwpIYXZlIHlvdSB0cmllZCAxLjEyLng/Cldl
IHdpbGwgYWxzbyBzb29uIHJlbGVhc2UgYWxzbyAxLjEzLngKCj4gCj4gJCBtYWtlIEFSQ0g9aTM4
NiBDRkxBR1NfRVhUUkE9Ii1ER05TU19TVVBQT1JUIgo+IG1ha2UgIGNjZmxhZ3MteT0iLURHTlNT
X1NVUFBPUlQgLURVU0VfSU5URUxfQVVYX0JVUyIgLUMKPiAiL2xpYi9tb2R1bGVzLzUuMTAuMTk3
Lmk2ODYtcGVudGl1bTQtbXBlbnRpdW00LWxlbm92by9zb3VyY2UiCj4gQ09ORklHX0lDRT1tIENP
TkZJR19NT0RVTEVfU0lHPW4gQ09ORklHX01PRFVMRV9TSUdfQUxMPQo+IE09Ii90bXAvaWNlLTEu
MTEuMTQvc3JjIiAgIE5FRURfQVVYX0JVUz0iMiIgIG1vZHVsZXMKPiAgICBDQyBbTV0gIC90bXAv
aWNlLTEuMTEuMTQvc3JjL2ljZV9tYWluLm8KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3RtcC9p
Y2UtMS4xMS4xNC9zcmMva2NvbXBhdC5oOjMzNTEsCj4gICAgICAgICAgICAgICAgICAgZnJvbSAv
dG1wL2ljZS0xLjExLjE0L3NyYy9pY2UuaDo3LAo+ICAgICAgICAgICAgICAgICAgIGZyb20gL3Rt
cC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4uYzo4Ogo+IC90bXAvaWNlLTEuMTEuMTQvc3JjL2tj
b21wYXRfaW1wbC5oOjg1MToyMDogZXJyb3I6IHJlZGVmaW5pdGlvbiBvZgo+IOKAmGV0aF9od19h
ZGRyX3NldOKAmQo+ICAgIDg1MSB8IHN0YXRpYyBpbmxpbmUgdm9pZCBldGhfaHdfYWRkcl9zZXQo
c3RydWN0IG5ldF9kZXZpY2UgKmRldiwKPiBjb25zdCB1OCAqYWRkcikKPiAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+Cj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC90
bXAvaWNlLTEuMTEuMTQvc3JjL2tjb21wYXQuaDoxNjoKPiAuL2luY2x1ZGUvbGludXgvZXRoZXJk
ZXZpY2UuaDozMDk6MjA6IG5vdGU6IHByZXZpb3VzIGRlZmluaXRpb24gb2YKPiDigJhldGhfaHdf
YWRkcl9zZXTigJkgd2l0aCB0eXBlIOKAmHZvaWQoc3RydWN0IG5ldF9kZXZpY2UgKiwgY29uc3Qg
dTggKinigJkKPiB7YWthIOKAmHZvaWQoc3RydWN0IG5ldF9kZXZpY2UgKiwgY29uc3QgdW5zaWdu
ZWQgY2hhciAqKeKAmX0KPiAgICAzMDkgfCBzdGF0aWMgaW5saW5lIHZvaWQgZXRoX2h3X2FkZHJf
c2V0KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4gY29uc3QgdTggKmFkZHIpCgpUaGF0IHBhcnRp
Y3VsYXIgdGhpbmcgY291bGQgYmUgcmF0aGVyIGVhc2lseSBzb2x2ZWQsCmZvciBvZmZpY2lhbCBm
aXgsIDEuMTQgd291bGQgYmUgdGhlIGVhcmxpZXN0LCBidXQgbGV0IG1lIGtub3cgaG93IGl0Cndv
cmtzIHdpdGggMS4xMi54IHNvIEkgY291bGQgcHJlcGFyZSBzb21lIHBhdGNoIGZvciB5b3UuCgo+
ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn4KPiBJbiBmaWxlIGlu
Y2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2JpdHMuaDo2LAo+ICAgICAgICAgICAgICAgICAg
IGZyb20gLi9pbmNsdWRlL2xpbnV4L2JpdG9wcy5oOjUsCj4gICAgICAgICAgICAgICAgICAgZnJv
bSAuL2luY2x1ZGUvbGludXgva2VybmVsLmg6MTIsCj4gICAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvYXNtLWdlbmVyaWMvYnVnLmg6MjAsCj4gICAgICAgICAgICAgICAgICAgZnJvbSAu
L2FyY2gveDg2L2luY2x1ZGUvYXNtL2J1Zy5oOjkzLAo+ICAgICAgICAgICAgICAgICAgIGZyb20g
Li9pbmNsdWRlL2xpbnV4L2J1Zy5oOjUsCj4gICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1
ZGUvbGludXgvaW8uaDoxMSwKPiAgICAgICAgICAgICAgICAgICBmcm9tIC90bXAvaWNlLTEuMTEu
MTQvc3JjL2tjb21wYXQuaDoxMzoKPiAvdG1wL2ljZS0xLjExLjE0L3NyYy9pY2VfbWFpbi5jOiBJ
biBmdW5jdGlvbiDigJhpY2VfcGZfZndsb2dfaXNfaW5wdXRfdmFsaWTigJk6Cj4gLi9pbmNsdWRl
L3Zkc28vYml0cy5oOjc6NDA6IHdhcm5pbmc6IGxlZnQgc2hpZnQgY291bnQgPj0gd2lkdGggb2Yg
dHlwZQo+IFstV3NoaWZ0LWNvdW50LW92ZXJmbG93XQo+ICAgICAgNyB8ICNkZWZpbmUgQklUKG5y
KSAgICAgICAgICAgICAgICAgKFVMKDEpIDw8IChucikpCj4gICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4KPiAvdG1wL2ljZS0xLjExLjE0L3NyYy9pY2Vf
bWFpbi5jOjU5OTI6MjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCSVTigJkKPiAg
IDU5OTIgfCAgICAgICAgIGlmIChldmVudHMgPj0gQklUKElDRV9BUUNfRldfTE9HX0lEX01BWCkp
IHsKPiAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgXn5+Cj4gLi9pbmNsdWRlL3Zkc28v
Yml0cy5oOjc6NDA6IHdhcm5pbmc6IGxlZnQgc2hpZnQgY291bnQgPj0gd2lkdGggb2YgdHlwZQo+
IFstV3NoaWZ0LWNvdW50LW92ZXJmbG93XQo+ICAgICAgNyB8ICNkZWZpbmUgQklUKG5yKSAgICAg
ICAgICAgICAgICAgKFVMKDEpIDw8IChucikpCj4gICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn4KPiAuL2luY2x1ZGUvbGludXgvZGV2X3ByaW50ay5oOjEx
MjozOTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmEJJVOKAmQo+ICAgIDExMiB8ICAg
ICAgICAgX2Rldl9lcnIoZGV2LCBkZXZfZm10KGZtdCksICMjX19WQV9BUkdTX18pCj4gICAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fgo+IC90
bXAvaWNlLTEuMTEuMTQvc3JjL2ljZV9tYWluLmM6NTk5MzoxNzogbm90ZTogaW4gZXhwYW5zaW9u
IG9mIG1hY3JvIOKAmGRldl9lcnLigJkKPiAgIDU5OTMgfCAgICAgICAgICAgICAgICAgZGV2X2Vy
cihpY2VfcGZfdG9fZGV2KHBmKSwgIkludmFsaWQgRlcgbG9nCj4gZXZlbnRzIDB4JWx4LCBhbGwg
RlcgbG9nIGV2ZW50IGJpdHMgPj0gMHglbHggYXJlIGludmFsaWRcbiIsCj4gICAgICAgIHwgICAg
ICAgICAgICAgICAgIF5+fn5+fn4KPiBtYWtlWzJdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVp
bGQ6Mjg2Ogo+IC90bXAvaWNlLTEuMTEuMTQvc3JjL2ljZV9tYWluLm9dIEVycm9yIDEKPiBtYWtl
WzFdOiAqKiogW01ha2VmaWxlOjE4MzI6IC90bXAvaWNlLTEuMTEuMTQvc3JjXSBFcnJvciAyCj4g
bWFrZTogKioqIFtNYWtlZmlsZToxNDk6IGFsbF0gRXJyb3IgMgo+IAo+IEkga25vdyAzMmJpdCBp
cyBvZmZpY2lhbGx5IHVuc3VwcG9ydGVkLCBidXQgaXQgc2VlbXMgbGlrZSBpdCBzaG91bGQKPiBu
b3QgYnJlYWsgdGhlIGNvbXBpbGUgdGhpcyBiYWRseS4gCgpJIHdvdWxkIHNheSBpdCdzIGJldHRl
ciB0byBmYWlsIGF0IHRoYXQgc3RhZ2UgdGhhdCByZW5kZXIgb3V0LW9mLWJvdW5kCndyaXRlcyBv
ciBvdGhlciBlcnJvcnMuCgpsb29rcyBsaWtlIEludGVsIE9PVCBCSVQoKSBtYWNybyBhc3N1bWVz
IDY0Yml0IGFyY2gsIHBlcmhhcHMgdGhpcyBjb3VsZApiZSBmaXhlZCBpbiBnZW5lcmFsLCBidXQg
SSdtIG5vdCBwcm9taXNpbmcgYW55dGhpbmcgaGVyZS4KCgo+IEknbSBydW5uaW5nIG9uIDMyYml0
IGFzIGEgR05TUyB0aW1lCj4gc2VydmVyLCBJJ20gbm90IHRyeWluZyB0byB1c2UgdGhlIGhpZ2gg
c3BlZWQgY2FwYWJpbGl0aWVzIG9mIHRoZSBOSUMuCj4gCj4gLSBNYXR0aGV3Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
