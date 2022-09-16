Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA25F5BB445
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Sep 2022 00:07:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8C218439A;
	Fri, 16 Sep 2022 22:07:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8C218439A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663366078;
	bh=cYf94D1qygt8KvX1zke+BeguIw2tNcH7uqnQovzBSOM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QpQ8Dvw3+rzUkN42mjImSJW/yUhdKMrhEYEIGEDLjmH8Jv2q2RCHVLAdVBbKeLDFR
	 rk+IoltfDuOJzETy/osw8xg8LHkod5BQGIJu5g0C0v75tQwOCTL/KY7KVr0zO4VFsm
	 VeGbDxM6qS/QKVC1SalTsWErnN5mSe+uD61eiSP8pJW5rHoGBi6OcDLwTYoQDANutE
	 uvg2ea8wtBZbEpxWNMt9KXdqXAjByW1nMEpPCs7pqmbxrt6KDlQofMeiNelwk5ZJBp
	 un6stFL3adj6VKciHAlSklgpclaVisUQNjnDLhYI77YKGVg13zEAkSX92kKX+T/Awc
	 kPwOmnkygGMtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwRyYKnnl7Uc; Fri, 16 Sep 2022 22:07:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4A5684399;
	Fri, 16 Sep 2022 22:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4A5684399
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 924E91BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 22:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6802C84399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 22:07:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6802C84399
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rKePWFWfqxJC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Sep 2022 22:07:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 774E184398
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 774E184398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 22:07:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="279471466"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="279471466"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 15:07:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="793240559"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 16 Sep 2022 15:07:49 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 15:07:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 15:07:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 15:07:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UJR72R4c8m/UjD/ANS7qajkU5guSNOQlZsNkE/aALGfigxESmIMPEN12Y3GRFgwJVxP9OlWiIIEkYWh1QS1giuFBWj6M/m+95wqExGcGNpUqGGmkcbjJrlLZ+zHpceHe8PjJad1oOFnkVybkhzHQY7aUiDWqMw94GWNwJx+9cOztwhdck1GPhcGX4y0xBbPu5MHFNh+amypiaMj2fyjBDP2pseMkpcs3ZFkbjEBQ8uRA4VxzknLT3lHJi+go3X7wljYRBOeHNTw9Fhy5LOyInNCnFJKIX3CGIKYGv6IRh907x/oB1vp3PR0CXbcUoUXMXXPpvhfwbiqEfW1PXnyHbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0d3qhxyawW58cezA+ANJdOq/iWkDYE2Wv+P8vm8q0ik=;
 b=H1f7bg81DzIrpmJJn/lEK++jVGPGQ0sezCydNsqRJAp/tKywQbZOxPaFtnPyLKFRYcOAkE8qty3ZjRT1NvQPa8UjTfXAOVFq8zeB3mQQ5MsMiJFrBEzO4Zy1rE9NaRxp08XO9hM/4C/oFdY7XMQJxHCBbGIYLHylVqyk1HrZFbFKsOeoUZUC0YOflbzgaFjIRNNjh0OU/khNYyAEizK1qpQGPtGQmlqLcQHCouPgAr5t/RzIEq2cTjpnvqPNcHRBh3p8fJ67OCrsY0OoQr3pqSF4arO56cPdAShkI8ueX4dUm1YROGxbEdLZUxWr/hfoV5T78HRO7PimZnSa0ZrM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH0PR11MB5524.namprd11.prod.outlook.com (2603:10b6:610:d7::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Fri, 16 Sep
 2022 22:07:47 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 22:07:47 +0000
Message-ID: <6b65ebe5-0601-9a52-20da-be35342126cd@intel.com>
Date: Fri, 16 Sep 2022 15:07:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220916131440.566617-1-karol.kolacinski@intel.com>
 <20220916131440.566617-2-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220916131440.566617-2-karol.kolacinski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0077.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CH0PR11MB5524:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cef63f9-6cb1-4176-7094-08da982fe34a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tEs9deiHXhMWEESJP4wszJIstk0ARi+wSV2vnknNzRzyN8qzOrV9Doj/rKRW+I3qCCVW3Li0sxQOex9Dd50YBQu4DtGwbYnMzyeJSYA2ysq4OUGC3JSZ+/pllyqDTsxhS72F1Dn1mQommPA1y7suGgGBHdd/P9drGm7j5QMGx3bn3kyklh6s4PsROYL3O8zbh93hDYLzftwMCUvTR/wurtXakxGwyOe687yCD7RC5199/5rtX+iv+wheG7fozqxvts+2wy4JdIxcRVTajM9NvTV+SQU5RieySxdx+drYNHa9Ayr3vJd/J3bAIBKbCaU3JPU7Z2EKDNhSEzLmKjVzGNd9otWyVxpZ3nyF1S/tm7ElDoS1mMt6Kh3bxKhUtklyb3K9J7CfU+7Tyy6FJCBWvkGtB+LU4/duRxxuRh0MUFgV4rRBcgIli7WivmO4CB+TJqC0oCtUY896AtmW69CF2lsRi/S7obSo3vVi+bgYE8EkOBBxCOSGVhG6P6dmcBzTH39sEqFLCac61P5rUjJRWiHQLoIeOCakXCYLbhvNtOKBkuq+hP2crjuurEAk45WZgMi2phTjI7R5M3KBRsuVNvVo5DP1zvhm8h5WlQk0lhNLgzB2RJhDWti3AIv6XyL5D0XAH2UI4wITq6QRdLgHS42bZYD1M5t6VvJXnUN9iDP653/Us5ZI43+eHAkHqK1YXF+HB+8hGr7kAUge9RAZhw52hRXXCssfoujviw5YySVcx2NcJrF4HkAIFb8TUfJH7XiRzxt/E5CPyBvAesTumyQJqbmiaCxz81f7DRVafyc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(376002)(136003)(346002)(366004)(451199015)(53546011)(6506007)(38100700002)(6666004)(41300700001)(478600001)(6486002)(2906002)(36756003)(31696002)(66946007)(86362001)(66556008)(66476007)(316002)(8676002)(5660300002)(8936002)(83380400001)(82960400001)(31686004)(186003)(26005)(6512007)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVA5Qkt4VHA0dUo3LzN0UFNFeXFWWnpCRU4vSysvamprOS9MdnRxL0VNV1VM?=
 =?utf-8?B?ZEFTa2pVSUJtbGZReWNaV0M0aVNkQktWdERycS9zMjFFSjZlSlV0dmtxcDZk?=
 =?utf-8?B?dmpvUmFOMjhMUGZ2c0tCNjE3ejlpVlh6ZUhtWUkxRk1XZ1dpS0ZiOXVDdXMw?=
 =?utf-8?B?K1k5VzY0bU11RzR6Mm4zV1dqUTdqbG9GenAxazI1ZHI4QzkrdS9DVFN2c3lt?=
 =?utf-8?B?SUsrVUs5bmlYYy9oZjBpbUs1YktmOXZ6cnhGVDlpZVgybFFNVldRdWJXWnIy?=
 =?utf-8?B?RmtwTU93bHkzZzZwYnhDVTZvSGRpWUZFRTdZQWVLKzI3YnR0ZStFaGVYbXZD?=
 =?utf-8?B?ZFBOVVozK2tXc21reUxFWEhTQkhOcHRQUXBWaDdCc3Badk9mRmRBby9GZlho?=
 =?utf-8?B?WjVvc3BTcXljUVJKeU92UndQM2hZSnBGOHVQTmgwOVpseXRhdmJCYXFtN1B2?=
 =?utf-8?B?VUJ0dU5BUXQ1S3BIUitybTgzZFRGVXZaQUFLbzVOdUR4R2M4VHNyZWJwWHhS?=
 =?utf-8?B?bmdDQjZ2U2UxanNaaXhTY3RGTkZMdGZLRTVheCtjQWFic3lnRE1zbE5kUkYz?=
 =?utf-8?B?dkgvU21rTVA3RkQycDhVRVlaNmYycFl6U0RrTCtMWUtOUFJ4cjBaTVdkWGJK?=
 =?utf-8?B?YW1IdlJjeTdMdWFhZjdPNVdmVDRuOW5QMkR3R3RacWdwZTZUZE55VE5OYmVY?=
 =?utf-8?B?ZzVJRjF4R0UwS1U3Y29lOXozeEpnUmNBR0NtUU5MQlQyLzdQaDhRYWo4K28w?=
 =?utf-8?B?V2JvQWI2NkRzQyt0Y1lrZUJUVWNuZkFMdTlub0VXVForRldpV3JqU0pqUE1s?=
 =?utf-8?B?NGZFNVZZQUxmVUs2SGZNZ1BiSlo2L1JXRXZRR1lLc1Rma01nV2VmOUJkcWhw?=
 =?utf-8?B?bXJScGZHUDRISlVjeXZYSk5sVjg3dFB6SCtYM2tEb0ZsU1I3L3VkbWR1d2p2?=
 =?utf-8?B?Z2t4NytQS1l3REtyNW1xSXJjdzkxb1RWVERVaVYwam5HZzZqMEhQdUNncU5t?=
 =?utf-8?B?RUVGK2ZoWm1nczRIekRiUFpFZWFUcXpoRTFTeStKdFQ1d1Jra0pPOFNVeUp5?=
 =?utf-8?B?VW5obi9lMmlKTWw0ZCtQVDlhT0dTZFRxRkM3M3JuZUt2dXE2d3g1UDFILzNq?=
 =?utf-8?B?L2U2NkxhN0RyNmZGOTViWVpOQ25HUVVJTE5Gc28vMXVvOWI1bjJwT25kOGN0?=
 =?utf-8?B?OWlJVFMwa0VBalY4K2NoWUhaMHFTbHRpMWMwYjVoMWhzYVNUbjNveXJtVXJT?=
 =?utf-8?B?UlFxSXcvelg1bmJYY3BBZ1Z1T2ErSzNMYlMwVVFLQU5XdmxyaXJ2TDkzcC9t?=
 =?utf-8?B?UDVhNHNNaXFsd1dINTJHbm11bWtzei9MMWlkQk45MnNrMkp3ZWM5a25GTzIx?=
 =?utf-8?B?T3lyMXRQYWo2dk9lazhrMEYyWXNvOCtYZzZrUnlDRkhiNXdTeGZ2Z2Q5VWFG?=
 =?utf-8?B?ZU11a1d4d0s3dk5meXpOV0M3UVJwQzd3SjJhRDZ6SnBWYlh0K2lldW8yd3pn?=
 =?utf-8?B?OGdkc0tETmtnK1R4a1lEVG1WeDA5VU5DdGFGd0wrZWFwdkJnVmo4YkkwRGpz?=
 =?utf-8?B?emh1TC81VWF5N3AzUlBzUlNMTHVWWnI4aG5SbmJXTWhpUmZPdFBLbVNZUkw2?=
 =?utf-8?B?OXJNcHpqeWdUa3h2cERvVWpWcy83TERYbWQ5U2dNNk9aQWRhWEd6QzZORjBt?=
 =?utf-8?B?ZHNCbDBBVytzUEorWmM3bTJIT3hnNzNTMWduTTA0bVljNXc3MGZib1hSTEZ2?=
 =?utf-8?B?VVNLUkFtd3JMRVQ1bC9XTElFZjduZS80MjR0OG5LenZ0VTJOalJBVVdhZ3Bt?=
 =?utf-8?B?cHVXbG9GeEFhNCszTVNPRDFXaVNvOHV0c1EvY1BGaTVhSDRZK1Q0djBZOStv?=
 =?utf-8?B?cXJLM3dnK3M2Z0tVMEtKdmVtWFJIZXJzVWM5YmlVeFNiczRQK2x6c1RpMWdK?=
 =?utf-8?B?aTh4VkNhMUExMG13b3IwR1Uzb3laMVlZd2pzMzRvS09VMS81NitpT1BWc3Zq?=
 =?utf-8?B?dGlBTndNWFhXS0xJUHhGR2pqbnF1MWx3UUtFLzI2N05mb1FaSGE0cjhxTWhl?=
 =?utf-8?B?RS9wNTB0YytoeE5FVEdzYUdJRUFnR2dRVHZJZHROUERoL21waVR0bHNVYlcv?=
 =?utf-8?B?eVZOZ0JXUDkzQ1JEYVpYcUp1T21sU1RIcFhhK1BMU0N1Sk5OSXpkeVBhQnJq?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cef63f9-6cb1-4176-7094-08da982fe34a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 22:07:47.2256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: plvKcq5J/IyKdxuENeky+84/AkryeRcMJBphNj519+hVUEUsf8lhjMO6mLj+05uEbLf9z9blGyKVxpzk13gqHEbGklg2PyPJLZhJdrcXQcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5524
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663366070; x=1694902070;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WW3tqPH5jTG5dlCqYOmzFEMv9jE9kge832lXkZzghJU=;
 b=h1v2wBEwfRlLU5gNyzOkCkqzNVE5Zi71GZYTz8Eli/tFGJ3O1RcwHX/F
 kdk+BInzQcGL/Nf6Vpr9e6N1zaf2IMWV+0FXEZKAeV03NSwIyxqr/25X8
 Ba12lrv5zoj1pX3+tx2p9bVdkYlddCeYI3lCKdQW4AvSpMIJUdDsO0Nuw
 ByfnK5AIeXqbZfhqSS1pVgHwH+sX+eKpXCnQhzSLzaawtQhJNkHth8Tfq
 OgXc/OS3wBVF9q2TsyBJKaDKUcYa8PY2g6ksufFXsLxKwxiaapUtthNZU
 AnJTHZpwsEQrn/dE9rfEsiSGZMNusZPJbTf9SH5t+ywfyNTS0sach616S
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h1v2wBEw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: Add
 crosstimestamping on E823 devices
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



On 9/16/2022 6:14 AM, Karol Kolacinski wrote:
> E823 devices on supported platforms can generate a cross timestamp
> between the platform ART and the device time. This process allows for
> very precise measurement of the difference between the PTP hardware
> clock and the platform time.
> 
> This is only supported if we know the TSC frequency relative to ART, so
> we do not enable this unless the boot CPU has a known TSC frequency (as
> required by convert_art_ns_to_tsc).
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 18 ++++++++++++------
>   1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 408beddc1210..0b37e3d1ef68 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2036,7 +2036,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
>   }
>   
>   /**
> - * ice_ptp_getcrosststamp_e822 - Capture a device cross timestamp
> + * ice_ptp_getcrosststamp_generic - Capture a device cross timestamp

IMO generic is implied if there is not a specific device put to it. I 
don't think we need to specifically call it generic...

>    * @info: the driver's PTP info structure
>    * @cts: The memory to fill the cross timestamp info
>    *
> @@ -2044,15 +2044,15 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
>    * clock. Fill the cross timestamp information and report it back to the
>    * caller.
>    *
> - * This is only valid for E822 devices which have support for generating the
> - * cross timestamp via PCIe PTM.
> + * This is only valid for E822 and E823 devices which have support for

... however it's still kind of device specific as it's for E822 and 
E823. Seems like E822 functions are used for both E822 and E823 so I 
think leaving the name as is or, perhaps, calling it '_e82x'?

> + * generating the cross timestamp via PCIe PTM.
>    *
>    * In order to correctly correlate the ART timestamp back to the TSC time, the
>    * CPU must have X86_FEATURE_TSC_KNOWN_FREQ.
>    */
>   static int
> -ice_ptp_getcrosststamp_e822(struct ptp_clock_info *info,
> -			    struct system_device_crosststamp *cts)
> +ice_ptp_getcrosststamp_generic(struct ptp_clock_info *info,
> +			       struct system_device_crosststamp *cts)
>   {
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
