Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA08E7D7670
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 23:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A03F40568;
	Wed, 25 Oct 2023 21:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A03F40568
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698268330;
	bh=8ggyqBKHBB/ulqkZKhOvNi7NNp1moRf2OpxyV7hM7xI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fumyLxBhdia7Y0PR7DQkQizbZ5lSgvYjpNdWMcM6blWFxEiCC2kL/hjph1YfiPiCl
	 13gQI5+rxGVLhAzwBywNy86tbatR6V9McFqy5eBWlgb5FgGLE6ksdPRykskzfY+aYq
	 kWdQjxSklLpVVJJBWAMrpOtM9I/qV8b066fONk88Qp9vHgGZjKkWjSkQ4TtBBr9AMY
	 hnu5nYUtMKKlZm5XXhIVkG5YAvwEQ4cCScnptNprMRiTnqs2EfHY6wjIqwjXwsommM
	 /R4Cxb2o+yJEJzsJoxFh1X6OfXKTmADKVEbIjdHABEzJ6JLTqGFl+FPnT56nej0Ik9
	 UTKtRgl+thaLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Lr84hLXBvgk; Wed, 25 Oct 2023 21:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C87640556;
	Wed, 25 Oct 2023 21:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C87640556
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8ECF31BF295
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 657B2820F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 657B2820F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SVkGcrGTvjRU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 21:12:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 996C9820F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 996C9820F7
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="377769750"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="377769750"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 14:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="788253656"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="788253656"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 14:12:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 14:12:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 14:12:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 14:12:00 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 14:12:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PeWuy7PSvtDqsApbdp4dQyKuQPlXqu3+4VEIxDcBzYfGgwJXOAC+IuqOKthFQTcUXHaQlo+fR5QIQhgpXBlRPZgUVWFVa6ZIM3ofIsSEOMCoqKbROwzf63VXMcswbHJU5hwmngTx2HloAZLcWY3mS60XKJnXPPvXU/SXCn+q3FzOEylMZ3CM9cAy26SUk2Tao903mbZ0hDkCawflGjJT33nyf6DpyxOWktK/N9Zh67iGXk5oidCjV+Dx5Qiylg7QWJLfATdkvYJsSG3URB1h3eqYuocSn1hlHXVwvMjSox1aJBUVpPxQ5cLoxZocexuzAw5PrFDG6BgtK765GVJvCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpnqDTcMWIsiT8+sWBhX/urF83hYbHuL4o5oOO9xYWs=;
 b=djt7WfLMAIY2+gcebfLjzlhtDEYqM0hH5xc0yBJ5aeXjQ5a0y2WbF3MHlZBU35LQUgsAuAbiROmohJtPbYR8B04UFsTQirfngVCydGjrrdSsMSeyfRyucx+4G8PhevOdWMfLAVk3Z5HTHSEBG3HH0HRL2a7uzupLmQ/w4km8GLtJOpLCUhwS4QheGe2q6UZvFOdEgdlvui/bZVdNKCSBIHRrnBpLvRtCkgBGSWWenmu7j8SCi42u8/zfZKjRecH4NE6k7DHthB401yVt//CdKoz9DR651yuicCQUxDlarireiIYuL9ohlzBWLA0tC8pUgJz+8HeHYBaOeImilXnXAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4218.namprd11.prod.outlook.com (2603:10b6:5:201::15)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Wed, 25 Oct
 2023 21:11:58 +0000
Received: from DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1c69:1b8b:5fd7:2e93]) by DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1c69:1b8b:5fd7:2e93%3]) with mapi id 15.20.6907.032; Wed, 25 Oct 2023
 21:11:58 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 1/6] ice: Add E830 device
 IDs, MAC type and registers
Thread-Index: AQHaAhpdYGsXO3GNgk6q5D6TSsldz7BbC3Pw
Date: Wed, 25 Oct 2023 21:11:58 +0000
Message-ID: <DM6PR11MB4218FA73D2FA6567EC6B168482DEA@DM6PR11MB4218.namprd11.prod.outlook.com>
References: <20231018231643.2356-1-paul.greenwalt@intel.com>
 <20231018231643.2356-2-paul.greenwalt@intel.com>
In-Reply-To: <20231018231643.2356-2-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4218:EE_|BL1PR11MB5256:EE_
x-ms-office365-filtering-correlation-id: 9186e961-31c7-4377-c26b-08dbd59f061a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KC05TZXvrddYDHwi0m2vZZFQy8+dQFfQ/+xyFrZk2WO+D14mP147zpu4BOwII49LCn/T5cpdJHZ/CU9pjd21cshlObDejkFFY8psygn1e4J7p2Nd6OhMtMwThk32NgJp4SXFGtMkPCRGmKLU0K3PmatLR3/96RjlbdTlIbSJpn3GG+PRRkpe8xe8V5upzgb/xy9AKQsssXcHcEbc4618ehXIVvH3zG/6A0Cs3x/AjfQJ27oPrfZDuc34AqDxiUM89QRKKK0jHwCkj+xQbKQwHIP0OT/XxsFuyIM1uWcl0wwIy2FWcmcK5h1uTK1NCcPDPUX0P8AD2wkGgh2otjwtPtt3Pzx4NdKeHc4v7soGT7Ce4RiPNrdXAqJ9vC+x1UWAsi0CixByE/hFypWPp2nOL70hFOnmI8xTwffTYBSO2bwTsgm7phJ04Aym5qlU8a0rGadsa6/x5GL3S24e8Br4OwY4OyCwebEGeY/zFzoQMgcZfcmSTnzNSgjd0p4Ce9T9Kzf4FPZUmgLLOCxFzYrxYjCEoPfF85BNlIvheytdLCbydsF0S4aNiRtw250fSyitqW2B0396AlH2VVsK8XF6WyqPDHLthqF7qOBNh1T2iTBj4R1TfovigEXx/d2RQ9pZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4218.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38070700009)(2906002)(53546011)(55016003)(478600001)(5660300002)(38100700002)(4326008)(8936002)(8676002)(41300700001)(66446008)(52536014)(66476007)(33656002)(66946007)(6506007)(86362001)(54906003)(71200400001)(110136005)(26005)(7696005)(9686003)(66556008)(107886003)(76116006)(82960400001)(122000001)(64756008)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GBhaqbGIZYw4txVLEqldtPm40J12Ktoz+emnVfXVMSdIqQGCGozsm5FbR/J2?=
 =?us-ascii?Q?UoRZbL7iNYdX61IYygZ9RcVq7Twn+FnHMWUXcB4cqeZ823zN7jLoISI191p5?=
 =?us-ascii?Q?/5v2Jh3z+FQc37eOCty7JUuGdqGNYOPXkfV6y6OSITwVjAmVRBqId4FttdUg?=
 =?us-ascii?Q?p4b19cKP8MxtYn8v7FcjmFLtxZlxfoFYYgp91omnXS12iptUcObcC2EmIUl4?=
 =?us-ascii?Q?JRpmdjh4nlSwqtZnUpAT3Sr1AB6MFdI5mnTNhLlFUzzy2av6m5pkmouDfSKB?=
 =?us-ascii?Q?Y11KKuYBZTCJnhzjGFh1yNacxdkf9VNeNQevK8JhL56o2Y/vfGMucuNYLzHM?=
 =?us-ascii?Q?unh7WJDcvc1OIg4hCXFZb1TxupKmidminlZvpwH9baJxss1dM/n7GDoIunau?=
 =?us-ascii?Q?oMar1IVekCX3en6Aet53xe3SdrNmHabIRPr8r01gGDLVBEswb1yPY1m5VeXh?=
 =?us-ascii?Q?WGKAZSKiseelbCJB3WRix6G8T6ZInKArC5/OENWpbtIlyYIM/lXEp0C5aOFS?=
 =?us-ascii?Q?eooIS5TrcuSTAWnrdaEjANRd9qvB1rmSawKRfBJV/O/qi4Ubie0/USwtoOqt?=
 =?us-ascii?Q?K1uubEFFxC7AoTZ6c4cIS0gqzXU6WOey4fYZNaCoPtG6as4iwpEeaYwK41Bu?=
 =?us-ascii?Q?ToNthi6dFWVMXH3EetKFyMBT282A6yoaHk10kfX1axVBYTMK5q2Pi6/0phjq?=
 =?us-ascii?Q?TumvqPdyMMz4RegAN/TFCWcxSgVVfiLNgQjKGqMo/78M7I7I3TsIG1c3XATr?=
 =?us-ascii?Q?BJSRmPsgGIIIEryINkLXTnT/Ufu+ZDGOhtOkSe0zIycZ9DOtAisBisdUyDrE?=
 =?us-ascii?Q?VT5jbcTlV932+vgfAii4rEGuCdNuq26t/W1UhtXmVQiQAMp4I770wgrHFkK0?=
 =?us-ascii?Q?004khjd9kTucMYR5/tPK0ujql/B1hvSywSrfc3ZuXZ2D9Pjbm0J10FVsoUur?=
 =?us-ascii?Q?0m9HzYPoWADhHSx6HROyOH6yz3S/pQug3VD421hil7P0MGm1quNbYVD8YjUU?=
 =?us-ascii?Q?OdMtCalPZBGZ/RPuRfk/mgFENgWN+7HXlHvDJxOlaISn9ErTb6CZ/QXAIADz?=
 =?us-ascii?Q?1QwF1rIzm93rIdiofBxVwv0KgZnHFdxnwVSDU59lioC0AbQgRoz47gKOa4R5?=
 =?us-ascii?Q?ZsK3gxa7SoKp6dZbAjmtRvjo8X/YXFrninTMcBWVX+3ne5voFEYhKQ+O7JdI?=
 =?us-ascii?Q?pw6b/c3WoSIToMuh8rHVI/6eIOFMLWgGXvtVeuHli2c9fl1tVPbl8J9F7YEn?=
 =?us-ascii?Q?W0ps801+FQSAtQKsnyUaVFeIvyApWfHbR0W/nj1DTuXw11OpbgTmwSZ9L6QV?=
 =?us-ascii?Q?0tzlOa/I0MPXhfrO7CnoLzWGQF7j/6sP1/wkTRV7GlJCsqj3zHfNIzHt5syq?=
 =?us-ascii?Q?AvH8WQgiDNDfnQ1CKRldnxy8NqUecL6YcUzAREGJTamsdXuzWtEBZUdiHkRV?=
 =?us-ascii?Q?jVzvT96R5qiY87gAV50kcpNoCz7TB6yXp8JBLVvgyceJlzE3vME7qRGJCOBP?=
 =?us-ascii?Q?4E46xnyiuoq13jpKtSE8K4ATmP/k+NXERVWErEE3XFlCBNeNxqn7qBXzquBv?=
 =?us-ascii?Q?6CKphO2610XpZ2Z8oQGgxoyvZXfftT76C9UdZuHE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4218.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9186e961-31c7-4377-c26b-08dbd59f061a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 21:11:58.1780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X+LwahVu1sM1bS1ljKjrHivyXr50hDKI19Asf1pQ4sbey9U/D7yN/Xzkr+JZN9CsVkx3f9NMoDk0cVkYb5EjP0H97VYwK1Vefi3FrSCshT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698268322; x=1729804322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p3iymF7QdwqWkpLA29x+B4tb8nQGdhzYEOYh1UR9NrM=;
 b=JlyYePMjvKcxKwjDuojUbhy/HIbIWqnHrGKDA6orWo1sJ2SVuvImtmn/
 ng4Ll6i2FRxJcBQzidcPsAFVYcQFvcQGFTOt6GdHFaHjK0b2QZBPaeY3d
 gIjG2OLsxHtt2kEUdOAgdjW75nTriW6vaVC3c2qin8ISPZI6zE/7oa8xK
 xQniTJmi0W0bIag+tEQOwkNN4Y+3GNaS9WwI3cus8ya8khX7mNEdHSvj2
 DtLdF3ZZ4MBotpgTr1osAJqRpPpFvmCxmZBij44BHU1GsmM5IaFJ7LgOX
 7qp6IrboRTquwmPmS3SVX0O7IsjuEtTthbcvGRsJaTg0coI80dBJS1Bij
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JlyYePMj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/6] ice: Add E830 device
 IDs, MAC type and registers
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>, "Nowlin, Dan" <dan.nowlin@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Olech, Milena" <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul
> Greenwalt
> Sent: Wednesday, October 18, 2023 4:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; Greenwalt, Paul <paul.greenwalt@intel.com>; Nowlin, Dan
> <dan.nowlin@intel.com>; netdev@vger.kernel.org; Chmielewski, Pawel
> <pawel.chmielewski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; horms@kernel.org; Olech, Milena
> <milena.olech@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v5 1/6] ice: Add E830 device IDs, MAC
> type and registers
> 
> E830 is the 200G NIC family which uses the ice driver.
> 
> Add specific E830 registers. Embed macros to use proper register based on (hw)-
> >mac_type & name those macros to [ORIGINAL]_BY_MAC(hw). Registers only
> available on one of the macs will need to be explicitly referred to as E800_NAME
> instead of just NAME. PTP is not yet supported.
> 
> Co-developed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Co-developed-by: Scott Taylor <scott.w.taylor@intel.com>
> Signed-off-by: Scott Taylor <scott.w.taylor@intel.com>
> Co-developed-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 71 ++++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_devids.h   | 10 ++-
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 24 ++++---
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   | 52 ++++++++++----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 13 ++--
>  drivers/net/ethernet/intel/ice/ice_type.h     |  3 +-
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 29 +++++---
>  7 files changed, 141 insertions(+), 61 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
