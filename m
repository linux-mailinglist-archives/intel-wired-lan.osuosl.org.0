Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2701B802C50
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 08:48:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AA2681754;
	Mon,  4 Dec 2023 07:48:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AA2681754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701676116;
	bh=zbXLIEoNtAh9ByDOSoUaLYQBvEc08cy4iHac5PDXUR8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6V6odlHNbuVc7XIqGKvtlySGhvLkX21A4vt/Yzc82q3IuAyKbDUFdifxK/o8UWOPl
	 IrgguidjyLBFK60AP8mQAG4bZampHDggOe3KzhN/cfXNLbXDR2nT4+7A46uc14WEUe
	 ifSRhWRWHzK68DsLLlrcpFOaOTYCF6e/4OTu8MiuQvbelT7oC/wgEcLUXMs/S8t2XH
	 5SDp0MFZxwpuxaI3zFa3P1+NQFw0twsRyCwdXkU3dMVGNR5w307WI+Cyu+OWbRt+Ra
	 1q1CcG8gmgx6cESwlncmwCCoN+MTLlk89ji8t2dzReCQ/rVZnjcYduTcfwbbPev6rM
	 9ZOY/VDxRmP1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sms9abMfyZtb; Mon,  4 Dec 2023 07:48:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 085AD8164B;
	Mon,  4 Dec 2023 07:48:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 085AD8164B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 992151BF33C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DB07401A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:48:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DB07401A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7WG6T_xwXvx0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 07:48:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 36EC2401A1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:48:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36EC2401A1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="460189605"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="460189605"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2023 23:48:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="943797678"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="943797678"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2023 23:48:27 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 3 Dec 2023 23:48:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 3 Dec 2023 23:48:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 3 Dec 2023 23:48:26 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 3 Dec 2023 23:48:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LbqkRLPmD3e1T0KHmkYyD3UlhkIhlrOuF8ARAkd5DAEvSgg/xFJeYkJvYXAZEm4NMwlm2A4CEvHPfjxIz4J82+yxe0EWrdLj7PGRyXkZhzKDEOu+wukV3LCUeYZnKVKD1Gj8kEHPN/ifQX4lQMbQQ8+MZcQmRVMDKZDcwhA3KGSm26WYi3KeYzEvjRvobIYMwI35/EYtLvTzM4EgPj/2a56VHgEKCvuaNDFuz0414TJFUfiuLglIIY18tPhMrmX/N1Ew6MWdYEovmDecPBh/UzoYbT8EMJ1xSlcYG/98uWFMTqcbRTwHCZVhxwK6HMHPWomC/HhLWm4aToMeCHxOmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fNzQ9pFiQvF0M5fTkJdLpahiRTQ3sSacS44/CizNOu8=;
 b=EgefPknCSK0wLOPZLvSAV0OtRbOkrfOV57qRpvPHDvbytSuUstaAtHcRKJCXPKlBwapz+ba27Fsbw6d1rYTQH5lCperHRDSEqwqNqp8qDYwpCrvaSZ1WKikIjiVBpN+83LAYhbTKw0tUPFCSokArzOq5iJwg0hgvGzg1r/SQJjW5nyKXvkjEW0GwgMXNRAsTQ6RWZlHCbTCCs/3YZzr8JRqb1Oicl42v8uAjhESIU5UVBNLHUQ6Cvrnz1WNu5BxWuVZSLKEsI+kW/EM5+dq9awdBiCHW1f0Jgtv79TzHBlchg1GOapX05dGGDl+5ZRgfslJIWVm6OfYTzYieD/Ssjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CY5PR11MB6437.namprd11.prod.outlook.com (2603:10b6:930:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 07:48:24 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 07:48:23 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v18 3/5] ice: enable FW logging
Thread-Index: AQHaIlJ3JI3gOJG1gkCPxSIs7c+XyrCYx2Fw
Date: Mon, 4 Dec 2023 07:48:23 +0000
Message-ID: <BL0PR11MB312286ED3983391E03575BFABD86A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231128232647.114-1-paul.m.stillwell.jr@intel.com>
 <20231128232647.114-4-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20231128232647.114-4-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CY5PR11MB6437:EE_
x-ms-office365-filtering-correlation-id: 32b11642-8124-4db1-7bdb-08dbf49d645f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nRkqEsA+k9sYYy8AvTBhqbY+GH8BQFptIxw3b6nFkRsFtMAuT3ErHyBrTgbLKQUWyEYDFdFBOTTHDIQUXQiMjS/mLxRuaYpQBtwnP4n6Ed4qqkfebegsbHFjszu1zKU79RTIKwj7PSgu6mC9OuE+nuBXG4uPBtBfs3InHnMKgLpkuyOgaLcmevUJTQ5+nT9WFZSZeJM7dt5bN+CtW/ybbuEkHX+7vgAcZLh0NOEw1xsAyirbKA+Xduj1eM/d+obnI31ij1179Y+K/ukGsq93CZc7v+ZbRbgst74Gjp3uorRdpgCGafX0hQQFmQ6nCIpjW/bM/RAZUEmyOw8nux+KyzvwnmYO+p/Z+kxB9k/+CmRhVwtsp3ueM/w72D7MCCHBNlkeH0OKB+YjQI4d7OS+EBKA2zDQw4xDHRCu0mZbGgfkoU7lo+0mF0OQw3g3VKFiQ5bnqwOCULFYWgLZPmHGjHVekOWVsG45ZFQ1OR3gQedBoBTKzdZZXj95EBxSTzb2vvEo/uoHHdfbAikpWXID1iGSBfWW3hQMXdCJJ0V/iosCOCCRPtTNcqVphNgjentGGWg29vCMcFOepWVegDwMNa21buBtqcVyfsA8sQtbTwzajm293OaiUXZ8NyWnfN9o
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(396003)(366004)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(316002)(33656002)(64756008)(66446008)(110136005)(66476007)(66556008)(66946007)(76116006)(478600001)(71200400001)(5660300002)(38070700009)(2906002)(52536014)(4326008)(8676002)(8936002)(86362001)(83380400001)(82960400001)(55016003)(38100700002)(107886003)(26005)(41300700001)(122000001)(53546011)(6506007)(7696005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rKNw42Dsa9Ixa0fk/rKtRL5cj3B5JzEnxe6BjTjB9U8wTBX9X18UHPQbA47t?=
 =?us-ascii?Q?+rQoDRxci5mLbeekmy46qguNnvws8hrTVjjdxzEM0hUTUr8k5thXDL3m3hyh?=
 =?us-ascii?Q?Kgw6tMHRVz81lzbTpnxPXt1zjt7HB/6Tnlvn/F7CiV+An14TqcEMVGkOS7lQ?=
 =?us-ascii?Q?5bXiZfujR1Nnplm7JwuuuWQGxhsiQn/TSLGTCWnGnWX7l8gNKso+xbz+8VA/?=
 =?us-ascii?Q?TZrN8WJq9ecRITLmGXvi25IQSQR4eluJRJNlNiwe7QCjU8O8bzS8YE87khk/?=
 =?us-ascii?Q?VkSVxCSq0Q3eo3fN+0rziFt4p2VCOjzss1h6fDy0UeJRsnmjNOUufcI7VHcI?=
 =?us-ascii?Q?YWUyF7v00ukzl4UIU+LvOEZYFeaxJdvnzLjYGFMSd/Oa5jQMpn2PfIPFjx3k?=
 =?us-ascii?Q?EcMSMgDP66hcUZl5SEYRm4OW/0YW5veBowvIaqPQo3hyaHU0Wyrmfo8H8+a0?=
 =?us-ascii?Q?gaa6zZBx54T6BFZG7V5HTq5aS9XkHbLPxk2zzRxvyFgf2AZlOLvmObMn4ODF?=
 =?us-ascii?Q?GA3TGYS9vot9beW8gIbXoSCjxXg5S0DLqgZdXHW/rUKc02sbacZCX97dVNgb?=
 =?us-ascii?Q?rAjEA/EqLkzBzF9g5yd/rmQOLk+jq3R61Da1QY72qVnp7BzPXDqPG565aKHF?=
 =?us-ascii?Q?h1fTJJR2+YPzR/C5TaxaA4L1Pb/iR2yUNyT98mwXm4K/DuHo9kZpTman5yOI?=
 =?us-ascii?Q?uGqTJpKfLYmYETcgGagW7AWn78fAN3KVAhynwJgZj8M3A4dO1ypHLX6L3/SI?=
 =?us-ascii?Q?kX9V+xr8aUTE+0coHHeDCeaG4miXEvL1hdev4ScX0K/GJO8kLqWO9FU49AC5?=
 =?us-ascii?Q?KoOzHAkLeAo1UIBY8rq1R3x/99a8b1BHcvaPGP6DXbR00Iv872lZMXzsx5/o?=
 =?us-ascii?Q?T+68F0H1a3MWr9jLvwuCebnE9L48mcBnHoXU8VH5Qludp4AifPYQ3aTZB/yi?=
 =?us-ascii?Q?NBgWHv2HEgAGiWgsPqbr8cYcgyRuI5htLubpKrAjAtj3RJ5Vanv5qqax9eO2?=
 =?us-ascii?Q?Ny4pBHhScqJamKJYGDi66SMOHxzwFDmKuyfCCftN70zyuBRlzcqI864HtX+v?=
 =?us-ascii?Q?U9QnsFTuqSPeKgQ53hD0ttHemEHnp9dVuuY1MCx9Wt4IdPgcz+tzSY5SJuqw?=
 =?us-ascii?Q?lNJWYNOe+NOjSwunnCvubi5UeRPDaq9LQyFkYf+mW6TQ9SY262lT5WQGZmaM?=
 =?us-ascii?Q?MHktSSeEG6Hha75+Nip2hPRyFWXi9ECYaPcCamJjC/TgsaAFcwEhvb6iVYDJ?=
 =?us-ascii?Q?Xpb2WwDCx5SyWIGuhIcdVnUWmGxKU/rYstOPogxf8GfWusVGFxwa0FdCo8Se?=
 =?us-ascii?Q?rGNY3WDOdhxqEZ7Zgn0dfN6QGNhQJM1bxiCfUQFwEYW4dIKz1/opPDiQb3Nx?=
 =?us-ascii?Q?IrbhVvNquOoGeR7WqJekHPNPpoFga7a1w6WhFFRWAm2XrolsKZGClhk1G4VV?=
 =?us-ascii?Q?E+ZLJP9ZOmszYX5DMs8fjDCIdWalKG1RNzRfdj+lxvEdTRpqwx7k0A5BB08P?=
 =?us-ascii?Q?+O/2iwLtTjH2qAo/CewmAuVI6b4wyoqFz7XBfVRu0zL+bWmL7hYMc3F3mQ5l?=
 =?us-ascii?Q?BuO99n8lkClBhHJTh9FiN1/KybaK2qgm0wj6vw8azVbin7nMkErFktsHMA0Y?=
 =?us-ascii?Q?2Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32b11642-8124-4db1-7bdb-08dbf49d645f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 07:48:23.3956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FYKH0S41c/bzUjnhaIdlUNOWVjn1u86Xo0KHBBgbVXsMWOvswYDNgsKhv1xodOGEz0mRbNY1uInYBKk0ZMvgjLkTC7ImqVe+RnPen0xvGJvKBPisU83YQUYll5Mj0xbh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701676108; x=1733212108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ax0U6TU2JdqMEWduhxukwDScM+Uy5DeWgOF6WbNp/7E=;
 b=c5gcZdh4TfOGwJbE1zIHZfxacaPxxvTno1m3dZudMs16kOzEFZcHxiDE
 DlCtr0ZrBX/R24C2pBI7PMiGbjww9m/S66I2PvWi/9Scx/kKxAG/MaLL2
 p4zziVFwHi5/Of/QBsNfl+dKPX06xnnfxmmg9sLSoO6q5xAtjJTlNBUrP
 eY6TjS9cdjsPLguabQknSRkSdjJUU7o/O7GvQuQUsSVMa+SSQxquYXlTA
 C+9zAp2Pm/TnqH39AEClX0L7UEEYFb7BtRTuwpRHhUZGMQ72sXPzomIwU
 EJbsJX0g154iYU6iErIPghrOchgTKRvC89Yr7fpolSjnU1kINBiSL2zFG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c5gcZdh4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v18 3/5] ice: enable FW
 logging
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
Cc: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Wednesday, November 29, 2023 4:57 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v18 3/5] ice: enable FW logging
>
> Once users have configured the FW logging then allow them to enable it
> by writing to the 'fwlog/enable' file. The file accepts a boolean value
> (0 or 1) where 1 means enable FW logging and 0 means disable FW logging.
>
>   # echo <value> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/enable
>
> Where <value> is 0 or 1.
>
> The user can read the 'fwlog/enable' file to see whether logging is
> enabled or not. Reading the actual data is a separate patch. To see the
> current value then:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/enable
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v17->v18: none
> v16->v17: commit message changes only
> v15->v16: none
> v14->v15: none
> v13->v14: fixed an issue where reading the file produced an 8 instead of
> a 1
> v12->v13: created a new patch for the enable code
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   3 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 117 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    |  67 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |   2 +
>  4 files changed, 189 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
