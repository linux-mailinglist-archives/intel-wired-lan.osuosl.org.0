Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C347EF26D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 13:13:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 961014265A;
	Fri, 17 Nov 2023 12:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 961014265A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700223210;
	bh=YIC6RveYIdRwL/kou4RBAOy6KqkDGdvuL6SucM2YaCQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wKj7BEIi/zyu8tfi+YFsH6HsKXdv2ul8Heu+HPmmiTFqsyOSFqO/gqmOACy/Tdnd/
	 0vZf1tnKM4DTW558genY1m3qk7lwtSX4OzLfHXvvf1iplBXsK8igbL2wpOUezzh5mT
	 tzqxbFRS9fQibgdpVtz6GuORvhU8uUNzaiaIdfuDtycp2bsluzfT17RiNj2Fo1murq
	 BkzhnCth8kv7X0L468UwRMEuDNznm9dxursUWWE7EaSyYA8u7DfWn/nycxq+PON7tt
	 5QU+d13kOrh/ZU2bLOneqS6X+UO7noFcxYaAFp9X3f7lUk5EBFeQg90JvfORQ8pxjM
	 T8KiquiaNbTaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q9pH0qn839iE; Fri, 17 Nov 2023 12:13:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BEC94254B;
	Fri, 17 Nov 2023 12:13:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BEC94254B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8691BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 12:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4331A6FB49
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 12:13:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4331A6FB49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtnsEihjLWW1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Nov 2023 12:13:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 486136FAEF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 12:13:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 486136FAEF
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="477503743"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="477503743"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 04:13:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759159202"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759159202"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 04:13:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 04:13:20 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 04:13:20 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 04:13:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E9k0wfInEmrkMRRq/proYIx55H4uLxc0RBh436cHI4QB5WjU7eO1o3LXW8mB98+jkZ1kYq5ukAxYXJL8v1wVt+apdjasj+66KBVRZ3Fi9RVBfsfT2JvFGjRnT5lf4SUxtKoLEHccUW3j4vHSxiHpAxEJkuFcGtvXAbZVEPN3YapiasVZZzpSPqBkRSCHkSzdMX2YF4tLvGaxJfi+gJ4mpIPln+EhF4FeIEdfomlRbfRyiMoQOUxRBmVjmg7RcIyBks18ntP9Lyvv+JsHGhmbTFY3RPpqdaeTFXnY/HC1PW4wiQDVzcraUvYZ7tM16uYg4x6bUWiGhCwJT23yj7MZiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m057428QVaGizLdnL6Pl++RfAI2MuEmhiYrW6dpvUcM=;
 b=FLnL/pi1DeWYezJC07Vdfagbu1SRtevjYuZfvw4m4PEY/NMQpLWivGHVBIPUyaMZqBE22Es5VS9TUzHz9TwlrfgJz1hUqUPmtCwdvO9VSwEWTznYwJ28EnRCgNsGx5VvOKAkO4vaX9Dtwa6ICHmGaXw+wf/b1Yz/WdFud9J8WuDcH5jhBX/cI5xVuFov2lh2hLiNxX42fTVEzpHL2TdrIE8E2DHE2WnXZPIt6UcuntjnTUZb9CyhVDOP8y8nRu6o5DmCf0AlFNaJddC8Vt6eP4FcZyAk9z9uy+LTMEMYX+DTDndXV6iJsX+Wr0oDYJOX9veEUGtM1vp6FfkYMcINNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by BN9PR11MB5452.namprd11.prod.outlook.com (2603:10b6:408:101::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 12:13:18 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%4]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 12:13:17 +0000
Message-ID: <dfbd2a81-6c2d-fb5f-c445-c3f65a0d0a76@intel.com>
Date: Fri, 17 Nov 2023 13:13:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Stephen Hemminger <stephen@networkplumber.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20231116104334.3ca31655@hermes.local>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231116104334.3ca31655@hermes.local>
X-ClientProxiedBy: FR0P281CA0138.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::7) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|BN9PR11MB5452:EE_
X-MS-Office365-Filtering-Correlation-Id: 94db0f3b-8452-4019-335e-08dbe76694f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1WJbVcF2IFxZ60chs3NkIeTlHW6VjwHtuAFNYTQOF9KVrGDwb9zPaOoGA2zDn4oe1Pl0pc80b1n44/+syPiIiWr+eFS975WX5EbjlD/Prv5CekXkw2SGbAPm/zejpUyhHQeyKL9+RPDVkDLD78+xWpHCgMx+w+W87NWEOlPOPVNwShS+l0vjDhl0RIQXkr7E3lkqVH4wj0Eow63VFaXP9n7UGPRxDHRozdu+vkLs+uTO2+REaOhvbzD+dbwcXN7Gv5pzS52lpsSa7xDD1G/aSxZCalZMXa2S7C4kSA3PbEpGpSbtWnI0R4T1+VcQoJv8qfZbnI5TtDr7ILd4mN7vosTLNx9OAagV+RI5hlTtsgQA+IoaXdSQTPY5HmB/1ybyxZmswhOyYjf2ggfC7iSDEMAATivKGj40W7oJOam9TlgDepp7wQLAELG+Ldlxpyrm/B+UMW5BItLWeQ4cNYhMlxtGtQXD2Bu9fSMKj9fR3w8iW1eIBjck0Pu78/rv7GTry0ujKvQVSyJL3v8jihoRlzxbfii1SCc1nJZBsV3QzAyLHfp2ryeGzEXtaWZJTIrHhf+kqj3NaxILXa4vsay4efCu70mIAQ8o5xwdUZZ+uWXpY1uqiwSiLJp/zwd4sAxb293oNYywkmtrSBAClZOSGQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(376002)(396003)(136003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(66476007)(66946007)(86362001)(66556008)(316002)(6636002)(31696002)(38100700002)(110136005)(26005)(8936002)(36756003)(8676002)(2906002)(5660300002)(4326008)(83380400001)(966005)(6486002)(6512007)(82960400001)(53546011)(31686004)(6506007)(6666004)(478600001)(41300700001)(107886003)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDk3d2poSE1JWnJzSXo2OVFmcXZiY2lkRTZPSkI5eWo0dWY1clNZSGpiSEJo?=
 =?utf-8?B?UmNzQVlsejJYcmJIWGZsd1VEYjgvRUhYRFJnY09BVmpvT1IydEJkVzgvVFo0?=
 =?utf-8?B?blJkUWh3ZmtndXMweEVpbzYvNGxDaFVzN3V2WXVlOSt4N041N1RWTUJzVkpk?=
 =?utf-8?B?a3NnR0RHemlkdFEzUjhtQi9IMmsySm5aa2ErOUZMZUpLU2ZxbEFnamM3STdy?=
 =?utf-8?B?c2JCOVpGNENkdXRGSE9SZUtNZGI0N1pGeFNkeDFLN3Y5M2plUEZWT25EbUY3?=
 =?utf-8?B?RVJNYXhIQURmMjdFb2Z3ekVqS3VXVlAvV3JYdU0wdFpSc3Y1TkQyaVBlUHJT?=
 =?utf-8?B?ZHByODlZdzR6NGFEZmJYRWJoajBiTE1oN0RReVYwSUwxeWkwL1g4VllpMU1T?=
 =?utf-8?B?ZzFRaHdPZ2llUStSWFZFNFQwK0FyaWlBWjdnTXdOMGVRSDFPVDdHNUdmckg3?=
 =?utf-8?B?cXRwQ1BMZGZUeDhONExvREdkRUhhNVpZdHcwWG4vYy9HRy9nd244SytjU3Ew?=
 =?utf-8?B?d3ZCU2liMzU2ZFBlaXVDRVZwV1gzZzVzQlU3bHJaSHFBdlVTVlZsd0dWRFVG?=
 =?utf-8?B?RHcrWWNpbUQ3TnR6cnRnZGZWTXhlSVRHRG5RWXNtbzJ6UUZpUUJjUlBEMjVr?=
 =?utf-8?B?ZDJQd0Q0THZIUjd4dTRVakwxUVQrS3FwZkdaT28wKzNoQ1N2Z241ZVNES05m?=
 =?utf-8?B?OE5nT2ovcDd6TVJuZ0RrYkRhYVRrenE2Ulhma2h3aWhDUEl5MWNsTnFvdVZw?=
 =?utf-8?B?aVRJNDY5NUNKQ0VJanlXSXZ1dyttUkJtS3dEK3VKQmJqUEEwUTRQaHJ5WXN4?=
 =?utf-8?B?bjRNQVZIZTJCSlk5NklnZWhGQUVhdlFRaFRxclk5Tnpsb1FTVm9lZ3Yxc1JS?=
 =?utf-8?B?c2xYb0hTUnRoUzd1NEJFcFAzait0ZjNOUzlmcnBndm9HNzVWaHlBL1Z0WXdp?=
 =?utf-8?B?cGhJdFBRVGxJb0dLMlcyazJWUkpYOTlMbzM1MmZRbFFUaHlNSXN1QmYwS0Vy?=
 =?utf-8?B?NUNoeS9mcHhYb0JINHl6VmlGMjhwbUVLNnF3WlVRbDIrWUppaDlpdXY5bkZr?=
 =?utf-8?B?a0dvc0c3eFUzK3hId214SXJRcWFnODlWMXM4NEVuVDEzL2VKTGtiU0pjaXl4?=
 =?utf-8?B?Vlh4OEw4Ty82RHdsMExkR2R2VU1JODhVS09MVmZzVm5Nd0pxNjljMDBHeFZN?=
 =?utf-8?B?VTB5L292ZkJpNktEelA4ak9wVExFcm50R0FhdDFWVlArbEFYaThKS0R5VFF0?=
 =?utf-8?B?cU1OcHM2NnFYWSs0TkRoMGE2cVhMTXhEQmpPd21KZXpnTGtWR2NMR2d4SWFo?=
 =?utf-8?B?NzZPdFpkSThGTzdxZTJkS1E4N0dxdzdLbDVaSmR5amZDZzQzWEN0dlVFdFkv?=
 =?utf-8?B?eSt2NzAwMjhxaWl1Tit6YXVYUlRVejJ0SzRnTHVPWms1N2wwNnE3eHdaeXU5?=
 =?utf-8?B?Mi9qUGhMVDRBNk9xOU9iWHVROXRkcFpJV3haT0RqSzhLR2JDdHVjMnFQb0s2?=
 =?utf-8?B?dnhHSVliTXc1bVZUTk4wRGQ4bWowYVpIVWdNTmJkdFQvWk9xZTVzbnNualpm?=
 =?utf-8?B?QmM1K1p4bFY2M1M4c2NSS1BGS2dZMDl2RHNralJmbWdmaWluV1UycTZwaFlM?=
 =?utf-8?B?aVlpdlRkbWpTKzJHVUZtZ3F3OTFkeS91aUVvN3BRYXZ4UjlKTXhkMTZja08v?=
 =?utf-8?B?TlhQemt6b2krNWZGSDJBMTNGWGpBR1o1ZWRXQ1BiTHN6b05VTlRIdmE3N3c1?=
 =?utf-8?B?QTE3dWdFK0RSNmk0bDVnbXBSL093WXFhWVRTTVFRVDQwNVZ4SWtMUW1RVmgw?=
 =?utf-8?B?N2hjWjRLdy9nRnNjYnNJQjlaTG5mUGlKUk5Qdm5xYm9aWENCZHN4Y2NvVnFu?=
 =?utf-8?B?bWNjVm5xQTlWMCs3cXQrWVBha3BKVTNIUzlIbnpUeEFzRHVTRExDcWM4dUpu?=
 =?utf-8?B?N1AwZDlEYUxSVkprV05XVTdxOEpnNkp2Vi9BMEJyaEVOTEEzaUVnL0lmWDdR?=
 =?utf-8?B?WUlVa2h2QTBhNVR4THdGVnZMN1NabThTbFc1ZTZPTTVtbThwNXdCMzhObGxE?=
 =?utf-8?B?MVdySENjMmdJWmZCR2V2NmFzK1F5bDAxajdZc25adjA3a2FRWDROU3QvM2xB?=
 =?utf-8?B?eFRxNVF3TFNsU1lwZjl3T2swN1REcml4Z2J1bDJXeXZCcWx2YjVwTGROazFw?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94db0f3b-8452-4019-335e-08dbe76694f5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 12:13:17.8477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1pTJbR3vzZJ2PXKGIawgsJc1lRaXJgcPMKGDcUaXW4wpkz7uPyCznSiw8c14z32DJGh757yZRKMdL+5B9mjazFGFE9E1EuHljOacDkflcPk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5452
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700223202; x=1731759202;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=toUMlAMQNykdEPKIn025J5rX9hgu9VPBsdcmOvguXj4=;
 b=K+1r0rVTaWa17XHt9iYH379D8/dNZv0EX4KJowk0DwATBnOhIaX1kZit
 m2cvFyIORD1rbWWbZYZh0sC4xIOyVm9McaSeqkO0aVtF3tR3xiG7rBmkh
 OvlLOLi/hiTo3KGZY81AeEI1Gf//o7dysxwmfAorRecaGOJx7Zq7bAJTz
 xydR8BbHvZCv9oos0+35Y6e9fYWv4lGPNJysznf8kbLicWo8xS/e3LBJa
 PmOHQeo5xr6TM86i6lb4S589cbFyUZGySMdBceQ/F4dkjjkkewQawdsHE
 1rfAfoiKZud1eYCGBnnvG2W/3hShaIg4CapP8ZxWKQrKscuFjrlcSWvPs
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K+1r0rVT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Lots of rx_long_byte_count errors
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>, leszek.pepiak@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/16/23 19:43, Stephen Hemminger wrote:
> I am using builtin NIC on my little Brix box and surprised to see lots
> of byte count errors. Network seems a little sluggish at times.
> Do use locally NFS mounted NAS for storing things like kernel trees.
> 
> $ lspci | grep Ethernet
> 00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (13) I219-V (rev 20)
> ae:00.0 Ethernet controller: Intel Corporation Ethernet Controller I225-V (rev 01)
> 
> $ sudo ethtool -i enp174s0
> driver: igc
> version: 6.5.0-4-amd64
> firmware-version: 1045:740
> expansion-rom-version:
> bus-info: 0000:ae:00.0
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes
> 
> $ sudo ethtool -S enp174s0 | grep -v ': 0$'
> NIC statistics:
>       rx_packets: 729954
>       tx_packets: 222554
>       rx_bytes: 867670928

here

>       tx_bytes: 69174803
>       rx_broadcast: 5002
>       tx_broadcast: 37
>       rx_multicast: 11959
>       tx_multicast: 934
>       multicast: 11959
>       tx_tcp_seg_good: 1687
>       tx_flow_control_xon: 32
>       tx_flow_control_xoff: 31
>       rx_long_byte_count: 867670928

this value is the same as rx_bytes above

Looking at the code it also looks like it's just a long (perhaps opposed
to just int counter) rx bytes count. No mention on errors.

No idea how much value it brings, but that's it not an error.

>       tx_queue_0_packets: 22543
>       tx_queue_0_bytes: 2712687
>       tx_queue_1_packets: 4547
>       tx_queue_1_bytes: 1486617
>       tx_queue_2_packets: 103559
>       tx_queue_2_bytes: 36988065
>       tx_queue_3_packets: 14732
>       tx_queue_3_bytes: 13193520
>       rx_queue_0_packets: 112677
>       rx_queue_0_bytes: 152437202
>       rx_queue_1_packets: 91981
>       rx_queue_1_bytes: 130521460
>       rx_queue_2_packets: 231685
>       rx_queue_2_bytes: 250398158
>       rx_queue_3_packets: 11095
>       rx_queue_3_bytes: 10376491
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
