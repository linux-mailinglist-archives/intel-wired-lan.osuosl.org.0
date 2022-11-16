Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E980D62C4D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 17:39:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F0D081F53;
	Wed, 16 Nov 2022 16:39:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F0D081F53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668616797;
	bh=SuByWOL8hoDgP0KilMd0Q36rMRrZnz2xhY733R7LTPk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dQ02z9PB+aCMd+gImM0b7RPf4pZmIu3i5fxmI+c6FQ6dcg1RujtN1NlUROtJrasvA
	 jTAvs6ZC5kfPvgXdbuJgwdNHfiIn8m4k4+9vR52kHRfHNIbIh9o+KtNq6/IIw3eyZy
	 vB6xv33Pd0ObV5h56jHupogLzxmnVBlTWAyn0HMSjTddPGQNtvLKtn7crMqE1drPIG
	 O8KCx4kSZOn3UlQUYDCP9NVwAQQI1n5uPmKagyB/NhScPoBaTc1o/3ZV6eThPU5XOp
	 K1WugFt0l5HBPtFmslmPEO29AD2EWFVCB2TTlZjZ3VPLk9UlaVmTDmntx5090bPNHU
	 +KjlbryMPRxjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26t2yFyDp-Cy; Wed, 16 Nov 2022 16:39:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED2C881F0B;
	Wed, 16 Nov 2022 16:39:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED2C881F0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 339331BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 16:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A28240BF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 16:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A28240BF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A0ExMtKSpqyN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 16:39:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6AB640136
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6AB640136
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 16:39:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="300121514"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="300121514"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 08:39:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="670559528"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="670559528"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 16 Nov 2022 08:39:48 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 08:39:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 08:39:48 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 08:39:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1TkqLWXXN2LwXTaQngUj7W0XfRvIaGbRzRhE+c0XvRhFNdP4AGmvSigrUIps03RbA1ebsO6/LEbn3d6F5fqbmE6N+sHllx8xDBDCOuHIQQqgrVfhGUh3j+mQFM7I7Hs60myEVLaBzmv6RiWfpwF33HxyqOdYoBCFCTesQr4CmnGcbbGGcTpxhxY9cM48N9xa8fyprHavn3XtWke9tJBJAAKYbLwKAOp4QBCF3qR+dFcO1oucFXu0PEEIHxKQ7JqFkQsdtIUsRwNfymh21ArU+bqCWyPbibBUs8llFErb7XRoj8lSZkPx/dfaskdU0RKujH3X0k3jyRX61TKA3rXwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EdepVg8liHyZ/n428fjul/xoFsR5N/iG0Q2uLwcKZlA=;
 b=RHEgufdbzFtbgxARmmcs2KPTo5y6vUSejGNkWm3yD/8HYyzgvdWpfzac+62EKyAuqvwAJjTXAGQ50QCndARicwi543rzLzs4ddADGk5n4mWnJLOPnkp8+6bdXQVOfK+/WeF97rszQzzTD/S9j1ll6XmB4dRjQeVp5gc/kncQrcywyoBDl+2p1b1ALzCRKO8CNS26m0SiJIW/cK9VUWM9YkLwv66ElJur3L6r6hn53ysSdbZ54nuzRFQek5IySpdrUM6jytJ1p7ukriS3nO6rxDLvdz2ia6JrszsOTJvFD8/Ac8mbxDyFCgLiaMVBywEde0yOcUE+BaF54otDAiUCrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM6PR11MB4561.namprd11.prod.outlook.com (2603:10b6:5:2ae::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.19; Wed, 16 Nov 2022 16:39:46 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6%5]) with mapi id 15.20.5813.013; Wed, 16 Nov 2022
 16:39:46 +0000
Date: Wed, 16 Nov 2022 17:39:41 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
Message-ID: <Y3USTWD4GKx7ynkW@boxer>
References: <20221116044756.1021102-1-kalyan.kodamagula@intel.com>
Content-Disposition: inline
In-Reply-To: <20221116044756.1021102-1-kalyan.kodamagula@intel.com>
X-ClientProxiedBy: FR0P281CA0103.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::16) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DM6PR11MB4561:EE_
X-MS-Office365-Filtering-Correlation-Id: 00e286a6-abfa-4222-ce0b-08dac7f12c08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0IJICct48sAC5/h+WzMVIdrDm4L4/Bn8Q9USYAeq/w1TexnCDbn9mHqXzLky2GTmNo3N9OEcPXK1IbRCF/RVGZxGt+O/rZl+j9GqNjmbTBErc4tIwoK90zzFSVkHra9jtDORFMfFVRiZ8RFR5J/KVRR6M0CQYgnCcuB98wtYmVGEuNbazqjpfv3jinhfg6HgAg0QvZplldu6s9P2xDuVLE/pb9apASufaKMvWP0Sev9KE3eQm541BzMKxL3psXT+QsCXICuQxzKgVAaLEYr0XbK9xDgKheE6bapuWJNFJTyY2ZfdcrwtKDW0bVujPg2LRJ5r7daAniu4/19XI+1IDxJj/TqSDhmIwm+wU4TjwCa1ne2KYPBOng7tKhVbVhTF1UZYP4cIFCaXnN/qdXZgXzPyR4V+pXaCV8qj+JeU2CxL+jeIRE8TWObyg8zwwjR1VKAXsqsqqsI97pixjnQPaFZmtSYXk5d/++TFslLjXxammfDWrTl74bDzE/drnDTN+JYVHdHlVvVN3ZIZjb3NQr7z8IfKC7QhcimkF6PVyBNYf30542bZHyw6HRFAeO5xY1eIh+G521nugCv3aXRTk0Ze/hFeoEfjDaxz18zG8cBRAFGvu++D7gdFY2hUBJ9VRizjMS0K4Q+eHVcsPt4UTZ8SyMtK41oTPrfVHn4M3S325tBt7nUEcgAXUy/8eDBftdrbQFJVAl90Opyyro7CoxD8u+IgoPXOcNtHUO0zq4o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(136003)(376002)(396003)(39860400002)(346002)(451199015)(41300700001)(6512007)(9686003)(8676002)(66476007)(66946007)(4326008)(66556008)(6862004)(8936002)(2906002)(6486002)(966005)(5660300002)(86362001)(6636002)(44832011)(316002)(186003)(6666004)(6506007)(83380400001)(107886003)(26005)(478600001)(33716001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KRFDCdnKM+09Vk/HhLtLDkPXG4R29gWZCsQH1BDSHc1nKrBQH1XG3sr0iONE?=
 =?us-ascii?Q?DWXA7BGsnI5usA2bkkDwg91f287d3KRw8Kn4VQyfdXrtPmIgv5YWjpJnpE2m?=
 =?us-ascii?Q?6iXy+6jsJ+WsTfhuXAHpZhoL4MbSjc3FOuJv1BrmJ45+vJgWn1x7zkcWyBEo?=
 =?us-ascii?Q?9iDLVsraIIRPRyhuHhVjDxcCSE8c8PA36wCRAD9HRBdCxRypb/YUdvCcpRlu?=
 =?us-ascii?Q?j+8AOjp/zhxijoMW1g1bSevP5TOOnvRuD5PcGAOwrA2CnBcpraeTEBKt6ytO?=
 =?us-ascii?Q?EmUZMua15kqhe6++5PCy0njfnTSdsEkw+lEW50XMcFfNh/1FgpFSgQa8b3Dg?=
 =?us-ascii?Q?uvt2a3GrOYcYSfa9e87CMflblzk3hrTiYigD3VfEIumJBmiJEe2Hb4phWJZ5?=
 =?us-ascii?Q?PBL96iTXH8GY5XO0GMHRG0f+WzqMvQPPhRs8vx4/j4P0dtrT1RIp/L3XaTKm?=
 =?us-ascii?Q?t75bsHzbvQws5yfIo1NSAXS3lE8PdmoG2UCYD9ErcOuc1jQSe9VD6gccUDmi?=
 =?us-ascii?Q?DzVaV9kV1NPGav5qsTf6WCJO172wNPzu2mSrqTwhjB6CD0KJUVWR7yE7fRTx?=
 =?us-ascii?Q?EnmhCdstERC8MLZg0ZMBsBclL9HtV9XzkM54tD+KApkLyD3C/YiyaNHV+rGo?=
 =?us-ascii?Q?/goZnZOSVzGrc9JiBWXh2IWdHUxoMtz61UQqdJOGMlR42soIXw59sBaq1Uz4?=
 =?us-ascii?Q?fmBOGP6YsDbW8dVSLgy3AMDRsbxyzk8zJce1aaSFdOjy0IFQOoSz3Fe+URXK?=
 =?us-ascii?Q?Yklj7KrZQh8FieR0/NyCzqwUdZy9Lmv0gSKh4TIa+/8VXEL7wP11WhQ4slgg?=
 =?us-ascii?Q?MDxNjaWLewSzFE+TjJCZIT/CzTt4kXJHWiOE9LRRq0AkXD9RVB7KvND9d3vE?=
 =?us-ascii?Q?u9/hkvbmB5Rm3AuVp3JUwCcI7dwQ5YvnA4kxodnuwb3j2Tm7VYlzXjPorifc?=
 =?us-ascii?Q?r1lJcgAOQMxNyVSGrC3boN9qPGyi9gY9bTk0iXVhM5ov9sweZvdg2deZN9Mu?=
 =?us-ascii?Q?PSckkMpFGukndkScL4dRxcus+rgvheIaz/5vpHAUp/fiWGJmNndxqIwSnoVl?=
 =?us-ascii?Q?/oxEr1/Bn16Xy3D/J+QjYtiGVCThTj+lVO2dV3is6KRDjCkvBsNtDsebtVJB?=
 =?us-ascii?Q?xgf3EzUrEChnwx1USBh16WdQ5HPu5iUtcsPtmeZnNqcnXnj5ua3IuDACnG2A?=
 =?us-ascii?Q?tYCcdwWKdV5YMJX1p9GvRTLkJno6rC5IaPa5bc6mBNC074RvxYHLf8TPW7YT?=
 =?us-ascii?Q?DMygE11BalVff8dg3rRhuNJCSy44qpK1W4+H70q5wJbjBIBlxKHBYpikGQ06?=
 =?us-ascii?Q?5teBgQ8rRlpBgcNdR3bvHUMPogiI1AHFpWD+aqgEEH9QOByTh9i87jagiQbS?=
 =?us-ascii?Q?1gQRXbstxYGZo/qXKALiU2Z9ozaf2lNTAvP/JTamMUBZ3sBBySJz4Njs9fNr?=
 =?us-ascii?Q?KCPaBJCwpE+OoekrOSUGjNTk09LomBxu/211owgoiGqMSMQxGh4YiCSi/3N9?=
 =?us-ascii?Q?MOw6AK9WaZfYfOhVzSJ9tg5I9WBpv+CYBkldFbx3Anc+JBdjkWp6cvhG3xTq?=
 =?us-ascii?Q?z8BQv+tWv8c4xku8s0HxMMO20k8dMjOK6QzjAaxNSwzQ25uRkWjOoh9qhmNX?=
 =?us-ascii?Q?ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e286a6-abfa-4222-ce0b-08dac7f12c08
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2022 16:39:46.7430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CmmmMgFDvi7xbXYEEL88G1Cm1mbaWUAv2yjsbIzf/QsYJAHTx0FnUbERtwT35yFWJA/FNRhd0sjIsCx4G13I9ViMeTizUqCeCQKrFbbRqoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668616789; x=1700152789;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dokiGuJLP3rVlRHvlguS8ELLsWQ2FEuB93vgilT7Ti4=;
 b=CQFJ5iZsD/DoDm/XaEExLUaDiKSqq2u3fHt4SJYvLzIkyVcMb9QHhHeF
 k9xST4mVuqvx+CUOmUT5HvaS+2q6Duvdu7Te+aGOe+/7wjEOYZ+SievvM
 DST/HZdCigPX7aYANktXkqm0HLHiPMbHkakXoYGHp9QEANxn2MUw5F0qD
 Cpn1PA0D7GltBftJB3au24N7pfdALNTnwh2Dy4dKtbFQpZYRXV50jK5X1
 BX/M2/IcDcJqUxGi2lx+WNXysZdk2unPCSYmzixem1tXFz19ydUJtI6/S
 P4SvvPK+kJcSwSG/q0Iv1cDyd0aWMNfj3aSJj5qOw8O99wMD++HAB8m3W
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CQFJ5iZs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add more usage of existing
 function ice_get_vf_vsi(vf)
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
Cc: Brett Creeley <brett.creeley@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 15, 2022 at 11:47:56PM -0500, Kalyan Kodamagula wrote:
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Extend the usage of function ice_get_vf_vsi(vf)
> in multiple places instead of VF's VSI by using a long string
> of dereferences (i.e. vf->pf->vsi[vf->lan_vsi_idx]).
> 
> Fixes: c5afbe99b778c ("ice: Add helper function to get the VF's VSIq")

I don't think it's a fix and a net candidate. Also seems date on your
machine is off, some people on this list might yell at you for this :P

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index c6a58343d81d..e6ef6b303222 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -113,7 +113,7 @@ ice_vc_fdir_param_check(struct ice_vf *vf, u16 vsi_id)
>  	if (!ice_vc_isvalid_vsi_id(vf, vsi_id))
>  		return -EINVAL;
>  
> -	if (!pf->vsi[vf->lan_vsi_idx])
> +	if (!ice_get_vf_vsi(vf))
>  		return -EINVAL;
>  
>  	return 0;
> @@ -494,7 +494,7 @@ ice_vc_fdir_rem_prof(struct ice_vf *vf, enum ice_fltr_ptype flow, int tun)
>  
>  	vf_prof = fdir->fdir_prof[flow];
>  
> -	vf_vsi = pf->vsi[vf->lan_vsi_idx];
> +	vf_vsi = ice_get_vf_vsi(vf);
>  	if (!vf_vsi) {
>  		dev_dbg(dev, "NULL vf %d vsi pointer\n", vf->vf_id);
>  		return;
> @@ -572,7 +572,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
>  	pf = vf->pf;
>  	dev = ice_pf_to_dev(pf);
>  	hw = &pf->hw;
> -	vf_vsi = pf->vsi[vf->lan_vsi_idx];
> +	vf_vsi = ice_get_vf_vsi(vf);
>  	if (!vf_vsi)
>  		return -EINVAL;
>  
> @@ -1205,7 +1205,7 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
>  	pf = vf->pf;
>  	dev = ice_pf_to_dev(pf);
>  	hw = &pf->hw;
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		dev_dbg(dev, "Invalid vsi for VF %d\n", vf->vf_id);
>  		return -EINVAL;
> -- 
> 2.38.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
