Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3A1734DA1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 10:27:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED32081F7C;
	Mon, 19 Jun 2023 08:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED32081F7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687163222;
	bh=ASzJOQmw7/uRfY+hPWeZGho0pVMPz4OGyAM5o5A5kcg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u+g2nqzyym960O6xnJJBa7XBKkRMC7mkiOvS+f4fmKs8zyDTDE0Ttrmf9bho1P6Tn
	 I2MTW/0FNn25t+HF+IIYaM69CmcusSSz79dRswVt67SilEMgVVCI15DDBh0VZHSV6l
	 SxGxYbiqNNlhHrCxdb90c9ozLB2k8Pkm4iuPiRTUlgsJeikHLzQIaoX44K5uAx701g
	 87hw1T8P13qXZC/UbGPB/ynCwq7JGmBQuY7NZoJ2MeOHGlONUEEP9H7Wv8s98kHomS
	 KKqt7ZziLCfh+/0CblRnHzAc31vf50mxabMlgvQo7sEBphAgXosPCZw+/CpW7hNfR7
	 CnXtxM2Jiwb3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CQ6h3ihxsyfC; Mon, 19 Jun 2023 08:27:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5A1280C1F;
	Mon, 19 Jun 2023 08:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5A1280C1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A4691BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2151B60EFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:26:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2151B60EFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oC8s92NZt1Ry for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 08:26:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2502F60EE4
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2502F60EE4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:26:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="358450633"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="358450633"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 01:26:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="960358164"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="960358164"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jun 2023 01:26:47 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 01:26:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 01:26:40 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 01:26:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lwujutoKOHneR/SgDYzHWfdJH256tTBVeM7Z8rm1WncCDlkC1WzFbHw+fSUwOBW5amAXxVbV8iDhO43vCwWwxVaY7BoLkwmselHKk4izAGzk5r9EIcj9S8Fr6ICbOGmcJfkGywyrUug65Vy4Atjgc864RhxXNDxOdQNu9xcSNJ9FE0RC5aqQUvC/j1WhamGlrHQz/3VCLI8cHexztFdRsYDTeksflpv1w+0abaNGxgSAlsT3fa7s0bz7xs1OpSvjVx3wr7reaYeG18K5sQ4W2MyuNk6KDDH/x6kdTctu5rSRX7vaTrNTmdddwk2kpIVioci/anKCMU8pdz2DqYU5SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LhtogLeB+OS8r0wUu+EP0VCsGZeaE5vXzUF63yeNSj8=;
 b=J4g1sKbx70oCj0t/TQ6Hip5qPBjdau6TlJ2jvmXW+BkV47o++PiDeXKcEiNZb3zM9VgTYETh51w/cV82MrHvC8ln7NDZ/2NPbq4PthlkLA//YCSz7kFHWzUzGOSom2G/TqonkOvH8nHM79sBA+9nKrDDBoOcL7XpKcSS23tzBck6Yyc7xzdg1L/At607wwLMilbVEv6LC9otm+yMy7JOfkz5PNsIWHNbA5cCQRNkPHttdQaHgJEuRHKmjQqjjhaTSEEJGaj6efWWC23XnYvTv+LuVu1yD6LT/r+gpE66ypm08ScuuMPx6k4AdxtgsUTeXhsqBNK82JC0hLsNh9zM1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW3PR11MB4539.namprd11.prod.outlook.com (2603:10b6:303:2f::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6500.36; Mon, 19 Jun 2023 08:26:38 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6500.031; Mon, 19 Jun 2023
 08:26:38 +0000
Date: Mon, 19 Jun 2023 10:26:31 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZJARN5Nj/IpdWNWQ@boxer>
References: <20230619080635.49412-1-przemyslaw.kitszel@intel.com>
Content-Disposition: inline
In-Reply-To: <20230619080635.49412-1-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: LO4P123CA0519.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::6) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW3PR11MB4539:EE_
X-MS-Office365-Filtering-Correlation-Id: 81554eef-b9ff-4862-6c84-08db709ee6a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NGnOmPYFkPdCIPmzKEqhOSuzCmcrjtq+k6rU8f3ukmpltXk1Cpf2UwOHzym3r4uYvMTviLtpFB+SEnjuBGiZBZwLZYfw1eKF44cpcD0OizOQBhdkx9csBTKXl4k1dw0Ylc4rIdIcJsoXvBip298b4DU9Wly7fH05RjyhMdfbinN07k6Q0dJT6MDV9QIVE1+f2zSXK9Nl6WjXTghJTLxRlanuEYmvuByTi8eKoJnMl8YlZzhNQqUplY/99q6ccSxBwvN9IfWJVaITXvnKST8AQ+JCwA9pJU3Zs61lJTbwsLuujyYKzKOVKXSePsrIyDmR9CtlBEB4iqcaibBbsV2IhNtkqS63/iAl8qSkvgeL+hhkhGBgCU54JQzXzrc8vl9OjpbTG/yoSVmDpBSTPI9g5wRpVgco5d6bK7cTseMiQGBhkwKFnWJ5TJbTuvDaQ1fBeXqad1ZRQTGVtLubnOPDYlliQ3UIRNcwfCHWSJm/5mbPwRK9A5ycgvivbbQXtHVv/qlvfl0l0wQRHD3F4U8DXsodj6CFwm4O5x/r3ZIhFU84pUh7P6Ws3BPetFfgpRlT63GoJCDuoUUv3DL8lFVPVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(396003)(346002)(39860400002)(136003)(376002)(451199021)(186003)(8676002)(8936002)(66946007)(66556008)(66476007)(5660300002)(6862004)(54906003)(4326008)(6666004)(6486002)(316002)(33716001)(38100700002)(478600001)(41300700001)(966005)(26005)(9686003)(6506007)(6512007)(6636002)(86362001)(83380400001)(44832011)(2906002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EUjpxmxmj9/j/TKZ1ZL8Wu7p6CPOA8lUjrKKOBOmtZdUkG/kiHU0yfTnIGka?=
 =?us-ascii?Q?4fomil74evLyAkLyFKJL564GB6CNdtbv10tw/la9XhiHjXqfE8IoQaPrLUT3?=
 =?us-ascii?Q?4t9rZo0p7t5eCl10L+Ful6ucqxbAohstV5DacdWnE9Y2Li2fbA6xtjFtuldK?=
 =?us-ascii?Q?skprBu16nSGK00Ce4UoLQmIaBCoeht2NWleJfnxTDB2qaJx9OqX+KMHmlarg?=
 =?us-ascii?Q?nHrECXcOjKTyQ6IZPg9EShv8a7e/doSWbhVD9rrX1ovONxtRZn3dTR7zj9cf?=
 =?us-ascii?Q?HFQNRYvzAc+upJHyU7ieY7xYRa5FYFAQHhrPIz5XUhUHt+LCa9aeS4jIz2Fp?=
 =?us-ascii?Q?ifdxA+BLGKkAOKnlP0pt6ABe5wxeVVvKXDDv4K9MAoAYmM4cZYWUTfsy6Xn+?=
 =?us-ascii?Q?BkKLuEfgFC/TlD5Ko17ZElQYm8wb7i8HK2qw+5Xg9jxV7vCpOse/OPwl9hJ/?=
 =?us-ascii?Q?TiHtBSDbL4q1MwbBuLE4foL6AtLbUpQXI2Tv5+NBZUoX/2K3PTDMLAG9Uotd?=
 =?us-ascii?Q?+wX+Cga6zmKd7dGbRKAeJMaSpdTAhTHfBkJfVa6qiv9XNlO3ZEySkK9pvvIX?=
 =?us-ascii?Q?DCyoUgsxJPXrh0HVwFccE/SjjC1QiJHSfiq1YHrR/KjxoQYdFEkzo7wXDG3y?=
 =?us-ascii?Q?g1h2+Z5kRs4bVmJCnyYD0WWIjGLt42tAoVwA7iIu+Dd9HPWXyv0rd0KPxYmx?=
 =?us-ascii?Q?xRum/cZoEL1SGKPbA6+PgzuJRrpjYgv1uAeuXEtLCgBkq7uGSBZRo1l7nvbl?=
 =?us-ascii?Q?9RSHOU+XBKXpsrvSkJ3iN+6do/z4ZCd+3PzQ6XQcfls5jpV47O5XFCTnD+iL?=
 =?us-ascii?Q?bkG0R6Q8mnp+nmTDTSrbuKv/b40ilrkz+7DKFQbJJJIc8AgpMHWVxfwU2d7i?=
 =?us-ascii?Q?fgk0Bp9dwpqHbY1aBLTpNGIxnXmhMX2G1yEAApy3gue6hTY0GJ/TQ83FKAJc?=
 =?us-ascii?Q?BexYcFo7XyCJeRSvQk79CpKWM7IoQ/5wCuc6/Xyph4swZHMDSnkLEcTAjhlA?=
 =?us-ascii?Q?LeChu47QHfHP+NhDNh5zpH7iDxzKJv3j+M0AKm27jfzXBSPxEcS0LGd9oqEd?=
 =?us-ascii?Q?Tbh7gzMkHRF2s3UM/Z3kbXmW4RirAiX3cTgwS5WjMvDH0w1n+DG/oFYU33nw?=
 =?us-ascii?Q?z3t3DMdqKF4ZTbRz70IeMYv/X0pvCaAaSZcv3Y0ROqLLDudx3s80E8tFi44T?=
 =?us-ascii?Q?/Dnxo2LxIa0m9MvFBLOwirpyv87qQNMIJO/t5Rl6Vr2xPZKu2pJSHyk1CV7j?=
 =?us-ascii?Q?poXztzrOmnYeykwS+sg2sn5yiz6ysPEl3dL2BKoP9avtCScnRlZGpYcaxFA0?=
 =?us-ascii?Q?ZAemN/Jq5jVAqWYR+6BWi5aIc2FqrSgXf0tMpOWjMbQsxrXnRPFdzZ5eE6DS?=
 =?us-ascii?Q?NvgqX+cDcZFHtXT93/VwdcXaEF8s88TOwSYMvqCFYwO6lJUimeTV0TjeCw/F?=
 =?us-ascii?Q?UA44Ry0/WEoA/XkELsi02HY1l5H1eKYnWr4GQRDrU0BpgeNUNFq4xR/Bdzua?=
 =?us-ascii?Q?p1SrOk8b59l+uPhbqdXjpWbcxwkXv8a060mTKTQ2wXWzaMPlBRZMLBx6QU37?=
 =?us-ascii?Q?vMmpn9NGdb9/P2kgMR6pub7LkZzsMBAJdlYZO6zSGP9OCUAOUd0H7DY5KVtw?=
 =?us-ascii?Q?aQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81554eef-b9ff-4862-6c84-08db709ee6a9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2023 08:26:38.2523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k3d1OpHG0dLCBqusZ307SXyl4e/eWmVh5Wgxa+zOgDUEd6TlxcJguFX6FvTFkVepp8Gj2nufcM6CLBWw4QXesuAbdZwMY++GxzylKjsf0JA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4539
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687163213; x=1718699213;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lio4ln1hkNL/mSJzAbx1QhbvD9ZhLZvTu0C/vMiUibI=;
 b=Jlp3SawX5NYQaE99eX+JvMFzD6iMY0Ezj9MrUN2/9Z5xMm7DePz6HVYw
 /UnBROODOtVP6Sp6vFJMKsIsta4CJuDjDURz3bjWWNNEsNMZ3AIfjyYLg
 3Qz21cvZupEUSeHdhEPnPGPBtGF6mjBClnE1I4h5Ttkx1XhvI6UK3q33S
 QVeliRvl5jlNI8pAku/3XnoTkFRyfDK0EAXTWFSjq16F5/qORJsfqUoS9
 DqtXAvfKf5FBNfLDrYO9pyEbaRCKkCYkaFXG/Qn3YzXwiNWx7SKGY/LcR
 9Da7T+zDAx10AflHax6qEFynkQgD1dMEAU59gYBUxD9tGd86wRHsWQCH/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jlp3SawX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] iavf: fix err handling
 for MAC replace
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 19, 2023 at 04:06:35AM -0400, Przemek Kitszel wrote:
> Defer removal of current primary MAC until a replacement is successfully
> added. Previous implementation would left filter list with no primary MAC.
> This was found while reading the code.
> 
> The patch takes advantage of the fact that there can only be a single primary
> MAC filter at any time ([1] by Piotr)
> 
> Piotr has also applied some review suggestions during our internal patch
> submittal process.
> 
> [1] https://lore.kernel.org/netdev/20230614145302.902301-2-piotrx.gardocki@intel.com/
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

I was reviewing that:
https://lore.kernel.org/netdev/ZH8JBgiZAvNdfg4+@boxer/

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
> v5: v4 re-sent after dependencies ([1] above) has been applied to net-next
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 42 ++++++++++-----------
>  1 file changed, 19 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index f262487109f6..44304f16cdfa 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1040,40 +1040,36 @@ static int iavf_replace_primary_mac(struct iavf_adapter *adapter,
>  				    const u8 *new_mac)
>  {
>  	struct iavf_hw *hw = &adapter->hw;
> -	struct iavf_mac_filter *f;
> +	struct iavf_mac_filter *new_f;
> +	struct iavf_mac_filter *old_f;
>  
>  	spin_lock_bh(&adapter->mac_vlan_list_lock);
>  
> -	list_for_each_entry(f, &adapter->mac_filter_list, list) {
> -		f->is_primary = false;
> +	new_f = iavf_add_filter(adapter, new_mac);
> +	if (!new_f) {
> +		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +		return -ENOMEM;
>  	}
>  
> -	f = iavf_find_filter(adapter, hw->mac.addr);
> -	if (f) {
> -		f->remove = true;
> +	old_f = iavf_find_filter(adapter, hw->mac.addr);
> +	if (old_f) {
> +		old_f->is_primary = false;
> +		old_f->remove = true;
>  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
>  	}
> -
> -	f = iavf_add_filter(adapter, new_mac);
> -
> -	if (f) {
> -		/* Always send the request to add if changing primary MAC
> -		 * even if filter is already present on the list
> -		 */
> -		f->is_primary = true;
> -		f->add = true;
> -		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
> -		ether_addr_copy(hw->mac.addr, new_mac);
> -	}
> +	/* Always send the request to add if changing primary MAC,
> +	 * even if filter is already present on the list
> +	 */
> +	new_f->is_primary = true;
> +	new_f->add = true;
> +	adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
> +	ether_addr_copy(hw->mac.addr, new_mac);
>  
>  	spin_unlock_bh(&adapter->mac_vlan_list_lock);
>  
>  	/* schedule the watchdog task to immediately process the request */
> -	if (f) {
> -		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> -		return 0;
> -	}
> -	return -ENOMEM;
> +	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> +	return 0;
>  }
>  
>  /**
> -- 
> 2.40.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
