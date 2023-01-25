Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F38A67B56D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 16:08:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9D2A4118C;
	Wed, 25 Jan 2023 15:08:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9D2A4118C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674659308;
	bh=MeCQGvVh0LbDCWw6uDdpPIExnEcnri5SLoqPMKMOAKo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l8xBVkFuZ3doVaFpW0URpO3tsShh8wiRcVGl45rL75I2pMiRaRPW593Nf3RdYsIiJ
	 D/SArH3ygtz+2CHYtr/GVt5ryqiNwtgkFWPjPDcYeYPRibKBiakdwIs7LopMCSeiuX
	 NyCbgna1T5Eh9Oe51IoP5s+7+BW/v8zCbpuU2/wh2jpyQNrfwuy9Tmwevz2DD+NBke
	 WrHu3KsR7SwidjzfJYNoTJE2Q+YraHjRnKEBZ94OlIQqix4YdLKSbbFtRekkV/c7DU
	 rF1AK8njm0gWbypp54WFlZo+6U2basXgTcK4iOar7AEggb8oga16y4vWy3U6cyWMzj
	 t3wN5ND+M3enA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OSXwmt6_3sz1; Wed, 25 Jan 2023 15:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB063414E7;
	Wed, 25 Jan 2023 15:08:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB063414E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1F51BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 15:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CEB8E60FA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 15:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEB8E60FA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6fshwki2oG_K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 15:08:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37A4860DFC
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2120.outbound.protection.outlook.com [40.107.220.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 37A4860DFC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 15:08:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hk6jp0xEaDRSzFdkJyVmb0bFz8BK1E3DJQh2D0GinUedB7vrUcYa3T10op+lI/DY0RPbSzBw4z3KF8dM2YZGLuiP0CwsQ5AbQ1EEHDUeb7zc4XTADzu3N4W6q6exFsR4GfpXxZBl4feHEult6vpHkdCS6qi0bdjpk4w7YiDsSLfslizjf7aRaH6dR+fPWCde5V70UEwXbvxqWOKpPg+iNdC/r2LWQCAfKTZM1M9y9WKfS8FWXRSZWFo6eYm3PPhJBi+a7XF50vLvCxQP+CmcLoSdyQlGXxVPdsvBtKQMI9ML1wBJZ0oXuYGr6zarqajqEEHEeqPfHMefzl4iQMTFXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WgoP6nt54NVHJuTpSMDLW6YT4iEokTmnX7jTJJ19wbg=;
 b=CavfcFn4zYAY/GFmR2NbIxAwyd/ZSt0Kuh+ODgnUvQwaTrhGeawh27I0HWXm0eKpX+i/xgDJsUFJNN9tJxCeySeRuDFBGQmxDqGsw3hkJOCcTBd5ueZYEsCs0dmecWhVQvWA1C7VsSfEsWuX+nFvPZGBxrDRydYxhYTPqqQB/OGT30BfguNE2/C6EkXq5Z+u1LOPunGyBS0UzKZAgrE1Xf2Om3e+lAYqAtK6CRqyUPZ1V/4+7S5/c6gSuOJGQirq+Xik7RhmuJSeo8Mp3aHmbgYyOZIQ2r1ofhq/5HHPznOwB+Sy3ddbdPFB2W5ZlE1/n0ilpCQYLGRdPKhx582ijg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DM6PR13MB4461.namprd13.prod.outlook.com (2603:10b6:5:1b6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21; Wed, 25 Jan
 2023 15:08:18 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65%6]) with mapi id 15.20.6043.021; Wed, 25 Jan 2023
 15:08:18 +0000
Date: Wed, 25 Jan 2023 16:08:12 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Natalia Petrova <n.petrova@fintech.ru>
Message-ID: <Y9FF3NfHYFdQlKei@corigine.com>
References: <20230125141328.8479-1-n.petrova@fintech.ru>
Content-Disposition: inline
In-Reply-To: <20230125141328.8479-1-n.petrova@fintech.ru>
X-ClientProxiedBy: AS4P250CA0012.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:5df::18) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DM6PR13MB4461:EE_
X-MS-Office365-Filtering-Correlation-Id: 54e52dfb-8b0d-4bc6-a8ea-08dafee5fd5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4GtH5yN6AVum41usuMaDvediwyD3uyqM8I5TQCCQuutQ8XnTt7VGzpEeaemx/BSr4hdX7foV243C+RkTeQsFL5RgX+3eQo77Re0kLgwTGsUln+ob+8B078TEpKJ+dZJdGmsRxQjl+VpELragAmTilbXnSG/FJ+49V+QS8WVqZZI1EM+Mco6qtmGV4UDT3tjn3O7PTTKTieqDhDIhmyqji2OmozebWuWKZql1QUduUBot8gQuXh+GoV2WxBRTXEtq1yjzjlriF2vNX116Df/ufSyrl+GVywFdiIRP4yV15sNxvwjsy7ahNQdIXqhwE+geCirDcEBqmQozuTFR8ztuE5/OmbiOELqR/FN7ZCRMkb2+13z4qF1HRVLOqCsgBw6yVRbp3c8Rja+iUZR2MrFqDKmVlUrYZTrr4EfdxGxZAgrZDyJU9NBIb/73E01N18tC7rzZT1J8q0VMu4RGZYJosilkp3mubPzV3nYVVLpm1TFHlfAkxVhcTyKqvi4RpVZVTaqPRVhfz1NHsih8cIbDoSFH3i/xvGAQQ5dzYArKmjST46Li4kPp0Ijrgbye9+dQZj6NL2o4YXK0ADAj/pKuRorp23RSQ3DqNUCJnB3bewTnBDJdjG0tZ8phhm3dE70/BNerCT/dI4M6rWW/dHpoDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(136003)(376002)(366004)(396003)(39830400003)(346002)(451199018)(38100700002)(86362001)(36756003)(54906003)(44832011)(7416002)(316002)(2906002)(41300700001)(4326008)(66476007)(66556008)(8936002)(6916009)(66946007)(8676002)(5660300002)(186003)(6512007)(6506007)(2616005)(83380400001)(6486002)(6666004)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cusIBQbpWy8SYVPwfI7/iWjf60ecQqPXkBTIDWHcsa2BmESHkugbRYjhMER/?=
 =?us-ascii?Q?kdSEmggf1U+RiPcgX7BzHV0ODFZ2nPdxR37zWTL/Hguenrl7JoBiKjzHLTmB?=
 =?us-ascii?Q?dQGW72clTvEMZ4gjC5BZD42Nw2k7flECi/ge1qTqguRPW75hoq7CgvhtSp0b?=
 =?us-ascii?Q?c8ieBs4xIxx7DJ13143MCtyQxshQef5wsqB4Hw51G3CdMUSgLc77JZY+Qc08?=
 =?us-ascii?Q?ZahmVSv6awt7C4Rtgf57xBQdZ7WCu8F7oDhL74HURTBOiQ7QjD83wfNAWS99?=
 =?us-ascii?Q?CCYhSCuRbEF7O24ZGBKCrg65cHARXtwKnsRGY0vGoCnEzmd6jiapMb7Y3u9R?=
 =?us-ascii?Q?HdJj4UOstC7j1LRxPqctMXKP3N7J1ULVKFJGwiac/PcKl9gSjpNgwQfIt/Uk?=
 =?us-ascii?Q?E3jmrsNzSNOKEefewO6ncI7wtrCrFOHXzeSpLJnGC6HD4yrGQ+aliJfg2vs5?=
 =?us-ascii?Q?opSY6NXX/pTv4q3icoMFRBziQGJBJRf7S6cQzL5Z8aSEPkXwCxLwWuTFMme3?=
 =?us-ascii?Q?3i6ABfyu91yZ4Q8CpGZJlzrBCMiFrJiGkfgcWvrHutChAnm6rvsBG0IKJW37?=
 =?us-ascii?Q?s7UNaAGT+T64ryTlURgSAkZiZ6UZhSIp9wHLou6uhBVXQB5azAAwPhVLKPYg?=
 =?us-ascii?Q?M7rFADJfgtn6DbmyXw4Rc/99Auw/Pgyp+6duAy3Cd47Fb8g5uqwvifvWc5jC?=
 =?us-ascii?Q?TZlKecR0I7o5xSj3CTSI5dKFoZ3X2Ydqvkwp7SkQUktShpm2Kc7w0zOCQXBU?=
 =?us-ascii?Q?cdRycxXRAeIagSsRVFHaUygGzBlNacxLLIGmwPPraZw3huWclFW3PTGecznK?=
 =?us-ascii?Q?ltx0xxRa5tU73iy1haGkD298yo2oWffjXDPW7FQsTRjxG9f2Gr7kkMcqK2Hm?=
 =?us-ascii?Q?LoO7weEYBLrdoHanWI3qzKruxaXeeCzE1CN/7DmHit0TEBLDISI0Uar7dXdZ?=
 =?us-ascii?Q?qMUEtOoeE160KJiPYSYmRo9n7jbDwJO7g4l/XNIuFl4lSbQF0JZpux6RpqPJ?=
 =?us-ascii?Q?G7M9DqcvZmS4TXN5UTHybhK8yuQ/QKJ7rl+y9I+UaN3pa6LweqBNw/xlAgal?=
 =?us-ascii?Q?ho84RHAH3KLr/RdcwnMn9jcYoT9QirlEcz1QILvm9lPmSLcrAqK9OKwP6tId?=
 =?us-ascii?Q?Xo3JP2/D/IyFaMS9aj8tKchafk8OOp/j2zLk7CeV9NgU34wtxjQ9bxI2KoFC?=
 =?us-ascii?Q?QIDHjDMsSyk2XeMcmIH/w9IHs68FZb/SsvO5j97Lki4EmZ0DSQooKxBqof4Y?=
 =?us-ascii?Q?LnofDgQAl0Nxe99EOBOtPL5UbSs503ABryHGZqnbqClGmijZ5lLIbzhVNAAX?=
 =?us-ascii?Q?iz5Nj/ane1sC4CywsSsqGfLPezbL2P3h1+KKEmFbzfw0ZJWiRuSt4a1NhHsX?=
 =?us-ascii?Q?fto8aXL/MW2F4t/Fy2Dy5Br02Ny+8DC+ClEPDUH6bY9DwH8opMUaLVWIgXph?=
 =?us-ascii?Q?Lql5cYhSVJOup0vL4QwbPwClk7Or3ErpESgqWujLS9MqpPGyVz5lk/7+NSTu?=
 =?us-ascii?Q?QABCcrG+a54AQrGx8mvbv6dcoayNU1mDCGLATzGEFPvY4iJt6wN+aEZZGbqh?=
 =?us-ascii?Q?pCaMOAc4J9YLT1nSJlcPnwrWfegtecuJufel0o4e9sLLqgCg3dsWHRlQMhzM?=
 =?us-ascii?Q?6VDrx0W+trGc7qkPUggO8hRBA11uqsGP4V6aFKizWg2+hYnErNYJJSjKbPuJ?=
 =?us-ascii?Q?6wfKfA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54e52dfb-8b0d-4bc6-a8ea-08dafee5fd5b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2023 15:08:18.0745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LOWov/q9A3OvBxlbQ5mMExMsLAY7Xu+1/Zk+pckpffDVLs6rbhlVHkord7Hjg+AEENVtcLE/PsEsv21c0IsCJAxUw4czQofamA7y0gLZeNk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB4461
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WgoP6nt54NVHJuTpSMDLW6YT4iEokTmnX7jTJJ19wbg=;
 b=f1xa0vAga591s1QdbeTDMWNHCS2cxPo8j+tAI5T/Zywq4rjPxDbBHkfyQ+ouPbYUZ6DJ23zAPXZl1TdPJGKrmB9e0K5JVGxvY1lk+mfyoZhYmxo8P9CNkBDqm4l7Nb2t3YM7jCvJUoQOd9co8Fw+OtUnElUOlIVSM37oYQSt7yI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=f1xa0vAg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add checking for null for
 nlmsg_find_attr()
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
Cc: lvc-project@linuxtesting.org, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 25, 2023 at 05:13:28PM +0300, Natalia Petrova wrote:
> The result of nlmsg_find_attr() 'br_spec' is dereferenced in
> nla_for_each_nested, but it can take null value in 'nla_find' finction,
> which will result in an error.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 51616018dd1b ("i40e: Add support for getlink, setlink ndo ops")
> Signed-off-by: Natalia Petrova <n.petrova@fintech.ru>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b36bf9c3e1e4..ed4be4ffeb09 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13101,6 +13101,8 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
>  	}
>  
>  	br_spec = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
> +	if (!br_spec)
> +		return -ENOENT;

Seems fine to me, but I wonder if -EINVAL is more appropriate.
nlh is invalid in this case.

>  
>  	nla_for_each_nested(attr, br_spec, rem) {
>  		__u16 mode;
> -- 
> 2.34.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
