Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B34C67A0758
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Sep 2023 16:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35E098234B;
	Thu, 14 Sep 2023 14:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35E098234B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694701814;
	bh=SQuCo+nLuDjdHOmdL3Fy0dT3WkEZ/dsdSXu9lw2wneg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=laassLb8QAvorkSsX910iG+0JNS3mXlYE4fYTM2Y+MUtiZXbIV95SxheoPIEP5tBt
	 /niGIMWauezff8E6lhiXhtJpwK3U17MOeJklqAeSttnuBRpDjxc/H6TTYiEYqPe65N
	 Ve2Ksj9Yhym0+CEU2YaCStU7xkvBn04s4g9RwNL4a7XXrr+fu61BJRqnpGB5MEAk7A
	 eNV4M5Wx6DK4hrYv/cFzB16zvjjSNWJRyPFAg/TACewdqMDPhc51VroFeV+PITajj9
	 pPl4/2QtEMt3HLvlUjaV5h27JdcXzeeS1u0KgR/5I2De8VjauGYtQl9vOCc2Dc72ae
	 sMkxwjKvx3BbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dR8bED9V3EGk; Thu, 14 Sep 2023 14:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 244188209A;
	Thu, 14 Sep 2023 14:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 244188209A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D10951BF588
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Sep 2023 14:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9798141F44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Sep 2023 14:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9798141F44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id spsPf6aKJDx0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Sep 2023 14:30:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7B6941E8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Sep 2023 14:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7B6941E8C
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="376303231"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="376303231"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 07:29:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="814688660"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="814688660"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 07:29:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 07:29:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 07:29:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 07:29:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 07:29:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DsltGvwFzFLowL7tNpZkbkaYl1JM7ggT0gFpK+IUg30kjsvM5a4cuaD4haExF726etLc/0goVSLrqQMVswm0FKzKLr7E6r0okSHqecin+Mjw6o0wTjBlTQoW4ac1pFJA8ua7YrQLi6Un++92vizGmTFX345hMb5DRynMtdTlIkqGiZX+azAZSf1VZnp+Pu3ur6oqzz0b+U24EqU/BhYGuu9D7sExib2WhUUtBcMt/MRkiD8eUrBRY/fAtnb/yPh1ilbSk+J36QvjJnbifKNhNU0E61sjCBaAHy9YfXwYOE29f48XjrQh4YYlyBU4PMf/LJQEuKO32sUMlmLA7Bjxgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M5EyNhbTC22cAAvziAWOPdlqe+yt7jOWtP2LPScjUFQ=;
 b=nXzaJfJ7YcJ/1Ld5Qw6aHV/ypQ62ChK2ciL6W0bqgtc2Sq15nOp0yfAxCLJe6sIiLRWPj7bT55hoS92jHaUBAk5dNP9LRrtkL6Wbz0WLhJ/pKWSULqkHTuo0C5H6o6psYwK1fp7dMm020A/JJSaHQsva6oTlmQtYBVEchd/dYvotebkYdBK6ssul3fAU5rpIVNKgEZXUNNwTX/S7z1z7gIkJjvY0V3ymK7ZoeuH8/g/IJHAX0ZXY4FYsIkw/tX6UAsQrYivAgvHrNVdfMxB3AsGXRbXhjX4lqDkOu3rpMqmMFrzaXfFPzLtFZeuDkC6bgO0A4wAimF1T+IxvLc/Mug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by SJ2PR11MB8298.namprd11.prod.outlook.com (2603:10b6:a03:545::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Thu, 14 Sep
 2023 14:29:51 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::d99f:f0a0:a56b:925c]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::d99f:f0a0:a56b:925c%2]) with mapi id 15.20.6768.029; Thu, 14 Sep 2023
 14:29:51 +0000
Date: Thu, 14 Sep 2023 16:27:28 +0200
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <ZQMYUM3F/9v9cTQM@baltimore>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
 <ZOZISCYNWEKqBotb@baltimore>
 <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
 <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
 <ZPCQ5DNU8k8mfAct@baltimore>
 <87ea2635-c0b3-4de4-bc65-cbc33a0d5814@lunn.ch>
Content-Disposition: inline
In-Reply-To: <87ea2635-c0b3-4de4-bc65-cbc33a0d5814@lunn.ch>
X-ClientProxiedBy: BE1P281CA0169.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:66::15) To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|SJ2PR11MB8298:EE_
X-MS-Office365-Filtering-Correlation-Id: 642ee45d-0501-40a8-173c-08dbb52f0e8b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5uW9A/eKAYupm4c25bR6TAroduGtlZAAq0nqlDrMT7wXJ+RdJuK6nmC6XNHyhGfY87KrIk26C3u4JxD6dD+NfKAFxo63/KBQH26K82NWFPnUbDXSMXut7CYyPWrrdrwT34BAKaHwZvnDfCXgmkyFrn5nNYUhKQVGH0Df3be+hzi5EKjkp+IsT70wiYdN1BOLgom6SCTO0I7vd3Qz82pSy7KsLfIgYf9ZENph/aacvFVf6NimTgxl7hquVy82bENs/aAGJeYXUbLU5Uu3RQQobUmjJhELWNnP4ruFlK4wJMR8tZlDMf/+e2jXa8tszOGXRNKt39a+8nVLV3Huvydd18dQAVFk1/XVeVSLUUsqZLv2TjPGz4glWaz9r8XfJMx+4d3Kt3GkNLR4PncEieFZy8Pdoav+iK7WttWBmZYgqvz3FD3/KMTJqL9xUR68ApfpX3mI0YnFdF2iUeXA2z59Zl1VNAMRg2vmLXypw6Lqa2D/h4hgx+qSE1Eoq90N63Bmorv+AwKUXE9xyyYINQeCuUX3T1NmuvWmdbj3Lsewcgw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(39860400002)(376002)(136003)(366004)(346002)(451199024)(186009)(1800799009)(2906002)(44832011)(5660300002)(8936002)(8676002)(41300700001)(4326008)(66476007)(54906003)(66556008)(26005)(6916009)(66946007)(33716001)(316002)(966005)(478600001)(6506007)(6666004)(86362001)(6486002)(6512007)(9686003)(83380400001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oKoNhQbBqbuUTi1kecA0LtrONILaxMvIJyk76mnMoLXpEXfgGJR1qnxC3ZLU?=
 =?us-ascii?Q?0fHE6cJxuC/PsBHrBShDEcgwNrjAOFBgZVIiJEChCq3p6ibuachAh4tkZTAA?=
 =?us-ascii?Q?VLwAP21Kh8aO7EpaqOdiTaoW6w0SbWOEppVC6ju2bfLb5BRYZDTifiB/ILvH?=
 =?us-ascii?Q?wWEx2aUoGxgnWZAk5RCf6AdgNTCFlqqHf+r1mvb1Whb8gtrrVTbzPaOYkRNa?=
 =?us-ascii?Q?4IFYmuWVYp8tG6ZToKZL1l7t2PqTC/MICXyPNxKHvWTTUzWQe17pw4Z4rMqL?=
 =?us-ascii?Q?3IjRRuca8P6jBj3AF5E9I3B0uQitWgbbz5vqyYJHN6v5et+0vI9rMysxFi6e?=
 =?us-ascii?Q?5ZzFt9vDOH92sx+6eVBEzGs/0mC14HzjJ+vFvLNFysXPFwYU0qB4huZfmbWI?=
 =?us-ascii?Q?e5xgj+cXNm333x1ayMoaLfySj5NzGYdJAGo9qLjCpDXUaC8iyk4bjJ7gNKpj?=
 =?us-ascii?Q?25utCqRnmADj+rAYV/vaP34oWWnvUwNTqEVBLNCC21mriwq/pb6F2Mu9KBoW?=
 =?us-ascii?Q?Sk3B2eJHPGbVY7wEEXsUkJ5tWJZXHRFa/P/NobuWZitImbDGjMzftIrcvwXm?=
 =?us-ascii?Q?ukJxwOxyMkOQY9RermB0Mp2hs5fWhpq3FSIp93fzlb+TRq1vN/j1E3XGTKxQ?=
 =?us-ascii?Q?rzzH6qPuDpb3NvmF9ZcSgPrwJADBMqBk9fGvaLcAmSBvVK1G4BQlgGeuHXJs?=
 =?us-ascii?Q?CFRFhOQHcHlfALr083pBjGyiGScha2pcPQH9F0n6Q1EfWS0gyXA6SjBpDsRG?=
 =?us-ascii?Q?yhlGaiQXMgPHHoIk2MpQDc1Wfr7JoCJXmyJIH2YXPUYM98ML0RW/becdvo6+?=
 =?us-ascii?Q?z2ZLcXWlJb/GuXXuzrOizUopO8YAzv8ucKAwIPEgzTFC7Wrokyaoxj0n1pgG?=
 =?us-ascii?Q?JkuJHGB9IpD/aX4Y1O6jQJZDYR/T8HLQzf4+WpcgYSTEdI4Fl8yA4B9FSq2g?=
 =?us-ascii?Q?VFU2TQ9bzW3DhgvTqQAXaPj51r69Jk0hyirwHo9T07Oyc7o/4ptMwUkWEruD?=
 =?us-ascii?Q?/s3qL0d3OHCx8K3Xz0KB1AeKegXN7KpakcF8NQICrXkKFdeDIJWQzL1CjSnX?=
 =?us-ascii?Q?BpfYxFFFwS9qTQovMFEwRYh0sZFVTnoyerJss8A6HocYyypSpNxhAML4N8Gu?=
 =?us-ascii?Q?2wKaz7g6tX1S+rRIdhyi2zdK0gWFZlxZSEjXgBb2T6IgwCVa6KGDitaxTVBB?=
 =?us-ascii?Q?L5Vrz2xnLMvfBRl2Snpb+BjXXf6dON+InDYCCc3EHLpPNHBuf9pPoZQiEgH0?=
 =?us-ascii?Q?93Y/yhw/qr4+LFv705ARsxXdmyk6WfNfaXq0ierv0xDDKzVhQZHDclLzjpgz?=
 =?us-ascii?Q?M4tXQwSiLuCZUXUgnjyjeHUHEX9idZDF4jI4COxvsMe4otCbncWk7eCWD2m6?=
 =?us-ascii?Q?/92Sq1wAuT9u3I+X8f0BxTDLdJJoxvOTVC2sNm7xwr4LN29a94Ib/iGPIiK4?=
 =?us-ascii?Q?HtYZd3+cZDA+OIKUUl8Fpv5sMQy7Q8+iBd75xazN8kXbr78W3SMtKERVvdlC?=
 =?us-ascii?Q?nYdPavDjctuQvMoJ2m+5c3jP6q24aAYe2YF2vBMxHtjE3gU4hC2Q5qRGabjh?=
 =?us-ascii?Q?m3TSp4oYSFC4A12TDBYeS29AzC1EfjaJBczMFeTRYzCZrX8GaDOSNcuZNHjf?=
 =?us-ascii?Q?zQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 642ee45d-0501-40a8-173c-08dbb52f0e8b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 14:29:51.6412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GzmT6/GgGhN6zFYL6nkR33c0snaX8tQFT6K6idXvOGIMgzybydY+ygZ8zyV9JbX+p2nD00S5auTaSRrDvaLHL3IuHPr0C14OZHdETCdpCiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694701805; x=1726237805;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pJPB0MuqFbOUmZG5/pML4ejvImA2N4md0rlZqBnVSc8=;
 b=HgGdeRlkvbhaegR7eEsygRYlDS//aE+ih3wa7WPUi3iDi6kSmW+FaRZp
 PJQNj+YzK4mrodvi1Lzlas0JOd/rIU2Oj/Lt3NdcQFg/MaD49RA2AUZHx
 fzHjjxPAci3DR7bEXLY8Cv6yv16f/6RYbXaTOsWNPtHBmSIzaxchtdUQy
 prVOvY5/cEpw5iEoF+n7eblM+PeLDPWSmGXAqJPsiY7cOSIHbE5B02eCS
 PMIvpzLz8pfHL57EOUI14V1M5Y10+eK4SYdVtssuI+fEj1qagDTkVBD4b
 noSAIW6fXaWp/QSWulVBu98ciwzAICFvx0aNtTbK7IznKuKtZ6Vy3gRaL
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HgGdeRlk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: aelior@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "Greenwalt, Paul" <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Sep 03, 2023 at 04:00:57PM +0200, Andrew Lunn wrote:
> > Let me check if I understand correctly- is that what was sent with the
> > v3 [1] , with the initialization helper (ethtool_forced_speed_maps_init)
> > and the structure map in the ethtool code? Or do you have another helper
> > in mind?
> 
> Sorry for the late reply, been on vacation.
> 
> The main thing is you try to reuse the table:
> 
> static const struct phy_setting settings[] = {}
> 
> If you can build your helper on top of phy_lookup_setting() even
> better. You don't need a phy_device to use those.
> 
> 	Andrew

Thank for the hint Andrew! I took a look into the phy-core code,
and a little into phylink. However, I still have the same concern
regarding modes that are supported/unsupported by hardware (managed
by the firmware in our case). Let's say I'm only looking for duplex
modes and iterate over speeds with advertised modes map as an argument
for phy_lookup_setting. In this case, I still need another table/map of
hardware compatible link modes to check against. Theese are actually
the maps we'd like to keep in the driver (and proposed in [1]), so
maybe the simple intersect check between them and the advertised modes
is sufficient?

[1] https://lore.kernel.org/netdev/20230823180633.2450617-4-pawel.chmielewski@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
