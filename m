Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8566178EE21
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 15:09:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 131198186A;
	Thu, 31 Aug 2023 13:09:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 131198186A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693487380;
	bh=JE3qjtHwII3f+v1oNSO+U+m9SSutCd2c2A3jJ/GILtM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jwi+2OPadQDEhUL0iCnQN7nLhF+JIg5ki4/2wH8KqiEVxlHamBlBFbLw5NYJ9/6IX
	 RuuUR8atPtewIfFXehuS7jUdeljLOvSdF8w0udfJqu/Hz3lgWswaSjrvX26sahVh5n
	 ZKQ7+AhAFVyEf/Zf7C1R48pUT+CXwmj3ejMTtt94Oex+efRa2FdUrSYkueZjBpTPxj
	 6BZk1Xf+kwuAZM5Y0Kp3aR7y9Qk+HJR0v0osKJy1DmcDhbUZNMF6k7O2B59VKI+6Kz
	 5DW8Duy63FR8J+pUPX53RhyMJE347R1aRtAdYvyWTW0NesqH8zdQWeCVe53DThsBxP
	 Rs5S9WZPW4Jlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rng6UqGxXzQz; Thu, 31 Aug 2023 13:09:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D935C81764;
	Thu, 31 Aug 2023 13:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D935C81764
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 098841BF399
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 13:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF733401AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 13:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF733401AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eOy_j6IMq9c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 13:09:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2104D40160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 13:09:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2104D40160
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="375878858"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="375878858"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 06:09:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="689310265"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="689310265"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 06:09:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 06:09:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 06:09:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 06:09:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGcMc/ZQrz2sif9mclnAi9wQw7QMdQgrBuuwxXs5rQ57OSU2dUxqH1KdzjZx/BTxfSevnJKj23GgJAulYkN2Mz+86ghVn3G3a1v4WZfD42fuK0KaoGrLLYR0x1s6wzpUS9m82kFEhUY/Hx4sj1lV3hCYmD+5MLb9bW6b8fO7AivwrzqHyljPacry7EJQpM4e+ATiuMUM3febLATzxsrrRtUSoPcv46FtKoy++Fo7W3lS/256IJ8wPmMVKJwhWbiCf6UB4tRr9hxyWGlfGjNcrv38gC9oHSfZfHshPPWp8C9WFyOJ0gnFwbO7IN1LHqfLpZgG9WkdUZ7XM32Tt1Iruw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gh751Fh+TwXvCYzU7d6o1+NBtr2hPEJJuZEYcfTw/ec=;
 b=LmwlI6P4/jez9bzkBeazJxE8fp6i5ipzJRGe+ZMsDhxdNNpuQF24136J4lCCw1CUnuBkmg5Wjg9ia4MbWBI/0R+31ZMZyhO/au34UQvhI7FGzhIGsuMUzLCLRLOQK++YgonTjHUU8m8fN0XR7jKBd4k1pZDnpjwbH8MS/43xprCvFvWWfDnh18vWW4wmi5ng4YYmlI4e0xjH5YjfdmIT+ZWg/qWVIJ8Kd5r2/vt/tVeFN4OOR1TIWyJJTs7ty0p69XUn694I46X3OVm9hfpm+7gWtfG0FGoEdH/gRdEP3EvMt4PG9y3cQ9fr7KM1J0tChntoIy816t9njdV5VRl+1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.21; Thu, 31 Aug
 2023 13:09:26 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7d52:28c5:3dfd:e6fb]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7d52:28c5:3dfd:e6fb%4]) with mapi id 15.20.6699.035; Thu, 31 Aug 2023
 13:09:26 +0000
Date: Thu, 31 Aug 2023 15:08:52 +0200
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <ZPCQ5DNU8k8mfAct@baltimore>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com>
 <ZOZISCYNWEKqBotb@baltimore>
 <a9fee3a7-8c31-e048-32eb-ed82b8233aee@intel.com>
 <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
Content-Disposition: inline
In-Reply-To: <51ee86d8-5baa-4419-9419-bcf737229868@lunn.ch>
X-ClientProxiedBy: BE1P281CA0059.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:23::18) To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|SJ0PR11MB6696:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f2aed2e-a59e-4d26-1cbf-08dbaa238080
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /C9tcOf9fV7PZjXaq8sz+ZJZymzPWrY9X5YPkkImb2+RvknB7qsu9RGanHD6HtQiLbaMiLFPpOL4jxvF9SIpBF629ToqOHOXn4uGolSxcJLkp+PVF4+BbNp7NLJLOZ+4zHiSXpvI6UMlP/4AB7B4kJPA6qEMwAyyrI2lu6is2QJZ96cnYUOvirM+dBzsE8UDsAQCybM4YipM2vUtDNB5pYMb2RwUYzzJB2SoqhUbVVr2h1PvWwlw8sAakL020WFA55tllKGV8m8A07tFpQUXwY0pA52kzGZzw7vqJaJTZRJKk0JWmMEaMyrc4f/snCnpuJgaQF2tCfdH0vGb/s/im5pvR4khgMDzyz48otXL2y02GjziTLSWXbZQ9vwciLPU46e7abjpseWY6fx3wWYLx89f9yCN0UehdVpTCBa6Nd1cs8A42N09n/8Jtjps43rVbg2KYQDLFs9ke4N8btsla74hf5fwINV2rinVgSwLxbpt0wF/E7SRDWJOV61334ptrVj9qg9LPjGbFR6TvWdTuDow3tRJ128G4IwffTNIlG0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(376002)(346002)(39860400002)(136003)(396003)(186009)(1800799009)(451199024)(33716001)(41300700001)(38100700002)(966005)(26005)(66556008)(66476007)(66946007)(83380400001)(54906003)(316002)(6916009)(82960400001)(478600001)(6666004)(2906002)(5660300002)(86362001)(44832011)(9686003)(8936002)(6512007)(8676002)(6486002)(6506007)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uAj7254ByMZ/l+1TJCnIXESEbtZAk7hU/1abdQySAaf46xCb4yHZSxw3DJAJ?=
 =?us-ascii?Q?UThvv0g12cKUxJczvok99Hxjx675JQ01uyigI5hNQ6wcHuL0nrzNuv2d/5AM?=
 =?us-ascii?Q?TdlmLMIUkNT6k3nzlZFZz3z6XSyi4HFZXNiYz6jLXpnXs5dUEq9u+Jyrrnk0?=
 =?us-ascii?Q?hmOeatwucC4nXhQptUmbzaihEAho/Ret8+cIDV5Mzkn7Xh0To1iLCW1WJxHn?=
 =?us-ascii?Q?/svSXLZF1w/kpbAnTBmgq5Oqok9naTM49jRp94Lfh+rsF2A/0+OWXE8yZHIA?=
 =?us-ascii?Q?6iUzHcZdoKeZKzyo10/HjSMDlTkQqYBebBQoDY2O+u/ILiBKu5g3GSD1dt5F?=
 =?us-ascii?Q?HVlYeEZq72fuycxyxmKbFUpxtq8dFzRje2x9KRQNhnHeDo7Le3iLkZDzl+WI?=
 =?us-ascii?Q?ubW9Dfz5o+89h2je7cLory5ASg1OKO1iQ3qnJK4ybqH+7IebDe0aooKj1nY9?=
 =?us-ascii?Q?mDIT8pJctD79PHFIrAAAqnGYHV/sR1uVyrMNxjd4I3vQDyy0wW61AcR7pU1v?=
 =?us-ascii?Q?Orrn+HAS6fvqytSLsvb5ZAQk4N2mgrfPfMhL3KmfPPwb8OKCEKudFlsovLIF?=
 =?us-ascii?Q?Yhf2Fp9+VUsGIycXyi7oR20kD4K+eXvldQ2JES1zRhQzk1RWF+RheqP+WVgO?=
 =?us-ascii?Q?F+3PHuk2F8kMEhG7NuE+eDF2LCM1Sv4Z8G4eN2Sd6xSVDNrUKcpliwVt8mhs?=
 =?us-ascii?Q?031X5f6cEDx3dC+poW6y06wZNjzXRPnsAUYoin+owfY9c6S5jRmYc43SwSp6?=
 =?us-ascii?Q?02OAIF7BahOXYb82J2V5f2J7eei/L03+inFB0uG36jZyH2NZMPA7ioRFSPG7?=
 =?us-ascii?Q?St21eR/y72Gzv+8UW+Ur4LEqRivC6llzoFUPsDbSwdtNVhn/uH8c3ra6O72s?=
 =?us-ascii?Q?q0KmvIfCeUYAYMeh6YC2UDXVQAp8r4GM4TcXG6CPXdJ3z/FTc3SETD2SDvNV?=
 =?us-ascii?Q?9eNQoUhA4EhBXg9L6Qic9w4BCD7oezPi9XKC+QY2tCwaT5QSX5i1jKrvRPWt?=
 =?us-ascii?Q?unk8yC6V8qmi0ax2eZ7ifzH5C8Dni+2Nq+MLtntBsMFl3DKfPY+ROiEIEwdU?=
 =?us-ascii?Q?UAB7IL6tAQnntkxycR2ND7QkwTqWt9E0ELeHUoZRom4u7A5ejPdr1OtXLdm/?=
 =?us-ascii?Q?9fFjLuhBwQuzSm5dSPxi/Fkn8mSMislNlcbPbI90oRVGATMjtQYffhYfulDm?=
 =?us-ascii?Q?JuN644j72yTsOeTEKfrmM50MLRhVwq96laMMVFSgCYedzrNA6sNkT56xs/dX?=
 =?us-ascii?Q?wNlRFjyYyxBkVSBwUY7ohpvI4tSjAnRdw5Py1j4sdhFMZnXw3rH3X0lt6/jo?=
 =?us-ascii?Q?8YV4oWwpEJ8IA67Bp3Ua+ECUm4GpkesGJjXTVy1OoUSSDBLVPuF0zdnU4xoV?=
 =?us-ascii?Q?bEaUCcNwKUtpiyY54C133BIAqoTUzAKPWGx/T7XjcctMmdMwpaME3iPkdh9h?=
 =?us-ascii?Q?F909WrNjP8U+KsGMJmz14a6PFAITWpFklOyFjRJlwyTrLFfuHUWi6HV9+NAr?=
 =?us-ascii?Q?XiszgHcB6KtWpXu02GQSl7FdY5kdRD8/vz+CZsbx9U7/4y2OYJ1Wfol8liqC?=
 =?us-ascii?Q?DzOSEckV1vmRR0aVMPIU37LlaDFgFKzfP+9t/bsroWAou162B+KP8ouvnB0d?=
 =?us-ascii?Q?hA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f2aed2e-a59e-4d26-1cbf-08dbaa238080
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 13:09:26.2008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fVeweM8qQAuMsaPkyneJGNspB/yeh6mUScj5A5vttD4W2pOYrxrnJJ4nyNEHT4WU5Co1uFYAv2YNlew4Bv5mWBtaWL6yAw2oDUi1jXgDpk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693487372; x=1725023372;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jsCr94KN716izv1KlGjTIsPJYckMO4m256LIKlULzZk=;
 b=eeedHRpo2D699xu8zKNUfcBJLorW2Jji01JNtxL2pdBvvITAPYWxy1Cv
 lTP48GU9TbEGGClJj0tkiUHE0jsKfLgk2gmNOdkXt2TYA8BczajoroDCU
 Bv64kMDEOJRcwxAOthIuacfKpdL/rBp+HdCGTRm4cSjeeHPsHLLo+p6wE
 K5FQGf+x/ErlAOYuIAzqE5UDbHdRUVMTP2tQEp6Xx26vjguTJ1NEq8Ube
 AJoczIPdI5eTXqfoWF7ifVummskxBHK4DRlPr2VICVY06dRsnNAZx3iAf
 1mqHqnPCo/KIVkl0cXwdOpbOlrY21LOqdw3CeIOIv4OISdHcnAtkxQg38
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eeedHRpo
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

On Fri, Aug 25, 2023 at 03:47:20PM +0200, Andrew Lunn wrote:
> > Let me think how we could do that.
> > Andrew's idea is good. But most high-speed NICs, which have a standalone
> > management firmware for PHY, don't use phylib/phylink.
> > So in order to be able to unify all that, they should have ->supported
> > bitmap somewhere else. Not sure struct net_device is the best place...
> 
> I would probably keep it in the driver priv structure, and just pass
> it as needed. So long as you only need one or two values, i don't see
> the need for a shared structure.
> 
> > If I recall Phylink logics correctly (it's been a while since I last
> > time was working with my embedded project),
> > 
> > 1) in the NIC (MAC) driver, you initialize ->supported with *speeds* and
> >    stuff like duplex, no link modes;
> > 2) Phylink core sets the corresponding link mode bits;
> > 3) phylib core then clears the bits unsupported by the PHY IIRC
> 
> No, not really.
> 
> All i think you need is a low level helper. So don't worry too much
> about how phylink works, just implement that low level helper passing
> in values as needed, not phylib or phylink structure.
> 
> What i don't want is a second infrastructure to be built for those MAC
> drivers which don't use Linux to control the PHY. Either share a few
> helpers, or swap to phylink.
> 

Let me check if I understand correctly- is that what was sent with the
v3 [1] , with the initialization helper (ethtool_forced_speed_maps_init)
and the structure map in the ethtool code? Or do you have another helper
in mind?

[1] https://lore.kernel.org/netdev/20230823180633.2450617-5-pawel.chmielewski@intel.com/T/#m208153896dfd623da278427285d3bda25a74ef95
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
