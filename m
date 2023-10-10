Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 114007C42A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 23:34:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64106821AB;
	Tue, 10 Oct 2023 21:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64106821AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696973675;
	bh=TdhtTyT3DHmpsi/NpXU8daXtpmTjpOyAkp7U+ALSUAk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AJbHO+toanPE7bBkV6xX+vObNw2wecbBob5Sc1xAYfALwqnSP0hFingfZRIYop7Bi
	 mrXe1dcRmBiMSLn5lf2o01iBpGXWlcomOGQfW3aSh9/azu+INp0F6YIhhfoI49/7sy
	 h+M/M2sJgS9WCKYBtaihUJRZ6hURpJe45Sn88Obb+sNXCsuBrvsTLkwAwhBiZGaQIa
	 mCGJzoyYjhPqh/ppzArPGU2/eebSM/MtuCuKQO/DWxH3eYz83BhMxdaQh3Mfy1g1x5
	 GN6I2W/qWVVUSellyKuCW6rT0tf74Uj2aPwipI62LD9svBJ4X9GTJfuCeoI0DMXCys
	 PJqoly2A1Iyfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V9vGC9PmxJd2; Tue, 10 Oct 2023 21:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCE31820FC;
	Tue, 10 Oct 2023 21:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCE31820FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A43781BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7909441732
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7909441732
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ybn8aIy2DDVg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 21:34:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 059A641715
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 21:34:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 059A641715
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="470775616"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
 d="scan'208,217";a="470775616"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 14:34:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1084961458"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
 d="scan'208,217";a="1084961458"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 14:34:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 14:34:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 14:34:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 14:34:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 14:34:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MRSqrRnkojINrqUdH1Pq5vIbXVE7FW6bmMKcfc1CvgfycbLnFg2rRwxZvEC1bZeg2ESHi7kNCtKXbipax3oFs/qv+ZCi7cJQc9IPDW/Mi1S8J2ylcLJHbowTyahwtISVLNW2wUM8kXZKOc7sB6Cu+ilwtI47LuvfdZLISjP862wDa05VjeOmmwyI4dTNcWujGaoDHSSciIMZddjMYbziPE3HLQqAN3/lULKSQBWNI/xLtwendzbjqsWPc4QtHbZwMV4IN/0eaPIiUGKWDxohbWPT9cUD1ZqujJNimPJU3DMPMz5Dv8sVzcP2iR6/v8jZxyOwgrMyGaUpAr1PHHCmCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S6LO9g/Oa/mf2m1F8O5JF1ngZjCVNzhStQChk7ojsns=;
 b=I8JM933JYU6NzlVRKD3hpfAgwcIvxdl78ZlSAxh6WtqxSxqXn/qX1XTXZQuYr1UaxNIvjUePiJaCCZTxrOiqEP1WIixmpCsJjakfSX879C5lfhTJxwP+zVpG7bwCAlQrmecxjJtsxHmNXUrRb3d1LyOjCl6xyKeuHAmwsHf0o7EmwzwovLuHLERziQpNv+4e5M6I0OaXA8x0Hp6fSriq5Fg7yTm3VeHvlx1A5X5KKm5Bevr5yIN7dN3Dqog4n+ZBxpeHa0DvfI3C/tphsxsheFtNPIlxTG+FkmuaeD+cPF8i25pe6d5HYS8B5VeYJYtGK+Sho7J/rXXRvaiw7h7QtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by IA0PR11MB7188.namprd11.prod.outlook.com (2603:10b6:208:440::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 21:34:17 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 21:34:16 +0000
Message-ID: <8d205051-d04c-42ff-a2c5-98fcd8545ecb@intel.com>
Date: Tue, 10 Oct 2023 15:34:07 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20231010200437.9794-1-ahmed.zaki@intel.com>
 <20231010200437.9794-2-ahmed.zaki@intel.com>
 <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b8::13) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|IA0PR11MB7188:EE_
X-MS-Office365-Filtering-Correlation-Id: 187a5307-30af-48e9-8a52-08dbc9d8a793
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hutu2nV18mAFREXiS0808+Sw9zh0fCgJukxbJ77B7Zf7ovarCo1/YSgsDFgasxoNvqlJ01/2htETRQtNfPokxTo0eb10gzAouA0EHYKATQm7QVZhuxfTbOCgBsOPIyzG1tyzpTEG8s2FxhmmDpmphy7Q8O10n9pDphsiFwNfGkVDBoeRYgLM6WD30OVNUFQxryL8hKj45db/cbnKka9gNR6QGDz+vGm4KWEiLGNPSkRsD3gBHK0LeokkSZlTOAGnCStGrBaOUA9gsq5LfY7JI6QLStevnKp0sxQfb++0057RPO6wo/0GmAcd0qlpHGbyTZ6J84QoheoObeXQlssPsjFJ5dyG1VnEMG82p3OzTQjgvVBO7HQDRzbYNwqwiFp0R21duz64ZgCwCItIQMzXQxT1C2swLNAjw1lOMPDshZsJEW69ooPRpd9BAQIUgHbgrFiZlX7nQMVj6ekfu+OKDf2V9t3aDhE1veDu3k2lxcB9gPlsKGlu1x8Qor1SKTOAiplktl5Ze8TzX8VufSV2U8RTK1Wqrd5Up65AIQM2Stz6StkMbKNsvmEbmExgauQI+MWvZSLXuOA5lqUwr+3g7deBv2XA1YV9tgQ/+4sCZtXojp+UWtj3rgOXZA4QdjByJjkWBjIvULfa7tpPLQJNPA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(376002)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(26005)(107886003)(53546011)(2616005)(6486002)(478600001)(6666004)(36756003)(33964004)(6512007)(6506007)(86362001)(31696002)(5660300002)(38100700002)(66556008)(41300700001)(66476007)(66946007)(2906002)(316002)(6916009)(7416002)(4326008)(82960400001)(4001150100001)(8936002)(44832011)(8676002)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDg0YVlubkVJUkVoM3FOdDJPVWxVNVFjdy9UcUhCNm4vcXFEK24rdS9TWmQ0?=
 =?utf-8?B?SElyVzYwYlZobXhwMlh5MEhBY0xucVVaTmlQa2E2a2VyM2R1d1paYkltS0tx?=
 =?utf-8?B?TlBMOXYrakFCZzZzd1VQdmlMSUliWm5mcGdxRUE3dFlLbTNYdWtrWllJalVr?=
 =?utf-8?B?eG10cXZYTWs1V0xOaFFCalZkWmxKbjM4cVRnell4eHVwMnBkNVdDbmtOK0dz?=
 =?utf-8?B?YUxQaGt4RWllQ1VFQVNlR250ZTcvUlhMN3U3a0JDWThOd3UrUG0xamVPM3ds?=
 =?utf-8?B?dnYrVVBKeFdFdnFJVUc5cHRaS0owN2lLbzBLaHpqZ2pIdGN0MDBLY0RNY1hx?=
 =?utf-8?B?Mk9vR1Jub00xY0lkbi9KUWVRTktJUG5tdG82V3FHUWdoSmFHd1FTaHlHR0l2?=
 =?utf-8?B?Rk9lNmlqSG00Rjk3OUNrNjNwMVl4cXh0V3krZ09xQzc1MFFYeXlaeVpIbzB4?=
 =?utf-8?B?QlhJYy96M3NPYmlQZCttcy9TUXlpSWxRV2piMmdHOHlKRUhKV1hLYVVpZWx2?=
 =?utf-8?B?TjBNUjR5STBRcFpyc084QzBEcjBwVTZpeEpidzcxbkgwbGxPSzdNTlJpZ1hG?=
 =?utf-8?B?Rlc2bURRVFl1QTFBWEc0UzZJS0wvTjIwN2FOMy8zQkt3OVIyNDVwZU9lZlk0?=
 =?utf-8?B?eUNQNG5ZN2RSWUZLK2hBREFMTEdTVmREMU1SNm52anp1QkZsenRYdXMxRVdN?=
 =?utf-8?B?MHB5NEoyL2xzQXg0OFdTWmlSMlNOZUpKWkZoZWZId0ZrNjU0V0d6STJxYzJH?=
 =?utf-8?B?czBXVW1Hd3RrV1lITFZSS3JLdHMwdlc1UDd6M2NpTStqLzNrZTlOeXliaC9u?=
 =?utf-8?B?UTVJUjdheTRkRVpSZHFHQ0JBZGF3YmpTLytmd1V3NWZycjF5cXlwSUVPbTFt?=
 =?utf-8?B?WEJhTW96czRJbUlObjR3V1kxM0pyWGpLWXhvMWV3L01zWVdJbHRRR0R2ZXF4?=
 =?utf-8?B?Z2ZrOGJHZktURk9EN05JZHBkdVladTdLM1VNdXdrU0IySXhoVnB1SjUvTk0w?=
 =?utf-8?B?UUovWXhDL0FmcHZVNU12MXlRMjBuWGpGanVWemhnZVFFNkFRb0tmeXhtNU5r?=
 =?utf-8?B?VURXV0diSHUrOWlkZ3BSVGRRMEQvZjBuWm92SlIzTmVNdFphTndsNEorNUpv?=
 =?utf-8?B?QjRnaGszalRERlZVcHJ4ZGYrY2w2YzBSYXpKZjlrSU1rb004aE9QdDVZYk1i?=
 =?utf-8?B?MDFJQWs2bjdUamIrUTFHazhJd3ZadVBPcVVmVVM1S291bmxEdytHSHlCYnlU?=
 =?utf-8?B?c2NOUGRaUGh0ajU5Yk42K29OanlER1RONTZBdjRlcEp3NEdrYzlLNGg1M2x0?=
 =?utf-8?B?OXllUDVTMjIvcjBrWFZlUVBKRjIyRitsMWlrMnJac3NNSjQ2NGRrM2pYbWRy?=
 =?utf-8?B?b2JDQStTQ2hoVlYxS2MyK2NuWFhjeFZRZkNvTHVIN3gyU2ZUbTRpVlEvNzND?=
 =?utf-8?B?Q0lCdWdENjliUS9mM0UrdDJKS2hkVlhoMXJlZ0wxNXpub2dZRWFMeWFXK3h0?=
 =?utf-8?B?SVJad3lYc21XaGFOL0dFdnhCMFBxY3hMb3RnWVVXTU5vOTNHN1kxUkFVbWZi?=
 =?utf-8?B?cnA0bFVuRFRaMnZ1VngramVqeW1Tcm5VYVVaL1dUelpSdU5BSmZQbjZnNEEz?=
 =?utf-8?B?b3Y4cG5xdEdQNUlvV2hzNkk5RnZGb1h0dXhnOGkzSEpvWjhQR3VPVWN6cUVq?=
 =?utf-8?B?Njd6N0g3TG0zOG92NllCU3FHNXBxSXVveHNieHZpWlJtZ0h5endhTVgwNS9M?=
 =?utf-8?B?eCtTL3p5eTNXNUhzS3g2eUhVSjROOXhCL2hJS3F2bTlpK3VuOVRZTlFnSlE1?=
 =?utf-8?B?M1pncTlLazR3NHQrVmMwL1pVMXcvenZEZHFCTC9VbW1uNm0wVEtTUWJlS0RJ?=
 =?utf-8?B?eDJ6dmFaZXEwd3MyZnhiSHh0K2FJajJoK1ZFR3JQVnBNSXJHWjVaSnBIbnVv?=
 =?utf-8?B?ZzdMQ2JDbHBHbzBIUWxhQmRLSlM5M2JiODF3dUwyajRyTXRCVW9OR3RxRHlw?=
 =?utf-8?B?ZmtrQ3pEZC8rd0RVZ2hLRFRzVnNRWDdtT2RLam10M1Nlay9vbXFXTVRCVHFk?=
 =?utf-8?B?d0M0eWc3VzRKTzdzcWF0V1BBZHRub2dhcDhQREN6RHVkMnNNbmlFU2sxOFZC?=
 =?utf-8?B?VGFzblkwTDZuZlRVY0t3Z05VdmlMNEdiUGQ0UjlaK3lJVHhWTy9JUFlzYnQ0?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 187a5307-30af-48e9-8a52-08dbc9d8a793
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 21:34:16.7184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J9RCUbG0Dih1fuYq6lUoToo4V91aXeC7g8MgSOpzvNN/ZT9V1t2Vuugc40qTxYhQJxxCigVNcSpfc8KFoac+pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7188
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696973667; x=1728509667;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=HO8FEK/iZ97EEuiFophTzAU1BZKsFe/XTkWPK5s5gb0=;
 b=KWaLyHBUo5MMBLzyZV3kzTC7AdaLcCr5AyNUgvozjNOw6qccFNpeHT6E
 FlDa6pj4vflQUA6n+LuMOsvIV9tl8TfNvbMhtJSaFkdm7/d0j9lcQ6zcU
 +YvQiSCKtdTeeFeH2zSQHnGpmoFYoUrQ2AzCa4kCRAgXcaD/yIGV339Qs
 704uT1H4aoxgTAWhTn/EufAK5z8juZx+cW2EzPvH59cP1y4m6AO+3H1X5
 Y7s1KZDRiVQB+sUqiRUGa/g0Tw98QXOi4ORaWjGYCeNOqlU7bGGcfdNBy
 YNyFyPElWeZb/58rfFaKDx6YtZoFRuISBWFWcMxAdUaBzyvI3wbcxTF8C
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KWaLyHBU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 vladimir.oltean@nxp.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============5503402054833315963=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5503402054833315963==
Content-Type: multipart/alternative;
	boundary="------------PDXQsqemrqrCQOmdCz5cQPXn"
Content-Language: en-US

--------------PDXQsqemrqrCQOmdCz5cQPXn
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 2023-10-10 14:40, Willem de Bruijn wrote:
> On Tue, Oct 10, 2023 at 4:05 PM Ahmed Zaki<ahmed.zaki@intel.com>  wrote:
>> Symmetric RSS hash functions are beneficial in applications that monitor
>> both Tx and Rx packets of the same flow (IDS, software firewalls, ..etc).
>> Getting all traffic of the same flow on the same RX queue results in
>> higher CPU cache efficiency.
>>
>> A NIC that supports "symmetric-xor" can achieve this RSS hash symmetry
>> by XORing the source and destination fields and pass the values to the
>> RSS hash algorithm.
>>
>> Only fields that has counterparts in the other direction can be
>> accepted; IP src/dst and L4 src/dst ports.
>>
>> The user may request RSS hash symmetry for a specific flow type, via:
>>
>>      # ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n symmetric-xor
>>
>> or turn symmetry off (asymmetric) by:
>>
>>      # ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n
>>
>> Reviewed-by: Wojciech Drewek<wojciech.drewek@intel.com>
>> Signed-off-by: Ahmed Zaki<ahmed.zaki@intel.com>
>> ---
>>   Documentation/networking/scaling.rst |  6 ++++++
>>   include/uapi/linux/ethtool.h         | 17 +++++++++--------
>>   net/ethtool/ioctl.c                  | 11 +++++++++++
>>   3 files changed, 26 insertions(+), 8 deletions(-)
>>
>> diff --git a/Documentation/networking/scaling.rst b/Documentation/networking/scaling.rst
>> index 92c9fb46d6a2..64f3d7566407 100644
>> --- a/Documentation/networking/scaling.rst
>> +++ b/Documentation/networking/scaling.rst
>> @@ -44,6 +44,12 @@ by masking out the low order seven bits of the computed hash for the
>>   packet (usually a Toeplitz hash), taking this number as a key into the
>>   indirection table and reading the corresponding value.
>>
>> +Some NICs support symmetric RSS hashing where, if the IP (source address,
>> +destination address) and TCP/UDP (source port, destination port) tuples
>> +are swapped, the computed hash is the same. This is beneficial in some
>> +applications that monitor TCP/IP flows (IDS, firewalls, ...etc) and need
>> +both directions of the flow to land on the same Rx queue (and CPU).
>> +
> Maybe add a short ethtool example?

Same example as in commit message is OK?

AFAIK, the "ethtool" patch has to be sent after this series is accepted. 
So I am not 100% sure of how the ethtool side will look like, but I can 
add the line above to Doc.


>
>>   Some advanced NICs allow steering packets to queues based on
>>   programmable filters. For example, webserver bound TCP port 80 packets
>>   can be directed to their own receive queue. Such “n-tuple” filters can
>> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
>> index f7fba0dc87e5..b9ee667ad7e5 100644
>> --- a/include/uapi/linux/ethtool.h
>> +++ b/include/uapi/linux/ethtool.h
>> @@ -2018,14 +2018,15 @@ static inline int ethtool_validate_duplex(__u8 duplex)
>>   #define        FLOW_RSS        0x20000000
>>
>>   /* L3-L4 network traffic flow hash options */
>> -#define        RXH_L2DA        (1 << 1)
>> -#define        RXH_VLAN        (1 << 2)
>> -#define        RXH_L3_PROTO    (1 << 3)
>> -#define        RXH_IP_SRC      (1 << 4)
>> -#define        RXH_IP_DST      (1 << 5)
>> -#define        RXH_L4_B_0_1    (1 << 6) /* src port in case of TCP/UDP/SCTP */
>> -#define        RXH_L4_B_2_3    (1 << 7) /* dst port in case of TCP/UDP/SCTP */
>> -#define        RXH_DISCARD     (1 << 31)
>> +#define        RXH_L2DA                (1 << 1)
>> +#define        RXH_VLAN                (1 << 2)
>> +#define        RXH_L3_PROTO            (1 << 3)
>> +#define        RXH_IP_SRC              (1 << 4)
>> +#define        RXH_IP_DST              (1 << 5)
>> +#define        RXH_L4_B_0_1            (1 << 6) /* src port in case of TCP/UDP/SCTP */
>> +#define        RXH_L4_B_2_3            (1 << 7) /* dst port in case of TCP/UDP/SCTP */
>> +#define        RXH_SYMMETRIC_XOR       (1 << 30)
>> +#define        RXH_DISCARD             (1 << 31)
> Are these indentation changes intentional?

Yes, for alignment ("RXH_SYMMETRIC_XOR" is too long).


--------------PDXQsqemrqrCQOmdCz5cQPXn
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2023-10-10 14:40, Willem de Bruijn
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Tue, Oct 10, 2023 at 4:05 PM Ahmed Zaki <a class="moz-txt-link-rfc2396E" href="mailto:ahmed.zaki@intel.com">&lt;ahmed.zaki@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Symmetric RSS hash functions are beneficial in applications that monitor
both Tx and Rx packets of the same flow (IDS, software firewalls, ..etc).
Getting all traffic of the same flow on the same RX queue results in
higher CPU cache efficiency.

A NIC that supports &quot;symmetric-xor&quot; can achieve this RSS hash symmetry
by XORing the source and destination fields and pass the values to the
RSS hash algorithm.

Only fields that has counterparts in the other direction can be
accepted; IP src/dst and L4 src/dst ports.

The user may request RSS hash symmetry for a specific flow type, via:

    # ethtool -N|-U eth0 rx-flow-hash &lt;flow_type&gt; s|d|f|n symmetric-xor

or turn symmetry off (asymmetric) by:

    # ethtool -N|-U eth0 rx-flow-hash &lt;flow_type&gt; s|d|f|n

Reviewed-by: Wojciech Drewek <a class="moz-txt-link-rfc2396E" href="mailto:wojciech.drewek@intel.com">&lt;wojciech.drewek@intel.com&gt;</a>
Signed-off-by: Ahmed Zaki <a class="moz-txt-link-rfc2396E" href="mailto:ahmed.zaki@intel.com">&lt;ahmed.zaki@intel.com&gt;</a>
---
 Documentation/networking/scaling.rst |  6 ++++++
 include/uapi/linux/ethtool.h         | 17 +++++++++--------
 net/ethtool/ioctl.c                  | 11 +++++++++++
 3 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/Documentation/networking/scaling.rst b/Documentation/networking/scaling.rst
index 92c9fb46d6a2..64f3d7566407 100644
--- a/Documentation/networking/scaling.rst
+++ b/Documentation/networking/scaling.rst
@@ -44,6 +44,12 @@ by masking out the low order seven bits of the computed hash for the
 packet (usually a Toeplitz hash), taking this number as a key into the
 indirection table and reading the corresponding value.

+Some NICs support symmetric RSS hashing where, if the IP (source address,
+destination address) and TCP/UDP (source port, destination port) tuples
+are swapped, the computed hash is the same. This is beneficial in some
+applications that monitor TCP/IP flows (IDS, firewalls, ...etc) and need
+both directions of the flow to land on the same Rx queue (and CPU).
+
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Maybe add a short ethtool example?</pre>
    </blockquote>
    <p>Same example as in commit message is OK?<br>
    </p>
    <p>AFAIK, the &quot;ethtool&quot; patch has to be sent after this series is
      accepted. So I am not 100% sure of how the ethtool side will look
      like, but I can add the line above to Doc.<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap=""> Some advanced NICs allow steering packets to queues based on
 programmable filters. For example, webserver bound TCP port 80 packets
 can be directed to their own receive queue. Such “n-tuple” filters can
diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index f7fba0dc87e5..b9ee667ad7e5 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -2018,14 +2018,15 @@ static inline int ethtool_validate_duplex(__u8 duplex)
 #define        FLOW_RSS        0x20000000

 /* L3-L4 network traffic flow hash options */
-#define        RXH_L2DA        (1 &lt;&lt; 1)
-#define        RXH_VLAN        (1 &lt;&lt; 2)
-#define        RXH_L3_PROTO    (1 &lt;&lt; 3)
-#define        RXH_IP_SRC      (1 &lt;&lt; 4)
-#define        RXH_IP_DST      (1 &lt;&lt; 5)
-#define        RXH_L4_B_0_1    (1 &lt;&lt; 6) /* src port in case of TCP/UDP/SCTP */
-#define        RXH_L4_B_2_3    (1 &lt;&lt; 7) /* dst port in case of TCP/UDP/SCTP */
-#define        RXH_DISCARD     (1 &lt;&lt; 31)
+#define        RXH_L2DA                (1 &lt;&lt; 1)
+#define        RXH_VLAN                (1 &lt;&lt; 2)
+#define        RXH_L3_PROTO            (1 &lt;&lt; 3)
+#define        RXH_IP_SRC              (1 &lt;&lt; 4)
+#define        RXH_IP_DST              (1 &lt;&lt; 5)
+#define        RXH_L4_B_0_1            (1 &lt;&lt; 6) /* src port in case of TCP/UDP/SCTP */
+#define        RXH_L4_B_2_3            (1 &lt;&lt; 7) /* dst port in case of TCP/UDP/SCTP */
+#define        RXH_SYMMETRIC_XOR       (1 &lt;&lt; 30)
+#define        RXH_DISCARD             (1 &lt;&lt; 31)
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Are these indentation changes intentional?</pre>
    </blockquote>
    <br>
    <p>Yes, for alignment (&quot;<span style="white-space: pre-wrap">RXH_SYMMETRIC_XOR&quot; is too long</span>).</p>
    <p><br>
    </p>
  </body>
</html>

--------------PDXQsqemrqrCQOmdCz5cQPXn--

--===============5503402054833315963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5503402054833315963==--
