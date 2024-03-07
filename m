Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 537998753FE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 17:15:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8901E41839;
	Thu,  7 Mar 2024 16:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lly9koa9GXge; Thu,  7 Mar 2024 16:15:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7960F4148F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709828116;
	bh=6qotHPVZA1zzbfFuVDy8+VQv7seQ+r8eXmjOf5k8cTY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Eupuwfc6CbvlzZtMH6DuAncgFrrKgg2Up3wPTL6nae5exVbu1nD/y/SiHrVm/nLwL
	 IW60FXP1crI5Uby9mEeEcSoI58/MfIWLz2ZZpfxXgMoPBHPwDH6wYSP9iHv6XHn4zb
	 FgCEyjsnUouXqaGMMr2dOz/qglWtgU9ToZKUxFOjbfrbwctjWQ2eWX8ekB5ivqyKQl
	 /Vw/BZpj06s5oBWgPAAP607rebCXiCOwZbI+l4QVWBrwQtJh0qn7TaqUQ+mk/dvXrk
	 994eY0X2uPitwnuaOQsBd2SPalpZaVY0O5VIeV9/vznM/AlfldBReCqO9vt41rpAWg
	 fSLJi6AbycaKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7960F4148F;
	Thu,  7 Mar 2024 16:15:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34F671BF23C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 16:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 216A781332
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 16:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XkpVvSxeU8Qh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 16:15:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A3C880C11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A3C880C11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A3C880C11
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 16:15:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4373683"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; 
   d="scan'208";a="4373683"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 08:12:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="10138934"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 08:12:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 08:12:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 08:12:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 08:12:06 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 08:12:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bS2IFjxHqENi2b/oOnmHKXTdvR8zJo64E/xq0lq9dq3i85ZxiFza+BldjpPJJZ2MpChevG2UGgeSIl29rw4tVGUvDJa4UiwhSzeGc0cLzuPjyt7wM7ktModBl168G8vlyxN+ig9nA1mpb2E0CYI984AFnmu/Nf7PkejhaJ4S129W32p+4nC9x+xYahH3TACelj2Jol81f9DUiXvpkadDZ7eIKv/zmdUavlNat9YYcf7FM+XEk+vgzQAcvM+vnb+cgTd5Qz9jro+Q+uJyDcnwfLL8WRbEZ44HosPJcw2mKArdub7FsKekqyjnVLU7m3xB9ZYRTGZsRtJH6LsTpfCZzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6qotHPVZA1zzbfFuVDy8+VQv7seQ+r8eXmjOf5k8cTY=;
 b=hZWLb2z+RwIvFMdURsWMmsDmxqDvAfsBs2sxvDbidjQMkyJLpCSzXgA6iLC9CI7fbcn+2EWPbqbY4C3GuVAexPrcICL9ZGMXHUl/VwMc30iByqTm5TCWwjMrURAFQzXjQK0i9KzuImHtGLV86fQufc2mioaRMps4rG24ysom7J4+wz4PZrgZkjCi9lbcDZKh4FAR1byitYUUA/f/0XFuiWatDOoqQeUMV+3iD8JofgnwvD8/yDidTA8raMmiCQr9MNBBS7yjvuwNB1d5fk4iQDZIFFkyUUTDrdUX0GfU+iOjcyrgTlInAzrD56qKG9vDlvoVnKSF4v640S7t9yTNSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CH3PR11MB7938.namprd11.prod.outlook.com (2603:10b6:610:12f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Thu, 7 Mar
 2024 16:12:04 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47%6]) with mapi id 15.20.7362.019; Thu, 7 Mar 2024
 16:12:04 +0000
Date: Thu, 7 Mar 2024 17:11:58 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <ZennTrYTqsPHylmQ@boxer>
References: <20240304230845.14934-1-jesse.brandeburg@intel.com>
 <ZeidykgnELeMx6xm@boxer> <ZeigQdj9K6CZocbL@boxer>
 <02751cec-c273-4120-adad-6ea16a86532b@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <02751cec-c273-4120-adad-6ea16a86532b@intel.com>
X-ClientProxiedBy: WA2P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::17) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CH3PR11MB7938:EE_
X-MS-Office365-Filtering-Correlation-Id: c71f9832-a292-4160-f9af-08dc3ec1540a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qztGOcRKLzt/n2vQyFUsmoftEEZf1pJBRTnxXer5UHcttvdbgG+BPdWSFNiBjVpH4NrEbpTRuBP8Hu6HhtrXU0+udCXtpDXEjbjd46zPTGt1H7N3fZLYZoS9Oxo0uV/gvA3WMQO7+5QCJOCGRf5q6gr6PfvSI0Zs1mbXz8LpFZ+w7GnjdQoxGEO0C5W/x0W6QzSFkTrko9QKomUJqDt2kaTkI2HOflkWiDP58b7r5XJ/kA4uMeIFA5uSXpT+plMmhejmQC4P07k3Yjkss4gpnYMblCo7hIq506eU1dl2QJBxnMCz7fF6+JEFhiRxn9N1rxjIzpv7DxRP/GCjqnVeSsNq+L+MVCxOopElh7QCjvoo3XnhMIVBGhzsoZrHCrxaDpJv7d0HcoQCtjxK0rF3AHPU9Gpb6MfvwKW0VAL/K9DW+rAd1eLm1/hrmhW6no6czJAxfG3yvyLYpLnALo6ggncND9IEugH6u0VK7Mr95MSqb9LCabEf4fHkaPdBiChQvtZMW5iGjIMBcvkBaN7XtekKYJZ6geUl61Z+D3XoQYlGNYhgYqZHC/0/ZPmKKAGJnd1NRi9LoEeF5QyrPTDMyc/Q7IImLS6uDwG0I8HjjwSc1HQJ4B8enPtuGFu0J+E833hYUfE+iNWb/h13RKSyVotvjnC8REkGGZ1NLt3VpfE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fhN2yzVqiDdSdb++A4y48UfsDSUOiL+ax9iIKnEYMNSbyk2iEeYSKj1MmEIa?=
 =?us-ascii?Q?+iXSt2jghUMXy+IIoMXR0CwnMVR0tWmXWwHhOIvwIYzPYwk+X3G78XMlJctl?=
 =?us-ascii?Q?bIgFLDnDZEfPY2UOWug+EpZ/9bXi/+4kAU06GkxEjLwjuvULp1h67T147q4g?=
 =?us-ascii?Q?pVP60lJccJOrPZ3ewz710nOZyiD744y9rj/MCmS4u/0AV8kod+af1vBXnU9j?=
 =?us-ascii?Q?PXGaoHQBY9MgUHxNy30CdyU80drW6cG7+3aV3/AdyAefRaIoWxq9x2AdOa5I?=
 =?us-ascii?Q?fn17zBbLT2634xMzPziOVkXVrtmsD1nCHLYBzrNjvIIfTxmkSwE9SAnKO/I8?=
 =?us-ascii?Q?HQ4MB8jSfbDv4xYLqwqXylYKvk4k8q0+tsEERCKnqoQ47DIWc3V/N5CgaHbf?=
 =?us-ascii?Q?gi/ZudeaZfi56C397xReuhdm42VvodhSX1//xLMEh+uOYbJfDl5h+H9xF8Yx?=
 =?us-ascii?Q?zQRyB3pQzkYKPOGzLsYDhlb2lYBdvVDWzTObvyGhnQKavELthoCzGW2M4R2H?=
 =?us-ascii?Q?k/NAY14E4+RYh8IuQV/c+Yb5epbi8E5ZCp9UOY5mWFTll3ovPkldQETTSQet?=
 =?us-ascii?Q?l/eBCqmfFuxY7lYUGl/pY0MVFpuqjIjDD/ntBG6/Bl5hlDOTmAgQccnw1L8p?=
 =?us-ascii?Q?iqGjsvj7NAC0yvnltZhvIEun+ltbGAWhi84Gab0tU17/CsNG4QCnhuXV9KSg?=
 =?us-ascii?Q?N6+tGuWbb0EpmKeI3h6iApVYNoLYmXZTUIrawE4Ft5lzBz6LjUc2f21weN+n?=
 =?us-ascii?Q?jGyQ6t13JgrMQ3BrnLfV0GGBJS4U2W+JaSJ4149f/ij+GPLQIj76+zv/cIbO?=
 =?us-ascii?Q?dmb/0H6OD2D0eUPs1NxAviwyfAyN/dUc7iPFB8Qubxi54fpDiyYF+a+XdSx1?=
 =?us-ascii?Q?JoyQiyY/dh1pxtTaAikdBq7IiDvta7us+8SsDhOD+NcSq/dJC8Qgp9QXFgP0?=
 =?us-ascii?Q?L7X0PD/arjPkovIODrLIKSGc1s4J9MiPhSuwcFhfc2n7Dd9JBamWwI7jD6bT?=
 =?us-ascii?Q?MSB2RYAj/w7o+R9+hJVqR5h7y9xmmf75E+fV/Zjl2i8MF/Z6JocJsvejBDyV?=
 =?us-ascii?Q?9eexFdcjkJ7v0Kdn90IWVAgvZO4noLV9/729ZksQyxTO3koirdXsyJ6oMyZd?=
 =?us-ascii?Q?9+23SRD2OXp8wUklU/d2hAhdp9is1NXBjM1eP3YxY0O9TNFzgwoxZmMCMUtw?=
 =?us-ascii?Q?asLaBqkDZkf65UqbuZxqnY3ypmxn0iaRe7KJgWLDyLu81hPyvLHAfFp13TTX?=
 =?us-ascii?Q?hx+541E+PDJI9P3jQ0LZk2XbpLbitH4dS5XYYAhGN+Cu6BaWA1c9L/R01DrH?=
 =?us-ascii?Q?jgeefuQYt04wZkiq5ZeB4XrYE5nbDJCwjlakkeXeUs+Bkq/4m3Bvpb3zZbYl?=
 =?us-ascii?Q?Twd5XXJKodra2Bg/VoXFLNd3lF2D2x8ZJ3IBG/+aRkDdyYbeCApuVyu6ucMO?=
 =?us-ascii?Q?tepWp24d+pPbAcgG8Z/rx4onyO59RA8BNlYZhaigf4xVMtjxKDt2vd2Xdhu/?=
 =?us-ascii?Q?pXh6Vfsk7zCLmo9r1k1GY3ARsR0Jtk/dAKYgw/swtVrz/GgQOfihod6ntTjS?=
 =?us-ascii?Q?UscANYATSSVTq7z4kgMh/x9+hPLkLquHGqCvKKR79dLUkrY17Os2XhKFsvv0?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c71f9832-a292-4160-f9af-08dc3ec1540a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 16:12:04.0485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X81vnw85nsAMnyheDInnSDLnLwjhchrUd6N1igjOUFWkPuK15acHqM7FMpm+hi2SCC7pN5XVSSpXN9wgyq+eSMXOD6nVxxoInCAZv31xJ3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7938
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709828113; x=1741364113;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pi2jzWFTftywsrRt3MIl3DScu2x2LJODmzw2ofXFZds=;
 b=ncHGFbZ3rrovvessH9/oZ1t7te1mmkzDovaQA+usgfRXKBGymgcBOlGl
 wMbuGcdfvyTviji9JfknyFHFW9ri8VJndNTZOJDzfKWcIoLyxdDr2nsvF
 9yj1q+fnk+YJoe8A9jSerVB/nycykfyzEdGxfOTJaNYrNkcF6hTG+IH+L
 uOQCn2I509L9kGkVtxuBWpf1u6q9dnqt3O18t4S4/x9vtcl3mWfyPXlgG
 57jX11mUFauoJ28hfBLe4lZKSir5kHfPgCIMPy9lUYbVSimi2xA0HckOQ
 c6mYHJwjB3CGSNu7t/2PZpFGXdIiu/gXRg5D7kfOi9jzxaX9kcbunD3lu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ncHGFbZ3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix bug with suspend
 and rebuild
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>, Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 06, 2024 at 05:33:50PM -0800, Jesse Brandeburg wrote:
> On 3/6/2024 8:56 AM, Maciej Fijalkowski wrote:
> > > > Fixes: b3e7b3a6ee92 ("ice: prevent NULL pointer deref during reload")
> > > > Reported-by: Robert Elliott <elliott@hpe.com>
> > > > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > > 
> > > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > 
> > > Well, that refactor of config path introduced lots of issues. Could
> > > validation folks include a short list of tests they tried out against
> > > tested patch?
> > 
> > Sorry, I got confused and now I saw the same thing Simon pointed out.
> 
> Thanks, NP! this thread is for v1, and v2 is already posted with the
> refactor just moving the CONFIG_FOO in patch 1, and then the real final
> version of the fix in v2 patch two which switches all the intel drivers over
> to the new macros.
> 
> > 
> > > 
> > > > ---
> > > >   drivers/net/ethernet/intel/ice/ice_lib.c | 16 ++++++++--------
> > > >   1 file changed, 8 insertions(+), 8 deletions(-)
> > > > 
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > index 097bf8fd6bf0..0f5a92a6b1e6 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > @@ -3238,7 +3238,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
> > > >   {
> > > >   	struct ice_vsi_cfg_params params = {};
> > > >   	struct ice_coalesce_stored *coalesce;
> > 
> > struct ice_coalesce_stored *coalesce __free(kfree);
> 
> Yes, but not in a "fix" patch for -net. I figure this is more of a refactor
> kind of thing, so will not include it in this change.

I suppose that's because older kernels might not have this construct
backported, so yeah your v2 is good as-is.

> 
> > 
> > ?
> > 
> > and drop explicit kfree()s altogether?
> > 
> 
> 
