Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F7D5A53B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Aug 2022 20:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F0FC4026A;
	Mon, 29 Aug 2022 18:04:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F0FC4026A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661796242;
	bh=XZwreVUlidgr6PzP/fF2QBM4Olr+dLBndS3uLgSDNqU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XODoGTUQjctGSYZWOUYTf0jOEUaH0S8q4dy6qsK1+gfLWANNF+EK+2ILZXYmNPiq2
	 DDMAtyhecg598VpwsKmyHMEu5YC01+am6SmlPDl/VCAggDYH2beJj0rBNtowEmykZO
	 X9YKoeIR3PrmN3gpFhQaMEaHNsqdaAS0FuJEJsCibGDMhSXo4u67xNdDsaOEFEHX/R
	 v1WE4dd/Dwy4G7r22E5BqaPr3DJHImsEPhhnaKQPyM2J1yols+07IABu5NwUolUC5w
	 WcA76Kl3w1Ou8sgc1uy7oGMtu2/MUhDgJKZOmKSV5ajJmlkuIPAy0jr2FORa0mhdGN
	 5KY/jhMfl1heQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tIByKRZQf4cR; Mon, 29 Aug 2022 18:04:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39E4840256;
	Mon, 29 Aug 2022 18:04:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39E4840256
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD4631BF280
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 18:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9630B8128E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 18:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9630B8128E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqW2XbJZt5-C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Aug 2022 18:03:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8392B81286
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8392B81286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 18:03:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="356681489"
X-IronPort-AV: E=Sophos;i="5.93,273,1654585200"; d="scan'208";a="356681489"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 11:03:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,273,1654585200"; d="scan'208";a="679714840"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 29 Aug 2022 11:03:39 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 29 Aug 2022 11:03:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 29 Aug 2022 11:03:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 29 Aug 2022 11:03:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QMEAOBUb6VMoeqYkEoLbf5pNnJBq3kpL+qmKd9TwsN2MNwmgIc80OtCtiaEE0Qash810q+64ld3OoTH5W0v+ex+vkzuIsR6IL/GXfVTbgJmiQx66v8kuLAEhI+klUZrofjAifZCW+A9fEsZ+XtHf5lZvbDBxnHmFxdOrSX0QY104Ra7wV/Z5cI+72UWjNJlqBEwa17GmHJoasQAXQFHugbbpwGVLvn3WjYMhj4hmv9+UjitAC/G9L5ViO1yRZKD69uLNu8mtVF5+v0JNqA5SPIPA+StHvPdCJDYpPCL1V1BJaRZWfvT0faTcc1VmbT8G+fNn56xBMGEsEyfask/caQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Eap65e3vFNQTxcv93bMwJ7hURWYDF463YMWm+ErZ0Q=;
 b=hBCHAjrIxZVzcX1ES+vEP6P2Bedu0a7RZL5r13qOMPglgRavcYwbh7FhHQYIpj+wcjTrCVd57Jg+z9v78zKwx3kkbnELH+W0tMmOna7AKBlqx7uuLgV8QqhZaMQgNcqdWMMK7Tcu4xBdUqHOAmp+co72v1Z127JRNaSguZRxbPzVKjdOy1hjSYPP1bFILLUMqkKkWSfMx8YhUhd+v51qAq6gBZfteXtJasnY8QVL/Uv0U4QwC7eRo1gIuu+eGadTtfSoxwBMQMhY02SzotZ0ogPmnW27XecAPaccPz/m4dM6JCTSOkl6GlKxCbEjJE8G9azE0dHfAYHrhx+pzugfEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by BN6PR11MB1667.namprd11.prod.outlook.com (2603:10b6:405:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Mon, 29 Aug
 2022 18:03:29 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::6956:55cb:1f16:adcd]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::6956:55cb:1f16:adcd%11]) with mapi id 15.20.5566.021; Mon, 29 Aug
 2022 18:03:29 +0000
Message-ID: <3226a822-b8be-b712-737a-f8cc523ebed1@intel.com>
Date: Mon, 29 Aug 2022 21:03:21 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.0
To: Li Zhong <floridsleeves@gmail.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <20220826065627.1615965-1-floridsleeves@gmail.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20220826065627.1615965-1-floridsleeves@gmail.com>
X-ClientProxiedBy: FR0P281CA0070.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::20) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 17b7db23-5045-40bc-e9be-08da89e8c712
X-MS-TrafficTypeDiagnostic: BN6PR11MB1667:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mDWB4e/GpKSmQHjJbeN3yo4OpoRg229bugHabeAloQPvW65+JeFBND278il3JKRfSrrsOwG6VX73QGf2EC7723p7ys6xfA6QZxjuSf9ByqrMfbxrXA+9qgthxiLU9fMDDorY56jWQ28/jK36J1MuB22Y79SNib8BBkgDmKAX8u3JEo9Fxcih05QxYZH8kehZU3KNluOkWZyVPBK/w8576syqaZwkbZfgoauNR1lj72ciBphLfKF5cBAyjctGnyGQmx3gLQxLFiDUJQ/rjp2uL2Msjmpt+PER2xoCu+4Z7Y6aZGejaaJRcBTJtTLLZ437gwd7lFlQlSX86EqA662eJIe240gXHBGJ9TDRgrsjL8GUDMne8hP3R2e8uTu368QY4zxwkphnafC8GAxbRPPPwII+6WoN6WZH+Uv7z/wm15GxqpsvMTjC7Tkb3T/ZO6czPKOO+RZsX7n66fdChRbrxhRJRaLAiXUvbPkYe6Lwjb9ldO7jAzQcUODvivnjiAqzM8fl2t2/mgbwyQGtbZYwWzWm8jDpuB2VIKpTVkzlUVWMPJ7eITCl7w/eluuJ/KaTDXOzMfl4p73mR/XRc1x8GdIfa+/7A8GKTsTjmkrqRbNE4YLz1Hlj7IFevEavmBuY4Se80R5k+/Pok9hu6ngHA2bg7eMYO1GB473+ZNuqokgGF7d/X9K4CBr2F5ujI/OUV4m7FJSf7a1lL6zprfoWFDLGxWRDFhfgxaTPGea0lKzP1TWf0TY0mX0f0Jy1uVa3p0pUqUhX/t1u8Opqr2upVSl+mibH/hTDtnV7m+mg4uU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(396003)(366004)(376002)(346002)(6486002)(8676002)(66946007)(66556008)(66476007)(31696002)(4326008)(31686004)(36756003)(86362001)(5660300002)(8936002)(54906003)(478600001)(41300700001)(82960400001)(316002)(53546011)(26005)(6506007)(2616005)(2906002)(6512007)(6666004)(38100700002)(83380400001)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmI2akJMN1RuL3hzVVk0UnZYVnFwVWgzVmcwbzJuV0VDajI4UGtEU254b083?=
 =?utf-8?B?U2I1MWRtaFJ0ZFdvUC9tOVZzd1M0RmtOVzI4NTdab1RQZFBUVTFna3NvTkU3?=
 =?utf-8?B?Z3ZnR3NGT0dmbldNQ3RFTy8vYk50L2N2SENSVS9JNUsvL3hNWFBnd0xHaytO?=
 =?utf-8?B?azJvVnhiYlpXSnNtUFZqWVRkS0N0VGEvbU45eUhOWVhTektRcE5BZ09WcTRt?=
 =?utf-8?B?Z3Rtc0NpZVBDbWExaGpQNDkzbzZWWVlXMDV4Tnk3NlVSWkh1MW5YcFJJZTNB?=
 =?utf-8?B?VWdZdnVjVjlQWXhPcGthWkVGVUozQ2hDYXhZbWZNUEFkUjB1MmZQQlRRVEFD?=
 =?utf-8?B?NmhsVkFsZit5VCtrV09YZjJnRXJFSzFNOStKY1BmSStubnBzSDV6cVQxNGR3?=
 =?utf-8?B?VWFyVitPYk5yYk5WUXBUd1BweUJTNGxwYm9FY21SdTNtWmZFaXNWQkhjYk5S?=
 =?utf-8?B?TzRwVW5NV2xobkFXQVBEWkgzMEIzczFKaDN0a0ZvaU5la2Q1bEE5aEVHamV2?=
 =?utf-8?B?bXh1TVl3TkNpdG9YNE9aL3UreVVDdEpZdUkzWmJTNzRDenJhMmpzR2l3T2FK?=
 =?utf-8?B?S0JvdzlOUUxqYmI1MlVEQjN6czhjbU8xL1JyeHArRUVQZUsxa1hkRDkwZ1pr?=
 =?utf-8?B?QnhoSUU2eEQ0aGFTN1VOdUk2S0dldWxvaUM5RE16c0xXSzhoSXFqWVFKL2tJ?=
 =?utf-8?B?VDRHMjkza08yeE5SMHlZNGl6Z1lDZ1NaV1hDcWNaazZzb0p4SjVZck9mVFVP?=
 =?utf-8?B?VlBqOVg1ZjFTMlBsUDJuNXlocXV4LzA2YTREVXN4M0pvcEgzQzBJOXJ0NGds?=
 =?utf-8?B?dTczQnBsWEtLWk1IamdHa2I3bVFDYnRVK2F1cXRHak03S3BkSWRLaWdaMkZ4?=
 =?utf-8?B?VmJBNG9VMnoyUzdjdnlDWXdUM0w5OUY3bm1RSTQ0MHh5MUE5SXR3eSt1Ujg2?=
 =?utf-8?B?Q21hMGdOUnpRbmhTRFk2SW5OVlVRRjVFTXlDMWZvOFFvSGc4cHhvOERVSXUr?=
 =?utf-8?B?bnZHR0hyQk9NTWFPbmtibkszTE1vTGRicXVsSjRCS3R3L3grWm93dExJY0VV?=
 =?utf-8?B?TEZya1hna0VqNGV5bXpzV1NYVU9VYmkrRVRRYkxoaHBGQzRFa0k2UStYdWNQ?=
 =?utf-8?B?NEpXNzRYK2RLcVAxMXVWa09LdWRMLzZxblBud0JZQ0FscnJabTlEdmc4VWtS?=
 =?utf-8?B?THFhWjNsNnRNNjZGM3RISjJCdUx4Tk9KMEJTbWxoeWVhOXJJSnJKL3czcFZx?=
 =?utf-8?B?N3dCd2pNRC8rTGp2d3JZNFJ5aTRsWVZVc25aajVaZ1JaVVd3Zy8wekN2RUxN?=
 =?utf-8?B?NVVjSkpreUUvTEsrck4vYkttRnVMZmZVeUdzcUg3MmozcDhkOUFEYVFhQlpv?=
 =?utf-8?B?ZkR1VTJmN1VhWnBnaTl6dUNFc25Hc3I5MzIrNkUzTUNRcEprME5rcCtzd2R6?=
 =?utf-8?B?U0FuUW1HS2QvWmNkNjV0cjlKK09RRzdRalRkeEV3YlNUcXc0YmpqT21iMysr?=
 =?utf-8?B?eDNFNWRIM2llVzhERTBoWmVnMnlVNU14WDQrbmU5VDJtaHVZbXJtb1Fjc3Vh?=
 =?utf-8?B?eEFnRE9zeTlWSkJsZVA0VEJlZ2tqd1BvZ0UvaXNVSUc1ZjFWUEpESXZSOW9o?=
 =?utf-8?B?S3ZueDdhZDdib3RPVVhSTkdjTnptUzJOM3dBU255cnVtNmFMOEJiVEIzWnY5?=
 =?utf-8?B?MGdVcUhGK09wTzJrRmdDMDc2cVRyUDhVM3dKNzREZGlsVXRIWEY0NldRZmJu?=
 =?utf-8?B?a0VVd3V5SU1vaHVDVHFBeWc2eVRyYzFMazRuUGNsMHI1aHVBYTQybkxNSkxq?=
 =?utf-8?B?eGYvSWF5VGJGTWh6czBjckFyeDJTWlRxWnhyNERKbjdoSnoraXZ5RXRaOEpa?=
 =?utf-8?B?L1c3OEk2RXJ6T2tkd2dxZ3h1Vmp4cTlXZmNZVWFiUnQ5bFo4MGIrL2ErNkdZ?=
 =?utf-8?B?RnlkTUtsMWhmbUg1Rzc4OXNqdG1qU3FGYVRMciszYjNKcWpxQTI2Yk16ZlFj?=
 =?utf-8?B?SEpSMjFKUUxQWWRmbVBSRXdFZ0kyekpHQ3Rub0p1ZkpsZmxsVm9RQm5WNWRR?=
 =?utf-8?B?SjRkeC9RRUFBMTlIcGI5MW55anBOS0pKODN3U2EyUnUwQXFqd2wzZWtQVllj?=
 =?utf-8?Q?ub5q/6dF07mQHN7POmoveP7Nq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b7db23-5045-40bc-e9be-08da89e8c712
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2022 18:03:29.4482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rpfHW9NS2oq8EPeoXj2EHVrABM4RF/+2q5dAv2Ru/kZzZfzBDrOEyHSgf3zsc1Tys28WbY6iH4RBpXXWjJM/+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1667
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661796234; x=1693332234;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/xZCJbaP+40tBwzlOI1+NkJ7hMgMe/s+YOcZ6SvaggU=;
 b=gRgBO1jRBdSNeF+5x2x8+msB91PegrW3stesoUlqDaywLM60rzKn63ly
 EmiijY2kqN1ddBFw+ucKpGnw/CDQKfUDzosJGLRxymukMe6AuDxSfYdeI
 oniYqNzTxhcRvxrHVGR7aE/tj0QjAfP0w0iG07NDU3FkKeR2+rrm3+OFO
 NuImMhAMtA9PJeWIRTS1/kzGHLBMgU/qfOqf8xwCS+l/xxq/z7vlsAaGe
 j8zRMkUUCiRNTia0667yNAqWEjDNAsyUPOkijoBUUy4+dVnuQpfyG1pHO
 g/NQIsDB1u4VjXZTL42/jF+QlyUZf7GlrBvVU6Ldu8bOSHmwPs+34Ew1u
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gRgBO1jR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] drivers/net/ethernet:
 check return value of e1e_rphy()
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, edumazet@google.com,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/26/2022 09:56, Li Zhong wrote:
> e1e_rphy() could return error value, which needs to be checked and
> reported for debugging and diagnose.
> 
> Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/phy.c | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> index fd07c3679bb1..060b263348ce 100644
> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> @@ -2697,9 +2697,14 @@ static s32 e1000_access_phy_wakeup_reg_bm(struct e1000_hw *hw, u32 offset,
>   void e1000_power_up_phy_copper(struct e1000_hw *hw)
>   {
>   	u16 mii_reg = 0;
> +	int ret;
>   
>   	/* The PHY will retain its settings across a power down/up cycle */
> -	e1e_rphy(hw, MII_BMCR, &mii_reg);
> +	ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
> +	if (ret) {
> +		e_dbg("Error reading PHY register\n");
> +		return;
> +	}
>   	mii_reg &= ~BMCR_PDOWN;
>   	e1e_wphy(hw, MII_BMCR, mii_reg);
>   }
> @@ -2715,9 +2720,14 @@ void e1000_power_up_phy_copper(struct e1000_hw *hw)
>   void e1000_power_down_phy_copper(struct e1000_hw *hw)
>   {
>   	u16 mii_reg = 0;
> +	int ret;
>   
>   	/* The PHY will retain its settings across a power down/up cycle */
> -	e1e_rphy(hw, MII_BMCR, &mii_reg);
> +	ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
> +	if (ret) {
> +		e_dbg("Error reading PHY register\n");
> +		return;
> +	}
>   	mii_reg |= BMCR_PDOWN;
>   	e1e_wphy(hw, MII_BMCR, mii_reg);
>   	usleep_range(1000, 2000);
> @@ -3037,7 +3047,11 @@ s32 e1000_link_stall_workaround_hv(struct e1000_hw *hw)
>   		return 0;
>   
>   	/* Do not apply workaround if in PHY loopback bit 14 set */
> -	e1e_rphy(hw, MII_BMCR, &data);
> +	ret_val = e1e_rphy(hw, MII_BMCR, &data);
> +	if (ret_val) {
> +		e_dbg("Error reading PHY register\n");
> +		return ret_val;
> +	}
>   	if (data & BMCR_LOOPBACK)
>   		return 0;
>   
Generally, I am good with this patch. One question - it is old HW, any 
idea how to check it? (82577/82578 GbE LOM - from 2008)
Li, how did you check it manually?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
