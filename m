Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 470C0644298
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 12:55:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65EE741769;
	Tue,  6 Dec 2022 11:55:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65EE741769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670327750;
	bh=1o3qdePuwxf0nxRyMRiQz14Xntsx6XE78dXY8e2hHzs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vgrVI9ThgIAbwnZnlRFB/G+wKAJGSEiZ12GqL7+DVA9bidN0Kwx0vrq5WRaxUmn/g
	 5Y7fpnC6qMQdMOIPu8nN89FtQZV2ODJigEKSK2kqSZPD0NABIvHdU98CG/bmd0YCJd
	 RXrRkzJUK3nOgU6XxawITG6JHmrj30vpKU+RStnyd6PwyEkakQ4hKO0BY8QoTPLFGL
	 3dZBSLKf6VmqKPGsAP4H4Oa47oGg0OWeG4SFGD0khZj7n+XCPOzMmXbP7MabEDuI15
	 oQtePAsnFDGySd80Wm5yk2RrkvdfVD6kmev5EyRimedQAs9+E5Z3zwTziX8+uh+Xru
	 hl2IPrFDSLyIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_hgl2xbYn9M; Tue,  6 Dec 2022 11:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBDAA41765;
	Tue,  6 Dec 2022 11:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBDAA41765
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA42F1BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 11:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90F18813B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 11:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90F18813B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UwQTy1Lrpjhr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 11:55:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DDC9813B7
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DDC9813B7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 11:55:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="314248524"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="314248524"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 03:55:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="788460438"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="788460438"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2022 03:55:40 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 03:55:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 03:55:40 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 03:55:40 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 03:55:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJF7s4l0mxr/+2RcoRbY9dnjXi3BIpbdxQ8ftXEeBhGQ2kk5Skd9VfBgUxWNinCbPAziBFHrVJt65HMtr9KnjogSbW+mav+4yx0dXlsAFMq9vmHuQs9cHH0R+GwwOtQIw0CezgUZDOGncy1kpfpu1Cq1rs/Ai87BoEb2pQ+CLs+RlIRHHOiSOmVfpI3yQfpy+VTxtBlQ5pJpmcVDbk4+CCe8SoPibX71ZL/ptClzsNIcyKhMqdpFtHOk8Lgx+oTEXlGVKKYcqAmaAlXF9XU5NW0a7tJdng/v59yLaoL/SkatlgIqTbgkX5wnxyI2cboNA8mHiqdHQirkzHByX4RloA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bS9UCtIanDOWE+b5vQ1z9Y5Wac3jdKUTCWoL/raAdrU=;
 b=bGILhAUaQfSC4iosVBRZkxD5ZGeno9Zu8HOVeiqH+we/H9xl6gjDjGsZQNa8u7WRD+YfEuSAHloM8WJHHNUMXf6SqNeWE2Ia0rtTORvIN0Wn2NgbNQ49VyQ1dYeDe2LDVIWsSQIp9QnxSujdeTgdAfJUKWf8iEgfaf04ZaW4NWQgPekr5MGHWY5SWbZOjN4hGlPr/ofv7KPe+3MGhuBgh0iZZs9ll8A71+7rYAR7KGj833UeySI82Fzy7PvTLUq0w1mMr/gRqwFqy4bSe64hBjhAvOSDgJxQrFBMRWbc23RD3QMn7DaAt9GwKZl9uQrHrfVhlyPS5eImw2pnqbFftQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA1PR11MB6540.namprd11.prod.outlook.com (2603:10b6:208:3a0::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Tue, 6 Dec 2022 11:55:32 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6%5]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 11:55:32 +0000
Date: Tue, 6 Dec 2022 12:55:22 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <Y48tqsunsSnJn2tT@boxer>
References: <20221205123932.470119-1-mateusz.palczewski@intel.com>
Content-Disposition: inline
In-Reply-To: <20221205123932.470119-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: LO4P123CA0361.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18e::6) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA1PR11MB6540:EE_
X-MS-Office365-Filtering-Correlation-Id: 1290c511-1a36-44f5-b3e7-08dad780c752
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2gRiMuve92/dNSLJCB7URSwdexdnwEPvEhS/nVqkRtMvcohT2SPi2sqx4WBvlHS0dyRBajvdw1fodU7tbuyVoKWdB59otEdE4S9SVAxsW8+cKdx/Leb6R6NbODggF8PXddgoXpxECmZeIBud8LO4YkvH4jWXHPYDtxHSLxp/dOMuoZ0KhAPOpQpvrarKi573B8JRZ0G35h+Zj3kq6BJfPaetoWqFIIVRW2aKt3UIJDnDjpqNSEiNJ4zZOcbVxfg0UFd3VoD1yqVPUeJo8zi400Jx8ey3mdcOIZu3ThqaShTrEKYOBOlx5RSaOFTvbzWtq+LzgRrN42d5bRnWtsLSa3Rl9+Lba1Kllq5bSASRtqiYD4WGVogledo4+uoA92UdXnjYWlkFG+VwFNbc1yEUfEQCyInR4oOAqq0+B6Nt5a6A9ZAd4uCPSkbQ1MfmS3SuFK1AUq5Y8ZQYJH0B+E7LcS/q9sgnAU/6Ck2kQAX0VFqvJlPv8mHd8/nlDZ6Ctw380zjziJYqvk2wvHpNRluir4XFozqO84ujH4gxz+RlsuBwVnHItDAKF5qwDmt+5OyXw1KsGBX1uf4Y4WMrVuyqwBxlZBH0i9QAcIrLshFaKRx1m8O/ixmVtbVUGaxe3zdBw33gr975kDASzmKzr/e3axLigGUxBGTD7z2fpNhLCAc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(346002)(39860400002)(366004)(396003)(136003)(451199015)(8936002)(5660300002)(6862004)(44832011)(6506007)(186003)(83380400001)(2906002)(26005)(9686003)(6512007)(86362001)(966005)(6486002)(6636002)(38100700002)(82960400001)(33716001)(41300700001)(66476007)(107886003)(66946007)(4326008)(8676002)(66556008)(6666004)(316002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vuJxOkH7+x3eizceoyTd7oSWMjoMSCoPPqYAyK7zce+cx0icbOv9VB0gMDES?=
 =?us-ascii?Q?cr9LO48DyztIZAYw/qJu7gOX0UTYngcHLGRhEbszrEhS9mz3OF8CKKZ8D0va?=
 =?us-ascii?Q?2G6iLfYSR6DTmNS3bLJKpl64eG9Ys5xM12gPWzEk9ReA3lcVXKrT5uzih/kQ?=
 =?us-ascii?Q?fmX+BSxtWIk/2N27dQw9E3ekiFQCoe9+XX1+6vw+ho//EAy2TCe+LoVLVaW0?=
 =?us-ascii?Q?6Maj7qCsKIvyKfP9t8zBE/InMENW4wzgZ5sM6qHazNs8Xj3zwpd7c1xIDPC8?=
 =?us-ascii?Q?qjNGPefmS7Xn5hBtfAjcYMGcBGaRsdVE4fbsCWl8Qp0/Sh7411Y0iYLe8Qey?=
 =?us-ascii?Q?XOQXnN6StaeUaYMzcef0CD01ucckmUozo7PYA6IUhlrINneLPMeritHtuTTf?=
 =?us-ascii?Q?W65FtSbeEp4CsxGcxkXlHA3ctF0CYKh7KSQRxZ7hGFWU8jHRTGorkNYpfZ1V?=
 =?us-ascii?Q?JYj1asuSyHeCcB+D/my9TVuSEWnVsO6E9khOu01LezICTM+lZZN6gybcADhH?=
 =?us-ascii?Q?cmNk6fqV91N4MX7n5mOwRzeoTGCtPZFCTTlGrNmWPiBIy/bumYH++IE0WZOj?=
 =?us-ascii?Q?O4P/zNnxLmIbcCemjGwbGX/K4XEXoCqCXGVQtaC7zLY1Yng1hMuBfj5mI+n1?=
 =?us-ascii?Q?n8c4e9DC2OSnI8UqutDwXh+V1NEeHvCyUDRTvQgUVFhreHInue4qskmbA6A3?=
 =?us-ascii?Q?mE1Ouwd2X8Lbf4Oq2x2RtL7jX91GfMrR+7cUpB0javn5C5EcWuRUCH60CUMD?=
 =?us-ascii?Q?E506hVXO3SzUJfEvxS0dPF0Pppww/LTmFYKfMJdZNlWXwoSbKxWed/AubY2n?=
 =?us-ascii?Q?SqfIDAt322Pv22PEUFx/eEpSYC/LHpx9DNCTC512riNxH8u8dstZBbZqg/fl?=
 =?us-ascii?Q?vh4gU+r5LsPGgmg9AcKFaJ5oGibcEq/ZsUzsMm3pqMD+jV8eS6etGd8LMCXo?=
 =?us-ascii?Q?EjMXGiWRREOzsAVqg+8SuIwUyYvZFosyzFbfqTjjI3urZNz+ENPss3TYoh2q?=
 =?us-ascii?Q?1J+ZWb7IrgANuq/G3BfByXIjDGT/pFH2FSp+i69+0leRyfPONFVBbU+8gpyu?=
 =?us-ascii?Q?h25SqLHWqvxrfpWTYyDKCDSby6aqvdEU6EkilbYViUVwzT79BZhcgPUnYU3f?=
 =?us-ascii?Q?e2+O+Y0LmL3Xc4USTyt6HToOGT5qI6uItGGoPUvGpJmcl0XHvV2OT75cjF4M?=
 =?us-ascii?Q?wxkFhSFfA9SLrvT4QOkpQAtffTRcPG4rDk++XJEfn8FXwmvbOkkyt0vNc372?=
 =?us-ascii?Q?ORX30Gi7/pXx0I6n0ju6o2WiRtjZgxYrCWekM7JafweWlqbprI3BpHCbLg82?=
 =?us-ascii?Q?fUb7Ju4P7rzDNfZUXucp8iYni3vnNVKddBKkxCJQnD6axmJYHmR2enacPDNc?=
 =?us-ascii?Q?Lvzd3cDDZ+i9tjmoj4ipJUmtDwspDuM++U5WoorBqUAD7CFQaVsJWHsr091I?=
 =?us-ascii?Q?v9+1WIVIyhxtESNgQRVF4O9PVwYZlzLZzjaab9fAfB/hkmHN7erlJOEdrGkQ?=
 =?us-ascii?Q?eNT+Bs5kCYmWIPqDVqbPvYd/CKP41WywL1uPwImXFFvvkSLQzX/rU6DwcsxI?=
 =?us-ascii?Q?JfXahk4r72KZ2gcR4qajEx0WtIbRW0g+iM1/mxtEIVJKZo6pSfnDmrK6L3bh?=
 =?us-ascii?Q?QMT/Oi2swaBPVO7bdvMz9pc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1290c511-1a36-44f5-b3e7-08dad780c752
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 11:55:32.7324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iV3tBQofL5czYNdX4mT49Nwr5hvCWBbJiLZX6ffeVL0zwr8x6rk/bw3LdSV/gBDbnz/g/Ki7eAt2/e+XcHzp6Di4Wdhwjt2qFhrqvonN0zo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6540
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670327742; x=1701863742;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1RFS5JAz7uMakhxVfpNRpboX53VJb+NThimRjtUVfhU=;
 b=n7DMENaNC24CRJfN8nb+7ExXikv0WGg+Nbi7uPOdYdPoYQQDiWTMUQ9w
 o+OKJyin5IWjFFSIgWrgeNzKLBlawkriWnnjusivUBkTlMCoLt/jecWXj
 roKjBiTtdZkoC5nFpI42PM6fDDOs61KboTNpZPidT8GYZo+xF8ajYcHkr
 kxpHpcZ8iBhXJ/JzTDqR/VUxmxiRts/r7S1NaYtpYx8WftTjuKi3F93Rh
 oFMhqGVvBpC0q6GkA1/D1My6F5DD4SV4wOU1RG79GAjgqxoL6ZawgCKaP
 ZG2BW/s/X/BLoAWnfCYVwEdDu6fU/jVQk/RJYwh4dxOmcXHRq4RgtJMQ0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n7DMENaN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix the inability to
 attach XDP program on downed interface
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
Cc: intel-wired-lan@lists.osuosl.org, "Staszewski,
 BartoszX" <bartoszx.staszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 05, 2022 at 07:39:32AM -0500, Mateusz Palczewski wrote:
> From: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>
> 
> Whenever interface was down, function

Can you say explicitly that you were trying to load XDP prog on downed
iface?

> i40e_xdp was passing vsi->rx_buf_len field
> to i40e_xdp_setup() which was equal 0.
> i40e_open() calls i40e_vsi_configure_rx()
> which configures that field, but that only
> happens when interface is up. When it is
> down, i40e_open() is not being called, thus
> vsi->rx_buf_len is not set.

looks odd, can you set your editor to have 72 chars per line in the commit
msg? Also, would be good to include the mention that you were getting "MTU
too large to enable XDP" like you had in v1.

> 
> Solution for this is calculate buffer length
> in newly created function - i40e_calculate_vsi_rx_buf_len()
> that return actual buffer length. Buffer length is
> being calculated based on the same rules applied previously in
> i40e_vsi_configure_rx() function.

Contents of the patch looks ok to me, but still I would improve commit
msg. Would be good if you could take a look at ixgbe and ice if they have
similar issue - eazy commitz.

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> 
> Fixes: 613142b0bb88 ("i40e: Log error for oversized MTU on device")
> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
> Signed-off-by: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed commit title and message, this patch is only for a case of
>      fresh start so I believe there is no need for rx_buf_len clearance
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 42 +++++++++++++++------
>  1 file changed, 30 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b5dcd15ced36..2fec0cff282c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3693,6 +3693,30 @@ static int i40e_vsi_configure_tx(struct i40e_vsi *vsi)
>  	return err;
>  }
>  
> +/**
> + * i40e_calculate_vsi_rx_buf_len - Calculates buffer length
> + *
> + * @vsi: VSI to calculate rx_buf_len from
> + */
> +static u16 i40e_calculate_vsi_rx_buf_len(struct i40e_vsi *vsi)
> +{
> +	u16 ret;
> +
> +	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX)) {
> +		ret = I40E_RXBUFFER_2048;
> +#if (PAGE_SIZE < 8192)
> +	} else if (!I40E_2K_TOO_SMALL_WITH_PADDING &&
> +		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
> +		ret = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
> +#endif
> +	} else {
> +		ret = (PAGE_SIZE < 8192) ? I40E_RXBUFFER_3072 :
> +					   I40E_RXBUFFER_2048;
> +	}
> +
> +	return ret;
> +}
> +
>  /**
>   * i40e_vsi_configure_rx - Configure the VSI for Rx
>   * @vsi: the VSI being configured
> @@ -3704,20 +3728,14 @@ static int i40e_vsi_configure_rx(struct i40e_vsi *vsi)
>  	int err = 0;
>  	u16 i;
>  
> -	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX)) {
> -		vsi->max_frame = I40E_MAX_RXBUFFER;
> -		vsi->rx_buf_len = I40E_RXBUFFER_2048;
> +	vsi->max_frame = I40E_MAX_RXBUFFER;
> +	vsi->rx_buf_len = i40e_calculate_vsi_rx_buf_len(vsi);
> +
>  #if (PAGE_SIZE < 8192)
> -	} else if (!I40E_2K_TOO_SMALL_WITH_PADDING &&
> -		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
> +	if (vsi->netdev && !I40E_2K_TOO_SMALL_WITH_PADDING &&
> +	    vsi->netdev->mtu <= ETH_DATA_LEN)
>  		vsi->max_frame = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
> -		vsi->rx_buf_len = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
>  #endif
> -	} else {
> -		vsi->max_frame = I40E_MAX_RXBUFFER;
> -		vsi->rx_buf_len = (PAGE_SIZE < 8192) ? I40E_RXBUFFER_3072 :
> -						       I40E_RXBUFFER_2048;
> -	}
>  
>  	/* set up individual rings */
>  	for (i = 0; i < vsi->num_queue_pairs && !err; i++)
> @@ -13265,7 +13283,7 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
>  	int i;
>  
>  	/* Don't allow frames that span over multiple buffers */
> -	if (frame_size > vsi->rx_buf_len) {
> +	if (frame_size > i40e_calculate_vsi_rx_buf_len(vsi)) {
>  		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
>  		return -EINVAL;
>  	}
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
