Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA78A8FB0C5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 13:12:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7518D4148C;
	Tue,  4 Jun 2024 11:12:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ycmkrENeZd-X; Tue,  4 Jun 2024 11:12:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2A4F41402
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717499572;
	bh=nMTZXfhCeRxbjUcHYbM5gcYtiNO+R/tcPEdk9ouaVe0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MRPvIqZuJbpeQRdlPZtSTrAKc9bf0f6s6+CmOn76FeTl9L5TMuQM2z5qpsq85ozM6
	 WP/OS2BuBVsXPRsTUORd8CDvgnqUjP8GzYdd/ZnOOvwrMvq4f/9TRhbIqeTbaPxED9
	 3HTn4f2B3JUjZE5ZLI5TLhHmaAuJ9s69aw5k1+DbLX8sKoCgyz+sxlKMXdMmQn91oh
	 gafR/6G+gS5wU5xt7q+yFmrkEZovJakNkxU7tpYrTZ3/N5HtM25tFsf5FApLkeeLEY
	 jIbtswZJvlks9wG50/CD2CcUd5PFyR2M+p02E+uuAbjd9D1y5b7HTRkI5jftLMuqHY
	 36QksU81kx1NQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2A4F41402;
	Tue,  4 Jun 2024 11:12:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A23671BF83A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 11:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CC6040586
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 11:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id is3UxWdESOKX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 11:12:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ABB754010C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABB754010C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABB754010C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 11:12:48 +0000 (UTC)
X-CSE-ConnectionGUID: uWE60A4JQj2kfiugLiLdrQ==
X-CSE-MsgGUID: ol0VfWEWQyGoDdwzb4M+0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="16975759"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="16975759"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 04:12:47 -0700
X-CSE-ConnectionGUID: eU1TunBzSvWNs28kBflNjQ==
X-CSE-MsgGUID: KJ/At5PgTWO1Znz8XuvJ/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37798410"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 04:12:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 04:12:47 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 04:12:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 04:12:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 04:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8BQRrcB+jrf6S+wVA2L7G0RE+oT7FwRb2W4KIWhU7Be9jELlq3yOPzg8o5rl6KRvDwxkrJY/Wg+6ZfDUQZ6w4ELPnfLus4Z9Op41aMobrQF7GjoRlFLnlg5eK5MnaUc1xxodWpZ8dJqvOIAfLXO//QgA2Ngkz7HguUxoYXo3AyxGoCGi8MmsynB7MYG+nXaI2rOA/4RM29z6AWopnOnHyt4R+Z62cu1Ci0fMNtfmqWSvcM85k+HPa11zCbsy1iFwPKxugkMcYcH5Gob0hq4owVoOArikWmJ3fPzwY6UKcPSf5d0tnbvs+ViVATw43kL4BUJyT7j1Uo6uXA6nESURQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMTZXfhCeRxbjUcHYbM5gcYtiNO+R/tcPEdk9ouaVe0=;
 b=gPGiszEMsTLMQCyFLFgRbL7SIZyk/CyUkDr6HtlNdwePajYMKF45OX6gI6wNYTAYUmD8TA1nUmJd6LZgqZUvTT7DfSh8Cac4F45BNsc8tvrXJVd/QQGBpha0fRGp2EWgTAu//qbhqRJjhBt86Av6uSbyO/ZeDiIchYR8uDQH+hsA1utd1PTjOgqOxRAckPHkvmLD00cOLcIVh/UJF+hZT3omOvcwBwMBhnqCwbNBUFahjL2aNiQtuPUVksPWb39BXVmp1x0Lczni/Egn/QpYN+VPUyUm1f9YgQPaiMzmJDWzFIJmWGfxNcsT0uipI8qpebkfEzDqX63UhxYg5OsTkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SN7PR11MB6603.namprd11.prod.outlook.com (2603:10b6:806:271::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Tue, 4 Jun
 2024 11:12:44 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%7]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 11:12:43 +0000
Date: Tue, 4 Jun 2024 13:12:33 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Nelson, Shannon" <shannon.nelson@amd.com>
Message-ID: <Zl72oSbjAmqz583C@boxer>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-7-maciej.fijalkowski@intel.com>
 <3f1a5f28-4e5c-463e-9049-ffc23efc4f93@amd.com>
 <Zl7x4PowgJyXNwPp@boxer>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Zl7x4PowgJyXNwPp@boxer>
X-ClientProxiedBy: VI1PR06CA0116.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::45) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SN7PR11MB6603:EE_
X-MS-Office365-Filtering-Correlation-Id: 73af598d-1174-46ec-f543-08dc8487419a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?v13otR/O7WtgdlsDm/aefZqClQoDFP9pfXgFKu+zyIVUSy+mt+weDIzr6RQn?=
 =?us-ascii?Q?nl1L4lpiRo1WCQdyrhvwcYCxRi+6VLGahRmtIffAYkyPgotOMHWCxeYnv/AP?=
 =?us-ascii?Q?88lmSYyyWRYFMV9a7OnlvQ+G0YsBjamQf+HYZamhf+npFxQRujzsWDxdUPjK?=
 =?us-ascii?Q?uq1km9mpXnaKqgGfbHk5HCZMN3cp6TbJEqVoxc7ugd1koAsPUT6/t4yepdt4?=
 =?us-ascii?Q?/VZV2B/FYlCUZ1yYvpvO3q7laursUsuqaVbA0D/tfq0yRBZF5Q8Z/TMhXths?=
 =?us-ascii?Q?J0Nyp1kLkvuMMlJnD2Pof9Yvxsi1pmm4aH5mvjGMpLbGX43IpB4R6s2V70B2?=
 =?us-ascii?Q?EP8ZNVwYT//Sc1JEGc89XnLIYNoNE9Kke/D3JdBL5qUUBbF8lPlSjyrkrs9k?=
 =?us-ascii?Q?8mFGytw+zYJOq9GQ2F1klVvLO8zYW99vCDkbdCpfwMKPsuw9mzWdprPwzamS?=
 =?us-ascii?Q?DR8eVmwqg0+VrzLYSAcA/JMziMg2P5PmBcVBRX2CtDs0qN3sNOvrcTsRtN01?=
 =?us-ascii?Q?W2P1FVJgNVH+eKKOgdZYzShiT3A2koAC2iJ+2HR2xCR0+QKIgxHgB9CSxyJZ?=
 =?us-ascii?Q?8pW/A0IECC+TjeVEnm8o5WwdLVoGlJS2ar0IJM8N9yqmHxScJip0/Ad7kLs1?=
 =?us-ascii?Q?ZkmIRcOzQlinWJk3YiBY33Z7CqfkLJdBYURADRuWesYz1z/6gTErT83yfukq?=
 =?us-ascii?Q?sfp9W9pQEEBb6S9H7Np+JY226nS0S0U1eBpHJit6KHJmFrVNVpXHS3t2vh8x?=
 =?us-ascii?Q?7B5snG/l7gaUhP0s61VlLL3+OtqfKBRKMZt4s+vUCsWX5118K8CoEiDsdj8f?=
 =?us-ascii?Q?n5petsByNS4AlM34jTrkAWrb8y4/WHQFN1BWEm9RI0hAI3gpEAlSESWMZJF6?=
 =?us-ascii?Q?qYZDgz5zm4Ak4z+BrCUde407hoCdK1q7JE/CVNha0gDxVPzcFDSrErCIOxin?=
 =?us-ascii?Q?sWwokMp1R0VTN2VnqVd5tgqwk3m99zpeWiNs+b93FbrqeqJmeuWKogUxn45N?=
 =?us-ascii?Q?M9byCCm1oj5D92yP5nRQNeOzapeds3SmZ+/b61lOkZ9CaoelJ3tlIDYwlFC9?=
 =?us-ascii?Q?QFNKfdk3AddHH5mCdQiG0LWSIx3/7tZB5vmN3Zc/aFvaJegr0K+28/QhCuVw?=
 =?us-ascii?Q?oVakqMXIntb8cr5LImSvQMR993SrXSKLMDEdYo5YTg/M+VTBp/aCyyDYLW9t?=
 =?us-ascii?Q?20hlLpYlB6LK76Gl/Bor3OhGTEPgYE34RLVQtJprNu+oUwvo/Yj8eR8bqGnS?=
 =?us-ascii?Q?4mJkFqnz3JhH6XNrQh45TpD5/njU63QpSW24jGLEPw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dK9RUvnIyirDr4Zjvuv3bcoW1ZCl6dyS51EzEpoxb0+vE3FhAzCXPPp2D4o0?=
 =?us-ascii?Q?6RG4Cwlysw5rKif8W+VOHFFd4zi1ioVUzJjYD1Q6El6Hz1hyr61Qy4eMGdZN?=
 =?us-ascii?Q?mupQlv75TiLQfLVc4swLUd1vrxI679aJZcYScfBcCtDZXBKUQo4MK0p/u5ZH?=
 =?us-ascii?Q?qmpT5GEMWSw7gw22H9qozZAwvAOAIxbLECH6fOMHy0RFTRbgs3JIt54Iwodu?=
 =?us-ascii?Q?u19QgGkiQAlEZe3rwQY7lSokEikNOVtPEVetCiQ7bK4QzJQjgbaWfzWdMzYi?=
 =?us-ascii?Q?yRXxhuEkVmbxG0x5pmAbmXnMUd5oN9JZz/6jcNOhUUmUmbZ2Z375EJg3zmSV?=
 =?us-ascii?Q?ZMnSX213fesRbLD30lnqo2AUohaUqQiStgi4Ija/xP8NQymIAqgEErdLI9f7?=
 =?us-ascii?Q?RHvVbG9ffV2UuuwuazJN1Qf7oHZR3l1yIunllDDg2TRfunYWsFlYQBoTMgZN?=
 =?us-ascii?Q?KStnHR5yd2+Q1dMi9r8G+zqlpqq8mdFEr9qvru46uX8n7I01YVy9sPmDUAhw?=
 =?us-ascii?Q?zG+2csFtFLbSdr0WjwlGpZONgUjsoIUDEUij0J4Nyaz6aOLaX37829fDwB6e?=
 =?us-ascii?Q?7Q9KitgdFjYMcLWWxGofIonLuvGhE+wYuhRfwltRbHIpUTA2d5l3fQ+0sdnN?=
 =?us-ascii?Q?+OsxRdhhxBb6RMDbyGXjQv+SNFRlzqsO8YZ4yHv9WN1sRLTlbqJ9AEOhxdWS?=
 =?us-ascii?Q?7NDeqVlCT1UgLJcYDzcjo9UPmHHvBrcPPRk15UVr6txcke5gbUyOWa+emqWB?=
 =?us-ascii?Q?Vv5EFs8zuWLq4uvmwRDvUSt/CTVB0myzwcvciwMSoO0UFr2XPVpEjcreG00B?=
 =?us-ascii?Q?zZ4luvBZNNhZOV2jB7iOUn6n6o+UOSFHwA9/jfHcJyZcs39ZK7N20kwLfh4P?=
 =?us-ascii?Q?AQZNmyAbB8z+fSH3fBWWbDCwxmzWrPgg7joh8uxGbsV45/YJ3tBcOJd8JZ9J?=
 =?us-ascii?Q?dpEriPw63RRuTSw5j69u3S3YIUswG8hkbFdUMVO3u1JREEWL8NetuBnEEX73?=
 =?us-ascii?Q?ueIs1Roxgwm7SxKvRAbF7gbDhX/iYreWAJJsdcTD+XXM3HeOFoaP11iOqywm?=
 =?us-ascii?Q?TqtsNvafqSHc/90FgJnNSPr26eoCmrbHlIN2SASRtO5xOk4/cBqyPHw72wWM?=
 =?us-ascii?Q?3zD+NqW8tklsAIBgWa0ypFDsrZDek5/FjLqs70R56sBWxRHZUWku0vPGMFer?=
 =?us-ascii?Q?wV8MgvSSg8R7xf9UcJSbgIKttRv6xy0HryN4UQh7OOcnR58l0W3bCf9hDg6k?=
 =?us-ascii?Q?5muZNXs+mkOyG+WDBDSanwQapyjYlY7ShCwB7Ze7PkeOLVW3++KIe6KSnORw?=
 =?us-ascii?Q?4k+XByXpM2IR+BMRyWtvLqXj019vR60vUMMPMFK4kGVe/2hOG4cddg0905P5?=
 =?us-ascii?Q?E0I99Trg9T52lXYGtL6R7Y/5/pH3Gs4HDlEv+6XjHcJOEHA+rR/NScx4FLif?=
 =?us-ascii?Q?kmLCDqT/XZBGKy9vqwrrDZuijoGLQ7wIQET389gNkn6cCTGtakYqpOwoA/H/?=
 =?us-ascii?Q?C53QueO3VmdPMb7CKp/Slt2SFQ4FyEnoXpIB1Pi501CC6RHe+70dEMaIQ34D?=
 =?us-ascii?Q?T92oN6aK10njOfm3+hujWV+ehPRFl3T4JhXzvH87XydmAY7ue1Q5CDZYc29Z?=
 =?us-ascii?Q?Tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73af598d-1174-46ec-f543-08dc8487419a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 11:12:43.8133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mBibF4RcAsXiIOp2UriQfxBovDnRdVt+XHVE0+Mwy6iPBC0JgMOKBuUefbqh0CwAXEqlTrVIoUG013h2IMehL2Eon+ydnZPExuDi6NUuK70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6603
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717499568; x=1749035568;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2OuudCvmSLhffj0H506bJHZIQqCxQZQY4v871PzeUr4=;
 b=W604/iServj/XiEfzja6RsT54tJIqW6g1SXrmuhGHK+CXdiwtV2ijQKW
 s2ySe0mzq6rbHS7xak3B8hAc9piBEw6b1PyGm6FkGahUZ4/1DV8eU+XHq
 8T8GmnDWd/d3RvVJW1iN9V2DKiTJM3awhMGwazEa+9KkEvFjpG4dpWllb
 zlauRXaqeXEv8sC7Ad3/Yi0XxTk7OQUNIFfK86yoNHjJJBhwojdv0zo0g
 yZki/xm0NM8cAcUHtesMYXz7b+J1hggcpCvdu1CcHRdpicsL2uvPaFTCv
 AHjh9b/SyhuY/hBV7Kh07FMuUz21opWp4Dd2+V7oeW3PMp2BRF7fJMuRI
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W604/iSe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 6/8] ice: improve updating
 ice_{t, r}x_ring::xsk_pool
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 12:52:16PM +0200, Maciej Fijalkowski wrote:
> On Fri, May 31, 2024 at 04:49:05PM -0700, Nelson, Shannon wrote:
> > On 5/29/2024 4:23 AM, Maciej Fijalkowski wrote:
> > > 
> > > xsk_buff_pool pointers that ice ring structs hold are updated via
> > > ndo_bpf that is executed in process context while it can be read by
> > > remote CPU at the same time within NAPI poll. Use synchronize_net()
> > > after pointer update and {READ,WRITE}_ONCE() when working with mentioned
> > > pointer.
> > > 
> > > Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> > > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice.h      |  6 +-
> > >   drivers/net/ethernet/intel/ice/ice_base.c |  4 +-
> > >   drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
> > >   drivers/net/ethernet/intel/ice/ice_txrx.c |  4 +-
> > >   drivers/net/ethernet/intel/ice/ice_xsk.c  | 78 ++++++++++++++---------
> > >   drivers/net/ethernet/intel/ice/ice_xsk.h  |  4 +-
> > >   6 files changed, 59 insertions(+), 39 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> > > index da8c8afebc93..701a61d791dd 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice.h
> > > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > > @@ -771,12 +771,12 @@ static inline struct xsk_buff_pool *ice_get_xp_from_qid(struct ice_vsi *vsi,
> > >    * Returns a pointer to xsk_buff_pool structure if there is a buffer pool
> > >    * present, NULL otherwise.
> > >    */
> > > -static inline struct xsk_buff_pool *ice_xsk_pool(struct ice_rx_ring *ring)
> > > +static inline void ice_xsk_pool(struct ice_rx_ring *ring)
> > 
> > Since this patch is changing the logic here you mighht want to change the
> > name of the function.  Instead of getting a pointer with no side effects it
> > is now doing something, so a better name might be ice_set_xsk_pool() to
> > reflect the resulting side effect.
> 
> Makes sense, plus the function description needs some adjustment. Will fix
> on v3.

Having second thought on this, I'll go only with
s/ice_xsk_pool/ice_rx_xsk_pool/ to align with Tx side. Tx side also lacks
the 'set' keyword in its naming, but I don't want to touch this here.

I currently don't see a reason for these functions being inlined as we are
not setting xsk pool pointers in the hot path at all, therefore I can go
later on with a patch dedicated for -next that fixes naming and drops the
inlining.

> 
> > 
> > sln
> > 
> > >   {
> > >          struct ice_vsi *vsi = ring->vsi;
> > >          u16 qid = ring->q_index;
> > > 
> > > -       return ice_get_xp_from_qid(vsi, qid);
> > > +       WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
> > >   }
> > > 
> > >   /**
> > > @@ -801,7 +801,7 @@ static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
> > >          if (!ring)
> > >                  return;
> > > 
> > > -       ring->xsk_pool = ice_get_xp_from_qid(vsi, qid);
> > > +       WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
> > >   }
> > > 
> > >   /**
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> > > index 5d396c1a7731..f3dfce136106 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_base.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> > > @@ -536,7 +536,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
> > >                                  return err;
> > >                  }
> > > 
> > > -               ring->xsk_pool = ice_xsk_pool(ring);
> > > +               ice_xsk_pool(ring);
> > >                  if (ring->xsk_pool) {
> > >                          xdp_rxq_info_unreg(&ring->xdp_rxq);
> > > 
> > > @@ -597,7 +597,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
> > >                          return 0;
> > >                  }
> > > 
> > > -               ok = ice_alloc_rx_bufs_zc(ring, num_bufs);
> > > +               ok = ice_alloc_rx_bufs_zc(ring, ring->xsk_pool, num_bufs);
> > >                  if (!ok) {
> > >                          u16 pf_q = ring->vsi->rxq_map[ring->q_index];
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index 1b61ca3a6eb6..15a6805ac2a1 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -2946,7 +2946,7 @@ static void ice_vsi_rx_napi_schedule(struct ice_vsi *vsi)
> > >          ice_for_each_rxq(vsi, i) {
> > >                  struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
> > > 
> > > -               if (rx_ring->xsk_pool)
> > > +               if (READ_ONCE(rx_ring->xsk_pool))
> > >                          napi_schedule(&rx_ring->q_vector->napi);
> > >          }
> > >   }
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > > index 8bb743f78fcb..f4b2b1bca234 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > > @@ -1523,7 +1523,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
> > >          ice_for_each_tx_ring(tx_ring, q_vector->tx) {
> > >                  bool wd;
> > > 
> > > -               if (tx_ring->xsk_pool)
> > > +               if (READ_ONCE(tx_ring->xsk_pool))
> > >                          wd = ice_xmit_zc(tx_ring);
> > >                  else if (ice_ring_is_xdp(tx_ring))
> > >                          wd = true;
> > > @@ -1556,7 +1556,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
> > >                   * comparison in the irq context instead of many inside the
> > >                   * ice_clean_rx_irq function and makes the codebase cleaner.
> > >                   */
> > > -               cleaned = rx_ring->xsk_pool ?
> > > +               cleaned = READ_ONCE(rx_ring->xsk_pool) ?
> > >                            ice_clean_rx_irq_zc(rx_ring, budget_per_ring) :
> > >                            ice_clean_rx_irq(rx_ring, budget_per_ring);
> > >                  work_done += cleaned;
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > index 8c5006f37310..693f0e3a37ce 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > @@ -250,6 +250,8 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
> > >          ice_qvec_toggle_napi(vsi, q_vector, true);
> > >          ice_qvec_ena_irq(vsi, q_vector);
> > > 
> > > +       /* make sure NAPI sees updated ice_{t,x}_ring::xsk_pool */
> > > +       synchronize_net();
> > >          netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> > >          netif_carrier_on(vsi->netdev);
> > >          clear_bit(ICE_CFG_BUSY, vsi->state);
> > > @@ -461,6 +463,7 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
> > >   /**
> > >    * __ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
> > >    * @rx_ring: Rx ring
> > > + * @xsk_pool: XSK buffer pool to pick buffers to be filled by HW
> > >    * @count: The number of buffers to allocate
> > >    *
> > >    * Place the @count of descriptors onto Rx ring. Handle the ring wrap
> > > @@ -469,7 +472,8 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
> > >    *
> > >    * Returns true if all allocations were successful, false if any fail.
> > >    */
> > > -static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > > +static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> > > +                                  struct xsk_buff_pool *xsk_pool, u16 count)
> > >   {
> > >          u32 nb_buffs_extra = 0, nb_buffs = 0;
> > >          union ice_32b_rx_flex_desc *rx_desc;
> > > @@ -481,8 +485,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > >          xdp = ice_xdp_buf(rx_ring, ntu);
> > > 
> > >          if (ntu + count >= rx_ring->count) {
> > > -               nb_buffs_extra = ice_fill_rx_descs(rx_ring->xsk_pool, xdp,
> > > -                                                  rx_desc,
> > > +               nb_buffs_extra = ice_fill_rx_descs(xsk_pool, xdp, rx_desc,
> > >                                                     rx_ring->count - ntu);
> > >                  if (nb_buffs_extra != rx_ring->count - ntu) {
> > >                          ntu += nb_buffs_extra;
> > > @@ -495,7 +498,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > >                  ice_release_rx_desc(rx_ring, 0);
> > >          }
> > > 
> > > -       nb_buffs = ice_fill_rx_descs(rx_ring->xsk_pool, xdp, rx_desc, count);
> > > +       nb_buffs = ice_fill_rx_descs(xsk_pool, xdp, rx_desc, count);
> > > 
> > >          ntu += nb_buffs;
> > >          if (ntu == rx_ring->count)
> > > @@ -511,6 +514,7 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > >   /**
> > >    * ice_alloc_rx_bufs_zc - allocate a number of Rx buffers
> > >    * @rx_ring: Rx ring
> > > + * @xsk_pool: XSK buffer pool to pick buffers to be filled by HW
> > >    * @count: The number of buffers to allocate
> > >    *
> > >    * Wrapper for internal allocation routine; figure out how many tail
> > > @@ -518,7 +522,8 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > >    *
> > >    * Returns true if all calls to internal alloc routine succeeded
> > >    */
> > > -bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > > +bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> > > +                         struct xsk_buff_pool *xsk_pool, u16 count)
> > >   {
> > >          u16 rx_thresh = ICE_RING_QUARTER(rx_ring);
> > >          u16 leftover, i, tail_bumps;
> > > @@ -527,9 +532,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
> > >          leftover = count - (tail_bumps * rx_thresh);
> > > 
> > >          for (i = 0; i < tail_bumps; i++)
> > > -               if (!__ice_alloc_rx_bufs_zc(rx_ring, rx_thresh))
> > > +               if (!__ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, rx_thresh))
> > >                          return false;
> > > -       return __ice_alloc_rx_bufs_zc(rx_ring, leftover);
> > > +       return __ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, leftover);
> > >   }
> > > 
> > >   /**
> > > @@ -650,7 +655,7 @@ static u32 ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
> > >          if (xdp_ring->next_to_clean >= cnt)
> > >                  xdp_ring->next_to_clean -= cnt;
> > >          if (xsk_frames)
> > > -               xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
> > > +               xsk_tx_completed(READ_ONCE(xdp_ring->xsk_pool), xsk_frames);
> > > 
> > >          return completed_frames;
> > >   }
> > > @@ -702,7 +707,8 @@ static int ice_xmit_xdp_tx_zc(struct xdp_buff *xdp,
> > >                  dma_addr_t dma;
> > > 
> > >                  dma = xsk_buff_xdp_get_dma(xdp);
> > > -               xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, size);
> > > +               xsk_buff_raw_dma_sync_for_device(READ_ONCE(xdp_ring->xsk_pool),
> > > +                                                dma, size);
> > > 
> > >                  tx_buf->xdp = xdp;
> > >                  tx_buf->type = ICE_TX_BUF_XSK_TX;
> > > @@ -760,7 +766,8 @@ ice_run_xdp_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> > >                  err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
> > >                  if (!err)
> > >                          return ICE_XDP_REDIR;
> > > -               if (xsk_uses_need_wakeup(rx_ring->xsk_pool) && err == -ENOBUFS)
> > > +               if (xsk_uses_need_wakeup(READ_ONCE(rx_ring->xsk_pool)) &&
> > > +                   err == -ENOBUFS)
> > >                          result = ICE_XDP_EXIT;
> > >                  else
> > >                          result = ICE_XDP_CONSUMED;
> > > @@ -829,8 +836,8 @@ ice_add_xsk_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *first,
> > >    */
> > >   int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
> > >   {
> > > +       struct xsk_buff_pool *xsk_pool = READ_ONCE(rx_ring->xsk_pool);
> > >          unsigned int total_rx_bytes = 0, total_rx_packets = 0;
> > > -       struct xsk_buff_pool *xsk_pool = rx_ring->xsk_pool;
> > >          u32 ntc = rx_ring->next_to_clean;
> > >          u32 ntu = rx_ring->next_to_use;
> > >          struct xdp_buff *first = NULL;
> > > @@ -942,7 +949,8 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
> > >          rx_ring->next_to_clean = ntc;
> > >          entries_to_alloc = ICE_RX_DESC_UNUSED(rx_ring);
> > >          if (entries_to_alloc > ICE_RING_QUARTER(rx_ring))
> > > -               failure |= !ice_alloc_rx_bufs_zc(rx_ring, entries_to_alloc);
> > > +               failure |= !ice_alloc_rx_bufs_zc(rx_ring, xsk_pool,
> > > +                                                entries_to_alloc);
> > > 
> > >          ice_finalize_xdp_rx(xdp_ring, xdp_xmit, 0);
> > >          ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
> > > @@ -965,17 +973,19 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
> > >   /**
> > >    * ice_xmit_pkt - produce a single HW Tx descriptor out of AF_XDP descriptor
> > >    * @xdp_ring: XDP ring to produce the HW Tx descriptor on
> > > + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
> > >    * @desc: AF_XDP descriptor to pull the DMA address and length from
> > >    * @total_bytes: bytes accumulator that will be used for stats update
> > >    */
> > > -static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
> > > +static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring,
> > > +                        struct xsk_buff_pool *xsk_pool, struct xdp_desc *desc,
> > >                           unsigned int *total_bytes)
> > >   {
> > >          struct ice_tx_desc *tx_desc;
> > >          dma_addr_t dma;
> > > 
> > > -       dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc->addr);
> > > -       xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc->len);
> > > +       dma = xsk_buff_raw_get_dma(xsk_pool, desc->addr);
> > > +       xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, desc->len);
> > > 
> > >          tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_to_use++);
> > >          tx_desc->buf_addr = cpu_to_le64(dma);
> > > @@ -988,10 +998,13 @@ static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
> > >   /**
> > >    * ice_xmit_pkt_batch - produce a batch of HW Tx descriptors out of AF_XDP descriptors
> > >    * @xdp_ring: XDP ring to produce the HW Tx descriptors on
> > > + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
> > >    * @descs: AF_XDP descriptors to pull the DMA addresses and lengths from
> > >    * @total_bytes: bytes accumulator that will be used for stats update
> > >    */
> > > -static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
> > > +static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring,
> > > +                              struct xsk_buff_pool *xsk_pool,
> > > +                              struct xdp_desc *descs,
> > >                                 unsigned int *total_bytes)
> > >   {
> > >          u16 ntu = xdp_ring->next_to_use;
> > > @@ -1001,8 +1014,8 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
> > >          loop_unrolled_for(i = 0; i < PKTS_PER_BATCH; i++) {
> > >                  dma_addr_t dma;
> > > 
> > > -               dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, descs[i].addr);
> > > -               xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, descs[i].len);
> > > +               dma = xsk_buff_raw_get_dma(xsk_pool, descs[i].addr);
> > > +               xsk_buff_raw_dma_sync_for_device(xsk_pool, dma, descs[i].len);
> > > 
> > >                  tx_desc = ICE_TX_DESC(xdp_ring, ntu++);
> > >                  tx_desc->buf_addr = cpu_to_le64(dma);
> > > @@ -1018,21 +1031,24 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
> > >   /**
> > >    * ice_fill_tx_hw_ring - produce the number of Tx descriptors onto ring
> > >    * @xdp_ring: XDP ring to produce the HW Tx descriptors on
> > > + * @xsk_pool: XSK buffer pool to pick buffers to be consumed by HW
> > >    * @descs: AF_XDP descriptors to pull the DMA addresses and lengths from
> > >    * @nb_pkts: count of packets to be send
> > >    * @total_bytes: bytes accumulator that will be used for stats update
> > >    */
> > > -static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
> > > -                               u32 nb_pkts, unsigned int *total_bytes)
> > > +static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring,
> > > +                               struct xsk_buff_pool *xsk_pool,
> > > +                               struct xdp_desc *descs, u32 nb_pkts,
> > > +                               unsigned int *total_bytes)
> > >   {
> > >          u32 batched, leftover, i;
> > > 
> > >          batched = ALIGN_DOWN(nb_pkts, PKTS_PER_BATCH);
> > >          leftover = nb_pkts & (PKTS_PER_BATCH - 1);
> > >          for (i = 0; i < batched; i += PKTS_PER_BATCH)
> > > -               ice_xmit_pkt_batch(xdp_ring, &descs[i], total_bytes);
> > > +               ice_xmit_pkt_batch(xdp_ring, xsk_pool, &descs[i], total_bytes);
> > >          for (; i < batched + leftover; i++)
> > > -               ice_xmit_pkt(xdp_ring, &descs[i], total_bytes);
> > > +               ice_xmit_pkt(xdp_ring, xsk_pool, &descs[i], total_bytes);
> > >   }
> > > 
> > >   /**
> > > @@ -1043,7 +1059,8 @@ static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *d
> > >    */
> > >   bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
> > >   {
> > > -       struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
> > > +       struct xsk_buff_pool *xsk_pool = READ_ONCE(xdp_ring->xsk_pool);
> > > +       struct xdp_desc *descs = xsk_pool->tx_descs;
> > >          u32 nb_pkts, nb_processed = 0;
> > >          unsigned int total_bytes = 0;
> > >          int budget;
> > > @@ -1057,25 +1074,26 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
> > >          budget = ICE_DESC_UNUSED(xdp_ring);
> > >          budget = min_t(u16, budget, ICE_RING_QUARTER(xdp_ring));
> > > 
> > > -       nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
> > > +       nb_pkts = xsk_tx_peek_release_desc_batch(xsk_pool, budget);
> > >          if (!nb_pkts)
> > >                  return true;
> > > 
> > >          if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
> > >                  nb_processed = xdp_ring->count - xdp_ring->next_to_use;
> > > -               ice_fill_tx_hw_ring(xdp_ring, descs, nb_processed, &total_bytes);
> > > +               ice_fill_tx_hw_ring(xdp_ring, xsk_pool, descs, nb_processed,
> > > +                                   &total_bytes);
> > >                  xdp_ring->next_to_use = 0;
> > >          }
> > > 
> > > -       ice_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - nb_processed,
> > > -                           &total_bytes);
> > > +       ice_fill_tx_hw_ring(xdp_ring, xsk_pool, &descs[nb_processed],
> > > +                           nb_pkts - nb_processed, &total_bytes);
> > > 
> > >          ice_set_rs_bit(xdp_ring);
> > >          ice_xdp_ring_update_tail(xdp_ring);
> > >          ice_update_tx_ring_stats(xdp_ring, nb_pkts, total_bytes);
> > > 
> > > -       if (xsk_uses_need_wakeup(xdp_ring->xsk_pool))
> > > -               xsk_set_tx_need_wakeup(xdp_ring->xsk_pool);
> > > +       if (xsk_uses_need_wakeup(xsk_pool))
> > > +               xsk_set_tx_need_wakeup(xsk_pool);
> > > 
> > >          return nb_pkts < budget;
> > >   }
> > > @@ -1108,7 +1126,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
> > > 
> > >          ring = vsi->rx_rings[queue_id]->xdp_ring;
> > > 
> > > -       if (!ring->xsk_pool)
> > > +       if (!READ_ONCE(ring->xsk_pool))
> > >                  return -EINVAL;
> > > 
> > >          /* The idea here is that if NAPI is running, mark a miss, so
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
> > > index 6fa181f080ef..4cd2d62a0836 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_xsk.h
> > > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
> > > @@ -22,7 +22,8 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool,
> > >                         u16 qid);
> > >   int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget);
> > >   int ice_xsk_wakeup(struct net_device *netdev, u32 queue_id, u32 flags);
> > > -bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count);
> > > +bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
> > > +                         struct xsk_buff_pool *xsk_pool, u16 count);
> > >   bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
> > >   void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
> > >   void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
> > > @@ -51,6 +52,7 @@ ice_clean_rx_irq_zc(struct ice_rx_ring __always_unused *rx_ring,
> > > 
> > >   static inline bool
> > >   ice_alloc_rx_bufs_zc(struct ice_rx_ring __always_unused *rx_ring,
> > > +                    struct xsk_buff_pool __always_unused *xsk_pool,
> > >                       u16 __always_unused count)
> > >   {
> > >          return false;
> > > --
> > > 2.34.1
> > > 
> > > 
