Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D77C17F670B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Nov 2023 20:22:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66AE2820E0;
	Thu, 23 Nov 2023 19:22:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66AE2820E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700767322;
	bh=gT4K4Ue2VhIGRvvA72ouN+eiNBqdZO8mhq+5XanmJiU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JWsUiKWryN5Vn1NnIIJJQ1JVLJCiO3rfqoEBAt5Eufqq7GRuOR6Z/khdoV+V4s1ik
	 Du0kYMAj1zRH0+rv2LYTt3J8hcJqZBy9TUErNW+jQLcym2tJzCIlA3psVFDyTVbEbu
	 Z+r7HmoI4QxJvm8M5dGLaPUz6bwAddF/p1hQO8GczrsdPzSFJ3Nlp0ev81vvLcIKNn
	 wc5s1EYnlyEJVatfxrNAAQDg8gm2QoOMzHxTATkwRTXGhI4Cl4R0szrmwS266in9f/
	 9gaQZ3/iJwkkoF576rN0G+osKt8RMSMTJhy4zwXTs8J85wA4RpJvwwHQ7q4Hci3uxO
	 Nsa9/2TH8wTJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a8iS5sFNwH6o; Thu, 23 Nov 2023 19:22:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22C5F82093;
	Thu, 23 Nov 2023 19:22:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22C5F82093
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0339F1BF342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 19:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D47E040593
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 19:21:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D47E040593
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t7RH2OgWDvHu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Nov 2023 19:21:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D52D40297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 19:21:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D52D40297
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="391194400"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="391194400"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 11:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767270270"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="767270270"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Nov 2023 11:21:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 23 Nov 2023 11:21:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 23 Nov 2023 11:21:52 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 23 Nov 2023 11:21:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bcMUjjT9uNdTiBmcVGJL8U3x495xrDeLBwA48cuNYxz4H5x9gvqDBt1Cgp1eVwIfRE2Tt5xf7VnDfHD+0VgBPzRWO4Yzq1MALadYxf5ay/K+3HKtlj87dArJs9GOAqlvbhVf0DJvchzUwOM9z4C28BbKubF9ztXOM/kMHcW1+0oFke8fydb56BF0G0RuAhwfH86V5Cl99K3CnYpsxxpNK4TX4ym/vO03968cuUfKnDWff/K5+K6Nq1gA7+y6Inasrivn1IPF/JVhdt+xVpWX8Z0wUej4WNIXrAIkgkTgv0J2Ay5zIC9SQIoIsfAX8svG0WwPys9qe6KP3pNbDKa8vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JhBxao9/crqvY8OKmy6KDO/RMoO3FAX4aa2p015ZXX0=;
 b=Qn/xrcV2CrRam92tf7+36Z8kd7UEU7F0y9x/iKparGYj4cak1UTbhMz13Kfr2O3OPh7d+vkaUCJ23fsfPb3X8YwgNGL6b0ZUIMA1i7TzAVeJVu68OKbQQh+FtgkJhdU4B8KH0Nmoz+5QEQIZYGXe49HmfM1zHHnxgMTUUd21lcTHf4R7CfUJonLw6J2YgmBXg5xs9VOB/q6oW0dXUHB6KML7J2dgLohpoxSYdhOCP+5XZC9Bn3+9zI4popQUPJptw7CTXSxdy5NOYjAWdS1l56eNhSVaINmMKO5oa0OOO9tK8DJuq2y+xZ+VEN3GrRk8X/z50If/Dpt63qsT/a84cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by PH7PR11MB7001.namprd11.prod.outlook.com (2603:10b6:510:208::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.17; Thu, 23 Nov
 2023 19:21:50 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%6]) with mapi id 15.20.7025.019; Thu, 23 Nov 2023
 19:21:50 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: change
 vfs.num_msix_per to vf->num_msix
Thread-Index: AQHaBojQ7XsfVZXds0e757gUCdnGybBo4G0AgB+XB8A=
Date: Thu, 23 Nov 2023 19:21:49 +0000
Message-ID: <BL0PR11MB3521837E8A9C3309CA8CAEC18FB9A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231024142010.175592-1-michal.swiatkowski@linux.intel.com>
 <20231103165654.GC714036@kernel.org>
In-Reply-To: <20231103165654.GC714036@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|PH7PR11MB7001:EE_
x-ms-office365-filtering-correlation-id: 998931e4-024e-440a-4048-08dbec59710f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JSoakHgVCwtpW00+/g1aBBUDQq/It4ATS8wOEPmFFMd5GCiFuuWkDqWBdxGgA3KSCQBvh9cF02kVrE0uo+ayy51LQuV2OCfs1/rZlGVStxbthk8Q8Ot1NBt5yZ5tLXk5yYPP10zGwdljabJ4kCwVhMtQK0+XchCndY3l6mW86cV7uOQDwcvXfy7CclmW5iD/S85XXDSIsoeiB0b8xl254JFpIkwvrQallB/78sSbIRI/+d5t4uTctvbcvqpup/+oulwR03DTia4cY3Drgb/hEP8Hnipe5RT9HRHOXRJcSDePMTgehy0LtFJEm/lSqrBHSECl6ND5WiOx4O6/Sm98BwtMrufYYAd1GCBzJaLCPyFpIFNwRx9BSTv0nIXCCojFpOACsvNWHlmqWTehWjN6fC7Wbc9gla7jOAFp/WgYhmEtfJ4F7gZjMimx4NBfcGNgMEQ1ek2dMiBo+ubjj3p8+Q36qUcaKjN05xuiyMBWbw9kN59ZzZRzTx3jPJ4H5V3vL8z3p/oIOOkb8GX2lmTWFpZPn00Q+INIYx/pqbkFqYuT7gzXjUcFfJypBnfSOElMtbWJvzTjsE8b7Af/QlhYghPJhc6zn7uMmU/hVObuycQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(39860400002)(396003)(376002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(53546011)(7696005)(71200400001)(6506007)(38100700002)(83380400001)(122000001)(55016003)(478600001)(26005)(5660300002)(82960400001)(86362001)(9686003)(33656002)(41300700001)(64756008)(52536014)(66446008)(54906003)(4326008)(316002)(38070700009)(66946007)(2906002)(66476007)(110136005)(8936002)(76116006)(8676002)(966005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1foGqY0SnYNv8fgsN+1nG4LIywLHNcpaxFcI8NrWuxeeJQktEkGcZCOQj9pn?=
 =?us-ascii?Q?2CcqFsek6vEJk8AUhyjHHc2RSqun1lczJYM2U95DYgVi56g5eNij5qayqfEH?=
 =?us-ascii?Q?CPfcTCH/JkTmT2OAWBpr1DPJfh+X7kgIojwWRtqh/SkqxskmHMawhTP7sjFT?=
 =?us-ascii?Q?ieW618kvEFLmGR7eVSKHBe6a0VzJQlSrjo947C7A5ZhO2VbbPBeA7EljJalw?=
 =?us-ascii?Q?sSAlgpFuuugMqFc+B3jYB1woiMvTzjKmopx7LdyBQvmRMAt6gxgaRzyximHV?=
 =?us-ascii?Q?JkzCIyZqqIeBSvGC2t44zu7EMxatq0dgjnu3i1okkHx7OCfX7IzaPWPye+Ev?=
 =?us-ascii?Q?9thcsYkJDI6SWVDw29wYfmFnBWxpd/MuDd1S2ElpFO/lR3c5gh2HygMzeKUI?=
 =?us-ascii?Q?Gxr+ErC4ntmMx5g1TprX99k1PLcufcUmxr1SRHaV73VzXSspM0tAEW1bT8nP?=
 =?us-ascii?Q?lLKWyPxSISAAfMcRTjDQOMTI4l1FF1WTHkKV5QfeE1+1sNhwFv5j8T1gi4Jn?=
 =?us-ascii?Q?72hAl9lTnEjPkdbl+SlVAIZ1HFBiNCZY+zOHbn+qO+qOGi+v6ONeGqzWFLJL?=
 =?us-ascii?Q?ziFPIHOG5aSy+3LvgH29OV/C+WLrrqV/PgG1fml24HsDlhMT9XRnUPl8FB85?=
 =?us-ascii?Q?YwKHVmK1BnCU5x1bLMXaSyjE2jXD+MkxPucVZO73R9CMiUzz/H5+vJryy9DF?=
 =?us-ascii?Q?OrqYkh1C7aMGrwe0ABIist3WrMQwWhDepyDHReNBx7YYZZQguTFf+jt6ogY4?=
 =?us-ascii?Q?P2FWnBoNyzoSsXzA4BTtaib9gUcEqbveqpPToFeI5hfb2I9d0Ihvsg248vTf?=
 =?us-ascii?Q?RU7zx3pJBEq/ShJrtv78HpKpcB/n02VGTMZVF7kUBnO5YlquBE/6F7YRDSfj?=
 =?us-ascii?Q?5w08bTsD2nN6hwkr6oEacTH2Fl/w4ICxuL+DO2mlimhzaVcuE4B+nUDBpyOV?=
 =?us-ascii?Q?ydkoesNMARKuukJNpBdK0mURTiXT4wuMV4dpjGAtKCnuteFfW74Fyix6iKfD?=
 =?us-ascii?Q?g/I1SmapT+/jUabwtV4LZseuDOtJwmd5knGPuBftA3j32vlHlVXwaA7Yr/H1?=
 =?us-ascii?Q?IdBJ7c1tmWI0cE906sRhKOqNNlx2zs3hIFWhDY6V89FqGMrYNJVaHXBS8ojK?=
 =?us-ascii?Q?Za1ZBArlqhbyVtOR+WtdPa0bSbwh+huleLwsMyyVsd7s/oAF5CQMG/QZI3Hc?=
 =?us-ascii?Q?ZeFeoJrvuCZOcKQbloqDQA3jlopFWRNLqbvxD9IG3Ev7xdn+Mc/ElIjJ0GzU?=
 =?us-ascii?Q?/yPslsaTvQJAaOwXjEU0Z95zfWa8q4IcwIaAub/aSoq9WVoq1XTPVbseHAiY?=
 =?us-ascii?Q?FF7I3P9Ksx2p8eg5Ep+CYYjFLU7gpoC5Dhz5pLYVyTtMwmfLLWkW8aI+Vrhn?=
 =?us-ascii?Q?uenBMr53Hw3AMeeC7TlJLEVNQqrml9O9JLr9GwFlBmNNziaiEcC1sU/nJW5J?=
 =?us-ascii?Q?bcWg8aB6Ip74Q2UsFibHoM668IRg8UIqzm9VlPOHn5gXYES+dKG0qt75eBRJ?=
 =?us-ascii?Q?rnEs7xheQTM1J0/rHIZV0kT9zgz5avavtBZiMwDKarikqG+nMfFPf4IE9VV0?=
 =?us-ascii?Q?FjxT+alyqCgWAnHxPQmDzOHHbe0iiO1Ckf+BoKaUW+b6Y6eARlN7f3/w1G2D?=
 =?us-ascii?Q?ng=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 998931e4-024e-440a-4048-08dbec59710f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 19:21:49.5587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Za8eU9UW9J1VmAuHSS7PWfR5IPdCu6OI1ciLU3pG/SEPDVEzQ6pzgz5+7Sit/DSrNvKZXXdpt37pQsgSg0S8t1n7Jhvekw52u/nc+upvD/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7001
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700767314; x=1732303314;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JhBxao9/crqvY8OKmy6KDO/RMoO3FAX4aa2p015ZXX0=;
 b=mjAWQPZtUf2MzBXG9tfWCNyrYsMf1m37bNIcKZcxB7voOxXrIkpdksza
 3HNZidWF5bzN/PtmWoWZ0FuykYb5ZV/ptm9AXgm1vly0m5moQYR/g97Zt
 Z5Lx/8WwNPFt1wYYjrS94WkkMnSTktl4wmHO/NsQ8Tv7USnlDSbpaANOs
 Eddnio3NxIGJE/C86Q565h6X+f8RJUsFTBSABdyGRw/Fu3Oy8eyfgjHw5
 wQVsyiP4nAm05MG5J+W2RdfktFCBknuUs6VSLjSgXqNcQB7aJ78jMofQQ
 si1lkfNidaaxl4ewA9kjjRvkIJdj65zuXbeSwcle/0SSmXy5mgxR17q/G
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mjAWQPZt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: change
 vfs.num_msix_per to vf->num_msix
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Cao,
 Yahui" <yahui.cao@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Friday, November 3, 2023 5:57 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: netdev@vger.kernel.org; Cao, Yahui <yahui.cao@intel.com>;
> marcin.szycik@linux.intel.com; intel-wired-lan@lists.osuosl.org; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: change
> vfs.num_msix_per to vf->num_msix
> 
> On Tue, Oct 24, 2023 at 04:20:10PM +0200, Michal Swiatkowski wrote:
> > vfs::num_msix_per should be only used as default value for
> > vf->num_msix. For other use cases vf->num_msix should be used, as VF
> > vf->can
> > have different MSI-X amount values.
> >
> > Fix incorrect register index calculation. vfs::num_msix_per and
> > pf->sriov_base_vector shouldn't be used after implementation of
> > pf->changing
> > MSI-X amount on VFs. Instead vf->first_vector_idx should be used, as
> > it is storing value for first irq index.
> >
> > Fixes: fe1c5ca2fe76 ("ice: implement num_msix field per VF")
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
