Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04777747573
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 17:39:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F8234014D;
	Tue,  4 Jul 2023 15:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F8234014D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688485160;
	bh=AaBC5TqE0jkn/qSe5UECkMrGi7SlBtN4HaHUgf7iIN8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q6JtthzGMjXblwM90x7Q+vElinCBfAkME32wfpm9lQMDb3ndnLzPp92LbdEMvyxQZ
	 zCaRPAnyspRD8hcxGC7cx1Vz9ryfYtxD0G51rmdf9jXgVF0x82Zzlul0/jwezpPjPT
	 KRM/LtT2m0U+uNTqw1I21aOhYlq8naVZQ+QuLhQ9T+ner5xyBwKbV6i1iw93HJm2RD
	 RcoJf3D9OmQ144QquyIB8HJZojIJYp8P2cAme7Xqa1UKa6e89ckPmnOFzUPFQzd91F
	 sYRHWc021bYHCs/e5ISoECHOUk+NF1EBvD5+z6xXUZ+fT4lZA4/3i+2pS01gN/FP6n
	 fu0xbB89LlXCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ee2unAfsGt0y; Tue,  4 Jul 2023 15:39:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43B2140164;
	Tue,  4 Jul 2023 15:39:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43B2140164
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7AE1BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 15:39:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65DAF40164
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 15:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65DAF40164
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Juf4zdd9oFS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 15:39:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80FAE4011C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80FAE4011C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 15:39:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429186314"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="429186314"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:39:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="1049431930"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="1049431930"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jul 2023 08:39:12 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 08:39:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 08:39:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 08:39:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dlVnzmgwZHl/Vaz+d91xcbgwokEnpXccA/oZDa9sLiudtl3B+Zqao3fIe/TiJjLQMXvMfQ1ZUwbCbE3wBdgXb4Z55+ki3zrAyjw948cQFnBfYIvTYoblShvllW19fpKDJZzQfRfBNjQDfgtGWzV7jjU8sTi0TDSA5RPGYuLG8UGzc44Acj12h6e/QAAzAkZJBIiJmAWe4WaYJ+BXvcXXcrSAisvHlsdMaRcjxDYiD/OS/Tr3MxKDWlVRf3WtVrnssJNX5eaOPudhWcip5HbNsAVu8v5tBlQZArO9rk44i8Vpb9xYNnHK6G6GYzsBTdzKbN9TlOuD6SFkibP9Wzawmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S0eDwElHqk4SIYicUJ3iChvLdIoBPQpEFr8yj+RzZEc=;
 b=bIdRGB4wqZA7gY6zZrpmZXi4unlowKjvdQbtQ/3lu+UcbWWjCDN8y/yQqCos8SuRWVW+g68NtxGXxI+jys73YooRW5IPUgvin8My+DK0Z5RGGSiHEC0x3w4dbBQ7VwVBD6ZHTp4Q3XRFqD4bxcZ/ZHwAQTc4QZ8hrc8TdPRde0gkeuyVdZNGT12EBAUxVjIHf5qrgF22dWkDlKA7k1DsELqiXQQoupD6syCnGBTEHmWROwXDcWsfJwBHEwwqOsXP75bS29BaKxT5AwXpkP8LgfzEldU6WQDLsOadxueJhP4DVD0TpyY88XKiy0/T8sD7EDw939Lej+5XRS0/z/KsAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CH0PR11MB5473.namprd11.prod.outlook.com (2603:10b6:610:d4::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6544.24; Tue, 4 Jul 2023 15:39:04 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::2391:92fd:c193:e476]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::2391:92fd:c193:e476%4]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 15:39:04 +0000
Date: Tue, 4 Jul 2023 17:38:56 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Message-ID: <ZKQ9EAprC0KDcri3@boxer>
References: <20230704095915.9750-1-sriram.yagnaraman@est.tech>
 <20230704095915.9750-3-sriram.yagnaraman@est.tech>
Content-Disposition: inline
In-Reply-To: <20230704095915.9750-3-sriram.yagnaraman@est.tech>
X-ClientProxiedBy: FR0P281CA0073.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::13) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CH0PR11MB5473:EE_
X-MS-Office365-Filtering-Correlation-Id: 32b59ee9-d36e-425e-f523-08db7ca4cbd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sOYln0E0dn8iiwTHTCDuMzsiLjq3NWhJ9WzLbtDqlSnNCwulzTP2mJ28xbJo6+m1sLeMQTrsQAJRSrIx7/n5ezjDZRVH0e9Qe32vEq7ggsJviFLUzSyDuU78sTvBPdBVAwuyTt/thJ7DOmIMK67bvKYSHxHO3Uqtj0072UHPWPU91tFjldeRtrPHBqIgE9UDIRloRgG9RVlJB0zRJOTuNGc6VbEA6kcOloEfIT4ezpKYaMbZJMJa3Yu0Hxfzi8dTaUwdMVLEQyw9b35+RBCPMVg6PxyEeCvYmYjvuRlFp4xHXitXfi+mpJn7r0m1g5ZFXzeWBzDAhEz5dFYy8U0L8XwEZAOp6ecItHqI6QtSDVb7LUkIyXY9TcdtbO9UcRFhbZr4LuAMTf4m8IGVp2i8qw1fqgPVGWGXifKK76ywIWPko9tdiwvcsYU8+aVvgPLiQEZQC7vzDSYxXbZZq2AfJlxxio+ZO1bSkUG4bw9XDku1hESw7fbqinE7s/Pssho6zr8tI2scpkRPfMGt1lFZcbCgPgk3YIeUCtJqVKG76RV2vvxCExpsmRCn3rX9Rmwv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(346002)(39860400002)(396003)(136003)(376002)(451199021)(316002)(8936002)(83380400001)(8676002)(54906003)(38100700002)(41300700001)(66556008)(4326008)(6916009)(66946007)(66476007)(82960400001)(9686003)(26005)(186003)(6512007)(44832011)(7416002)(86362001)(6486002)(5660300002)(478600001)(6506007)(2906002)(6666004)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HrpHIGBGi46BXO8JDRalHnazvd+1C0WGYI0JzyoCk00PRD+0HXnJitKt1dNu?=
 =?us-ascii?Q?bS3NAhd5r5SOrJMJEssECYiMRcG7hOx6XtQF0X6Mbk2bQxRjflyF9FM2Tbsg?=
 =?us-ascii?Q?e6Exvc+gn0v+A+GbiH8p+WuUwdY/nIXoiTnIxm3XJgOJxP1XR/Q+uBtrNdKC?=
 =?us-ascii?Q?6p9mjXm8+DwuI7jHI3GGWtcyuQoK/O6pQMlL1EW6Wvd0eHeHzUfq3NDEgobP?=
 =?us-ascii?Q?A/9qWGYw6DhXIxAopa8niXL3CrxjSIeg9n7/jH5+Fqjz+ff8mxZo2U3+g/ex?=
 =?us-ascii?Q?CPiW8+fXXcspQcyeaGbQXdG3IKmwPMiqeg9DUf/eFGGTkXjl+4yxu19maTuG?=
 =?us-ascii?Q?rklEJ6yGEfMzMkuoCK/rCiJlvRy0AZpdtbYsDWhkfUHkXZMs+Y6LmehxVaUk?=
 =?us-ascii?Q?pp4hoNkFc6xAfUVXd36+Mn03mt8m40R/rDB0fTMSoycbAWvKmDpt9/R/DHom?=
 =?us-ascii?Q?hKYISj9UdXcO236zNkJssqj+WZPi9P3N6wAh0tPAf25x9RvVvWffbuc//dI1?=
 =?us-ascii?Q?FTutdbXsn72Ze9WpN9cfxnag+Us853dg45gyPa/8C3BafZRkFgUQ+BvXie6E?=
 =?us-ascii?Q?NFy+1osGTfpACCxa0bkPjdVoJ345YwUg84IwZdweJ0ajgt+nf3itefLlB1hS?=
 =?us-ascii?Q?itr60f07NNTj/G5G3Xy74LeQRFJ+Xdl9/i0c7NFHYthvSrXOyhlPMUzpVrXS?=
 =?us-ascii?Q?r1OXeRpPHXLz85RNQX+Hu9lZUFswCefEKEg8s3/o69OeuoUcsTyJ716UsSkP?=
 =?us-ascii?Q?2Z5yGol0kyM7m2w2KS1dP+HP8ai+cN8HbDXihlm+VPIouSev4dv1tQYIU6VV?=
 =?us-ascii?Q?y8D2SFststIiaWv/0TazyPU+XH0s5A7nUvbncax6UlqV2LxGW4n/uRJyEArp?=
 =?us-ascii?Q?QA8Df+qKKUhS1I75BTQRvtzrP/oPPxZEJBtX/sch6ZH95x+qtcovbCAOfeai?=
 =?us-ascii?Q?E5rIFHPsV0PS4seqzplrDNuE6qCbWM2dNAJBLhAgQUlGBml9pyhH7mM2SEZp?=
 =?us-ascii?Q?5zfNHuceT6ZopOTRITni/DepDUerrBvhzh6Vo3OnxEURkYSo8R3iCDzPmeUl?=
 =?us-ascii?Q?9wuRCZNi8ujRwRdxoC9BvTIND965p+rtLsnOqh8M+UX/PEmuQr4Yu/jPWJ0T?=
 =?us-ascii?Q?fzfXIlD9Gt4j7F/M7PYyg9hOg9KjW3ZvaGLTkZL5jP81S0lFfYPF9HSmoiFE?=
 =?us-ascii?Q?enKZU5TQp5oOA88fwfcW3jobWz6ZsduXNkyvz/+IEN9iXF28ZlTCxsKuNiWQ?=
 =?us-ascii?Q?M0+XgOKsBYnMGxCcrRYKo1iIo30P2mQPCmEdIbInOfe9NUXnd6+3c0p8bA/n?=
 =?us-ascii?Q?EsW+cpyfUW8Sj2TmkBMA406YHcIZa0SFjUix8atptLqpjQHWyZw9OtwBm91B?=
 =?us-ascii?Q?WXScjd5KkflyuUvO2sDGqfYjUDe2CtFFc+4OGd0ExPl5rZ6GF5UjdpusTHBQ?=
 =?us-ascii?Q?uMzLf9sJpBQ7T0f1PVGQoMMoftbXFsHKbp/6b+bfEC5p7WBRU/izkdCUTTJd?=
 =?us-ascii?Q?+WIYo/RFI0fIGIiudeo3TZ603sdLQ5q/fXf81RDQnk7gk6wYFM0ITgCfYz17?=
 =?us-ascii?Q?pRwQoibJr3inIGZKHKw6qHdkd9MzIe5f3/JjIKa30sI0uH7AivpU8y6mn389?=
 =?us-ascii?Q?9w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32b59ee9-d36e-425e-f523-08db7ca4cbd3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 15:39:04.0435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Nx8N5hC3589Vu9ErN8DAxkMQoLHc71V7mzxhCdhipM2AW/kyOADPdsLcVxPTAl8SXPx5GxaHUL+A7emBEcoEWANcdvkhisOIAaDvU+Z018=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5473
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688485153; x=1720021153;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nNFAj1619C2REi5eatTxdjNG8/MEBXXqtc+73EzP/hI=;
 b=fyf/NjlbI46K8j6drMA/dsSy4ZEg+p7xehCXougyAKzKsnP9ovqAHAHe
 DizP5znGeijnrdLMgvP6F7Bxzr6sRySQwef8cvECOui6kQJvCRrAuesTY
 X4GOhXGA4L55oMBUO3sy69h6DFuVrQ1ClvJ+32HjsPPKx+YC0alDqArFj
 cqx8HcZRTAPJ5sUOy+gnXrDqIJXv5BCjg5zgbFndrXUHL6cleXl7iGcwg
 3zAEqT785rTdqEJPPhfZHIT9wKi1FZdVqWrZraKk1bzikz5FP6BnO4LJg
 dbWK5PtpPH1JLbO+V+/Gps+mB5n/Oh+KoktfAUWcWc7MJSe+EpmS0P3SG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fyf/Njlb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/4] igb: Introduce txrx ring
 enable/disable functions
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
Cc: Jesper Dangaard
 Brouer <hawk@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 04, 2023 at 11:59:13AM +0200, Sriram Yagnaraman wrote:
> Add enable/disable functions for TX and RX rings, will be used in later
> patches when AF_XDP zero-copy support is added.
> 
> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  5 ++-
>  drivers/net/ethernet/intel/igb/igb_main.c | 41 +++++++++++++++++++++++
>  2 files changed, 45 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index 94440af6cf4b..5fa011c6ef2f 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -384,7 +384,8 @@ enum e1000_ring_flags_t {
>  	IGB_RING_FLAG_RX_SCTP_CSUM,
>  	IGB_RING_FLAG_RX_LB_VLAN_BSWAP,
>  	IGB_RING_FLAG_TX_CTX_IDX,
> -	IGB_RING_FLAG_TX_DETECT_HANG
> +	IGB_RING_FLAG_TX_DETECT_HANG,
> +	IGB_RING_FLAG_TX_DISABLED
>  };
>  
>  #define ring_uses_large_buffer(ring) \
> @@ -735,6 +736,8 @@ void igb_free_tx_resources(struct igb_ring *);
>  void igb_free_rx_resources(struct igb_ring *);
>  void igb_configure_tx_ring(struct igb_adapter *, struct igb_ring *);
>  void igb_configure_rx_ring(struct igb_adapter *, struct igb_ring *);
> +void igb_txrx_ring_disable(struct igb_adapter *adapter, u16 qid);
> +void igb_txrx_ring_enable(struct igb_adapter *adapter, u16 qid);
>  void igb_setup_tctl(struct igb_adapter *);
>  void igb_setup_rctl(struct igb_adapter *);
>  void igb_setup_srrctl(struct igb_adapter *, struct igb_ring *);
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index dadc3d423cfd..391c0eb136d9 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4856,6 +4856,47 @@ static void igb_configure_rx(struct igb_adapter *adapter)
>  	}
>  }
>  
> +void igb_txrx_ring_disable(struct igb_adapter *adapter, u16 qid)

they could be static funcs defined in igb_xsk.c i believe? I'll review the
rest after you address the things I have requested on cover letter
response.

> +{
> +	struct e1000_hw *hw = &adapter->hw;
> +	struct igb_ring *tx_ring = adapter->tx_ring[qid];
> +	struct igb_ring *rx_ring = adapter->rx_ring[qid];
> +
> +	set_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags);
> +
> +	wr32(E1000_TXDCTL(tx_ring->reg_idx), 0);
> +	wr32(E1000_RXDCTL(rx_ring->reg_idx), 0);
> +
> +	/* Rx/Tx share the same napi context. */
> +	napi_disable(&rx_ring->q_vector->napi);
> +
> +	igb_clean_tx_ring(tx_ring);
> +	igb_clean_rx_ring(rx_ring);
> +
> +	memset(&rx_ring->rx_stats, 0, sizeof(rx_ring->rx_stats));
> +	memset(&tx_ring->tx_stats, 0, sizeof(tx_ring->tx_stats));
> +}
> +
> +void igb_txrx_ring_enable(struct igb_adapter *adapter, u16 qid)
> +{
> +	struct igb_ring *tx_ring = adapter->tx_ring[qid];
> +	struct igb_ring *rx_ring = adapter->rx_ring[qid];
> +
> +	/* Rx/Tx share the same napi context. */
> +	napi_enable(&rx_ring->q_vector->napi);
> +
> +	igb_configure_tx_ring(adapter, tx_ring);
> +	igb_configure_rx_ring(adapter, rx_ring);
> +
> +	/* call igb_desc_unused which always leaves
> +	 * at least 1 descriptor unused to make sure
> +	 * next_to_use != next_to_clean
> +	 */
> +	igb_alloc_rx_buffers(rx_ring, igb_desc_unused(rx_ring));
> +
> +	clear_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags);
> +}
> +
>  /**
>   *  igb_free_tx_resources - Free Tx Resources per Queue
>   *  @tx_ring: Tx descriptor ring for a specific queue
> -- 
> 2.34.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
