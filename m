Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC565E6FCA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 00:38:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5880660B1E;
	Thu, 22 Sep 2022 22:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5880660B1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663886310;
	bh=lqb6+2k9ma7wpoBqBkEbRCCnGtMdWEIoYVkFIKqJyAU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nyEukAhyCaOSkffojouBFs4E7JKYgIdecQ/UZb9uh9LT5TJLDGhjwcy9kB8ecof9H
	 MGD9bt0kQ55CUWaiTEJPh31yRQVk9ROpNitSMKI5bAWD1a4NCubpTXzkFrrReHwyCy
	 2nehiaLUeT1ZDHy7RZLw6USYikQYKNPoR/xh+SLjhooBZU4JZtBzR/G2XymNnRYbOu
	 cV9Ix0R1P+/qox2/nNymsEZeqW2LuF3eTHpZ5UvS0nY2eNEgXJ4kus7/T/oBVY6sEK
	 /+XoC/1Tz4/ESRelR1qF7UT5zna7GtC53S/3hTa4BYuuS8T/kQjrFTsRY3wrWcoBmr
	 QqbnmiAtY0Jzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id akttGr4HJHzc; Thu, 22 Sep 2022 22:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4083A605A9;
	Thu, 22 Sep 2022 22:38:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4083A605A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 300CD1BF954
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 22:38:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04E89827BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 22:38:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04E89827BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U8PSjOTivrar for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 22:38:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D29D827B5
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D29D827B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 22:38:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="298050668"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="298050668"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 15:38:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="619992849"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 22 Sep 2022 15:38:13 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 15:38:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 15:38:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 15:38:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDXcY1bzW6ecWPNp7aciaMXzpno6zg5GER1SzzJsefUDH7ojhuIcRgfNuSSV77QJvaeShJcIoSBqDKJ/uOHmlumW1w6Iof/9kSUvp/zCCz8OxrtIAkbYG9xoutdGiJGNYITDaB1ML/oD5FCaQhG1yZemCNNnWKI33ZDtIy2Kke5MHoaD04mBntKQR8MmQdJuk4Zy+W6tPfkTUu6meAvTIPSyz1WXu73vPqqwyWrcXS2QtQZTGg4zOMqqoFgcgnWqBVPvODqbwnIhVhzpM56dnp7fu+Z0FHMLoWlvjrrg9RlkDvaOaNcKy7L5PshJ2HO/aoJeDlRnBOCpUJ1MG7m2jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BPoWUSHj4AIDq1tUu0xkzAjxgsHrvyPrA5fE3TbwJzo=;
 b=VPGhZUDcVsZEzO+nCEhxzYDNdy4wtewn2rVZSQ9w58ymtElPNKQfyPsRmWe/BgaKuNO5d+TE+SZ906ISC8d3dx1m23g3cVpV67E6VxnmAEe3PH7+S0+JkYue2Hqrd/Emt/TT8be9+4q6ai1vaaKOlkzCmrWsbiTdu42EXtPKVOQ2LlwLAMLyAzt5cXB5sZU9ilidSjvJoXg1XUg6wAVQx3kxZ6qO1HOgwImSEZw4dlw238qg5QoiWiIpwguk9bvMFWx+3ctIdOzxlFg2CwgOasHLnaPaCbXYyQ8YNxe59XsBhH5hkGA8TokB4xPnLVLmBYHMzaYkq4lWntUaIbsPqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by DS0PR11MB7285.namprd11.prod.outlook.com (2603:10b6:8:13d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.18; Thu, 22 Sep
 2022 22:38:05 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101%6]) with mapi id 15.20.5654.018; Thu, 22 Sep 2022
 22:38:05 +0000
Message-ID: <22aa8568-7f6e-605e-7219-325795b218b7@intel.com>
Date: Thu, 22 Sep 2022 15:38:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <2254584.ElGaqSPkdT@opensuse>
 <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
 <2834855.e9J7NaK4W3@opensuse>
 <d4e33ca3-92e5-ba30-f103-09d028526ea2@intel.com>
 <CAKgT0Uf1o+i0qKf7J_xqC3SACRFhiYqyhBeQydgUafB5uFkAvg@mail.gmail.com>
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
In-Reply-To: <CAKgT0Uf1o+i0qKf7J_xqC3SACRFhiYqyhBeQydgUafB5uFkAvg@mail.gmail.com>
X-ClientProxiedBy: BYAPR06CA0055.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::32) To MW3PR11MB4764.namprd11.prod.outlook.com
 (2603:10b6:303:5a::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4764:EE_|DS0PR11MB7285:EE_
X-MS-Office365-Filtering-Correlation-Id: 68fcc9d9-68b5-4d9e-5cd5-08da9ceb1d6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 59ODaWABxNB2LoBnnJEmPmPiEGb9AEN6XFwxdkb69lwA4g7VUgJlJWQ3lvv6hgPEPMYQoT2U8Het9FMiH21YRt6a7iD0U+FEGFYeiBccIj0xrXvWS+b/eAkYWye2IeLRe96O5Wqdd6VmgrtnEeXVwAq57JhULwojpa3CNROk+TA6cj0PJ5sqMbG/8lW7a6Qcey7d5kOXlOpXkdhl52gYfNzs23Knf24HIH/SDvPCcti03NB3Wl4XEqNmwQyLc++xG1KrqteT8ESMSgKuQuSfgAkcs7Lw03JDdkx8vZ7AtLLkGUsmkMrb1du+e7nOCRMCyepPrpS0kzbI6YgguyLJm1i5O6ufn/4IDq2xWEozKgIPl2KQTiwCeY54srRpE5382vYJOmriqrNofPariHcHj1IJlvu0Fd9SI3RWmpSKBnBus2w0FHcv6XcHZf185HkZKCq+a+swbTq07Cxk+b/QpuGHBu8UjitwWowLupUr2qeyHLnPztyPTZRkMZdgK9efgYs/8g2xgkCe+NLk9KH1+4CoMq5Na0QkCGJSC8ppPBP5AjDiAHuYknz7UNHahKljbzYuKl/EjwRujNhZQqcYbMRsNR6wf0fEDdk3SqJLzB4hcuTEEvEMduSUXBO9M7VGmcn7O+ZpeCmOLfBX10uqzS+CpwhydWMR2ur4QpL4J3TA26lQOmjp5Uv9AxtmK4Sdy0fx+eYDuM6MDtjNiHD8rZqaW1AjnzyLNotHMWaX6fdwu2Yf+KgMZfEEXywuPFB9bYScdafFv98VkJ9uQC8bDXH4XcqglnWVOnnRvDOwAwkJcTRGqYzYu+PjjgcuKYfUdYAAiGKpde0rOyPiFxtInuXhTKnNv8B7WdBcAVHdJFTNfAuyjaaqhbQhE3xwac0L
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199015)(4326008)(66556008)(44832011)(36756003)(66476007)(31686004)(7416002)(2906002)(8936002)(5660300002)(6486002)(82960400001)(8676002)(26005)(66946007)(478600001)(966005)(53546011)(6916009)(41300700001)(6512007)(6506007)(107886003)(316002)(54906003)(6666004)(38100700002)(86362001)(31696002)(2616005)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVlqYW96cUE4U0tPR1Q3OStLK2pKb25DL1RlSFNPaG82aG5wanlPcEpoSERL?=
 =?utf-8?B?aG5OejV0WlpHWDZpNzJaemtuMkFOK2dNMU9mMFI5aFkzODJRcGgxMmx3N25S?=
 =?utf-8?B?bXNCdlpjU0NCNzRQTEJ3cTdZbElrQ1RwUHlLdXlTRlU4UlpSNkpwNk1XLzdI?=
 =?utf-8?B?NStUU2FsWEJwQ1d4ZzhMa293Mnh6bkwvTFZ4UzRIV3RDdDVweXdnMmdmZStS?=
 =?utf-8?B?V0tLYTZyYnI0Nml2dHVMWUR1cjgrQXBIbWQvUmxzalJhbll5Zk5WR1FOQ1JG?=
 =?utf-8?B?Z1BwT1d0TFVpWVRwZGlOaEhsUWNhcmhDSTVrMExVNHpTNmFTbnlUaUJyZEoy?=
 =?utf-8?B?ZXRLbi84UlNNTHg1ejRQNzRxY1RZTDNHL3ZGU21Xa1E0RnJ2Qkt5bU4rY0Nx?=
 =?utf-8?B?QVRQS3I3Z3htdmhNTTRsZFBPNUlvUmMzREIxcnlIM28wbXlOQTFKb1RCWnZL?=
 =?utf-8?B?SFhReFFwOXpPUkRybVZ0dm9BMzF1SFkvR25JcVlEQ2VrZU1HYzAvUHd1Vmhq?=
 =?utf-8?B?YnZMdDBLVUlKbHBOQVQ3WTY2dHdKZjFGTmJzSEdCOVBKK0E2MmZ3YThZSTFa?=
 =?utf-8?B?dkJuK1RPVGtHbUNabEJlUmppMk5SVDNVZWhsRlk4SklzbjRCekJqSzgvMTNZ?=
 =?utf-8?B?RTVXRzFrdkJCbjlUWXBXMmI5bUFIek5CQUswWDJ3WXpiNVlhdlFxcDIyalFU?=
 =?utf-8?B?QWNVcmw0S1dHRlo0OENJemJ2TkNIbWhCQWFXbkVEMm15d0dleE5oVEdBZWxP?=
 =?utf-8?B?RWVMblNIVUpLTGEwc05zeVp2UVZjb05uSFJrNlc2R3hoWks2SVFCMHBYTHVw?=
 =?utf-8?B?M2tESHZwUkhCanZQUWxUTk9mVzhaUEphMXd4bCtkZ0twVUhUTFhIMGQ1WnM2?=
 =?utf-8?B?VmpHQSs2S0lNM2xCalZ4ZFZPMHI5elVnNi82TE96VTM1U0IxY0p0UzQzellr?=
 =?utf-8?B?WUVuYnl5L1JRemVvd2JPdyt1OGxYYzFyY2xPRGI0ZGN3dnh4NzYwR3RKNmJJ?=
 =?utf-8?B?ZC83MWFSNUlyMkNFQzB1T2ZOWmp3WHFLZFlYd1k4U3NYZEt2Z3NLYnExUjRC?=
 =?utf-8?B?V0N4QnZKb1RLaXh1L3czRStmSGFneDJoUUJUV3c2Z2x3TlFWbGk2eFlWVjJs?=
 =?utf-8?B?ZUtsR2ZlalQzaUJDVnN2RW4wcnVkVGpyRGRuOG5GUnJQSGZ6ZnhmZWQ2YTFE?=
 =?utf-8?B?V3pyZU14Mlp6Z04wb05oZlNMdkN2ZFJHb3FUNjY2WGpjanZqY2gzLytudk1o?=
 =?utf-8?B?VFpXK3o5MElSWXJkbnN3MUN6VTk2cWczVnJhNnNzZk5SWFpHM3IramNQV0t5?=
 =?utf-8?B?aU4rbHljTVoweW5IVzM1NkVRZnAwdHpZbHdmc3ZoM1VobHBUVG42eWV0WnRG?=
 =?utf-8?B?QjYyNmtkb2JxNXFjUFhzUmZ6dHRpdUlDUmRhdFlnUC9rbjE3VXUwRExYSmRy?=
 =?utf-8?B?ZklTMDV2ZHNoL2tvUWNiRW9PWnVKY0R0V01rL3ZINy9TUGRVUFEvK3BVaXJ3?=
 =?utf-8?B?djZKWCtMalpoY05mdWpsa1AySEFHeXg5ZmpUd2NtQ2VRek15S3RKM2g3RFlB?=
 =?utf-8?B?bE5pUXdZblE1RXpoVVdHd0dMTDZ6aWpOOG8vOURqSU9xR2xRNHZSVUl6aW5S?=
 =?utf-8?B?eEFQdXdudWpWZUtIM3UvUnZtZzNGNTVYd0h4QlZQRWI0WkdyKzhHNS9ZcXZZ?=
 =?utf-8?B?MVo4ZlU2M0RmWE9KNFhuK1NiMGdjdG1BN3c1bXY0MTV1SW5oQmR3OFFKU2k1?=
 =?utf-8?B?RE1UZG8vSkdWSFBxZUxVU04rRVBDY290RzJtNS9vVWVwVG5rcE5ncUNhZmxZ?=
 =?utf-8?B?bm1ISXA0MjRyamgzQjZISDBudzRVcXErbmhmMEgvUC9abU1VdDlTdHJXRHFU?=
 =?utf-8?B?cG1uZVk5VFBWQW9qcFpRSEh4QStKbmV2SzBXWU5wNGdoc29mVzE1MXFna1d3?=
 =?utf-8?B?eDR5M3pGVG9wVGF2L3BBZUNnNlhVMkh4eGxpei80QW9xY1FRSEx5MWJVVUhl?=
 =?utf-8?B?Z0prbDFBaXU3MXRweGZheG9XTWdPNFpEb3dvbFlRTUlpamJYZFFVb1JsK0Rl?=
 =?utf-8?B?NWpSZWZLblkrLzhzajN3OWVwSURIckxVbnFXU2tQbVRxNUdIbEdZUUdoRWV6?=
 =?utf-8?B?WEFrREJyc3hWQWhxM3dYaGd3ZUNIUklORlViZDNVSU9DM3lQYi9yOHo5NFlY?=
 =?utf-8?Q?w3DgsNFE+XnVi7D2Gxn4HNk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68fcc9d9-68b5-4d9e-5cd5-08da9ceb1d6b
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 22:38:05.2731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VrT6KQdTN7MqZyoUwFrYFzPfVaNNQHjX0yXBjHIzX9yRUqImXnuTwcM0A3XGfVlImhByI3/SjFbvnVsoNfrhhaH2SSUoWWsxUfwlEiIRkvBhdxGH/qgEZ95Nxm5siZkc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7285
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663886302; x=1695422302;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FrRnIzigZsdP3WieJioeHsLQGwqQcypVWSPfJY45RDM=;
 b=bZcfSkak5KJUzruL1hV4rBnjHs4hTv9/Mzw0r7wLhkstoMRwlUysWiIE
 vv9Jxuno3z+QVdA9eim2GgcUBPpFwyX2eKc8jHf5UD4xn+KNA3Cpk2tGK
 wF2D4gaHBu23A/fsVR7zQWZB3O755Tt6RKDlUgl+PYYadt1inahdzJOEk
 cBiDZTGkvZD0bunHW7gnRBmxVFCnI5oqAmLrAT1mgoLttMYDRpNGDr8lX
 rnMajsDTTM6rrM+oCefAmzKOjBabVfGeyUcmESwhonlzBiW00MjaCZoOC
 uFG4M7nmYW80vmMMnRgLxiHSq/CLx6il7qhFKmyWKczO5YRYXoD0i2Low
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bZcfSkak
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Ira Weiny <ira.weiny@intel.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/22/2022 1:58 PM, Alexander Duyck wrote:
> On Thu, Sep 22, 2022 at 1:07 PM Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com> wrote:
>>
>>
>> Following Fabio's patches, I made similar changes for e1000/e1000e and
>> submitted them to IWL [1].
>>
>> Yesterday, Ira Weiny pointed me to some feedback from Dave Hansen on the
>> use of page_address() [2]. My understanding of this feedback is that
>> it's safer to use kmap_local_page() instead of page_address(), because
>> you don't always know how the underlying page was allocated.
>>
>> This approach (of using kmap_local_page() instead of page_address())
>> makes sense to me. Any reason not to go this way?
>>
>> [1]
>>
>> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-1-anirudh.venkataramanan@intel.com/
>>
>> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-2-anirudh.venkataramanan@intel.com/
>>
>> [2]
>> https://lore.kernel.org/lkml/5d667258-b58b-3d28-3609-e7914c99b31b@intel.com/
>>
>> Ani
> 
> For the two patches you referenced the driver is the one allocating
> the pages. So in such a case the page_address should be acceptable.
> Specifically we are falling into alloc_page(GFP_ATOMIC) which should
> fall into the first case that Dave Hansen called out.

Right. However, I did run into a case in the chelsio inline crypto 
driver where it seems like the pages are allocated outside the driver. 
In such cases, kmap_local_page() would be the right approach, as the 
driver can't make assumptions on how the page was allocated.

... and this makes me wonder why not just use kmap_local_page() even in 
cases where the page allocation was done in the driver. IMO, this is 
simpler because

a) you don't have to care how a page was allocated. kmap_local_page() 
will create a temporary mapping if required, if not it just becomes a 
wrapper to page_address().

b) should a future patch change the allocation to be from highmem, you 
don't have to change a bunch of page_address() calls to be 
kmap_local_page().

Is using page_address() directly beneficial in some way?

Ani

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
