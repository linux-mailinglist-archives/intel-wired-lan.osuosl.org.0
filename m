Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C7D6B988D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 16:08:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0496540AE2;
	Tue, 14 Mar 2023 15:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0496540AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678806530;
	bh=zRbAQgvQMnzTbUCjCZXK8xLfA8wVH383hLit7+Yjagc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CKDq7XgTjiwcb8NuKSgQFfEwUcuUCcFLEsGBaDEnqHG4+vR7F+EmQXF0Mw0MzFOwP
	 3tjq8waYQhn9Bgp2P+G3XROtU3jZb5tqjNtc/xcL0VNQXuTU4F5m638XVIdYPR65nA
	 x1ALAj007rFjM8x0DCcuUirOJh0UhBXynRuy1I0xOjJeLDqMnj767qN77UWnp8L77d
	 LosLu+BHQkAAwL3s673mlq0I5NrUpDfuJZ6r9YFG+3RRSDJvcAEQ04CpsAAq4dO6iZ
	 EyozxQYevc1UYoVgEtsPYbHmmc0aywneEnBv2tQjIARtFPGOaYaeAhimm4E1XYqbUg
	 caKaUBhDvcKAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 29fjLt4IQrBr; Tue, 14 Mar 2023 15:08:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8DC140AA6;
	Tue, 14 Mar 2023 15:08:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8DC140AA6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9024E1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 14:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 66BEB60A8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 14:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66BEB60A8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FEtuYCnay0Xf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 14:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7772B600B8
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7772B600B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 14:24:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="338977736"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="338977736"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 07:24:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="789389277"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="789389277"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2023 07:24:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 07:24:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 07:24:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 14 Mar 2023 07:24:18 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 14 Mar 2023 07:24:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nj0ujZXEuVuAmDLhO+7monLAPXG/ThzXXZuvJ2s6KsI/dMOLRL4EdaFmAxtE26Q0uYSrwfNntW8YYEje38E1h4I+frfPZjRcLX+g7T/69Bh/bv4rI9bdRhuIU7jUINzO1timG0ujhfaEcNCmRLqmnFyWwX0RZo4olx+MOnhQ+e0VMnID4eDmFeHJStzLrwhjBabcJiuuARiA+B9mVu08T0YnXJFGZwSiFBreSVsYSFuIn68uhZx2AwasHUSB6qRx95BnISWKLoR19vM1ngF34+Svqjr6O9nVm96gMkCuM6dX/5fVVXEdkxFIEH4dz7hIAG668YQ8IzkV8a+SkteO0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OxntSdddugCYnngABj6t/ARdJq90mmyKZ2HstCEsnB4=;
 b=fzE6RJFrOdFqGnci/dY3BPUyrgt/vjXia3npVvsorCqxbEUyNlfxEVGHa35zoAbJZbSgavnH+MDp+affQUG9spgbqd9aSvbwfa13lESMZtiEwgxLHWr8UjqhiIRZTEL6k0vzav9VhOgclqzzeelW+swkd2k7oXDK0NdML1LTS7c44wjCsxVWrg2luhWSYTVG7vEuNXtrFVnbomOdj44XrxDHJXGnAfybs3/iyeQjC5RfN8ARXXUVvaozHaZusIXJIvVKPDPpB3VQt8r+8vVEBv2hVjniqBrTvg7X9CustgfCjUUwLcATI/zz0iNLrgZZKX/VPZ568aG7x62V8qeAYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2937.namprd11.prod.outlook.com (2603:10b6:5:62::13) by
 SA3PR11MB8024.namprd11.prod.outlook.com (2603:10b6:806:300::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Tue, 14 Mar
 2023 14:24:17 +0000
Received: from DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::cece:5e80:b74f:9448]) by DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::cece:5e80:b74f:9448%7]) with mapi id 15.20.6178.026; Tue, 14 Mar 2023
 14:24:16 +0000
Date: Tue, 14 Mar 2023 15:24:04 +0100
From: Michal Kubiak <michal.kubiak@intel.com>
To: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <ZBCDhCjim+d4TmMD@localhost.localdomain>
References: <20230313160645.3332457-1-sassmann@kpanic.de>
Content-Disposition: inline
In-Reply-To: <20230313160645.3332457-1-sassmann@kpanic.de>
X-ClientProxiedBy: LO4P123CA0449.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a9::22) To DM6PR11MB2937.namprd11.prod.outlook.com
 (2603:10b6:5:62::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2937:EE_|SA3PR11MB8024:EE_
X-MS-Office365-Filtering-Correlation-Id: 119466fe-3172-4dd0-1c8e-08db2497caa4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /1oxnmj4IS6H3dxobQl1EIrgPxjEeJdXb4sy8fjhjO2yUARzMcaI7cBa+QLV7KkKQUrbbMFfsNfHGZMw7BqpoF3BNXKlTcjMtZ5Qqv3hcgZ1wo9PaM7dZB/+PwPzbOyvkMOUQBWuSjuQ81UV6MHx8Br13OxdUbHObL0d41p573RnQ6Z6GfR8liVOo0yeb7wcy3JFcITI07eGa/QvNTRmceV3Wym+imAbqkuHnR6/HVjNAB5gdgq7rJKhdwv/uYlOwQ9EtwUtrYaDz8EHClvARHlMwcLREjlc+XXmLJd0kRopYJc7Yg0dLcDxjH/Nd5cPfiNuXHOVhmEFG50rZP+km6WPRn3SaFmxxxAZ99KPqYj8vCT7VtOmvhSfqENMyS7wC3061OSxKVIFOnKA7bal4xZbkUJQmPz/BBRfxT604npm18KIENO9hVB2WE4KWwcKWa8RsEZdhkRd7AdNRLPDmIQrKyMnNH8L0SRPFUv4j1UEb1MXS0CPjEyV5d0ucTxCouDXZ0qKWKiI5o1LcJkdjMX/jrJQZbsjfz+Z1QVjvSe5myO0lOrs59E4fVw3ALJLqP7pcdVRCaS0z6xIYC9FirULGT+DBmnbxevL0w/ASPKPDkU15eDNd/H+cqyboZB5RF3bZbHQkeqCGgb+6nZ4pbDVodgLieL0OJRHULoNfa6qcMHDQkVOABaB19iEysEM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(366004)(39860400002)(376002)(396003)(451199018)(86362001)(38100700002)(82960400001)(8936002)(66476007)(66556008)(4326008)(8676002)(41300700001)(478600001)(6916009)(316002)(2906002)(5660300002)(44832011)(66946007)(83380400001)(6486002)(26005)(9686003)(107886003)(6666004)(6512007)(186003)(6506007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TolaFS0lGxV8zGza1/tiH1dNjYwXy11tvo2EW3qUrHQY51SydUzVB2yWeuyQ?=
 =?us-ascii?Q?NqLkxOqNIAksngWHsopFSI8J9ATN3u5e5p/Ex4FHI4tbYAp9NtWEoUjJ+AOT?=
 =?us-ascii?Q?i1MjJo7NbN1cH+UwNIDCyxBkoer5jPFF3ouYxxveW2SNA6mOlwq73D6EmrXs?=
 =?us-ascii?Q?MJmM1YxLNys20NxenyJXsErWAGtAw/MoVylbGHEmrTV1fXbBiH46qVH0DGkZ?=
 =?us-ascii?Q?iRfAbMTcZrpP3L6PWDXAG43+BBFVpjtvXRgq/jdifahKTzhVI9xBOzMRpvwd?=
 =?us-ascii?Q?L19Tk0gtK7DK0oXbqYc6yxUDo6HanFvG6fDl49M09WsswQ0mxOh+LUDfInrF?=
 =?us-ascii?Q?Heq6FHeTYvlhPDgo+grdRzjX5V2xkdue5jLaVx2CPq6WjruFTVTfVnVK/VIW?=
 =?us-ascii?Q?8B/t8gdl11WSrPSpX6mmbUWbgfKYQaT8RyT3NvZNezJpK/FB0F0xf8Ay+IJW?=
 =?us-ascii?Q?GwPUonGP/ASubfGxX64zp6yYGv7yHBrFC4Aiw7asg72AdwsPr6LUNFfk0mUa?=
 =?us-ascii?Q?GiB8jUu+ajLmadvEbJAXXIJY3JQQbHaTzHwP5a1xxog1Gp+KbpOXC2ViGZIO?=
 =?us-ascii?Q?lNffx6+h3QD9GO1uT+wXFApWkg7rjRfb71gslDdtgOJX6O6ys3jViktfR6BD?=
 =?us-ascii?Q?YAdRwpIuOhO9Fe1a1QrAHfi9uCmLUJLfSE9Pv9+q4NNs6UMd6DMXzeL8zKaZ?=
 =?us-ascii?Q?WxfuJc/GzrxMs5IbCwQyrAlogyhBrdW4P2hvTOySxH5vhaSzZUddwvr/xoNS?=
 =?us-ascii?Q?ugnWiFkdfUGOcgvAHWZEDppwkDiwXSe6V5VPb61+I/r2rALZWYF+ImCgnVDx?=
 =?us-ascii?Q?Zg/864KahoXX7Ji/4RoeDWUDelLfEbHxVcDJr6r2SvFaZZhMWYXeosKL3ibZ?=
 =?us-ascii?Q?9CFMtJUcF3IgynWv/N6mfxVesOgL9e2kwUXpN3mKuLABkDiKRBhC+7ushcsg?=
 =?us-ascii?Q?t1b+R3cBXjc22WYGUss2OUFeus6ikQiMqARkm+K8ZTJh7B9CvS+DsTVJjHjc?=
 =?us-ascii?Q?SMZ9Q60M+1vpTw9jFuB/cDwpv1NMONEEhL01+0jzPQXE+fDdIG28u+RfORwN?=
 =?us-ascii?Q?UT8/2nDTglHo9xKeIfA7/kwd5NxFUoXfBv69sZ8IIjbDF3rRGmbeUFaGUteC?=
 =?us-ascii?Q?NSGWLn3tRHzzo/itO4JyX8rzpTwO3RfL/zkpl3G+BdqbOiBg9OvEgWvyopJH?=
 =?us-ascii?Q?/T02pqAnf6oFnpLZ764TiMUeueicgubiG5URLIHQP3XpS8O0U8Rh05xjCwpI?=
 =?us-ascii?Q?ulGvYEwVZ68RlH+se3Xlzu8mUkPNIrRzync1/JXCc3fWVUFCdG5VMtBOQHJG?=
 =?us-ascii?Q?zB0Wak3eJVuibOmUFWLaaWh37ieb304mFJovM8faPFZG5WwII9TW4al2m+kh?=
 =?us-ascii?Q?feFlWo9RtQWAg/fuXseYsxNq0mLeiMurX7YvuVGzqaa7ngg07lK9FK/TaEZY?=
 =?us-ascii?Q?kv6v9ckq07qAstd1UU+GJGYbBEABqi1QxuxNJPjnRPt778iGQvXPwav+N255?=
 =?us-ascii?Q?/gSxOzd7TX38JABgAljiXQH5S9tnx8uMyGNKzCxIPfJoqwVrG/cOo6ILxtKZ?=
 =?us-ascii?Q?rukBISHNUBe3uIyXMR5GvL6H6u7pVte0yTyAGzqjIAwrGqWU/cEP/tSyiWhB?=
 =?us-ascii?Q?nA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 119466fe-3172-4dd0-1c8e-08db2497caa4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2023 14:24:16.3971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ERHZdUw8K/Lercbgn/kevGCCykle2SxI3Apzp3uqtqzarwcJJB+Y1rWjLcKw7cjUam6dgFI7x4A6fYNHpdkoVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8024
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 14 Mar 2023 15:08:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678803868; x=1710339868;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g0YvVRcIisNsOC5zJfpjLc9MNus2hy/RIy+0fNavEcM=;
 b=LOx+UUZqk/P6pMXOA9VjuaBHvwN7seaT7h8v5I63cvZccowruhOT0wh3
 PUuRjRlVP/j89v/7k8WUMH7x7E4dST6P5efPwo5Wtimt34p0NFk8G564Z
 hW6or1Rff1WCdUuxgT26nfo2o9ofUmuNUxpnZeaCBImsrhErk90plpN1O
 KFn9MTwM3hDaJFAA2L+mJLBNslWTthwCw3qZ+mKeCVWgKVjFMidUSc6n3
 GDl1tMQArD0+IuKJafSlwSdquZsJp54s816LGw5iLmXERXM+/bZAX38Ks
 PCE6l5Cs/vtYLqntR8sp0+v9HFH8Y24HL1YnlLkps5ps7hkobF8ggBIqY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LOx+UUZq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: fix hang on reboot with
 ice
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, patryk.piotrowski@intel.com,
 slawomirx.laba@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 13, 2023 at 05:06:45PM +0100, Stefan Assmann wrote:
> When a system with E810 with existing VFs gets rebooted the following
> hang may be observed.
> 
>  Pid 1 is hung in iavf_remove(), part of a network driver:
>  PID: 1        TASK: ffff965400e5a340  CPU: 24   COMMAND: "systemd-shutdow"
>   #0 [ffffaad04005fa50] __schedule at ffffffff8b3239cb
>   #1 [ffffaad04005fae8] schedule at ffffffff8b323e2d
>   #2 [ffffaad04005fb00] schedule_hrtimeout_range_clock at ffffffff8b32cebc
>   #3 [ffffaad04005fb80] usleep_range_state at ffffffff8b32c930
>   #4 [ffffaad04005fbb0] iavf_remove at ffffffffc12b9b4c [iavf]
>   #5 [ffffaad04005fbf0] pci_device_remove at ffffffff8add7513
>   #6 [ffffaad04005fc10] device_release_driver_internal at ffffffff8af08baa
>   #7 [ffffaad04005fc40] pci_stop_bus_device at ffffffff8adcc5fc
>   #8 [ffffaad04005fc60] pci_stop_and_remove_bus_device at ffffffff8adcc81e
>   #9 [ffffaad04005fc70] pci_iov_remove_virtfn at ffffffff8adf9429
>  #10 [ffffaad04005fca8] sriov_disable at ffffffff8adf98e4
>  #11 [ffffaad04005fcc8] ice_free_vfs at ffffffffc04bb2c8 [ice]
>  #12 [ffffaad04005fd10] ice_remove at ffffffffc04778fe [ice]
>  #13 [ffffaad04005fd38] ice_shutdown at ffffffffc0477946 [ice]
>  #14 [ffffaad04005fd50] pci_device_shutdown at ffffffff8add58f1
>  #15 [ffffaad04005fd70] device_shutdown at ffffffff8af05386
>  #16 [ffffaad04005fd98] kernel_restart at ffffffff8a92a870
>  #17 [ffffaad04005fda8] __do_sys_reboot at ffffffff8a92abd6
>  #18 [ffffaad04005fee0] do_syscall_64 at ffffffff8b317159
>  #19 [ffffaad04005ff08] __context_tracking_enter at ffffffff8b31b6fc
>  #20 [ffffaad04005ff18] syscall_exit_to_user_mode at ffffffff8b31b50d
>  #21 [ffffaad04005ff28] do_syscall_64 at ffffffff8b317169
>  #22 [ffffaad04005ff50] entry_SYSCALL_64_after_hwframe at ffffffff8b40009b
>      RIP: 00007f1baa5c13d7  RSP: 00007fffbcc55a98  RFLAGS: 00000202
>      RAX: ffffffffffffffda  RBX: 0000000000000000  RCX: 00007f1baa5c13d7
>      RDX: 0000000001234567  RSI: 0000000028121969  RDI: 00000000fee1dead
>      RBP: 00007fffbcc55ca0   R8: 0000000000000000   R9: 00007fffbcc54e90
>      R10: 00007fffbcc55050  R11: 0000000000000202  R12: 0000000000000005
>      R13: 0000000000000000  R14: 00007fffbcc55af0  R15: 0000000000000000
>      ORIG_RAX: 00000000000000a9  CS: 0033  SS: 002b
> 
> During reboot all drivers PM shutdown callbacks are invoked.
> In iavf_shutdown() the adapter state is changed to __IAVF_REMOVE.
> In ice_shutdown() the call chain above is executed, which at some point
> calls iavf_remove(). However iavf_remove() expects the VF to be in one
> of the states __IAVF_RUNNING, __IAVF_DOWN or __IAVF_INIT_FAILED. If
> that's not the case it sleeps forever.
> So if iavf_shutdown() gets invoked before iavf_remove() the system will
> hang indefinitely because the adapter is already in state __IAVF_REMOVE.
> 
> Fix this by returning from iavf_remove() if the state is __IAVF_REMOVE,
> as we already went through iavf_shutdown().
> 
> Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
> Fixes: a8417330f8a5 ("iavf: Fix race condition between iavf_shutdown and iavf_remove")
> Reported-by: Marius Cornea <mcornea@redhat.com>
> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
> ---
> v2: return instead of breaking the while (1) loop
>     This avoids going through remove code twice and is how things worked
>     before a8417330f8a5.

Good catch. Indeed there was such a logic before that patch.

Thanks,
Michal

Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>

> 
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 3273aeb8fa67..ce7071e9af15 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -5066,6 +5066,11 @@ static void iavf_remove(struct pci_dev *pdev)
>  			mutex_unlock(&adapter->crit_lock);
>  			break;
>  		}
> +		/* Simply return if we already went through iavf_shutdown */
> +		if (adapter->state == __IAVF_REMOVE) {
> +			mutex_unlock(&adapter->crit_lock);
> +			return;
> +		}
>  
>  		mutex_unlock(&adapter->crit_lock);
>  		usleep_range(500, 1000);
> -- 
> 2.39.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
