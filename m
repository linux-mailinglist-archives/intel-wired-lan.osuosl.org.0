Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2100C78C9E9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 18:50:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5025414C9;
	Tue, 29 Aug 2023 16:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5025414C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693327809;
	bh=aqMz+1iL7JTFI6DIG/1t8m2kxqi5wbglCxXfsbfB6XI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V5IGCHT6b82IsyJ2uwiHlydf9Tgd80JjRfUYX5W3fW3pQxxxzEC5EV4Iz/0+SukJZ
	 aC+Mi+NuR5kULwQZeDrDF0jBpKTIcaQfAM5UZ4wg+AzbwooVsGO43L/BSSZdLreHNT
	 ek8PFz5EN1j6eVXO68ZyvRsYOqiK/Dq/2l0uqrXjAWV+6kr0x1ZE432PQ2RV9MPj0E
	 qcvvmZoDPONKgiReZs6UQDlKBx3cMY/J4M9kXuw6+ipdmu4ee+SoC+5iqyU5O8aj3k
	 A45b9CTCxq0AxWqNItxxjMCMJLqPhQ+pwFFdoSUMeXv1U2c+1z9oNJns2LvbpBFufS
	 56fj0vVIs5JOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SHesYs20un35; Tue, 29 Aug 2023 16:50:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FFBB41494;
	Tue, 29 Aug 2023 16:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FFBB41494
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7DDDE1BF28D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 16:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52D16817AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 16:50:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52D16817AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VWxZGtBMaqKW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 16:50:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4AB3081770
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 16:50:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AB3081770
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="461801388"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="461801388"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 09:46:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="773777155"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="773777155"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 29 Aug 2023 09:46:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 09:46:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 09:46:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 09:46:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 09:46:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CF1iag50vsGxX9PYg54yKAkVOnFvDuDCjoN1ZbQny4rGST+xIRNVnVJPrNg9RBZq+HyZ6lE76lJkXFWDFOY39IjzpRJ0KCkLiOuNxGU65zOt/awxOltIAAZF/sjVFbIrQ9wg73PQEnhYE2OlNrrPgdSoxjPbYw5Z2kIInDe0gFLksSmMwSHA1bkMwP/9n+q8eBKCyY4L6JvwfCw0NNDZCX6MIh6/JUiVzXQBGEbIPPsRv3Cfw4tg1EzNE337VWuLtI9cA4wgAFp0DQaC/aTG24G2m9YePWTMxk7w/GsTl22t4MP5TKsaRXPPdR8L6lPQc0KCtacR/ym1iDORtTcXzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TmaoxKY59/QDw5F/cSgz60oi2eVzqGLp8K2JnvHfZW4=;
 b=No+HwMo+5gJMSd0ZjbIqZevYg1oGBC8I9zizrpwqNFYlFPH0lQlCv5DeqIdYzUn7k4CG+/4jZWpkYwfCCeJGCbwZ/LoPQuNpT+dJnBiU3Xtf1gseO/MCdb49CShzm98EclHIdSMz1nDhNeZrtF68Z3mpk/HKpYFXOc+9H2gomukAAn4x5P0yPEHzvK85r2zjRK2794uQHQGj1721mj68VQTLX1O4yWlYaJg26SAyV3ycfYkeLKqil8uv72Ud6Tp1C/i2G8Tyi8r5lGQ2N9T/CyjQbXn2MHwklGU+xT7ocAk5vvsaj70k/6sBwhpKI2YZmUXz6cKCiyym9ANEP380Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by DS7PR11MB6270.namprd11.prod.outlook.com (2603:10b6:8:96::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Tue, 29 Aug
 2023 16:46:26 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2a21:609b:312:5cac]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2a21:609b:312:5cac%7]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 16:46:26 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] iavf: Fix promiscuous mode
 configuration flow messages
Thread-Index: AQHZ1IOKrtBmM1dR10OXpMm3Fv0RxrABh41Q
Date: Tue, 29 Aug 2023 16:46:26 +0000
Message-ID: <BL0PR11MB352153E43B7600597C6173D68FE7A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230821230144.744741-1-ahmed.zaki@intel.com>
In-Reply-To: <20230821230144.744741-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|DS7PR11MB6270:EE_
x-ms-office365-filtering-correlation-id: 67c7e357-eda8-4d4c-0df8-08dba8af7c5f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kVMXJb5NoS5DPAPzIpKOtYre+dUSU465FYv7hn87pZHDENE8viASvR1bS0PoXp7rLfj/IfxkrObX3vccyVqZ8a+frZT4EUnceKYuLUlpk27VITJ1V3uV0KPQD4pt0OpUplXnpFRd+Ue+sz6lZc2S/I2q67bD4Lf+4R/XTRTND8b4+9nIuI7ivj3EE9ZTIZddAxM8zkH/Z0nD46jJAFWNpet10u0vXtCOM9rkxQTmJOc7FDKSreSUxAElUALXhpZnzEE6Tpvahtp1fy7eBq4T/8Ht9ZbRS0qAgg+6+11lYsrvvvQ66f0WKZV/htcdA4g1bnBxLnv3buw6TozCRgJ3qLcjYgAndTq/gWu1PZhURi4l7JrYN/Fz+9tXNK+3bVdSB39ApbVsIkB2+zk0VuWLE7iiENbEKAFnZ38vstnqACYjyJDx53nN3JWosMDjSvAHlr4tVGd5/zVjR+ZNpMm3bd9DSN8BPY9cNP4UbLMs3QVl8tq3WYg+Nm7DXbJ1Urs36Vv/TIAr7mhI/mV2t2p6dGM0OrrRqZQPEB4E09+beRaxCPV2mTK9CZuyBwy6a7VVZ0+9hYrUsIBPXFN4uZQw8/oe/wQ9xDgJr8DR6aTzMIbivTGeCSJEuwA2eDcM5xGk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199024)(1800799009)(186009)(8676002)(8936002)(4326008)(2906002)(110136005)(66556008)(316002)(66446008)(64756008)(33656002)(66476007)(76116006)(66946007)(5660300002)(52536014)(41300700001)(15650500001)(26005)(53546011)(6506007)(7696005)(107886003)(9686003)(55016003)(38100700002)(122000001)(478600001)(83380400001)(38070700005)(82960400001)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n8veiBcMKT63vswlM/dfglNZaf7QvgJgJR3bW9lecfkaYjb3eVmWwVoM1S0c?=
 =?us-ascii?Q?VDHwHJLNnUzQ9SSofqf6PYjgS/9rAGdY+eDsT1Wz7XryiRu3OUyZrhBAnxYq?=
 =?us-ascii?Q?Pd8hzXO7ujQwRhvJfRjejWjpUxcbwb+h8c3UwHYJxN4+P7RhRrpEkks0wDbo?=
 =?us-ascii?Q?jYiseU+0Spkn60qDO4Ze03R5qUs0UX0GnfNqISWxoK0GScVM2jaNnjQmdl/w?=
 =?us-ascii?Q?FPJiNnXeSh/KdPSIe9OSYDMScvmkARXJGjH/qy1n5Lsso493laeeRa/0dgbB?=
 =?us-ascii?Q?pJL8MTMYTyWhn6OLgUMshSXGY6xJSXqWyp2sVTY5HGKvBpRSmk44ki4d4+V+?=
 =?us-ascii?Q?FxHGZUrDhIbruynjioM5VQglIp8DaNh01EuZtt2dfXvdABkrY/IeYr6RQ69b?=
 =?us-ascii?Q?x4kXoSqcY4NXANw1zTfMltiq3eOAX+QQWfoQMBhLBfStV1EcrLPS2VuESctA?=
 =?us-ascii?Q?qoMcH8PBMstDkcKd5YWZqyRkM1Rp2HEUxROp42KoiF4t0+CCftsGqHia0kuC?=
 =?us-ascii?Q?2Xu3LjnL3Shmo0zyB5zPF64LbFgXYO8iX2Q0l7WS8lrepL68N+iXjB8aHiOR?=
 =?us-ascii?Q?6m8eclopzBr+6hgup7Q7cqgrOfNu2m9/FCbLSkfWkA6tDbogmuynqtjQv4xz?=
 =?us-ascii?Q?8mED12TAcmSOAjvdhvvPH6XdULyt30ejDpCa2xK2kCvEeLuqFmdIk8yYL40F?=
 =?us-ascii?Q?ANPYb2FKlEYOFEDt2EzvQiM7ahBD1YHkF0KRiMyLk8+3deUUnC9q6AVP8J3w?=
 =?us-ascii?Q?r3k8y2f7DqkePHJep/Ehkz1NRQajkT+5sRkZcCiN6SLy7Kcvn8aGWyLOLpg4?=
 =?us-ascii?Q?df7HmZyEhEeFyB0BeSgoY22ScoTf0bla15FHCgIbs/21+lNgnF7lMTESyv7y?=
 =?us-ascii?Q?OKjSxRQYx/Qe6Mbh+Qv+lwYX4SsK6LcaY/dp083koecD5Pk3Dwl4tAu9UJfH?=
 =?us-ascii?Q?mUjmVAgY6YWrHLfcuj++CxVVXsvWtN/X4jnfsFPNyl4AtVehnCmK0NA0iWEA?=
 =?us-ascii?Q?O6ofCZ+7oFyWGZtjQNaBqGM7M5tfriwTuWdZ1pluzzAo15OMtg2Pjfpg2YzX?=
 =?us-ascii?Q?r59odQ0n6He/GfizuyObIJaOlLwfpQ9VvMONVN2FXdxvWz06gaIULhL+Uuu+?=
 =?us-ascii?Q?+wbQxjSpK9a490IGw6NDO4jQCLA09AXgDKDhei+ILJa1snoMWe8bwg488Owk?=
 =?us-ascii?Q?9PTy2UatUwE880Yr09aA6Ysx4FYB1LM/dtGXOSRhdSfsuWa+8WI2TesBqM2b?=
 =?us-ascii?Q?TO/sqOBEUkIADk+N9tEANMzST0IgTdtmCEC3YYkSTzwQmtZ/3h3gcNAAW2An?=
 =?us-ascii?Q?YVY0uR7tk716/diH1/fRn/1m57Gn9B6shkT2gpju/TzMAI2FEFwUG4m3tFmD?=
 =?us-ascii?Q?d9m4GJvYHevFKxmyDuESj9h53z7C2s6HbBm/XCKfmU3Q+dGDgGxkB35hmf9y?=
 =?us-ascii?Q?zy0NKFB9hE+G7SbkwiAj2oNjB/nurB5Cd3sZOshO901+M4gQ+/0RQmlmLjnN?=
 =?us-ascii?Q?RqiKvDQtgem6J5U6GucJ3iL4r2f3ZPSA2ajqogy+uOVXajCX/USgxK3WZQ3N?=
 =?us-ascii?Q?VMKYQcMuxpw3Y3ZRJ3cE6/yC94GWrVx5SxbKixyjHuRBYYXzOgpH5Iqt+x9n?=
 =?us-ascii?Q?nQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67c7e357-eda8-4d4c-0df8-08dba8af7c5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 16:46:26.1907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XoOjwxHcjUSH4FNTg8EZjHBXmEgr/6g1tlnG13rnVxzcSlDlNuepIABpZG9aQj7YaBWP6Iv0ChTvxpaeHz0jWyaKca0M40k0q4WzyzBfWQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6270
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693327801; x=1724863801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OH7c0LiGKj/axnZXkxEPd2U3Uw9QxZJfmBHjiZL7JoI=;
 b=DylF1tThHt/sntvryNqS2SthGcRD58oFeBhrfIkgrvRKAGn6HzMgnUnx
 Rtj39TsgKjaPrXuuaNwhGm6AMbEM/XAN/sHSnd/JmVUjp/jYuGdIuSIHz
 whhxZBmZKxAfQs5YojKDYh5pkhOCgpgT9vWjzgJSAluOp2HK01SNfUKOH
 OiLS3PoPOwjL9dYJEM/OivOLdIBuguTAPentkuIa/mW+VzneEEUoTGXJy
 7mTSf8GrqF7m2Ajp4jIDa9ctS4yQmxAkQxRB9Arr/Vxw1JElFHVpVA/9Q
 h/MO7gLjeuBdFdt16e6HAOXqkw2edK0v+LfX/GdUID5k47gYgNRrzekyV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DylF1tTh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] iavf: Fix promiscuous mode
 configuration flow messages
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Tuesday, August 22, 2023 1:02 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brett Creeley <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] iavf: Fix promiscuous mode
> configuration flow messages
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently when configuring promiscuous mode on the AVF we detect a change
> in the netdev->flags. We use IFF_PROMISC and IFF_ALLMULTI to determine
> whether or not we need to request/release promiscuous mode and/or
> multicast promiscuous mode. The problem is that the AQ calls for
> setting/clearing promiscuous/multicast mode are treated separately. This
> leads to a case where we can trigger two promiscuous mode AQ calls in a row
> with the incorrect state. To fix this make a few changes.
> 
> Use IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE instead of the previous
> IAVF_FLAG_AQ_[REQUEST|RELEASE]_[PROMISC|ALLMULTI] flags.
> 
> In iavf_set_rx_mode() detect if there is a change in the
> netdev->flags in comparison with adapter->flags and set the
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE aq_required bit. Then in
> iavf_process_aq_command() only check for
> IAVF_FLAG_CONFIGURE_PROMISC_MODE and call iavf_set_promiscuous() if
> it's set.
> 
> In iavf_set_promiscuous() check again to see which (if any) promiscuous
> mode bits have changed when comparing the netdev->flags with the
> adapter->flags. Use this to set the flags which get sent to the PF
> driver.
> 
> Add a spinlock that is used for updating current_netdev_promisc_flags and
> only allows one promiscuous mode AQ at a time.
> 
> [1] Fixes the fact that we will only have one AQ call in the aq_required queue at
> any one time.
> 
> [2] Streamlines the change in promiscuous mode to only set one AQ required
> bit.
> 
> [3] This allows us to keep track of the current state of the flags and also makes
> it so we can take the most recent netdev->flags promiscuous mode state.
> 
> [4] This fixes the problem where a change in the netdev->flags can cause
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE to be set in
> iavf_set_rx_mode(), but cleared in iavf_set_promiscuous() before the change
> is ever made via AQ call.
> 
> Fixes: 47d3483988f6 ("i40evf: Add driver support for promiscuous mode")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
> v2: change Author info to Brett's
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 16 ++--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 43 +++++------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 75 ++++++++++++-------
>  3 files changed, 74 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 8cbdebc5b698..00552a1a19c7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
