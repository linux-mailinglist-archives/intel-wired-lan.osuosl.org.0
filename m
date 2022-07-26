Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EDD581BB6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 23:40:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DE1840167;
	Tue, 26 Jul 2022 21:40:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DE1840167
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658871616;
	bh=+QfbBtYRTa85O3mOCmJcsKJA+zmDtJDqXrEicNJOrKI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fO0XiRJQtgcAtAH/nN2SacBLZuYT/u1LkcMrNg7eZNr+Y3En/GVl5RQSGDeXJ1l/J
	 TrBNS4g53yKYgS8BpsxbhkyjRMiEYBMkemACXBVDdHDsOmtUk1dVa+ggP9J2WNrw+V
	 MQ1BRYLrfG8KxE5sSY2F32GQBpGalT/EoYyl8L2/uxFPjVBCowSSFwOlSQOW3TlCfn
	 VJCX3EqqdUCvuP+prKPh5SlnCfwo3wjmg6WKrVXaBicEvaPybpYHBz2NkSb8+DbBr/
	 B83MEVAhY+s1BlHHTsu+BSfwZdZGbValiOXTU/Qm9r9AZyvfgH+rhOEzBsd0SguQ9Q
	 UN+djAaF8rCLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D67n7LRn2HNc; Tue, 26 Jul 2022 21:40:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AB93400E5;
	Tue, 26 Jul 2022 21:40:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AB93400E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 117F71BF59F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6F49607A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:40:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6F49607A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHJJ4RaFTkX8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 21:40:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7663460671
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7663460671
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:40:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="352062717"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="352062717"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 14:39:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="603904204"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jul 2022 14:39:14 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 14:39:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 14:39:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 14:39:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0VYF3ysZM0exz9+xhC1D+YfynV3AqPJ57zmcm0t/x+aju1sau7XnWhwsbEdogesCI0MKHvH7AgJtLygbfbuCRaqbu7b0Fsf6kN/ebCoMGtCjacRJSvWH4Euy2gqNyOA1UN68YZ6oQsIEA9rYcAyt/Xg1l3/0AD0in1sdVQywbYVIHfrLQQ90SGACV/UD2BJa1Ra6CvphtfB2jdfbOPuqIOAruudl1ij0ZSAdTJ87eC0XElhhVLjdqgQgof3GpN8LYw1b7SiTorhwtJx4dSYH1FPZvpAA0vMeVfA1DcFz+f+uxK9A3PCUP8oAfyewdTfuAAEKmKJNaDg3tXIbbbU8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRRd7t7zWS04fc7zBvfXZmoHPkA0KuohiZoNU+GD2C8=;
 b=RzOVV9nQp/SWABCa0uJ1sDC6+9EevBga/Z542XRaCEuE2LVH3zKdX0khf3RmY+qrV6AyPTbw5mAtT+yTHr0Wf8fcfP/X8sALPCL7eeQxrWPtdUdlz9PXUB16S8bzOSZEgQc2RAAmMgVu8YNwirWGi0B4Wv2K15FmyC1elcqAoxgJzRgt6PybQjhSPD1WXew759jfd8spqZloKHdYbCuOz8QRSiPGIlsV2vKTCo9+ZdjB8DFwK9wC3KmLAdHPV+Y+uImvN8IVJ1o9NJpmjzY7eAU9K+i7okcIuKOgl9pCeyPuWpgCgGIF7MrFqNCttm+f5oAgN3RKgT8/JgrazIg6Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR11MB1946.namprd11.prod.outlook.com (2603:10b6:3:10c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 21:39:07 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 21:39:07 +0000
Message-ID: <63bf55b9-9889-a947-d689-b7c61d55ff5a@intel.com>
Date: Tue, 26 Jul 2022 14:39:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220722153610.499172-1-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220722153610.499172-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: BY3PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:254::9) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3d2f020-227e-46ed-6296-08da6f4f4492
X-MS-TrafficTypeDiagnostic: DM5PR11MB1946:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u9uaJWBbBfrielCfeKzANxO3ArmIkcHehSBXx98dOUWfNCoRyUus47QmZZq3NvQpBL8ZDM1X+qmovq6dXL9q9vVVBe5RW1gMq+iBHSDTcXfRL6QEHw0Ypfi3ZgwyQJ8BVikisCDkQNHcAdB1eagvC5u4+hNJIvvBtZtGdvVPrUzarRGtgxOXx9zP5djcuiito65f5CagyBEAqn22vKh5kYvVHMq0KSbkeVxNgreBzmScvdfTpEnOk1mRQ91M9U1WW5yjHeZRXGDYbH+BD21UGbObqOnOfi2yYhw2InifIbxKpKCR7b6J+dEseJaqIGg4fTg2iTNL2Z9G3DNaWFeMwLhM/6q/G+ogM4A5I9lkslDhIdQbeM045g5dE9rQowBhCHzwI3nwan9jo04BO0a2/qg112xr9M2oUNXTMBh7iWC+QF1yypMDU0tJfivb+QZ3qVfrWv9oIw4hXYwKTNwzie8sHyiH365D2H8b7+SGXm3W+UjA/FM8BZdeLz9i313kdT8UjIvejaVur6UtnRCHTbHyys1vH8FK4wFDvH6omi3xoHMo6aVM8DJN/4mwJ47Mzj6ZeUWWr73nMOw62oUJ5MJ0UKdyK3Sr/VR8CsHhqrsygLJGySPTXk4pKflAbMPZYSrVGOAcEL5BEbcXmiOcRdQem1useQbzr5OuN5wS/v7HZ8rH2fKbN0zK2vofca7A3cmdkGvIQsFlp2a59Qz9YFzw5e08/4ZAWeCvj0aIK7Fvkky8jmLqDLAPKrtd/6GNoyi62li0p/uf89ebCyEM6LF2sIvRA7brUAT/S/JAimtN6ir8BmSUUoczHLLABPbx4byFAwKugkyFLvrzXUkr8A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(396003)(39860400002)(366004)(376002)(6486002)(8676002)(478600001)(38100700002)(66946007)(5660300002)(66476007)(26005)(8936002)(66556008)(83380400001)(6506007)(53546011)(6512007)(82960400001)(186003)(31696002)(36756003)(41300700001)(6666004)(2616005)(31686004)(2906002)(316002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWdPVVhMVzZRVHJCMWVDSlRXVFMzSWYrOVB3LzRoY0RuWGtzM3Y2RWNyOHJn?=
 =?utf-8?B?OXFZWmlyTFdpUHNNN3VNcTF4cUhTZDB0S05zd21xYUIvZTh3TWplMGdsTWE5?=
 =?utf-8?B?TDBEOGFqUm5JUEtOMjFEUHRCRjNYVjJQdksvcE13ZEVhVGo2Y2ZFbEMydVZ3?=
 =?utf-8?B?cUFDYW9LVnIxK3cwUFcyQlBRTDVVVGNickFQOHdDWEE4YVcvOXRPK3NHazhP?=
 =?utf-8?B?UmIvcGFaQ1FtVzFQdzQ2SFg3VHRpbUxsdEQ2VHRUazliZUhNdlhLTjFEWExG?=
 =?utf-8?B?VVZ4SlBxOWs4bmJaaC9mM1lmWkRrVSt4ZGVSSy8yV2VWN1pZMHZKcDd1NXI3?=
 =?utf-8?B?YjF6OGdqTjh6Q0FjWXpBSXBYbzAzQnNJTHdKRG56dFcwTFhsaGNCTDQ1RVdH?=
 =?utf-8?B?L2MxcW5uMXRGUlJ2RTQwYWdVZ0loOUhwZXkvRzhsN0wxSjFwTFJsU2NEb2Y5?=
 =?utf-8?B?VlF1dVNDLzFZaTFKZXF4bWZvLzhHS09lT3R3R2U4TUd6V2xpVHFjNnhvYjdv?=
 =?utf-8?B?ckxLS2JSVVdwcXpWcG84ZkkzUy9SLzlFYkk4QVMwOWRmY2UwelpMbUxDMlNp?=
 =?utf-8?B?UC9KVkxSc01WeC9weFFqWDFFOWE0VVM1bVVmQlNoanJneWJrdnNlWExFMnA0?=
 =?utf-8?B?cGtMNDVXM05sU3JGUDBic1Zwc1dGNW5NTHRqRWx4cFBoRUhpOTlyMFc5WDV1?=
 =?utf-8?B?aU5JR0R4eGRNbzI5ZlNJT2pMNHNBRHdKT1hVby8yajl4QXF6QmhOcUp5SHBt?=
 =?utf-8?B?NC9heHAxQ01xemtWaklNOEhFWUdRUys5UnZIY3RGZ2NBM04yMnVLOXVpWVNj?=
 =?utf-8?B?ZUo5YWw3M29oUnZZWjJ0MG1vNHVEZnhPd2t6WjNCTVA0NmpOOE1uRS91WmVD?=
 =?utf-8?B?azlsUXplU3JNbThsM2VpUXlxVUV2MEpXOFo0bHFSRDVkUkpPYzhtbm50RlJU?=
 =?utf-8?B?U2VvSC9UaDByMkhLZ09XaFRDUG9ESjNzSDA0SkxEQlJVcVZYSFlkSHcra1ZR?=
 =?utf-8?B?UzBSekNQRUFDdlpCUVZaMTZ2cWxGekg2UGJDanpzcFNqZ0I4c0dvekhheGZp?=
 =?utf-8?B?UTQ1U2kySlkwWVZvcUduMlpKOWZja2N3TG8rOEs3c2tBVE12WDBiTlVSMlRD?=
 =?utf-8?B?SjJFMUtjYVZqY0xNQVFaeFY3Szh2MGdFb1pxSVRLelRxRmVPd2JJU2Y4Zmds?=
 =?utf-8?B?M2ZHNWFTKzZWY2NPQ1pHcmJjK21KYXBpYURiQU9iWUNmaWVHVW5OQWwyeDVa?=
 =?utf-8?B?VVUyaDN6QW5KaHpOMTFySzR2TllzaHJUcEd4QkNqc3V2Qkg4cHBwNHhZQ1dL?=
 =?utf-8?B?L2Q3aHRnZ1IzaGY2ZlcxN3lyT245VXZ1R2ExUnhEK2hkaUhjNkRZSzlhbklD?=
 =?utf-8?B?NFFLK0FPb2FUaW5CWHorQkROS1Qya3hwNzRsMWlqZHJ0bDRYWjhDS1pqZjJ6?=
 =?utf-8?B?SUhCZlhsWnZpVTMxL2Q5MC91YUJnMUxDNXQ4KzBXY1BoaTVVRnJyVUhQWEln?=
 =?utf-8?B?ZUhINDNtbk8wV0U2V21Wa2laY1dUcnBTSVpVR0V0Z0ZxSmRBU1dGMmpoUUFX?=
 =?utf-8?B?QUVmTk5QZnhzcCsrY3FYYjVqRCtOU1Z4TFBxR2ZRdS9GcWhoY3RQUEFmRVJF?=
 =?utf-8?B?ckFkcGpuVDhJK3lVSzVuSkduVnpvTm03bG5ONTJpOVRLdFBwUy9JZTlsRERH?=
 =?utf-8?B?MFdxdm80N1NjVG96WFExV3Yvek5CN2JjL1A2Um5xSkNVQlpwL3c5ZEF1OXJs?=
 =?utf-8?B?amc0dTBFcTdaYUEzS3BYS00xNG9aUVNzdFEwVXNTUWJ4QTMzbHk0LzJ4Y3Ra?=
 =?utf-8?B?Ly80Q1BpUGxyMXhVYTFkei9EMzE5SS9EVVBmTmFiZDhHWUxiYVE5eVJJR3ZT?=
 =?utf-8?B?U2hRYXJVbnNkanFMMUFCeHlDanIrWFdXY1ZBMmJVbVhKWDlPVzl5Mm9Td1hp?=
 =?utf-8?B?TnFoTlpOdWk5RFVoRVRHb3ZuQU1iWlJDOGIxczgwUTlDR1dab3paQTdSMjJn?=
 =?utf-8?B?eHdJei9lVVZUdGlTWW9MTUV6amdLTTVYZnVocTVpVndxYnhMeTJnWExRYjRZ?=
 =?utf-8?B?OEZObzZBOWN5RWNGbFVqWUZYZjhRdDBUNEwrN09HZi8ya0cyZWNZODgvK0xD?=
 =?utf-8?B?Z25CM0x1TzVjVnpNcGZzRU5XaFlYa05ENmZhUUwwdlY0dnEvelR3NXU4MHA0?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3d2f020-227e-46ed-6296-08da6f4f4492
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 21:39:07.1296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2DwiT6mG/56uXUTOzrFMPc3tiddCK9iOz4SRjksUVjl70gTRQ5sKi3zv+kjX0d5wfXkaTic+PZG+OZ66vFDqX5LGALPqsTxqFXx0wxysHBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1946
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658871608; x=1690407608;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=w7v52DAm7KfPKkL414G9XSXY3TX42fKMg1hL+evLhu4=;
 b=OLKQhr9i6VJXFGuiGHQehI8A4D1E9vUswtzjrHj2O4jAi45vK3hBV99f
 OYW0pKn+ivqAKY3gRcCmQpNQBNHTgvWDJxVpizP6mSTDJOlDGWkqIuwFt
 3vwWiG0czja7YZLwfoyXClR/VvUSh+/S4g4BL2o2KsIGq66ri3c9pFpKD
 PE1dmepizsgMS4//Go5OK6d4MNPo6OYWl9lW571S5H3z1R7aZI3nSboJ+
 Mw6Qsg4YCvptb9xeMgZDc5ZO4icTE5erSMOMEY8ehwK57BjyC0p/lE9mj
 rlhuNe9fBIiqm9wZbeCfIPwINkZFOpKO1IA11fJ2gdUiu2WtJrg2k9mAC
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OLKQhr9i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add low latency Tx
 timestamp read
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



On 7/22/2022 8:36 AM, Karol Kolacinski wrote:
> E810 products can support low latency Tx timestamp register read.
> This requires usage of threaded IRQ instead of kthread to reduce the
> kthread start latency (spikes up to 20 ms).
> Add a check for the device capability and use the new method if
> supported.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---

<snip>

> @@ -3121,6 +3123,24 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>   	return ret;
>   }
>   
> +/**
> + * ice_misc_intr_thread_fn - misc interrupt thread function
> + * @irq: interrupt number
> + * @data: pointer to a q_vector
> + */
> +static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
> +{
> +	struct ice_pf *pf = (struct ice_pf *)data;

Cast shouldn't be needed.

> +	irqreturn_t ret = IRQ_HANDLED;
> +	bool irq_handled;
> +
> +	irq_handled = ice_ptp_process_ts(pf);
> +	if (!irq_handled)
> +		ret = IRQ_WAKE_THREAD;
> +
> +	return ret;
> +}
> +
>   /**
>    * ice_dis_ctrlq_interrupts - disable control queue interrupts
>    * @hw: pointer to HW structure

<snip>

> @@ -2171,16 +2170,17 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
>   }
>   
>   /**
> - * ice_ptp_process_ts - Spawn kthread work to handle timestamps
> + * ice_ptp_process_ts - Process the PTP Tx timestamps
>    * @pf: Board private structure
>    *
> - * Queue work required to process the PTP Tx timestamps outside of interrupt
> - * context.
> + * Returns true if timestamps are processed.
>    */
> -void ice_ptp_process_ts(struct ice_pf *pf)
> +bool ice_ptp_process_ts(struct ice_pf *pf)
>   {
>   	if (pf->ptp.port.tx.init)
> -		kthread_queue_work(pf->ptp.kworker, &pf->ptp.port.tx.work);
> +		return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
> +	else
> +		return false;

I believe preference is to remove the else and have an un-indented 
return false.

<snip>

> @@ -2587,38 +2588,113 @@ static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
>   }
>   
>   /**
> - * ice_read_phy_tstamp_e810 - Read a PHY timestamp out of the external PHY
> + * ice_read_phy_tstamp_ll_e810 - Read a PHY timestamp registers through the FW
> + * @hw: pointer to the HW struct
> + * @idx: the timestamp index to read
> + * @hi: 8 bit timestamp high value
> + * @lo: 32 bit timestamp low value
> + *
> + * Read a 8bit timestamp high value and 32 bit timestamp low value out of the
> + * timestamp block of the external PHY on the E810 device using the low latency
> + * timestamp read.
> + */
> +static int
> +ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
> +{
> +	u32 val;
> +	u8 i;
> +
> +	/* Write TS index to read to the PF register so the FW can read it */
> +	val = FIELD_PREP(TS_LL_READ_TS_IDX, idx) | TS_LL_READ_TS;
> +	wr32(hw, PF_SB_ATQBAL, val);
> +
> +	/* Read the register repeatedly until the FW provides us the TS */
> +	for (i = TS_LL_READ_RETRIES; i > 0; i--) {
> +		val = rd32(hw, PF_SB_ATQBAL);
> +
> +		/* When the bit is cleared, the TS is ready in the register */
> +		if (!(FIELD_GET(TS_LL_READ_TS, val))) {
> +			/* High 8 bit value of the TS is on the bits 16:23 */
> +			*hi = FIELD_GET(TS_LL_READ_TS_HIGH, val);
> +
> +			/* Read the low 32 bit value and set the TS valid bit */
> +			*lo = rd32(hw, PF_SB_ATQBAH) | TS_VALID;
> +			return 0;
> +		}
> +
> +		udelay(10);

CHECK: usleep_range is preferred over udelay; see 
Documentation/timers/timers-howto.rst

> +	}
> +
> +	/* FW failed to provide the TS in time */
> +	ice_debug(hw, ICE_DBG_PTP, "Failed to read PTP timestamp using low latency read\n");
> +	return -EINVAL;
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
