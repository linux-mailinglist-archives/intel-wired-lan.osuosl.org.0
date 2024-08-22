Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C670095B3F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 13:35:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 829CA80A8B;
	Thu, 22 Aug 2024 11:34:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id klWsLmz3faVw; Thu, 22 Aug 2024 11:34:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AAFB80A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724326498;
	bh=7IqCwbJv3PB5LDno7414k262tWlj7dGz/milkRuNVF0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sb00uG2Mi4aF3CRbC4howgpft/GpZ/DY2Rln11yKA2qwx0OYBSm/C3azuiYvgPfbl
	 8TbXOvphtbLwITNJLq4deFPTa2CD9fe27eAC1yBqWQ9B8HfFYZXFiCfL5HchgrSj3o
	 64v5ng/Y54Fd5kk81A82gRuxcEq8eLQSyyjnEYUZf3AJ36JZR4e1iKD7U5Wby1s9CB
	 tFeKmMC2DZ3uQxFZCiufLGoPxXehp7fAhHNnwCw7Ke04qhVRPnSo8kJZ8YVyipeM5M
	 Zyhx1qr64nWOh2WYUZHKnngdyRRha/7RapIa04bFMZ2MQttHjsGDg7IS04YEbhSN9A
	 IGkiSNakh+SFw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AAFB80A8E;
	Thu, 22 Aug 2024 11:34:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22A641BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E67A40824
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:34:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sDBTToOZua8e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 11:34:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D55BD407C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D55BD407C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D55BD407C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:34:54 +0000 (UTC)
X-CSE-ConnectionGUID: gRG3+bl0Qb+S/NWdF05MkA==
X-CSE-MsgGUID: saTVFa2gTz+E3MJ1p1LjXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="26600024"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="26600024"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 04:34:54 -0700
X-CSE-ConnectionGUID: 5giMxGP2TaO91dp0cgYM4w==
X-CSE-MsgGUID: Jw+6/1EqTfqI95oZnl8kwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="92165878"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 04:34:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 04:34:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 04:34:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 04:34:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 04:34:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oFy1xwGAh2+28ijBFCiCueeQH9A2zzFYyaTccq3gOMgutk5H8uLW53ZHDQ0nhYHxi7ycy56ePuZK/Js+tPQ35DrAyJhw4NBrF/qsshf9fUWpH62T9qg9RThyE67g8GhKpV/mfXbn9OmEcFZMkmD2Txz99hM2XWBJJNsMudio/FWZo0WndE74y/bebybr4RX2wNTRVZp8SCyNRm7lMHreGFdJnoUsUpXckdNMS6qlMekn9bQuu6z7SmRK5K3qOnazpKIukNrweGUDbX2enN0Iq88B4mV0qjoCI8zPmVFleErU0O7blQWo8q807bYGgo54GzGKiBFLd4JlkPZ17TefgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7IqCwbJv3PB5LDno7414k262tWlj7dGz/milkRuNVF0=;
 b=fKgUkM/MVIulM0KCBvut/fD1tyoQePWm8djFah0BmAs9p1sl8C52nXB64B9lAcYQFFnRIuO5VSKFN00gxzQxiqXCyVQAG0K/qsKN622Kq72YVTYAN4HsAJbNKlq695coVKiAyMFDq84CBARUmTj5wljL39XRK3gsly3gl6q51aUiCwBxlBkkWB4JY6vGVqBWgj2UG6nhNP6Aa9UoUrujuQ4NtHljEJAICZtZLX/qiAHW6Du/iUaSizqoDETv3C8Jjytvid15uR91QZB539WkVh0BcKn5sKDiHYNwdixFeSNxUxV1yOdXCCwk3VDj5b1F8ZbPZrCP+qpgayqPcBb5Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 LV8PR11MB8583.namprd11.prod.outlook.com (2603:10b6:408:1ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 11:34:50 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 11:34:49 +0000
Date: Thu, 22 Aug 2024 13:34:33 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <ZsciSbsTeIRGc1dZ@boxer>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
 <20240819100606.15383-5-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240819100606.15383-5-larysa.zaremba@intel.com>
X-ClientProxiedBy: ZR0P278CA0062.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::13) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|LV8PR11MB8583:EE_
X-MS-Office365-Filtering-Correlation-Id: cf458f36-9f29-4032-3638-08dcc29e6e55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mmC5LM0Z9jUSvhbVZQRsIZBSqwl+PIkf1NM5tINkBN9anOW9vOtjzDLjn3t8?=
 =?us-ascii?Q?GMEQdwAVmAjVr16EydMeaKer2LJbS/fC6c2sMfjh4wLBox0xl2/9bnAEIdq7?=
 =?us-ascii?Q?+KqokGafv+vECR2tjJTdJAfoYGy95MOUBDpAmeRE3/3CzSOqfrQpw/s3MoQ7?=
 =?us-ascii?Q?z9eCSw+thGwVIWROX/3ShNhK16M/IbZzROucc1rN5iQOHrBRMPHMAzpOYuBi?=
 =?us-ascii?Q?D1gPcH6VDJSpL63qqlVlKzgqY6BhPMMVeQvSyLJjew2Z8xzb4D0T+tJun5w1?=
 =?us-ascii?Q?AqOJ3m01yP1FoJKSZFlXkKqxsRw3ss2VVIqaZLC92U1YS3M3lNT7tZ2L2mcl?=
 =?us-ascii?Q?U0zObF7ri1OKjS3JnifGdJQ9mhxS80FZLzRO67W/7J5aeQ4hz7lAULKFR4eI?=
 =?us-ascii?Q?R6cLBO/TylfYYFfo1xqQwSGOwNXOrGq44QUeXCPGMZxwDjDrhjkvdETFHtG6?=
 =?us-ascii?Q?0+zKiOiePIaYcfuglZBBkUNQ3IUTcjKacMVJBHF/HeFw3ijIUj1Qz0AyAyMK?=
 =?us-ascii?Q?h1a2lJ55CKzsSt8hkQJ1cmDsyhqbY6yEUopAyqKtyUxWY1VWL0OtMKd1rlYe?=
 =?us-ascii?Q?vsQ3WpfMELRx2kBPCOFySUhueQLprx5ve9Lu9SPebT1PlOTcygkr6rn7MYh+?=
 =?us-ascii?Q?D8ryYdMatfyc0Csz1xdOyo3aohsVFNz198vN7NGrXuWvwvvt/M0+wkvPyYnP?=
 =?us-ascii?Q?RE8spqXKkEFa5udoFDGMzCmfuqI5/Xp/eQ9SswrbGN/gc9lJYuJFB5P8IKdn?=
 =?us-ascii?Q?ils6tTJkTjNS9hQLI79qVTCwn+w2QGg+Q8vOPNQI/blD0HS8t3I2A7Qs87tR?=
 =?us-ascii?Q?6DYu+pc2kG7KhPxP8xPgMF7ckFeZxOLkdNeEQDw1XP+ahlGal/Vd1O+jJgPV?=
 =?us-ascii?Q?52IgX5O9oQFxYPKRAZCLQIiYpAtDH0tI9LWOzxhcH2aZcZRfOkSDmUHY1RPE?=
 =?us-ascii?Q?8nZ+TDysZWwmGvlPgP3oPed4gjXsXl5hqDl2CjRUnkh9BS68e/gLPnPhA6oK?=
 =?us-ascii?Q?4U2PIIRi4mxTILAv4POVAUolCUvFLmRe815gssXSGC0czcg1/bp3nvtshJkw?=
 =?us-ascii?Q?rzvAx904mhcMzc7IY9TRom0Im/wp1fudsj+DZ9cAxkonsH3juApNIXVL3PQe?=
 =?us-ascii?Q?+sWgkf5stv8YMcBsVXOXhcuBk1IUHqfSX1kYa6SyCX61sSeYXUqA4ywMvMl3?=
 =?us-ascii?Q?kEs6wP9wooBfoHYDF0VOkniRkjEfBtqHB/OzAlPpPraxhYU9yczBKwq3RMzt?=
 =?us-ascii?Q?1+tN6zAYtr+7EhmPAf5IWBLVnC29psMvWPaA32lrNgNCgBhuHnAm6oWrCcxi?=
 =?us-ascii?Q?ms585LGfLA8+zLaevOgqA4rMt8rY9rULMUIBLfmfs5XtsQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nZSz1rXdrYHgwPrJ8plFqwNunpSmsrkmqmpnXDKxhhZGhLIRz6K7D4usz2iI?=
 =?us-ascii?Q?tCKehSTT9eq8Sb5D6O5kE+7nvOyHEH9WxD3YVwiHS2/jTL5X2KB5/arPJL/I?=
 =?us-ascii?Q?Z6W15YKJ1jR1OAmTIv/n0bChnMHGb32BzFv41xqPo8BnYCySJ7aaYCbAWACS?=
 =?us-ascii?Q?ILFvnEcmrMepOK2AVdGhaDFbTUAwjyp01RJyTIZbDCaeDVP2UD8Wb8FCUfSC?=
 =?us-ascii?Q?4sjU9+3YjN1CVhhlZy9oLDkYfQsRXVazbpwgaS2YLwGAwtI9c85fe5L4IF6G?=
 =?us-ascii?Q?RNlel97zghTHzRG5zzL3QUFPsbjXs4Kaa5i7oy62A9TP9GVYj4x/PF3N6fcF?=
 =?us-ascii?Q?Mqo22LlLOO3eV7O44C584E3Vp9C5WRovehIhq3KPVuwN/JSJVvX0hQ3CCv7u?=
 =?us-ascii?Q?Dawsu7vUA1kgNXwVGqOIklPQfWAxqT7tjt978GtX33bbwifd0zbjKn9C2unC?=
 =?us-ascii?Q?9/Emz7uF84vso5R1bUlcVfwG5SAjZjHXhDJZBPAeXowMGON3b4Dn33gDLgCk?=
 =?us-ascii?Q?OMclTRVbnKHDQVZ/vNnhVv3dVIXeobVYAecneLqy77jiKd3J7FUygAHTo0Ug?=
 =?us-ascii?Q?4o0w6H7lVPC/EOu3GvCRfkTLcNxGHVhkHAfC59U0KolLYCE+GVA/Qmn1rHrm?=
 =?us-ascii?Q?yUv2Qqq3OncY6tE+seB0bF+FZwQob4rIkcj8jy281PogMcT2VAzRLgOOjLCj?=
 =?us-ascii?Q?w2PiTNgseJQioVHV/Kj/Kb/iol1a+a5OLHHHBW5bAUPCyyZCm4TzOEZMxXL1?=
 =?us-ascii?Q?w1Uuo7MP1eP/sXBaFXEWTk9cJoEoLnAD/4xFW4Fu00+PDTk6NkvVb+ORmc3R?=
 =?us-ascii?Q?WTN3Cxe248Xl/ahJhgEU1Mmqr3WkOxU0o78nCg3wa0L4jdLiyMpjCciRTTef?=
 =?us-ascii?Q?kNAROshAQYItFkozPZTkyXCe9/7vkZFJdVMdWcryvi6Fwiv9OEmzOYmoPEnP?=
 =?us-ascii?Q?QVrSTog3AC5OlyIQmFoREK+TtmOzXjf21ze0SLR81pRDlYpO2w/sMan60zQg?=
 =?us-ascii?Q?+hghUhkXEct7fbVfIhKycv6/ZK0IO6Om3t2JQfbJJSj9+2EUgwPJKwz//++/?=
 =?us-ascii?Q?otsqp+6WDtFClCwrxq31ycFRLLagc42HFMkXGIrGZdAcAsAOb5oLaHzY8CGM?=
 =?us-ascii?Q?5VO6wuL2InY7sfSN0l0f+HTNcYMFXkHMetQT4Gr+s9S2lnFqijZE4sN9PaQx?=
 =?us-ascii?Q?GHh0pHJjXvGp+T7zkP/K/tScKGaWee9leeOwM1UpW1Trk5H9p186CX/UhTLI?=
 =?us-ascii?Q?NShPgvXpOWZ6TaagfvKTcDFG0f2VbY0F7hlSQwqtxtuiZLoYgJbo7whuoWiE?=
 =?us-ascii?Q?HHX/MsKiJw28v7ACjJBeNuDFkuQ1cCykOXF7YHJfkRStHF+2YYSC/qmmyAGI?=
 =?us-ascii?Q?k+IcD8w7Im7SKBeSAw4+0bmb5u+jD5podmKiblbx8WKGj4R6cpgbJGwEDQBR?=
 =?us-ascii?Q?zlsAXUvxJe8BoYqPsMo70gWbw29H0YBW5VBKRr5X+eBU/PZ8fErgOO55yLLG?=
 =?us-ascii?Q?uzGtzUDrkK5bUDc5VXUAb+yOeT+EEgLiuktGePkUDuqQuLV86iAZmrf7r0uU?=
 =?us-ascii?Q?aZIQbM4fuZK7OtwP+SmtDPAkp4WuNHBLPDspRiceG/Yl+Ymsc6yAQjZwr5pk?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf458f36-9f29-4032-3638-08dcc29e6e55
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 11:34:49.2534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bpd3ESszMCxQ0RBmFFWntmHNRGchbVRZ/5Or1t+ukaOZrh0bsCAbzdfZSB2EKUk7qEW1ZAgzDj25DJJziQr5PU3yv+GJ1f6i9VJiy7M9DlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8583
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724326495; x=1755862495;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vwxpgYUGPbuGLjgEAOqXC0kfzDSn/wnOLXMbIPbjwdc=;
 b=IkGgbOhXxBeTIGdGrhOXB+bmI3xWIXyvgAbBbcENWtYfRkNYx0dY3Lh2
 6zrlc7Va6phHL7Ik+8ArLdvHqCbKVUmKNYMA1bncUX8925mNF+/ELhu94
 ZWLx4NmTqN+s2Tp3DoU2c8uzsE2MGtRmjrx491Xyi3sZLAfw35J6Ga1+i
 0zQ+BhkGYYuxBkl/9aFPsznFOT/KsN1t/2XYBUcWHdMXmjU8I5unTqaFx
 18+FYa4NafMNPnKKYkNflhpyeozZXuha4+lwGh79PF8wIOdSMtgS0J8IK
 XmNscGSCGci8tNq7Ca10mZZkAxs9QFGTxjEYHKzvR17aa5vrAGshkhi4j
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IkGgbOhX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 4/6] ice: check
 ICE_VSI_DOWN under rtnl_lock when preparing for reset
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 19, 2024 at 12:05:41PM +0200, Larysa Zaremba wrote:
> Consider the following scenario:
> 
> .ndo_bpf()		| ice_prepare_for_reset()		|
> ________________________|_______________________________________|
> rtnl_lock()		|					|
> ice_down()		|					|
> 			| test_bit(ICE_VSI_DOWN) - true		|
> 			| ice_dis_vsi() returns			|
> ice_up()		|					|
> 			| proceeds to rebuild a running VSI	|
> 
> .ndo_bpf() is not the only rtnl-locked callback that toggles the interface
> to apply new configuration. Another example is .set_channels().
> 
> To avoid the race condition above, act only after reading ICE_VSI_DOWN
> under rtnl_lock.
> 
> Fixes: 0f9d5027a749 ("ice: Refactor VSI allocation, deletion and rebuild flow")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index b72338974a60..94029e446b99 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2665,8 +2665,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
>   */
>  void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
>  {
> -	if (test_bit(ICE_VSI_DOWN, vsi->state))
> -		return;
> +	bool already_down = test_bit(ICE_VSI_DOWN, vsi->state);
>  
>  	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
>  
> @@ -2674,15 +2673,16 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
>  		if (netif_running(vsi->netdev)) {
>  			if (!locked)
>  				rtnl_lock();
> -
> -			ice_vsi_close(vsi);
> +			already_down = test_bit(ICE_VSI_DOWN, vsi->state);
> +			if (!already_down)
> +				ice_vsi_close(vsi);

ehh sorry for being sloppy reviewer. we still are testing ICE_VSI_DOWN in
ice_vsi_close(). wouldn't all of this be cleaner if we would bail out of
the called function when bit was already set?

>  
>  			if (!locked)
>  				rtnl_unlock();
> -		} else {
> +		} else if (!already_down) {
>  			ice_vsi_close(vsi);
>  		}
> -	} else if (vsi->type == ICE_VSI_CTRL) {
> +	} else if (vsi->type == ICE_VSI_CTRL && !already_down) {
>  		ice_vsi_close(vsi);
>  	}
>  }
> -- 
> 2.43.0
> 
