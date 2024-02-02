Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28698470C2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 14:00:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81C35436E9;
	Fri,  2 Feb 2024 13:00:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81C35436E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706878821;
	bh=TxNQ7HpoXEl2lGM9MEl2wjE/J/vb37c0Seh7rRf/Zbw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cx262kcyMgtLd3tJd+sv8ePFViNfb/oFHwFIdFQtW7pvVaRxnSUHzas6LmR7z6giF
	 YXSWXTYsCOqMJKlmUgtG4IYTUSuS0kej4wmpKfbxoBhR90zpCK5Go0v3hggf11KF/T
	 7C6/1+Rqk+QFsI1y+4kNDV07V1OGhx/waNklhIflkqqgAbX0Qf2fq1MedfQAh5lZYr
	 emO3wRwEUhWH6vzT3K0k3T9flaaxgLwzGXBRn0PdVqA8JuAYBN0Txh8zkAEVIaivvJ
	 LqK26ZRZ6/5EVEiPIyByls2nNKEHU7j2plGpHRrlnU6YHkuk5EJXyG3eO+RXJUEFhg
	 rbj2eNfu3h/Ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXFHZeXvo7j5; Fri,  2 Feb 2024 13:00:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06152436DC;
	Fri,  2 Feb 2024 13:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06152436DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BEF751BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 13:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9512241728
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 13:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9512241728
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0YlzRExOS1wN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 13:00:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74762408B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 13:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74762408B9
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="70921"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="70921"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 05:00:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="908565486"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="908565486"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 05:00:12 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 05:00:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 05:00:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 05:00:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 05:00:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SCeL848ii0/Pne1X6C8NeroNw1lbcR2ce1B299Je52dSTQXUoA+Yx5fu5CfqJn8i6m1zS8Nt7GVedc+7kC+jLOkojbVzjl/rIryXyDoDqfx4V+ueIuXA5vm0kmV1VwKUxpkNGD0oJWEyz6idFTgBsBfjGLvE50RBTKFgM5rqbcRr0LfIF1PUQHkBp+mnQAmUeofpHvFNfX1kyDfonE32/xZtl+lQMZKI19pQEnyPY/Zk73MLL4IOy3r/isZExS92c4ZcdhIynQaxkGzgM81Tjw2bcxA6fbjS8CQMcT/e7xPm41NYKrlTadwiDJ0CF3U0SjpH5uP00eg1Hjzp0/Hb7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iF0A0a+TCqAMU+5cXVjeU2E+Q2GofzAh2irzbIXZVLw=;
 b=LOsTKlxOdY+3O41Kv+QMXN1zXZh3MzZf2x7F/PwmpmSLK7ER8rWWE4VLvR39vpr+igfauDm21W4ynN/q12WA+d7Zp49SfkZLA5/WCUtUPFSD3iqvrjFr/ZDv3v3CbNowQjX4KLCL64uy5G/OcrvsSEEPkn2wg1feTgFaUhRvXRHJ2n7N3YV4jjtYWRXazn2DIg1m1ezs+oarAj6KLKbuuMuKC2w5GdJ9hu3yqjiFBbmNtB0miUvjZQ7ym9yeqr1wE073F8ELvndnxybdme/wyNgpLUu6jBFSxxn/VW/HVc+jA87rhaSrGLt7zLU9bl84ZWoEuPz5CktQyBcGaMJRtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Fri, 2 Feb
 2024 13:00:08 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47%6]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 13:00:08 +0000
Date: Fri, 2 Feb 2024 14:00:03 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZbznU+j2b4OIcDgb@boxer>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
 <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
 <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
 <f58984ba-08d4-4f6c-a4ea-0f3976a3f426@intel.com>
 <15af160b-54b1-4f27-ad72-01fc27601f69@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <15af160b-54b1-4f27-ad72-01fc27601f69@intel.com>
X-ClientProxiedBy: FR4P281CA0432.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d1::18) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW5PR11MB5812:EE_
X-MS-Office365-Filtering-Correlation-Id: c4045a0d-c8cb-4ea5-2a76-08dc23eee1f5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Io2Aa5CzKFyt1AmRt+3lxa1HK2J+pG/FoUuO7a3q4rGWZ9FIv2hODaI9bJVEEKSU5+rnE4UB9d3Ehe++8CUzxa3qgvgkMNuSXrPzg9mNxkCREjRlNSY1ivuelGCEkszWVjsAnWq2fshyMLIuZwCg/ZzLI7RNqyVSt/5EiSDCZktipqTLm6MtFPB9HJNIidBJD2qUdEBE9SzS6taxS7LLwDMlX1vf/t+ccNt12VGIkhzfd8gTS2cw6PBMSoWBCFC3yHfJrCcUiDkS4zBbrc6vGLfsqiD+whZkiC6BOf+Zh00c64nfh7uTVdaC2SrKyyDn9E1EDkvbtMHgBGf02P7dyRlUo5RlnsFwuwunIaBQ6cIsGOo9vNaag/mmXKBWBgictR0K5SxWDDPNyeczzRZebrl+eABi69zvwVJV7gcP5y+erLV3jTGUHYOHS/5dqpE+XVpC72KuSGRXnACXKUWT9IdMoifA9X9KUYlIVsSTNEsBk8ktCQbLSrpAM8iGS3oBD9rjfnCpnRkwbmif86KExHovYRm+yT15G201EzbH6fR/C8C7crv7A048P+lq7+GOlmi1icj43Ds4ncQD4uQbCbqUchOMk/sRK7vlOEjHPqg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(39860400002)(346002)(396003)(376002)(136003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(53546011)(66899024)(6862004)(4326008)(44832011)(8936002)(2906002)(66476007)(66556008)(86362001)(66946007)(5660300002)(8676002)(6636002)(478600001)(54906003)(38100700002)(6486002)(316002)(6666004)(82960400001)(9686003)(6506007)(6512007)(966005)(41300700001)(33716001)(26005)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?v5dyQ/uLshqbdWUwhNCNBhQiTTZDsfwFiG9bGcwr9nW1zhYODOu4AJe0+7?=
 =?iso-8859-1?Q?8Ki+vZthlAZ7fvfmXZ4faAY3fINggZVhM48j2mcuM9i8vyE4+E4f48u6RI?=
 =?iso-8859-1?Q?pTX0ZvoglejpeGXCP0LOShOkwXoVN69aYFOwFPFZ8DXZtD/9yfdzVwXoEx?=
 =?iso-8859-1?Q?qSIw6Ev8E0XUqNp47L6OWIyqLunBz58kDYJPwQJnBzTZUU9e4zKhIy8/YR?=
 =?iso-8859-1?Q?wAQ6UK33NoIvj2nTTKU6fhktT1IF5unlXq8YWRnNdGwWvJk1Lhi0JngxuP?=
 =?iso-8859-1?Q?lReE+7vRJ+kYc04fcKMcHvKWOTGnS3tsQ4u7lSci+XrU8/Mvm0+CWA3nbG?=
 =?iso-8859-1?Q?TWWssMwfnKkVMjtIO5LaRbvANVg6pYopR4r+INOMq+ZkcaEiZEfK3NWUwb?=
 =?iso-8859-1?Q?YdLvqns47IDZ4hglDxud1v0U4pXjF2Xh1Xou9EPpZ/DQFa0wJizkXNLsDx?=
 =?iso-8859-1?Q?FwPt4MchAinEZ5xXaxuo7tx2t9X5SSuXs4amSembR9g97Hs3Ck/bGkfVHR?=
 =?iso-8859-1?Q?dnlsmlMxBJo/6qRVxfT9fuQu0J3RBTXQLNtsOWj/VzeeqAruAke9fWJvN/?=
 =?iso-8859-1?Q?2x+shGTm76q6vZK6vM9xbpxObi1oYLn8MjK6gtFAi7ab3epF0n2eYRns5q?=
 =?iso-8859-1?Q?T/9CIHi2TNLQNn2YqaRI9R8mWrS9hU4POrHBFL/nyQfnqwYnr3pjeGnkew?=
 =?iso-8859-1?Q?vWWsYLcohCh926YdWLMDIzc9+9m11qclPYcm+9b6YyBiD3/bAp3u6qcT3X?=
 =?iso-8859-1?Q?B7PG5XeKSpuFAPPqadTbIztdohmL7Ji+Qgw7x05qH5214bbOuv7746MOb5?=
 =?iso-8859-1?Q?k1FdVQLicaJhQyRFQAgsCnSaRFL43x0Y1zkJABHBjwNuxRpWw7E1BG2xzD?=
 =?iso-8859-1?Q?It8o+W4/I4bMQzHr7yUHz4wF4OOLP3e7rpXdJ9ShY19V/oPOPPDBJqFuQw?=
 =?iso-8859-1?Q?b4RpkQ/ck2t9+JAL+29aHzl1bOLQKk+DlbRgTFkiOQ6xnOShgW7CrYNFmY?=
 =?iso-8859-1?Q?xJf06DfmOszCSW0R/W80IVMxh48ImZUgG9g5E2Z3U5aN9fm9qT6rmZvY+x?=
 =?iso-8859-1?Q?nV8FuIpWrgTiDOe8l1xjT3q1p0aleMaHZpGRxPLy3syKViIsse0Z/9DsBs?=
 =?iso-8859-1?Q?7onQVecdZ8Ycb6D25lmj/xMQm7So3D7tI+g2BK8t9FsnY+lGOKNZki8Z9k?=
 =?iso-8859-1?Q?gJqQooyWdpEe7Dui0pAnpVDRr8FstqbpbG5N4jKGLUvaQt/9h9KKfBuBi5?=
 =?iso-8859-1?Q?7P7oH5+D1HTYwWrATbHzbGyH964Ev25dEp7KgsWwhzvqMnclVaiGWDbqW1?=
 =?iso-8859-1?Q?aWjypuGlzYzjOymHb0g7/XxeTo68eY1czFFEL930hPNNvjW5AcwHfORGlv?=
 =?iso-8859-1?Q?ufReRdVvNK0EMJECV1WytGAi9nvUIr4LmRugkpvdm/jSVfrDQw+q1u3k9e?=
 =?iso-8859-1?Q?nFytbFat5p3cNRps3VGknpPf6IpGnd+pjJXd96TqPDngYTEW/lMC1ywYfI?=
 =?iso-8859-1?Q?aXLpxpr3LEwbgqO14VWgtKqMpFIBjBA9MPgL4miJuCvtLGgE++eqjqt/vy?=
 =?iso-8859-1?Q?J6SnQC/Rf6nen+vqHS6xCKuk4AkXeRG1qsCA4g20Zs25EAyW9n8SIJXMcr?=
 =?iso-8859-1?Q?XoevKt2uc1PRV72My9fITIjIZn79Yi2MUXMM1sk0vdWPUhccw/Us2Nbg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4045a0d-c8cb-4ea5-2a76-08dc23eee1f5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 13:00:08.0987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BFMlFxtONrjAGOEdDXZiOESMZiUCg5voYS5tscpicOyrQIvLSBW0MHnTwWkpEsMyLoZVY8YIRDCaWQ7OfV8L/pmeE2Zys82E4FGwDFqKMT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706878813; x=1738414813;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=G9BkhbJVbRtCZHfup02uCdsqUoquSXf3wiVoCOXJMrk=;
 b=UgMo/eRqxCyJao0Q5ZFehbD2ZSPZBKYWUOQFSi9SWnhJg0OH+4QPVzTV
 7Fe5+457q80tCGMSL3cj4vBtLJwP98fD7bfnqg/mLFXxzkmylY8tPpeId
 PVceC/va8XpoZMn105WhXQCff7riNMFuzPYiHwlNyTXHeC0Vn8nTm7y64
 yCs45YC7+9hIwLe4ggALxdKHaWo1Y4t4e/pb/ZyoQWXxzaOl2gxIOLHnk
 DSAerHXxyslgphzKBkJj1qeCYt+dndtazKpv3GdzD5rOsntyby6MEfWx1
 CKP51w0qNwr6dibGNyHzyaKDM0HYeFbidrt0r1IQmOxlqOKnF/8bcdoBE
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UgMo/eRq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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
Cc: Jiri Pirko <jiri@resnulli.us>, Daniel Machon <daniel.machon@microchip.com>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 02, 2024 at 01:40:18PM +0100, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Fri, 2 Feb 2024 13:39:28 +0100
> 
> > From: Michal Schmidt <mschmidt@redhat.com>
> > Date: Thu, 1 Feb 2024 19:40:17 +0100
> > 
> >> On 1/31/24 17:59, Alexander Lobakin wrote:
> >>> From: Jiri Pirko <jiri@resnulli.us>
> >>> Date: Wed, 31 Jan 2024 13:17:44 +0100
> >>>
> >>>> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
> >>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
> >>>>> b/drivers/net/ethernet/intel/ice/ice_lag.c
> >>>>> index 2a25323105e5..d4848f6fe919 100644
> >>>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> >>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> >>>>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw
> >>>>> *hw, u16 *rid,
> >>>>>     new_rcp->content.act_ctrl_fwd_priority = prio;
> >>>>>     new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
> >>>>>     new_rcp->recipe_indx = *rid;
> >>>>> -    bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
> >>>>> -            ICE_MAX_NUM_RECIPES);
> >>>>> -    set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
> >>>>> +    put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
> >>>>
> >>>> Looks like there might be another incorrect bitmap usage for this in
> >>>> ice_add_sw_recipe(). Care to fix it there as well?
> >>>
> >>> Those are already fixed in one switchdev series and will be sent to IWL
> >>> soon.
> >>> I believe this patch would also make no sense after it's sent.
> >>
> >> Hi Alexander,
> >> When will the series be sent?
> >> The bug causes a kernel panic. Will the series target net.git?
> > 
> > The global fix is here: [0]
> > It's targeting net-next.
> > 
> > I don't know what the best way here would be. Target net instead or pick
> > your fix to net and then fix it properly in net-next?
> 
> Sorry, forgot to paste the link :clownface:

IMHO 1/2 should go to net. Then you would have to wait for it to got
accepted and get merged to -next and then you come back with 2/2. You know
the deal.

> 
> [0]
> https://lore.kernel.org/intel-wired-lan/20240130025146.30265-2-steven.zou@intel.com
> 
> Thanks,
> Olek
> 
