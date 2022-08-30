Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5A35A63BB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 14:44:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EECCB81323;
	Tue, 30 Aug 2022 12:44:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EECCB81323
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661863448;
	bh=CNKPxIwahW52YruM70IorMV0DEwc5G4Ftbp/iCr265I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ktKFgCmozzyNRXt+NZHuWM+LKSCMRyoPGCaCYq1/pTrdnBTuFCs0ud80dB+HWXnfC
	 75fzt65x+SVYutm/ijGZSCI/eTXmLy32KhuJH85VujmA368fu+EokGmKreP78mJ+ub
	 j3Prt+TsuR4sTb0otPpKAHtjh5Y97X+HoXRJ93OEyHJgJvTH71F8fTFi/sa9TxeTEC
	 heGQPRs4W5flPrnj6+Q3u3Lwy0DMwbLi1GlOtaxEYAdt9M8zld5AW4BWG8V2jbchxU
	 ABHEVuqAVntOgXFOddXUdkuu/ZFWloIPu1z6RfW9yxKNA2YuImZu7eJKT8S8iR5K51
	 lX1WYRMRScHBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njBPSL15-KyB; Tue, 30 Aug 2022 12:44:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D30DF8138E;
	Tue, 30 Aug 2022 12:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D30DF8138E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D4071BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77648408B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:44:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77648408B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G_l1r1BVmXm3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 12:44:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78C0840201
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78C0840201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:44:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="275563086"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="275563086"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 05:43:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="611690095"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 30 Aug 2022 05:43:59 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 05:43:58 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 05:43:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 30 Aug 2022 05:43:58 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 30 Aug 2022 05:43:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sr95iw4EAl9TVkENSU4ZDWXN+37qkp3fh6uu4LuthhB2tlbPsGjNvgnIYJnoUpW7btFQiYaPLw+pkZg+IELq+TOkIUdHa+nPF1/jNFllxad0BEocYbqf01zogYc5Y46Qm/SGqOOew34WEq6r+4euaJQpdGs580Y9zoLsssnM/g1NMIcSRdgegJ+kQy0uYO4db8sTbG6If7VPs7ifX6MkQHnYeKy3luTC3BD0tZhnG0gdF0GB0ll6YT1XTmcJOq5Ko9nggIraO/IOQuXce6iXaa+jQbHcrqhs6vqq/bN3XBxfc4IGB85Ue9cYH/ZR1BvuJI3krFFUXt95LGHafp02ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2FFAda5ljvLs8DpO8N44vDHvMrubaFh/f+9jftgvHhw=;
 b=WtilDALkBG7KRkPa0pTDyoBBH/UxKnt4Nx//sjAZwo6EQ0ZC/q4tZLHkvXz3OE81JkYQUiNTUrYqY1HZw3tzmavC5HqnsTbmZopkJFdcdenG3cPk2J/QlWCFjihe+LYTlnpHQGONf9aS///2dUbN2R62R5fUL+IIlRXyX0KjBe3xSUlqzpvnhtwe1PWmY5AAKcmaZAdV7fmGB4+jO3kP47WKL/nb8LL8MEl4MJeYJN/eq6MnnBUTlP4M+UTeF0DGgNKFdpHKvOfD1BC5+SSeY+O3dex/oszX6t1V22XIhpbocZOQeg/juEEblfqK+8O+8a+dvZPnIrhwffyqYjbqLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB6377.namprd11.prod.outlook.com (2603:10b6:510:1fb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.16; Tue, 30 Aug
 2022 12:43:56 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::393a:df83:cb78:1e3c]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::393a:df83:cb78:1e3c%5]) with mapi id 15.20.5566.021; Tue, 30 Aug 2022
 12:43:56 +0000
Date: Tue, 30 Aug 2022 14:43:50 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: <intel-wired-lan@lists.osuosl.org>
Message-ID: <Yw4GBmZWfHQNgr75@boxer>
References: <20220830123803.9361-1-maciej.fijalkowski@intel.com>
 <20220830123803.9361-2-maciej.fijalkowski@intel.com>
Content-Disposition: inline
In-Reply-To: <20220830123803.9361-2-maciej.fijalkowski@intel.com>
X-ClientProxiedBy: AM5PR1001CA0037.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::14) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e7868283-555e-460b-9a72-08da8a854d8f
X-MS-TrafficTypeDiagnostic: PH7PR11MB6377:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a3fP3IhBGmhRZsh2x1lkQTg5mQl2BI9AKnBxF4W5aSqS2x6mkmsgfvqcJPHuIvXz1kXKIQadf0WL3lwORp7QuNe75oRJQ2cGEJO/7bw4I1Ia8NZbQzedjAbqm9dlIE/Bc/VnsKv78kmEOlzA6xlpuDzH0owuRbsBxhpAhXUzWxwTNiNLuaPDyT2+VxkKdOmjjDVzZLG/K+TpBYqc4wG7otvzxwv+tU3UFe0U2s6aDCNu/pSf2l6wPxGeJ6ZBIlkvm6iJuJCcerzLZBW7OS3FVgKSOsBOY0SJnbKSnAwUy9Eo70OaJwm4EpQvdb5Em+fst9YlNnxOctV8lQA5mBwQlHnnnhpUuhdFPjhIYF4ixVjvlprB8t3abrKeBgEZ4z0DJqZFiBe+nVs5fe3l3SI7eo5jyxyjAnYMm5XTMad7lyxFKHAbp5p2a0+wlfUavfl71Rgn6aDZ5GUGtQzWe2yL+UgmRK80lQn1idEx7V10rcc8kNurkajQ8Uk2LO8JDZBT3pkclh9fWmnrfxqW5zD4mV2jN9sBsDOZZUEFbiSwjWGIk+DgSfaS9gGmRStcxPF69Smq08uvGQ9OtRbCF1VkPb/K4ccdymyVQGAW8V9BcsosR40Ytg9U2hj1oljfjdhrzLjIkVfpPn3LWwbX/OzeYynfmRLX0oAlu40kc0Mip9BayGhkG3FxLCFLE6ARPfP2tWuFVMekxsIBuXGsKNf/epjGzYQC1/xX7z2BrkqRigU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(136003)(376002)(346002)(396003)(39860400002)(478600001)(38100700002)(41300700001)(5660300002)(6506007)(2906002)(6666004)(9686003)(86362001)(44832011)(186003)(8936002)(26005)(6512007)(83380400001)(66556008)(82960400001)(6486002)(107886003)(6916009)(316002)(66946007)(8676002)(4326008)(33716001)(966005)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nfmlB4+NmFjugm2rC4Bp1Le//dWkUh70ZpUaBdYE7Ku6311867VuuebkM8L6?=
 =?us-ascii?Q?b1VKD5Aa3gWNskRDb3yKobhLBedFkmjwCeorxuey01bpXCCX8KWu6AUL1+DX?=
 =?us-ascii?Q?vADGMHi04mnokSNyPms6uVU9hfb1pvEe1H0dEks/GUCJR67V8DdR0u1sj0RZ?=
 =?us-ascii?Q?sKYFzCQCgKA4gjhP+RqQqDB/yeLrdKlbePdInAoYfpBg9rMke0WYmNr7xpyC?=
 =?us-ascii?Q?cd0dfUydu/yvUUHzq23GoDgrqtgyZGFgb7uULPbSrBVXphCIWLb0FPiEeJbb?=
 =?us-ascii?Q?hRSZVIWYuxlxY37FFt/y09zqc+XA2UFVvpF13bfqWD6Q2Dq/pX4JagMEP+Da?=
 =?us-ascii?Q?SEUqDUpxJcgR8dRR/tob9VbEUiGUAEf0PGnJfk/3MRZF3SO35O3PuIKQpvJ9?=
 =?us-ascii?Q?rt1Mq7BXud/A0KEj0gHnA+X5PIA7Lxgn4xLUq5AC687HbkJKGCFQDGdG452v?=
 =?us-ascii?Q?4pn9IJwAlrHiCz1Pc16rMgbDnccc8J5EnBq9dufv1OcKpf7pqg8mu10iK5zj?=
 =?us-ascii?Q?/7cVIUjhpkAF39Zqpv5cxydnTSdJVf5WgKxhRqSyYGZrl5lWGNGHUHO58crp?=
 =?us-ascii?Q?e4J+kCS5lbVs7jtRVFkfLHX+ii51xd7gFR451fijUKHJBllCNU3gNYaSgwHT?=
 =?us-ascii?Q?/x0o+ID38i06ZCeFXjEvwc8v8M0wLOsfmniMG6N3M2IQ4o8DSO3DvKxmKlY3?=
 =?us-ascii?Q?o+0RCGlpTvMVq0dY8O48FQRznzIaxLcgLiX69xoYg/OtW3lI03DJkXxMWDl9?=
 =?us-ascii?Q?zUsF6zJ7AsJucENJ7qPC8txReGVPw73y9pcLS1WRzcZUUD9GxDK+s43zTmwe?=
 =?us-ascii?Q?jUBuHGWsVOvyJiSb1w/qg6K3gvtapFoeg315fiiEigcbPbkFdo4ZdZBCKgZd?=
 =?us-ascii?Q?PZpr4KnMHJ8kPLTjSfciUWFvPB9cnJPrcEm5a8dh5+Q+vmcwcCqpVWMU0LJQ?=
 =?us-ascii?Q?+ajpZlJZfppAemnXUpyLsUa3aB9BTTsUgg4pGW4t6/DRGp1YYZbJdrTqrv/x?=
 =?us-ascii?Q?975i2MiKVDnZ0IOCub2HV5J3KDJW9Mh0visnnjhvtTDR3F1zy/l6Dy5ne3i3?=
 =?us-ascii?Q?nM2q0traQCOyVpfT2tSZ1ITqES//O2q27sczH+1pRoQOM3ItZIneWWHLxDAN?=
 =?us-ascii?Q?TCIqgYPly+3YTsKg8w1sIc37uTZ37v4rh3KvjgXTu48fK+jvl2nwLgPP2gVl?=
 =?us-ascii?Q?mGcONxb5G0b+snLj4PmXAi2jlHbelZOF2VIFu9lE52asR8nSDRDdhYHv6vLb?=
 =?us-ascii?Q?ecAk9s538YXBxTiYCoSGpHjrqDEJTtSaXRGOKlZL7kOkZLmvITfvsaMG2ozJ?=
 =?us-ascii?Q?DSk631HHmjq3/74hqWZedFyw8GngFroqgJ5g1F63p5EsvKBkBLtzN7FjCore?=
 =?us-ascii?Q?wmAR4IA02TQGixpKUDlUKWtW+1thgA5bGHzk1OTI62aElhvuKb8iI3ElsFrW?=
 =?us-ascii?Q?vRivXQoJeH4Ne6nMpRsUMsQwPIPJ3RPx4FWxZyDqGw6XUj59eMP4MPhq4vJa?=
 =?us-ascii?Q?RI1cWKOZqEsrR4BpelsPCeFJR8EeTGJzE3Dk+j4/jDUv+oN+LwsvmmIv2FAs?=
 =?us-ascii?Q?JtSnrwAwiiJttEG6sYykXQpa4O0OnQ/tRSxOKfdKCzFWlMhDShrammgSE/46?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7868283-555e-460b-9a72-08da8a854d8f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2022 12:43:56.4292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xHyFFtBBAT9o+CSTt1Qw/lTPzC6xq0Ya8JI/MiqpcYVrgQP1GfRw0XvuOS6XV7jjzYJMG8irkpoZzopM0TTirpeh30PhSVukYpVTYmdNMhE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6377
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661863440; x=1693399440;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fvArRQ3WZ4rT4oAGzoBgoBE7A3DRjOfD6PQ2NLZWIM8=;
 b=Us93Eu7rSZ9y8bclkdXpH1OrfRPZY4LuoxYI0S5+zwEZlt/dJPk0oNIM
 DHP2zQPP5cCksqlLft0X/i00EPZy9gh2fNI3ety2puUsDDgH+Iq1Bn5LK
 8PZVmhJdsEdBx/NDD2iSKueLlakJgB/tp0I9996gbCAH5o2Swpvd5KR+Q
 tgUJuUPjJBMabRBBdKrTPJUDoBIRJrEc3/H2m0KBDfOhvK7xh/rid5LSm
 N6PO2jwm3+bEyuFzxjofbiFiZcTiUIO9u3AZk/B4IzQjrZkHBpfGVKwrp
 mNZ47Foa2wvk1N6Ye5Y0HDAEx8E+dpsPD6VmJXRw+KNrZQZZ664vQJiGm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Us93Eu7r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net 1/2] ice: xsk: change
 batched Tx descriptor cleaning
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 30, 2022 at 02:38:02PM +0200, Maciej Fijalkowski wrote:
> AF_XDP Tx descriptor cleaning in ice driver currently works in a "lazy"
> way - descriptors are not cleaned immediately after send. We rather hold
> on with cleaning until we see that free space in ring drops below
> particular threshold. This was supposed to reduce the amount of
> unnecessary work related to cleaning and instead of keeping the ring
> empty, ring was rather saturated.
> 
> In AF_XDP realm cleaning Tx descriptors implies producing them to CQ.
> This is a way of letting know user space that particular descriptor has
> been sent, as John points out in [0].
> 
> We tried to implement serial descriptor cleaning which would be used in
> conjunction with batched cleaning but it made code base more convoluted
> and probably harder to maintain in future. Therefore we step away from
> batched cleaning in a current form in favor of an approach where we set
> RS bit on every last descriptor from a batch and clean always at the
> beginning of ice_xmit_zc().
> 
> This means that we give up a bit of Tx performance, but this doesn't
> hurt l2fwd scenario due to the fact that Tx side is much faster than Rx
> and Rx is the one that has to catch Tx up. txonly can be treaten as
> AF_XDP based packet generator.
> 
> FWIW Tx descriptors are still produced in a batched way.
> 
> Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")
> [0]: https://lore.kernel.org/bpf/62b0a20232920_3573208ab@john.notmuch/
> 
> Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")

Ugh too much of a fixes tag. I'll send a v2.

> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c  | 143 +++++++++-------------
>  drivers/net/ethernet/intel/ice/ice_xsk.h  |   7 +-
>  3 files changed, 64 insertions(+), 88 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
