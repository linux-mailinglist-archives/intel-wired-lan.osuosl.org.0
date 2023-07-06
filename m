Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213A674A26B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 18:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 086454158D;
	Thu,  6 Jul 2023 16:47:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 086454158D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688662022;
	bh=BeYUIoQPnt1Je2YusZWLnC6IhMajnz1uMxwPq/aYfYM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pKDtKh9hKyV4Iwaf+Ajkmc3b7TxvDFzP2Y0wZCnsX/JphvfM/dlUsO75cPDIAzQml
	 DwIijrnOSLE5Pbpy/xRpq/Nn+EKeN/XxNwsjS8tU4JkfPiS3/ImTjoRdi6fr/QQJjq
	 DfrUCGh9yvz7J5i3wdqK6T3TOZ1Vmq/rJnzo7uASvNN3mjJsVy+LxYEU1io9VdXPzf
	 aTqazo4sxqTtXIzxjszKpmeq+dz2CoVUhU0MacfYkWit05R24mOeDWFXiluia/15HS
	 XVJ5TUd0PMBR85+qIPmJ+dbWxfbd/dhsXp1Cq12l3eRNjgfyb3nayc2Fc0VlUkQ3VF
	 cgmxJKhS94pPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SB88807zIp2J; Thu,  6 Jul 2023 16:47:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B54BD4158C;
	Thu,  6 Jul 2023 16:47:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B54BD4158C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F03471BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:46:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6A354158C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:46:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6A354158C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RFXhGGgdSYAM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 16:46:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6ABA840A98
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6ABA840A98
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 16:46:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="367147064"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="367147064"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 09:46:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="722860803"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="722860803"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jul 2023 09:46:51 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 6 Jul 2023 09:46:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 6 Jul 2023 09:46:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 6 Jul 2023 09:46:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3AoPmplOAkJEfR92gdFNuEREn5qsiNsZoZUnolJluvZbjldLmbUXtNJP1Lx4qZmnU5+vQGX33tIVLZ2WFQ8xB6kfuWZFFgE4dh6aBWhJjdXZLG+WsqbUeA3pLqkNrqn0D4ydPsQ/i7H/IbAM9Kh8/76+OEIz6EWVeUQiY1IrBcRec6If7zFRIvkoqgQg7zyPR+8dJX/a+rIIx0jVQ3/nvZjCbvFeAm+gRXJm6W8pPRL2h+O9SkFN9k7otnxafr6Ui3oNo+Jv83q60Rr6r+oO9KtC5o8OtfOe0328Jrn9XtVwqizUAR2BdtxP8MVLlXzi1rUuvmJPgOzPY/yUVTpWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7/0twT6znIc4rN24iHfqPSzn32EBDHqEqgleBOVbUrQ=;
 b=BsDR+qmVhex5CclAOwtg10oRMAc1ee0aPNnLfRcDxhphaNPi3CeULnJfyG+nEVmt6DGvkf8j4CtYnVEYTBJiSul4nt6kuRZbQaGbesoXshpf1xn+1srshgn49j5DjJ4I2ATRE1WV8HbTyyjk7yyRJ/oSeIWdWtfSL08P+iL9M+LRwJE38IHSBlClANjsrh+G34x6cpTzxLH+l4n60LfUS6+8f1S5TDG9O+X9yfAoY2K2ClAMvVvrYSF+lztBXeRypeRuC/amM5S8loHSGrFoKdp/A/fjqE2hgn0Fe8KS5vsh+eS9GDSGuhoDCY9rav+YoWwgKanXNzcRgbrlesqfyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DS7PR11MB7930.namprd11.prod.outlook.com (2603:10b6:8:da::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.17; Thu, 6 Jul 2023 16:46:44 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::1ecd:561c:902a:7130]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::1ecd:561c:902a:7130%4]) with mapi id 15.20.6565.016; Thu, 6 Jul 2023
 16:46:44 +0000
Message-ID: <6310c483-8c6e-8d34-763a-487157f6ff0c@intel.com>
Date: Thu, 6 Jul 2023 18:45:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-4-aleksander.lobakin@intel.com>
 <CAKgT0Ue+VvnzNUuKiO1XFW6w3Ka9=SSfGBP_KpkbvR6uzqvg5A@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAKgT0Ue+VvnzNUuKiO1XFW6w3Ka9=SSfGBP_KpkbvR6uzqvg5A@mail.gmail.com>
X-ClientProxiedBy: DB3PR08CA0021.eurprd08.prod.outlook.com (2603:10a6:8::34)
 To DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DS7PR11MB7930:EE_
X-MS-Office365-Filtering-Correlation-Id: aeb823cc-90f6-49b0-05fa-08db7e409475
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j0CkSKAjNCVJpTcwclIso0PpdQrklsHVxfFvmodXjjPddF+xYsdttwwoF4GqpvI+Z3PErybIzhyQTbAHu1wXFTyLPbe3lryQ65FTGBDgztk6FN/JWkkm1KpCvaW2uQpCsRb8yTrKJYksgoRN46qtoV2u4VPg8lVBuVn2Q8O2zEadXcNLpwlo1AcTrzeNLqydzqOuhfZVWRryBqAcYinSuZkeM/jrITcEYefhuFqWbsC0eQ0pn5IBeNBK7Nb73cL3NMOqxnG1oKkmk6Tr/N9YGW9PKo/Y/8ddw/rgK9hWbJWizdNP+KzKQG9dUuGZxeZKWodEnVFHqxqMk/w4zCaxKuNL+7UFYd2BpVNbwEESwm4RbtPO2/CzHUBWJYaxk6mGSqZ2AnEsgiZq2rQPWwlS/b2prnNhBfjFoDObgBHk86jlqj6nBkbC5zNosaEEwskay4+3BcDjQYP/XLXA863FYs+ZOMefqGPX+LummOpt+zgtFKWTcGGjLBCaTud36FtoemaHNnClQnBojwAv3Ad6h2uczwVP8SUcoC8/c7UQQ2/1r2qmqWaXT+WsMHR0Aa8UeaBZ/wkZ/W4x8EfiTGQfbYi6MnEko7MnI/9VBIWTKmf8JDdhgWEzdO5amEwRiJos/kPEqkb03Kt+8qK/0b62sw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(376002)(366004)(346002)(396003)(451199021)(31686004)(478600001)(6486002)(6666004)(54906003)(2616005)(6506007)(36756003)(31696002)(86362001)(2906002)(66556008)(53546011)(66946007)(186003)(26005)(6512007)(82960400001)(38100700002)(83380400001)(316002)(66476007)(6916009)(4326008)(5660300002)(41300700001)(7416002)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHFURVkvazFxN1RwRHo4RGFPelFqWXZJdGg1a1d3MXh1VmlGVEliRE5FeSt0?=
 =?utf-8?B?cS9WdUR1ZHliQlZnVFd6akNDeXpxMDUvclA3VW5iU3l1eU9mL2prTE9waUJz?=
 =?utf-8?B?T0RDOVp1QllmcGt2aW9iYktUd0h2N3ZvTlp2ZXRDMFd0a1ZaZUtFaExDOWxK?=
 =?utf-8?B?TEZCRzlodFBUUUdySk1tRkQ2SE9iV0VPVDZvbytURVhOV1p5R2NDQkRjTXhp?=
 =?utf-8?B?MTRHQTdKanNNVGZLUWxzVlFUVHhnQnZjYW41VEtlYVNYQllUMW8xaUVCclNC?=
 =?utf-8?B?WnI0VVRwT1FlcVoraFRxbnYvd3FaaVlXVzJsRE0xZkZXZ1pYdEEzbHFFeS9S?=
 =?utf-8?B?Tk54NHc3TkxXaEw3QkNOM211dmJ2ZlBZTm5nckRsYThoR092RWZvL0FEVytZ?=
 =?utf-8?B?WmZWMEpPUHZtS1ZDUWJxbTY3dW1NcitBSFpld1ZGNEp6b1pCSjlSclIrTDBt?=
 =?utf-8?B?UmRRR2l4WE42bUNZb0Q1WGhmaXdMeVRMOGpHa0l0ZXROZzlodXI5YTFCSzlv?=
 =?utf-8?B?TVpIR2UrTWZvWTM3VkloOGE0ZVcySG9sZS9UK1MzeWRXUGlVRHdkVW1IN3Ew?=
 =?utf-8?B?WmVsdGh1ZlZKUzd6Tm5NeW1BeXRaR213SkIxNDBMWFVBcXRoYnF2QjhlOGt6?=
 =?utf-8?B?anVYNDlZZFNsWmloWEh5NTNiRW5CYVpheVAvTjNCVkNWVGxkblBtdVJDaXJI?=
 =?utf-8?B?OVJ4Yi85dnBlSU9BVUVnUUZ1Q2IzclVJL1NEQWNoS1drQm9WRkVhMkVvc1hU?=
 =?utf-8?B?ZHBvU3l3TW5wRXhZRWFObUhQd1l2MkJWcWltY1ZhSzJJTW5meXJSckVhOEZJ?=
 =?utf-8?B?UzV0ekJvTXozTStCS2J3Zi91b05WOGN1MEc1OUVvN0U4eW5oTFhLZ2V2d0ZK?=
 =?utf-8?B?dmh4ZFk1UlVQRDVwczBKR3ZnQzJ1QmgxZzZ2U3BJVUs1cVpDR2F0Z3pkdzdH?=
 =?utf-8?B?b1JwZGxpNGJlOWhZV0Q3MDV1NklFRnlodXJFd2dWOWR2Um9XWWpXS21TZmtR?=
 =?utf-8?B?WEVzZnVqalpLekRnb28wamZVamhUZlU0ZFZRMkxoYkhWUjZMRkx4dEx1RnZI?=
 =?utf-8?B?UnVsUS9BZnRKUUh6bkNRSlNrem0rZkJ6ZGNVcEpjNExKOUp5RzNIQmwrWG92?=
 =?utf-8?B?MXdWOWhKdHdhcUVMZEtPdkRQc2hYQ21NbTF6SW04aTVwaTZaalJqRUg0T1dp?=
 =?utf-8?B?YndVeHU5NXJXUHNOTnpmTVNlNEUwbDZzSmJ4eEhzb0xrcDkrbnJ3ME1XWnBQ?=
 =?utf-8?B?MUlGcWNyc3NHSjFrMWtocmR0cWFJZGIrL3RHRTFiaDhUbnFzOWh2RDFPQzhZ?=
 =?utf-8?B?NGsxcXVKdjNXR3U0ZlY4NDh6Mnc3TGpFbmlxVjRxaml3MTNpeXlHUkE5cmhH?=
 =?utf-8?B?eTJZbFFwK1ZnYzY0T3pxajY5Z2g1dXRtRXpHWkFUMDRheG1xcGIvd3hJdm5E?=
 =?utf-8?B?emk2blhWODBRTFlIUXlKUTc0YmFMSHF6WGp6Y2xYU1prY1VYQnVPd2tKckxa?=
 =?utf-8?B?MnJvb0U0WHg0Q2xPRURGS29yYldxQmdWcjMxV0JiajI0T0hSZmhjbG1TZWxM?=
 =?utf-8?B?WTZ3b2FJb01hbHgyM1NxS2hNMlZQazJBeHduekh0Rm5BaU04QXB5bEd6Lzdi?=
 =?utf-8?B?YStINUNUWHBIU1ZPVnhvak5WSG85cy9LQXJVKzJ6KzM5Qm9WeU1OSG9FTi9Q?=
 =?utf-8?B?Sjh4QVdoSVFQYkFFUk5mc3pGWWtsaHFUR0prKzMvUUlFMzRZSkdQRENrM3JR?=
 =?utf-8?B?SEo5ZmpkNDdEQm56THZjSFF5bXRrVGgzN3ZoT3NmMFJ2Zy9SSFNoancxaS91?=
 =?utf-8?B?SW9LUi81ZW05bU5xUXh0ZWYxNlVLTjR1UFh2Z3V6S2dBYXloUXkzU0VIMmRw?=
 =?utf-8?B?QUpaU1hPeXpPeHBlN0g2MEtySDRhSXgwajBHMnF5Zk1jWWtuWTl3V0JCWlZ2?=
 =?utf-8?B?Vlc3Tk5lODF4bFR6SVN6MGt3QVM4VTRZUHBiTW5wUXA3UnpTc1VrTEVKS1Ni?=
 =?utf-8?B?RXErSGllZFU2c0xFcTE2UVNINm1qbTNwSkJvM2Zpb3ZtNU5UQUVRNlRKR1pa?=
 =?utf-8?B?Snk3cmV3cVYvOEd6QlFsbEc1WUJZWFBMOWwzQWdhdGExM1RQRHY0NXJ5T0wv?=
 =?utf-8?B?U0ZzTWJVOHBXYWdQTXljYTJtcHUrRFVKOVpTMnZyZTc4a2gxbVc1NnE2UGZH?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aeb823cc-90f6-49b0-05fa-08db7e409475
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2023 16:46:44.0909 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T85XFS/zc1T2fi1PIVHW1oiS047Bxilk3z/czMcr95RgwOc8HhD9VWZwvw3Wm0PKSDVjiu+ASR8ws+xALB6bja8KnuJ9/f0QfJtgvhXZ+N4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688662013; x=1720198013;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rBl9tNo3qNH+B5XIZB9nQhocsqIFpuDKZ1B8LED6034=;
 b=kIrAnEM2UrK/uL2p5SCiAt4dMoffj+/3+TT1UDCfoXZ72JjCG5nnCnI1
 12Tn+hMLJCZNZDOD6w8Q7QJr9PYjnjx2BAYVXrvJ73mN9UD9W3hKp2qRM
 mdx31jJM59/moc4BJy+3qMtmOTX8jN1HSBqDG4JFd9bhFEYyoxtaoSpMb
 CH85cLaXHuWFw3Hb9l207a1rvLZ++bGdA+oKyhkcA+9s6Ifw6mz1MW18b
 tMQK1czc78GZsWD2ooIpzqfExVNdZ7Lpkr1UsnkquAq+a8B1waPif0bT1
 7hecx2xE02276cHih+WuZ0Dxzo9fKYXmnJcxA9IJQUJFP0bymIPS+abr8
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kIrAnEM2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v4 3/9] iavf: drop page
 splitting and recycling
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Jesper Dangaard
 Brouer <hawk@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Yunsheng Lin <linyunsheng@huawei.com>, David
 Christensen <drc@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgpEYXRlOiBU
aHUsIDYgSnVsIDIwMjMgMDc6NDc6MDMgLTA3MDAKCj4gT24gV2VkLCBKdWwgNSwgMjAyMyBhdCA4
OjU34oCvQU0gQWxleGFuZGVyIExvYmFraW4KPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNv
bT4gd3JvdGU6Cj4+Cj4+IEFzIGFuIGludGVybWVkaWF0ZSBzdGVwLCByZW1vdmUgYWxsIHBhZ2Ug
c3BsaXR0aW5nL3JlY3ljbGlnIGNvZGUuIEp1c3QKPiAKPiBTcGVsbGluZyBpc3N1ZTogInJlY3lj
bGluZyIKCmNoZWNrcGF0Y2ggdy9jb2Rlc3BlbGwgZGlkbid0IGNhdGNoIHRoaXMgb25lID1cCgo+
IAo+PiBhbHdheXMgYWxsb2NhdGUgYSBuZXcgcGFnZSBhbmQgZG9uJ3QgdG91Y2ggaXRzIHJlZmNv
dW50LCBzbyB0aGF0IGl0IGdldHMKPj4gZnJlZWQgYnkgdGhlIGNvcmUgc3RhY2sgbGF0ZXIuCj4+
IFNhbWUgZm9yIHRoZSAiaW4tcGxhY2UiIHJlY3ljbGluZywgaS5lLiB3aGVuIGFuIHVudXNlZCBi
dWZmZXIgZ2V0cwo+PiBhc3NpZ25lZCB0byBhIGZpcnN0IG5lZWRzLXJlZmlsbGluZyBkZXNjcmlw
dG9yLiBJbiBzb21lIGNhc2VzLCB0aGlzCj4+IHdhcyBsZWFkaW5nIHRvIG1vdmluZyB1cCB0byA2
MyAmaWF2Zl9yeF9idWYgc3RydWN0dXJlcyBhcm91bmQgdGhlIHJpbmcKPj4gb24gYSBwZXItZmll
bGQgYmFzaXMgLS0gbm90IHNvbWV0aGluZyB3YW50ZWQgb24gaG90cGF0aC4KPj4gVGhlIGNoYW5n
ZSBhbGxvd3MgdG8gZ3JlYXRseSBzaW1wbGlmeSBjZXJ0YWluIHBhcnRzIG9mIHRoZSBjb2RlOgoK
Wy4uLl0KCj4+IEBAIC0xMzE3LDIxICsxMjAwLDEwIEBAIHN0YXRpYyB2b2lkIGlhdmZfcHV0X3J4
X2J1ZmZlcihzdHJ1Y3QgaWF2Zl9yaW5nICpyeF9yaW5nLAo+PiAgICAgICAgIGlmICghcnhfYnVm
ZmVyKQo+PiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+Pgo+PiAtICAgICAgIGlmIChpYXZmX2Nh
bl9yZXVzZV9yeF9wYWdlKHJ4X2J1ZmZlcikpIHsKPj4gLSAgICAgICAgICAgICAgIC8qIGhhbmQg
c2Vjb25kIGhhbGYgb2YgcGFnZSBiYWNrIHRvIHRoZSByaW5nICovCj4+IC0gICAgICAgICAgICAg
ICBpYXZmX3JldXNlX3J4X3BhZ2UocnhfcmluZywgcnhfYnVmZmVyKTsKPj4gLSAgICAgICAgICAg
ICAgIHJ4X3JpbmctPnJ4X3N0YXRzLnBhZ2VfcmV1c2VfY291bnQrKzsKPj4gLSAgICAgICB9IGVs
c2Ugewo+PiAtICAgICAgICAgICAgICAgLyogd2UgYXJlIG5vdCByZXVzaW5nIHRoZSBidWZmZXIg
c28gdW5tYXAgaXQgKi8KPj4gLSAgICAgICAgICAgICAgIGRtYV91bm1hcF9wYWdlX2F0dHJzKHJ4
X3JpbmctPmRldiwgcnhfYnVmZmVyLT5kbWEsCj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBpYXZmX3J4X3BnX3NpemUocnhfcmluZyksCj4+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBETUFfRlJPTV9ERVZJQ0UsIElBVkZfUlhfRE1BX0FUVFIpOwo+
PiAtICAgICAgICAgICAgICAgX19wYWdlX2ZyYWdfY2FjaGVfZHJhaW4ocnhfYnVmZmVyLT5wYWdl
LAo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcnhfYnVmZmVyLT5w
YWdlY250X2JpYXMpOwo+PiAtICAgICAgIH0KPj4gLQo+PiAtICAgICAgIC8qIGNsZWFyIGNvbnRl
bnRzIG9mIGJ1ZmZlcl9pbmZvICovCj4+IC0gICAgICAgcnhfYnVmZmVyLT5wYWdlID0gTlVMTDsK
Pj4gKyAgICAgICAvKiB3ZSBhcmUgbm90IHJldXNpbmcgdGhlIGJ1ZmZlciBzbyB1bm1hcCBpdCAq
Lwo+PiArICAgICAgIGRtYV91bm1hcF9wYWdlX2F0dHJzKHJ4X3JpbmctPmRldiwgcnhfYnVmZmVy
LT5kbWEsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWF2Zl9yeF9wZ19zaXplKHJ4
X3JpbmcpLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIERNQV9GUk9NX0RFVklDRSwg
SUFWRl9SWF9ETUFfQVRUUik7Cj4gCj4gUmF0aGVyIHRoYW4gcmVvcmRlciBhbGwgdGhpcyBJIHdv
dWxkIGp1c3QgZG8gdGhlIGRtYV91bm1hcF9wYWdlX2F0dHJzCj4gYW5kIHRoZW4gbGVhdmUgdGhl
IGFzc2lnbm1lbnQgb2YgTlVMTCB0byByeF9idWZmZXItPnBhZ2UuIEl0IHNob3VsZAo+IG1ha2Ug
dGhpcyBhIGJpdCBlYXNpZXIgdG8gY2xlYW4gdXAgdGhlIGNvZGUgYmVsb3cuCj4gCj4+ICB9Cj4+
Cj4+ICAvKioKPj4gQEAgLTE0MzEsMTUgKzEzMDMsMTggQEAgc3RhdGljIGludCBpYXZmX2NsZWFu
X3J4X2lycShzdHJ1Y3QgaWF2Zl9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQo+PiAgICAgICAg
ICAgICAgICAgZWxzZQo+PiAgICAgICAgICAgICAgICAgICAgICAgICBza2IgPSBpYXZmX2J1aWxk
X3NrYihyeF9yaW5nLCByeF9idWZmZXIsIHNpemUpOwo+Pgo+PiArICAgICAgICAgICAgICAgaWF2
Zl9wdXRfcnhfYnVmZmVyKHJ4X3JpbmcsIHJ4X2J1ZmZlcik7Cj4+ICsKPiAKPiBUaGlzIHNob3Vs
ZCBzdGF5IGJlbG93IHdoZXJlIGl0IHdhcy4KCldhaXQtd2FpdC13YWl0LgoKaWYgKCFza2IpIGJy
ZWFrIGJyZWFrcyB0aGUgbG9vcC4gcHV0X3J4X2J1ZmZlcigpIHVubWFwcyB0aGUgcGFnZS4KU28g
aW4gb3JkZXIgdG8gZG8gdGhlIGZpcnN0LCB5b3UgbmVlZCB0byBkbyB0aGUgc2Vjb25kIHRvIGF2
b2lkIGxlYWtzLgpPciB5b3UgbWVhbnQgIndoeSB1bm1hcHBpbmcgYW5kIGZyZWVpbmcgaWYgd2Ug
ZmFpbCwganVzdCBsZWF2ZSBpdCBpbgpwbGFjZSI/IFRvIG1ha2UgaXQgZWFzaWVyIHRvIHN3aXRj
aCB0byBQYWdlIFBvb2wuCgo+IAo+PiAgICAgICAgICAgICAgICAgLyogZXhpdCBpZiB3ZSBmYWls
ZWQgdG8gcmV0cmlldmUgYSBidWZmZXIgKi8KPj4gICAgICAgICAgICAgICAgIGlmICghc2tiKSB7
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgIHJ4X3JpbmctPnJ4X3N0YXRzLmFsbG9jX2J1ZmZf
ZmFpbGVkKys7Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIGlmIChyeF9idWZmZXIgJiYgc2l6
ZSkKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByeF9idWZmZXItPnBhZ2VjbnRf
YmlhcysrOwo+PiArICAgICAgICAgICAgICAgICAgICAgICBfX2ZyZWVfcGFnZXMocnhfYnVmZmVy
LT5wYWdlLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWF2Zl9yeF9w
Z19vcmRlcihyeF9yaW5nKSk7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHJ4X2J1ZmZlci0+
cGFnZSA9IE5VTEw7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+PiAgICAgICAg
ICAgICAgICAgfQo+IAo+IFRoaXMgY29kZSB3YXMgdW5kb2luZyB0aGUgaWF2Zl9nZXRfcnhfYnVm
ZmVyIGRlY3JlbWVudCBvZiBwYWdlY250X2JpYXMKPiBhbmQgdGhlbiBiYWlsaW5nIHNpbmNlIHdl
IGhhdmUgaGFsdGVkIGZvcndhcmQgcHJvZ3Jlc3MgZHVlIHRvIGFuIHNrYgo+IGFsbG9jYXRpb24g
ZmFpbHVyZS4gQXMgc3VjaCB3ZSBzaG91bGQganVzdCBiZSByZW1vdmluZyB0aGUgaWYKPiBzdGF0
ZW1lbnQgYW5kIHRoZSBpbmNyZW1lbnQgb2YgcGFnZWNudF9iaWFzLgo+IAo+Pgo+PiAtICAgICAg
ICAgICAgICAgaWF2Zl9wdXRfcnhfYnVmZmVyKHJ4X3JpbmcsIHJ4X2J1ZmZlcik7Cj4+ICsgICAg
ICAgICAgICAgICByeF9idWZmZXItPnBhZ2UgPSBOVUxMOwo+PiAgICAgICAgICAgICAgICAgY2xl
YW5lZF9jb3VudCsrOwo+Pgo+PiAgICAgICAgICAgICAgICAgaWYgKGlhdmZfaXNfbm9uX2VvcChy
eF9yaW5nLCByeF9kZXNjLCBza2IpKQo+IAo+IElmIGlhdmZfcHV0X3J4X2J1ZmZlciBqdXN0IGRv
ZXMgdGhlIHVubWFwIGFuZCBhc3NpZ25tZW50IG9mIE5VTEwgdGhlbgo+IGl0IGNvdWxkIGp1c3Qg
YmUgbGVmdCBoZXJlIGFzIGlzLgoKSSBndWVzcyB0aG9zZSB0d28gYXJlIHRpZWQgd2l0aCB0aGUg
b25lIGFib3ZlLgoKWy4uLl0KClRoYW5rcywKT2xlawpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
