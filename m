Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D72195F35AB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Oct 2022 20:32:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8841C831E3;
	Mon,  3 Oct 2022 18:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8841C831E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664821934;
	bh=du7rZCMlx7Sdl88kVO5nWLOZxqlg+4lHOcUUTIeEDW4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uGWEvLtpF72h340MPTrTBLOcbVRh0WR3jqAsmc4j/P5jFKdOzLUctkf95Qdp2Q+qJ
	 fWtK2HAtOK90QdOGTfReltnA0+fTGob0TS2N+fYy3/IOzCBLQnP3yBd/McLO0pFM4M
	 FOnwX2l0CGAzp7fUJmpbsyYSVn0INrzP25W/gQEW8dRkyJqCF2wVNaYMPyiYDa+Ai0
	 FRe6UdNzMjgy2HpSXKX0wCImz5GA0SOVvc3C2dGAtscFcKhpYFyLzFZYSLu1M4jJKq
	 kx8zR/ARS/63dw9SXt5Ml1DuxJWEm2VLXUX1dHFXbBB6xaypZkLnJsf8jH7cOCeuCu
	 /H/P3x54V5Ysg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Yzw6db1QKF3; Mon,  3 Oct 2022 18:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57B8B83104;
	Mon,  3 Oct 2022 18:32:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57B8B83104
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 915681BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 18:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AE8840A6E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 18:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AE8840A6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xw4-Rg1LjW1z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Oct 2022 18:32:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81E2D40A63
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81E2D40A63
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 18:32:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304260223"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="304260223"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 11:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="618831380"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="618831380"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 03 Oct 2022 11:03:55 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 11:03:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 11:03:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 11:03:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 11:03:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tg84Uquvkk8+J7ioiyK/1VaGum3dqlOfVp4KhTWvfPOwkpNFsgHNchBKGb1gEJabA+jHI05oxmZiFa3VkUt/rpXOzE4vdg3eq3IAQbxl0VlPQXkecI+o23Y/IP++844TyG5oss3NS5hzNMBZ37yS3SGtxbDn3fpvD3pSgQtMnt08su82HYpaPuhHLhtSs0Pfn62ycvQC6quSuY/b+la12drhTVP+nF0hRsVw6Vzkehx8b38rHNjMnAt6hAa43XkUkxhyNCVgMGjMBupv5E4ox0hlATQalwxFsND+XCx3II+5HxDFjj3AN/EXJdKT2jdeA2vBdlb2FAofcbQ0NVM/JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CQhr/pkpF0/G/LxzEs0thipmNpvNl8amc83WdgB0WdY=;
 b=WK1Pgu5moT2mLhs5iq5R6I0gAf9sVIjnPQZsHoYPBHNiDAr5JsF4ui+wfTdlM9ui0I2MvbPxUwf4qh1Oc8UVa3DLwVqnar40VooEbxC4HBc0AenpjH59VptAv+old/p9GXExxKo+0igM0ZQvFELWYp69mPv1L7Qsqi0NNLnLI8AYs9iIz3JqfOxRo9E8Yls0qBuedle9uT/PV/goLig3Q85vWG64NvZGvZsHoDqIFI8Wfe08R2X4BX0lpuk4PPrjx6FiADHeMcGIM/tmERuo1c5Yvh3frkLs+TNDL5fQoERl2+9xwmIHHv2G0llm6GBBuYEpKS2r9Ue2G/O1tHnM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB4695.namprd11.prod.outlook.com (2603:10b6:208:260::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Mon, 3 Oct
 2022 18:03:53 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c%7]) with mapi id 15.20.5676.023; Mon, 3 Oct 2022
 18:03:53 +0000
Message-ID: <7b4176bc-a5a8-467f-f2f2-a7defb37b89f@intel.com>
Date: Mon, 3 Oct 2022 11:03:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>
References: <20221003095519.539390-1-karol.kolacinski@intel.com>
 <20221003095519.539390-2-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221003095519.539390-2-karol.kolacinski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0047.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MN2PR11MB4695:EE_
X-MS-Office365-Filtering-Correlation-Id: 78576702-e32f-4d74-27aa-08daa569a19d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RAF5UfClbGbcM+kJamCDaRtqmqwGQXJkqvi1DmNRgbi5aDdACrlpsSYGiIOxWzhU1TULaw+2dxV1McKLfzJHlD/mE2xIshAAa7BcoDV1MYZ9+ue2iq+DGBnQnAwp/OO7Tbb5kGiPzdKHkKONoRBsPHt3uw0TYF1g7WtRj2EU1to4jTEwn/xyDbX79xHahfWIIzJYppUJV/StnGVeGf1lKOgp2tR4qVJKAl8SQj5dS1CioiNMvSCif+1YjZCaUsWxZzepFPoqBWPX2NCYC0AStQEz0zqbVguqh2ubTGhb5/DQvZAp+HYU7RgjjpeJ/c/1Ns5IFBy/bY5MhMCCVhaDf+yvr5efVYtUs4KHsaaUarr28U+1/lU4DbX2GDkaBEZNqXWKoGNuifxpN8Ok/atwVa7qlE6X6hajV4/5vFHmcLHu9y1fH9XLMGlHwb4edUTFrtA5bARUueGdqlNvDF/Tk25JieJEAa9jcn8lK1QQrauGiG8F0j3wr8jj2HuwGwuo+qsyhMAYpIGtD0HEQVpYhib2Y6FJNCqMCvIf109Lqe7ZwAI3aOjsiBgi0rvY/XJ0u/EvepV6Vot/30NsJ+q0KuACmkN65piiFfpwrQuZxmt0ytKajX/+wTzVRbWCTr0ATr4SAk/H08wJyoxZbH26aUJXwx6m3oqIdBQq20v8CmnwhZkPQT5PVD2cwVC5hdbYRlrx5zoecE4Ff5yEwlbvFXWDgKkvi0YOjxsc86r6jxC4cSExn8Rly5tz3eWSZWGERYER4UNYucj80xTwEzAipLJsOD8NW3n5hMKNvjRWbso=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(366004)(136003)(39860400002)(451199015)(6512007)(26005)(6506007)(53546011)(186003)(2616005)(6486002)(478600001)(6666004)(2906002)(5660300002)(36756003)(8676002)(6636002)(110136005)(316002)(8936002)(41300700001)(66476007)(66556008)(66946007)(38100700002)(82960400001)(31686004)(31696002)(86362001)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1lWUGYxQ3Jick5TODhLMC9SZ1JZZFFjOUp0c2pGRjZ1bVQwYitnUlVkeWpM?=
 =?utf-8?B?aXprRUo4VzZLOTdqQjE4RFJvTzZLb0JSZ2YweEZXeWxONHR2V1FsR1EzNTFt?=
 =?utf-8?B?MWs4TkFyandjdEppZFRUa2tCdGMvK2ZqbHNtVDZyTHNBR0JNelE0Rjhuc3dJ?=
 =?utf-8?B?K1VvbGM4R1JaRmVKZUsxYUlLN1lOYnM2dVRGYnBZYjNLb2huT0g4VEVtbEYw?=
 =?utf-8?B?b05BSGtoVkltdklkVTRGUWZDRmpiWWtyNVIvS2dTeUQyZjFiZ1pXWU80cW5Q?=
 =?utf-8?B?NlNxcGYwRHQwN1pSZmxSMXhVdEcwUTRISU1BNHhZbWlSazZRMWF1dEIybno5?=
 =?utf-8?B?ck50MkMvT2V1aEozV1d0VW1tOGlhR3prYmZVUWUrQ2dKMXBnUEg0RlBDSjNo?=
 =?utf-8?B?eFFvd3F3TDdya2IvTUNrMWR4ZHdidFVIb1lTUnNsM1RkWCs1MzRZMTdKTW0v?=
 =?utf-8?B?Y0VjMmV4dzg0cW52TDAzcnVZcUFWK0JYMWdUbURQTnVwUFB5R2lneFg2c3Bt?=
 =?utf-8?B?TzkxaEJ0bjNPM3FsTkFjUnhxWXREcGV1eEVIdkFReXlRQUMycUxCcnFFeU5M?=
 =?utf-8?B?ZlZVRVRlN2xKblQ3eW1sSmh3Y05CVnJzQURWdURFWUY3czZoc2YyRi92YlAw?=
 =?utf-8?B?aExJZW5VdjFOMzN5RU94OFZKL0d3QkdTZXBUSlhlUUpBU29tcWwrUzU5cjNS?=
 =?utf-8?B?Z2VaOFFkUWx1VGpsa2QzK20rZkFEV2QrbjNRa25kZmNrSFBKTDFaams5WVVH?=
 =?utf-8?B?UlYvcGhoNzRYTGkxTlFwVy80N05oR3U1ZkpQR0xUOC95MEpSbWtoSVdjVWlV?=
 =?utf-8?B?aE5sc0pMeUNPeHFsbWpqb0VIam8vekM4aUtLVDdrc3J1Z3duUnh1QU0zWWRN?=
 =?utf-8?B?S2pkWmxTc3Jabm5QUVZ5Q0JSNGVxTTAxc2pIQXpJb0hKMldNREtZOWd1WGla?=
 =?utf-8?B?NzhMN2czcUlQMkR4Wno0MHBkTDJnbks5RGg5aWRicU9OS3lxcXo4VXNCSlNP?=
 =?utf-8?B?bDA0UjhoYkhlaGJ1bkdoSFRFUis4Tk44d3hHMGs5NWQrejk4THFJQmMra0t0?=
 =?utf-8?B?RURXM0IvRDhqLzE3WDhRc2gvYzRvUzIreEF4OGU3SEtGVTJCOFRqNEZ3MGFF?=
 =?utf-8?B?L2NWYzBqZTNIRzFOV3JNcFR3aE1DMFVUeDZhaUYwVlFjeUcwS21ydVZvWHd3?=
 =?utf-8?B?T2VydGxJaXduMUwraThxY3BZaXplekRUU2hIRU1lYzVGcDhmZlBHRkVJWjJv?=
 =?utf-8?B?a2szNGZBaXErMGNLYkZ4SUhVU29PQ0g1RWVKVGRSSUxNbktIMER0NW8vb3E1?=
 =?utf-8?B?Z2RKVGxGbXpoKzVSUVZRUWlKNkhFUVd1YnIzMXlGK2I5OXA3Z2hZcnBOY1Az?=
 =?utf-8?B?SndzWTc0bnY4WDZlS3U4T2pHVCtlOTFqSTZLb1lobXN5dlU4QlFIb1o1TGlG?=
 =?utf-8?B?VHhBVmJJckk3TnVONUdIbHMyeWlzb1VDNldRaWdOalR3Uk9jY2oxaVhMTU95?=
 =?utf-8?B?N2IrQkcreWE2VDhaeUxPSld5RjhlVXA5VU1PdlRzeVlFYk03RHEvVTJ3ZTI2?=
 =?utf-8?B?S0RySXRJV1llNndJb0RXTlUyM1ZhV3ZiZXNhWDlseEVZQmJnS0ZiZk0yL3hQ?=
 =?utf-8?B?WTcxd2sxNlBLSUtFVWFlM3pTWUdoeXB3Wkpsdk1IZHJDdXI3ZC91TFNIRXFR?=
 =?utf-8?B?ZWY3M2lEdndmdDNQU1ByaERxVXV1M1loUmJETU8zUzI1K3BhR24vRWNZRThv?=
 =?utf-8?B?aDBuRlU3YU9VVW5jMk5UVndReTNydHBZWWpKOGlyYzRLUlkxckxlNldXTGdw?=
 =?utf-8?B?azRYaldnMWl2NHdTcW5GdHdpRTkyK2dyZzlKamM3Tk10dlVENlhPNmpRaUxn?=
 =?utf-8?B?V0h4SFBXd2MwVE12bVpMV0xlb3FxRFhtb2h3M2lTaFJ0em9zQ3FVNlhIMWVK?=
 =?utf-8?B?MnJTRUhJeVUrUitBVVFrNWtUN2xQZXhRSUtUUnZUbnJUNDFnUHZMUXhnb1hs?=
 =?utf-8?B?bFR3TE14aUorcVZMb3lqVUpSRUJRTWtoUjJEVlBQek5LMWVIWHBDWjR3Z0pF?=
 =?utf-8?B?WGU3cFVSaFRSRW0rR1BhcFJwUVpVQUN6VFNZcVNkczZReG1xZnNubDZKUUJS?=
 =?utf-8?B?T0VDbjlXL1NNU29hcXorRFFIQlFRTjdlUWc4R3IyVW92bW5GbHBHeHErNFNk?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78576702-e32f-4d74-27aa-08daa569a19d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 18:03:52.9332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AFz+P8liKrO4XBtPsasv19FYdH/EYUWHlKmddWPSPcedEoAYILWClDaYLFDhtnZ+99Wgmu1aqLp6gd5N6/iTF6XcZqgJcBG01ihmEU6ylsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4695
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664821927; x=1696357927;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bo6O3R0nKJ9rbPehNbmQlkUDNds7RAirZqvuCdV4gg8=;
 b=BLjMUiehamhGDBRwNNXpxQWK3o3KzLaSHcxFrJy96ScSeEjyJ/h86EUb
 rN6qyO33Fn+k2DNDumP3w79lzfkLE4586U9brKK+ZvvtMOJxBjpxhCBGq
 ZAKBCuazitVQ5c33Sh0RP+LfsV5T1Fo1wuqyVNH9742akAZOeaAlM2L3A
 L3o02HWCniYEkhyFYXS3MXnXlH0ef3lySFQRV+1Z7UZ+MkbMlThe38F1y
 L+Jj3PXxl5afrRiQDdIiMNkAHyR3ufhskLRW6cnJAw81u60voaZwsSevJ
 P1BUqkFsIjIBBC03Qp2y/8/Jdyem1aY9/PROfp/HmOUMP1fxcrpxw0BPJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BLjMUieh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
 semaphore
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

On 10/3/2022 2:55 AM, Karol Kolacinski wrote:
> Reading the time should not block other accesses to the PTP hardware.
> There isn't a significant risk of reading bad values while another
> thread is modifying the clock. Removing the hardware lock around the
> gettime allows multiple application threads to read the clock time with
> less contention.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---

Vinicius had a comment/concern on this. Adding him to this and bringing 
the comment over.

"
I think the problem is less about concurrent writes/reads than 
concurrent reads: the fact that the registers are latched when the 
"lower" register is read, makes me worried that there's a (very narrow) 
window during rollover in which the "losing" read (of multiple threads 
doing reads) can return a wrong value.

I could be missing something.
"

Thanks,
Tony

>   drivers/net/ethernet/intel/ice/ice_ptp.c | 31 +++---------------------
>   1 file changed, 3 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 9d1afeca9624..1f481d455134 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -979,26 +979,6 @@ static void ice_ptp_reset_cached_phctime(struct ice_pf *pf)
>   	ice_ptp_flush_tx_tracker(pf, &pf->ptp.port.tx);
>   }
>   
> -/**
> - * ice_ptp_read_time - Read the time from the device
> - * @pf: Board private structure
> - * @ts: timespec structure to hold the current time value
> - * @sts: Optional parameter for holding a pair of system timestamps from
> - *       the system clock. Will be ignored if NULL is given.
> - *
> - * This function reads the source clock registers and stores them in a timespec.
> - * However, since the registers are 64 bits of nanoseconds, we must convert the
> - * result to a timespec before we can return.
> - */
> -static void
> -ice_ptp_read_time(struct ice_pf *pf, struct timespec64 *ts,
> -		  struct ptp_system_timestamp *sts)
> -{
> -	u64 time_ns = ice_ptp_read_src_clk_reg(pf, sts);
> -
> -	*ts = ns_to_timespec64(time_ns);
> -}
> -
>   /**
>    * ice_ptp_write_init - Set PHC time to provided value
>    * @pf: Board private structure
> @@ -1835,15 +1815,10 @@ ice_ptp_gettimex64(struct ptp_clock_info *info, struct timespec64 *ts,
>   		   struct ptp_system_timestamp *sts)
>   {
>   	struct ice_pf *pf = ptp_info_to_pf(info);
> -	struct ice_hw *hw = &pf->hw;
> +	u64 time_ns;
>   
> -	if (!ice_ptp_lock(hw)) {
> -		dev_err(ice_pf_to_dev(pf), "PTP failed to get time\n");
> -		return -EBUSY;
> -	}
> -
> -	ice_ptp_read_time(pf, ts, sts);
> -	ice_ptp_unlock(hw);
> +	time_ns = ice_ptp_read_src_clk_reg(pf, sts);
> +	*ts = ns_to_timespec64(time_ns);
>   
>   	return 0;
>   }
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
