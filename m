Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3421870C201
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 17:10:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0EE7833C9;
	Mon, 22 May 2023 15:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0EE7833C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684768244;
	bh=2Rcag5X0YEgVgpoFeXkYbjddIOGg3OSjXaFz0arqH34=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U67X2MD9E13s4Dyh5JAj/ERAmilcRt0bNznXKDuJL0oKHkB7bwce1oGFFpFa/YJ9q
	 Vzz0O8nPc+PGbBBXMppyYdbZzzMvM5xU075zclsz24ChKB5NaibUPaffNQ0kTT4TWR
	 ebJoKFm/d4l/L5eo0TX9CpPCue9bXE+ESIEQtmuuSeH389S0eGWtPKzp/If5qYeVCv
	 koWTFqXduxs4nAvxNa7BF6wTkN6LR8Ov0Ak+kqKlPUJJgGTJetXMoysD6uYx/+VhXp
	 IhT11w2UpPFtFOYk02NWwV8w6o8eSXyKrXxNUibDhiFh4Cf4+o/ccvuNu0cVHqhvZB
	 TxaZja1IgOxRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-LrgRw3volF; Mon, 22 May 2023 15:10:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FF67834E3;
	Mon, 22 May 2023 15:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FF67834E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C79341BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C4C441946
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:10:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C4C441946
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yantXUzv0_3G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 15:10:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A4EA41924
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A4EA41924
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:10:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="381176442"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="381176442"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:10:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="877788075"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="877788075"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2023 08:10:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:10:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 08:10:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 08:10:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWpoaKnsR6tJRx6yByx0iNmSyQehDA/HYmC0mr+HKGzUOx9xagTzBHFOvuZ9Wcx4pxQ3qYtrzb5tYMaWBoY8eC/4rDiCN0ux/1W+tm9lyixZ+IqvFZeFMhYv0sZgG48ZMHwAK7PsIoEU1dR/mbTT60els2a+JmkViswhhuu3LOLpcxbVGq5+TZkqXPmuWIIPUZwtWkENLEwOOyRCTqi+z2+Jb9NYo9JkGmKE1/yh+N+eYFzQ1dZW/b7iigSHybeiXgesgMLZCkGvlOnyWq5eOYBLWD+sYLnJ5O0l7ItQ90O8UX84WUkpdKKc+yq+KGRB3GlqaspCim58dKN+h9go9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bz/nGwNcZ1a/r7XCgcFBoJNE4So7Tu5LjsTPQn/31us=;
 b=cGtxMBUloevXToWz64L18RJ8T3plYUVkm+abbl9m9hgMFVOMOBrXRAnEKKKrS0IJg963+TmflBSgUTJG+oVZbbJ9gcmIXUywlIbIffM4P1L3yXCnBrmsMwBsZDnjykjgGI5KGwsdgpGobNZtSRSqz/CrVCi7vZVYb6+I6TFVZhuLohXNQJNxzxLC9/najEFkSJQ9e0RCerIcVD9lw9tJsBvq4mZW2lNtokprK0w04jcJFRQFU/IQ5Adg11BBFIBlZ3O48/iC4dI3EUdop7tAdrAH/ISgiTjRdAYvpVBlaCP6qic3b8ocdBOyRJZyRKnVezjISedLyGhNU8ftXslGFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5471.namprd11.prod.outlook.com (2603:10b6:5:39d::10)
 by IA1PR11MB6420.namprd11.prod.outlook.com (2603:10b6:208:3a8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 15:10:18 +0000
Received: from DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913]) by DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913%7]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 15:10:18 +0000
Date: Mon, 22 May 2023 17:07:33 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZGuFNesdPS5ijl/R@lincoln>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-3-larysa.zaremba@intel.com>
 <ac1895cc-a7b0-e40c-7dfc-8ab301f39893@intel.com>
Content-Disposition: inline
In-Reply-To: <ac1895cc-a7b0-e40c-7dfc-8ab301f39893@intel.com>
X-ClientProxiedBy: FR2P281CA0068.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::12) To DM4PR11MB5471.namprd11.prod.outlook.com
 (2603:10b6:5:39d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5471:EE_|IA1PR11MB6420:EE_
X-MS-Office365-Filtering-Correlation-Id: adc7ac57-a69b-4d56-482a-08db5ad6a736
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QkIqVUSXsptZ4DHzxTEGAzbdfN9NVbVx4tp2v32YlkTcK1rb2kKZmxX/NjpM6LUD0IM2udwGm7qB7eM+jQlc1ufArbiNUJJvkZgZP6Rf4gFXJOwJIq7AsXTcV1ijqGOYyF/IQI7KwYO9QES3enGXgc+uLqpO8eS3SP42anx3Y2RdfV0ybx0wVE2DBYSODlzz9+fL/N0dw3t2LRSD9l0QfLm8wUkxKk1sVmYWvAscz04UmSUoZqEBMsOMwkHqN1aFYLkyJA2UY3m/Vy/Db00Kg9cqntI9n9CAjZgfurxGa0M76gtXARLlMndAtJCr89ivDL7U2ij19Ih/dWscfU+6TJUYh178bOQGI3FYOw+yWeIXwt4cmDtIrsMfZrSdaIYNvMDHB4a78cYDKVK4cdEzvhMFVYmCCMC27JbkGuUpogYG3kJmFyyQmQXWQnea1XsPLOy7Cs1QNQz67fNy7/gVG9LuxkWly6A0m0cWO8tU0p6bM4A35dT+wS4oyEuHcufkv08RfSaCn/bFvyQK7k9o8eXPRZjvBk41sKuREIswALDupwJW+iHwVsFZJP2AuLYE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5471.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199021)(8676002)(8936002)(6862004)(7416002)(44832011)(5660300002)(83380400001)(9686003)(186003)(6512007)(6506007)(33716001)(26005)(86362001)(82960400001)(38100700002)(41300700001)(6666004)(478600001)(4326008)(6636002)(66476007)(66946007)(66556008)(6486002)(316002)(54906003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Elq3wdLzjWLcXKoj/ZTbq3shMVnPLL81dePqHduW6/GxeuEBQkNF9IB+kc8K?=
 =?us-ascii?Q?B6aW5q8wGH6Gp0tjmcUmDiuNqGYug+mSUXY1f+w54xsEfF9SHHgTq/5S6oBU?=
 =?us-ascii?Q?wYcgjxyICi1w82Fl4sS837zb8vtmUtB0Hqx4iaSLl97QSRYZQ8KaKXIlzlC9?=
 =?us-ascii?Q?zzT9IKp2UFFEu9JGbIAsChO+WYW/uhC81yS95/21NEVKqS6zHJTVXngWlJxz?=
 =?us-ascii?Q?225TiaKabPBzZRNT1Ha2X+SZ5mgRHV7YlPduNlP2jv4/m2fuiO2wIUHbl845?=
 =?us-ascii?Q?Fak63Sbfg5tiPIzvUhmD4Yyb0KyR3YhtrFknEK0W4H/YahjcKYMqX9Eu0Pe3?=
 =?us-ascii?Q?TT3oXUlUEShk2fW3sNBA7Pvju74VVtZUH7k1AciNEkCN9P+jkc4DNU0n09FZ?=
 =?us-ascii?Q?YNnNCQyEdcs9apg+WeDbYV+8RGcGh+ujHTUGFVtfoW7EfqqJ+4x+jq61nx1P?=
 =?us-ascii?Q?auZsT/RZ0Oi11LL4uAqgTB7gXDhVrCP735PQhPPSWiA6EJyODx2siT7qbOMW?=
 =?us-ascii?Q?1lfv2i23aZsla9qvM1BP4brJ8AcT/6AnIfDt9vSx2LFmcWP9fy0yNtYH/Hxm?=
 =?us-ascii?Q?y2r1m6KU8/rNkP0L0tsoZygzX9yQwl2hbP4cM++J25VlLCAABpf0p99bcLcN?=
 =?us-ascii?Q?I25bFa8Y+zDPl9sbjSHfN/umpNrKJKNVL8Ev76UL3jpObeHQ6+U34auXsV4t?=
 =?us-ascii?Q?DL3liFG17CwtF8v/GFniRg6WAFNbAfvOcCiyrioaEYqy3CJEtl7Q/nq2H6h5?=
 =?us-ascii?Q?fRdKdjBCBMBtff0ib4EfCoy2k6Dqg5MmVvC9QaALpSLutgX0ovI25BgyPq7X?=
 =?us-ascii?Q?zKdkTm3FgB2cJ3iWJQD4ZpfyqrnTT9V2tCmS9vVJm2de8qcGFG8W1D4kjFhX?=
 =?us-ascii?Q?1nTEmqIGfXdfg9ZsmsQN1mCjAD8gmyU6twhghN8lnMuGGOpKwnsLeOG1cDtT?=
 =?us-ascii?Q?n6qlirGVw+LZ/fIVorYVA2JoXMljxBNIwYVAcWAH8lAOgUDiS9jOUtSE76Mf?=
 =?us-ascii?Q?7cQScH8+W8cK8mx8bAzqjuRf1xXGbJFn87sJnzzR6/+zdFJox6LzzAG6rNak?=
 =?us-ascii?Q?9qNJdoEeLNoiL/YBXqUUxtfnVqJVMEs4dkcdInUz5o/cza4oUP4NEk9/DVFj?=
 =?us-ascii?Q?EGyslS1ZOQyQnw0yxRNHY9b6QucE+PNnsfPPeyj3e45voofrP4HM/6AWIl58?=
 =?us-ascii?Q?1U4W7PxxFbNHlxdSxgeGXUHxGsYvlJN/oFfsDRpHEuo8NlQ/eujzI0MYRXd1?=
 =?us-ascii?Q?yumI+243TCEoCUzHgxOP299b5KlH2iwK23T7L1HoJJczUdOWSkv7vZQ7/Se/?=
 =?us-ascii?Q?mztah2x9p136TMKom/Hu1ZeMGDfQOgfVmQfxaOxicRIRP8pBurun3eyFJzjh?=
 =?us-ascii?Q?GWnijAfvLWwtE/HTMXjRHNOb7awr1rZCnCa14cfGm+64HaGM9nEaXSiL05yy?=
 =?us-ascii?Q?SuTSGGJksRzraipLQSjx9oAdHrjYZVfTG5s3m5zV+RUqzHjcsHBKbb94jmvk?=
 =?us-ascii?Q?h56+7Uwu+DR5q+J9/iS2F4dGoq7mcponOnY3ydFpu+flkz1oLiRcuediLWRG?=
 =?us-ascii?Q?+KMeReTtuDRJ/jJXPLgKW26RkxRMIn2cldJhvgQXx9Mthi/zZGsJ0CqQYnua?=
 =?us-ascii?Q?3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adc7ac57-a69b-4d56-482a-08db5ad6a736
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5471.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 15:10:18.0788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kXUCIYL4WeXZ/SmvWT5XgCLNmQZoefu3oAAMxfaKluUPaljzOQwmwIotZ883HhtoXL9zaEErAp4zAIC+Fr3XY0zCTu+kY0yStH3conzzROw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6420
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684768234; x=1716304234;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Iz3IJ6+8RYV8/lG/j1sTFs2GtV31o4OT0eriedDB4DI=;
 b=QJtu/h9F98ZKb+EPHuJ7nymU0ahutIMFyzUJo4ERB/naN2/eiKIz6CUM
 9BMMvzm5zFnoJsBJN8evF448oSUAdauC5dghRp6C4qCqoqL5G6lHXJKwq
 4uVGlEveN50vd394lEr9AT3sovCyud+dlA3sLNBeog3f1KK54RLLcJIuu
 lr89mFKIYBEOvVXtzkTuCn+mQ4txR5dqxscLYCaTBWTBkp2zCqAwt0Va+
 fzfFR8x+U3ODDsogTwb3AGdnRw9OEDg4T7GcEHKHPRdx0f5yHDCiTx05n
 33ljCDtMnx+ObWIVXwn7uFnyMkRGLl3EvdWA4u1VxQNZTW/mSO61jIpo1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QJtu/h9F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 02/15] ice: make RX HW
 timestamp reading code more reusable
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>, Alexei
 Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 19, 2023 at 06:52:13PM +0200, Alexander Lobakin wrote:
> From: Larysa Zaremba <larysa.zaremba@intel.com>
> Date: Fri, 12 May 2023 17:25:54 +0200
> 
> > Previously, we only needed RX HW timestamp in skb path,
> > hence all related code was written with skb in mind.
> > But with the addition of XDP hints via kfuncs to the ice driver,
> > the same logic will be needed in .xmo_() callbacks.
> 
> [...]
> 
> > @@ -2176,9 +2174,8 @@ ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
> >  	ts_high = le32_to_cpu(rx_desc->wb.flex_ts.ts_high);
> >  	ts_ns = ice_ptp_extend_32b_ts(cached_time, ts_high);
> >  
> > -	hwtstamps = skb_hwtstamps(skb);
> > -	memset(hwtstamps, 0, sizeof(*hwtstamps));
> > -	hwtstamps->hwtstamp = ns_to_ktime(ts_ns);
> > +	*dst = ts_ns;
> > +	return true;
> 
> Can't we use the same I wrote in the prev. comment, i.e. return 0 or
> timestamp? I don't think ts == 0 is valid.
>

Agreed with this in the answer to the previous email :)
 
> >  }
> >  
> >  /**
> 
> [...]
> 
> > + * The driver receives a notification in the receive descriptor with timestamp.
> > + * The timestamp is in ns, so we must convert the result first.
> > + */
> > +static void
> > +ice_ptp_rx_hwts_to_skb(struct ice_rx_ring *rx_ring,
> > +		       union ice_32b_rx_flex_desc *rx_desc,
> > +		       struct sk_buff *skb)
> > +{
> > +	struct skb_shared_hwtstamps *hwtstamps;
> > +	u64 ts_ns;
> > +
> > +	if (!ice_ptp_copy_rx_hwts_from_desc(rx_ring, rx_desc, &ts_ns))
> > +		return;
> > +
> > +	hwtstamps = skb_hwtstamps(skb);
> > +	memset(hwtstamps, 0, sizeof(*hwtstamps));
> > +	hwtstamps->hwtstamp = ns_to_ktime(ts_ns);
> 
> Ok, my optimizations aren't in this series :D
> If you look at the hwtimestamps in skb, you'll see all that can be
> minimized to just:
> 
> 	*skb_hwtstamps(skb) = (struct skb_shared_hwtstamps){
> 		.hwtstamp	= ns_to_ktime(ts_ns),
> 	};
> 
> Compiler will probably do its job, but I wouldn't always rely on it.
> Sometimes it's even able to not expand memset(8 bytes) to *(u64 *) = 0.

Ok, will fix.

> 
> > +}
> > +
> >  /**
> >   * ice_process_skb_fields - Populate skb header fields from Rx descriptor
> >   * @rx_ring: Rx descriptor ring packet is being transacted on
> > @@ -210,7 +235,7 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
> >  	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
> >  
> >  	if (rx_ring->ptp_rx)
> > -		ice_ptp_rx_hwtstamp(rx_ring, rx_desc, skb);
> > +		ice_ptp_rx_hwts_to_skb(rx_ring, rx_desc, skb);
> >  }
> >  
> >  /**
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
