Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D01877E99
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 12:05:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 335B5607CE;
	Mon, 11 Mar 2024 11:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1g2jrh8AfDNW; Mon, 11 Mar 2024 11:05:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AC186079B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710155126;
	bh=+CHob0l7U1B3qcgGOAQ7kDdQ9PmisAfStScAt9ot40k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uQ09/Iiu5x0EvEozJEdDEHGbGJz7grU6iMhYyyQPDjE6uMCL4fIAHIJURhRb+dSIt
	 9h0hih6cTNOOv3zB32n9buUP6z5/xFUCozbgoC41O3i7Thw0ICjnFidDzT8xRDX2G+
	 d5C8C+lw/bVT7GRZq1JbBaXfzz00638wnhQ9v1k3VSTuOxgF4YasY0UYPItk693DJX
	 ZfYgXI/9Cu8e1NIG7z9xtTw5NhcLBpIJkFG/7t2YudyO6xo2W8wSzyQhuLwOgj1ctu
	 cHIpEYfxICgTCjlrEsw6UtkchLJZToMcn5jXHYwkcc0VKKh1azEOBfhTP4KqQpXXth
	 z6jAZqUV5Pb2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AC186079B;
	Mon, 11 Mar 2024 11:05:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C477E1BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 11:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF2B7605C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 11:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cjXfSPGA-JTp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 11:05:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2C2B0605A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C2B0605A3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C2B0605A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 11:05:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="8628890"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; 
   d="scan'208";a="8628890"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 04:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="15624582"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 04:05:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 04:05:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 04:05:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 04:05:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 04:05:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lE+jzaVOBlupPxYsYzq+4KjR/khmkpA/sOkSzOjekLEGfhe5KaCsp/ZuA6X1wNQ3e0Nyk8Xe/v9ROpnehrpQNALtpfRUxWWT0+jPYsDHsmpjgZFsFTML53dpE+mHMEIIPxk1cBubjwgO193aOh+2+sk9voYSH6X7atkaru1IKlifrOEZIQSSZbaCFOv+6n85YSiGw5rO+rdwFPx5wB/8fKjDg9KAsTwqewN7jJzXtQMx6HRSNwDp/B2SmGW3ORVIMqDAyvshHORl/RQjxnmAtu638Pt1cmWRzQMxfv1uC1nsuZoJzwT020NRy81lxoPWHXej2um5fB0YnmnuD+W93Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+CHob0l7U1B3qcgGOAQ7kDdQ9PmisAfStScAt9ot40k=;
 b=QOlmJKCW9KHVOjg2yvpE1l6czz0hgGJXtfva0ON2cqOV5X91osBCfbdgoBBVWFSrCxhhXfr4kPkqke/Te9Tz87qf7hvbJxWVxVmYo9+f6zgYK05ed8of8TDaaQOo1YjekYePMOLb5qqlzR0705bBRZNdgzL8d8XXz+jaGpx0TpeN3aaMCzqbmsqlgsDiWrN65iYAuhBEcXCskcB23OfGRFB6QInTiwfWuho+In1dLioeHpai6ldY92ZZkZ5uIzy2NxVwOcTiEPIGbwjlWG+XyyMJUpRIAGdHEsuLOLrozFDxwnwW/U4R0rzvkzS1J0wcqZJCMSujZhu3G4HVDw8qLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB8059.namprd11.prod.outlook.com (2603:10b6:510:24e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.15; Mon, 11 Mar
 2024 11:05:14 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.015; Mon, 11 Mar 2024
 11:05:14 +0000
Message-ID: <51b4201d-b7c5-4b1a-91a2-da9617fb9a2d@intel.com>
Date: Mon, 11 Mar 2024 12:05:08 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>
References: <20240307222510.53654-1-mschmidt@redhat.com>
 <20240307222510.53654-2-mschmidt@redhat.com>
 <c15b5a98-ce71-4ffb-a641-83f586b9970a@intel.com>
 <CADEbmW1YeugjaPOUKyVLw+vDh6ahK+XTJjY7RF9qN2r=B8XoMg@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <CADEbmW1YeugjaPOUKyVLw+vDh6ahK+XTJjY7RF9qN2r=B8XoMg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0171.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB8059:EE_
X-MS-Office365-Filtering-Correlation-Id: f736cf9a-074b-429b-14ad-08dc41bb208d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a/ZlysZfYs74c1uRZ4HEtI1Zvon1pTDnI8/aQSli6Dyw0dGFp2nlXMg4utyBV2tIOA63GGgqSED48jS0kEmNE5S35GNCu87K0k9MYYKepUtEE9bZYIsSmaIelOsw06Nf1/7ZeFmOa02JsENTh/Ehlsz1V8i3UEFDiYEyd/vzW9VQRFDd0KOM47sJKZg2IpuPC6DrqHIMYLr0rXzvOLn1scjhUvzI/NPwyaE6gMObu13QOAUwK7VmVTnOh+CFB/+aNQKxEZfrZt5hQcv/e7SDeLQhwrzBA6jy0DTStJfKmKk9pi1CjCPhN5qICm5vdC3zisP2VqbMQH0wOPJSTs/0QpdSCvjAWs3nd7uwXFh+bdEc1CSiS01qhzZcTSyKnH1wwfePYuBzpJkpbWluI41Q7GyutH9EldkafyUYlfW9lz0wFjAKzD/cTPv4PRyQHjB/1IVT3swfti8Wfeq/4FrQhon/ID/Zqe0+rPgzs8sTdXiB2MdVTLnpw9cwDW51BYsCJkf9hFBeaHdShfa19ZSgmxMU63pJpx6FlekomUQHJFOzAsInXzWlsdIW0c+26cm8jn86fcqXi+cFbrysVoU5P8R6gWgr+RF+90NEQzAa1pAvD8y+0OYWrsYaqqCI44b9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFVVMlNNeDN3WHI2SjIwaml6c21tRUtEMmoxYlVDNmNCWmx3alNVaUFiUThi?=
 =?utf-8?B?QTJTSnMvNXFGVitsNDhNY0IvZ1Z2ekNGWDR0QjhibWt5OGUza01uT2x2aWdR?=
 =?utf-8?B?dGo0SXkwbHd3THR2Wk9BMFAyV3p2U1VLajVYbDFRcC92M0NsRHRVZWtUS3Vt?=
 =?utf-8?B?a2ltZzQwc1VBWEpvWWtsOFh3S0FqYU5iV1ZOYmRSVHBZYkRIY0hnSnZGZEhk?=
 =?utf-8?B?aXpkUEFvSjQ0L3YvSXZvT01uY1VHTnI5MFB4QktiUU1PRklIaEJhNnlST0dE?=
 =?utf-8?B?bDRXSm9uWGdGT2ZyWWtiTW92OVEzemlxQWROcGxWY0dIK2tEWE9jUGZtaHpH?=
 =?utf-8?B?aUFvN1c3bzBWSkttL3Z3dXJzQjQyTmE3eXRzQzZnUVRyOG9ua1gvVUF1cWtQ?=
 =?utf-8?B?L2dySzdzOTdnUXdudG5qM3NoQjRhWHd5YWNjZ2wwSWJlVCtaNkMwVnBNZHhp?=
 =?utf-8?B?TkFYVVdxU0lySDMzNnRaaU5ETXBkcE82MUR1ZFFEUTR4R2JrNXRWTXVvcVRj?=
 =?utf-8?B?V0YwSkRpM2NkbEhZdHJKT1AwaTJLQngxTFJDSVYxOWx6SGl5R0JVN0VRaWVo?=
 =?utf-8?B?R1FUQS90SWl4ZU9kNWFacDBMc09YcG1WZk1lUFlubW5IaTMvNkpVSjVObTRz?=
 =?utf-8?B?d0FjelR2d0w3Rk4wWVBDVXZ1d2pIOFY2NXo1blAxZWxRNVJvdmpidTVIcWZv?=
 =?utf-8?B?aklaVWgrQklnV0FqelRBK3FuUkhMYWc0M3NYSjB1Yno4UGoyQkhuWFZOT3RH?=
 =?utf-8?B?clptNmFDYkpFTTI5bCs0eCs3YWppMFludmJHNmw3NXZiTXBBWGVGcmc0c3FO?=
 =?utf-8?B?QmV2d3dYT3N1Q3djV3p5K0RoUmR1RWhFaW1ZSE0wZmNuaTdaR1ZGalB4RVo5?=
 =?utf-8?B?VFFobWxOeXhXZ1YwREdVV1R6VEh0UnQ1dUc2RVMvK29XY2IzWHpLbDMyTWdB?=
 =?utf-8?B?S3ZmTWU2eGZpOW80a0ZiajVNQnFWcUY0cUF5MFppVk0yb3ZrcFltanRsU3o4?=
 =?utf-8?B?U0NuRjJwcDBoczYvZCtHL1YwelZuNGtzYUdISzIrRHNkTXJlZEV1SG5wNDJS?=
 =?utf-8?B?ayt0dWt4ZUwrS3FIQWw4OUV2OExpT3pJb0E1QVhqMWdzNG9qcWh5VGtiRXM0?=
 =?utf-8?B?NWNQb2k0TmhIY0IzTW5ZQ0t4elpSZXlYUDBPYzkrY3E0aU1kSG4wbFIwWDdZ?=
 =?utf-8?B?bEhxYVBDSEM4Nk9HVlNhTHUwVGxEd1pKV0VuaEFCZXViVnkyaWpGK2M0QW4x?=
 =?utf-8?B?MDhNbDNUb2JyL2ZTTlhndEpNVmRnU0NzWVhZRjk0MHIzOGRrMHZ2cXJxWGVH?=
 =?utf-8?B?bVRXOWtyVHF3YVArQ1B4c3FWdmgvK2M4N3VheEtkNUErSEEwS1p5Sk5KVHBP?=
 =?utf-8?B?VE5CQjY2RWlHUUwxTHB5UVNBZm9DRU5IRWJETk1iN1g5YXM4eVllb3pMMmFy?=
 =?utf-8?B?d0xxYUpMcmxWNmFFUmw5L0gzdHh5K0srTzZLa0ljZHJ0R0VEVFRhL3VoSGw4?=
 =?utf-8?B?QXIrVkJCcDFrQW9DSWJjcUliWU9NTmIxdURZVnJ2UHRTMCtvMFdCWFZnbzFS?=
 =?utf-8?B?SjY2c3RmUXJ3ZUgwUzVaaHVlYk5JMERnUHBtV1FJdEhOM1gxK1BCREs2Z0t6?=
 =?utf-8?B?U3l4Y1cwdi81YmttZmRDejFTK1ptUHplVWRjaERndXJTMnNQVk9WRGxiRzJo?=
 =?utf-8?B?Q3RXMTB3YWw2VU9RMmJRYVc2R3o2RXFXdFZycTVRMk9qUzU4WStIOVJYNStE?=
 =?utf-8?B?eGJhQk9pT0Qvdm04OEtyVjZHeUY3RFVTK1NNczFyWGR6R09tK0RPcUx6cGlO?=
 =?utf-8?B?Z1JCNm5zYmZaazM2R0U2eWpCU1I5clhZUmhhcWFhSVlHK0FuT0xieTAyV2E3?=
 =?utf-8?B?WVhwUVRmWVFOemhzTktFdXdOSWgyY3g0Z3V2aDk2S1gxUElFeU5xYldLS2Fn?=
 =?utf-8?B?Z3ZjcjdsRlR3TUJyeSs0MUpTZHVCOHZQQzJXekc2M2lvd3BLSVcvR3A3d1Vj?=
 =?utf-8?B?R1VrNWZxdlBUMTJHaFV2RGF4ZjRoanVUM0tXc0ZWL1V4YlFZSGZnK0RGbkJF?=
 =?utf-8?B?UHRweTh3U1gwWFZLaW5zc2JadmgzaC9QWlRnZHl0eHczVHQ5S2x5bk5GdW54?=
 =?utf-8?B?dG5XUnYvTnExRkpLdGdDK25wbjF5aVcvNFA1eFFMdGZqNUlVMUdqSVZGOVlE?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f736cf9a-074b-429b-14ad-08dc41bb208d
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 11:05:14.2394 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: egRtHlSXcna/VjosqqCaA7pEIvKsDIbJL3J8L3tJuf40WovEkGQQQO71i22HlXnpMYSw9eGseOJUq9BI/HgAYYfd7ukSGeDLEsbpexPqgnA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8059
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710155122; x=1741691122;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eCHayi0z5hvRL1MBlyBkvccM5V9pdoinJc2/PrGPC20=;
 b=JpYrWVNaQbWY/3Is0ZclZ4ZJ4xHJjACqik0Lf2PtqIXjM7NC0nzsULkh
 XkPB4T29e31/yVVkhrNuHjIgtxZ3fTD88Y9IBI1gTeldnV8Nj/pPI0Y5n
 djguCsvS0p0wlD/LJ9K5+fiy5c0KQSJeIhKaPfpef1f3a37F7D8FX0ba8
 pU9D/pkgypE8hOubtCX3Azr0Qelchl/yY4kO9vJ+4gkxi6Z44H2XyKG66
 abU0PKN1X5TnT4nRlX9ejQXGrd61fotEyu29HNK0puFlpWfyVL59wYqVJ
 AjF00OqCj4iIT6sdb5Ep5bv4GAgsnBs48LeTcmPyjdPk3gTUE+PEnFcbc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JpYrWVNa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: add ice_adapter
 for shared data across PFs on the same NIC
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/8/24 15:18, Michal Schmidt wrote:
> On Fri, Mar 8, 2024 at 1:17 PM Przemek Kitszel
> <przemyslaw.kitszel@intel.com> wrote:
>> On 3/7/24 23:25, Michal Schmidt wrote:
>>> There is a need for synchronization between ice PFs on the same physical
>>> adapter.
>>>
>>> Add a "struct ice_adapter" for holding data shared between PFs of the
>>> same multifunction PCI device. The struct is refcounted - each ice_pf
>>> holds a reference to it.
>>>
>>> Its first use will be for PTP. I expect it will be useful also to
>>> improve the ugliness that is ice_prot_id_tbl.
>>>
>>> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>>
>> Thank you very much for this series, we have spotted the need for
>> something like that very recently, I have already pinged our PTP folks
>> to take a look. (+CC Sergey)
>>
>> Why not wipe ice_ptp_lock() entirely?
>> (could be left for Intel folks though)
> 
> I am doing this too, just not yet in this series I posted, because I
> did not want to expand the scope of the series between reviews. See my
> gitlab branch I linked in the cover letter, specifically this patch:
> https://gitlab.com/mschmidt2/linux/-/commit/89a1bd2904ac8b0614bcfc2fce464bf5f60b0f0c
> 
>> please find the usual code related feedback inline
>> (again, I really appreciate and I am grateful for this series)
>>
>>> ---
>>>    drivers/net/ethernet/intel/ice/Makefile      |   3 +-
>>>    drivers/net/ethernet/intel/ice/ice.h         |   2 +
>>>    drivers/net/ethernet/intel/ice/ice_adapter.c | 107 +++++++++++++++++++
>>>    drivers/net/ethernet/intel/ice/ice_adapter.h |  22 ++++
>>>    drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
>>>    5 files changed, 141 insertions(+), 1 deletion(-)
>>>    create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
>>>    create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
>>> index cddd82d4ca0f..4fa09c321440 100644
>>> --- a/drivers/net/ethernet/intel/ice/Makefile
>>> +++ b/drivers/net/ethernet/intel/ice/Makefile
>>> @@ -36,7 +36,8 @@ ice-y := ice_main.o \
>>>         ice_repr.o     \
>>>         ice_tc_lib.o   \
>>>         ice_fwlog.o    \
>>> -      ice_debugfs.o
>>> +      ice_debugfs.o  \
>>> +      ice_adapter.o
>>>    ice-$(CONFIG_PCI_IOV) +=    \
>>>        ice_sriov.o             \
>>>        ice_virtchnl.o          \
>>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>>> index 365c03d1c462..1ffecbdd361a 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice.h
>>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>>> @@ -77,6 +77,7 @@
>>>    #include "ice_gnss.h"
>>>    #include "ice_irq.h"
>>>    #include "ice_dpll.h"
>>> +#include "ice_adapter.h"
>>>
>>>    #define ICE_BAR0            0
>>>    #define ICE_REQ_DESC_MULTIPLE       32
>>> @@ -544,6 +545,7 @@ struct ice_agg_node {
>>>
>>>    struct ice_pf {
>>>        struct pci_dev *pdev;
>>> +     struct ice_adapter *adapter;
>>>
>>>        struct devlink_region *nvm_region;
>>>        struct devlink_region *sram_region;
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>>> new file mode 100644
>>> index 000000000000..6b9eeba6edf7
>>> --- /dev/null
>>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>>> @@ -0,0 +1,107 @@
>>> +// SPDX-License-Identifier: GPL-2.0-only
>>> +// SPDX-FileCopyrightText: Copyright Red Hat
>>> +
>>> +#include <linux/cleanup.h>
>>> +#include <linux/mutex.h>
>>> +#include <linux/pci.h>
>>> +#include <linux/slab.h>
>>> +#include <linux/xarray.h>
>>> +#include "ice_adapter.h"
>>> +
>>> +static DEFINE_XARRAY(ice_adapters);
>>> +
>>> +static unsigned long ice_adapter_index(const struct pci_dev *pdev)
>>> +{
>>> +     unsigned int domain = pci_domain_nr(pdev->bus);
>>> +
>>> +     WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
>>> +     return ((unsigned long)domain << 13) |
>>> +            ((unsigned long)pdev->bus->number << 5) |
>>> +            PCI_SLOT(pdev->devfn);
>>
>> xarray is free to use non-0-based indices, so this whole function could
>> be simplified as:
>>
>> /* note the PCI_SLOT() call to clear function from devfn */
>> return PCI_DEVID(pci_domain_nr(pdev->bus), PCI_SLOT(pdev->devfn));
> 
> This is not equivalent. My function encodes three PCI numbers into the
> index: domain, bus, slot.
> Your version would have only: domain, slot. The bus number would be
> lost. And also, higher-than-16 bits of the domain would be lost
> unnecessarily.
> 
>>> +}
>>> +
>>> +static struct ice_adapter *ice_adapter_new(void)
>>> +{
>>> +     struct ice_adapter *adapter;
>>> +
>>> +     adapter = kzalloc(sizeof(*adapter), GFP_KERNEL);
>>> +     if (!adapter)
>>> +             return NULL;
>>> +
>>> +     refcount_set(&adapter->refcount, 1);
>>> +
>>> +     return adapter;
>>> +}
>>> +
>>> +static void ice_adapter_free(struct ice_adapter *adapter)
>>> +{
>>> +     kfree(adapter);
>>> +}
>>
>> I would say that this is too thin wrapper for "kernel interface" (memory
>> ptr) to warrant it, IOW just place kfree in place of ice_adapter_free,
>> that will also free us from the need to use DEFINE_FREE()
> 
> I am anticipating the need for struct members to destroy here. Eg. in
> order to replace ice_ptp_lock entirely, I will add a mutex, which will
> require mutex_destroy to be called in ice_adapter_free.
> 
>>
>>> +
>>> +DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_free(_T))
>>> +
>>> +/**
>>> + * ice_adapter_get - Get a shared ice_adapter structure.
>>> + * @pdev: Pointer to the pci_dev whose driver is getting the ice_adapter.
>>> + *
>>> + * Gets a pointer to a shared ice_adapter structure. Physical functions (PFs)
>>> + * of the same multi-function PCI device share one ice_adapter structure.
>>> + * The ice_adapter is reference-counted. The PF driver must use ice_adapter_put
>>> + * to release its reference.
>>> + *
>>> + * Context: Process, may sleep.
>>> + * Return:  Pointer to ice_adapter on success.
>>> + *          ERR_PTR() on error. -ENOMEM is the only possible error.
>>
>> that's inconvenient, to the point that it will be better to have a dummy
>> static entry used for this purpose, but I see that this is something
>> broader that this particular use case, so - feel free to ignore
> 
> Perhaps I don't get what you mean by a static entry. Maybe a static
> singleton instance of struct ice_adapter? I don't want that, because I
> can have multiple E810 NICs in the system and I don't want them to
> share anything unnecessarily.
> 
> Besides, this allocates only a small amount of memory and the
> allocation is GFP_KERNEL. It won't fail under any realistic scenario
> (afaik, the "too small to fail" rule still holds in the kernel). This
> is called only from ice_probe, which surely allocates much more
> memory. I am not calling this every time I need to access the
> ice_adapter. I'm keeping a pointer in ice_pf.
> 
>>> + */
>>> +struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>>> +{
>>> +     struct ice_adapter *ret, __free(ice_adapter_free) *adapter = NULL;
>>> +     unsigned long index = ice_adapter_index(pdev);
>>> +
>>> +     adapter = ice_adapter_new();
>>> +     if (!adapter)
>>> +             return ERR_PTR(-ENOMEM);
>>> +
>>> +     xa_lock(&ice_adapters);
>>> +     ret = __xa_cmpxchg(&ice_adapters, index, NULL, adapter, GFP_KERNEL);
>>> +     if (xa_is_err(ret)) {
>>> +             ret = ERR_PTR(xa_err(ret));
>>> +             goto unlock;
>>> +     }
>>> +     if (ret) {
>>> +             refcount_inc(&ret->refcount);
>>> +             goto unlock;
>>> +     }
>>> +     ret = no_free_ptr(adapter);
>>
>> nice solution, but this is an idiom that we want across the kernel
>> instead of opting out of auto management in such cases as this one?
>> (esp that you have open-coded locking anyway)
> 
> I will follow up by changing the xa_lock usage to a guard if my
> recently proposed patch ("xarray: add guard definitions for xa_lock")
> gets accepted:
> https://lore.kernel.org/lkml/20240228135352.14444-1-mschmidt@redhat.com/
> 
>> I would expect to have explicit two stores (first to ensure index is
>> present, second to overwrite entry if null) easier than cmpxchg
>> + unneeded allocation (that could cause whole function to fail!)
> 
> For reasons mentioned above, I am not worried about the allocation failing.
> I am afraid moving away from the cmpxchg approach would force me to either:
>   - Re-add the additional mutex I had in v1 of this series and that
> Jiri Pirko asked me to remove and rely on xa_lock; or
>   - Allocate ice_adapter under xa_lock, i.e. with GFP_ATOMIC. That
> would only make running into ENOMEM more likely.

good point, thank for explanation :)


[...]

