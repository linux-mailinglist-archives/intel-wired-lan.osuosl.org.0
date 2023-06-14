Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D562872FF15
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 14:50:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5618041D76;
	Wed, 14 Jun 2023 12:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5618041D76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686747046;
	bh=ccSHcr+Txo87MaLubLcihSR9CfnyEs5SrasrTR8UCJc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vFwxrXwwAPDl0QKBAmntTovDQ4/UGBUAM3YLrJ+QmJDW148J6x6jMw3kKFdGAcbkZ
	 xnEdibqtkH00NNwC7qggbJDCOi+fD07ruJicfftkdvFhKbJLcqS8VcyKKbkCz1TY/b
	 +QFaoXuHtGJwD78OnLS7o5VmryKQG+3S1j6Rt5tAX0ofNIPTB+mroeMZSDWdSLuduB
	 fSiDaKcLqgyhtRcxsABya3G3zX01y8aHKtK3XuGsJawyzRxriPWT91bshPInJf8d1q
	 WbqRnK2V388IrzxlRRQOlWV5Iw1Cm7xusqOSeml0HyCceA/jj810x8nzvP6cj8xa8V
	 RJaB1UjMZzoWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nQhC9g5wGgVH; Wed, 14 Jun 2023 12:50:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D51F441D64;
	Wed, 14 Jun 2023 12:50:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D51F441D64
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7BF31BF329
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2B86612A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2B86612A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2jUBMjm7ZAHp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 12:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63B6B605BA
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63B6B605BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:50:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="361081096"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="361081096"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 05:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="741830536"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="741830536"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 14 Jun 2023 05:50:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 05:50:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 05:50:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 05:50:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 05:50:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HaYtorS/fNTEInsRx3GH4q+qxPgEfDlYud3qbf/OePswBPSaZq375v8z9Umaj3jCQu2DF2avu7Y0b8eWFRNhgxCSWM5w/E6xGuAeT9dwMAJOjYDEOPKLgf4WlWyT19Vp/4O2GVDPMnKEVNbU/Rbo70cCXv5snaBZq8IQ1OwKq6GdkF2CMISYc6C90+YHRK5mNjMcRCJm5iofOEwVHGlVG3AKLFV5f93bfxKY+MU037ViNNpR3ZnDbjw40InnISmsySku9Ub5M6yKv28goZ71OlPWh7tZ1RX+iE5AGZHWADf5isnQYTtt5xJnAKMOq41VMs+CNLkTjdoD0/bcmcbF3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dfxK78YVVYVFNswI1Ynig6+Mb4N4UI7e9491lIaFgyw=;
 b=c/5cbpeTM1yyYGZV0D5yg9uEBdUpr2Yvs2rxdtMmB3lkWRrlc3CYTaGpBxQjjpHcbysbHwQDieKr99K3OlWjcbr8oqhoUjZdjaFSr67CMO2B62UHpFCYNGQnLiqp+gQoWVNrkbKnEZDea+rCdT/K+jjP2b4JlbVLv0HEmbT4SYQDap6DZ71CRp+bzEaBAQ0lHUpZZrFMjPTtJCJ0w8EEzFHjZfDx2pOH2GZzZkmHgCYlRfbPWuxCUt6lMLcq5NRp3elVCAr1pBGD8+PlkrP8oQappTxnu6z29G9wagFDHeE3wkJ9vrGCY8ctRMUBVfx/gf8HubUVr28UgZ89jA1zaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.32; Wed, 14 Jun 2023 12:50:34 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 12:50:34 +0000
Date: Wed, 14 Jun 2023 14:50:28 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZIm3lHaa3Rjl2xRe@boxer>
References: <20230613151005.337462-1-maciej.fijalkowski@intel.com>
 <9eee635f-0898-f9d3-f3ba-f6da662c90cc@intel.com>
 <ZIiJOVMs4qK+PDsp@boxer> <874jnbxmye.fsf@toke.dk>
 <16f10691-3339-0a18-402a-dc54df5a2e21@intel.com>
Content-Disposition: inline
In-Reply-To: <16f10691-3339-0a18-402a-dc54df5a2e21@intel.com>
X-ClientProxiedBy: FR2P281CA0060.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::16) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA1PR11MB7386:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bcdd8eb-3988-4c64-35a0-08db6cd5f1c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: shgvtExka2tiJi7d92Xshz+uyW4T/dYapGxhdbSu/Pf1dTvjTdfkpfTE8Qky3YtpeZMMQ+hG3YsXP2iDuFPHUxIEm75dg6yNFqV1HCd/AbDWJ+3InqKilSk7AXmleUBlT/jvMbucgy+ceC7PQmxhm2Bw8M7n7l9aDsX1lDq5o6EeDPK1Fd5Oy8aO1RwdfQdD1ycT8sz8hrNBOnxxVgZ62Pvd/jvZQRE5yUf6zz5SfZ+p5UM+s0DXljbEtRg9k7ZXNIAGWet1YF2zunYDklOChTJp2PDB9JRo3uGU+uBSUehnCEjRLDXVV9+DAzAUTxa6fbZe7wmM08gghidiIiblKM15CZCKdT2oPJGdHd5QjrYDHOVFlKY76CaPMxfKmOgAHlp+fKILxQ8MSA3RskiIQJ/78m1mPca3GFJ69pdvJ1MNyxnLAShtKwiXE0xdZC41taq7vOjpVCfH/1m0pn7IKnWZsluChXxwgCysDd14jTK1pD2phc2WslDOcpqGW+X3n+7/FO43tFVoAGOf4/CDpo7pOPpr0jhLgXUDb5yMAMH0RvuRe6ENw4zvpupLVWBF/Tx1yucAdHL2JOAYn6vo3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199021)(186003)(66574015)(83380400001)(2906002)(33716001)(82960400001)(38100700002)(6486002)(6666004)(966005)(41300700001)(316002)(6506007)(5660300002)(6862004)(8936002)(86362001)(478600001)(9686003)(6636002)(66946007)(66476007)(4326008)(6512007)(26005)(8676002)(66556008)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?VuGA2AHpdbylcJ6F0k3BTJEcir6neigvv+PAbX1WfYrnubll+J5VksH1y7?=
 =?iso-8859-1?Q?3l7Ffewld24WDeF9Z0knYfN2mMJ/Z+Z2qlppl9dBNAOa9DepxxqwhptYKn?=
 =?iso-8859-1?Q?RU1qq/7rWQ0NF8u4U/v0LJ76ukXoD28uBA9MbiGKE/koginLHRCTF+PzGm?=
 =?iso-8859-1?Q?kP4e1tcooTgRuLrYrKrB6zTxx2XBx75h5dBafEWYQYjoxShS1UADFb4w9S?=
 =?iso-8859-1?Q?nasB1M3+LKKg8UA58QfmYPbe2WH2TS3CnF9H2oHXRnMxd69ptFVvFrDImn?=
 =?iso-8859-1?Q?EjBeZwcK6o0tqrW3CQo1baaGyKp1lPoTJD0qbTBdmLprF7rkepw/PfuKAb?=
 =?iso-8859-1?Q?rfmS3B8GgNAdxp+mj9bO0olqrSHtabEr+45RGH7+HYIRpfOYxSpnMu68us?=
 =?iso-8859-1?Q?MRyupS7GuMjtUz0ugt6U5AGcKqIdYLmUlxTyEu2zRKghogezY6rLbPrCQN?=
 =?iso-8859-1?Q?1ajQlyenUW8wRnip3hTXUol1Ie6qOWEYULTLUgyr9Ejj9DSNp+l5rMvCjh?=
 =?iso-8859-1?Q?lHTuw6JxpQbJEiuXbpF9+h7xg1SUjr2dL5rtO2dlRrdnFlEftV2/4SCJcM?=
 =?iso-8859-1?Q?loYYs4bAMILBBZjhtuAFTnCJqnImeK7JW40ZLLP8vsa7gE3FUIsoyKHNu6?=
 =?iso-8859-1?Q?g0sT0eKQILM5amf+bh9mkiHnoxBaPtQ+U5OUz9Gyf3o/Mdx9pJ7kTuhn4Q?=
 =?iso-8859-1?Q?JiiheJx0hqEthbdv6XJn93rO2GKw0cxggafLp3VFlO75evpOO3WpPR3/Xi?=
 =?iso-8859-1?Q?nfD8Iu3es3qZOnJ/mW+sNi0uUNIJ7SO7C8h28BZZANCZ0nWsx5bwyI6OrG?=
 =?iso-8859-1?Q?kwPpkkI/BVAo4ZDWKP9mEd2025iAX5O8DAen6oUf4moIqxt9maEA9Tx5ho?=
 =?iso-8859-1?Q?pimlXdOXMWZ4y2fq236G/ly9tkYQQ2ucEuLQ7UfeogvZSNnDTJmtWuIDzL?=
 =?iso-8859-1?Q?MXrhf9x2eajvYKvbxjBlgT3etfm0gErEHdHurTs9wRQuRESTKV8cf3xkda?=
 =?iso-8859-1?Q?O+yRXXV+1tQm9HbzZZwT9PedIXrmazlKcK/am1M0lJtCpUWlxNbS+Qifhf?=
 =?iso-8859-1?Q?fyRsQj5RSKLN5o5aLQrJM99S2sl9b4I3wdDkCvUhw1MDLrbUixyiYeI3VC?=
 =?iso-8859-1?Q?OnFkYSNQOfelXoBgLXvNzF/BeQNiVUHr4oekqYMelai7afAVZZqQNZesV3?=
 =?iso-8859-1?Q?zwVEw6O96EGLTi1LSMk4fOsnK8F8vLHwBshs2xqzvX4rPXaJ2a/1V9XPJM?=
 =?iso-8859-1?Q?j5TSqahkEUT0nfAfNGsjFSvkagwbTuESv/ndIJ66cCMjMY8C3MWL9t4+5S?=
 =?iso-8859-1?Q?gZQivY93LzI6SL18PFZUTEMy6pGOJFwL5qPMUBNixV39toE0t+wKTgvZzp?=
 =?iso-8859-1?Q?Yh16Zq+88upNmav1LYpRF2sOIpNyuU5bc3pFqtvzkk3uQZsn/vRwXHyNvQ?=
 =?iso-8859-1?Q?sr2VqkA9OTQf5BzuXHkl6Ke/NlqLKTGgCEO6hgm7noC+DbwmhxXiZdn/Fe?=
 =?iso-8859-1?Q?eFvDkSqClWEd6bJspwnjezhRmD6DpII9E+5y/faa1hndpSCYDnkvIKA6mv?=
 =?iso-8859-1?Q?3iHKG71KLXx1ZKWpIwlPgH9w7gLfjFk4Qgj0KCj893kRcI0x8LC0nmC17H?=
 =?iso-8859-1?Q?u9U86bGF9PbKUmkXRUyGSH0Unc0Kt7Nt7mRD1pVolmHsCcO11X8j1a0w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bcdd8eb-3988-4c64-35a0-08db6cd5f1c0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 12:50:34.4222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dBqiwrevzdpJSxAMkM8NeR8guiemsxR0453DScSF7nU+Q3Mr8MyCo6wfEvxFuuNfECKQipy9kjR94Fb3fPG/V9D5gfZp1sbz/SjRu6rDgMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686747038; x=1718283038;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Z5Oafq7Moxfe8j2cVUVfIIjG9RgFckur6bPmtIVQV9A=;
 b=GovUJzy0vN+QUPgP+HyEjLFzSrqAEk2uq2WnsYFdkIlBgw3V4x4ZiIpq
 /uH4LQsi0G3qDUgCPn6AqHuHqsJF6N7iQRU9/a2F+9OnEwvJGV/z0VKR/
 1DmyQqA9maYAOxP/i/oFbGzL5HZ0lc70irJAgqSS2PWLvUvblndnCSll2
 2cAfTpIJAGzN93jnXKbVMZET2doLRIaPj0JyfYV5p3YK/MWCx5rBb8u0P
 ocRSSdQHp7Ii1BteikWvJh0gScCO1xHuO+l/KAL3sp3pdkRbpg2C0SlrE
 6pdNETOztfmwFb8UT7MG3b0uG77jB8oqoNG7tANeiowJ/y6injaeWQ0LW
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GovUJzy0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: allow hot-swapping XDP
 programs
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
Cc: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@kernel.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com, anthony.l.nguyen@intel.com, fred@cloudflare.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 14, 2023 at 02:40:07PM +0200, Alexander Lobakin wrote:
> From: Toke H=F8iland-J=F8rgensen <toke@kernel.org>
> Date: Tue, 13 Jun 2023 19:59:37 +0200
> =

> > Maciej Fijalkowski <maciej.fijalkowski@intel.com> writes:
> > =

> >> On Tue, Jun 13, 2023 at 05:15:15PM +0200, Alexander Lobakin wrote:
> >>> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> >>> Date: Tue, 13 Jun 2023 17:10:05 +0200
> =

> [...]
> =

> >> Since we removed rcu sections from driver sides and given an assumption
> >> that local_bh_{dis,en}able() pair serves this purpose now i believe th=
is
> >> is safe. Are you aware of:
> >>
> >> https://lore.kernel.org/bpf/20210624160609.292325-1-toke@redhat.com/
> =

> Why [0] then? Added in [1] precisely for the sake of safe XDP prog
> access and wasn't removed :s I was relying on that one in my suggestions
> and code :D
> =

> > =

> > As the author of that series, I agree that it's not necessary to add
> > additional RCU protection. ice_vsi_assign_bpf_prog() already uses xchg()
> > and WRITE_ONCE() which should protect against tearing, and the xdp_prog
> > pointer being passed to ice_run_xdp() is a copy residing on the stack,
> > so it will only be read once per NAPI cycle anyway (which is in line
> > with how most other drivers do it).
> =

> What if a NAPI polling cycle is being run on one core while at the very
> same moment I'm replacing the XDP prog on another core? Not in terms of
> pointer tearing, I see now that this is handled correctly, but in terms
> of refcounts? Can't bpf_prog_put() free it while the polling is still
> active?

Hmm you mean we should do bpf_prog_put() *after* we update bpf_prog on
ice_rx_ring? I think this is a fair point as we don't bump the refcount
per each Rx ring that holds the ptr to bpf_prog, we just rely on the main
one from VSI.

> =

> > =

> > It *would* be nice to add an __rcu annotation to ice_vsi->xdp_prog and
> > ice_rx_ring->xdp_prog (and move to using rcu_dereference(),
> > rcu_assign_pointer() etc), but this is more a documentation/static
> > checker thing than it's a "correctness of the generated code" thing :)

Agree but I would rather address the rest of Intel drivers in the series.

> > =

> > -Toke
> =

> [0]
> https://elixir.bootlin.com/linux/v6.4-rc6/source/drivers/net/ethernet/mel=
lanox/mlx5/core/en_txrx.c#L141
> [1]
> https://github.com/alobakin/linux/commit/9c25a22dfb00270372224721fed64696=
5420323a
> =

> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
