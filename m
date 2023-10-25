Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C51F7D764F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 23:06:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 641D340562;
	Wed, 25 Oct 2023 21:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 641D340562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698267960;
	bh=CLDa27tonDX6nkr6QX7PpgTvvqlzS4hUl3fVYzJO2zg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T6L9Msi7ylbi6m3dcNnfuyVOVFiH8lHnm92f8sapjUe1mH6h56SYC4v6kHSsL46Jo
	 x/ofVWMkHROJQQ6GtVw7a39HJrPMbg5Vr8yBd90IH80q5R0Myt5ZC+ltIwkVRv6FpL
	 CEBLuk0RChvUKqv6r0CsCmnMswUAJbTILh07FwTWD9fcMHsWUVbUCNZiEWn0YEDjC2
	 MSeM19Tvvwwu+x78bb3Fz95/JrP2xQfcaT+8jl/uoosLk7Pethroer+9zqiq/XUKnl
	 mSSMTnwy6mqnjDY7Q7d/gF9Akd6mSSFcVOFG9hjzJaNs0YVvrIedrIPjZMuu/YyqE5
	 C/CWGIL6TCliQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhhu0JZjkTA0; Wed, 25 Oct 2023 21:05:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E19A44051B;
	Wed, 25 Oct 2023 21:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E19A44051B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E1981BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F08E7418B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:05:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F08E7418B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i0PRO-9NmhfG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 21:05:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B2D7418A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:05:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B2D7418A6
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="8954478"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="8954478"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 14:05:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="1090350818"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="1090350818"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 14:05:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 14:05:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 14:05:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 25 Oct 2023 14:05:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 14:05:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NHhtEdLvmhdcBgMMJtk/EVz4FQyQ/JZ1keKscClVVaKndeS4zrF4IIBHoTo8lPjdB7uMV5tdwb5132KxQVZvA9n9eZCLcqSmtWa/LZ7NV1tyf8mxDbK4uSgF7mb4D3v5r8WTLUoA6gf8UrsbE4DnAAE87FUhWWEvEgz/EYHQXNN/ssKdWrcJJRQCUUsbkGdXCUP8pEXNpRGcORrXBmBONq/ViQzyb6aM/HNaPEocg0SFjoyNUJ0OsmhaQiPknuJzwI9iXbcN186AL4IcTZNigZ1jiqOhOI7hwpLJ4NaRktr9jTxz5YwU8TmxQRbVnmL7pqqvPruvCtHmI9mbTgzgmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h87dhR9XXCXw5d1vr81j214nZ5PIoALQbCAD0Ydt0Mk=;
 b=E/OCMMR8+gsShnMv70daCGnwPRqs4xsJQQcZ6i3gCUYQyC3GHPNTlEy7AY1FaWMcDPqHZI3HcZHjHLjPfYi5hIJBtyWfKYFYaZSl4dBalpoYM1fnaSr1T1jigVsDqjsQpeDYww+HcgffbLe72eV/ZH7o4rKlR7tXfvj4oHbLP/KE6y0XFOkeJiMIVfnqtAPXxu92mP8Rp3m5K9T7fLpR057EvnFFim4ccEDbX8lYDj34EM052eYZYSgt6LSbwMgVz7DpGzXCTuCVv/TL2ljRnTadgn+wJvDcSgCrpAb0zL4Vy0X/xV6tIYCDpw18L+WlfbVtOf99FxUkdgEfEb9IqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4218.namprd11.prod.outlook.com (2603:10b6:5:201::15)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Wed, 25 Oct
 2023 21:05:41 +0000
Received: from DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1c69:1b8b:5fd7:2e93]) by DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1c69:1b8b:5fd7:2e93%3]) with mapi id 15.20.6907.032; Wed, 25 Oct 2023
 21:05:41 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 6/6] ice: Hook up 4 E830
 devices by adding their IDs
Thread-Index: AQHaAhp0i6Wn1gDyIE6/qCyy2PNBLbBbCPzQ
Date: Wed, 25 Oct 2023 21:05:41 +0000
Message-ID: <DM6PR11MB4218E5F957EC4942D5A37C3082DEA@DM6PR11MB4218.namprd11.prod.outlook.com>
References: <20231018231643.2356-1-paul.greenwalt@intel.com>
 <20231018231643.2356-7-paul.greenwalt@intel.com>
In-Reply-To: <20231018231643.2356-7-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4218:EE_|BL1PR11MB5256:EE_
x-ms-office365-filtering-correlation-id: 417f4bd7-a87f-41df-1b70-08dbd59e2562
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wxj9N16U4VzDjOKsgGN/HYXwESOrfLLsSv3id80IDyNUcPAAK9l2z24Oz36o/WCuTyFEDnqko2jHzjGzjcMwrtYteEbyo+V2aZF+b4Q9PbLT2vUMMT+f4qDrN+Fc5pQupfnhch4dGf2df6Kd9C4mwjpUG8nrUF1p4hj6n4fzDvkR450UtPkMiDt82YXsef6j2fv1XtXxy/RN9tbAZ3bc+Mj/JPbhbhznZhXjg6S+kJP1CDpoaRhEA91iFf0DIuwyZhrtmYpZCLhyDHxnF6Dbmih85bWJr0V9jKpstQvC0SCr9UFVS64M6uvWTsw4SUpDdP8At0hIFjRw/8K7hEs6vj0IaZO4IBnPL/Ip7FoW1LlnUn4IEd39w2s+GXJpmbfqhDlm8lO+Mx7f1wD7KEqyI+1Qrtwxt9Dlje8Pj3z12ktpFzN4qLJHKAS1TSHGP3gnWD+eLtBMw7URnq/DZTbLMhpRDCdUoD1O03JFmDefJT/LWlGLLl6mFXrIcNuqdRob8fbD/BYffvK40CV1T8B+fQWqxk7evWKYGygETvyYZ30mjts/2bWxb+wZbs08rCodKceCd51J3yIGLKrBAHXBEdHkSCcoqzkqDFr2oQ6BMUd+C2lmxihJxh/bJblITkZqJuMTo0wDW51gXAPcz9HiMgRsCghpIPauPifI1S9TxiA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4218.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38070700009)(4744005)(2906002)(53546011)(55016003)(478600001)(5660300002)(38100700002)(4326008)(8936002)(8676002)(41300700001)(66446008)(52536014)(66476007)(33656002)(66946007)(6506007)(86362001)(54906003)(71200400001)(110136005)(26005)(7696005)(9686003)(66556008)(76116006)(82960400001)(122000001)(64756008)(83380400001)(316002)(52103002)(158003001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dEHhLFF8Yaw5Uz3FTA380tzH6CsK8VoT4HXvC/uNfWaN1Qf+axCpGrJatEW2?=
 =?us-ascii?Q?bGCPPPKchMLF0WQf8VTAcs5hnpb10HSncuBgenvZEsPVuoCORl922g4loXpJ?=
 =?us-ascii?Q?uRPYJdiANx0Vm6vsEYKOgmEq20HeakTbecHXN+7DIfGDJgZSpsHuXLprygol?=
 =?us-ascii?Q?JflQNcAzl+EcmeLd1We4sNT6igYJ6rYqBdbr7NfgXzEHCG3BJcCH0FYgv8L7?=
 =?us-ascii?Q?PXp8tTGfeH2Jdu7oGUpa9HZh34tMXpoVZJy5JjMT3hOIplA+xD0DsGcHXcmU?=
 =?us-ascii?Q?38cI7kCpPS3FMisP+YeAHCg3w625haH7C81EYJ3oYpJWHDCNpLlygYSiKpR7?=
 =?us-ascii?Q?G6Yoy2o6llDw0rURmCw3dFdcYnzvdgki9sIM4Y/r6peXViM/rabOjm3/d5gW?=
 =?us-ascii?Q?g9Z7Lxfo3mf1/RSO9VJX0SnPE0IRZc2blErIygnZUWBl/yRuNvhv7B/VsSKN?=
 =?us-ascii?Q?MkDtuUr85u5YY73+uqRElXDYIlV6b6OOq4C5dHvzbNvfq6Oi/4hQPP1/wiaq?=
 =?us-ascii?Q?CVoG/Z0FCVymmsF+0cCThTTiZ+kRilj/7FOhSZB1awR0cRl7yDEIYPGRa0vC?=
 =?us-ascii?Q?x3+wcI1UajPvWTXWQrHfZcphjdM4kcDtIAvl/3NMTA+lYa3/ecX7YACXKPqQ?=
 =?us-ascii?Q?0z2XsrVbC7KJTkcKu98Mdssa0X5Z427ZiwqAq8ydA8VCzxq75nMSZ1kVNU+b?=
 =?us-ascii?Q?n20/eyZDDnIF+aQ/MJst5Ji9wAlBjbbjbaCgr7XnyOl2lurSxjsDsP+yri1d?=
 =?us-ascii?Q?LMOv2D/46/XFAxpwdZ/aDcSUnaJtuHz3l1BP/b02SqkHhdFkCVjNFFqqss9v?=
 =?us-ascii?Q?ueSJGPKL+KnsBnQWxF/uIlB9/gEXHxlJT/WQla7MEVC40CVZghu4RtBc+iQ/?=
 =?us-ascii?Q?6dGYz9K2ysOyNJGFXCn77MPkzWpeeTPUzwcs82ybjHqadY/iSYgxxTUmFT57?=
 =?us-ascii?Q?jPPTm/VV1XarQsS1QTAz+n7qlVpsVXgQSa5uhdSviXi+yKkVo2sPcX97JB8D?=
 =?us-ascii?Q?a2aLXk0iRCJjZlq6/ffVc0Cn6XaFSfrCmz4O82vq62Mk13i7bR1M8G5Y0x2s?=
 =?us-ascii?Q?nUf7zGAD0gxM/rsaMnKhzxkhE9zmEbyKxyOn4iF9avXZJHWCYWRTLUz5cFu0?=
 =?us-ascii?Q?10Lw4y+q0+0PLfY4yU72zH3fnGcjDKewQGfY3N91XRZFGuG4U6zLv/YSqhFB?=
 =?us-ascii?Q?XhvVW9QrB3cSIngm/VVj4u/FVJhp9SaeFyop35U3eukeqCnvpEp2G916ZMiH?=
 =?us-ascii?Q?GLm5d0Q8SJ2fvEIrPm1FuBE/Sg3fbFPstEJIFxav+irrNxUmXoND+4XTkjDy?=
 =?us-ascii?Q?dvemd3odDeLvAjUK4S9ciwKTXzLV7PUMQ+XTkqbI4Qi1xLhX5qeNTB/uN13M?=
 =?us-ascii?Q?sHTsRhx0jbGY4OL1/qSA4WH7or+NWLfz/v27KkAxVN/s6NaV5yd077AMGiuH?=
 =?us-ascii?Q?KnKaGNkcHvqmU1tRMICKe38AFXARDafvTOJ8b2pWigKu4UfjIuCb7lfLURAh?=
 =?us-ascii?Q?FrXqZW1QqfWscQxPAJJxJGbq2pMTvbq2ZPFjHA5ocyC3G0OQk4BYWOTYpY2x?=
 =?us-ascii?Q?f1MzZA0m3tjucJj8hE2FxDp58aNzD6ipXATh4+9u?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4218.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 417f4bd7-a87f-41df-1b70-08dbd59e2562
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 21:05:41.1310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dqs39Df0EfE/3AThxP8Bet8Q2tyo2y9pHTwbMPtw4B6IEKwBACWbCl7NHBKJCtH0OQ/OOaQC/fwRsCfBZqpOA2hskgqQmx0/XDfVHjYOaJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698267952; x=1729803952;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qZhoUYE3XM2ruSJlcq6nYU2tDz7ypOlAJiCcocF93QA=;
 b=KAFRiy3IlUKVY4+ZWCDwdh7x6kS1aAhiIjvb0v0Qaq/GY9hP+1NpPVCQ
 VPPlmZuHkupKVjGIYcrXYdRPQac2Lr6lfTflzK+Or+OUlF/U+0+T7r6N2
 84GDzQyuJBkqCzPNAguofLVVIuduVXV7NGj53sJOv1gPYLmFUQSUSZxMO
 +k5kDvqR286HI/UztI6PZ/kNgxhdhDexOJZsCadHcBoD+JTCWpN+OX84n
 k5aYDJBDyhrYSdhi9/9oi55rh+fMcYTWoDwfuEBkUXHuYXsUa13yaEN+7
 J7LcE0Mpdusf+gYN3hDH8uXWUzYPatulUSOs5zstZ6La2uVPloKWwidrB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KAFRiy3I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 6/6] ice: Hook up 4 E830
 devices by adding their IDs
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
 Paul" <paul.greenwalt@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul
> Greenwalt
> Sent: Wednesday, October 18, 2023 4:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; Greenwalt, Paul <paul.greenwalt@intel.com>;
> netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Chmielewski, Pawel <pawel.chmielewski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; horms@kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v5 6/6] ice: Hook up 4 E830 devices by
> adding their IDs
> 
> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
> 
> As the previous patches provide support for E830 hardware, add E830 specific IDs
> to the PCI device ID table, so these devices can now be probed by the kernel.
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>  1 file changed, 4 insertions(+)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
