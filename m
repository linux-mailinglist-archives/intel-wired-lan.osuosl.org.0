Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5B97DCAD2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 11:30:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFBF981757;
	Tue, 31 Oct 2023 10:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFBF981757
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698748207;
	bh=+2tgT3kxFEWo2NfK9cOYJYF21qYcjKyAHJwHflL+dHc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xbH5mNx88oh5YJNkHuKHAWa+Z96xvyIq6tqSixseZ9Rf/5v1b3e9TNBRoaGPyGvZU
	 nTmBjVIcCZhWVMDp60UbTQxcybZZdPzJ55rgGOMQC2VOJNuSVwN/71S/TIuesZKsxa
	 3MWYfZonWHgCDPCGC3tSM42/VInwdjHbYBTJ2U20k6cN+o+4LkxaRJMFKqRxC20cpn
	 adZVmUyoSfJGb5OsWcq8O7phmCl16nvZ385Q69J9KM+hbnjdqwAD7x7dlVFqXAb95C
	 u39TWWQgS3Vp6DadWUKoZ4eXQgszhy5O40opppz87LsWt4ZqAth6zQGj+eMOsDf3bU
	 B+SkN85hY6BgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vamo3bDjpiTV; Tue, 31 Oct 2023 10:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AC5F80E6D;
	Tue, 31 Oct 2023 10:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AC5F80E6D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09FA81BF321
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0BD3611EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0BD3611EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJjzAfAYW6OI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 10:30:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3AEE561117
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AEE561117
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="391129167"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="391129167"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 03:29:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; 
   d="scan'208";a="8289045"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 03:29:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:29:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:29:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 03:29:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 03:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqGRcrLPOAWZSLM0Eyf1u0ZKuwzO2ynrdU6PrfukC39hOIrrbcOlyg86lQBBhs0yZxtzNecUyxMqsCP5W1dygMO7z0LfsiBpDtvqkESC2UGs9Ylyd7Dr7uONC41H0HYVvZO9uAU7Wc8ETHCWtAgBHPHLE4xc5EW0KxAJwGuTW6q/toHOWX39D5fmHFRuwKYKOlfVg9MsrS6JBz7nYg6CrySjnTWYWv01ajPR3Mj6+b85fjVMzASrPfvmyCBMk4fVH/qperLhH3C8MxeWzQlNRLFEA/xHAGnFUjgTbtnOok4l9nEVlLxNgpNC9h9CqBQQKtljiHJdwsggeXQ/Gy0hjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gvTEfYbeJavbugASC5HSJAiBCuMq7iBIP0+xzyQeJhg=;
 b=oJIVEyJIdRMWpRKYgOtoR1v98sAP6hSqtim6Ep1oUu/Loep59FZGXpKsHhmyewdX2BOYelC953HuQak5p3tyLMuvfayg1GbSIdDwuQMIF1jXDGi112xYPQY2f84oNiq2eNvjbE57bMssxWwUeD0J7mAN4BgrDZr36petI/rrVOAlBVITuyhVS9KjjymOg/TV4kxF4U1Q9RgnjYU6/IqFCSV2fEma7PRqCM6AFf3+CEZKcBslNT13uqr1AMzyAhSq8JP5Yu5/pjefDjxZD7AK+O7Y3lBX9Wc9M2t1TEQvZLgix18zj0sjZD3kki4Tr9PtchUaB28rCVE5fz1WDM21UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB7964.namprd11.prod.outlook.com (2603:10b6:510:247::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 31 Oct
 2023 10:29:54 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6907.032; Tue, 31 Oct 2023
 10:29:54 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/6] i40e: Remove _t suffix
 from enum type names
Thread-Index: AQHaA40CLC6tLAFS9kODcpYzUqfLVbBjwuOw
Date: Tue, 31 Oct 2023 10:29:54 +0000
Message-ID: <BL0PR11MB3122FE1D6B5C3EAA0BAA9534BDA0A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231020193746.2274379-1-ivecera@redhat.com>
 <20231020193746.2274379-2-ivecera@redhat.com>
In-Reply-To: <20231020193746.2274379-2-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB7964:EE_
x-ms-office365-filtering-correlation-id: 9810437b-b5d1-42c2-2fb1-08dbd9fc52ad
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zLRaG2n1rZrc9gmWLxP/owVv2yWUUDcLEMWtWdflJzifmbtd12qkeVqh8+jvJJ0wfsHL/31XT0eI3y9N+eC3PYL8e5wkWcqqFxe5WMnC7yWobd8v5+WUTwhMvLdYAGy8g4KKhWWt0/PVUSDyus0boPLEED5pXgg7j5Sdu3q4qwKHhbX4PMsD11lieQMuqxRNxiCYuvtWpOfz7KAOdEVQ2Ljc5XlYsfMbLIjAydBuJtxXOG7E8634jyAFo5ww9h0/ZPejipCB87J6xt/XY12d3dAHs+bnZ1tDCNzp8o1lTP5GjYFZizepI5n9svZeza7zAX6TsMqKXKz9Y9U2QY2zjNg6fl9UPLiY03o+Rt1lejutzQtl+bUG6iCe+mv2WgQPwp2Ofv8UDbxQwU+LF9GITqyhwTT+n5l/aGlrXn1An7p32WYl0zbz79zWKk8fT5GP+Foie0FsQTTuiDpl8dz6uFkOgq+OKYQy7aYpXoAVvvdbpvlWF+DTMaAw0DH238hFNNC64bKnC43VGoncGiYOeyW9MexFjrNRtqRACVBa1zb4IstIPEjKjqoUanFHpulcNBaxEwS8Qbo3s1CFiUA5rWUjYZRCw6XfIoZHzD3HgrkVAWf/56UD9l+vkjSFYYCw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(376002)(39860400002)(136003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38070700009)(7416002)(4744005)(6506007)(53546011)(7696005)(55016003)(9686003)(122000001)(38100700002)(82960400001)(33656002)(478600001)(41300700001)(54906003)(2906002)(26005)(110136005)(71200400001)(316002)(83380400001)(8936002)(86362001)(66556008)(66476007)(52536014)(4326008)(66446008)(66946007)(76116006)(5660300002)(64756008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8Moq+1+gE5NNplVqrpkUdRrbMOpQiTxnbmwz4jLY0MonMoA7pOb7ozzHN99q?=
 =?us-ascii?Q?jP81HaOygT02KJqG27AvuEokYUopubaLzWQLY6nLzmmrcu9MYsyi194iOs6V?=
 =?us-ascii?Q?WAblOvoRktLx33ObLz4+Icl4l5BKWYFo85EgJjxChfCSUtEQ9gzD2idNo9t5?=
 =?us-ascii?Q?OweCMy4LHuPFoE2KTbPEmqczIfUmjkWpKFx4wyooF+/1REaIOQEVBGh2S/Tm?=
 =?us-ascii?Q?PSon1bIT2pRcJrI+LnIIuEmlaZ9VGjqtGNIDgEZYa4HY1+nQW8tPDlbANIn2?=
 =?us-ascii?Q?W8hT+nk3QANLqg0ktb3qLYGupaofclAyjgJ344jJMc67NwlM5s2L8p+WaFBk?=
 =?us-ascii?Q?lqQIWMmO9D2+m18y9qirHAnV/y4JiDgt8aEig5DvP2oG7fHYE6Mj7l7IMXKJ?=
 =?us-ascii?Q?E4eRTUrhNCWPLn5qxRadz6UWMX5LHXzkeyV6GGL2fD4Rqf2tUDPakBsQ16uO?=
 =?us-ascii?Q?M+fWz5vnPQyJeMA9vaLSHhP95aDRRAGWDeuVoFsPy6PshYq0Uj/h+2Njzeff?=
 =?us-ascii?Q?ER9OUlgbMYSQ9q3kFjLXRCAHisVe159kQ4yh8H/P1YJV7tjj5A9X310b+/Eo?=
 =?us-ascii?Q?jiC/I6S2XX5YwyUIvXU7nxxGnKqVnwlrhoZZ9IS94XWyVo4+ADraCYR+LlGD?=
 =?us-ascii?Q?5+OtM3l1bjvwvMuFC1ng7pTMlIBIhVZHX3ud73K3kltlvoLcJxcwlHDGf/EE?=
 =?us-ascii?Q?/EB+Rm23dTY0XZ3lSIhN2c8Pbhxl9GwecUf96jHtli4uBrYgAUydp4wvBKqa?=
 =?us-ascii?Q?zv0c2cFTH7s7yzegdoHfAV1nYjYIO+EHl0h8eDDy0r/OmzWNFEfBs1fdryXD?=
 =?us-ascii?Q?HsqJv9a2avdKAJByrVjsD6WQPKF49fweHxppOLxKWp3yJbry8iZskhl6fpLQ?=
 =?us-ascii?Q?mmMlh+dJEs/OkpFvXA10TEfW/cFwT+IY4RyzvFCnC2Lzzp3kbcNCe1NZXhj+?=
 =?us-ascii?Q?V2MKA7nCaPRq/gNZHNMzSIJ4oWv1sVd2VyVZJlBwb2S1eRv/rMTU0PypYjQ7?=
 =?us-ascii?Q?/R2v027le5uaMisemtNeT2sTS5HaPLUJ1+TSA0AjmwuJ+HyPAM0N6OX95Vy5?=
 =?us-ascii?Q?us3ukbW67GqNS9VOIn96ol1jiMhp9p9cNkrejfMej9dnvLxC8PDBMIA7n7pE?=
 =?us-ascii?Q?4RLtOM5QfTHU3Am/7IksF4hlwjilgtAurqrFK1DAIK76rSAQQHVjPTJ7MzB+?=
 =?us-ascii?Q?dXz1CMn0zTTstwXrS8a9G3pFnzHCj/WIHGtvllqMRzNFE9HlLgevFL8+gLnW?=
 =?us-ascii?Q?Cy38ojge8jXNMA61ZHJF2PdOuRkFklfNPAIcvz1Oi5qm156h/8DYw8zbN4Cb?=
 =?us-ascii?Q?G7Z8mhqZQnvXKJT7TGp00DK4qXRHpZawjO3u67nf/KDUjJHQqJKTKo8YSPAo?=
 =?us-ascii?Q?KN/wVeUrbvYcn2K3ph3v56rucYGH4K6bsrt3mAq26IApb22bBv59MNrwcJlh?=
 =?us-ascii?Q?ChGMnXHXZ+mqWqtz/qVlOJHcdhq2NXm3ztSps3VMMc03W2KstSyT1nq8WZJ8?=
 =?us-ascii?Q?Rii3q3rqj1nypnOZKIXlxhODAQRVjM2XE7+BTwQRS8q8orQavNt5bd1ClQut?=
 =?us-ascii?Q?OzAFiWJI84GZTBQPSXb8pp837u0sTrxyrFy4jCTBh4Pt9RUuvJqi408QP60i?=
 =?us-ascii?Q?sw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9810437b-b5d1-42c2-2fb1-08dbd9fc52ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 10:29:54.5034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DFMxjz/7d+ftlXzIHhOJaETCjfqkEluYa3W/HenbgK2CeAxBHdeWUMJTJ/G3/CQGjm8rqZEUpooHpIlOq/V7kzEM2JIgm7xYoYM/AKqhcYEHVfLbQE9nnhpa8yVOPS5R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7964
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698748200; x=1730284200;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l4y0AX23E+IAn26tpHqiRh/c10VvXz9NmU+qnAfGoQ0=;
 b=Rse3vwspUB7XPOI8LvyN0SPsTtzejaUv+402vTJkneEqgAef0pOY2Fdc
 7vnteKHgv8dHlSIoJJlilNSggdLtR39Yv5d8Y3+7WE9dMvJU4cg2BhKD1
 MmGBWpp1DvQrK+50GKAL127dbZCfZiuaR0Y88ygArU3D40UV32cg8VOjr
 ZqZ2GciIfCAcMnG/QD1mbqYNWZkaa7ZxTvvK6MbkIb0NcMvLV9RtS9YcB
 VsAZqbo7uLFQKfm/u1G709bnAJj7urnPe64iCZIiifTT9hGJv9fmCexm4
 0op953hZcqtB1mhHczQTJEYmmAaGm8qehQXBDNa1t8UheylGBgAnbQsk0
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rse3vwsp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/6] i40e: Remove _t suffix
 from enum type names
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
Cc: "dacampbe@redhat.com" <dacampbe@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Saturday, October 21, 2023 1:08 AM
> To: netdev@vger.kernel.org
> Cc: Eric Dumazet <edumazet@google.com>; dacampbe@redhat.com; Richard Cochran <richardcochran@gmail.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; open list <linux-kernel@vger.kernel.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/6] i40e: Remove _t suffix from enum type names
>
> Enum type names should not be suffixed by '_t'. Either to use
> 'typedef enum name name_t' to so plain 'name_t var' instead of
> 'enum name_t var'.
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      | 4 ++--
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c  | 6 +++---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h | 4 ++--
>  3 files changed, 7 insertions(+), 7 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
