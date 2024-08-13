Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA591950D17
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 21:25:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1911240B07;
	Tue, 13 Aug 2024 19:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9rdJQdyyyUJP; Tue, 13 Aug 2024 19:25:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C57F40AFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723577106;
	bh=LiorQ9Q7Fu3oKFM6AVh9hXAv1nJHR0eKgxBS3i0heWY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XydEFekxLQRc8+hRUzq95r0mO1M4YvGZlB0DerF5sBbVtRfytiBXuVNvpcIFtO7Mt
	 cnCZUW0TaSAMzzP1rj2DXDzJUpFSdw23RQynK7vkP+tUNmSTgpM+28ssqjVoK6Oxj9
	 6YTJuc49wa7elUPtW616dfsnGpMeuAFPM/EodbN9OOWByaNMaOkhGi123tCrRvieqm
	 +zfikVE2RQJnFWoZcKV2VSG+8ir++4iq9fA5nt2wBcFcqVWd1W9nceTQ32Z7T1HcRn
	 ryK94KdhcRmZGfU5MtpPMBd7gPjTbRY5Y9TLTilqt6ncMsbSTy4rcL3+zgLwp9fz4O
	 +WTZoYLgf0/Og==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C57F40AFB;
	Tue, 13 Aug 2024 19:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 034081BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3CC060776
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f21ymyz2wEAJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 19:25:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2674F607BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2674F607BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2674F607BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:25:02 +0000 (UTC)
X-CSE-ConnectionGUID: M+EVmxkRSCe7yBKRG+lziA==
X-CSE-MsgGUID: ELBuo4GSRLelqQaOUJxl9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="39270795"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="39270795"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 12:25:02 -0700
X-CSE-ConnectionGUID: I8M/8hAoTm6JiRcj/0r0EA==
X-CSE-MsgGUID: QLjJa+NnTgysrspIjyIYPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="59343017"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Aug 2024 12:25:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 12:25:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 13 Aug 2024 12:25:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 13 Aug 2024 12:25:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lWttOsI4fm06rnwQjPGAJIjE9ffetWULFQebU2jWug/0nJ3OP/M0bhXZseyOmrotlvsz74daRfl+c1sgi4KfdCedcKoISy+v2rZxSHgFPWjTKCDCZr/ttGEbqMZ52aqcWHi7LkHV6D9ofd7a1zHG5SnKTsmOwQhuiiKh2mZhW1PmjFv+29d92FglGgUFMSo2K4klcxO0KTCqIRMO0Xvf1kEmS96b919hR4UPTUYCoUyPc0F1zxAdp70c3NZQ4Ib255mSEvq0bqiyg+1zUsnZ1PfmTQ1LLyxJzYG6k6l3xV8RjmGpCQ4Q3XpWWQ4+rRVdMu7xXl8M58IoXkeB8rkijw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LiorQ9Q7Fu3oKFM6AVh9hXAv1nJHR0eKgxBS3i0heWY=;
 b=x+FbasPzB7xKurOsxgKy+ItJBNpio0YdheH2e8p6w5JSeYDQz2KP2FniCjciLtao0HsVFY3LnM4sjIgwVDcdD3Unlgl6KThCFP5ukvucUK1ge2p6jZMfUfZTwrMKZ4AVkiiCx/sf3mf4CazudxoXQ183jr/+ojaoV1aSSLJLJnTjn29l0UeQ8KODBqWLel29dt2PdxicKHTekefGdZKb4Ybrs1bY+axxGdhRrxrsDajAAIS4Q0ruoO7h/KVh0qjR6K1bZe9CMg2MvASI/7G6eYPOUyj/DddkohPs5qP1ZVSQcLYnFdzUnFZ2+QhdRYTMKT0ren53bYQnvhq8M1KWEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY8PR11MB6916.namprd11.prod.outlook.com (2603:10b6:930:58::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7828.32; Tue, 13 Aug 2024 19:24:59 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7828.023; Tue, 13 Aug 2024
 19:24:58 +0000
Date: Tue, 13 Aug 2024 21:24:53 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Message-ID: <ZruzBXwsFswL3lUe@boxer>
References: <20240812125009.62635-1-dawid.osuchowski@linux.intel.com>
 <ZrtIO2durwKP7ue/@boxer>
 <1c0db79b-dd8c-4ab8-b108-42395a737836@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1c0db79b-dd8c-4ab8-b108-42395a737836@linux.intel.com>
X-ClientProxiedBy: MI1P293CA0017.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::13) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY8PR11MB6916:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d5a2840-aa84-441b-e4e1-08dcbbcd9ecf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LV+6pqQFesjIt58iEFBY2yyWKmFa5pUodFxulkGIHen+D0LfzuCH7ADyZxeW?=
 =?us-ascii?Q?93bI6jPHTHBJZQXopDz1QA9oGpkaliv2x7z0ns6PL7TkirraZgjz6jBjOIuq?=
 =?us-ascii?Q?D5OEt4bDBCQGyTfaZzdonDTkZ4KrhuAIxfjzEtFJUPLdLSq6thB5og1Lhj6A?=
 =?us-ascii?Q?t3DuQftZguOVRs3ccaq5tXGX2k0D5s21vAX9e9g6RudTOx6ttGt3Pxg4uuIg?=
 =?us-ascii?Q?iPwjpU/0ivEV9QFsqNBWJ3HlAruoc5vtxfwztlHTuYWVqDxcI3wjkdkOwEyk?=
 =?us-ascii?Q?R9ThxLNgNOing3XeSMiSkLk+nv/Gip/M7UX6HKL5qwPI/H0EXJCARjcyDT11?=
 =?us-ascii?Q?W2xEHDOrebiV/Kw4KB5/lEYfmmd28MKW5nG4k2pvDng9M3ZTo1o/F6tXw5fK?=
 =?us-ascii?Q?j3eXEaehk9IhJjMtRYjE67NShaW8dGJisViTHv3pKpSoNm7n1RL7i2VUNThd?=
 =?us-ascii?Q?Z7LSFlEvpGTaQiEbFG9AihgcpaT8wyM/B5YAonkyF24eUw9Fr+EnFk5FQCLt?=
 =?us-ascii?Q?gbiYmBXT70enaoavhyfnP9U1rW1lPbTrTdI1crGhT9YTDBY5IiGTd25wgA3/?=
 =?us-ascii?Q?CHh+jrQ0+HGhNDTU7p/Q1RCNKqIbBla3ByTG3yIHvRVV7ON5yzubaYY5o74r?=
 =?us-ascii?Q?nvAP0EnbguNeIn/zbxP0ufkobG5C38jjynwDHpa4te/YMK4WQZQlQkGeLgd+?=
 =?us-ascii?Q?ih0uNk1R+N5ki/VcbrvaLFRFTty+g5Q5sWFF1Ue9AGrJxbJxUXt9zabeP5Nf?=
 =?us-ascii?Q?yrwh4A/wtPEyLK4YMvtvf7fCbtENwpdt9k5FoFIxGBqX2nhyLfDXt3i8crKL?=
 =?us-ascii?Q?WM+fP3bxu1rSpaQBh2a4vplUNT3aIeD92+0bNqgG2pkeksr3iE0nh2S/U3/e?=
 =?us-ascii?Q?EmYocIamo2mKLy6Px4x2/GJcov/sKSwXmXA9qg4IeiO7wgtPVJNhiLrytyeG?=
 =?us-ascii?Q?mTI9U5eVWsNulgqH2dmJtbMvxBGDGrbV+Qp93hT3iF9xszMtgas60YYPK6cb?=
 =?us-ascii?Q?eiKmAKkzyHW/CpvqvJe38bjYnX1YLCqzurOc9uA50FIpYQRBWd7JguMVuurf?=
 =?us-ascii?Q?Hefne0brlNpsm4Yb4yxJQWcqy8zaK0cOl5h0cSGVeJh5i0hk6FcugoTsbVDG?=
 =?us-ascii?Q?NgSIfnr+PoZSFYt08D09/GdHCqoJStx7isnvyVgavTJ7CVKzBdxbnqqHD+D9?=
 =?us-ascii?Q?p9yMtotrfLhIHIC6hLEnYgHd+JvYR2HA+aNdFflnikRv4TqsCLo9ttweo50j?=
 =?us-ascii?Q?pl8hXcr8xJ4mLlDB/FCMGimkzgpx3uHIsYeO6WPBS8U7Kdf5GqwpzKJ5iF1i?=
 =?us-ascii?Q?UlEkP6kJNp/jhQwK7w3lYhs3owiLPjjRlLVF2xRLTTA5iA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nq7haiPEDdQXiapIKwjJVr/0xwOWkg64NvFLJh/DyKMcadOL+xiV18SGSV9t?=
 =?us-ascii?Q?u7kVkVDfxtjLLThPs+ytROnd5wQfijP6VG/sxC9nU30gjoJtljklwQPT/d1X?=
 =?us-ascii?Q?hlqmREtBmKG6pJGCet+N/sBOwrHafMI+ke+i4sq7lSFpFhmjcNLByDDIhnFU?=
 =?us-ascii?Q?dVPyc8LIJhanSsy/1RqBdSAmfSvdjsD8gVd8xOCjEFwdZkKRe1gl5Vj8KwFA?=
 =?us-ascii?Q?yaiQqerXDdF71AjiGa3ULZJx27GqWONYT1TPM/cQCdBMau6qDpU9fpEi5fnA?=
 =?us-ascii?Q?8+iSTMpZV7urNIqnD7mNSU+3Ylzn8BHhq+vIUigWWmSs+9RTACWnOPzfmtZd?=
 =?us-ascii?Q?NsHgouR2ulwRVKdeG/I3U04KpqxjZeAMh6cqfpAU/LH1gROraCzn6LE8MD1a?=
 =?us-ascii?Q?o8yhYu9w8N7ajOZJjfcUVjfsy9JSmceqyVwZbaPuKjLdIs/Gnwt1NxG9ZdaD?=
 =?us-ascii?Q?Jz/YPweCUV9YwDYTadnwXbX+VhAyt2al53A/bnw0fP192rzdvWosztHAr3V2?=
 =?us-ascii?Q?1ibELMC2xpv9Ij1zeB9+zkKB3iiubJyZoHPvGLA4VzrkudGJZyFwQN+0bAq5?=
 =?us-ascii?Q?5PHgK+AKjezKphD3Y68UE9VXb8THDXAmrG0iJ7TEDldCZ1d3TTfyv5o84NXq?=
 =?us-ascii?Q?Q8OMkGSKwtcgXx/I5O2kmsIV+rNVwmdPlffhSAIqfCzScZHiP35dkDiMa5M5?=
 =?us-ascii?Q?2h5dgDBiS5P2KrfBXWwQgWINwd51JNRsr8BLgelsxrWR7nIsXpIz8auydnMJ?=
 =?us-ascii?Q?qn959CTqJ8RYFK82MtaasLD1Eaey98ykxneg+ELm6P6zLDcPr2I4Deh0nKqV?=
 =?us-ascii?Q?qiXLqERloExNhqfDsG0GUxb8xGnbAPQaWqd4yK+qEVrtlJAEZIRDjdXw/I0V?=
 =?us-ascii?Q?ZtgzwEFWyp8Q2IHBDNK3Wy2XrMwZwyiw9KrZ2P8+4kgbpEum465jZhvw4YBq?=
 =?us-ascii?Q?QvxVkdVQEot5qqewOH6bCIfaVVtoqJlr1FMPdcFaAdcqzB8wtSIac2byZzro?=
 =?us-ascii?Q?WGa8eyedf3U9F6uizGqjjj59JWdRdsQ+TvNhHdasxTpGqOkA7gzBsCNgv+zu?=
 =?us-ascii?Q?BdB9ywG6p2oEr8xzpEmJFpIQ5lRRkk49eunyDNzN/Cq0IDuzn7A03Zfzqa/U?=
 =?us-ascii?Q?42EqaAM+pBrp9JHvnmaP1x0wR4ij6ZP/tIkdi44sMQd4HXx9Ovn0po5DYV3S?=
 =?us-ascii?Q?c3f1bnFtM+ZGekJ5WbfInQ5KpPSfAy8a2/pQh4pH8vcOZFB2qkoiFfFmzh3N?=
 =?us-ascii?Q?Nji7oWksDAMIBACDSL1Vlg4++LTFFN+au1zAUwh2OakUoa3WCdEin9up009g?=
 =?us-ascii?Q?YiYlj+I/ZyE4nSMjM2jyi7Jy2ks/Mjy34wWHcSNl+yaScdxIBZSm1ER4/bCD?=
 =?us-ascii?Q?jcJfZ37+k7/porGRtZvjD6tsC323P1wZ9mrngTzCciT1bWQA4IoBeI7SOaYQ?=
 =?us-ascii?Q?E8epL75E8G+RDc7b/nTm9cY8P54JLDoske6N5Emjb5sIeFOp3ERexjlJ/RxB?=
 =?us-ascii?Q?rOzR0HkBY+zaDzC+IZKEBG5iZf9RzIz2DT6ryq+Q3hk0dd0cW6NXt6retIyr?=
 =?us-ascii?Q?mgwIcJ4h6RE0IykUXW45VKSvbcM7k02+JW/H+aWuPHojlqZYKwD+8VbjaSRt?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d5a2840-aa84-441b-e4e1-08dcbbcd9ecf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 19:24:58.7932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kEp5eA8O01IwHOS1Ot/6uGWhp9GF/YG2jagiuxovYw3qGW0u+VF+0dsdqyKroI8RMP8Snwb3phH1VCWK9UgBc39zY5SBFer4yx1Ui7wXjtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6916
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723577103; x=1755113103;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=E/tTwncbwxxLh4oF+CiAKNDQEtK3mStQ/bRu7MRMSak=;
 b=Sj7V2jvVI1KabXqoDzOLapi9zhHsr8aIHcedL1H+qQN/gOJ6py9JqDHL
 vV3pV4fMWNo345uIppDyC1MjOdjE9nF9/FvWo5qRoqKF2vaS1bYXFBtnU
 9dA8Qm/+/rCqEjlD75vEhDRd1b1tC/fevOzN2pBqIjFWLfzEnSozc0z0y
 CdHztKnFx+ODLT9jZyZBpRmzhxC1m6rpPZwuN/qJyUaIhZ2trQPHEajEk
 toM8JreOYl29bpnyAk3ZsdPBewelweOxFGEXX2l4tM2OCPtrdb5MlpZ1R
 P8thgefZG7wBSXir3dnk0UwOZXqslolEcURoq9+15mKBNsaQYJD9h548q
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Sj7V2jvV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 13, 2024 at 05:31:37PM +0200, Dawid Osuchowski wrote:
> On 13.08.2024 13:49, Maciej Fijalkowski wrote:
> > What about other intel drivers tho?
> 
> I have not performed detailed analysis of other intel ethernet drivers in
> this regard, but it is surely a topic worth investigating.

If you could take some action upon this then it would be great. I'm always
hesitating with providing the review tag against a change that already
contains few of them, but given that I dedicated some time to look into
that:

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> 
> --Dawid
