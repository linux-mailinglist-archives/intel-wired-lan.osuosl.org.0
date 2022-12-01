Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8930B63E69F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 01:40:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15EE36058D;
	Thu,  1 Dec 2022 00:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15EE36058D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669855227;
	bh=0EbG0+1yp3Ei4Bu3lDqHwAv2wofvVVLjN6GUxKpKeOI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vvogDaB+AVFZAhwAJzf+kJKLyRkuoVhq/t4NEvtKwiKp+uvUSzQaeqUvA5LX4phJm
	 t6tNGFU4AF1QTM4p+ZgSKmzaxXAfngvcx/fOGZlaGYb5cMzXKv3LYp0LkhmxzBeUuU
	 S4wMreC1cI81YftZlmy+YVKZX5BiQIvkYmbWJpjJEoUfxP0D1X5h/ix9Lu1rpJb+ql
	 KFFlUkYYCf3MXtCbdqYWSW/wsH+rnBr1wrTx6mzCSXz7EXyP71SRRrbaesjB3P9yeI
	 +LN6Gjgku5CVyWKF/31Ix4+ehe/XBVLc83mh4IdOUWCoNYh95begU4Zacyjoisgr//
	 /PDy6sOuhdczQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rfWYgn1oz7aQ; Thu,  1 Dec 2022 00:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E2AB60BE9;
	Thu,  1 Dec 2022 00:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E2AB60BE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60CBE1BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B61981F7C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B61981F7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bTIAln7nLUnL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 00:40:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0279881F7A
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0279881F7A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:40:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="315570314"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="315570314"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:40:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="750575360"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="750575360"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2022 16:40:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:40:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 16:40:17 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 16:40:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SBYObx0zq/zIxhD/vWbIiARQzMWhmRtdWG2vixxkeMzB3SUhARx9nmS+VaYEL/aZpvpUGk528mNKrLOKLFkPl6IVS0se0sGrTVGPAPfPScw93azPZBBAjkXZ4FSZvwPdp3YkHBTRlp6lNTQuDNQEvVLTBn7TjFtg1kfJH+63vFQiP3eazA9jsE7GTfe3qF/xA+rAHSpIEHBuaJ1y6OO3rqlTKII1ljJ1qS03CmU7TxcJ8z3Ia/RKjKDn9Fco9VR07e9tHCei0OCfotGwuUP+WBvJrb5lRlC3vCBxiuNHTK5pYz08eiclHik6u2VH8WS+EESlIa2IpOBy6ZnTc+zkeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ku1P3eLznNQcBAnaZQw/eDDKF2t7fyXXvZ/B144v7g=;
 b=bZkbqyXlGxaWS+OyMfuyfMUOjtm3jYvk20w7HZOP7ZHGzfGfsBDrunWOfW9lw8xGizIJdB8HPQJkpcfvDHN9DvxDVG3zmLWemxRnXOFgobGx2zngs3V9B+8jiYChpUvIU1Bn6OyXCC5v1AI6lyr9bHlU1kQAcTcF10TumcvpVMr/DYLAH3qYpTEpHYdaDmlWPxaPvxgMSwschl/l+MhpGPUkeNz3dm8hnNTWZbFmWnZkjDvH858Yg6YY0WmbV4+2opcSYMXbHknLM6lsoNLDZwRCuX5RUhjarmiLJmWg7fvIfAs1zaMxv3WX33aA4lvoHc5SuIAUyR8RN+5n9RJxbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7430.namprd11.prod.outlook.com (2603:10b6:510:274::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 00:40:10 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 00:40:10 +0000
Message-ID: <1fe66e18-8c53-0893-7ed0-90ab98975360@intel.com>
Date: Wed, 30 Nov 2022 16:40:08 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-6-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221128214749.110-6-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::34) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7430:EE_
X-MS-Office365-Filtering-Correlation-Id: 20d28e59-7ca5-4718-f68f-08dad33499cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GCRANtV3kHo8ixozkvSw7xJaoTLOQOUSX7HaXDZ3BFBs/fhuuip1yRmlVgE5vrQKKB7Eos3cJNLZoWinIVu/tai7BSHFf8Cx/FMpNGOlnt4BzrhJAeC0cpH6nrYe4Yz4Gy1Yj/R1uIdiVdEFgWRPsX2iq3Pl4O9vnJL7vWER4VDZyTUiu56JOsZKxIWegcdQUstCjPReD0YL5tuVkjft8oO+bpTlo9t/0xi8T3DTPZ8rQI472AK8Kl0umV5hNxxFHU3cyQykHR4xC03PYt/1YJbetJhxLD0+7Q3xLEv6T4ePmS0HKP4/YJYUGs3fNaBIHwnUna0S+Fdc0SaQiMavEKJ8IxMiyqDj3z2ymkufB4/lQT0obW+dbG4zDXuJz+JwyKDMQdhloGH0mjfHXspA41hGsUBSUBrey4R2hfXSd6br6PkkoDloF3h20Fc5gxlh9x5xuDrD6HqFmLCRCLYpd6vSmBCBSzscG/uwI+K0VCwbhiS7pmNiK69u2bVxPBW7XvXophqZzktGNdOkcFLHX39kyIOTzHP2pkZQ79ijpcmmTJ+PjlBEWJXLfF0E0eVuxrUEs9IlwRlkexMTIytMVnwwHrDCKOKhULV+KwVC2EGQrqw6lWUZ/IxNUxLxvu7aFN5cZpGb6sDkEJlBJQBr9nG7zxEf4xtRnf110HwC8V+tV897PnBsFflxIgDiIjcUmWUGCE5rV2mznH/QXGDNx3ehJsUz6AVWFLa+Z+Qqxjg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(366004)(39860400002)(396003)(451199015)(6506007)(2906002)(30864003)(31686004)(66476007)(41300700001)(66556008)(186003)(36756003)(316002)(8676002)(8936002)(5660300002)(478600001)(26005)(66946007)(6486002)(6512007)(2616005)(53546011)(31696002)(38100700002)(86362001)(82960400001)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qy9zcWFFeFRIWjhSMlhvSmJMbHM4TFBoVXZIMzQrdTY3Tm1FUWRKTnprdmtZ?=
 =?utf-8?B?ajREZi91OUNUZnBBMjRkMnU3b0hQTkUybkhtdjNBbUlEbXpLeEJjeFpWQVU5?=
 =?utf-8?B?N3VyR2hWdm1MVnM0d3dwYi9zbGlUOUwxWnZBOHFZZ2RwSHJBb2F2MnkyRWU3?=
 =?utf-8?B?RHVHNUFDeFhuZ0RaZWtXOEsrb0NwZ0U4cjBsU21GNDV6UGZTQS9id1UvVzNG?=
 =?utf-8?B?Z25vb2o1VkUrN3VMZE4zcW1NOHJzc0hQb01KUGFWTXd6YjRsK2hCWUtNT01w?=
 =?utf-8?B?OFpwUTRZOHlNS0RJVXNTUklOWW9SM0pXeGl3ZDVEWmV5NzUyRDRaU1c0cFdx?=
 =?utf-8?B?b3hkTGlOblEvaGZkdW9qRFBRNkJDcXdFajdMU20vT0RLbnVXSFpJeTNCUzdh?=
 =?utf-8?B?NGhlc2t0ajZTWmUxb09MMUY4SGY4K2xkWGZXaWdrS012ekpkOENsM203b3Rn?=
 =?utf-8?B?elhuZlVCYldBc0UxOFQ5MnpMeVZabk9SMVlUeGRlbkZUMXJtcE1CU0VVSjNR?=
 =?utf-8?B?K1M2OEtZZG5yRFRtWVk1NGJNSU44VG53R25ZNGlodTJhWmFmeGFVUzRzMGpi?=
 =?utf-8?B?ckJ6d3g3SCt3YXJXZGdEc1pEMktHVW01TnZOTEM3bmNtUXEzZFE1bHFlNGkr?=
 =?utf-8?B?bGhqTzFsTFBKaTlMRWF6Y2w4d1RBNkdEd1hoazQ1MVVOWUtFSEszbGxMamVS?=
 =?utf-8?B?VC9EVjB4N1MwVkQyTkpzQ1FhbHpVS2owRWNRbUFWRXh2TE0yeDV1anF6Q2gz?=
 =?utf-8?B?OGxpVFU0YVNHRDdrOWNHQjV2akw4bDVlWGJnQ0VqWUZDQ3NpQ29SdUwxSEpn?=
 =?utf-8?B?RGpQWjdxNEx1SGYyZjVnTW0rS0tQbHFCNzJqRUc5SWhFYzJQekNSVExrejgw?=
 =?utf-8?B?eHBJNnFWQldic3RacTQyVVNlRGZ3NEFtZWJmeld4eElZTTllbVRyTHZHaUht?=
 =?utf-8?B?bTJscG9VNjVrUEZWNGlqaDdCWFRUZnRkU3c2U2hZSmQwTjFNRHhITFRHbHEv?=
 =?utf-8?B?MnozUDhHNWplV0E5YjJsMEtVN1Q1bUhld2U0NkZMNEtoaGt3Qm1lT2MxMTFi?=
 =?utf-8?B?bEdabFZxaGdOZXdkVFMrTE1YNnluYVNXUGxENkw3TmwrOUJRNHUwSHBEUG15?=
 =?utf-8?B?NWxkaDVqb0RDSWN1WVBtZHYzZ0xFMzJBRk9WMGJTMjBpS2t2UnQ0MkN1NzU0?=
 =?utf-8?B?R01yTEl1aEkzenArYVFlTERjYnp3MDlpUVRlSUlpU25BVGhrMWJPMGFCNmRT?=
 =?utf-8?B?RHlHRWZtZTNnbHVlbjY2dFdUNmI5TnJ6MUFUL1M1ZTJJaXo3djlodFhOVWtB?=
 =?utf-8?B?MTREZmJhdGFUV2s1cUxqU3Y4V1FycnFHaEdSVVl3cUJKN1dWdjJPMEEzY3E5?=
 =?utf-8?B?VXoyZFEyRGlsWGQ0bkZvVlJORldsa0JLZDB1NEJmQmwyOThHZmNOcGxrTml6?=
 =?utf-8?B?MlRGeTEzSkNkakozMjR4ak1zSFZBVU9LVXpReEJjZHJoWFNPZTZ3UUlYVTd5?=
 =?utf-8?B?Uk5NQkJ6RHNVamY5Umx2NXhtTFNyMmx1bVdVcUU0UzQyZCtKaWF1OTlOdUJp?=
 =?utf-8?B?bDVraEp6VTFKYU9jNEUyUVd0VTdGWmFveVpaZ244ZFFsUCtrM2xzVkluby92?=
 =?utf-8?B?amVRaWF0L3F1bkxaZmw4L0orQk5nOFk1QVJEVnRwOEY0WlZWQTRaUjNRMXl2?=
 =?utf-8?B?dGN0V3ludjNZWHRUTGZ1ZmthVnBQL3ZFRGhIZFZMbUVwWnZFQUJKakJqNlFt?=
 =?utf-8?B?TlE0ci91UU5IWUFiRXNtTFpZbFZuTER4dU5UM2dlUkgzNGFxREYyM1pXU1JL?=
 =?utf-8?B?eDVkcjkxblBRRDkyQkNVNG5UaSt3REZNMTRUSjdzSks5SFI3QUd4Yit1QnQy?=
 =?utf-8?B?WDRyVjd5U29nVitTVEVteVhGKzdPWVc4SGlhUERhZTkzVVVxNkh0RzAvSEhO?=
 =?utf-8?B?Sm14dytJN21CVStDTTdQRXNCaTdzOHkxdXIwL3pEM2RPcEpGTFd6ekd3MkF0?=
 =?utf-8?B?S1E5WjQxeUdxOGg2dXIrWVdmRC9HTDFzN3lCZFJmMVVXRGRIMTFEQ1dWRHA5?=
 =?utf-8?B?Q2pMQlNFMHViODZwa3JVQlQ3Zmo5OGVZeTVJVzAxSktOTWx4Lytrc1dRYlhD?=
 =?utf-8?B?ckg3R1k2M2JpR3hsV2g3QzZTV0hNcFNvUE5pUGpQMVJzZkg3Vzd6WUE2V0I2?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20d28e59-7ca5-4718-f68f-08dad33499cd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 00:40:10.0237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +z8KNy1dm+gGU+3qhfT1irePRc7RVG2sTSKWJNFjZ0+gldwS0d8Z99/QTBXqab0X5TPUO04wngM8quqRVg8ewLgpOwEnHmNhU8+OkmTx7+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7430
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669855219; x=1701391219;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2HBZDyD90Rfq6ji8ufVqa7fhIRBYJHtd4xcO9ICDMvE=;
 b=TENBaHquE8D2lX/d+SOcTl6SRj0Y0s48VihClzbZHX9xPDDzybeNNrdV
 vHCvVjE44uG2B1v2PtqwzmrYOJQcorjaDN9j/O2smegdbPxWhxVsd3m0z
 sZ/1tiUH11I5juzA9frTbJg4XudmKR/RP3cxJ3woBrevlRszy8h5W6OnW
 c/P6y5Polb5a4Sas8Nxv9z98bIKfpjBTH9WKhmgZ+r0jG3s9AghlLiOCh
 UkvDwxtVKLCHb8/fjLIcHaNIaGaD9k5FGhaZu06kX9o72FNnIeO1nVCGJ
 ks/dUgs66a/oTYMBJdyIzvPmhVTIamm5vfzkmR3+IwFNdqa21ldRaw/x4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TENBaHqu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/5] ice: use debugfs to
 output FW log data
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/28/2022 1:47 PM, Paul M Stillwell Jr wrote:
> The FW log data can be quite large so we don't want to use syslog.
> Instead take advantage of debugfs to write the data to.
> 
> Also, a previous patch addded codde to disable FW logging when
> the driver was unloaded. The code was added to
> ice_devlink_unregister(), which didn't seem correct so move the
> disabling of FW logging on driver unload to a better place.

Since this was done in the patch directly preceding this, why don't you 
just modify the previous patch to put it in the proper place?

> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>   drivers/net/ethernet/intel/ice/ice.h          |  24 ++++
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>   drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_devlink.c  |  20 ----
>   drivers/net/ethernet/intel/ice/ice_main.c     |  98 ++++++++++++++++
>   6 files changed, 235 insertions(+), 21 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 750fed7e07d7..5e0013330c46 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -33,7 +33,8 @@ ice-y := ice_main.o	\
>   	 ice_ethtool.o  \
>   	 ice_repr.o	\
>   	 ice_tc_lib.o	\
> -	 ice_fwlog.o
> +	 ice_fwlog.o	\
> +	 ice_debugfs.o
>   ice-$(CONFIG_PCI_IOV) +=	\
>   	ice_sriov.o		\
>   	ice_virtchnl.o		\
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index ea64bcff108a..c8f1f34b8fbc 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -552,6 +552,9 @@ struct ice_pf {
>   	struct ice_vsi_stats **vsi_stats;
>   	struct ice_sw *first_sw;	/* first switch created by firmware */
>   	u16 eswitch_mode;		/* current mode of eswitch */
> +#ifdef CONFIG_DEBUG_FS
> +	struct dentry *ice_debugfs_pf;
> +#endif /* CONFIG_DEBUG_FS */
>   	struct ice_vfs vfs;
>   	DECLARE_BITMAP(features, ICE_F_MAX);
>   	DECLARE_BITMAP(state, ICE_STATE_NBITS);
> @@ -634,6 +637,8 @@ struct ice_pf {
>   #define ICE_VF_AGG_NODE_ID_START	65
>   #define ICE_MAX_VF_AGG_NODES		32
>   	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
> +	struct list_head fwlog_data_list;
> +	u8 fwlog_list_count;
>   };
>   
>   struct ice_netdev_priv {
> @@ -648,6 +653,15 @@ struct ice_netdev_priv {
>   	struct list_head tc_indr_block_priv_list;
>   };
>   
> +struct ice_fwlog_data {
> +	struct list_head list;
> +	u16 data_size;
> +	u8 *data;
> +};
> +
> +/* define the maximum number of items that can be in the list */
> +#define ICE_FWLOG_MAX_SIZE	64
> +
>   /**
>    * ice_vector_ch_enabled
>    * @qv: pointer to q_vector, can be NULL
> @@ -872,6 +886,16 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
>   	return false;
>   }
>   
> +#ifdef CONFIG_DEBUG_FS
> +void ice_debugfs_fwlog_init(struct ice_pf *pf);
> +void ice_debugfs_init(void);
> +void ice_debugfs_exit(void);
> +#else
> +static inline void ice_debugfs_fwlog_init(struct ice_pf *pf) { }
> +static inline void ice_debugfs_init(void) { }
> +static inline void ice_debugfs_exit(void) { }
> +#endif /* CONFIG_DEBUG_FS */
> +
>   bool netif_is_ice(struct net_device *dev);
>   int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
>   int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 8fa18bc5d441..d17bcc778bdd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2406,11 +2406,13 @@ enum ice_adminq_opc {
>   
>   	/* Standalone Commands/Events */
>   	ice_aqc_opc_event_lan_overflow			= 0x1001,
> +
>   	/* FW Logging Commands */
>   	ice_aqc_opc_fw_logs_config			= 0xFF30,
>   	ice_aqc_opc_fw_logs_register			= 0xFF31,
>   	ice_aqc_opc_fw_logs_query			= 0xFF32,
>   	ice_aqc_opc_fw_logs_event			= 0xFF33,
> +	ice_aqc_opc_fw_logs_get				= 0xFF34,

I don't think I see this being used.

>   };
>   
>   #endif /* _ICE_ADMINQ_CMD_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> new file mode 100644
> index 000000000000..767df937f56a
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -0,0 +1,109 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2018, Intel Corporation. */
> +
> +#include <linux/fs.h>
> +#include <linux/debugfs.h>
> +#include <linux/random.h>
> +#include "ice.h"
> +
> +static struct dentry *ice_debugfs_root;
> +
> +/**
> + * ice_debugfs_command_read - read from command datum
> + * @filp: the opened file
> + * @buffer: where to write the data for the user to read
> + * @count: the size of the user's buffer
> + * @ppos: file position offset
> + */
> +static ssize_t ice_debugfs_command_read(struct file *filp, char __user *buffer,
> +					size_t count, loff_t *ppos)
> +{
> +	struct ice_pf *pf = filp->private_data;
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_fwlog_data *log, *tmp_log;
> +	int data_copied = 0;
> +
> +	if (list_empty(&pf->fwlog_data_list)) {
> +		dev_info(dev, "FW log is empty\n");
> +		return 0;
> +	}
> +
> +	list_for_each_entry_safe(log, tmp_log, &pf->fwlog_data_list, list) {
> +		u16 cur_buf_len = log->data_size;
> +		int retval;
> +
> +		if (cur_buf_len > count)
> +			break;
> +
> +		retval = copy_to_user(buffer, log->data, cur_buf_len);
> +		if (retval)
> +			return -EFAULT;
> +
> +		data_copied += cur_buf_len;
> +		buffer += cur_buf_len;
> +		count -= cur_buf_len;
> +		*ppos += cur_buf_len;
> +
> +		/* don't delete the list element until we know it got copied */
> +		kfree(log->data);
> +		list_del(&log->list);
> +		kfree(log);
> +		pf->fwlog_list_count--;
> +	}
> +
> +	return data_copied;
> +}
> +
> +static const struct file_operations ice_debugfs_command_fops = {
> +	.owner = THIS_MODULE,
> +	.open  = simple_open,
> +	.read = ice_debugfs_command_read,
> +};
> +
> +/**
> + * ice_debugfs_fwlog_init - setup the debugfs directory
> + * @pf: the ice that is starting up
> + */
> +void ice_debugfs_fwlog_init(struct ice_pf *pf)
> +{
> +	const char *name = pci_name(pf->pdev);
> +	struct dentry *pfile;
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return;
> +
> +	pf->ice_debugfs_pf = debugfs_create_dir(name, ice_debugfs_root);
> +	if (IS_ERR(pf->ice_debugfs_pf))
> +		return;
> +
> +	pfile = debugfs_create_file("fwlog", 0400, pf->ice_debugfs_pf, pf,
> +				    &ice_debugfs_command_fops);
> +	if (!pfile)
> +		goto create_failed;
> +
> +	return;
> +
> +create_failed:
> +	dev_err(ice_pf_to_dev(pf), "debugfs dir/file for %s failed\n", name);
> +	debugfs_remove_recursive(pf->ice_debugfs_pf);
> +}
> +
> +/**
> + * ice_debugfs_init - create root directory for debugfs entries
> + */
> +void ice_debugfs_init(void)
> +{
> +	ice_debugfs_root = debugfs_create_dir(KBUILD_MODNAME, NULL);
> +	if (IS_ERR(ice_debugfs_root))
> +		pr_info("init of debugfs failed\n");
> +}
> +
> +/**
> + * ice_debugfs_exit - remove debugfs entries
> + */
> +void ice_debugfs_exit(void)
> +{
> +	debugfs_remove_recursive(ice_debugfs_root);
> +	ice_debugfs_root = NULL;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 923556e6ae79..148902b515bf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1739,26 +1739,6 @@ void ice_devlink_register(struct ice_pf *pf)
>    */
>   void ice_devlink_unregister(struct ice_pf *pf)
>   {
> -	struct ice_hw *hw = &pf->hw;
> -
> -	/* make sure FW logging is disabled to not put the FW in a weird state
> -	 * for the next driver load
> -	 */
> -	if (hw->fwlog_ena) {
> -		int status;
> -
> -		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> -		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> -		if (status)
> -			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> -				 status);
> -
> -		status = ice_fwlog_unregister(hw);
> -		if (status)
> -			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> -				 status);
> -	}
> -
>   	devlink_unregister(priv_to_devlink(pf));
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 517702af327c..01cf4cb78009 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1213,6 +1213,45 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
>   	return status;
>   }
>   
> +/**
> + * ice_get_fwlog_data - copy the FW log data from ARQ event
> + * @pf: PF that the FW log event is associated with
> + * @event: event structure containing FW log data
> + */
> +static void
> +ice_get_fwlog_data(struct ice_pf *pf, struct ice_rq_event_info *event)
> +{
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_fwlog_data *fwlog;
> +
> +	if (pf->fwlog_list_count >= ICE_FWLOG_MAX_SIZE) {
> +		dev_info(dev, "Reached max list size for fwlog list!\n");
> +		return;
> +	}
> +
> +	fwlog = kzalloc(sizeof(*fwlog), GFP_KERNEL);
> +	if (!fwlog) {
> +		dev_warn(dev, "Couldn't allocate memory for FWlog element\n");
> +		return;
> +	}
> +
> +	INIT_LIST_HEAD(&fwlog->list);
> +
> +	fwlog->data_size = le16_to_cpu(event->desc.datalen);
> +	fwlog->data = kzalloc(fwlog->data_size, GFP_KERNEL);
> +	if (!fwlog->data) {
> +		dev_warn(dev, "Couldn't allocate memory for FWlog data\n");
> +		kfree(fwlog);
> +		return;
> +	}
> +
> +	memcpy(fwlog->data, event->msg_buf, fwlog->data_size);
> +
> +	list_add_tail(&fwlog->list, &pf->fwlog_data_list);
> +
> +	pf->fwlog_list_count++;
> +}
> +
>   enum ice_aq_task_state {
>   	ICE_AQ_TASK_WAITING = 0,
>   	ICE_AQ_TASK_COMPLETE,
> @@ -1486,6 +1525,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
>   			if (!ice_is_malicious_vf(pf, &event, i, pending))
>   				ice_vc_process_vf_msg(pf, &event);
>   			break;
> +		case ice_aqc_opc_fw_logs_event:
> +			ice_get_fwlog_data(pf, &event);
> +			break;
>   		case ice_aqc_opc_lldp_set_mib_change:
>   			ice_dcb_process_lldp_set_mib_change(pf, &event);
>   			break;
> @@ -4688,6 +4730,52 @@ static int ice_register_netdev(struct ice_pf *pf)
>   	return err;
>   }
>   
> +/**
> + * ice_pf_fwlog_init - initialize FW logging on device init
> + * @pf: pointer to the PF struct
> + *
> + * This should always be called after ice_hw_init().
> + */
> +static void
> +ice_pf_fwlog_init(struct ice_pf *pf)

Is this going to expand to other things or why not just call it 
ice_fwlog_init()?

> +{
> +	INIT_LIST_HEAD(&pf->fwlog_data_list);
> +}
> +
> +/**
> + * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
> + * @pf: pointer to the PF struct
> + */
> +static void
> +ice_pf_fwlog_deinit(struct ice_pf *pf)

same with this one

> +{
> +	struct ice_fwlog_data *fwlog, *fwlog_tmp;
> +	struct ice_hw *hw = &pf->hw;
> +
> +	/* make sure FW logging is disabled to not put the FW in a weird state
> +	 * for the next driver load
> +	 */
> +	if (hw->fwlog_ena) {
> +		int status;
> +
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> +				 status);
> +
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> +				 status);
> +	}
> +
> +	list_for_each_entry_safe(fwlog, fwlog_tmp, &pf->fwlog_data_list, list) {
> +		kfree(fwlog->data);
> +		kfree(fwlog);
> +	}
> +}
> +
>   /**
>    * ice_probe - Device initialization routine
>    * @pdev: PCI device information struct
> @@ -4773,8 +4861,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   		goto err_exit_unroll;
>   	}
>   
> +	ice_pf_fwlog_init(pf);
> +
>   	ice_init_feature_support(pf);
>   
> +	ice_debugfs_fwlog_init(pf);
> +

Do these need to be unrolled for error path?

>   	err = ice_init_ddp_config(hw, pf);
>   
>   	/* during topology change ice_init_hw may fail */
> @@ -5139,6 +5231,8 @@ static void ice_remove(struct pci_dev *pdev)
>   		msleep(100);
>   	}
>   
> +	ice_pf_fwlog_deinit(pf);
> +
>   	ice_tc_indir_block_remove(pf);
>   
>   	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
> @@ -5620,10 +5714,13 @@ static int __init ice_module_init(void)
>   		return -ENOMEM;
>   	}
>   
> +	ice_debugfs_init();
> +
>   	status = pci_register_driver(&ice_driver);
>   	if (status) {
>   		pr_err("failed to register PCI driver, err %d\n", status);
>   		destroy_workqueue(ice_wq);
> +		ice_debugfs_exit();
>   	}
>   
>   	return status;
> @@ -5640,6 +5737,7 @@ static void __exit ice_module_exit(void)
>   {
>   	pci_unregister_driver(&ice_driver);
>   	destroy_workqueue(ice_wq);
> +	ice_debugfs_exit();
>   	pr_info("module unloaded\n");
>   }
>   module_exit(ice_module_exit);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
