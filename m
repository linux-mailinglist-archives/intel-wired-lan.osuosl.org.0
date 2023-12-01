Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1888004C2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 08:34:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D184A6F5A1;
	Fri,  1 Dec 2023 07:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D184A6F5A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701416048;
	bh=uKksHcm1VpRizj65Ymjzn4W47/Nf2VNTcQMbXNQVIQM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aBIE6BFm9+yGM3U9TKKLKm7BE9V0qYwWCBJrJU20H75Fg38EwdXIUKeF48aRWQH2V
	 6iwQGV8tsvn/KKUdZUkPsdLBoXUYtXgOjxIzSS9oLvu0wkE6vA8DrnxM1cw3rhhTW7
	 w/tfU9GcIDATzD6sABSc1bEKDScUL3C2rtXs3nTp6Erpa/sjMSpVykobbijqFMCqOn
	 M1s/dS73H0HNe59wHMF5ajqPo7Wcsc7ZV25JHzlfLmrjzIoIkiQEExRSqvK6VtTbkH
	 9/2ds5vdVjdRnhcp+p3cAvmtVfM/qUCeHa+x1OVADs2YH5xsSr8qaKSTMwJ45tXXai
	 0g2A82UFNKcvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B2Lz4UAtGXbt; Fri,  1 Dec 2023 07:34:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 916286F69C;
	Fri,  1 Dec 2023 07:34:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 916286F69C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D16651BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A073F400F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A073F400F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id knzbWwiQIWde for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 07:33:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 460B3400BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:33:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 460B3400BF
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="390618297"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="390618297"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 23:33:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="893118396"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="893118396"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 23:33:48 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 23:33:47 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 23:33:47 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 23:33:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=giqU7OXiejBSk/AAU1GghHB9mF8V4MHHFM2OY3OpMzlQc6NTt0i2nMOPuO29L1wIACI7mGsXy/Kyp5aC+vE4mgGsbnHuOPvmuMjzvZGW9Zi3pfWye3L6mnRmEOXWtthhAPYev4Zviwvi7mgAWsnK+Qli9e0ep9756PMWKm5iNXnPUduO6EtPCmBcicpZDRUQxIi0BtJD/WTct63opxF60Gx884AlB9iGx6kX8JlHi6MOOaDWvyKjqCOpzMWqr92nN/TYE8X+/33WQYwHXDAsSZw0jBYu/9SsFI1Fw0Wj6UvEeZYfBj/oChVTTJxSTglH6NR/3+WrSXLXW0j3SMPuZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bDOrVWTAsqmyotv9onA3emfnrqE0rYssZ8H72I7RQgU=;
 b=Ol/WFmIdOJhWM854bVlVSk5P99L84oVP4/OHnmE49rEWmRwRP3RpvUz6+IatifYKv3NRvYXRLHw5zQ0a3l0OI9MeJtAj3NfyMmuX9RTum0XhcWZBBrazXd/8FMaRodbhxK7F015uVhXKEapgN7qb78B8oFOpv0EgAOq/Er+SwSoJOyaMMIRnOk6uZKolGKBjOqWpj4DvzcZIMRsDNCf84E0IrsbhVy0Wb6bWV+Qdh5yNwfCPIjCC42kC+MEZ+PSfdn54WmBuaN4xm9bBLYDSd8z3a9I6dBLKbfiUpD8WdSiC1Vj3m/aZ0jwxSuntX6EXHpHQP9qpGzPwqRTRUR+eRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DM4PR11MB6430.namprd11.prod.outlook.com (2603:10b6:8:b6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Fri, 1 Dec
 2023 07:33:46 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7046.024; Fri, 1 Dec 2023
 07:33:45 +0000
Message-ID: <f78a8937-0811-03e8-464d-47f404a3718b@intel.com>
Date: Fri, 1 Dec 2023 08:33:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Michal Schmidt <mschmidt@redhat.com>, <netdev@vger.kernel.org>
References: <20231130165806.135668-1-mschmidt@redhat.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231130165806.135668-1-mschmidt@redhat.com>
X-ClientProxiedBy: FR4P281CA0358.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f4::17) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DM4PR11MB6430:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b93fe68-d187-480f-fe7c-08dbf23fd94e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GglVBfFEIo72Wfd8QhDBzXgCGmiQS494f0m3gaPHE/4SZT5yY0izUBwLsUHe0IHkG8jUmwVG2BJ2lnSQoP05Sphdylxfh19J7lKrq6bU2771vcnZq/wZ73YZfWMBDiGx/eTEBqGP5pBkvoJiBXpu6zBcCvYq0hQygaTOJv84oJSd2tbbNS4CpY3vkciOQh6yRScaSUdNPLjnOzFIdnh0YyYjxkOn/QYbpkOq/CanSGCRhassJ1B5AVrZP5f6QZ5xSTXOkkieLv8NGanvbQtD+qSAh0WDITv3KaTaIeE3odNkAmeVX3wj5Sb3d4tyMfTNWXEiOJz0aAUajJ1q3/Ff3A1ulXAmXZhGSY4eDEoCJah40HggohPdz0MHqIWBR+v67z31intqnfKBmXHz0kTuW3XiiA5ul68zf/jkZZaJeymO5v44Vfk3lnsmBHr+2DDWYbyGCdY5TtoGlTTMk9U4Esw9XFBFIJuvywGjfKvaEwMg9bb/0KSmnYRlTM6I7wSmiIwemcAhGlEqC2RWtq5Mt2+GMOXwsHzL2fN1pHwtCqIlj+AotYTkb8TNIGhI93IRfV4Hv2MrQ2Li1BsKKU50ZhwRg6HjuYS52gBHHQloq2g8aNkZyOgDAlokMHhIsS5LuM8ZvI8FRqErFc8BpBuxow==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(39860400002)(136003)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(26005)(2616005)(478600001)(8676002)(6506007)(82960400001)(31696002)(8936002)(5660300002)(4326008)(6486002)(66556008)(316002)(54906003)(86362001)(66476007)(66946007)(83380400001)(38100700002)(36756003)(31686004)(53546011)(6512007)(6666004)(2906002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3ZrS3FGZW5xczBHZURnWWwyMUh4ek1TR3pxT3Z6aXFhbjNOUmZzOVRuWjRE?=
 =?utf-8?B?QmphNVB3VmpHZzBtaWM0L1cxejlteWtBYmRpWDNZVHc3SXBiV3BYY0Y2Ykls?=
 =?utf-8?B?S1hKOTJYdXl0YklIZ0xHbytuWjRUUm55ckxMTFp1SWNIY3BUZFYyTGZ6TEFj?=
 =?utf-8?B?a2hlbktzWGRCM2hiSDIvMER1c0VVTHZWSTBjZlpmV0taOUMvU3VpYUFPSHVi?=
 =?utf-8?B?Y2w5YTY2TG1oRXpUUFhpQng4bzcySS9Sd3FXUTEyL1N3a1RnUDZhME9pdVNL?=
 =?utf-8?B?R2FvK0ttbmQxa1dCZi9JVGs2WEpkYlZXc3ZkRUZselJDRTBIb0NqWGYwcmRM?=
 =?utf-8?B?UzhrQllsRWJJeXRudzFldDk5RElNeG5EZnYzczIrK0xzdmM5cGdxVElwbG9M?=
 =?utf-8?B?SzNiSnRuM2pZZjV4TXhkTHRNVHFtNFBVSW5SS3BRYzRtcytBeVczaytVaUg2?=
 =?utf-8?B?L01oMUZiQWlITlRNSnlIUzVhVUdRcXFRNzQ0aVM0NTRCLzZZZm9YM2JuOVN3?=
 =?utf-8?B?dWpGY0tLbWdDSE02cXlrclM3V2hZeUJaL2p6YjVWM3BLYzVxQVgyNTdnaG9h?=
 =?utf-8?B?c0QvUGY5NmVCWUxUMDFzRDJEK3B1eVRhL2xzMzByWUVPd2wrRkxueFl2bER6?=
 =?utf-8?B?VHd4RjNqMTB3bmovNW96eGlDNXBxckJtQlZnVkNGTHVHdDdMbG5UK1F0V0o4?=
 =?utf-8?B?aFhhMW5DZUkraThYVlF4SkZ4T09zaTNNWWpyYXZJTXo1UHRaYmlHQit5NVVH?=
 =?utf-8?B?aG1XQm5pVCtmc0NFSDVPQnRCOUp4ODhnZ294R3U4MUJ2Tktid3VMemtzaUZ1?=
 =?utf-8?B?OGVoaXRjanhxYThmbFRTZ01TTWVxa3V3NStUcXZCUjZvVmZxNmtUdzArZzBz?=
 =?utf-8?B?TE02ZSs0SW15Y1V0WWFFT2NsY25ld05JMTBXaWV5cG9rSHNiaG1ybWhQSjJK?=
 =?utf-8?B?VXRBRlBVa0xreVpsL0FhUS90L2tiSTIyK2d1YlhVQ1VBYnlkbHhlY3hia3lp?=
 =?utf-8?B?dk4yYTA2M3RrcjhaVnVBdUM0dG9xN0pJSjY1TWpnRVBDUCtSU3hmRmVuRTR5?=
 =?utf-8?B?MzM1U2RGaG12L2Y2UWZYR0VIZWRZQjMzdFRSc1JoZzZaVVlndVRCNmRWK3NE?=
 =?utf-8?B?VW9mMWZvREdsMTFRdU83MEhRZnArT0VCQU5rMmFlUDN2WFFlK1ZURVFVMlI2?=
 =?utf-8?B?Q3RhbnFJT216UFEydDdIWS96QlMraGlSVXhIbGFXWUcyNVBJbHduVlRQUVRN?=
 =?utf-8?B?UkIyZWNKSlJ5MlNFeDdIQ3BLMDR0YzlVUTk1b0xSanN5cUJ5Tjl3encxeUlZ?=
 =?utf-8?B?aUVCcmk1Mjg0NWM3ZXl6b2hGZlpMUThZSE1aaXFoSTlWYlFjNmd2M1RFMG9p?=
 =?utf-8?B?SG85eXFDL0RBZUsvMDBoNEJOTVhqWngrcDFhd2xlcTVFeGRweWJrZkNMMWF6?=
 =?utf-8?B?WFcvdktobmllWGNOTjhtVEZ1UGhjSXZNd21zSUNGb3VqWitubzlOVlBiWURZ?=
 =?utf-8?B?SHdjem9OMmpwYTVKZWptUk5tdGhLVHp0eDZTbmlyYjdqM0RIcitmcmVscEZ5?=
 =?utf-8?B?bmc4S2hCcUwwNndISzkvb3lGNHYxRmE4ZEkvZjY3Z1Bway94bFdFU0FXS2dz?=
 =?utf-8?B?UklVMW02SDFxd2tnOXlVc2srSnE4bS9QZVJCZXYrRTgvNkpWenF5eUVVdlRa?=
 =?utf-8?B?WXV5Q3dkSitOMCthSlFmNFdCN1laa2hHcnUvajN2NFVqRzJvcWRPQmNlWkNi?=
 =?utf-8?B?OEJjazFaQ3JEUjBFcEptR3dSc1N0TXZ1b2F5NlNsdjZ6R0luVFhEMjltU0Vl?=
 =?utf-8?B?Tzc2ZyswOU9GYUw2TmdjSzN1NWxBZXpCR3pqTlFUblErSmt2ckIwZmVHUXhh?=
 =?utf-8?B?eDRVOU4veWpVbmlGOEx0ZzZhdXRoSUpzNmhxYU8xRUJmcUhsdlJ2TnJhdkwv?=
 =?utf-8?B?bC9MMnp4M0NMZFMwZUJ3cFd2WmFNbWFNb1JRNTBaVU9INUYvUnFVUm9VVkhq?=
 =?utf-8?B?bndqVHg0QVVUczl4NlBSK1BPem43YlFGSjJoSXJtWko4RmRHdnZYTG1EWVRv?=
 =?utf-8?B?bnNyN0R3MmdvNVhzcnVVaUdNbXZWVVBwMDYrR3FucHhnTTlIZ0FtUkdaelpo?=
 =?utf-8?B?Sm12eFpXWHZRZVI0S1doYnhjenU1czFrWjl2cmIrMWRGNGVkUVJCcjdZQW5C?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b93fe68-d187-480f-fe7c-08dbf23fd94e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 07:33:44.7217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YV+TovMaMJj/uIx4AsJGkJz6UjwZRKkwOPFSHPj5P06TWW22dOK+1N+X6nG8KRGU+/5+EfrTi99SbtmEv036caGRa++MibTupgUKyg+Ine0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6430
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701416031; x=1732952031;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MBqswBM/jeKSbkliBgNnESrheB4f4qUWeSM3OJtnGPY=;
 b=jdG4GQyPcm9kjX4zMAwS6Y06Z616YsQMQGA/9dSs4fzQlcJjpjoPUlDk
 zOZUDyydGB7WBQrqksIbmiZ/nutYdiDv1xTPVjD6SOdt9Fn0newWQspsC
 eWMlcZ7EK5Vwe1xeBR/oT0mTxdIXf7zAT8TEaAFVqlSlR0wvQSki2l8nW
 B+YPhL5hOMlwXtl0dnVTTkat1ZKddyKEw5t2ieZ8Xc09chZW318Bhg6Bd
 qnG/PV9LNuQuzNbzriAgGwQOpQObJJDfAAuHdoLVwIPUAVGviwQTk35Gq
 9zaJ+Vh3PGMSq/XkaroKNkA+62+ZJohmjI6EKlFmfMZ/m+KyVGTflxwt0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jdG4GQyP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix theoretical
 out-of-bounds access in ethtool link modes
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Paul
 Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/30/23 17:58, Michal Schmidt wrote:
> To map phy types reported by the hardware to ethtool link mode bits,
> ice uses two lookup tables (phy_type_low_lkup, phy_type_high_lkup).
> The "low" table has 64 elements to cover every possible bit the hardware
> may report, but the "high" table has only 13. If the hardware reports a
> higher bit in phy_types_high, the driver would access memory beyond the
> lookup table's end.
> 
> Instead of iterating through all 64 bits of phy_types_{low,high}, use
> the sizes of the respective lookup tables.
> 
> Fixes: 9136e1f1e5c3 ("ice: refactor PHY type to ethtool link mode")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index a34083567e6f..bde9bc74f928 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -1850,14 +1850,14 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
>   	linkmode_zero(ks->link_modes.supported);
>   	linkmode_zero(ks->link_modes.advertising);
>   
> -	for (i = 0; i < BITS_PER_TYPE(u64); i++) {
> +	for (i = 0; i < ARRAY_SIZE(phy_type_low_lkup); i++) {
>   		if (phy_types_low & BIT_ULL(i))
>   			ice_linkmode_set_bit(&phy_type_low_lkup[i], ks,
>   					     req_speeds, advert_phy_type_lo,
>   					     i);
>   	}
>   
> -	for (i = 0; i < BITS_PER_TYPE(u64); i++) {
> +	for (i = 0; i < ARRAY_SIZE(phy_type_high_lkup); i++) {
>   		if (phy_types_high & BIT_ULL(i))
>   			ice_linkmode_set_bit(&phy_type_high_lkup[i], ks,
>   					     req_speeds, advert_phy_type_hi,

I guess that that "HW reported" number really goes through the FW in
some way, so one could indeed spoil that in some way,
what makes sense to target it at -net.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
