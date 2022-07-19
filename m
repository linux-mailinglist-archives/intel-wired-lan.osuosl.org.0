Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E84E57A996
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 00:02:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AC488305C;
	Tue, 19 Jul 2022 22:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AC488305C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658268127;
	bh=I5ahfyM5wgpU1zVBZcXd003YjLbXNkkLYVOXMDX/wSQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k4xyYvCorCiyvPNZzO3GvUuLO8dyCvrtKBOtv40mi0Fq+fMlr8UjuuFV1z8mP+svO
	 GkmnValMLUyl49CwNxnpSGIUrSwX0aeelvCVHW+/0Ev52DQ9C+5Tn4xGlKP5pfEtoM
	 P4QmPT1Gv6bRRRN8w1yaRG7MdyeZS9RoQdf4FpBtFCcg10tc+bAMFBhiV0T+VStJq6
	 HmnOXSDcxT4MIq1LwVgoCd3DpVFxxCtJ8S0yxDvO2Td6xNjaot/O4k1ZhEdOevgXEU
	 3KthsMrEGYr4hxAZsIj2ZfcbPVO/Vwlk8jSizviYulBzuTVfU9b9passVQlnv9WjZJ
	 yrfLrErXAKrIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTIXS2yUJ1gn; Tue, 19 Jul 2022 22:02:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7219B82FA2;
	Tue, 19 Jul 2022 22:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7219B82FA2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B93EA1BF37C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 22:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 911FE40129
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 22:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 911FE40129
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yXkuW8DavuEX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 22:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCCA8400BB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCCA8400BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 22:02:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="372920379"
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="372920379"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 15:02:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="724423404"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2022 15:01:59 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 15:01:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 15:01:59 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 15:01:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c4R+/hr+yf8Mrkheu1O1HJo0Q2AZXU4FOlWq4O1bceIlcTgtR4SlwjzBCCBUwk2q1FH3WL3miCPoki0h1iRxdQZ1ir3cUffs5z62J60p3CI2nMjnUJIvJw/oLW+40QEFgZbMujh3ond555vfaNIUj25muIGy2aq8nO4WQeEZwEoaIXLKmnFFWwH4dobxEyC/Jcvrng0skPQmv74K3yuaTujS1ENMf/MRmxTDSjS4hEnDb16vUQtNS/QB7xAkBUWU8HrW8ARNmb44ElvJDKpkGADnOly5fUoELIrmartTpaqwHumlSiwpj6E2hLkP9f6e0JkUjWJH0d4ZxEgG5oeGtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gPR1gv8V+Fbmv5NzYG3+beb0UI3QbVv1OApsvLb8MEU=;
 b=NaexLzP6H3eU43FJDcQ9ctAvSzB+88SN5yZ2l4qgfezuGBXkZl2KdLBxwzSdgilVWuKAb12atPmnUlfDuD739yZ0OJxi7een7r2qQ5vJjB4Vf6o/wDuBXvhM5FmVisrgXdQXoul1EO2PA/s8/idCAQx09gYhZRTwgMnPKCPAxO56pFG/Z5UAcFEUPXtGXanbkCUHa22RDdcxCfct8u6TZdzkVFlcxl4/bUfHLhbPmQYbm11x5xIAcOL9IUun59n/5XjcIAk1rM1vOOw7SRfxrmecsqgO6gvrOcCjuShs+m+V9/QU8t/3TARK4sL/Z6dTvsCNWOZ23ARj3JDyYN1ikQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN6PR11MB0004.namprd11.prod.outlook.com (2603:10b6:405:68::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.21; Tue, 19 Jul
 2022 22:01:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 22:01:57 +0000
Message-ID: <b70e38c0-236d-6c40-eeea-83314b87e7ce@intel.com>
Date: Tue, 19 Jul 2022 15:01:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220718164244.261979-1-jedrzej.jagielski@intel.com>
 <20220718164244.261979-2-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220718164244.261979-2-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0045.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::20) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ad6ca571-0444-4d34-ea04-08da69d24c55
X-MS-TrafficTypeDiagnostic: BN6PR11MB0004:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HUn233n5GAKQoEOhnmacTQ/Hg+ZlbDGrfb5NQ4qSznnvX6FLkucV4So6/tBiDdGx32xn8Ma6vIWsojmGxkse3Eu+J01uoD1nV5nEWprl4AHMflCOvLIJ0KAtjccNsS0dRDvR6n+K+wCtAh5S/P+KhGqsfzLTkXm726gtbaOoGpp4Hll7RkIeWsQfcYnvkXPgxXzXlKtE1iif5E5NEUw+i12zonUlQqIlzfAIY3m6bzfHk4LXttvgPVYt9aFDXMHsIJZ8A6FPKE54vqvN5wS/dQDMpHVErZ7PXHUoxJ+QJay2N9Olh47WG2Yd25ot9OucKpSqtRmqWJlQ0mp9lfj4VctHiDhfSZOmAmLaUpdy8AsNnvYYWopJAlLFXSOjYKqIPF/newJUYdzd0CoSUERgP9x/Q2sx9029pn7K8+ABWovwf1116GhEdZ9b9X1D2QF4TYzEKve4zTwjM6edb/iG/NJQXpeBOZoKWn8SymIwot25nA2MgiGdJhl1aHFMot7nmokyAYJOVg5x/N9WmtgR9qxFIi2LIXT4oRQoIx4NjKMZ2dNi0zbSlGyiFtStAhZssjjVH32aS6XuTz4NIH/RPuflMYmnRLkzud6fAbiG46btqh7SKKim4w2dlKmonHeedznyjlfx17WAXO0RJ0VlUM46VsVLs32EHLpFswVOxLqliXhubnQtkZemR2FND/f80jprgVv4lxaVXxtPIj4Nn4bG53MtiNo+3kl/1r3LVu+q1GdNfleIut+I4dczqhj0C0AdMzCjTrj+JApz2/CW/v6V3gWm/nxAcKqF1Eagyuqsk08nhC9KrytK2O0NiMq/Y4TvpbHSD0XhD+UX/l+IN0dRiKKJWOI1w1bp4nZTrm5AwjwMmmt71Y2KPSHwjt9f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(346002)(376002)(136003)(396003)(8676002)(478600001)(26005)(2616005)(6512007)(316002)(36756003)(6506007)(8936002)(6486002)(5660300002)(53546011)(186003)(107886003)(31686004)(41300700001)(31696002)(86362001)(83380400001)(6666004)(38100700002)(2906002)(82960400001)(66476007)(4326008)(66556008)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUlDOHZ2L2cwZTFnTkhVdDZwcmJHVkc5aUw1SnRnQVF4NTZhN3gwelozQzJN?=
 =?utf-8?B?NFJleVZjNzhrTElBT3pSMkFTQnN2VUllbGxNSGhEMSs3b1VHa1d1bDl0K2Jw?=
 =?utf-8?B?NHNyWE1Sb0tyb0FVa3hseE5jSVBZK0E1MjBoci9ZbTZLM3B6YmRVKzE1c3Zw?=
 =?utf-8?B?Sm5ZUnVodWMvd2RJbDlIYUkvcVRNUWUzMnFkT1dxbERtbW5BMXhyRGhuQmc0?=
 =?utf-8?B?Yy9uVDYvTXVrVVhVTG81MFJPMWQ5YmNaUGpvV3RtbUg3eFJnN0dadGh5VjlQ?=
 =?utf-8?B?VmxPQjROb1NUSHlkZ2hVUDhtdmNMN1JsU1dxRXgyNXRXREwrMjJXNjN0NXl1?=
 =?utf-8?B?TzBmc3ZxbUFrRjVCNGJHVUdHVVdWeEFTQ0RRV0pPQUhzMFBsdmxhWERDdnhE?=
 =?utf-8?B?bWhPeEdvMzVDdVVNaVNZWk04NnNVclpzUHJjc0oxR3FUMU1CV2lHVTVoTmFX?=
 =?utf-8?B?bk1MbFNiOTZaTmZHSEM4bU9udmU2SkdEVy96ekU3M2ZuTU83RFJxc2x3TnUx?=
 =?utf-8?B?M3phcEZVWHVnZThETTZZdlN2SjMvRlVHR3h1d0JGVDg2aXZVQ3Jhc0NiQVhZ?=
 =?utf-8?B?Tnh5elExeGQ4eExZcS84eC9wdk9Qb0dUcEZHamFOL2YrTDZEWUFRREJCRnM2?=
 =?utf-8?B?VStOVVFPV1RxWFIrdlJvMnhFNXNTN3NzLzYyUXdUTkhpbVhHYWJWYjJ4WkdW?=
 =?utf-8?B?aXg0VWRYS25tQXNaUE50bEZwNmczejlSS0NEYXJyWkpTQkYvR2tOa0xjYkZS?=
 =?utf-8?B?WDl4ejRlZTE2SGZtNVFmSlh0c0RoOU95RngvMEhENWppNldhU2NpTlNPNFUv?=
 =?utf-8?B?czNvZ2JBV3hlVFhRNGMrbGx1UTlzaHN1QUEwMDRMRm5rNG9BeDNVdTM5dytu?=
 =?utf-8?B?djVjZndIZGQ3Sk1YdHhPczdaN05jcjV3WGxsalZTZ2FOM3FuaFJzYlU1TWRa?=
 =?utf-8?B?L1BQVWdYQmNjbHpsclBGeWRtMGdjMWFwbEYrMWo3UlpYL3QvQXJhRUd0c2hq?=
 =?utf-8?B?Z0Z1MWN4TTBhL2l6b0F5VWVxT1BxdXdycE9PWjRFSWxRMmRWbzhJcTE3TXpt?=
 =?utf-8?B?SkFBbnp4bkdnVkNYNlVzZlEzZ3cybnJQQmdhaHh1ZDV1b3VlMHMwdWp3ZnhU?=
 =?utf-8?B?NDF3KzlCeUtaUVhZNzA2NnNsTnBOcldWT1V3T2hja0tsVjJQZGg3UVdqck5F?=
 =?utf-8?B?SmIwOGhQak9LbjZUc05vMGVYQThsL29uV2FnZTEvd2VDby9VY2xNTERZTS9n?=
 =?utf-8?B?NnFTVjIvZmp3TDhZTHBwc1NRamJ0aDRYMXY1aS9vWGoxamI1UlJpNzE1ejBq?=
 =?utf-8?B?Q0Y3QTFEQ2Fmdk9jUXYwNDJsWEtZNGVrclZIVTZiVVpZalNwOVRsRExjMFJT?=
 =?utf-8?B?bzZJN1hJeU5aQXZscWc4TGdSU2loNVRtSjNlNDVMUXJZTG9uWGZDSWx4bXNl?=
 =?utf-8?B?S0dyZmNkUUwvcVpwaU42RlF1amFLSG9TU0JZUTFjcFp6enRXYjBaMkNQdEsv?=
 =?utf-8?B?NkIxZ2xjcTBxVVlDMmJPZFA4eXo1REtEWTZxaWhBeGpPejErdCtoVDJjL0Vq?=
 =?utf-8?B?bkF5N1ZkYTNXc0tvT1JrMFpxVUc2OFcvbG9GVW9jSmtlRkduNzBPVzRwQURm?=
 =?utf-8?B?Z09FRSt0TmVsWTEvVlRZSFZWVUVlNmcxN2YwNXpkMFFoa1Y0M2VKUXV3TmNt?=
 =?utf-8?B?dmd2dnZsem1wZVVwTitMWEFrZkx4K2d5ajk3TGpzNEo1ZmFiQ1pPNTlpU0ZW?=
 =?utf-8?B?S3M1citNTGNqT3ZsTnVBM2o2Wmw2WU9LSVM1cGM2d2poSEhPY0RKOU1WNGVT?=
 =?utf-8?B?bERNMzIwUG5ESVhSdk5rMVNHVmpKZW9rWmE1SEJ4V1YyOVlVanhqbXk5dTB6?=
 =?utf-8?B?VjlPZEk5eGVWZUhVNVZkZXptYnpVY1ZFKzlHbXhlTEdHR0VqZ3BmVEk2bjhK?=
 =?utf-8?B?Q1Fma2pESjVFY2dnNE1oODA5VGN6UGUzTFdSUms0L0wzQzhpMnpvYmYrd2tB?=
 =?utf-8?B?WENoRnJVcm51cjFON0JQbGJlelRNYVI5LzhDc3BqTGZERzVkZldOeXc1T1Fh?=
 =?utf-8?B?bkpDR1RwU0o1enFUSndhK3FrdE9vdE5zbmN4RFVoaEdBZEhPTlFWZ3pYK0xs?=
 =?utf-8?B?TzB1M1VobmdobUtjVU5ocG9jL2pmbHNndFZyaldDTXJCcGVSeFViZnpkNVRQ?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad6ca571-0444-4d34-ea04-08da69d24c55
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2022 22:01:57.2812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G6AfgrvSL4U5+nn3FpD/s9zldbhrdAoyuERwApvhnYkKR//cRooJw8zq8ghe3u1aTY3KR+7b6+Qs1k0l9+c7XhRac+J83diW7RGovmLiKIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0004
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658268120; x=1689804120;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ScXKhTzm1Ltz6zXvyZ1no2lTfkLX4Eo3MOyF8ejcN2A=;
 b=Yk5GsJzs+7KAHJt+nBn5+Uqx8SqwUaKrq6qmpRYaGHE7Gi2S9a9HCd2O
 giX72Upab/+rt9/HccSOZFDGmo7n0LtqN1FOsXPlHv2l5TByynDu5DUiQ
 k6SYKkV7fuGlfJuv25kx6U+1eLt6ShnsB3mQ8VhGQBMyQKIP4YbxCP+Zc
 qgSIhxtEtSfA6W66gPMCeBikhZKupm/sUM/Y7EByFlxIHw3rhQVqNDIeE
 iYSoEqmmKoeZeHF11/DNaGQJAR/lnlOMMHacCFSYYbjNd0XLCIt/79qNR
 Y5b0Zltw9MXGMGL3XUToMh/vJWN4TTWut4tizc0U5AGl58HODLyI9DAgf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yk5GsJzs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 2/2] ice: Remove umac_shared
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA3LzE4LzIwMjIgOTo0MiBBTSwgSmVkcnplaiBKYWdpZWxza2kgd3JvdGU6Cj4gUmVtb3Zl
IHVtYWNfc2hhcmVkIGFzIGl0IHdhcyBhbHdheXMgdHJ1ZS4gUmVtb3ZlIGhlbHBlciBmdW5jdGlv
bgo+IHRvIHNldCB1bWFjX3NoYXJlZC4gUmVtb3ZlIHRoZSBjb2RlIGRlcGVuZGluZyBvbiB1bWFj
X3NoYXJlZAo+IGZyb20gaWNlX2FkZF9tYWMgYW5kIGljZV9yZW1vdmVfbWFjLgo+IFJlbW92ZSBp
Y2VfZmluZF91Y2FzdF9ydWxlX2VudHJ5IGZ1bmN0aW9uIGFzIGl0IHdhcyBvbmx5Cj4gdXNlZCB3
aGVuIHVtYWNfc2hhcmVkIHdhcyBzZXQgdG8gZmFsc2UuCgpUaGlzIHNob3VsZCBnbyB0byBuZXQt
bmV4dCBhcyBpdCdzIG5vdCBmaXhpbmcgYW55IGJ1Z3MuCgo+IFNpZ25lZC1vZmYtYnk6IFN5bHdl
c3RlciBEemllZHppdWNoIDxzeWx3ZXN0ZXJ4LmR6aWVkeml1Y2hAaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEplZHJ6ZWogSmFnaWVsc2tpIDxqZWRyemVqLmphZ2llbHNraUBpbnRlbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jIHwg
IDExIC0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5oIHwg
ICAxIC0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgfCAg
IDIgLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYyB8IDE2
NCArLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV90eXBlLmggICB8ICAgMyAtCj4gICA1IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgMTc2IGRlbGV0aW9ucygtKQo+IAoKPHNuaXA+Cgo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3N3aXRjaC5jCj4gQEAgLTM0MjQsMzEgKzM0MjQsMTcgQEAgYm9vbCBpY2Vf
dmxhbl9mbHRyX2V4aXN0KHN0cnVjdCBpY2VfaHcgKmh3LCB1MTYgdmxhbl9pZCwgdTE2IHZzaV9o
YW5kbGUpCj4gICAgKiBpY2VfYWRkX21hYyAtIEFkZCBhIE1BQyBhZGRyZXNzIGJhc2VkIGZpbHRl
ciBydWxlCj4gICAgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIGhhcmR3YXJlIHN0cnVjdHVyZQo+ICAg
ICogQG1fbGlzdDogbGlzdCBvZiBNQUMgYWRkcmVzc2VzIGFuZCBmb3J3YXJkaW5nIGluZm9ybWF0
aW9uCj4gLSAqCj4gLSAqIElNUE9SVEFOVDogV2hlbiB0aGUgdW1hY19zaGFyZWQgZmxhZyBpcyBz
ZXQgdG8gZmFsc2UgYW5kIG1fbGlzdCBoYXMKPiAtICogbXVsdGlwbGUgdW5pY2FzdCBhZGRyZXNz
ZXMsIHRoZSBmdW5jdGlvbiBhc3N1bWVzIHRoYXQgYWxsIHRoZQo+IC0gKiBhZGRyZXNzZXMgYXJl
IHVuaXF1ZSBpbiBhIGdpdmVuIGFkZF9tYWMgY2FsbC4gSXQgZG9lc24ndAo+IC0gKiBjaGVjayBm
b3IgZHVwbGljYXRlcyBpbiB0aGlzIGNhc2UsIHJlbW92aW5nIGR1cGxpY2F0ZXMgZnJvbSBhIGdp
dmVuCj4gLSAqIGxpc3Qgc2hvdWxkIGJlIHRha2VuIGNhcmUgb2YgaW4gdGhlIGNhbGxlciBvZiB0
aGlzIGZ1bmN0aW9uLgo+ICAgICovCj4gICBpbnQgaWNlX2FkZF9tYWMoc3RydWN0IGljZV9odyAq
aHcsIHN0cnVjdCBsaXN0X2hlYWQgKm1fbGlzdCkKPiAgIHsKPiAtCXN0cnVjdCBpY2Vfc3dfcnVs
ZV9sa3VwX3J4X3R4ICpzX3J1bGUsICpyX2l0ZXI7Cj4gICAJc3RydWN0IGljZV9mbHRyX2xpc3Rf
ZW50cnkgKm1fbGlzdF9pdHI7Cj4gLQlzdHJ1Y3QgbGlzdF9oZWFkICpydWxlX2hlYWQ7Cj4gLQl1
MTYgdG90YWxfZWxlbV9sZWZ0LCBzX3J1bGVfc2l6ZTsKPiAgIAlzdHJ1Y3QgaWNlX3N3aXRjaF9p
bmZvICpzdzsKPiAtCXN0cnVjdCBtdXRleCAqcnVsZV9sb2NrOyAvKiBMb2NrIHRvIHByb3RlY3Qg
ZmlsdGVyIHJ1bGUgbGlzdCAqLwo+IC0JdTE2IG51bV91bmljYXN0ID0gMDsKPiAgIAlpbnQgc3Rh
dHVzID0gMDsKPiAtCXU4IGVsZW1fc2VudDsKCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2Vfc3dpdGNoLmM6IEluIGZ1bmN0aW9uIOKAmGljZV9hZGRfbWFj4oCZOgouLi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jOjM0MzE6MjY6IHdhcm5pbmc6
IAp2YXJpYWJsZSDigJhzd+KAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZh
cmlhYmxlXQogICBzdHJ1Y3QgaWNlX3N3aXRjaF9pbmZvICpzdzsKCj4gICAKPiAgIAlpZiAoIW1f
bGlzdCB8fCAhaHcpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCj4gLQlzX3J1bGUgPSBOVUxM
Owo+ICAgCXN3ID0gaHctPnN3aXRjaF9pbmZvOwo+IC0JcnVsZV9sb2NrID0gJnN3LT5yZWNwX2xp
c3RbSUNFX1NXX0xLVVBfTUFDXS5maWx0X3J1bGVfbG9jazsKPiAgIAlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KG1fbGlzdF9pdHIsIG1fbGlzdCwgbGlzdF9lbnRyeSkgewo+ICAgCQl1OCAqYWRkID0gJm1f
bGlzdF9pdHItPmZsdHJfaW5mby5sX2RhdGEubWFjLm1hY19hZGRyWzBdOwo+ICAgCQl1MTYgdnNp
X2hhbmRsZTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
