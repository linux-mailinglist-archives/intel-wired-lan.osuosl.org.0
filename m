Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 895CC7C6F56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 15:34:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05E548234A;
	Thu, 12 Oct 2023 13:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05E548234A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697117680;
	bh=SH438nLpN0bQcradeorDd4GrZz6G06TXHvG+lj6jwjI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g8jY8rBe3qJIQDMPTrUYmNrHwMM3IlNsFMdNVek0cZeEPQgvmYgqiVyCZjlnCBtJS
	 nlgI/yrIYesR8YeKNsHsi8J5YvBXFSCI9q8G8eEDdnEgTKyEZGJ+dgKH95wbg4pbJD
	 kszv0SHCcn78SAMR0wD+5nAwm4QjrDIMr9b7u1G1FtilLcAdbP1VTO6O6q0O0itLGi
	 6oIl0XDNnpSwstloEtHakDuFvKomqLf+xY8yO9CTufJ+fYKxsjIyXkSHhhy29O5FAb
	 bjFc8RntYkSMCQKVU6rOPQpKB8IYB/zUwnfF0CGH1xLc7H7C9aVOSWt4ilrwEJZhvB
	 XBo0Pu6qugUHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zjXTi9dEYqeL; Thu, 12 Oct 2023 13:34:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4B52822CA;
	Thu, 12 Oct 2023 13:34:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4B52822CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D02331BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 13:34:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A49A960A6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 13:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A49A960A6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VTvEyO1Xwukq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 13:34:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7403460A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 13:34:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7403460A5A
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="365190866"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="365190866"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 06:34:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="898111389"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="898111389"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 06:32:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 06:34:26 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 06:34:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 06:34:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 06:34:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=muouekx5x986cZykmRHmS0runDnbPqudpLz/xlMB143XbETGR4rbe6TFh6kOaJB8X7IQ5/DewqO2usuiLLTy6TNsHr30t6Tb5KDT3MNZpn3AcWVvUO3q99A/EUtHuBizxXSTKsLynn3Kve46npZChxVDXStElhX7Dj5XRKFPRF1DknB8glp6rfPm1Lh7oLHquvOT1lkjR9MycbS2yhRhYqGBTiTv4aurHdEwJcBn9SzP/ePduEZ4T/WUZC0poFCWl9uDe6T1nSZQt6TNqjyDnKpRz3SzKSdnvR5l2oXF011CPP86vqnc3zma3SLoR2goe02FUo+3iSjuQYiIq6tP4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWTmbk1TzcT4Bx8yGOSIiwmeIMb/2tWlQoizFIYRQoM=;
 b=HfgJYOgrW6bcxaeSDpvYJEYgz/1aUdw1tXI2EaWSmSCThlShgwQriNCm6V6vHCy0MGn3Lvg5XXBXDryM0pNNCKlzdni9bq9TMSYmBv7TDqsAd3HV6FL9TT651bqIkskCgpeQbItaOBYD75a2IFYaOX8gyEuCpszq8hK4LrVTIaFvdx+BLdyDgWoWnbnxTQjSyFtMSlq5j+ymlFUTrLURoE7AnUTWhXaWlMRpYb7aPhp8SgIQDkXcG4EfVvlrxmgK4q330Wgacwl3UtT3VfnhWb/vkSanMmVy+p1DkEsz/B4XEgL6jFilvPEWWi6FpbQHt5DQ8cY72CCvVYuhqzIVag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by PH7PR11MB8454.namprd11.prod.outlook.com (2603:10b6:510:30c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Thu, 12 Oct
 2023 13:34:23 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::d99f:f0a0:a56b:925c]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::d99f:f0a0:a56b:925c%2]) with mapi id 15.20.6863.032; Thu, 12 Oct 2023
 13:34:23 +0000
Date: Thu, 12 Oct 2023 15:33:15 +0200
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZSf1m7uIYGuF35a8@baltimore>
References: <20231011131348.435353-1-pawel.chmielewski@intel.com>
 <20231011131348.435353-2-pawel.chmielewski@intel.com>
 <ZSa7Y9gwC8qCBv2r@nanopsycho>
Content-Disposition: inline
In-Reply-To: <ZSa7Y9gwC8qCBv2r@nanopsycho>
X-ClientProxiedBy: FR0P281CA0120.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::10) To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|PH7PR11MB8454:EE_
X-MS-Office365-Filtering-Correlation-Id: b223c759-814a-4fb5-ca3e-08dbcb27f230
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B/HYSz99k9Ti5h/Pm1/wd0mHZiS+8P7KmzaKhCyboYQkiN1g0f2eJOK25RVqATqlYwL7uEhoFtvenCGnl4g3+mtOVFO2dWKcRmTWxyRu6cNyfWBa7I49SLHMYV3QxF604aHeECrpD5qas8hhO1xMcVqrTRRLLt2d97BFBQCtprv/XHDN93cIYxyj+T1mSvHr5SvjL3tf5NkhDNmCzZkhghy5KaKOwr6Br1hn4jNErZL2rpOJHYsTJEk88zKDYyxBecEtphDSNd59OtGVUSgBiPYA9JIJt9+ZhK8eFq4xFF+RaMq3mL51AxWIFFKIPyawQ4kCvI70m3YP4Yrqvzaugi4NtVwKh1gOuIebHBZtnW664/dS4pXdgGmnNPreMm9rfB2oBhLeq0yUEkk4K0u3GUiKhJUWgEk1N7z4HhmZkfIQTLRt2SOzyjInbSG1Qx1U7skaiga0ga9NxEd8ZUo/wq9JL8RtksbR7+ZpOmjNPjjHiYjFF8B1vNSPfe3ICT6/xiWqNNA2TPJzjVRtocBRqfeCwru0mCVY/jLfwHR7hexGTKCvdyNZ+zb+jHcAruYV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(396003)(376002)(136003)(346002)(39860400002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(7416002)(6506007)(6666004)(86362001)(33716001)(6512007)(4744005)(9686003)(2906002)(6486002)(44832011)(41300700001)(5660300002)(478600001)(38100700002)(26005)(8676002)(8936002)(4326008)(66476007)(54906003)(66556008)(6916009)(66946007)(316002)(107886003)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xmlfnQXdzUNDWRYpXSgaaLypB4xXc9uo54ZUWG1ntNuEG1aOwBq8+bO9KyRW?=
 =?us-ascii?Q?9gVP3xYaSRqxTtS4s0cC5zdNeD9gfywk4YoHVornjn7gC2i9yRFL4HOWVWAB?=
 =?us-ascii?Q?GUn3vVWgREvRbg23wHv3vWca1ta1zy0HH2iSMjm15sxTcjQvyeeIuC8OF6W8?=
 =?us-ascii?Q?dpoq6RMJh3y251hSgFNy7SHoV/8/pQlFFOu/8/ubGo1SQiY5kJZ/2CRWxzCI?=
 =?us-ascii?Q?+OaysnFKurHDbJW7WdRnGhFt719V9+gGzLE5YWHsymwLzFJuWkD3b3BrWzGO?=
 =?us-ascii?Q?7mi3xPiB4Ptai3lwNtb99X2DRORLT8MLkR4FajnuQhnlRWYkmYFA3YR1FcF8?=
 =?us-ascii?Q?q/6SccznQt2VzFcl1BwTF7NDUBkHaessvgvAKQ1NZT2oVSeo67xVKSZR1Fdt?=
 =?us-ascii?Q?QbTvesD7XBaCJ2g/0EkWFNCdnXueqkuLzFfbaEy7vK8p7pTscfpHu81XFtNk?=
 =?us-ascii?Q?2h7s9lnOobwYERpqG/MRUBC+k1hY3jFY8iuV71uBN0zTnr40UXE2ylG5o+et?=
 =?us-ascii?Q?Pu2wh2/PKejB44Ph3oGdBalcb4QFJ8ncVwlhvI3wpdewICkE5VwDfeD18Yhz?=
 =?us-ascii?Q?mfZ+u8/UUF6THOvWaaLRRTmUzNkK7+FXMI9BquiMgfHEjwfhCq3F5wuNp10y?=
 =?us-ascii?Q?lsIDzKZOc7MJn7uTQCYd8hrir1psFu7Smw1vLCifnN97eYcRhHHTULmv7Jkt?=
 =?us-ascii?Q?FdVypp4reQ6S1T6JaFqSi6UVrAXqnPZv1mrqiRFOZ1RhvtafR7OnjLxw77RR?=
 =?us-ascii?Q?C/JiAgG2JeSPWE3nYtC22YhuiL4dEdWL0vMCDDFdvzoYnK6hKFDQGPK4uLdx?=
 =?us-ascii?Q?+kWWjTTM3BCRMXv+5uNoUpCvsPN7utvbkwYTPfP/+H7cYCfthBcZi0xXRN1m?=
 =?us-ascii?Q?C79VPnr2lUMIdyEyX3VW41UYF0lTsUYNURH3Y8kpPZPCDsWYQp1UQyN8IaA3?=
 =?us-ascii?Q?/u5WhskO+Vkd61R3lFbzK6iJ8JS4/brUHRcerZ1ehto/iOO5YMz1cpGALPtL?=
 =?us-ascii?Q?6ixa9VrodIRL8Jnuz0/e4A04yIfs5UoCMudX/HOGJXgyGMrpeiT8BGZxhI29?=
 =?us-ascii?Q?jCNWWwU3uXPH8Yvjc8OTVvACZaTPruva9rA7EDl7Plt4U14wefyMrfl6gDUB?=
 =?us-ascii?Q?oxhQAU98VAjJtZEm5Zjbb05ZjE3Yq0WZqeAU/xkwvoWrEFNOzdUX5VUDi8wu?=
 =?us-ascii?Q?iHWu7ty9ebUbL3oaXwiBSkudJikYOMMAXMrw+57nqa2nvufZXNPqloF3QFnx?=
 =?us-ascii?Q?NkFYCCgAhQh9MLRN2W7DOfgTIQ9uYfZ5AnqmI9g2nUUtTkyB6YKLigf+aGYo?=
 =?us-ascii?Q?ETOOksOG0sbcZ0nDDfM/4BAdOswlW3I8A+HW+Raf+wrTFVo/MLZndtt71pAI?=
 =?us-ascii?Q?6PNP4ZZALqSRvnjAjywFCzBRxc5qHKzKYcU7YGoNYMkQ9A0d2kL3jnTHWJdU?=
 =?us-ascii?Q?7LaOeGVwX3osNcPnWQhyIsukWwchnLCzFnqlWcurN6frfdsk9A5nnV9XOTVy?=
 =?us-ascii?Q?9Va3rmvNFxVN85wFTOEBRw2wbs3+4+I2hHxzqC/utF+Sy7aXsqu54FgOwdLQ?=
 =?us-ascii?Q?NTgNmCehS7U+/65CJDhxnby9a9evXdhFyYxVob1THnDFj0GvyZQ/DSo+VHD4?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b223c759-814a-4fb5-ca3e-08dbcb27f230
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 13:34:23.1961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e6iVzUA3Q5LcnfHGUfH/767bPGKpkUYQKk/rZieFYDO0N4xF1uzl4NZIDitOy6HfmP/4RdpJjbietpIiEFhSvPKV9vR4mVRHqFF37TxBiVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697117669; x=1728653669;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ENQDimDpFG19j54rptHH3whN7lKTywd57dxnVfMLunU=;
 b=TU8qn9oVuvtKwctOzv1UxOuYdd3s1woCgBwUTdP1+jCV9Noxzg+ithEq
 AjYCoCWUI3m5UoM6hapDKdGlZDYywFLginBbX2IV52Q+oDLrx8pB/3LUH
 XAoiACux8XBfY2M90LkgAU1j/omgOFUjIUCt/DglSyObAY/RZB+JVZIQQ
 rchEHYixMNumJ6bFhiq2f1DafoHjjL5LqjJedmYmvWnMvUswb1oBkVbC4
 OoxZK0mogQ86td1LcidHk0YqAOfkExXRBLm1K+AVXZ2i8vAhQwxBElaKs
 elSxMNbzAZZxEmN1Tcvd+0Lv2EfXjJIb28ehhArUypUJUF2qi94sjnjwp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TU8qn9oV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] ethtool: Add forced
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, jdamato@fastly.com, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, Paul Greenwalt <paul.greenwalt@intel.com>,
 horms@kernel.org, vladimir.oltean@nxp.com,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> >diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
> 
> Why you put this into ioctl.c?
> 
> Can't this be put into include/linux/linkmode.h as a static helper as
> well?

I'm a little bit confused, include/linux/linkmode.h doesn't contain
similar ethtool helpers.. Did you maybe meant ethtool.h?
 
> 
> >index 0b0ce4f81c01..34507691fc9d 100644
> >--- a/net/ethtool/ioctl.c
> >+++ b/net/ethtool/ioctl.c
> >@@ -3388,3 +3388,16 @@ void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
> > 	kfree(flow);
> > }
> > EXPORT_SYMBOL(ethtool_rx_flow_rule_destroy);
> >+
> >+void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
> >+				    u32 size)
> >+{
> >+	for (u32 i = 0; i < size; i++) {
> >+		struct ethtool_forced_speed_map *map = &maps[i];
> >+
> >+		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
> >+		map->cap_arr = NULL;
> >+		map->arr_size = 0;
> >+	}
> >+}
> >+EXPORT_SYMBOL(ethtool_forced_speed_maps_init);
> >-- 
> >2.37.3
> >
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
