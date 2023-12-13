Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4FA8112BE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 14:23:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84BCB43631;
	Wed, 13 Dec 2023 13:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84BCB43631
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702473824;
	bh=N3q79TlpZ2TsQRnhcVO0I4mO7iMahIotyFfydkTC6tA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nPYOOYn4b+ByPNBMgNgqWvvXxFFpbv2PCs4GMtIwNq4lrzTJ6zTX0b7zMkVp2LBkQ
	 G5atncSjrOrI4MSC3E3AO4+csCng7EohswwhoqZMMurKCmLvh0/4wXVIwGcfCkLlHf
	 NsVN1JJQuPdXWl0s8JcB85pF/2PVFb3uTJgyLXe+/msECH9P3HAIWnGaFjB2P7d89K
	 SdDQW8tuu3CIvbRLV2OdTj/iCSYkODQkrQc6YDKqrBli9jzSiTnQ1dQPqSTVRa4Ijy
	 Fybjl05dOACl8MrHrcZvY9M358WNu1Q/1hALVAXf4tK/W8cFJZAK2YkzVv6kDxoAbg
	 ZBUL387Ny6jCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKtLdfzFbLbU; Wed, 13 Dec 2023 13:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3199740636;
	Wed, 13 Dec 2023 13:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3199740636
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B76E1BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 224B0415F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:23:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 224B0415F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rBmB8m2S2HXy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 13:23:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BEF94087C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:23:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BEF94087C
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="8353063"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="8353063"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 05:23:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="723647869"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="723647869"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 05:23:34 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 05:23:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 05:23:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 05:23:33 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 05:23:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jt5aCQTZW37ttIVMRP6MLjqjbXg6rA8HV2L+S14f1nYho1BvYn7H9HJ8fGWDQhDJGonuJQ7SDdvozuszWq/BXlyrIsV7VjTr4M7Wu1xXnWVmu0lTfoti2VgtFmcSxZXACPfeTAnDOJNWbZrJl77cgnnbwCJcWZnKh0P6J2e6dJvwPVPX4buGONdEtsM85tPEzcnqwKUisuxzKQCWqYFqzSoGzTs8pUUm9sHI4Yu+9WUjxY5sKH7qdQTWDkgR9lhVr2yAqmhBIC9G+frPbYKAggMc2HzaHPBaEJV3bISGreBrjj1rK8WY6TZlSdGwxi79blKUg42UqX6O08u5+dzD7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YFA7QQoG/PhtKOjAhB6n7zXjCfQFlcqag4W/CP9Wmik=;
 b=Cb0Km3+DLZErnKa7LgX9Gi0AGfnK40bgekyBnVc7elLGdeOpcSheiYcZgXMKU76DunY+E5r41hmLC+D7K3GI2Q4P1GbhdaMX1Tz0Q1PDv8FNldipJJExZJp0QbRSbjWK54IYc9TpgC+5llBF+uBuZr5jqb4Y7MmVysXV15IU4K7Rmw/lNAK84ug8i9wXSD935wH/2uzn48Cwh9EwurRn5PVsomaG5OI3RTBLTtpTuxcVclLINONG/x4Ysy4O+lwY+7svcbYFEbLyGYh/c0KcD+GGTDggRWnEu+oHFbLvcsJNvuXIjBC5cWGYazwRTZKNzhEewi5lLFdj5R8TKKjMZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 by PH7PR11MB5793.namprd11.prod.outlook.com (2603:10b6:510:13a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 13:23:30 +0000
Received: from PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37]) by PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37%5]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 13:23:30 +0000
Date: Wed, 13 Dec 2023 14:23:19 +0100
From: Michal Kubiak <michal.kubiak@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZXmwR4s25afUbwz3@localhost.localdomain>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
 <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
Content-Disposition: inline
In-Reply-To: <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
X-ClientProxiedBy: DU2PR04CA0357.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::32) To PH0PR11MB5782.namprd11.prod.outlook.com
 (2603:10b6:510:147::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5782:EE_|PH7PR11MB5793:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e9297f4-2576-4926-1d3c-08dbfbdeb2f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tPKFKIvRc/PXU8tQVl3RFzJFc8XgtBSrnZbG9cPVKoSzka+1m+mDBGWRrFzjFuiT0mSSLVnoz3Lqz2x/7Nic7q2R4FKW/5JWwSQI14OID18dL1E527Y8AJV6Ytrr1rWZd+eqsFpTVU0K6Euy5CzMrRTOeSbzGO86r0iluv4U/PUz+F5h1qOBHplnrVM8LCRT8lL8XNQKLTqhcHTDaFgd+0Ti4KDc3xVzNlRwYoxJV1MRu6SgxZajPs5mmwCv1eIGNJpSvtIbN2+XI7QpHvqqYQsH1n85SFIhkcriRDvZ5EtqHDip1QPx8vJXQm13/LbHmOjm91jD8lhMWwXkN2tFfnVyiyBfYw+XAAx8JK9MNddh7cpwUpZ2K4gYsJpmE/AXmIW66GUKW7oVInAUczh3vjGXhM1n1YTxTyYwU2xAxiVzL5I0SZ2gJOwtGofP+gMDgGbaERSgINJnJyw+1BozfT3buMqkQ7VJl6kefr80Wq8G27O+UTpbfMQOg4s6r6f8BFXhXeeVuqX4kKmaaUIqJ+ONDnZDT3yc/LQ95DZOSbSMap19aIRHui4DVKoCYlz2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5782.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(366004)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(107886003)(8936002)(6486002)(26005)(6666004)(2906002)(6506007)(478600001)(66946007)(8676002)(4326008)(53546011)(6916009)(316002)(66556008)(9686003)(6512007)(66476007)(54906003)(38100700002)(5660300002)(44832011)(83380400001)(41300700001)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BFWRJ6YFiS1+SkPqivBoxLhoGRQbziVKPRTccCOClfP/6/OpCGoKdHvcCUGl?=
 =?us-ascii?Q?IBDSXOEWVO6FIYN1zphRucUdW7TCxZ1J/wX6WQh6dYPYwR0QAMTRTTtGeNH0?=
 =?us-ascii?Q?jXhuzbR7nzqIaTjVwlgdSfbtLe+b0TK7VDDW3Bz65pKd5odWJSTKX6oe6iUI?=
 =?us-ascii?Q?lOpQj3iYrXW5iDLwqdAbFbEYueRqprnKwCbve8leu04Yohv4+zy/pcoUBc9j?=
 =?us-ascii?Q?VbyoRxJtwc/tGUcKmzHZoFYU63QkIZCum1oqpMoq496oYzkZgm0T6YvEKQ4s?=
 =?us-ascii?Q?xtRSfjLYpEE9eRnOCFDrpJ0JQNo8dspuq3fn7NcgrTi90eqBi+5EecEZPYkp?=
 =?us-ascii?Q?C0Px7fmMvuXtZHTS2jadwTws1bzQpqUi0Hie53QAYIjtPLLtyXzkUAs6PAm1?=
 =?us-ascii?Q?mkTQtH0/sZmC9HBE9qdUySlrA3LSQFg+q4oJLuz8ZbdZlhlRiHCLSZHhZnB0?=
 =?us-ascii?Q?B7oivqiI8UKPtVenshXbYyBXMR5kZUaNSEvoZIVa0t23jKWLPzMoSqoSZlQ4?=
 =?us-ascii?Q?aa7hDsUUAAEGlD3ktSx3j0xOWpMjVmqK6aCfoJ03pNR4rO+fxyCnIxyex97L?=
 =?us-ascii?Q?aikzA2oKRtaj203X2G7FAyffP5Fm8vAmbX30ra01DPrM4+rgY0Is9BZvH6Ju?=
 =?us-ascii?Q?oD7i4l3FNRrY8eIOinDCfdEu5+xio3Me8cq/W0vzdAaCLiVSp9l/Oq90NeL/?=
 =?us-ascii?Q?BEDpGr+f9E5UelWBEiy5Vp0239DjPIs439B3ce4rQZQeEFTM3VoDhpcZUziq?=
 =?us-ascii?Q?4wxsq7EwcwKevOnGYCHslh7ba095+eqv5BrToIAMlWMezyFWsfjuytsmYXUC?=
 =?us-ascii?Q?SZTm51QPUtWW6tt8RRCmAJBp7YCazAdMMqWPBxOdqsvYm2KoqxX7Q2oFA3uF?=
 =?us-ascii?Q?gldotDg4ZW49ojTOMyVqKm0+WWCqja+u0G5LL0hgk1lkrMdZ22gkMKTAA1MC?=
 =?us-ascii?Q?OAX9eLwre/Rxo9f+fZut1hwJ9u84yzZ5hQYtl9wIkEbTEgOGDKvctBy9PV8v?=
 =?us-ascii?Q?utneAfK2KZaCX2cRgeU+uJldeBs184N85k+r5vyM0JXIZN+VAREelMD3yVfE?=
 =?us-ascii?Q?O6Gl8NF13z3WQXGGrxhuuiEd91AlbhQsN6ucX7+RPyAFEqUJAJhwbypXVRTl?=
 =?us-ascii?Q?BVO6TpRzde1R2sZGR0VLKXffL4EOjk+ANB7IuveFd6223BEZqbMt1HyyerJZ?=
 =?us-ascii?Q?zFI+JIei/bMs9tpwb7j2ptCtM3ieIfNkevjbWXGN/kUFtxqJ2wekO2oL2GCU?=
 =?us-ascii?Q?48G4yUcy1AJ3XGh55Z2SltAs6ciMToQUrGjGG9ZPZVr2gx0OSTqoxVQ4B4lI?=
 =?us-ascii?Q?xZpvjC3ieazP2+AQFGlc01orM/DpvOM0/DmERVYtxMlTzcc+WeTd7JEgp/wu?=
 =?us-ascii?Q?laRC7OiY3DedvHrcvkYJfpf1iSo73HfuBh1rj3dYJuYsjAYZuA7AUU1MLknL?=
 =?us-ascii?Q?ozQeJCoxqrD4FGPhLszUfirGOkjdmvv0TLf/PQPhTdBYQZRQDI/kQWdZoNL2?=
 =?us-ascii?Q?g9BwCYkt4Xp1hqyjy++bXGftt4zpWT9+ynnQGyLH3tEpY0SjdTVr428c/0xx?=
 =?us-ascii?Q?SuPahTExTaN55D7VESPziThaetfJ3HNF5/pflCV7eiL+N7vniZd66tlU5ng1?=
 =?us-ascii?Q?Eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e9297f4-2576-4926-1d3c-08dbfbdeb2f4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5782.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 13:23:30.7876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GyGDH34C7JBZ9MT28oRnwCjIkP4JwWwLocxETMFoTc6BRKNh+Qm2X6AeMOn1UE+hFwAc4X2Uipip8AzGWlXkyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5793
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702473816; x=1734009816;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qSeSAPZb6eFml392SXNQlCuOaOq1i3VKQ3pi/Q55/T8=;
 b=Y2iy5xeup9uWxDYJRLgAhFKecH72BJGcTUAOxjHTVIcdcW4xBnA7yY9G
 YYy2ZlRl1M6RVw/b4FKu4zR1lhI7m5LnWA/V3bExO8qIu+aOGBAeOsXJx
 gdftSr6IRkjSN4NktbOqGqRh7xbUQy4ry1M6JapowAC1ZhurSx3eFc5T6
 vSI/wiQgOyH7OjGey3m6tBJNTJEsMZh62WmBGn+bBb5SGC1eJ8eMH7j8Q
 1ZPGwxtYKulvbQpp5kyQ51GpkV7s71x8OH+vuOFoTMrWrq3fF2yIYH4ib
 4EilGiTJ1TbEdilZgDOTIwylk8sdzuStw4LqOWsqm8x0jcAGn/b4Hq7Ux
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y2iy5xeu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: maciej.fijalkowski@intel.com, emil.s.tantilov@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org, alan.brady@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 12, 2023 at 05:50:55PM +0100, Paul Menzel wrote:
> Dear Michal, dear Joshua,
> 
> 
> Thank you for your patch.
> 
> On 12/12/23 15:55, Michal Kubiak wrote:
> > From: Joshua Hay <joshua.a.hay@intel.com>
> > 
> > Tell hardware to writeback completed descriptors even when interrupts
> 
> Should you resend, the verb is spelled with a space: write back.

Sure, I will fix it.

> 
> > are disabled. Otherwise, descriptors might not be written back until
> > the hardware can flush a full cacheline of descriptors. This can cause
> > unnecessary delays when traffic is light (or even trigger Tx queue
> > timeout).
> 
> How can the problem be reproduced and the patch be verified?
> 
> 
> Kind regards,
> 
> Paul
> 
> 

Hi Paul,

To be honest, I have noticed the problem during the implementation of
AF_XDP feature for IDPF driver. In my scenario, I had 2 Tx queues:
 - regular LAN Tx queue
 - and XDP Tx queue
added to the same q_vector attached to the same NAPI, so those 2 Tx
queues were handled in the same NAPI poll loop.
Then, when I started a huge Tx zero-copy trafic using AF_XDP (on the XDP
queue), and, at the same time, tried to xmit a few packets using the second
(non-XDP) queue (e.g. with scapy), I was getting the Tx timeout on that regular
LAN Tx queue.
That is why I decided to upstream this fix. With disabled writebacks,
there is no chance to get the completion descriptor for the queue where
the traffic is much lighter.

I have never tried to reproduce the scenario described by Joshua
in his original patch ("unnecessary delays when traffic is light").

Thanks,
Michal

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
