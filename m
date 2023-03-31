Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D826D245E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 17:47:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F7B8846DD;
	Fri, 31 Mar 2023 15:47:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F7B8846DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680277678;
	bh=LXyAKCUdIrHcmeMmZcwaxREkq7edlSCr1jFtWO5W+28=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VmpaJ+56gGQb73r6/J4IFy4HdYTFuUqGqi506Cz7em4Ncx+/4toZodvNGzKIjcOTJ
	 HdcgizlI2PeNDkETGTlRKpERvWjUkttLZM6z97Qh6rV/h/wQSyUXIurfZ4S+H7oHq/
	 JsMebb74q4cIBi3ZNtwpg7PqOYjVvxR4q+nGvx7Yghn17ZKPrjzP8z5o3RfvGY3kgK
	 E7gGU8O9y36c1pnM7R4LWgh6IdQR71PIE95r1wN9jOVL5Yj70m8Nk7IJrdlc1AaNsh
	 9mKeXd2n9k2l+P+8UA0Uzn1gCVLDJfPoMebPFgTsdJAHr3vaG3/miQSdRs91Sdwwii
	 u2Yag8Vk0dibw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZLUV7M0Ei-VQ; Fri, 31 Mar 2023 15:47:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50636846CE;
	Fri, 31 Mar 2023 15:47:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50636846CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 440791BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19C74422EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19C74422EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4osZoARTTjS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 15:47:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 319CB42283
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2102.outbound.protection.outlook.com [40.107.100.102])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 319CB42283
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:47:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z2ZSZPZunnkfSH22CqEpsULkNsnwSqQrHRXimJlqnv4aZ6noqjerHDQkYVH+38pyd9oBNC8en5sg/lclbbAMk13zLCM3m8dQKXTKU7XQ8BTD6CYgdIsAR50iHJBcpDEAU4yBR0SGhafGQHOlrr8b8yDt5ynzU/YD+6l617kHnvMN1xZVPb+1yvJsYTceNPtW9SSloq1+YDdmjM/kBaWlZkiaKiEIe8z5bopzhVPsU8ZqPcbh+kmwsPiq1TKzW1USPOL663YptuB5UCqjtFNlCP9aKqXpLyrkJ4RoISNHaXyYq+adL8rfmk3TmIOSu1kAANSOXSVvxsTrdU8VjAoBCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R7scq0GTVlOa+YvijD1WDNMNTT1hIeScN808AgF51Nw=;
 b=aiJgtE+Ag7dKVW/gJ5JNqyQh80ntGYRC2fw4ueSB7t+OJ8CEKiJugNWBbmwS/gFXg2QMdaUfRsSaF2vVyupVoUZz1+TLauKyv1EpW3eOSYvvU4lS/aUoTsXo2VxIlgDK1bh/3Fk9/czCWrjjiSEtHEoQ7ZdOQJ3wN//HBoyBqmDcqMbMuz8fdYucHnFALp4VrOKd6hrywQ4tBFcvqs1+zrc9JJxQfRRef0GFxX1gA7J0Mn5qCm/oPiMMWfM2FYWX7YACmPXLGxV9g+wXT2bA9AVBKv4O9hUiM3ACnFcA5MbRIl3AphbtSxpiRiHszUY0b4oZUWU+BdoPJMNROCxKLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BN0PR13MB5151.namprd13.prod.outlook.com (2603:10b6:408:152::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.24; Fri, 31 Mar
 2023 15:47:48 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%5]) with mapi id 15.20.6254.021; Fri, 31 Mar 2023
 15:47:47 +0000
Date: Fri, 31 Mar 2023 17:47:40 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZCcAnHMxjRhSdKgp@corigine.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-7-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230329140404.1647925-7-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: AM3PR05CA0099.eurprd05.prod.outlook.com
 (2603:10a6:207:1::25) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BN0PR13MB5151:EE_
X-MS-Office365-Filtering-Correlation-Id: e109e81a-2ef9-4369-165f-08db31ff4670
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pCUnBM+mXk1lzhBiLr9yRVgryf9qZ8xgEMnyHCUlSqx20jix1nyLWRZoZsTH/1tutGLvdVthJOEasYSxG4rtKsuGOEiQeiKh+mMl3Z957ljOU0NajA5dQi3mRbd6PnA/yaOrY9iZ/pG7bSlty2FyjXRTOnSfFQo5CMo5FBuR66z4KXpiRGSVhDbS1empBXpDMD7UdRV+Px0/+Y47JMFGhpml//bFyXSqddKa2mrfuGeDQuNzrUd77vL0atvlyo+FsB+EvsANDcY16BKvjajbcYxi/G7SWMk0rDgsf1Pc7ezWhp8JaW4iPfaXp3b7ppevTH7QyX492bs/rUQSgXcgPI6V64TJEHU3uvsBsfS+fm5/6rzqxq/YWfh3GtKOQP002Ed6EnFA3BvC33sl+0XTcLbPQCp9LRdV+3ZgLHfOt+tpEswx54qrAZO+swkHe5sV68AYrRCtKZtLHUmrharvDXsi7OXUIDHwnhMa214+PzBnOrGsp6hvANPYhXKiG3WBsYm/5cRsWBUPb9XV7Q9KiBPPjXJCR9oWKqwm5bKwsNkX5yNCgPj1yJTsl95/T27LhHP8H+v9qp+Fp00BExyfh1IDzmffyUZNgc4mdGPG4/4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(136003)(39840400004)(396003)(376002)(366004)(451199021)(478600001)(54906003)(316002)(83380400001)(2616005)(6512007)(6506007)(36756003)(186003)(38100700002)(86362001)(6666004)(6486002)(44832011)(6916009)(41300700001)(7416002)(4326008)(66476007)(66556008)(66946007)(8676002)(8936002)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4FyT3HrEzrbR/ZnfZ2v5FDxojnIeYIknl/hKuezYjKcwuKkSFyqqk8GDBBrA?=
 =?us-ascii?Q?7HVt1ETtksMQTTQ2UKeiA8JEPWi5IOOYikTzynLDJ/XjX9iVo5uDRmKtXgeP?=
 =?us-ascii?Q?Y387XoPquXnN1Km9r31PcxhsCv9ssTCPlaoemIjJjwykDjKSZTFd02bJDLxy?=
 =?us-ascii?Q?tDteDE7ITkKgyUPiwmTrHMneqigOMovXEbOEVFYtiq36BqSP649Ug5Z2oVEb?=
 =?us-ascii?Q?T5mcNHIaV4K457la3flMhqmBDo5THU2peXakGXihtkqrSX1Vtrhagl4b+bDZ?=
 =?us-ascii?Q?3ic8+fxLZQOPstbavquigBiEUYqeZ98uqIlMopmrQc64U5SXM7Mv/FeWRKSQ?=
 =?us-ascii?Q?1XOYjgbhxLDsB9lnxeo8nWNwnaCuxLo5fvruwr327yJVGTOPcPfiVjFlA/ks?=
 =?us-ascii?Q?Xpd3vIawtL9CaldjOmAVqUTlFokNA452VO1Lrg1BTFTI8sBjI0wrfw/j0mHR?=
 =?us-ascii?Q?+PRQWJpBvGCVs93KpWdcN/vKshJz9B6RrjIuSOY9J77d4rppsgK77k28s46U?=
 =?us-ascii?Q?mOX9hxCefNJVXpB/HAbOewEGJUT+tvt2Ll7UtFfjfIPQdgr/Q7qk9XI0gPE6?=
 =?us-ascii?Q?Vsft61oluszL5AVrWiqKpxX29q0v0NXnx6Ml/os9q7vXXIQFIL6kiTdsmwqr?=
 =?us-ascii?Q?F26ESBIZ/HYCu24KlPGJzHaonr1sPuC/NU5xhd20SADZm83fFW3C+U2rVhVg?=
 =?us-ascii?Q?O3CQClLZUi03gQ/R5p/3rxnKtukHbMKYMHFSIQOeQYKlBq3afrah5ArrQyDa?=
 =?us-ascii?Q?ppBSfxrfK9EBE2/izbiJzxNca0sxyrl/fLhL/Lpq0oZPbILMx79lVLyulu/m?=
 =?us-ascii?Q?j3vaZ9oTqZo4leC0jPFI3mAYzZsP7od00+Fbj3hXlxm+vNnERf2tg9n92Zxv?=
 =?us-ascii?Q?UdjN2Zcr0RpYnW9ijX9X/54DU80Mv1Oy7pY3I4aD38vbrFKcCgNpV9fMrF/w?=
 =?us-ascii?Q?ondBtzufM0tgYHhR7Y9PositoqV4bS8TedhOXcOMrOubDhwyVLFNFC1nZrGz?=
 =?us-ascii?Q?Qjk6DD7q8kdazl4EASCS6tVcipYA3+P2Kd3dwJjlhT0UUk5KDZqMOiYbA+aU?=
 =?us-ascii?Q?Z7yE1766qE3c5ywGpm8dRbN+vnc0O6f2/6iPTEknx1T4b30wVbQTdsPShOiV?=
 =?us-ascii?Q?mureuAHnI4vCZ9MJYhUraG16FMP1LOsbp2tkXVXq1uQ8FRLL+FWKtpcFrtE8?=
 =?us-ascii?Q?Ya3XFHh14egtHN6skBbzci4VyQoYWf28O59qK7fakRqbXg5BzX0/9Q/Oz5xJ?=
 =?us-ascii?Q?9pQvQC4Zlp69eHN/ydSPtsZnS/uv/7jUsB3+nwzCYbp5Ll3DzphhzGcsGmmI?=
 =?us-ascii?Q?0bJcxZKmiJfZd6JplXpAUB2YIuAgIV2voskrZCeIMpYem06EwSuBSmraIoDY?=
 =?us-ascii?Q?sNfJMMOgNLsQf4uILNXUcnqp5cqbP7YMaT6Y3MAyQVofsRUZLFf14+GRuw7P?=
 =?us-ascii?Q?1pwnYqo+MtZV7DCiMfsQn4oN6TlVHCpTJo5Cjy0JbmaDbHWbh9kJbEGoRlGa?=
 =?us-ascii?Q?1JU3X3RVueqT7FAV0LSu6lAiV4JcKxdpzrpk/qHkxmhu/jpb+ECj35PZmVoa?=
 =?us-ascii?Q?GIV1X7AgdI7O/MEmDxvsLip2bejgC/i1hWa5efs87SgEFqjRBnw1qipt4n5J?=
 =?us-ascii?Q?GYLuNavhvue7odBHH/UZUeFBxwTw4oojBU835vmacTN9xpxlNmxB/q6QfgpF?=
 =?us-ascii?Q?vNW9/w=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e109e81a-2ef9-4369-165f-08db31ff4670
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2023 15:47:47.3160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BvhLGvHE5NBmjWZh9F6Y7wUHv4YoUWaDAUl3i7ix9ay/GFAyMRT0q2+EyW1OH3IrpGObs5rUhTsYYZpQvYXBaLjRCbmnGUV54GLOe5tO62Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR13MB5151
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R7scq0GTVlOa+YvijD1WDNMNTT1hIeScN808AgF51Nw=;
 b=n3JXhs//xseTOT/3DKMmt8CmFrtRl+73F/EEfd/ZNF7Dt0HYHS2uBugLi63zzg3ghu9LpqBXRQEJ2hhBrF+HTUADEtvqiosde74o1N9TrstdKsfusjCme0tdZw8yMgEmSVlZLHWeQXvlCFjMwprPJZiw6zlt3nQLqgUd9yls3To=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=n3JXhs//
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/15] idpf: continue
 expanding init task
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
Cc: willemb@google.com, Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 29, 2023 at 07:03:55AM -0700, Pavan Kumar Linga wrote:
> Add the virtchnl support to request the packet types. Parse the responses
> received from CP and based on the protocol headers, populate the packet
> type structure with necessary information. Initialize the MAC address
> and add the virtchnl support to add and del MAC address.
> 
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>

Another spelling nit from my side.

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

...

> @@ -1432,3 +1778,139 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
>  
>  	return le32_to_cpu(vport_msg->vport_id);
>  }
> +
> +/**
> + * idpf_add_del_mac_filters - Add/del mac filters
> + * @vport: virtual port data structure
> + * @add: Add or delete flag
> + * @async: Don't wait for return message
> + *
> + * Returns 0 on success, error on failre.
> + **/

s/failre/failure/

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
