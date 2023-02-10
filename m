Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D236692AFA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Feb 2023 00:07:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DDBC60E4F;
	Fri, 10 Feb 2023 23:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DDBC60E4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676070450;
	bh=Q3ViWL+1cwlO0ftE5d/tLmxFOhTvGKfifT5or38kaMI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QIpV49aCrQfjizh/ZlgM9RSNVZ+kztCURNo7pb7tCGpqNhXdfC+71XFgYpC6moH5L
	 7HrXUS2OsrhaI4ulVpPezRH8WNWk4l0RFhZmueU5jJal1amqFctu6uy61GfgxYTVEd
	 k8dqAchg7LPpFz6ZLRlXfplLV7vhhqhLcu4Uu9eNGW0/B2ihjiAH0VQtBYQXD3H9SR
	 rD4ereSwCzkOL5iT4nX+4zAvaS4ZT3wKqjqKUvhndyR6B12Z9BdSN42iN4tletPkXR
	 xv5iuUL7rggAtEcsBuqAoTma4UrnXu+wGGx9+IYW108JNZPtXO7tF8XQAjuJ6UbaHj
	 1jcVnp8p3PFTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJWV8Vfxkz9x; Fri, 10 Feb 2023 23:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81C9060746;
	Fri, 10 Feb 2023 23:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81C9060746
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B67A51BF473
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 23:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9910741B4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 23:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9910741B4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRjo1UF1xqGw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 23:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CE9D41B4B
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CE9D41B4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 23:07:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="328243052"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="328243052"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 15:07:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="997099973"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="997099973"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 10 Feb 2023 15:07:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 15:07:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 10 Feb 2023 15:07:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 10 Feb 2023 15:07:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YDTY7VEndwdpYCQR1Lt/sjEdMfM+bOfkkt9E9iITnWclw00Tb6qxzcrRtavNBfGM/WKkYAPwZiQpTg2N/8yLk5DulSHAnb3H5ch0Y2Ovp1QrmpFxldmXYw1nKZvHuPMVsW5ukRkXlQYcCG98F9wnlcK+6EFb1T+yy1FeJVgf9r5X4OA38lm/xkuZsBsUPLVjwmpwX1Imb8QdgXt5qBpl1kpylyeE+cx1M9Sl3EJxd3q+oFHI9x6BiRllpJeYSQ5SikiaL5vBSxGV9kBpJ8XSHY/RLChVZi3kuowTJthngZTjM48cLcTK436NrY8MRwKkbmrOE4cQvvuvhJWyxLNtew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ruPaELamf/1yntMRApaKTwldC0bcFwdNKS5R3xlKYiw=;
 b=lhdS2UBrrfVt9KKV1cNd2Gu+FZVXkNMpiRJXws9GofK3fSDm5EC2qBqUIUN5fhhfiY+1qGoToVFLt2jNrKEvq6iWhTKAjTQwUR3BneTA5i1YklWhuGJfcx5fHcJeIbj7XUYnAs11kvkLMm4liMCR8i264rUy4YAEcbmq17F+KpbH6HgThM91yIgsEwq10ERdqqTw/t5eGnEuFOTEqOnAwQu7iq2AXzAe7yQRE92aae8XpDI0rKwKjptcsA/jCtEr/WAfXiZW96QbeWnQh7MfWCiX50SSQ2NtSIcgSbJJJOSQdbetz9xcG6m1df+MCcApdShSYtv6V688JrLzW6OSLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by SJ2PR11MB7426.namprd11.prod.outlook.com (2603:10b6:a03:4c2::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.21; Fri, 10 Feb
 2023 23:07:15 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::b12:b4f8:776d:f18c]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::b12:b4f8:776d:f18c%7]) with mapi id 15.20.6086.021; Fri, 10 Feb 2023
 23:07:15 +0000
Message-ID: <6e2e4b34-0e28-ed2c-1098-0c44ff4af9a8@intel.com>
Date: Fri, 10 Feb 2023 17:07:12 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <Y+Oky4j0zDyfLp8r@localhost.localdomain>
 <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
 <d6785ec7-ef66-3d97-d87a-acf6dc7cff2d@intel.com>
 <adcb9bc8-c8ff-05ac-b410-c064704c51d8@intel.com>
Content-Language: en-US
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <adcb9bc8-c8ff-05ac-b410-c064704c51d8@intel.com>
X-ClientProxiedBy: SJ0PR13CA0012.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::17) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|SJ2PR11MB7426:EE_
X-MS-Office365-Filtering-Correlation-Id: 099a388a-9735-4bdc-e8c8-08db0bbb8cc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vx9oV9ZisKmGCGh/kbT0oYZVdsifr6WyD6TrKVIucGCVxbnFLIv3mzWuecrN5Rc8CvY0UPoZagvnPO2emAKY57KFVI4orn0uTs5ZKaNB4gMBTNprBrXILW2j/+z0uSPuZCQRc2BvlQTNE3UDnqbe5Nj6hg4I/KlfO1cVTIUkYo/tPx9zqu0uZ1jnczpXV3bnkhkopJKnkYAzxGefbK91nufzm6/mE0YVtnKrVqyyVabWZwFQ+v7XwMgwVhZ486bVvdFjmjTf3UTM5D1VctiSM2X6pBbORlBjnUyn//Uo3TIKBbs7I3CjeKKGHA6pgC+8XSogvyruEVvvHoFAeiokn0T5ncd+inyuKWin8B1VNrka2ZmAfR6BkBgu1UFPvYLq2Hzf7JZfHtoM3/6o/RUTClGwgKQ/DREtl1KQH62b6lLvdQ7kaVzrUVQF7iV/aK+/bEuUYAO79OK6n9pKu83e8ULegENO4fw/ux4q7CdZ1brVjwItBBQUuemF7VoxGJQ4pWFagLpHO5PRRcD5Pg0O5ekyt6fl+fmTNorBN8YhCcNTKEAhNIC+cEV6olpRwTuELsqzgeLS70CdCdp3bS+Jfk//pr/LQ+fzpg+bjWwPdigkUg3075I0i/njIE0AdCbw8f/PyoufitipyjIgTi7N5/9W7Q/FUcohiTuau2FCreM9nfO8XRBW0naXnepmEDgNhXmh7T5yd4pjLMtCxUOEBAJJW2IYwiMK6iWNTxFDPNs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(346002)(136003)(366004)(39860400002)(451199018)(31696002)(86362001)(36756003)(38100700002)(82960400001)(26005)(4326008)(186003)(66556008)(8676002)(66476007)(6506007)(66946007)(6512007)(8936002)(4744005)(5660300002)(6666004)(41300700001)(478600001)(6486002)(316002)(110136005)(2906002)(53546011)(2616005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b09TUldIazhSZTc4V2laZGtpUDdsLzZtNm1rMFFnUDVOK0xXaHdrSkpyc3Ji?=
 =?utf-8?B?SGllaUNoSzRFSzR0UytLNFdOc3NCckZaYjhDbHpYYXZ3QTh6THRpSkhlWE55?=
 =?utf-8?B?K3MxcktiY3lIMGdpdGthdlBYd1pkWktBZW9Kb1VPTkpTWjhZVGsrZXJPQTF1?=
 =?utf-8?B?NndmeXN2bm9GN1VCVkRIbWVCM2lVbFhQOTB1Y2pFa21USUFnQ1NHRmhuUlFI?=
 =?utf-8?B?MmtRYWNKUEVrVnJOUGtReHU4SWZrMG5tMmVOa1N3emsrc21XRDlKcUZaNjF2?=
 =?utf-8?B?VXZVS09mTkxqSll0UkM5Q3dRdEhaSHpKS1dtY3pnMmxwVW9HMW4xSEEyNnM0?=
 =?utf-8?B?bGVPVjk2UHlSekxoS2JtbGFHY3lIS0pHK3RydHlReDRHSHY4TFl6UmRsVXdH?=
 =?utf-8?B?RWptbVMwV3Y1Y2FreFdudzc5bWpHRFdDd0NwQ2g3WnBrZmloWU03ZUFkd0VE?=
 =?utf-8?B?QXFJMFRkK2UyR3J4OWptb1JBb1NkU21lbXRhZk1qMVhnbXFIRlNjUkFiTGRE?=
 =?utf-8?B?czlBc2JSQzBlY2RtQksxNU1yWC9IM3NITXRMVnJ5UGpLbVVVdXhuN09JOTRk?=
 =?utf-8?B?NG9FL0F3U3NpSVhqTXdpeHg5UXd3NTlwWVMrODZDc09Ka3Y2UFhnR0N6TWE4?=
 =?utf-8?B?NzExbVFRbm5EcFpiTTNTQ1Q3Mm1reXFqZXlrRDNCdWxIcEZEVjd1dHRVUmdr?=
 =?utf-8?B?cWJyZWY4bEhMN3U3L2RZaVh0SDIvNjZmeE1VbnFHMXllTTE2RHNrT1VObDYw?=
 =?utf-8?B?OUJlYU5JQWd2VWErTjdoSEpJUnZuTXIyeGppWUxKNDVRL1A2SVRPUnVVVVI1?=
 =?utf-8?B?ajgrcVVFcjhOa1p3TmwvNU5FcGM0SVA4bDlDL2FJQXBpOWYvdlNrR0h6azJ5?=
 =?utf-8?B?WE9ZQTMwekJueFQ1OFk5Wk54T0d5WDhjSFZYZDdhTnRYcjBodlFEMVpjaEdN?=
 =?utf-8?B?T29WUEdWR0dMSW9MRElkaE1aVlJXTFpSUU50eXRVanVoSTdDMi9yY0oxL2dN?=
 =?utf-8?B?ejVaNlUrV2V3a0lBWlJRcVdaa1dvU0RtOE96NUFNQ0s1QkllVmFJTHFkZDho?=
 =?utf-8?B?WE52S1pLSzF4ZGpUVWVXRU91aEF2THE3czEvSVR0V0F2UVdyWWw4Nm1OcFBn?=
 =?utf-8?B?a0Jxa3l3d0d6NUhIMXE4UVRSenY1c2d4TjVLSVNXN3owMXk2cUR6WjVCWHFz?=
 =?utf-8?B?WW1NZHQ0RDFuWmtlRzFLQ3FkVkJydDVhY3hJT0tVcWpFV1BpZFBSa3E2Rkgz?=
 =?utf-8?B?aWhpZlhyWFNiTHYrY1JmM3lZSWdYZXR2aEhSTUVSbTFEUmRjTlRNZmVHSTdJ?=
 =?utf-8?B?SUk3QlFIUGtpdDFnTWE5Z1lPelhsRjdVc0RPWjU4TUZpS2N3Y3lvZWlsaWxI?=
 =?utf-8?B?OGZCUmNuRXRxeEY4NHlXdmJOUjlaekRvSXRMaExOY0dpa1pWeHVBMmhQU1Fy?=
 =?utf-8?B?Rk5OWWZMdjloc1FZQ2MyRE9VZFd5cC9NRkpQQ1R4WXNPSlBOZUJtaXRTRDg3?=
 =?utf-8?B?TFNXNGhwNEhnalFlUTFKU2JTMnlMaFNlVy9OUG1mbU9WWkNlNVlJT09MY3dI?=
 =?utf-8?B?U0tvMFBBMEc1WU9RSEVESWNhMUp6emU5ZjJIVmtSdE8xL0ZubWg4Uy8yWEhB?=
 =?utf-8?B?QnZzRjVJNGRuN0Q2RnZyVW5UQ29sYlJEYjV4MXJqUnhNelNKejU1MEJ0aGRw?=
 =?utf-8?B?QkQ0MElaaUNaSUo5MS9XY1daUkZqY05QZGhnbFZzYWJZTVpIM2dTendnaWNx?=
 =?utf-8?B?TUUzbCtMYThKWW1ZYXhocmlFRmcvcjRnTWhBS3BMdnpRYUxuSFpMcG9NYjVD?=
 =?utf-8?B?elVuLzJlNWl1Q0g5REdNVUtIODlDaW10WDJuOU9nd210TUJqYmw4WWpvL3p3?=
 =?utf-8?B?OVNLMmxQNjFmYlBPSForNjdxejVtVWFGRU9CbkJuSTNGb1JCaFF0SGxUZ25q?=
 =?utf-8?B?c0c3bzlPczZtNHphRlZYRktrY0xJU2lzd090SmxZUExvdVZVT2xIQ0tzdnZz?=
 =?utf-8?B?V1dMcnVnSHBTaG0xRUNNaVBuTzhjc3pHTm5LN244R2hWWHdVdWpuNVcyNTRi?=
 =?utf-8?B?SmFkMUNkNE9NUkt4TVBxRHIyamhPeE83LysyUTU2alJ3cU1vc0NSMFRiT05F?=
 =?utf-8?B?SVRtSWI5WGdla3BZVjRid0xRY0V3YS9MakJLVXM2d0QwQXIwSzNlNXVYaXha?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 099a388a-9735-4bdc-e8c8-08db0bbb8cc5
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 23:07:15.3345 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NGMbWSk+8ZIwm4feEwVFC2IV2jkUkg1Hjr3eIvdZw8LLaiFh/mo1jt7UcHxA3xW2aWSPz6AZflwEjGOtY67v6lye0NRppnoLTsre7/vOlUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7426
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676070443; x=1707606443;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aCoKonvWO/CisGpyInFEbF540099rYl3QelyLWMFglc=;
 b=Dc4RTqAsyjyRI9EFrwpNfLQC8nIu4gha6Cq+e2KK/qH+913BfMu/y8Mz
 a6TsuzpvHMT7ATk6UcKnSlCIseZBT4vRR3w3pqpr4qxmzjQ6iRv2MBCjW
 PsVIWMBgU+Tbfwo2cRR4RbwJlYkGPPN9YQb7r/lKCMxHbSRK08iklXgmn
 64STnnTry17xuPX9CLK7BrNuElCSzaia7S0SgXeB66lA2h63aWaN0TN5J
 ARqBbQOb8FrXvxs7tJnoytir22lCn/Y6v2ITyI7wzKYiR5pU/APC1TRW2
 Oz/U5mmoyJvz/KqRE7AfPUHUzzCIlxd7+Tnf3CCrvra4rb/lYWnbpsV0A
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dc4RTqAs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyLzEwLzIwMjMgMTE6MDUgQU0sIEplc3NlIEJyYW5kZWJ1cmcgd3JvdGU6Cj4gT24gMi85
LzIwMjMgNjoyOCBQTSwgU2FtdWRyYWxhLCBTcmlkaGFyIHdyb3RlOgo+IAo+Pj4+IEJhc2ljYWxs
eSwgaG93IElGRl9QUk9NSVNDIHNob3VsZCB3b3JrPwo+Pj4KPj4+IFllcCwgaXQncyBhbHdheXMg
aG93IGl0IHNob3VsZCBoYXZlIHdvcmtlZCwgYnV0IGl0IHdhc24ndCBxdWl0ZSAKPj4+IHdvcmtp
bmcgcmlnaHQsIGFuZCB1c2luZyBicmlkZ2UgImZpeGVkIiBpdCBiZWNhdXNlIGJyaWRnZSBzZXRz
IGJvdGggCj4+PiBQUk9NSVNDIGFuZCBBTExNVUxUSSBiaXRzLgo+Pgo+PiBDYW4gdGhpcyBiZSBz
b2x2ZWQgYnkgbGV0dGluZyBvdnMgc2V0IG11bHRpY2FzdCBzbm9vcGluZyByYXRoZXIgdGhhbiAK
Pj4gZHJpdmVyIG92ZXJsb2FkaW5nIElGRl9QUk9NSVNDCj4+IMKgwqDCoCBvdnMtdnNjdGwgc2V0
IEJyaWRnZSBicjAgbWNhc3Rfc25vb3BpbmdfZW5hYmxlPXRydWUKPiAKPiBNaWdodCB3b3JrPyBO
byBvbmUgZWxzZSBoYXMgYnJvdWdodCB0aGlzIHVwIGJlZm9yZSBub3cuIEhvd2V2ZXIsIEkgc3Rp
bGwgCj4gdGhpbmsgb3VyIGRyaXZlciBpcyBkb2luZyB0aGUgd3JvbmcgdGhpbmcgYW5kIHRoaXMg
cGF0Y2ggaXMgbmVlZGVkLgo+CgpZZXMuIEFzIElGRl9QUk9NSVNDIGltcGxpZXMgbXVsdGljYXN0
IHBhY2tldHMgdG9vLCBkcml2ZXIgc2hvdWxkCmVuYWJsZSByZWNlaXZpbmcgbXVsdGljYXN0IGFu
ZCB5b3VyIHBhdGNoIGxvb2tzIGdvb2QuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
