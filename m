Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4815791AA1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 17:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D54794081F;
	Mon,  4 Sep 2023 15:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D54794081F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693841336;
	bh=ycdbIT/4T/I39wrH9P+C5ilTNfrEz9g8mu0lrKJKb1M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a7b77csVU2Rw9kTS2OdoXx6tRJmTRiSZlGr+6zRB8qhCalkl6KP+y+6gadnO04ELL
	 A7f5gTTz0ozgziXNn5HWOBM+wDRVzXxerrgi5OIEwkZmpDPjbiUjvgg37Gx2d9BaPo
	 bEcxaoAvvQRW4kkZoil/JZlyiy8czzw4KO+QFJ/ihDCjI331DDdJtNWKqeBe+GU6zg
	 WfkfhC9kR2aXVffq28K36D4zAUvDaYhI+vnXarCigi0Eh3z12LmeE7sN/crHprWpsK
	 K22nmGwSln1fmqfNvrhXNXIpe0cLF149XG+k/JGqjg97zpeiWBiNXdIY1nw6DS81eJ
	 +rcb9Zviq57PA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B63VY93-DrIY; Mon,  4 Sep 2023 15:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D25540629;
	Mon,  4 Sep 2023 15:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D25540629
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6962E1BF369
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 15:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 407FB606BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 15:28:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 407FB606BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AECqrdy_am7Y for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 15:28:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D4A96062F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 15:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D4A96062F
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="379332644"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="379332644"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 08:28:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="830938811"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="830938811"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2023 08:28:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 08:28:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 4 Sep 2023 08:28:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 4 Sep 2023 08:28:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zv6i54I9tSoEYFQ37TsSD2cmeC2zoX5Ku/TicaHNpcLfB4oVcvfPIRldxR8JC/IA5xpqNcDixXTTZMuMoRqkgSKE7EZsYAZ693gQz89tiBKJzrcKSKuQNE7oTGf+S/6lIvHB8Yp3pEvusdPkkPWuIj2lBFQIXCNmuF1IDLEtt2+KT9p8eGAoqitVtUyN+dvGxXYiV3yFUHehKbQXk7bHDr3+1LwREtm2SwHzjQU0MtMf/O/KnGVJzhFywjsalbO/4l3r+jwTpBsKcchIaQ+CZl7KPDzqB6RoMMk6KbjABBnp2CxH1s/4nh7kRmGPqre0LHBeWs1aDETgm+5948gvHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGPZYdEY3z84eh7L4PPD0EcMOPD9EUIILkpHTzJ8YCg=;
 b=SnLjXRcnIop0FF/POfZxbzTJRJAb8PtHJO7jR9yg3dlpYFezq/70/pxe0hgQyDvJl9+9+uEgeBlPgKfo9xyUhNTYEDeYz5VVLa/jGLgzQ1Xvg64GaR7mFfD8nuPPNxcPhXX2C4v6B4ZkSDelYcukD7E2fr5QiTaM2iCpUZLhdBbG5L/uQgk7M9GOp/VA3s0cOKEo6ilCRHw1ODPPbvEddRkNiRwK+Q7fCUozc3g2ctg9sjwinSzhCbQJOWAOcn2cdTHe0aiu+BZ4UbSbf5TKmYD39YJKRFN7RbDr9Xh91SdzWCctt57SXudpT7NALsyZy0uT29gcffIKLkGXeRTADQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by BL3PR11MB6481.namprd11.prod.outlook.com (2603:10b6:208:3bc::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.32; Mon, 4 Sep
 2023 15:28:44 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7d52:28c5:3dfd:e6fb]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7d52:28c5:3dfd:e6fb%4]) with mapi id 15.20.6745.030; Mon, 4 Sep 2023
 15:28:44 +0000
Date: Mon, 4 Sep 2023 17:27:34 +0200
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <ZPX3ZqCV2tKh2zkH@baltimore>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
 <ZOZISCYNWEKqBotb@baltimore>
 <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
 <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
 <ZPCQ5DNU8k8mfAct@baltimore>
 <87ea2635-c0b3-4de4-bc65-cbc33a0d5814@lunn.ch>
Content-Disposition: inline
In-Reply-To: <87ea2635-c0b3-4de4-bc65-cbc33a0d5814@lunn.ch>
X-ClientProxiedBy: FR0P281CA0047.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::18) To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|BL3PR11MB6481:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fd27185-ebe1-425c-d675-08dbad5ba00e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wioTq9/1gXPLbQFmQMYE10PCZ85iqQ+8IcP0HrFY7QNim2PKl6m57gWvPjD4EtMAEXaOsUmiWY/TJCMjg2KxBpk1hgbpJl7megxleD2rcphyNvGRNlP/sE8Yg/P6xkd8I5d6fEtc7jnfyQKUbQOQ0HNUBflHMAZ0G1yKYevjPDiD6P35zc/s8ZQyKS/w+PAoSijSgj4xKKID3VCG0e30qwPq/fh5nen0CbqTB0T0KGIf+vU8l7KyehEFaFHdm+C0Tk989X1gsdlmP9SV/Yh1xxPKK/jP8/y601MfkRcAKCR+u5rKPDNl0NruJCc8PVPOHOvmFcQRob75U7JPrASD8bcc6gF1vji1Z79a1Ai7Zlre+GaPeyD6tTcUOB6ZyxtMrlVpOMS6ejcuAuVkGs0w5Yc40Y4vLla3+BlEvis3Tw6+iqh9FIaE9p3VWo5Ybx0ZZoy0jhQw/vCU8IDFV8VmwScR8KYJKvfD8ju0tfQsow+y0PATWpwtxzl8QuO+h6fSCGESLUas61hmdZYbzCV7RyMGFC9Pf3WcGMMU/fAk4JUcWm4m77VNOqBg3mS2XQ6H
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(39860400002)(396003)(136003)(366004)(346002)(186009)(1800799009)(451199024)(41300700001)(82960400001)(33716001)(38100700002)(6666004)(26005)(86362001)(478600001)(83380400001)(6512007)(9686003)(6506007)(6486002)(8676002)(66476007)(2906002)(66946007)(54906003)(6916009)(316002)(66556008)(4744005)(8936002)(5660300002)(44832011)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dVpIYRfELm5kjF5oDxzYGLFDnpyxIeL4BK9uW+x9s/OQXJ0btR3Ca1Krbo1H?=
 =?us-ascii?Q?y6RMNuunKm1hlcguLv6xwtVE+VkGMLu/I2nzYkVy3cz2gJuC5QpT0Pbt++k6?=
 =?us-ascii?Q?/o4NjZxnmkJrRo4xK7s5+lWClO61jxUQpp1Og5kg5SYn2qMr4Nb2B8GMFaSI?=
 =?us-ascii?Q?EP4Dn6Xho5DIRovaf05iG3FNyYPWp464rEKBdKeWUJDEUyQYoqB8e+8cc486?=
 =?us-ascii?Q?/KwnvzXpyI4j0iyKi8xIcbkI5pC5DGwMX+4inuZZ8eE3gvmrbHKeYyjUWxbo?=
 =?us-ascii?Q?b0yK+sefxtGEGieiP7Df1hcUon/41rNLaeFvAo2Ze90jfhNECe6Az5VMMsTQ?=
 =?us-ascii?Q?nxzwcTv1DXk9EnOjMiqcgsUda3Z8HQMwY6pP3d9JFXuXD4QtIEzQtGoG8Xjj?=
 =?us-ascii?Q?0GsSYTKP3blj5RTx/gTgvI2eF4GCwKYuELRO4L5LyshM4gYyfyYftWhNIakB?=
 =?us-ascii?Q?eBcPlQ5UgX/V60GRJxM5iTlEExANoBwvebIQM+FbjgcAU3HLKTeo8ReJw/V5?=
 =?us-ascii?Q?qHgz7dVDrxMBMppS3Mm7WXZfZMa2CNqWMF5HIvTzo3mAwjp2Zim0xOUd+BYA?=
 =?us-ascii?Q?DtXv+F1ZPD27NRJTp4tYEFKsNi6uhk3e1++TQa9nGuahC2wzjqakg+4o6evL?=
 =?us-ascii?Q?jAmh7vNEmMUoIqlR0spaKXnzwFHRjSIK8hhZs4bwSO3QYEsZOYTBPdNyDq22?=
 =?us-ascii?Q?8Aur8vKh0cOpZ2j+JFoRL3bgH0M/s59sY+7nw/ZLA1F8cwPmbH0Bcx21iefB?=
 =?us-ascii?Q?ANkqc2STBfDQMLbhEpdj/LZLy01hGTBI/TQ83td29fHGIO/vxTD3M9zgHoX2?=
 =?us-ascii?Q?eDbyyZgMmgbqQa97wBr7a8wbMoSfdVB4eiOK216+JvU7q+NRR68JSnUO7+xq?=
 =?us-ascii?Q?g0BPbrtK/s7OPWmcXsKpG5GhKITg4al0XBjGzkOlVGu1jSqaDlZ3Men9yHkn?=
 =?us-ascii?Q?Jz/br9+7Lpl22zNUyUVH2t7d7wC5Ox3cF979i8J1MndfiKtoHq2leZUjOK7Z?=
 =?us-ascii?Q?FBwgw0KJxi8QGfnH+HWC21yZUx+gLld2KsUJqblcL0yoVS9nDSWs583VKIeY?=
 =?us-ascii?Q?7kzIC4spG/yU4sz7XC17aCXKfde7yu+PgR+tc9H9LYLdHOwWnB8epZCPnApw?=
 =?us-ascii?Q?zZRMlQ8b03coO75YNGs7IcyW63uzn9S2COeUXYmQpeZtx9VWKR3TT6Qb7GBq?=
 =?us-ascii?Q?XARIlNocSbr4caFZu8mLF26MXSY3cgb6R0yMcBY4bB1zmGo4k99YHOweooeN?=
 =?us-ascii?Q?EeHGGunWrGn2Sxkz+7OOwKvr2U1yoYfuQzFxRbhnbzQ2SO2MAV9i77gPsfuN?=
 =?us-ascii?Q?/5S9PVa1RJOoznhH+EJC16a9e2qoY3tSneqTn5wMq1573SBQGcnlkgrOiXRG?=
 =?us-ascii?Q?UB1l4jahgvZxxCCGqM80bCInrLiHAKNd8196xGth4I97VkEJDdUEZvaQ/DEp?=
 =?us-ascii?Q?GbM8C7rIkinKzmrvxA05fixkjldjAJXmpgNY6mgZk/8gePZJEX/BzvLxXaIM?=
 =?us-ascii?Q?rK0owq5siidSssg/UMEqIF1fLR3JIMWouQV76mSVc7SWZ4KgT6gW/bGJSFVe?=
 =?us-ascii?Q?WJKkyrRl6PM88GldDZ69DJQ+bdBTaK+fzyLdxTnNn/gPbxvijiYvKyqyfm8X?=
 =?us-ascii?Q?kA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fd27185-ebe1-425c-d675-08dbad5ba00e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2023 15:28:44.3580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VdjHPHQrnQoLMubQyhRjmVyqmnUqYuEsqskv9dSc4q7pgDzf35l+B/choY9IuAvpP+JFvw1eOKgzfLknsBrDADNeyQPYyTcxqJCalKWPQRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6481
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693841328; x=1725377328;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WhLJobdmMnHaduupL3AJvdSbxs89cCqhWCFjY5+Pkp0=;
 b=emL55u9CS1cYkF68jw5YIR1/izEd84Evm0B2oXhbHTY0JkMGiucorzT1
 hZ4VRTe5sZQ0LrSUq5yUb1vtfMQWP3ijMDBu34eRwyz0R++G5yg++gL1h
 iM5QsH8YRUSmivzQgO5frKNCU8cp0daFRJpT0Cs3+z2cVU3BG2x/Snca5
 iQRu+c/SJErnGQ5HBWbPw8JF0iGO7QvZoO+ZvGmf/pEb98MKsAk77UhZ0
 uXNuMwJCnhI3LMArM3fRLYKSHP+VM8XVbb9pr6UcHfqcEOAr3IxBv0zpC
 lZEl+AYroJzFBBltEuq/3hbHV3YZNFit6j7JDa3YC/qtvLAW64vM7yYkZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=emL55u9C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: aelior@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "Greenwalt, Paul" <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Sep 03, 2023 at 04:00:57PM +0200, Andrew Lunn wrote:
> > Let me check if I understand correctly- is that what was sent with the
> > v3 [1] , with the initialization helper (ethtool_forced_speed_maps_init)
> > and the structure map in the ethtool code? Or do you have another helper
> > in mind?
> 
> Sorry for the late reply, been on vacation.
> 
> The main thing is you try to reuse the table:
> 
> static const struct phy_setting settings[] = {}
> 
> If you can build your helper on top of phy_lookup_setting() even
> better. You don't need a phy_device to use those.
> 
> 	Andrew

Thank you for the clarification, I'll write it and propose in the next version.
Most probably split this refactoring from the original series.

Pawel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
