Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA579788C7D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 17:31:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25D1483C1B;
	Fri, 25 Aug 2023 15:31:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25D1483C1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692977517;
	bh=l3igcs06YZvQxWda1bOcnEDhZH39ksWCvSv+cX4UDXs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BAxZMkE6texYIFFXRSmjeSFHHXRQBxSGE0Q4SLAVYtjzm4N2kta62y7ClzpdIpjX/
	 sdH1F0wJsUPhas7m4xZaA5bwFhT5bueVUxN46Ky0A3JwcydbfEZJ89RSP9urSVJ7gM
	 sWTxxYq2V17JMA2e1ylQLsWhGOHzYh/wjWFenZkgpqgRRZjEIonByS0jAG75X39lBZ
	 w38N7Uo8BPxK2QdAMn0dqLJNDdfOgMNZTzvO9kzUJohFrjMSgZ2g5H2VX8kjDm19bT
	 um/7zWcHJPIOhfGpdoJEJx/VOaHkAmEJK9kE37tQm4RAI8+xlndJijng7snclD569j
	 OkiGVYP9FW4qQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBhRysOelJV3; Fri, 25 Aug 2023 15:31:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F175F83AFA;
	Fri, 25 Aug 2023 15:31:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F175F83AFA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56E811BF271
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 15:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AF0161496
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 15:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AF0161496
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0eacrmQf0503 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 15:31:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A86A560BF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 15:31:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A86A560BF4
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="441084689"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="441084689"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 08:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="852016270"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="852016270"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 25 Aug 2023 08:31:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 08:31:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 08:31:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 08:31:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 08:31:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ofe7N9nrPgOSeYkFZmxMLnMcfgewrZs+GzCfp9CZwPvXFNpJvRkrGhjAJKDSxbqatSNWC3qlDa/By1RIAygSpiyLKMjWoSZomzDsicu68HWtonm9C65mRTQ8m6JMDzmgGOm/qO+KaRdhh+aBlUsYUOcAuG+pVXNJZ4aF8Loqw8u79aErVohkU+zO3P2D9K3Wl6pINaAEfj6o2k6BQZz4DVQZiUtgM74RWv2oLP+skGUVpaEsoQYTy7DkdFRQOUCjyHDKAtAbAM0LWymYxCvhwmCgakctVfppnqYkA7G6BYIsB4csFS0e+N0t10Q4056zxamGz7iz2b2FffgJFg54dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q8rQsQgz7zn9Ck0S2ZyRu46F+cyErNcrw0HOLrb06eg=;
 b=HHRKbIQmzcgTltk7/lt6Eq+h8xg5BMMSMpzy00lwGT7ch1W+uOKS5yJvIWKsOgrM6MTxoGQlC9aLEOxImISJKA4pz4tnTt63TWmEPrOt5fUgNhCxAurW7RArIw1WVv4QjYDX9UdnHlToInCK+2E9hPjrKIhB96NiIwSHjWJDM9n6tXkTO0hDCBGnLcOeVaVwnrxjQAlgIRl81q6c2nI79Ma/jSd+7FSIgthAEBjPRCAAS+soS/dK94OK0IXVwLLBGS0KutgWC7OSmx/ZIZTHB8smmhv8PvFDahya3CTikNEDSIqB0BDOK4urA2dF1MlZS3fvwnv+NGNLbAgaTsVWsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by CH3PR11MB8361.namprd11.prod.outlook.com (2603:10b6:610:172::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 15:31:44 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6699.027; Fri, 25 Aug 2023
 15:31:44 +0000
Message-ID: <a9bd1a28-34d3-1342-8811-555e9d3904d5@intel.com>
Date: Fri, 25 Aug 2023 09:31:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230824122337.3300895-1-ahmed.zaki@intel.com>
 <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
 <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
 <30ae8892-3332-7fb7-273d-81f40a068175@intel.com>
 <f60f2e8a-d77d-9048-405d-9c356960eb01@intel.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <f60f2e8a-d77d-9048-405d-9c356960eb01@intel.com>
X-ClientProxiedBy: FR3P281CA0150.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::19) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|CH3PR11MB8361:EE_
X-MS-Office365-Filtering-Correlation-Id: 3158ebf9-0831-476a-b4af-08dba5806355
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p6KAhJN4nksy3Bz/JlwGzpUrmrh+LkWsUx3dsUeDXKQBZHzv3FTtlkbUesIaj40GImrhE5NBnCJft4zn8BxKLdENXyog501MnQFr+tf19zPeFaCp+y18/25eKp9U0haPmIHBCG0Ih0AIj4c/Tpu90V8fJhTMZJKlarYLC7lkr6pQrCP0l8+0ObEC+F6zn+5ghW+gXfQu9Lex035tiBM5m3yM+jvFr7tpcDLGCHRq9Msg6SkPRtTRZFGQTfbP2+GWxnkR77NycwKuQFCOUiI49jirhM9UiWHG58bvoYaihxpN1nTyObNY/NNCsNOav6av5olJpBteA/K6x/zcNRtk/6HFRJBV0EEpY7A8hCJJRLpkh2Uyv00PqK7n54ek+8RtPwzBy7auBKca2Kdc++9vItswWPtj4mKfCBFWnGekFeJjQGTu400dMjnooyYoiZ3FzRaej2naKoY4utO9l5JG1slDa8TxfVKJvApOYNl046uaXdB+KkVFbD9FVrb56m2/Jr11kr+zzQ4ugMZydzK1S5c3amiMQy2sbBPsEHum1DqwylmFhEHBCBvf6lG2lUZVqUtR6yjrOo5ZJCZgSjcgulD1gPpOXEXal3wXcJA2WtYHOPPONckg76D7sv6xPk/U7hLZslil++BRg7RhpmQcvg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(366004)(39860400002)(376002)(1800799009)(451199024)(186009)(44832011)(83380400001)(6512007)(478600001)(26005)(2616005)(5660300002)(31686004)(2906002)(8676002)(8936002)(6862004)(4326008)(66899024)(82960400001)(38100700002)(6636002)(66556008)(66946007)(66476007)(37006003)(86362001)(41300700001)(31696002)(53546011)(6486002)(36756003)(6666004)(316002)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0k1cTl6d01ZVU93bjVPKzhqb2VVbThFUU9ybUhiNjBrd3hJZEIyYXIya0sv?=
 =?utf-8?B?MzNWWDFYbTB2VFA3TE5JaVh4dEQySFFVaG55RDdSdCsxWkFyeXhEZW5zem14?=
 =?utf-8?B?UGNXMkdZcXVwT0Z4WE5tK1BTc1IzVi9vYTdzakVlRUtiSk9GZmZZREpLRVhq?=
 =?utf-8?B?MTBGajBhWitzbmN2cSswdWhybmtJS21WT0t5NnNkRHlaNkk1NHlNK0V0ckFU?=
 =?utf-8?B?Y0xQeEFFY2IxakIwRjJXNkxKWStTSWFIUnp2ZE82MHY4aENDd2lMTXFkOWhO?=
 =?utf-8?B?eXNaSGp5ZnB3MkMzaFB3Mkg2L1RDNGR4MFlEWXVvcm9mVDFCZkpWSDhMZkls?=
 =?utf-8?B?TTIrNWNwbWQrNUs5bGI0SUw4a3plT1ZoTnRYdTUrUVN6ZzQxVzJKczZNNFYz?=
 =?utf-8?B?UFdoV0J3VXlBeFE5aloyY3FWT1VXTEdYYXNXT2RFdzZ5QVJlRHRzYlZoeUdK?=
 =?utf-8?B?SWtYQTdLV0d3SThRZGJvd2phazZlNlAycDE2ZmhONFJtQWV3UjZ2UkQ2Rmdy?=
 =?utf-8?B?ZmdyUmJvaFhPbGV3aFZBcm5mRkVzclVkL0c1Y25FRDh2dEJJSmcrNEtwYnZQ?=
 =?utf-8?B?ZzA3MEo1TG5VWlpxK0hPRlBHSTkzejIyenZOa1NVczgrMFc3QnJZSnFaSE9s?=
 =?utf-8?B?UllCd1dyeXpvd2VYZ0VkSXgyMC9jNWlqSm9OYVllVll3WVhIZFlHSml5SXlC?=
 =?utf-8?B?RUgrZ0RCbDU1aHRjaWpPNGgzdFVsM3RobGdWQnlWK2c2ZXExVDdaeUtMczZp?=
 =?utf-8?B?RmkyamNnUTVvUDIvNVlVWklESlI5WWFOSjN3dFovVkU3OVQyZEZUQXFkMHNS?=
 =?utf-8?B?MVlEYXljTnRLdXd2TEMvRG9oTkk5TlNGcnI2T3RsNkxRU1YwTWJNeDd1cFdZ?=
 =?utf-8?B?azc4NzdGaXRFSExyWVFTV1l2K01ka0J4YkFGdUNGUm1qYW1iZlI0VFBMUENj?=
 =?utf-8?B?Q1pPdGdqbHlaVjNQRVJnSHVSQ1Bnd3VQcjdyc1N5bUtLVWg0VEZkZC9wNTJC?=
 =?utf-8?B?eE9LcitxN2ltWXU5Qmhhc05mWFBYT1k0NUdFZmF3UmR1MlVjRTJiNjJ1cEhM?=
 =?utf-8?B?ODFrTGdTVjFMV2ZReGRrRCtlRWVURFpnRXFVR2xnSGF5eWppSG5GUnRud3Uw?=
 =?utf-8?B?Y053ZWJpbnJLZVJBcm1tRWx2L24wa2k2SndZVjZ6Yit1R3MxbjI4WFQzRWFM?=
 =?utf-8?B?ZTdlbEx0R0pQWTdkaGdnZG5nODl4TURsRjNYOUNyYjNFYWViYzlURWJWckRZ?=
 =?utf-8?B?aEdwL2hlREFUNXNYTFFCU3VHQ1l3YkRUc1dGbW9yZ2JzVlM5cWRQMTBHT0s1?=
 =?utf-8?B?WlNjYWhNMmNWZ3VwbHptNS9XZzVGK1ZWeU96QmwrbU5jcjFGYlBTVEd5bGhq?=
 =?utf-8?B?OU1oSlpzczFoWFBxOEtLWklBci8zb01hckFmYlpWeWJtY1FxS0xMRWtBU2x6?=
 =?utf-8?B?cCtkbGlnQVh6TklNS0VQenE2MiszVk1POUxmb21GVmdnOGNOaW1oRGgyaDlw?=
 =?utf-8?B?dlB4YzI2Y0dwdUM1cG1vQy9BQ1dlajQ4Q3duZk5EVjh1akYxU3lmT2JuM1Zw?=
 =?utf-8?B?L29QWlgwaGZqaFBWNk80RDBralFhRmREL0ZiWjlvNGVjWlVaN1orWGJpeEM5?=
 =?utf-8?B?cVBYSnIwbDF2TkJ4Z2x4dmxXS1VCNHI3Qjl5ODN2bjlQM0V0OWQyc0ZtQnBF?=
 =?utf-8?B?NVBHS1N0VHVZMmdlS3F2R1h6cnRqZnR2ZkU0VjQzRU5NcHdGaE9FK216ZU40?=
 =?utf-8?B?czJJaWpUdmRONThwQXBJcDRpWTcxZDFkUHB5cTF5YjF5Skh2dWFDeEg3OVpx?=
 =?utf-8?B?aENCTW15U1hIYktBUjlncHdJUDdxY0VZZmZzakNFcGpkMjRaVTlQZ3dKcXNE?=
 =?utf-8?B?bWJNb0h5aUVYNXlyM3NJMFB6amNiMzkzYkdiWURjVlFlVzFhbGxGR3JnTzhL?=
 =?utf-8?B?MVJsZG54dHlSTlg4ZUQvRThHdUZqS1JMb3hGUlhrTFNXaVpreFh2dTR5MWM5?=
 =?utf-8?B?RG9KY0hOQ2ttT0wzOUdOc2NBQWtQUVRHcG5DRmJJd3FGMWpGTGFBSnhLbldp?=
 =?utf-8?B?UjMxMGVXZHlhQXRaQWFzMXU5c0g1U0NGR2x0MzRmRWFvRG43VENINFV6VUUx?=
 =?utf-8?B?RjBwRU5jVU5SeFk4RWhyRFJTVVpjeDFGK2xBSjhuNGNhWmtzaHhQRlcwZ1pB?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3158ebf9-0831-476a-b4af-08dba5806355
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 15:31:44.7191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LiLNWT4pz1bZzDDs8AEh6tU/9hg7XQtR4REGn/BpgMtUmAuvdC5lhhgrhGBdkpKnBLRAqTwc4jpCL0k1g04f5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8361
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692977509; x=1724513509;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PZq9IfBIgI35qZ8S9/x5wAR31QZjGioQTRJd2w/3hUM=;
 b=Q5r8Zkl+SYIcUz4o2Brg+IkZrrub0yQm3ZiaDrfeh3dVFMfzhQH65qrp
 PdryhHdXCD+9v1w5fzJVBgU6MiOMxbsiu3+vOvdUSXxVjNZBsMDbdMyPB
 ssppi+EEJbn86tD/yXhIB8teg30L31hW8B9H7VoGhPQ4sqvpzxSvYU/+5
 WbL3v1DcBeqdMVPr0Zf0OspVjMB0/ai25yII/hf/2xd9o0tJc/6lcW5fz
 SetgK5p7P9vSxSGoCgyO+anUteQdo69tysTEB+Vt7hHUnwWF4fQ9Jxd/s
 Uq2W8a5owhU6P2+Iql64cPYiFUS4wR/tD+C+sPyCA6ssscw6DOxEuVr6L
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q5r8Zkl+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: remove "inline"
 functions from iavf_txrx.c
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMDgtMjUgMDU6MzYsIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+IEZyb206IEFo
bWVkIFpha2kgPGFobWVkLnpha2lAaW50ZWwuY29tPgo+IERhdGU6IFRodSwgMjQgQXVnIDIwMjMg
MTQ6MDg6MDUgLTA2MDAKPgo+PiBPbiAyMDIzLTA4LTI0IDA5OjQ2LCBBaG1lZCBaYWtpIHdyb3Rl
Ogo+Pj4gT24gMjAyMy0wOC0yNCAwODo0OSwgQWxleGFuZGVyIExvYmFraW4gd3JvdGU6Cj4+Pj4g
RnJvbTogQWhtZWQgWmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+Cj4+Pj4gRGF0ZTogVGh1LCAy
NCBBdWcgMjAyMyAwNjoyMzozNyAtMDYwMAo+Pj4+Cj4+Pj4+IEZyb206IEphY29iIEtlbGxlciA8
amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+Pj4+Pgo+Pj4+PiBUaGUgaUFWRiB0eHJ4IGhvdHBh
dGggY29kZSBoYXMgc2V2ZXJhbCBmdW5jdGlvbnMgdGhhdCBhcmUgbWFya2VkIGFzCj4+Pj4+ICJz
dGF0aWMgaW5saW5lIiBpbiB0aGUgaWF2Zl90eHJ4LmMgZmlsZS4gVGhpcyB1c2Ugb2YgaW5saW5l
IGlzIGZyb3duZWQKPj4+Pj4gdXBvbiBpbiB0aGUgbmV0ZGV2IGNvbW11bml0eSBhbmQgZXhwbGlj
aXRseSBtYXJrZWQgYXMgc29tZXRoaW5nIHRvCj4+Pj4+IGF2b2lkCj4+Pj4+IGluIHRoZSBMaW51
eCBjb2Rpbmctc3R5bGUgZG9jdW1lbnQgKHNlY3Rpb24gMTUpLgo+Pj4+Pgo+Pj4+PiBFdmVuIHRo
b3VnaCB0aGVzZSBmdW5jdGlvbnMgYXJlIG9ubHkgdXNlZCBvbmNlLCBpdCBpcyBleHBlY3RlZCB0
aGF0IEdDQwo+Pj4+PiBpcyBzbWFydCBlbm91Z2ggdG8gZGVjaWRlIHdoZW4gdG8gcGVyZm9ybSBm
dW5jdGlvbiBpbmxpbmluZyB3aGVyZQo+Pj4+PiBhcHByb3ByaWF0ZSB3aXRob3V0IHRoZSAiaGlu
dCIuCj4+Pj4gVGhlIGNvbXBpbGVycyBzb21ldGltZXMgZG8gdW5leHBlY3RlZCB0aGluZ3MuIEkg
d291bGRuJ3QgYmxpbmRseSBob3BlLgo+Pj4+IFRoaXMgbWVhbnMsIEknZCBsaWtlIHRvIGhhdmUg
c29tZSBvYmpkaWZmIG9yIGF0IGxlYXN0IGJsb2F0LW8tbWV0ZXIKPj4+PiBvdXRwdXQgaGVyZSB0
byBwcm92ZSB0aGlzIGNvbW1pdCBkb2Vzbid0IGh1cnQuCj4+Pj4gSWYgdGhlcmUgYXJlIGNoYW5n
ZXMgaW4gdGhlIG9iamVjdCBjb2RlIC0tIHRoZW4gc29tZSBwZXJmIHRlc3RzIGFzIHdlbGwuCj4+
PiBPSywgSSB3aWxsIGFkZCBhIGJsb2F0LW8tbWV0ZXIgaW4gdjIKPj4gYmxvYXQtby1tZXRlciBp
cyBzaG93aW5nIHplcm8gZGlmZjoKPj4KPj4gYWRkL3JlbW92ZTogMC8wIGdyb3cvc2hyaW5rOiAw
LzAgdXAvZG93bjogMC8wICgwKQo+PiBGdW5jdGlvbsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvbGTCoMKgwqDC
oCBuZXfCoMKgIGRlbHRhCj4+IFRvdGFsOiBCZWZvcmU9MTIxNjYsIEFmdGVyPTEyMTY2LCBjaGcg
KzAuMDAlCj4gQWNrLiBBZGQgaXQgdG8gdGhlIGNvbW1pdCBtZXNzYWdlIHBsZWFzZS4gQnV0IGJl
Zm9yZSB0aGF0LCBwbGVhc2UgY2hlY2sKPiB0aGUgc2FtZSB3aXRoIENsYW5nLiBBbmQgZG9uJ3Qg
Zm9yZ2V0IHRoYXQgd2UgaGF2ZQo+IENDX09QVElNSVpFX0ZPUl9QRVJGT1JNQU5DRSBhbmQgQ0Nf
T1BUSU1JWkVfRk9SX1NJWkUgYW5kIGlkZWFsbHkgSSdkCj4gbGlrZSB5b3UgdG8gdGVzdCBib3Ro
IEdDQyBhbmQgQ2xhbmcgb24gYm90aCBvZiB0aGVtLCBzaW5jZSB0aGV5IHBhc3MKPiBkaWZmZXJl
bnQgYC1PeGAgZmxhZ3MgYW5kIHJlc3VsdHMgbWF5IHNvbWV0aW1lcyB2YXJ5IGEgbG90IChgLU9z
YAo+IGlubGluZXMgc3R1ZmYgbGVzcyBhZ2dyZXNzaXZlbHkpLgoKSSBhbHJlYWR5IGFkZGVkIGEg
Y29tbWVudCBpbiB2MiBhYm91dCB0aGUgYmxvYXQtby1tZXRlciByZXN1bHQuIEkgaGFkIG15IApz
eXN0ZW0gb24gIi1PMiIgKGFib3ZlIHJlc3VsdHMpLCBjaGFuZ2VkIHRoYXQgdG8gIk9zIiwgcmVi
dWlsdCBtb2R1bGVzIAphbmQgSSBnb3Qgc2FtZSBaZXJvIGRpZmYgcmVzdWx0IChleHBlY3RlZCBz
aW5jZSBub3QgbXVjaCBpbmxpbmluZykuCgpUaGFua3MsCgpBaG1lZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
