Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C1D59BE08
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 13:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 781DF409FC;
	Mon, 22 Aug 2022 11:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 781DF409FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661166066;
	bh=VDo0RHr2OgmUV8Ccj5wLVET0f1G9IZChvKJ6lgv76ok=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZSLaHixBHtt4ZZNEkVHcmDVcYNbVPRarwjECsW3aiqW+pPGbJDg4MvglbkR8iXM/H
	 /3etQOIilb5AgfyAINEpprD7xF8qrumbm8kiZez9kBqgD1srQLQkj9IJ4dJPRuGIEy
	 R1myBNRZeqO6cc5R5NJyRT+6WQ1TRgbX4KmPPxBQR9uYPy6em67THKsedx3FzlmVRd
	 l2YgclLejCRne9MwvHSuhBCJaW0hxUMseUEPQSGm9ZeHl8U8LZthlnMHHKwgQZGDm8
	 5xv8GEjDicwQsRWrx/F3wt4evV+ojOEiqR6tX7S4XPIWtKKn9mDsbaTisKAmUDK7Ja
	 sX+faWLqMvNtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id omIjfzBaee97; Mon, 22 Aug 2022 11:01:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28DCB41516;
	Mon, 22 Aug 2022 11:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28DCB41516
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C7511BF95C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 11:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 353CC81470
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 11:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 353CC81470
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hUPg9BAwfJqm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 11:00:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71C8C81451
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71C8C81451
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 11:00:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="294172937"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="294172937"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 04:00:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="638153000"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 22 Aug 2022 04:00:55 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 04:00:55 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 04:00:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 04:00:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 04:00:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hwUuMCNen4gr0a58tUJUazdaPpvg8gCYfUTZQ2xkPicDTrQaiizCi/m1rg24GlIAeiyRnzhKXPNmwwFKG8Mx/Jjg/MwthspsavH+sHnSni1+XirKqbiNZpW5KPsIPAHrKXd7XjI0p87MhbmmnQ3O0vy0gLBtR64TSkCBk1NvToeSmMcLxvrYtBGkW+1thg0m5w3ipwHqtJ/GKNYBzALM5A3JJAlPO9aOcrPu68MS7nQBGCiHv27q2aaEGZGI5slFNRD/3BUVM0GXzdaL2XYUBxqq1JK9rlKd9BVbcV6oj/t2WzS7SS9jgVXeYLZ7iuSPWHhkRda2p+g6W/RnTPbB8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O2bl7ifY5EPNZ4UzwlsPFLovltu56UMR346fVVfKobI=;
 b=CulQZ6V+E5UcV0SAMbspmCiINM26Wd8sRkjJtU8EU67NBY6QpjrhdpwWgfHDTuf+m8kNkVbNokEF1E4YxOrWXZT4Cb4+wNUA30cgvfieaAzsblLP/WX1zAwHl4akbocKRUdu+34ja7ttOexZQw4GauvJEr9P9oBsYAdjxRBQpvxT+wKc/7d3hlu5UUg6CA5woJrTkauNSLLzOQ1pk8tWSkWgbkHCB8TXvjxrPbKAuMNZ+vOKNcR5cYUZ5/5sbqkPoivgB+T2vnC9MgVg+hCv74MxGlnXXODr3GVWY7qTU5uq1/VUhe+hTAaIJdLSvNwpZAMnANEFxFBy8GMtHqrrPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by MN2PR11MB4206.namprd11.prod.outlook.com (2603:10b6:208:188::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Mon, 22 Aug
 2022 11:00:53 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::c88:1401:a1d:4a45]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::c88:1401:a1d:4a45%7]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 11:00:53 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 3/3] ice: Implement devlink
 port split operations
Thread-Index: AQHYrYMqSEbABQvka06xfFEjQC44VK260bfw
Date: Mon, 22 Aug 2022 11:00:52 +0000
Message-ID: <BL0PR11MB33632174D8F0041A204F3268FC719@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20220811130535.1053828-1-anatolii.gerasymenko@intel.com>
 <20220811130535.1053828-4-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220811130535.1053828-4-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e7a15ab-5663-45ec-042c-08da842d94a6
x-ms-traffictypediagnostic: MN2PR11MB4206:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +puDq85AG+k2dowFNjQhsj+KbStc7Iuc9jl2Q+xsINreEiCAV+1imAixc9fSq3xl0SD0WYBgSRoOtNJ3eRHqJkJbuz6NAoA8Ms6T2xLgzMMS2jHTOt5417aTeIady01YxPTKG1MlYcMOA6tQFCnyZTgCTUWSge97NK6y2fnX3Ch/NgRQnmEXu9c21LZ7YKVwL+eQoQKhzqdPpOYYSl0ozvRBoZQdUQqbwBjsru1cu+ikGhsPmqlQ8Ka9YqP9ImOf2/4JuBOEfsQ9HngKxXIrAfW/wJgiaZ6bvlWQDuwsZrsQYUAfmXk4Fox3/QVvwOkiMULFdrIKKZgMWeMxjfR085sSDyIGOzSy83qKDrqzfj87LgswsyD92ecNAEg95HibWsrLbY0tlzr3fb1YgEkqA1VRFOnoUdrQvH2S5c9qI0gn5K6VMECiMlRmdys/FIrnkLvG5IdDhPtCi+j+nTpbG8hSmWDRwh9hiOdGA7MOHhZPCmCOrRVYoPLYVCVPsMW9xTL9a1EGp0WBI0FCZKBfe8qmbISq5FPa9V9NYd0z1QZ8ZfC4uRKD/eA8EHKhW9mAGpvG91HOd+LdHJxDqSUJQyxjFzB3JomlQgWC3WiTfBXETFOW5nixEGsrvX/3xfSvESjxEa33VzMp18yEnKK9VC7ULkoTjh8scvPBATljkOfIm83saTCg87ilXmtSl7wH4P+hbQuynbB7kGyxlaN7L185KwBp9ONHoaK8PGM+pu1wddEpICe1Hs34LQJBfEkzJZb7jzL6ksvxCxRCXPH5Sw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(346002)(136003)(39860400002)(396003)(66446008)(8676002)(4326008)(64756008)(38100700002)(110136005)(66556008)(316002)(54906003)(76116006)(66946007)(55016003)(5660300002)(8936002)(52536014)(2906002)(66476007)(122000001)(86362001)(33656002)(38070700005)(82960400001)(478600001)(53546011)(6506007)(7696005)(107886003)(71200400001)(186003)(83380400001)(26005)(9686003)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nFb1c6LPbK0OqoAQ2PmHJWEINS0vmf+/wV8JbtLWhu5Zm5Zslix+0u/oH1CG?=
 =?us-ascii?Q?1uu+olEXwt4WoD3jvGRYKN7s9Zm3uCDrHxFBpUaVK3B1YR6Q/ILwzQ7693p2?=
 =?us-ascii?Q?z6JZz+125SAuNUnM2V9Lm3Ivj6rv8mI2GI5OmyR68EI3v4aQ1HIy5SMyQI7L?=
 =?us-ascii?Q?l1SEceWVOgsoNlrTQBVi5+h/dSlOXRYcfXmlILiWxH6KzWLITLx6arXXT6AO?=
 =?us-ascii?Q?UTPwtqm+KVDwrg5/KDhW/NAEGPftrn8utG9m1It79OJv9JOjYOMXsfFxEe3s?=
 =?us-ascii?Q?krdY0ipAQmMQzlX/V5ZmdfmbBM8UDmPSamuqVLsllKKHzFRdsy1eqkBdGXs6?=
 =?us-ascii?Q?dVk8ciOCe0g1e2HvVWefj3vBtQPDpFubuFSB2/ygNTpSeau26NTO1oo79c0o?=
 =?us-ascii?Q?hFyzOM38HtHiRcQugEOJMEDOSTqPTGnmOBoGmXdrnP12MnWOpvzCqEJyHEhX?=
 =?us-ascii?Q?PkjHejJTqwMPMPuAGgXknrzkikjUXRdELJHjxzhMgZmIpnMcsuCLDyb+1Woe?=
 =?us-ascii?Q?jbDYCd83ybNRClpb5/CRIFyscRTcNedKXW1MMHROl2tDtB7IUTFlooyYtHgo?=
 =?us-ascii?Q?RfdRKMp4hckdedzWxgWvYOLoSMTv3ZrK3SfV0W6vhS0KmaHYON/ANS6iknRy?=
 =?us-ascii?Q?OmLr029nWB+XN9oqXySfxoru/FxIw5A77dJW63t7kRj276B39QMXzjBxEw76?=
 =?us-ascii?Q?QFqlMmcdbtsNxj/It/FmZpgQABGZFQM/9ZvQFpuEoradRLyuhPINN6e9ffDa?=
 =?us-ascii?Q?r7MDD6+XfoQ5a4z5KtmojShsIjlBdgY1j4nM6kVYTw5cl1E8jTjsS2EnrEgZ?=
 =?us-ascii?Q?Wb/gckG1Sk5FCQVAQ/2zTEOUg0lvgeM6unB451qzXtLJw1CtSIGV1gSkja+N?=
 =?us-ascii?Q?RrjcTPrpU44qakL65d5rNoiF9LKdKLtPoFnRpDn3k9gbdJBlpcjM4CF/Mguf?=
 =?us-ascii?Q?RDvAzs//g2wqG7ApZfX0BJtpYfLib9nH4+lp9kCLTQT91ewfB7HHhe6WAijn?=
 =?us-ascii?Q?fhBTuFy41nBsyZ6QxoLWr1FO0tSL/TIdqomhRwmT4MV9NW0AnbMAW/O3KiAV?=
 =?us-ascii?Q?UPde1t4M4EtvqIxRHxYFjHgRXu5h93qc8swHoL+JSNd/0pFKRf7KgdrXC3Ym?=
 =?us-ascii?Q?C/jjRv9BPu3mUtjqNXAu6nv806jSIN4RHtMAx5eUcNmE+NAnh9qtu7RVfvUY?=
 =?us-ascii?Q?a+9zHFgilkJU3hzcdMAZ/jGlXqpD0FMO9JnX1dtgtlEtou0vcHnaI9q4KJKS?=
 =?us-ascii?Q?J+YybpfYJJGo67huop0YMzGHMXjn1OpjhYrc9/fy4IDNxrAPo2iPec+z+xhq?=
 =?us-ascii?Q?tPiXxt74RXzQd3TNyHfUJxBbILjnTDhdEo3IXRmKnl67FZTx3FmlEjwvlrRU?=
 =?us-ascii?Q?cnnIbL6MCOEg6k7xffHSbCzF/pvCTgkEvrPQn0oP0TbocJQwBel8qlDP7FEV?=
 =?us-ascii?Q?92UkStOHMQIV9DXXHmFdjyQPLbBmL2cpWncO4eiBc17b6OnGJ9CWXFfM6ur0?=
 =?us-ascii?Q?l7H0DOSaHcBzCv+/Z62XTI54B7ZAigaVgy6pOIFr5pX5/2q6o7d4Y1fn5wUu?=
 =?us-ascii?Q?KlF9lCLlgW+QZuRrZn1DkDSBfe3kaHLHjvpQGEXt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7a15ab-5663-45ec-042c-08da842d94a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 11:00:52.8336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Z++u+Yr7TMrChjFLF4drBNCoOqOQJOP5fsaZzcNRtcqq4bIDWpH90J9KYkFxCx7GrbOsnMoTZImtM9KrZKbOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4206
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661166057; x=1692702057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wHEHbwe1gR/oCYcwuhDGFxAPQrHCLYNuML3C2LrZRhg=;
 b=Ab8RTLaNR/FOWGdMcnefciEKhajdCy8JLIuu2jz9JBms3s5AfLaXrNSE
 AP7XwMj7otIXdo+bG8UDpcc7JXN4O49YAXOw5eWD7IAEzaYIGxTHVwxU+
 kgtRDnf32Z329GUuOgDzgXUfqVmbLTn3A3GHCXWy7XsdD9iqr/bbQed/L
 sNP33ylnlK4CP8EtKfPA1bxr2P9JgGSbcQo1BO0TZtPsEcQHKoVf4tyeH
 skzs2sEvCexhKVzgS9OBCSrX0KzCEfoKlkEGD18nTtw0cy6OlGyLZBEO6
 Pn0vNmOF7t6OdbTaUi7C7AtacInnVHD8ueMm7nTjeejgAnDnB1i4UsSv0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ab8RTLaN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/3] ice: Implement
 devlink port split operations
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Thursday, August 11, 2022 6:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Gerasymenko,
> Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 3/3] ice: Implement devlink
> port split operations
> 
> Allow to configure port split options using the devlink port split interface.
> Support port splitting only for port 0, as the FW has a predefined set of
> available port split options for the whole device.
> 
> Add ice_devlink_port_options_print() function to print the table with all
> available FW port split options. It will be printed after each port split and
> unsplit command.
> 
> Add documentation for devlink port split interface usage for the ice driver.
> 
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst     |  36 +++
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 288 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h    |   2 +
>  3 files changed, 326 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
