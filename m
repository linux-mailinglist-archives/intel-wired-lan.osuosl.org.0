Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF537D4FAB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 14:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0D134A0EF;
	Tue, 24 Oct 2023 12:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0D134A0EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698150089;
	bh=JeUBXjCnlZZ3uoPcdkpGj8VucrrDcI0Npp5yrIDJafM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UHhtpyogb4AXDRS1Jnaudt2X6Z/EeJSA4CPG8PklzDhGUd5VNTGeRuTni1nQexrVM
	 CQBpFDSa5h7yPSCXoRNzNSL14Hew//XdTV0gQC2tW0wuIjN9XFAjfO0D/cXTsTCpCo
	 flaygS8BOeeN1an/236btPm8Tyi8MkIWTGKn4WhUSJB0DwaXimcIWopdMO71oGscxm
	 CdnoyzXPJWLajTQqTyH9GFxFzl56kPEd1nYIKKI58N7QjxSOEpPrf2sM/GAhLD/Lqb
	 bkPQQMlsWT15CyoPCT7EsG9PCVRu8PLg0oxij++FQ6+tRFXb2r6uIHrEGD5qBMDArQ
	 fUNx4r5TjiIdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tWeE1eJWB9Dg; Tue, 24 Oct 2023 12:21:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C94FB42D62;
	Tue, 24 Oct 2023 12:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C94FB42D62
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D08651BF867
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6A9B6FB90
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:21:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6A9B6FB90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uQHmdS2Efmdq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 12:21:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5749F6FB6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:21:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5749F6FB6A
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="473267408"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="473267408"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:21:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="882105992"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="882105992"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 05:21:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 05:21:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 05:21:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 05:21:02 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 05:20:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E6UpG9X0CE3hljka4G6CLyI/pVBs2mTLSvrCBAyCLbetdfDTUjA/AdKQqjk5Uo633BX07ucN3bDpJ5dbyqOaoNgS2msdBgCCmO68JhPYTcdXiRNdh92P6cYGcogy5b7Ld4Tvyhk1UJzbSdR/Cbpjk8HNTW5p5ER7f+VAE5yvWk/ueozSWpsFfomAvhQsQSeYk1x1f18/5AIR/tzPBZE/hUP4jEKwlw641SCSnu+1zp0sirIl1wCJ/85WgigyhbKQVIBh9kqvuqswwvY3nHIS4ugEwhirglPvPdQXrCsz0TCFUJGx25VjxK/SwBAU4zcBEfuTIgK1XnFcvMtZyA9wcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oD9FL3nzAThSFonGZJyLrZUdcopErXPQiDzeb/S3W4A=;
 b=WyzUV91xoWbfU0BsoI6ZY3z5TSRo3teTtsYdaTyykphsZ5gvOm99ebuhmVWhgfIL+uuGyEQeQh59NwGAj6yvmZgIEOpafuj/dFxmoFJZdYXhXUWTpxq6SVNQJPHM5WQy5yZuBbjAz16dxG+ix0VjDKkKyVGR6ckvR5qe9ufX2v32bTrWPojVvMNoj3G786YDimUIqJ2m6nWF4nDBMxpOdHh7BSQMP2C9wBsgUgmJ3Nttrb3FJcbKMYAaif3HD5HTobhAOocGIDUGJCXO0RxKb219oaTh29XI99I6HiJ4COImKN4TAjGd1xM1vIHAKUzGVAGG/lwM7vkKoO1nx9iboA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by IA1PR11MB7388.namprd11.prod.outlook.com (2603:10b6:208:420::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Tue, 24 Oct
 2023 12:20:55 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::b4f5:b3a6:21cb:453]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::b4f5:b3a6:21cb:453%7]) with mapi id 15.20.6907.032; Tue, 24 Oct 2023
 12:20:55 +0000
Date: Tue, 24 Oct 2023 14:18:13 +0200
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZTe2BSNEJeeb9PgK@baltimore>
References: <20231024112912.1811594-1-pawel.chmielewski@intel.com>
 <71c02ebc-77f0-4b7d-9a1c-b2ed638f2757@molgen.mpg.de>
Content-Disposition: inline
In-Reply-To: <71c02ebc-77f0-4b7d-9a1c-b2ed638f2757@molgen.mpg.de>
X-ClientProxiedBy: FRYP281CA0013.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::23)
 To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|IA1PR11MB7388:EE_
X-MS-Office365-Filtering-Correlation-Id: 2185cdb0-8d7c-4391-68ea-08dbd48babd4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jd76Vcc8D4vipaka1g1Px5pN//HKFZcqFhhkBXIWs+7M1+6VQ6gmJwq9cLYgknsZR501Vzfr0BqvSqQa5CoZ2vQzhYjt/9XqReMRpnZ54UJa3Wk/jNWxFaS/50+TIjKJQe/cbx5jqbnH2JTOWWxCBWb5Kjr7FEi9rUtMsWNMvxS9X8MQIrBt6qU2qRIl6XcgJL2KtnfyD0NG+C5ZVlZOhFvkP0Y4peLbLNX3zbS9GivM8+dMm5KjxSTfQ73ZJmcvRhEx0PgbyZaRZfp1C4N/tifreBduCjN1fBkwVP2wVOtQJO2PEZlzJ/mbX8HeMxVdXaCYh+dradnKs7fTNUpRrnejCVWWIiYKb4DMMxyEA31bTYa3MGNfUb7oHM9uP3yJP/UweM+Xq2JRIzvwNDs/YVLiyV38AgjhHCva9tluuhd7jPtgahwy4WT26BYMbVRi/cenNdFflgBpmVQDvD48kB4nRCMQGC4Dvk0yqV0zv4dzbyMvFuZntgaEtZV4qg30ci6b+4eV6FNpz/7Dhsk3hSicKG/Y8czEhMz8tnuDlKyh44onG4Zyfao1FgrWnjje
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(376002)(39860400002)(136003)(366004)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(26005)(66946007)(66556008)(66476007)(6512007)(316002)(6916009)(86362001)(38100700002)(82960400001)(83380400001)(9686003)(6506007)(6666004)(33716001)(2906002)(8936002)(6486002)(54906003)(478600001)(41300700001)(8676002)(4326008)(5660300002)(44832011)(4744005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1F3eWxpUTQ0aGhDWitHYlNsdkw3TkdNMFV6cmhKY2tqVHlmRW1reTB5NC9a?=
 =?utf-8?B?dkdhQzFUTWRGYkx2bWF2SWFKNW9OUU1FeENOaDFYaE52K0NLdFdKbmIreVRU?=
 =?utf-8?B?d3hhU3V3QXlvL2pFUmNIb0pQTUZqaW1kN3JFRVY1V3dMS3NwczNPUDloc3BU?=
 =?utf-8?B?TzNVV1NUU3JKQ1pkQWNYaUx1MTFkVUx4MHJUaWJZLzY3WloyTzRDN3lzRys2?=
 =?utf-8?B?eWV4eWNYc3liZlk0bGhMdlBSb2lWcEE1czNSZEhYT0ZkYmJNUnh0ZXB5dkVt?=
 =?utf-8?B?a1JMNHhmL0xNVW1iUmRIY21UaGwrenRRL2FxS0xQaXRKcGNMZHpRQWtxTWZC?=
 =?utf-8?B?ZUN6TUlmTHo4blpkRXpNUnM3a1pMUzd2NGZIeW1xbTc4WmJLdzQ2ZzFqNExM?=
 =?utf-8?B?dnJZOHdnY3B3V09mOUJ6MkVvM0VKUHZsQ3AwR280Uy9qMTlXRFYzcDc3aG03?=
 =?utf-8?B?S24wMUpuV1g5TXlGU1g4cDV0NVFiaSt1aElKK1NVWkdjbVBaVkhhV1ZZTnUv?=
 =?utf-8?B?T05DcVkycXhsbWNPK1hudzBmOFhWNDBiYzJ3UzRXRVArRkdMYlRLakNQcmRZ?=
 =?utf-8?B?UCtHWUEyT3V4bzc3V2tCbHJYL2EvT3RsYmVQS2J3ZjBqaWc1ZmttNzNOcTIr?=
 =?utf-8?B?d0dTNDZOWGpKLzhwRVh5STZBdXJLazh0ZFJNdm5KK0ViYWpXdFh6YmZHTzRn?=
 =?utf-8?B?QXRDRzlsYjg5K3M2RUFKODVMU1NjMEovZUJLcTN0Q3AyWU9Rd1k0RWhXaEcw?=
 =?utf-8?B?TEZBaHQ2emJaUWRVaXRLMnptcDJacC9nRDUvU0hFZERzWk5pcXcrS3BMUnVT?=
 =?utf-8?B?aXlYeWVEb2IrSkpEempoUkhMODZWbmVTdEdwQk0yckthK2JNRE9sQ0hSdk05?=
 =?utf-8?B?V1laK0dNSE5NMHZPcUQrVkd0WVQyTWZFZ1hRYi8vTUtVSXpCM0pIenV4NlJZ?=
 =?utf-8?B?b2xBVmpSaGprWmlvVEFMdFBjWDNDbDJiV1V4aGYrVnJ2RXZDQzlxMUl3ZE9O?=
 =?utf-8?B?TW9LWXRYR0R2V1h3Qi9BVXdGNThqU2s2elpIVHRtWGFldXk2YTgvbTJNZE1S?=
 =?utf-8?B?elQ4U1RXWTFPK1plbWswT1N4NmpTbm9nR0xTWlBXdnhWd3RaR2k3VjJTTlR2?=
 =?utf-8?B?MGVnNE9CczE0dFhZaHpYc1lHc1lUYmNzVlA3SzJ5ZDBGVitYb3ByZ09UTkNH?=
 =?utf-8?B?bVRGK0tKenR2UTRRNlk4VlRwa01UUll1UVhQT1l0bHY0czBBOUxYWERXMmdV?=
 =?utf-8?B?aVp3VENGdHJselNqZFFGT2hhYjQ0RlRxZks4emd2NG1qY2dzd3dPL2czc2lv?=
 =?utf-8?B?UGtoUndWa2FkQ1dQVm9zQWRzaEdTcUtoaXluc0ZiQ0dPclhFMy9ENzlETEl0?=
 =?utf-8?B?T29QejJsdU9yZjh4NUxrVkc3L24rUHFYeSttY2tzUE95ZDE4Zm9KcUZUcC9p?=
 =?utf-8?B?clcxY1EzcWNxRXFPalVUb3VWcnU2ZGZGOGZmRUxkQ2RhK0p2YnVQUTVkSGYr?=
 =?utf-8?B?RDdhcmxDa3c5SGhrdkhhb214RnhhS3R6eEgyaTk2ODh1OXRPTmxyK2NJZW1t?=
 =?utf-8?B?S2YvNTRFQTJYOFF3QTd1YXNDTzM0cEhCOUN5dkZHVno4K1E0SzR5UmZCWk5t?=
 =?utf-8?B?T1U5YnRGdXFMZEZkYk1iOTdveXVJVHJTMm1hTisvbyt6TWFlQlBJZXBRcito?=
 =?utf-8?B?WDRtMUJPNzhDaXByd253WEluN1ptUXVydDU0WHcwam5jTlBVNTA1eEwyVHZo?=
 =?utf-8?B?azIxalBBaGFMWExxSCtOSmphKzZUVFlmaFZ0eXM1WGpFS3ZaTDdJSGRqMVUr?=
 =?utf-8?B?OXNoSDVJbkNPSXRXWWpUT2hNNEVLTE9XdTEzWEovWS9VaU90WjV4RTFqTnJs?=
 =?utf-8?B?a0JYcE05OGZMYnVwYmZhOVZ6ZkJWOVc4b3pvclF4aFYrL1ZnQkxCTk1PSXk0?=
 =?utf-8?B?VEt0cUVkRmxJZTJUYjRqSjhQbWE4cytiemlDK0lDWTZPTlJHR2J5YWR3S0tX?=
 =?utf-8?B?bzhUWklDem85d25HMzMwTU1TTEpIU21FNUdGQk4rc1NDaTV1bGduVjUvWDFh?=
 =?utf-8?B?Y0ppUHZBcGg3UklYZWxMNE5YWEpBZ0ZidzlVbHFBR08zQjlIaUxxQ08rOXUv?=
 =?utf-8?B?UU1lbW1HTzRNbzltTEdMVTdmeTNvMngrNUNaOUJMaDdXMDU0Z1FOaCtFbzhy?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2185cdb0-8d7c-4391-68ea-08dbd48babd4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 12:20:55.2667 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zZfccf7JRkPEc5scfSHVGfEQzFy/lZi2Ar2gv+JXCSU0d/PE+3Qf372zVyHh4s0U8p6qSWK03TX+DBjl8kfdnmnLOA3jsdzl/gvewnq0o1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7388
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698150080; x=1729686080;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=1zXum6Wjmpttw38zHaj4v1+zv9bfWVNzaW4UGcirMX8=;
 b=HtBxTqZWW9KsMaieL7hHVm5F5/WUOa2j0M/RLpExD+7T8JQqroAoVUKp
 jVmoX8v2JKNf8tH9f7l9ZdZ/p5jDEWLQTa06hQrIrgZuT+diZZF7O3s/d
 Cjrl/2nUdvPbX9toqPpwLPmDlOovp5FLuH0oa8OJd1uoxU7TrBKUu6UaM
 vVoz4gnk00ptP+LRsH0X4prKRqTsWcOFIyExR3yAtKbNkq8DJfKvlhYBF
 zuV0rJiikh1Rpl5558Hp2X/kUdy6U7JD6KdRcXSYrg8HsICWpo+s86HVm
 HEXxoujgO2HfXnvNIQN538l/dOvbbPZmjVFntz13+k83k7vjpg9MsxEkW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HtBxTqZW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Reset VF on Tx MDD event
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 lukasz.czapnik@intel.com, intel-wired-lan@lists.osuosl.org,
 Liang-min Wang <liang-min.wang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXVsLAoKVGhhbmsgeW91IGZvciB5b3VyIHJldmlldyEKCj4gPiBGcm9tOiBMaWFuZy1t
aW4gV2FuZyA8bGlhbmctbWluLndhbmdAaW50ZWwuY29tPgo+IAo+IFNob3VsZCBtaW4gc3RhcnQg
d2l0aCBhIGNhcGl0YWwgbGV0dGVyIExpYW5nLU1pbj8KClRoYXQncyByaWdodCwgSSdsbCBjb3Jy
ZWN0IGl0LgoKPiA+IEluIGNhc2VzIHdoZW4gVkYgc2VuZHMgbWFsZm9ybWVkIHBhY2tldHMgdGhh
dCBhcmUgY2xhc3NpZmllZCBhcyBtYWxpY2lvdXMsCj4gPiBzb21ldGltZXMgaXQgY2F1c2VzIFR4
IHF1ZXVlIHRvIGZyZWV6ZS4gVGhpcyBmcm96ZW4gcXVldWUgY2FuIGJlIHN0dWNrCj4gPiBmb3Ig
c2V2ZXJhbCBtaW51dGVzIGJlaW5nIHVudXNhYmxlLgo+IAo+IERpZCB5b3UgYW5hbHl6ZSB0aGUg
Y2F1c2UgZm9yIHRoaXMuIFdoeSBkb2VzIGl0IGZyZWV6ZSBvbmx5IHNvbWV0aW1lcz8gQXJlCj4g
eW91IGFibGUgdG8gcmVwcm9kdWNlIGl0PwoKWWVzLCB3ZSBjb3VsZCByZS1wcm9kdWNlIHRoZSBp
c3N1ZSB1c2luZyBhIHVzZXIgc3BhY2UgYXBwbGljYXRpb24sIHRlc3RwbWQsIApmcm9tIERQREsK
Cj4gCj4gPiBXaGVuIE1ERCBldmVudCBvY2N1cnMsIHBlcmZvcm0gZ3JhY2VmdWwgVkYgcmVzZXQg
dG8gcXVpY2tseSBicmluZyBWRgo+ID4gYmFjayB0byBvcGVyYXRpb25hbCBzdGF0ZS4KPiAKPiBJ
4oCZZCBzcGVsbCBvdXQgTWFsaWNpb3VzIERyaXZlciBEZXRlY3Rpb24uCgpXaWxsIGRvLgoKPiAK
PiBQbGVhc2UgbWVudGlvbiwgdGhhdCBhIG5ldyBsb2cgbWVzc2FnZSBpcyBhZGRlZC4KCkknbGwg
YWRkIHRoaXMgaW5mb3JtYXRpb24uCiAKPiAKPiBJdCBsb29rIGxpa2UsIGEgcGF0Y2ggY291bGQg
YmUgYWRkZWQgYWhlYWQgdG8gZmFjdG9yIHRoZXNlIHBhcnRzIGluIGEKPiBzZXBhcmF0ZSBmdW5j
dGlvbi4KCldoaWNoIHBhcnRzIChsaW5lcykgZG8geW91IGhhdmUgaW4gbWluZD8KCgpSZWdhcmRz
LApQYXdlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
