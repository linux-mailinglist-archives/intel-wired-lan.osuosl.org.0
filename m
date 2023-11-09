Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7CC7E6823
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:31:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA525613B9;
	Thu,  9 Nov 2023 10:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA525613B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525884;
	bh=yE32d76Mn0XQl08pRNrs3fT/IKBgg1jlH7cl59sDJmA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ajzfqL2COzvAw2v4GGICPJWzPfip8Ezd7z3+YGXKLCCymPH+EdHdMDSm6qygPKmc0
	 CpwS/wsCji3f6//hd2pKtygA2+hvgXLVqjoCFgK00Jv8qtaFiXszanpDluduQMtrsX
	 VlNcCA3PjdbpcGoq/DlOkwPwd7sKwyc5QYhHpAZPPHShmHlUhb4KlrYKxPbcWSkFP6
	 yYL2/l5qKT9MRHfWA2WKGuTgq2lXKpsLqgnOqERSdvgh2krKHmmPA+zLd5zR84xhtE
	 2My6qhToTqGR9mJSZ1EwZ2onlIg/FHZRlzMxH5ImcMh2yZtbWQItNJBTDrEd0iYUeO
	 0V5s9/EH8wqgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qh6wdnlnoUXx; Thu,  9 Nov 2023 10:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77DCE6131F;
	Thu,  9 Nov 2023 10:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77DCE6131F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 620581BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46ADE416F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46ADE416F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hj-YsZCa6zHB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:31:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78961416A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78961416A9
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="11510490"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="11510490"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:31:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="11492597"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:31:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:31:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:31:08 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:31:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:31:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K6hpbS5qnkv62sRyGJ0TU79TQYiYr3KTxrG5SHGFe3/mjd7tbV6B/3lIIZxuS+FfnnoIbnTZx4/1ETZJtvxcAUl4Jwdzx3MhGLrq6hotJR/PoWH6gA2MtApKVGpkL5Zd7BGxZi8ouEw7fGLcQNb3zdqUxjpHcxuSVs4og5bUgjJxom47jigiYNitNbT/Mf1jCVEaxfCArFc29q51JcydQVeO32rHeemPfY6d1PuouD/khQMnyxstI5wJYnsJRhBeK1+twgRc7TCwNiUOGP7ja8Y9+vyMr7IQT/NI7dumrFQ/cl0II57+KanZQQuZoetaCnUclEbdxpSL/0s2t4UT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Av2nkcLurVcM2Vu7j4hB7cQ4u0HsM183THmcHBddlXg=;
 b=IjFd25KJ1+Fg897Am3P6HA2eTiFdz6vmiSV9Xtw8zeAc143pN4XY0SwoDb2RMT92ZdH1JZ44FzMyxgHz/Yc3i4Qkr3qoovyABfxtoaJ1eaQR4eC9rd3Fo3H2AyT4Fw7jfWEexJqbowcpRYSBM7310ru59g8frIWkO7LORlhhpcObCjxQwxbNZ1+6VaztOcmT4m06Vkljfe5h0DbPMxTv4NRlSw1PHakUtZRcLM0Wz2MfZE2fhKgfoTcd7n+Ekl2JYRLXjiUvUPMxpcVBavt+KpJjszGtFiVNiQ8K3rzS51ukruvDUlYvgVvFZK7bZw2yLUJAbQrAmM3gPJdU67apIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:31:06 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:31:06 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 13/15] ice: add VF
 representors one by one
Thread-Index: AQHaBm5UpbCSwkjdc0qdXLm36OlgF7Bx4rdw
Date: Thu, 9 Nov 2023 10:31:06 +0000
Message-ID: <PH0PR11MB50135B3E9EA3E8301FC5C96F96AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-14-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-14-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: c73fe2bd-f3d2-4ebb-9212-08dbe10efb6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D5wFXjD2Kh9eaR/ZWdB3gtFVywxtD+VrD5wBagEud5svELS/jpw5lqUoVmBjjrF9OA43P2KPU10Kpm79Eg4LR583FZCcI4WwXhqT88ZRUNN9Ey4+xNAdXJQwIBOq402AhLknhLTDfGk/DdC0hz4RLNtn2dkmfL6tfitG/ebTgklR3D+27WVIeeD3LJnU1nBqI71hVUZ3TUWtLjglDURVpOwUfGimDS+qF/6SZm9YsUiwkpISkl2/l9DZA6l8Gsav6x7gbKMKmVBKOH8P+Movii2CLOPNFf3qoLc3Nwqsn8MPTS7pKtV51yA6wzbHbBBh8YGYWI3AC0RLWh1zpnolllerNSwSm0LoYOy4Xfh0MGfoZMlhz6hjef/Xt8UOS30FlhgLs+b6HEKxbju4/DTyVpxt738QgMJIG9sVXHyrOQRHLvXUS2KWU+Ysh9ffDk0jG2qmQuFT2zC3fjwtK3neiDCjrXoomE2J6Mv2lwKJB6OT9csm846oLj+r2m2CuIZSfxL4Mzn3WHNIcp8ByM/rVynuOc88ChfpCPZhpK5cDx3mc5hTFcUtFsNKJWXNA89zBQv6wl2vxKefwyBx3+YzHQy1XpEU6IUe7mLQvP2ORNqgI3WHNW9lI1gkpNIBDAWp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(396003)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(38070700009)(33656002)(55016003)(83380400001)(316002)(64756008)(54906003)(8676002)(110136005)(52536014)(8936002)(66946007)(66446008)(66556008)(26005)(5660300002)(4326008)(66476007)(2906002)(478600001)(9686003)(41300700001)(71200400001)(6506007)(7696005)(53546011)(76116006)(122000001)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XVrBnzdR3drldGjhIb8PrbS0XhsKsXZ+OBOMUFo5uTKrdd2WE/1XiLqvemtG?=
 =?us-ascii?Q?mu0Jb7d0ffn9Cq5L/OaGponoeCRoQdYoWQ4YkrzHG6ddKyPYU2jSjwuJ0UPi?=
 =?us-ascii?Q?kPW6b+HbUW8ywMC7NXhI3LT1YPA6dhaGT9u+iUsGgaNeO4+pV2nedj8dMmVm?=
 =?us-ascii?Q?WN0VbpHoLMJ1WbrgKskn/9SXT6sqh0nauK5fBnilF6lhIgsD7xb2IAw0Im5Q?=
 =?us-ascii?Q?+vZd4DGtJGcAHDUimpAdrzmZYt4Y8PDfWGDgzR4PM6i4nc+A9Svb/93PfYFL?=
 =?us-ascii?Q?KStPatHpbN/z2w+AbnLqqoa8ZRp1bgheI2ojyMuzw5myNj98Llc1SZ5ncjZQ?=
 =?us-ascii?Q?cdyoyi9ppkIccNrjGzhZ5jJqptMerU2VHpfdB6LwisWEmQRZnpvQg03E5LrK?=
 =?us-ascii?Q?YNGLFEM5ZY7fqeJ7YhWt4+TcJEGMErFh6yULIO/BaCU4rR8mKcbdITgbpVyP?=
 =?us-ascii?Q?wlSxSRUSBZRJiLqZ9zyo9/obb3Qajqbnkl0R6Hco3Q/1wlHOX/4GLeDlKvGz?=
 =?us-ascii?Q?Ucie3fIGBLlrMJUm/46NvyTwtiM2bNHFpD9ztyHRDdDQD3bqd/TY4+qdxN6W?=
 =?us-ascii?Q?MPIb2YyWHypLEp4Yhe9aYC9tpvQIO7ujqCo9Uqsk85+Lwbsz/xcuWHuvGF2m?=
 =?us-ascii?Q?kwzNAicLU6ggkabEiiS/m+lRAOHN8ylcJazl/3cmnCUIIz0U+UA5+O2k4Cyw?=
 =?us-ascii?Q?s5hR0XAGA7PB2jsdliFG6kAkI8ZYq39IZ51tg6Sg1e3N6J0ZFX9nU7UQCYcd?=
 =?us-ascii?Q?zbzEVzIpPRihuLZEjqzDREXel46Mfucj9knBLpNdXn18KZ/2kqOn7e91g7Cq?=
 =?us-ascii?Q?0aoA9m75vZNrMJSUMhQ9Xj5tbDpYtQjAzN0q9OpdiuOOBI1JPlh/2gE/ITjF?=
 =?us-ascii?Q?8zjgfam3/qcRKbh/6WaNT2BGHUeo8uyXHNzWIRNkWe8uunbyC6t1oJMBKadp?=
 =?us-ascii?Q?fgUnmkwH7ameEDDZpMUHqT73SnmboQvdGKj3T1j2hbQn+yUwWnL0I7BFck5i?=
 =?us-ascii?Q?DJAkI44ugCS3+8aTYLqJAnGhGiRgiqHEcZF/IRXm2V3L0AstJxYHqpZwvNtA?=
 =?us-ascii?Q?XJAQPk3lH+0M8SyHlFvw57cRb/fCShvGhX0dhxEHpRUUk1TsGAOxM7Bh98h+?=
 =?us-ascii?Q?dYuc/ykexejp97gnZHcZAI4nkcROJaAFubc6OQ79Z6oJqZsX4v0e7mpS4gIM?=
 =?us-ascii?Q?yz/Lfkpq/CxiCZcl2+ux6z/sPi6zQ60EKj+NkhHQ4+izgTq9//PogopQGRyU?=
 =?us-ascii?Q?CHWmtB4Y+IwO6OVAfCfXyPQZqKYOhhCMLFo+1jCxyJChtmqaxY6pJM0Dx+V0?=
 =?us-ascii?Q?IMK1lsMfvyw30rPgSiXDqXFEGkPJ24pLhGL3Y8bvXsStJUnaf47hLjmgTchD?=
 =?us-ascii?Q?yFWNTS27M3t7ggNIUjFPjUwekWteIDN3HZ6y45fasCcF77di/+x+NTAIk3X5?=
 =?us-ascii?Q?6qi0G2tb8LRmQ7KdWu7T4z7+0r0jTYb/laEMe/n88hdO7dEZpx33boTBK0YY?=
 =?us-ascii?Q?LxkSvhZvbL1LzgmodRssGpQ3cmOlrcKB6Pf7D9dP+RSjvw8KLAeNH1lf2HK/?=
 =?us-ascii?Q?nmcFUGiBKUvceEiASwkCy9ElqdjlXWBAO54jkME4gK/yIXtSkGLtqjMmC/UA?=
 =?us-ascii?Q?cA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c73fe2bd-f3d2-4ebb-9212-08dbe10efb6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:31:06.6824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SkDSP/E8WeZom1TXjbJ1qcORuFhXzqV8X5Ls3reTh3LzIOqD5BSmGyKYocDV3CMaBwcAsWDkOiJItOOr1f4fvgGEMqEM24AINq88w984Y5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525871; x=1731061871;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gyDG9okyOdetFlrXBXYBybwT9a4Zxwti4YaXkAFHvEI=;
 b=ZEG7EoWLrjiSH7dcbBRzVqtCTryN3/NmDtNxFQnefUhqsdlNSQspSssF
 1/0QRLULpPuIkJuKY1Hgv4fUoSNJyc8Zo682m9auik4AlM+MqisC1ykmi
 XltFw0jHM0gieV3A+OyE10JKI4BVZzl4PcBw+7VR3+GLzZSh5YcoUoAEh
 4RAlUh6TnhfP/N/G7hlNo21apBLdjdncYwCBXQ6228fMkBhBldrdZQYnp
 G+92wFfXlwc+KRD8fq9cJZdPKj0e8kvsNI65OfdBEByvQTPZ301CENP/8
 3zsD3xnUAb4v5iMx6jBi7vxTuXq6R0smQFY9qKZSm5CvdM39zghw8soEt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZEG7EoWL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 13/15] ice: add VF
 representors one by one
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 13/15] ice: add VF representors
> one by one
> 
> Implement adding representors one by one. Always set switchdev
> environment when first representor is being added and clear environment
> when last one is being removed.
> 
> Basic switchdev configuration remains the same. Code related to creating
> and configuring representor was changed.
> 
> Instead of setting whole representors in one function handle only one
> representor in setup function. The same with removing representors.
> 
> Stop representors when new one is being added or removed. Stop means,
> disabling napi, stopping traffic and removing slow path rule. It is needed
> because ::q_id will change after remapping, so each representor will need
> new rule.
> 
> When representor are stopped rebuild control plane VSI with one more or
> one less queue. One more if new representor is being added, one less if
> representor is being removed.
> 
> Bridge port is removed during unregister_netdev() call on PR, so there is no
> need to call it from driver side.
> 
> After that do remap new queues to correct vector. At the end start all
> representors (napi enable, start queues, add slow path rule).
> 
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 351 +++++++++++--------
> drivers/net/ethernet/intel/ice/ice_eswitch.h |  13 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c    |  85 +----
>  drivers/net/ethernet/intel/ice/ice_repr.h    |   4 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.c   |  17 +-
>  5 files changed, 228 insertions(+), 242 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
