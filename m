Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4067CDA5E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:31:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFE9282327;
	Wed, 18 Oct 2023 11:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFE9282327
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697628692;
	bh=3VEyAVhcC0kF+i+GG2ywGUe6r0LZ1evCKq/Atod4NwE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wMT/NjMBhgCiF5EW16cYaeEbmM4Fr+gQp2lJSzDA102zOpk3Z07gOSYrMQ2mMEGwG
	 fyqWMDrajBOQ1hNFXdvVXpKjxIhHWPghyFFdV4BRyO42aOLwzidL7X0rsh+ov3D9BZ
	 lqaxTgQApKBiLekO8mDjm6HcQgHTvHL0FigQMu+hpQkpskuzqX3bfGRl6SUeage1iG
	 ZxUovmfvtEJK9O2g2JTw1yoEWl7hlgplwvKKjnOEXyENU9U6h+bqz2bAi146QnO14M
	 sNCqSnND7inJ0j52oH6CRC/PyVm0vqiuFAWtFqv0oe1RSMljxlCvb2lgCbUm3K4+8y
	 WJ7e246xYbrng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id olh0CI975SWm; Wed, 18 Oct 2023 11:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62867822C7;
	Wed, 18 Oct 2023 11:31:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62867822C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 610641BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35A4640C1C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:31:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35A4640C1C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id actutd786RiS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:31:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 90F1F400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90F1F400F2
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="376365172"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="376365172"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 04:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="872995701"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="872995701"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 04:31:06 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 04:31:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 04:31:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 04:31:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=en0NvsRzCen61rxdsaFewyEMB932G8z35Kahpw1LidEc6gs39zKZ52fwP+l/uJ/JLapnxm3CwNqNw+bwPlZrIgAbUHN5z3LArpes1s+CbtvUqa5uE0u1XlrPF3TN4iLsKcfaTTY/XhrxyGRh0N3+h9FmleP9g/XmJTMOjCrob9eN0O74kWFg4zRKXMBmfyFyXSuMxf8vGFjqvx/Bv8UQZsKZIBgh0b5acm/k2aSv08yYcTF0cN+sx0sHtM+l75p8pIFe0p+ZBdFdBTuq0tsB7LkipgwWqk75Qedyrm0Saavq+kRt8VMCHvuoVqHU2ndYpKFdbQRv/0JgPTSvP5pwLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WfX2o22sJTt2k+dX0zvu5DYbKIEEMC8t790jq7NXC0g=;
 b=E9O5OYkWqyuJe2yqei53yYCmwRUrSiLhxUJHn/f6R9YOmIq+nFhtgOTM1SZ7HXxpVporUmwVqNbJEwmwfO9lrB1wXrduTsspMct6dxaux0+8RU8i4yGNSJV4O3D/k2V+RxKDqXPE6po9/++5MMiJbfhl96nQBXXUrojl1vtQoQGuceqi9a1j/amjKfkVQZCRY1TdGgTapDoANpsI0lj5wMLbWegLK7Pe1TpnMxPQkzpmFOTaMXQ7ZUYmAk+zkasnu7M45iSKD4UMAW1Lf5XerSlD6G5GoIds+qKMsxa8DeTYmF9P6d4Fuw305udJRdNopvq/Xo8Z+k1PT4Nqas6z0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 11:31:01 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 11:31:01 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, mschmidt
 <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/5] iavf: fix comments about
 old bit locks
Thread-Index: AQHZ+xBgH+KV03PyQEm315WcBWfHtrBC4m4AgAyUgqA=
Date: Wed, 18 Oct 2023 11:31:01 +0000
Message-ID: <BL0PR11MB3521EE38F45CB7379A3458408FD5A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-2-mschmidt@redhat.com>
 <MW4PR11MB5776D1848FDDA708EF2D7F5BFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB5776D1848FDDA708EF2D7F5BFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|BL1PR11MB5445:EE_
x-ms-office365-filtering-correlation-id: 2260270d-f49b-4ab6-297f-08dbcfcdb540
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w+frn2gFtnGfRgu4ESPLNU1+yo7lkNz3Q2YLW+x8Ec+M7ZXT+DHD6rjsLpbKW43p2v+2a1wSRrvaPgKrkckRoG+XFQB62awyFAAlikxrvQ6qoK6EyPwZy8IEC8xTVbHtMtU6U4RnukDc+0KJFwu1KlfdKyO9CEEaT5f/Umq2SXaqEakyvNZanbNRN/aKTed8dUKY/tQkWNgWqab0vUUivBw5cDJEKPYKRDuhtGHbwsSg1oPllrf4wVEbp86adEVeRhbdiXk/QYPZw1R0csrqdTQBSsfQgjOD/CP/J1tAv9LBcZ9knaRnX5w5nP/nuhZk/i8vUGpXiLAvwRmdvOLQPCrdec+DyblTzHjz4xnNTAIsG0N176fNDRzQhUrnbKjVc2wPFawoqOLItk8JDg7nCqbkhBwwW/WPO1mV94kQlv5KK+iZuyIem6IEh9nu46hI/dx0ES9yf388ctq0NeFkUCDKoWL0qo/gB8lZSvVoloDZK9hprb8j1f9Ppib+vjnXcr4vJRn+yITfS6D1+RVRRwHRAlkvj+iaotNqKZrEyr5+6oA9fIvtxCq2c1wvRBEEVY4qXp+JFNvW8EJRpgfZs/L7GKKjQjYx6VJRMNw1MoY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(86362001)(83380400001)(8936002)(8676002)(110136005)(966005)(71200400001)(66476007)(64756008)(107886003)(66556008)(66946007)(26005)(9686003)(66446008)(54906003)(76116006)(7696005)(38100700002)(478600001)(53546011)(122000001)(52536014)(316002)(38070700005)(5660300002)(82960400001)(4326008)(33656002)(2906002)(41300700001)(6506007)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bNMvnmiXCzSKJhCVG9gBxUj+r6ABeK1IY8sRqbU7Mz64IFoVzdQouh9m3G1F?=
 =?us-ascii?Q?0VqWvnp6OPT66uTQzd70cVmISlgbq8e35cM/kWpUoBs0Y1XqCd5mU/lsz4Ry?=
 =?us-ascii?Q?rnxRS3SmLJML63Axw68QgO7HeOotrrmD51feo+tLzmq+6Yt5RftBHSOEIH5O?=
 =?us-ascii?Q?qAS8KjQP5O1E8du0ufJ8Y20+nwATg9aqHzr9o+vBTGnyDmAymx6bRYDxoNBY?=
 =?us-ascii?Q?JT0orzB6KKzRbkxcL3fPmNFIou97Euvv4mmomKubTTajXOLD4LLulOqDhgvM?=
 =?us-ascii?Q?ehTqXFCEfvqJf3U/FZ5pJ5HymoEI4zknpLfgjk9zZc2cmlx214q7jsVnIe3q?=
 =?us-ascii?Q?7DVZc57V/LFK/0ojsKsdsg9PEO2Rv028DRlDXhAuKjVmC30u2i3/ajmlX+Zg?=
 =?us-ascii?Q?ePXRY3ZYZcICnseV1mJ5vr4fyXFP9fnf4Si4nKRK9m1wKuxdRyjVAoq3vdxU?=
 =?us-ascii?Q?BYcX7ZPpqqrtSFXAeAQJT6DydYXq6tKb10WF0saUNH7YtM5vwzgLtmY8wgkr?=
 =?us-ascii?Q?wI15Z5hkCuRT41K9HmysGriHIf2FbxHQqq3rH96/IMMRXra6gceZK4rk2dzE?=
 =?us-ascii?Q?CQCCRYiNl7eQP7saPXBRmGnRrMep8ICWCUANcNCt8A64lI8rbROCTCegZxx7?=
 =?us-ascii?Q?HWvIa3CzYrYHsgANb/tIRWTYawemOlqbGyrMKXYl1V2v3F/fnfZz2cuYMDCM?=
 =?us-ascii?Q?+x1QHjwrsOqpxLvSBS+ZI9ju4/eUaXW8P35Yj6hzlM1e6VC2/jDuyV/LqluS?=
 =?us-ascii?Q?/CTkUbxQbs9r+pUs0g6UqwJuzvCVvD7gSqSdoI0btE+GUpGr8Eo+J/eHco1c?=
 =?us-ascii?Q?dOQb84hAjiuPducqANTHLGIYFFRtvdM+fG6qiAdIrLJOcd04Fo+UZJCoa85T?=
 =?us-ascii?Q?Kg3CU1tomL/YXw3qn4eniVWNd+JUZsUs9JVaCOS1Z1R4YQjy67kI6r6qXcII?=
 =?us-ascii?Q?+tza8Dw0krsZ9nchex8RAukREd9U00+2/FUxsXPRUWMZJDz/0hTPSFsO90cy?=
 =?us-ascii?Q?+zzbZp2qEmCTJybBcdOq6w/wQ00I+5o6BODdWnmNmfzoh0UiMOdm9+XQizAD?=
 =?us-ascii?Q?0VUGoOP8uxon4xcwNI7foEAeDvRY+Vp+GtbsJqnUN5E65Lju0r/XYI6sSJIv?=
 =?us-ascii?Q?c8GSyp6aF4bEaTu4rjjFCluLgyorHPcQG0+nGTdpsLzG9f2Oq7O37lt+jIQb?=
 =?us-ascii?Q?MILmDRgJuEVHOrWn+jrn6nejbB6tk/XwZB8XymevL2USyH8+0OIv6DaSOJOn?=
 =?us-ascii?Q?inUdr5OSauyOJfsFu9rn3FuMwZxJ66eY9LfAge+4tyyOOSWn6Jig7t17rxVV?=
 =?us-ascii?Q?cNzcQG1JeS7pWa2nirm9hNc/AFDXSlQBP45Y1thH/O8/qPmUN6ugRWA3LXbY?=
 =?us-ascii?Q?7oUiZHK4gvnDq4eS4aizrR6XTQ0noiSFx2rYjFe7QsAXNS8Do4+z7bnk4oKv?=
 =?us-ascii?Q?X5GtQf31M70DM+RbdZF0ZRusOZ80IIEVtVGfmwHugmmfUiYg+hyDavYgrCYk?=
 =?us-ascii?Q?k+XMEbvl/5iDn7gpOvuotS6plrfstAJ81EDNeU+b2nUipSqj6a538+x0JGhD?=
 =?us-ascii?Q?HIXSqa47YNaYBscTZd8xpshXVc0i2rStEJ9xLmJhDQW5Lw7aj7IEgQ7mHhnd?=
 =?us-ascii?Q?CQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2260270d-f49b-4ab6-297f-08dbcfcdb540
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 11:31:01.8906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /sxyJE4V4y7+BD5Xxpd+3ePdaQ/aYPKnNJ86T7P39o6YcQSi8Ye8mK0gaExYiutl0NUhjJI+j/NAtEFwlINZXP8G4xlm1NHC3qDzTWsNIds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5445
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697628684; x=1729164684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8TQh3X7eVI74fBKD4kVXb1lnKqaVAuZtPcjW7LCNEYg=;
 b=DxszXcc1OAAp5HYq42dBg44F0Cg5YCNFoc243AeqQW6mL/z2rtTQgG3U
 kx28xPz8sxyrOfIoRJfF4c43uRPmnPLXf/5dljM1XLG22Gemj8/kC2LUS
 ZyVhzKT62kpEKIcK+nv2yAHinw70f2oNumposX1eR/GKhwkc5ghObijrF
 E7a0lJ7yC3FCDrCSOI61hGjQLLkvM/saKY65SU/L6Yd8L14jiZmf+ALIB
 dz8KYOsSfzqNlAA2Px0ZSHOU28GtjwsWjm2bsLwbooILZWdF0h2lvQQLA
 AZHzcbXn0NGO9eokK/bdmucFO8HemwJxnzf7xnlI/tsRaUPGTk9vXMQAf
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DxszXcc1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/5] iavf: fix comments about
 old bit locks
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Radoslaw Tyl <radoslawx.tyl@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Drewek, Wojciech
> Sent: Tuesday, October 10, 2023 1:24 PM
> To: mschmidt <mschmidt@redhat.com>; intel-wired-lan@lists.osuosl.org
> Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 1/5] iavf: fix comments about
> old bit locks
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Michal Schmidt
> > Sent: Tuesday, October 10, 2023 2:25 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> > <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > Subject: [Intel-wired-lan] [PATCH net-next 1/5] iavf: fix comments
> > about old bit locks
> >
> > Bit lock __IAVF_IN_CRITICAL_TASK does not exist anymore since commit
> > 5ac49f3c2702 ("iavf: use mutexes for locking of critical sections").
> > Adjust the comments accordingly.
> >
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> 
> Thanks for your contribution, Michal!
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 43c47c633162..98ecf5d5a2f2 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -1276,7 +1276,7 @@ static void iavf_configure(struct iavf_adapter
> > *adapter)
> >   * iavf_up_complete - Finish the last steps of bringing up a connection
> >   * @adapter: board private structure
> >   *
> > - * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
> > + * Expects to be called while holding crit_lock.
> >   **/
> >  static void iavf_up_complete(struct iavf_adapter *adapter)  { @@
> > -1400,7 +1400,7 @@ static void iavf_clear_adv_rss_conf(struct
> > iavf_adapter *adapter)
> >   * iavf_down - Shutdown the connection processing
> >   * @adapter: board private structure
> >   *
> > - * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
> > + * Expects to be called while holding crit_lock.
> >   **/
> >  void iavf_down(struct iavf_adapter *adapter)  {
> > --
> > 2.41.0
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
