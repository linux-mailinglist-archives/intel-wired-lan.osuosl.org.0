Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA965F7561
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 10:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AED0240164;
	Fri,  7 Oct 2022 08:39:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AED0240164
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665131952;
	bh=1ARcZiX2w6bDG6YpPaovqvECh+PoIsxysIHnuWypgl0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9WzHQ5mg9kcvt4VbijVDdNSiA5IyfroFb5Z0+2CKJw2LSvbmKTFSA3AZwQO/7NS+e
	 HdhUUvliYgSOMFToti3ZrwnepxnfuX4Cetubi1DzJPBDvZF8545npaWAejMsmOw5z4
	 Rxr0P+z3w1TrqauF93yAfVwt1aKhC01uZrbOe+opmRVyIywW3HOMiuG5nw3oxm5Got
	 fe/WfJG/fwmydd++NXJMsLzXenylTagOlXZ/H5CsaWJondlw7MMrOWV3elKsVIF1kI
	 aGeResKvIjNHxjYXfPnpfFrCN6eHEObMFXmX2jazPC8+3mZgGtw82KAQWcLjYAsuxH
	 MMKa87h81mlSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8btZIgMGelOk; Fri,  7 Oct 2022 08:39:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0647400CB;
	Fri,  7 Oct 2022 08:39:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0647400CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 231161BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F108C40164
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F108C40164
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y3upzEKoieSy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 08:39:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C06A2400CB
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C06A2400CB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:39:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="290949902"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="290949902"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 01:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="729521163"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="729521163"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 07 Oct 2022 01:39:00 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 01:38:59 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 01:38:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 01:38:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 01:38:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QhDJ8QIjfqefGESAqPkRZ+9Y8hcTFxQwZ2eKLcQntSEyHlgL9wJnAUo4qiOesfzMWk4mMACIBi3SCAkigEsMOGN1gTrH2ZTwzhNj0lZovTWafra0qZUf1CFqV7/S7rxQXafy7Z/VzeUOPShKBe0MHUBiacdeey+cOcWCOyQBJGy5wW/zRWOprMMI86qfMneHZ7qSCnF6fD1bqXbJKEbuI/FeN7Uf8WKUSV/H6UUaHaT1t9BnZu5bUWBPDFa6izdsnpchQDp1apCGq3NWJ/oZ/Baalv/zz8f8B8Yaqufr1JPtik7qxemV2CHAV1DcmIJv6zY/Lf9uRwPCSpeX+kYEWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vg+LHoCs3cAl5QNGQhc9DOFKDWVBBbV5PCgLMPc/008=;
 b=R5keVY7qIsdWDXPc5TMj79wZET9zbWAh3aHJjb88tVAXeiSbHO+WPdiqd9PwACjkkOdcDJBpoG8PHyqXPZ3XazsIKEntEUR/CDMmRHR3XuuwZDZyBNFryRIPQ2UKVVGiCi66B5FBe6RL2IHcxdmcy2CDKg+PSqkXUJvqnagSNe5Nj+7d33H09eg8jiSwaBBuvkS3CRmXuVQzxaoaVQidZA6AmJBlo1gTi7EfW3EQXHLk88NmEybMy+7XybiJQqw1n6GWdCfi25MaRlBe71dZ0nkZDLvAMfWRPZfzukIkyQYYGNi1Xiltu001cw0VzsjhVLQOJMEH1Ejb71cN/W4kPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MN2PR11MB4520.namprd11.prod.outlook.com (2603:10b6:208:265::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Fri, 7 Oct
 2022 08:38:57 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923%4]) with mapi id 15.20.5676.028; Fri, 7 Oct 2022
 08:38:56 +0000
Date: Fri, 7 Oct 2022 10:38:43 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <Yz/lk7C4RlIMedwO@boxer>
References: <20221006130948.16053-1-jan.sokolowski@intel.com>
 <8c601e95-27b4-cfd9-ef8b-40cbfeaf913d@intel.com>
Content-Disposition: inline
In-Reply-To: <8c601e95-27b4-cfd9-ef8b-40cbfeaf913d@intel.com>
X-ClientProxiedBy: AM6PR0202CA0052.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::29) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MN2PR11MB4520:EE_
X-MS-Office365-Filtering-Correlation-Id: 986829e6-c88b-45fa-413c-08daa83f5f8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HmyhXzFmemmFxMlKseiflj21edxF5A4Ns+YnqI+f26JdgD5jCvmDySDldsBfRtwuUNM+24KQHff4bNNcKdvG9Fe/iPwv8Qc5s9JaDEiMK8HUd/nqb0yFiygcl1IeiZd7V6JOhCdjU44j00+iacID/aqkqZY9qHT3+HfGjD4vHK8X9dieMaCGY7aqIxVH/nwK+vClAaVWhpc/STKW2dMvNy8SHxEWyocTec57MbcwOwr1Hb7L7+dmRSQE3K+56Ux7+MJdPOXjaIznH7jaFX+tXshD5CDxkne3xR+ZEq7peRmVdA7hubi9M9N+G1JO6tZhNrhciZIz1OnzCjGKykFjaWpGfqws0HL7siTNh/DjcXT+WPIqjbog57xiXTGdeC2LrzAaA2ysFpd9ZFegzQRi9qQ6E/a/hL77rw0a5Q3kCOXLy2gnmyk/uu88mLvTtsO7HQHTzfVmYoPAG6opsX+DNrKecnpreC5uiyHyk6m9SmTAs99uZKA8zAIfwnDQn2Q+nfXaxlNZfgpUYbXTQF2Y4plqUGyrVmq9AYipz9e5cwe8oKEmSNvowQ+k4a6wHwANp7ZV8SeoUq3/X4bnFXDt7T4jPBdeqKv+GTGB4NJ/oWbwdql/GXX7kbI0WsLGm8rhsckXFTXALyRM7OvWf8gqT311CnoAoXW/c4Stk0l+jq+5PzHDrewQMZY28hugN8wBx/of9U8WNlijFBuR1ffD69aRAiROsOrwx3OSAggwJHQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199015)(38100700002)(316002)(6636002)(82960400001)(5660300002)(8936002)(6862004)(86362001)(2906002)(30864003)(44832011)(8676002)(4326008)(66556008)(66476007)(66946007)(41300700001)(186003)(33716001)(6666004)(53546011)(26005)(6506007)(6512007)(9686003)(83380400001)(6486002)(966005)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?99VBRiDmULmO0e5TjMmQsqFx3A0ch1gnWQ3r/QcpB3s+Ll2nSC3KEF6M7RXW?=
 =?us-ascii?Q?Ee1FrbJryJqkpcA8lzzSLu26iszyEcvkhPAV4/qDA/1wKJGsfUTCaPgxvGpk?=
 =?us-ascii?Q?A9IhT2PRWns1JRmUCVKoJ3JlSkiqCSeBKSSTGbHBt/6m0SENS1W26+Mx1jIb?=
 =?us-ascii?Q?l94y/gyh68t6GBQxcBCIYMIlikcDVk0accclGxqSZ3fzPG3Fjuei7C5s4zCg?=
 =?us-ascii?Q?kMIO/I1qPShx8zvGttnzMY6dWqCKmCAPrJFRe60+DSu30iPjhXE2X72ucL4X?=
 =?us-ascii?Q?Zfw7DBvjH2qOANOoUrociP+weQYjn9T2K3NAoVUup9LeowneLn4X+QSO6ndB?=
 =?us-ascii?Q?56ENgbr6BJwDk981Ll/W6BK8ou2xE313SYUKDWVcPTYpH+UokTfPLXPRRHpB?=
 =?us-ascii?Q?0XCosnro/k5f8wwyUFeGrzcQbCg8hXjsiOpuXqtRj2PYJgXKhY7Bq71xnTST?=
 =?us-ascii?Q?hPkE31Zqb3rO25eLhD72T109jm9BLfdedys9Xtibj5zJcEtTTyuM5yZlKzKw?=
 =?us-ascii?Q?/JrImXN9jRQzVGJtKBbC2+T9l7kW1US6AQMj1EsILwBkqLTDs06ynPLciYLW?=
 =?us-ascii?Q?s//dmLZoujDcjqsvk8P56cz9nCeL5+ByqIEu/gFVd42ivDI0JjyOXdGmVvqu?=
 =?us-ascii?Q?Oe7cyT9gFyywgUZAn9KnCIh5ERMs0SEPt0r7RAvtVhvt+9zLKkO1SwSwJq6d?=
 =?us-ascii?Q?SDPEPF015JS6pFFpeUNrnBtaCY9BZlLAT7697m9nqp6mM8iezLKY8hBA1Vvk?=
 =?us-ascii?Q?iM6SZnUTEfaHpGrz9eKWSyXrRi8HeExc4vMFGHDdb54JYSg8uSIKFwKTaHKU?=
 =?us-ascii?Q?kstEvF2JWcIn9i2h2rrGojb817BzAJdf6TpllSlyWaLY2drynR7AY8kx0QyY?=
 =?us-ascii?Q?wqb94jTJRqJiR3KcH5/vpQQXS4ZeAxMpnPZA+ozoxKBrUf0B1RKY9nzUXw+Q?=
 =?us-ascii?Q?YhX//IYLfQDD06RbZ1nY0XnHabR6BTp1n8xkX86OqYNvTu31jvM6pOkhivLb?=
 =?us-ascii?Q?DjQQZO3izuxfghiNx6lh43w6VccjO17Sr7kAbcCxVlJeurMtIVaHGOcAj5zo?=
 =?us-ascii?Q?vZ3z3vmqu4tVDsYFNmlxqQm+3VuUgQtmRWyI5W4oS+FoHvIe+7CY+vhuS6HW?=
 =?us-ascii?Q?Y8nJl5J2B8LwuGhhjaxEHpWDDL8gzEjt/IQi6NiUknRtRcquQ7KicjRgVHvq?=
 =?us-ascii?Q?RFW7xuetbkGskn7QSMOIx6OROQGhXq+iUfmCyyzrOn72688gbE41zCFN/SMQ?=
 =?us-ascii?Q?ZKt+Kn1nj3cr1OVX0S/i22YMQ7Z/BaGTwMfTdtTlS07pBBlSTLaUkeayv071?=
 =?us-ascii?Q?RTO8c3TDfSoEfGVcnulX3L9a0sE/5K8EljA5fskHaMZvLKkxHIoGXCpW1Hgs?=
 =?us-ascii?Q?rOJ2wmADVpG9SM9WXK4FDHDrclIR1DqCwYjdaePtYJf+E9mPqeYqfxzZX0zh?=
 =?us-ascii?Q?cn2kYBh6MGdlBoPc4poJv6Dk/Bvi+fzCI6Ne6txQCfA2OT+ZN86MN5ynVuSZ?=
 =?us-ascii?Q?uq322lED6t4AD7tNVQ2ZP9uQoh+tNUIr+c8LK1gaWLKlzflN1LLu0Y7tjaKn?=
 =?us-ascii?Q?G/xRzd1cDdcLbUmIcpffhB9Zdp7hcppEvwKCMjlpbCsJ4AIrvD5M9RxGz5ni?=
 =?us-ascii?Q?p1N6itMcMqZ7xjTwDzDxrGs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 986829e6-c88b-45fa-413c-08daa83f5f8a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2022 08:38:56.7679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z+CN6xiXrU3JPHXzwLVljRXFPu09LMP8R5G7ztBJvotjEBFjNubLvkGcRqd3Pkacs+59ZERrslhzqDHRrIuH5iTIqBs/ZSDVkjxVP+Z+TJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4520
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665131941; x=1696667941;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WyOLScAbnxk4nR/m62yUEx8Zl3amQA2G7NESUSrBRBk=;
 b=HTOAAe6nyrq7CrgffGiMNdeeJgW4y9c3w/9lJr+tp7bjJtevPG7RoP2J
 PVX3QipWbAUedN4veCM0Ci8N91RxBIvDkZcgCfxLSCMygjW1FGJooq+uo
 V37im7mbJk+pVhuvkDM+qf4NLUH1XWuadSkvBCaiO1p/zeBNBNuJRt4+V
 5Bed3c7TBa0PfF2qnESVmmP2Agse3Zr9z2QfgFcMwnXhkAn0mF23q3T3j
 ZX5Syhp/B8+Bkce41utJfSEFwm2Vf705ISGoHDyo47/RyKZuhm7Jb2drO
 ialyrKU9jwRE+jGrfiI7Tge4i5N4xVQepn0CTNBsQLzBA+9EGzOYcitRX
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HTOAAe6n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5] i40e: Fix DMA mappings leak
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 06, 2022 at 11:24:52AM -0700, Tony Nguyen wrote:
> Add Maciej...
> 
> However, you should first give responses to the previous patch [1] instead
> of sending a new version without acknowledging any feedback on the other
> patch (and not including the person(s) asking questions on the updated
> version)
> 
> [1] https://lore.kernel.org/netdev/YzV9gXMMPMjmQWDE@boxer/

Yeah just answering to my response with "ok maciej i'll do it in v5" or
"maciej you suck and i disagree" would be better than what Tony described
above:)

> 
> On 10/6/2022 6:09 AM, Jan Sokolowski wrote:
> > During reallocation of RX buffers, new DMA mappings are created for
> > those buffers. New buffers with different RX ring count should
> > substitute older ones, but those buffers were freed in
> > i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi,
> > thus kfree on rx_bi caused leak of already mapped DMA.
> > 
> > Reallocate ZC with rx_bi_zc struct, when BPF program loads. Reallocate
> > back to rx_bi, when BPF program unloads.
> > 
> > If BPF program is loaded/unloaded and XSK pools are created, reallocate
> > RX queues accordingly in XSP_SETUP_XSK_POOL handler.
> > 
> > steps for reproduction:

Reproduction of what?:)

It would be better to start off with this and problem statement, something
like "if you do the steps below, splat xyz occurs [include the splat]".
Then say it is because of yadda yadda. In order to fix this, do xyz.

> > while :
> > do
> > for ((i=0; i<=8160; i=i+32))
> > do
> > ethtool -G enp130s0f0 rx $i tx $i
> > sleep 0.5
> > ethtool -g enp130s0f0
> > done
> > done
> > 
> > Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP rings")
> > Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>

Why did you strip tested by tag?

With the code part, I think I'm fine with the current state.

> > ---
> > v2: Fixed improper kerneldoc that resulted in a warning
> > v3: Applied commit msg fixes reported during a review
> > v4: Applied i40e_xsk.c fixes reported during a review
> > v5: applied commit message and general fixes reported by
> > Maciej Fijalkowski's review.
> >   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
> >   drivers/net/ethernet/intel/i40e/i40e_main.c   | 15 +++--
> >   drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 13 ++--
> >   drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
> >   drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 67 ++++++++++++++++---
> >   drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
> >   6 files changed, 73 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index ae51901e671d..4a6a6e48c615 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -2181,9 +2181,6 @@ static int i40e_set_ringparam(struct net_device *netdev,
> >   			 */
> >   			rx_rings[i].tail = hw->hw_addr + I40E_PRTGEN_STATUS;
> >   			err = i40e_setup_rx_descriptors(&rx_rings[i]);
> > -			if (err)
> > -				goto rx_unwind;
> > -			err = i40e_alloc_rx_bi(&rx_rings[i]);
> >   			if (err)
> >   				goto rx_unwind;
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 6ecb6013d97d..cbe2e0592519 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -3566,12 +3566,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >   	if (ring->vsi->type == I40E_VSI_MAIN)
> >   		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
> > -	kfree(ring->rx_bi);
> >   	ring->xsk_pool = i40e_xsk_pool(ring);
> >   	if (ring->xsk_pool) {
> > -		ret = i40e_alloc_rx_bi_zc(ring);
> > -		if (ret)
> > -			return ret;
> >   		ring->rx_buf_len =
> >   		  xsk_pool_get_rx_frame_size(ring->xsk_pool);
> >   		/* For AF_XDP ZC, we disallow packets to span on
> > @@ -3589,9 +3585,6 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >   			 ring->queue_index);
> >   	} else {
> > -		ret = i40e_alloc_rx_bi(ring);
> > -		if (ret)
> > -			return ret;
> >   		ring->rx_buf_len = vsi->rx_buf_len;
> >   		if (ring->vsi->type == I40E_VSI_MAIN) {
> >   			ret = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > @@ -13405,6 +13398,13 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
> >   		i40e_reset_and_rebuild(pf, true, true);
> >   	}
> > +	if (!i40e_enabled_xdp_vsi(vsi) && prog)
> > +		if (i40e_realloc_rx_bi_zc(vsi, true))
> > +			return -ENOMEM;
> > +	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
> > +		if (i40e_realloc_rx_bi_zc(vsi, false))
> > +			return -ENOMEM;
> > +
> >   	for (i = 0; i < vsi->num_queue_pairs; i++)
> >   		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
> > @@ -13637,6 +13637,7 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
> >   	i40e_queue_pair_disable_irq(vsi, queue_pair);
> >   	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off */);
> > +	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
> >   	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
> >   	i40e_queue_pair_clean_rings(vsi, queue_pair);
> >   	i40e_queue_pair_reset_stats(vsi, queue_pair);
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > index 69e67eb6aea7..b97c95f89fa0 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -1457,14 +1457,6 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
> >   	return -ENOMEM;
> >   }
> > -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring)
> > -{
> > -	unsigned long sz = sizeof(*rx_ring->rx_bi) * rx_ring->count;
> > -
> > -	rx_ring->rx_bi = kzalloc(sz, GFP_KERNEL);
> > -	return rx_ring->rx_bi ? 0 : -ENOMEM;
> > -}
> > -
> >   static void i40e_clear_rx_bi(struct i40e_ring *rx_ring)
> >   {
> >   	memset(rx_ring->rx_bi, 0, sizeof(*rx_ring->rx_bi) * rx_ring->count);
> > @@ -1593,6 +1585,11 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
> >   	rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;
> > +	rx_ring->rx_bi =
> > +		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_bi), GFP_KERNEL);
> > +	if (!rx_ring->rx_bi)
> > +		return -ENOMEM;
> > +
> >   	return 0;
> >   }
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > index 41f86e9535a0..768290dc6f48 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > @@ -469,7 +469,6 @@ int __i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int size);
> >   bool __i40e_chk_linearize(struct sk_buff *skb);
> >   int i40e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
> >   		  u32 flags);
> > -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring);
> >   /**
> >    * i40e_get_head - Retrieve head from head writeback
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 6d4009e0cbd6..cd7b52fb6b46 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -10,14 +10,6 @@
> >   #include "i40e_txrx_common.h"
> >   #include "i40e_xsk.h"
> > -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring)
> > -{
> > -	unsigned long sz = sizeof(*rx_ring->rx_bi_zc) * rx_ring->count;
> > -
> > -	rx_ring->rx_bi_zc = kzalloc(sz, GFP_KERNEL);
> > -	return rx_ring->rx_bi_zc ? 0 : -ENOMEM;
> > -}
> > -
> >   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring)
> >   {
> >   	memset(rx_ring->rx_bi_zc, 0,
> > @@ -29,6 +21,58 @@ static struct xdp_buff **i40e_rx_bi(struct i40e_ring *rx_ring, u32 idx)
> >   	return &rx_ring->rx_bi_zc[idx];
> >   }
> > +/**
> > + * i40e_realloc_rx_xdp_bi - reallocate SW ring for either XSK or normal buffer
> > + * @rx_ring: Current rx ring
> > + * @pool_present: is pool for XSK present
> > + *
> > + * Try allocating memory and return ENOMEM, if failed to allocate.
> > + * If allocation was successful, substitute buffer with allocated one.
> > + * Returns 0 on success, negative on failure
> > + */
> > +static int i40e_realloc_rx_xdp_bi(struct i40e_ring *rx_ring, bool pool_present)
> > +{
> > +	size_t elem_size = pool_present ? sizeof(*rx_ring->rx_bi_zc) :
> > +					  sizeof(*rx_ring->rx_bi);
> > +	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);
> > +
> > +	if (!sw_ring)
> > +		return -ENOMEM;
> > +
> > +	if (pool_present) {
> > +		kfree(rx_ring->rx_bi);
> > +		rx_ring->rx_bi = NULL;
> > +		rx_ring->rx_bi_zc = sw_ring;
> > +	} else {
> > +		kfree(rx_ring->rx_bi_zc);
> > +		rx_ring->rx_bi_zc = NULL;
> > +		rx_ring->rx_bi = sw_ring;
> > +	}
> > +	return 0;
> > +}
> > +
> > +/**
> > + * i40e_realloc_rx_bi_zc - reallocate rx SW rings
> > + * @vsi: Current VSI
> > + * @zc: is zero copy set
> > + *
> > + * Reallocate buffer for rx_rings that might be used by XSK.
> > + * XDP requires more memory, than rx_buf provides.
> > + * Returns 0 on success, negative on failure
> > + */
> > +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc)
> > +{
> > +	struct i40e_ring *rx_ring;
> > +	unsigned long q;
> > +
> > +	for_each_set_bit(q, vsi->af_xdp_zc_qps, vsi->alloc_queue_pairs) {
> > +		rx_ring = vsi->rx_rings[q];
> > +		if (i40e_realloc_rx_xdp_bi(rx_ring, zc))
> > +			return -ENOMEM;
> > +	}
> > +	return 0;
> > +}
> > +
> >   /**
> >    * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
> >    * certain ring/qid
> > @@ -69,6 +113,10 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
> >   		if (err)
> >   			return err;
> > +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
> > +		if (err)
> > +			return err;
> > +
> >   		err = i40e_queue_pair_enable(vsi, qid);
> >   		if (err)
> >   			return err;
> > @@ -113,6 +161,9 @@ static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16 qid)
> >   	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);
> >   	if (if_running) {
> > +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], false);
> > +		if (err)
> > +			return err;
> >   		err = i40e_queue_pair_enable(vsi, qid);
> >   		if (err)
> >   			return err;
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > index bb962987f300..821df248f8be 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > @@ -32,7 +32,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
> >   bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
> >   int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
> > -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring);
> > +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
> >   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
> >   #endif /* _I40E_XSK_H_ */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
