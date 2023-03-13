Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 633FD6B7C4C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 16:45:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDB6381911;
	Mon, 13 Mar 2023 15:45:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDB6381911
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678722326;
	bh=ahxaO7PcAki/Ov0D4ck9SyIUaCPmIrAZP9sx8a6N68E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZgYI3yFn47thaVktqxhEblrvxmiQ2LCS/DpZd953a6Cs6lEG/pfqbXKNUVGnAbDJ5
	 S/KYAE3JVb1G/0Wn94XwlaPAGa414qH+LnRBR79AtsetrbveKy6QVE0rcNw6+IK28q
	 2HOl5iIOYKf31V+Nsqv0waO4IaoV2QAA4RKjRITlWJcbS3npdKXvDIZfisaCgJFrIf
	 tG473J+17Ep14S/d5zqdH0wLnA6soaPZSyi3kGMEL05CA54cIsyQE0Tge14Kpd+XkM
	 6BvwMucwx1kWZUWY5DxcTusGMwLPGbmsfhjVHjqlKYfxDdQ4k+0RYTh3awNGmSjQDX
	 ObAlwIrk8fCbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2De2gDVnwWO; Mon, 13 Mar 2023 15:45:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E80038149A;
	Mon, 13 Mar 2023 15:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E80038149A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D7CF1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 09:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33ECC414C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 09:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33ECC414C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s5WN6X-bTMrU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 09:15:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DC0C40905
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DC0C40905
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 09:15:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="338648398"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="338648398"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 02:15:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="852692920"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="852692920"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 13 Mar 2023 02:15:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 02:15:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 02:15:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 02:15:35 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 02:15:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aoj0kc2ObN7GFF8K9OZAhrGXho1fe7vVcWcE3M8GbEVx5kfPG+X3KOfv6BVgbE8BXxAm4vUp+elV7zcu6bt79mO2cUosOXIz8622KgMS+v/vL5mj9Yn1jnap4PvAHW9m+MH8HguUuDryl9t3GcZe/xElv67xMJGj/H6Falt5S+YMYj4QO9k5AXR8mRWQkZ8sxqzRaoldql8upqYSIgt3h90I2cd4qxcjeV6K+3TYvUdAIXaEls/IlUL41KRgSa83pbl+tEQr4XcNm353bLeYVseWmfDsmuW60nUEDkF708jlK0QH/I/IG1Yj3qa2N2qXpS0sPVyY4kYZwNYHUCcbYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tf0GaDgG8RLM9JwYx9IvraDDINhIDh64cB8RQmmD0Sg=;
 b=jsVm8qfk306ytoGfgJkEQmQVhCc2tc7pIBV1ArKbVydnZadhIWcHWKH/WxhbU7on0Z/kS5DGjSMofErnAFPH41YEdQ4MKaZuL0oxHfZPjiUBo6IyKJNfDGbHNL5Lp6c3XfqEIn7NsgpQgGyLOmVPxG3czXVi0qhce8bcaYh9rLk6ICG6te/GMbaPy/EK62XHh7RVjPl1ZqYDZ6bzSfk9ESY07xetmry0oQEoN/k7RfrcQ6Rcn5gmAenRljfgBBBLybDPT0z7awY/JSwJOpv2Y6n/S2/YHYsI7D2/kfgNQJLAwlZ+loInG/5ifJhjdTZlF8/1qcSRc0379r/PwCf6vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2937.namprd11.prod.outlook.com (2603:10b6:5:62::13) by
 MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 09:15:34 +0000
Received: from DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::cece:5e80:b74f:9448]) by DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::cece:5e80:b74f:9448%7]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 09:15:34 +0000
Date: Mon, 13 Mar 2023 10:15:21 +0100
From: Michal Kubiak <michal.kubiak@intel.com>
To: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <ZA7pqdS04x0T7ExN@localhost.localdomain>
References: <20230310122653.1116051-1-sassmann@kpanic.de>
 <ZAtnqlHZ02EJn5xt@localhost.localdomain>
 <9f1e4087-239e-3a1a-dc35-59a4680e676b@kpanic.de>
Content-Disposition: inline
In-Reply-To: <9f1e4087-239e-3a1a-dc35-59a4680e676b@kpanic.de>
X-ClientProxiedBy: FR0P281CA0017.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::22) To DM6PR11MB2937.namprd11.prod.outlook.com
 (2603:10b6:5:62::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2937:EE_|MN2PR11MB4661:EE_
X-MS-Office365-Filtering-Correlation-Id: c91cd6ea-6adb-4312-5672-08db23a3801c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wEle21vc8iwSayQJrvC0QN1IohfpJz+eFN57/Ii/iLWjbslRltPst9Vp26fc2aGuxmVyuZlMCi0JsdZIUw73y/x4WoHyXjbanI7pQ0Xu0JZUDrYEnfY6i5O74RDl7MB7Nkb30jukjU4MPLl62exDrdItGBXblzEpO4l/Jy1fHXHiPCJsg0SY4luGGf2lrpfMWf2OBMx7uYgLwqEy1HAR4DMCn5qlFKVm3dJKzu+g9Fafp/a6+t2nU8E8oUkDSDKN7yfe1KfQc86aINsBtllsBmjFlChhROsv84WU1YxlGYst7kxuBvPEYwpTGjTSGrWxHyfDg7jBxMNjrF0dpAsFJ54GrY5wWxKUXDg/IU6811VoGxhy1nItUqu5xyDBrREcws3189mYWisSfXPNiTdCgZZesMu40klYdSxpnC+k/vnhCL//Wd0GaOiO3IrGn15gdD6OAKwkmx21kq6A+6wynfIkKeYaL97OwNNlXulNxH7l5JTsNZFBiJECcSkrVZSpRu2odlx74tjRPN43acr1297nCB0pa9oWjsncCQG8Bn4mkrq2jPs93htx9XIWqZ4wnEqTqNJGo6cnPgti2rsIxHPqEkMf1zQ04ALbp8vTaNYsE1t1BYLwb/AZQMWa4A/vwMJZUr4sp7KmvcVy63fWIg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(366004)(396003)(346002)(39860400002)(451199018)(9686003)(5660300002)(4326008)(8936002)(6916009)(41300700001)(186003)(6512007)(6506007)(26005)(86362001)(44832011)(83380400001)(2906002)(4744005)(66946007)(6666004)(107886003)(66556008)(66476007)(8676002)(6486002)(316002)(478600001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ViJhm4TklLQfuiO6BVFxtp6wv0qlv2nTAbmjSsI2nYlqyBjRcCMoG0xhGkZI?=
 =?us-ascii?Q?ih7LRG5TLNKjP0jJYjp2YSlTtVuIN4OPuPq/6QtGF8eNYkCFOyY3U105myf7?=
 =?us-ascii?Q?KXniIWiRQkcj/jNoo27KUw5egayOxEZMInFD9wGq28b3ZfFnp6oO92X+7VBN?=
 =?us-ascii?Q?jSgfTm9ndyUWkfdBSnukcavf8cQSCuIY7HO+gxkzT6TjVwgilM2oJV/9ANT4?=
 =?us-ascii?Q?TngRDCNjBSTd5DgkxAGcEop9+BaAeggW2KMByPn67hVAks7ou5aqe7zV+CD5?=
 =?us-ascii?Q?Q6mf5k2TeC29yUC+eh4zLyCNAWWZnkqZaKxEmshng+NuYXIwCgLulxNIOirN?=
 =?us-ascii?Q?v38/3Gb0bfXxpnaPfnHGMNvcqONLZgvECb1WtepAvjQWnvTXmYYlAogS9yOS?=
 =?us-ascii?Q?H0oK7OMLuv8WUQ0a2FT+DeBotpuoKNMs41eskGcsM7n5bsdr/sgVXyARjDxx?=
 =?us-ascii?Q?0yqhOrM5kuacAcPr03KPTRZZ/QmN2jg1cPWAl/Xv5WKusfFHAPmbyCyGS9l3?=
 =?us-ascii?Q?RI1CUv6aM5u6/dGWJMBS9Z2aRp79L1Oogui7AJYhClFhyJPAlwteCLr5J3N7?=
 =?us-ascii?Q?k3xp5WRdPS2xhiaRISHvCKnrJXV6bTbiaxg+DYbhCPSrhOlHVNlmQCaV24fQ?=
 =?us-ascii?Q?tidZJtKknin51dbFTMWnFd2HdDTbDp0jNpuEjLUiu+Cccohz8Mh/ekIl3gJ/?=
 =?us-ascii?Q?rZdM5K2shlSfgqYVFarKDgJHUHf9inw8MjaEp6NEYkabKB2CvSW1BygoKcFC?=
 =?us-ascii?Q?O8f8eP8/j+HB4oChfumM0DLiuIDGeCAMx5i150CvX6dgUExu0SRU2Q4mknV7?=
 =?us-ascii?Q?G1xx/4rGmvSxmELO8DfDHCXsDwaYVjquuCk9bhx8630fr1M+wiEuSkgxeZ0Z?=
 =?us-ascii?Q?/v54PgrUBI59KnAOMQRwIFcdiZ2BthaX5QONODy0OSfY6j9QxQHqPF0j76ee?=
 =?us-ascii?Q?K8hd6UutMdWuFK9tvsMtYSFmmZNnV2L1PXJA5cUn52Ez7ly/JFYNGWKTkTcR?=
 =?us-ascii?Q?L4b9k86H183Lb1WcXoYgkGc8HFOdSd3Nz4X8zVMGAS4rV1fLqc2Ih8jf77g4?=
 =?us-ascii?Q?EDTN8zMTQ0/ljsL+CHGuMYzb3idEeI8YN/FNw1YVhALav6Ct7SSm7wcCMnzz?=
 =?us-ascii?Q?/F0gGaTEjOQKOPADvEChV1b7+vvej1w+mm9ec1mX4mTvCLlOOttDVgAX4xyf?=
 =?us-ascii?Q?RYy2ouqLhngSSzNi2oUPQRUrf1VVzNLVcqNG+DtETqg2YhG+jS7/q2T/7jR+?=
 =?us-ascii?Q?OhWcERC53YbpJcly5MkzMBWMr2jD/z7/9op8r+4HZRD+HOMaykn6Y/qqeNBX?=
 =?us-ascii?Q?+uUmz4+EbWyXLV5lo9ME/tCtun8iCF26nsehYQidLMNyW03heB8rv69ebsoZ?=
 =?us-ascii?Q?wkPGbYX+tcbAC6lvxEZSP4Pm5mFppJgnBqczPoMMEo+4JZ018XthdxUO5rAd?=
 =?us-ascii?Q?r1YgzN9hzF2ZWj+jHa0lxcrTiiq5xzgKEKSQ7WPlM81DZoB7w5PaelvIafeQ?=
 =?us-ascii?Q?K+InLGqxgdYBbBCaKV61zz+oZYXOnjmToRM9wFpx1+/FBnglDoVoqGIWlivF?=
 =?us-ascii?Q?fwdu1OtteTrmdWl9tLtNP0HjvkaJZg9MhHi8C4QBbbFH0eSLW8q4lTJWSsKi?=
 =?us-ascii?Q?qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c91cd6ea-6adb-4312-5672-08db23a3801c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 09:15:34.0445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jkzt6lTx89nYbpmBW0DOvxJ8HLK3zCg88k2ZveYBET6n3gzplOPrMtWp90S4jR/vUrBGwR3KJ/tuv0N6qj0JlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4661
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 13 Mar 2023 15:45:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678698937; x=1710234937;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5mlzV4NfMHDIo7gu9h5MpL4f1G7ZnXssR73mkFdO8ec=;
 b=FcjDUwDPYWL3OHbmYYfq1n+3s4kf683dFRj5gIqjy0U/yNTW1arS+szf
 1J61b8M23uhWTvE2Auq+UYq/aHifR9L7Ogu2JKbkpbfFAFuSddVKiOpRB
 TazEY6ogaHFvQVf7CoGmoEE0CVoMuFOWrvY9qc9svyrRM2ySTO9i4B7TH
 lt2XiVmS/Oa/DETI5MCAnUmh/ipq94iqptHXn4+L2VUyCcyuE/gQwDr/U
 VrV5xa/mHMMtRvNXkpRaUEwANExp9cSY6wr6r0Wc3pefSFwsigVw+N0U/
 1jIEOkC7eoX3a55jd6lX5yDteL1MFI9JQYJZHlwvSnffIA6mGfGf6wZjU
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FcjDUwDP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix hang on reboot with ice
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, patryk.piotrowski@intel.com,
 slawomirx.laba@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 13, 2023 at 07:48:52AM +0100, Stefan Assmann wrote:
> 
> Hi Michal,
> 
> is it okay to add this change in a follow-up patch? I'd like to get this
> patch merged quickly since we have a customer being blocked by this
> issue.
> 
> Thanks!
> 
>   Stefan


Hi Stefan,

I think it is OK.
Moreover, I consulted that idea with Slawomir Laba - the author of that loop.
It seems adding a timeout needs a further investigation. Slawomir claims
that adding that timeout may cause some side effects in other corner cases,
so for now let's leave your patch as it is.
Thank you for fixing it!

Thanks,
Michal

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
