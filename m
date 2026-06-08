Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OFEBFZvxJmrFoAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 18:45:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CC1658DC6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 18:45:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=0edTSV9s;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE14361307;
	Mon,  8 Jun 2026 16:45:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6XtLluQWjn5A; Mon,  8 Jun 2026 16:45:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54CDE61420
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780937112;
	bh=Evb/6w3sx5GhwjDQR++/EP9OMqqdwicwC/ZUaVoZxSU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0edTSV9s8aQ6ucHuxL4ZZv8jk42zWChf3GkJsF7W3H/nx9oEPxGhmwtqlM5xuYI/Q
	 RTEuGZ5oQRMvm7AqnneON0gvX4/RI5adnpg1zO3pzJGBU+3nkXCJZxjMcMFOnnhYfT
	 glPWWSm8oDGiYZAK89a3Ye06/XCFljoL/gCr4GLJi46oec97KCk1E0d1ZkUfPeDZLP
	 /hWaJWhpEet5Sp7DR4l7Hi5pjHS3uzK2eKUH35tqop5DqE42bH22vYzgVKLiO/Toy8
	 +IWssfrjdW8WlenpLX4oDg+0sr+4KW7zdz9YpSoVRr6D/duv2hFTZ9KVKV6zJiaSMp
	 zNMRTw52uNDOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54CDE61420;
	Mon,  8 Jun 2026 16:45:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D63532C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C769F4076B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:45:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B0W3Dpl6pXuQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 16:45:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 277D840753
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 277D840753
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 277D840753
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:45:09 +0000 (UTC)
X-CSE-ConnectionGUID: zCT83t2BTwObNr6F87KzVA==
X-CSE-MsgGUID: O2B7B3KQQWW7RuW3HiIINA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="92003591"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="92003591"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 09:45:09 -0700
X-CSE-ConnectionGUID: PhvOiC7jSPCaKwm2PJF4lA==
X-CSE-MsgGUID: zhyolTLBTK6W3otkucnBpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241438057"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 09:45:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 09:45:07 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 09:45:07 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 09:45:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xvxf1nOiHIUsnIHHOIEnP3rOFoDBT9gBijggzZLrPewSWVXtnz4l8wW808ZGtSGj0wPmMJKZ5JBvKl3KVwd2difetiL/uZdC5M0y1VUGTGXF2xdK6kVv0QjGLe2LvBmjj0bEjGFQjWwoIPkIcFq7z/jsQXMtTdCWrxQSqO8BAj4VODOOjWm8QqbAJxTlw1GBaNfhB5LD1SYXhW+ZNwykHs/GORm0kRv6JfnxM/d0TzNMrxXh55tpJVH3NZZ/VGd67iA69AN2ozbzoxfgEZ+qifmDQc2TlrJtd0R420sm7XBKbbuYZ4ZknYA1RbBev3Z6bAoN2OkPsshsTj1TFKoORw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Evb/6w3sx5GhwjDQR++/EP9OMqqdwicwC/ZUaVoZxSU=;
 b=oab3TSYAhzvmql9qrCpBZFx9+uSNNV8WuhO8l2pbB1GHY6ROYnFnp8G6sZog/9VsXVqlZtW4worPJGbCbTbAv1TF3hdXZPXTw9m3PQoecTOrq7fwGUE5CRu2AOU78QqIE2HFxtNRsf3ikKDL7ChFSQS4yN2fZnLJUcfUFvyWQQU9ytO+bxc2h3GbHhJm8nXA4RLYKkSoRiIc9Op5FGfiXVQRr/ORC5Y6GW/gRq7LIan2ghSoFiuvSqgD+BUG+h7TZlFl2yr8lmRuaDmKkZbTdOr1g2L3AAdhEddKiHKWWPcKdWujC89dT+w5JzhG6SJOEaG/UelQu+RKAlZmDreIIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5394.namprd11.prod.outlook.com (2603:10b6:610:b9::14)
 by SJ0PR11MB5182.namprd11.prod.outlook.com (2603:10b6:a03:2ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 16:45:04 +0000
Received: from CH0PR11MB5394.namprd11.prod.outlook.com
 ([fe80::fd22:b4:e353:a968]) by CH0PR11MB5394.namprd11.prod.outlook.com
 ([fe80::fd22:b4:e353:a968%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 16:45:03 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH v14 net-next 04/13] dpll: send delete notification before
 unregister in on-pin rollback
Thread-Index: AQHc9qx1NFjzwLHO0UybGgXLqjNeYLY03iNg
Date: Mon, 8 Jun 2026 16:45:03 +0000
Message-ID: <CH0PR11MB539452AD940A13941ED1E6D69B1C2@CH0PR11MB5394.namprd11.prod.outlook.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-5-grzegorz.nitka@intel.com>
In-Reply-To: <20260607183045.1213735-5-grzegorz.nitka@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5394:EE_|SJ0PR11MB5182:EE_
x-ms-office365-filtering-correlation-id: fdf0b148-7db8-491b-8f78-08dec57d4a25
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|1800799024|376014|38070700021|18002099003|22082099003|6133799003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: +ihvAWiccH3H1nlmme6PsNw7xOYblz9a4HfIaS2T8LD26WckQZFy8oThcHfL9Kaj6URUvjPQ1xwQAmrJp1I+HTnPihK7xkL04C9Jq4s7n8XOWFh7+kkQXmQDzlvZfNc6JS9vpFnMWUEvNQamjMLUFmD9UoBagIy+NGlSQ5/85GpNzWNO3DLmT4Xnm0W74IBMx3ZUvpd3g5cqd/8355Jg1QQFfVK7G+SD8jbdL0JXJI4y/mgcolk2Jch16JqRLXelk481QbzbYy86L/lLf4QDrb2hRbk08zF9gV8Hsi8oUcUE5Xxo2Y4lHjk6t9593+sSltdZXxT66o27nbG57cuZqz3LunO4q2Jip/Q6cHVDx3EtZxEDau1AGlnTMQ+gZ0LATY1RqwDod9VRVFBKQHMtO8YpnUXPOIj5WfVr2ojAyqCV0x0RZBRgrLaKugEYX6Y0EhKR8ADNyAL+m8vuJ09GtDv7bhVncQWM3G9D0lOgmvA0E6tv3XuEFf28TA7v6vTqXcFDjg7iMZ565iGdt/NCHcm21r3g9sZBx5DAWgSHgaMA6lP0E7zEUz11IH7i/RwO6s2tFMuruBi47KtyanQX1V3W/E6+HMvDXt+HttSWriZSoqkn/Aaf3pWrIpwDXbQPUS5KMRCzB/K8tS/ZYr3vL/QI8m4W15DvjzAOsVM/1RuO0s6Xq4aqrs8HbD3JbgmwgnFhsd+L6tDkJkk9RlK5zeEs2wVruC3hDl7Re46uU9ArtbZ2aDhz9E5Zn/NWiRUD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5394.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(6133799003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?izfTV3mpZ80LUkcnqd4An5O+gjkzasNoaCTnSiwxubPZy3klZ4B8AmUCbi8f?=
 =?us-ascii?Q?Q/LJoiAPg69SLwuqhAX+LGWnnJFIcHdHEx5qi6PNt/R832bLObz4W9a8Ftrb?=
 =?us-ascii?Q?QqK0hP3eSgrrC37A0fxriYcZHD3Wb94crEyhGzzp9n4SBR5kK3e4V2eqqsc4?=
 =?us-ascii?Q?2N+dD/g1OLVznjcTD4QX512CsaGkXr7FZjALALB+OqsaJ58x7GPjzJy/6lNp?=
 =?us-ascii?Q?wkJ+yrDaioofZSQo+og42+gmrFO15GSN8KpnxFK4g8jR6bwTdWXLXj318aQi?=
 =?us-ascii?Q?5VfmGYSAoobWPakiwR1v6qw2L4eggm+BMv2MOg3jlV9GYdRoROELGkcIpeK/?=
 =?us-ascii?Q?Hko3AHBqAT3hdO+uMfbVTqr4xc+/WzTsi16I4Ctyb9ZKEVHgAJh86ufa56wf?=
 =?us-ascii?Q?MOpDEgKDznd0BjR4zUGBB9a5KyPpYRwAWdnG0yObEFUdJBIhhpZfzyJv26d3?=
 =?us-ascii?Q?Mmw3U1qkgYht/8xUU2q6sVtsp0mQEbRB3AzD+SnL0mg8kTpS3lzVYh4X24lf?=
 =?us-ascii?Q?zSiIIN1WkMW/4s2uOXQzmxIF+/fLvHX7eglwr6WeHDGS4ue/4n90qXQ1WE99?=
 =?us-ascii?Q?Kg0tvdClePFjEjt2s9ptojBAP2/tC7pWYCL9/QdfHUSTg5lzpd3EXIW01NuM?=
 =?us-ascii?Q?XVuNBQOfAWJbKIvKr+6JIa27H8X/Zx0gxMY8oAbwlbagxKftus9eYNnMlSdl?=
 =?us-ascii?Q?+roLgZgEhGYO6lG6YHpXZmyeGRKfnvSvHajMis4Eat0vwlIiAhzM7hbNrldA?=
 =?us-ascii?Q?da4rzmJ0PDqZohj6WbA7jwQYI5qbQrL6Qj/07TDHX3agAn3bPDs/thmhUCjT?=
 =?us-ascii?Q?3LbFXRz5blHqTITw11EAzGuOlxCqapRuNI76P+2Z57SD0tGA8yrMtCN1lMzV?=
 =?us-ascii?Q?dou6WHYP8N6qbXzEMEgXA7v4+KiH0F2lYelc1MN8IDZWRooxu/OW0nv89Rxy?=
 =?us-ascii?Q?36a7Aa8nI5GyxYz1Y+Y9rjRKPGinj/W5192CQarzx4ue4xXV4EKOMJb6GWRt?=
 =?us-ascii?Q?q2L2W6cYYbnt0Qg0FzEuWQjzGF12SMIZz739PJqbMJocj3RvgH4nJlLCmYRk?=
 =?us-ascii?Q?4YiDv3nHdeOyAgjuushcBs3Brj2l9SFBb3acIdUIH8sYHo7MMT0UHbJqBriQ?=
 =?us-ascii?Q?ndZGK6Qsfyf5DP93zzQM5VN/AQmQvjcaOfhkdX5l6XF6CQ3iKilh0+7K8ZVm?=
 =?us-ascii?Q?oMgZF0JRAK05rIvmBfMl+kH+oCkaKMCn8d0H5PhbjHZJOBNc2OFvnWjBbr4y?=
 =?us-ascii?Q?HOs0EebFskiO51slEwa3p58aqSe7+ukMoC8cRQHOwABcRNe44bur9wTmbQlk?=
 =?us-ascii?Q?VaMI3aYmlTQXnJFxAqW/gWMcROicEVdmYZLSB8cnO3YXoo7ZaLc6MxcEWcME?=
 =?us-ascii?Q?qFc7UfgZEDQVm+xuUXdPqCxhQXVV8N4oH70trQ13c+g8TPcPNjRBC4MoiX7y?=
 =?us-ascii?Q?utBq/8Ciz/W44ovaMjnFHJhG03VVcnAFcmi7gby3F0kxc2NmkkRsf7W2Fkbz?=
 =?us-ascii?Q?AtH63pJnGbxGyxRrUC6V7T6jOge3GMQTf9+X9VDbzgGQWOEj45vVaPEyJPS4?=
 =?us-ascii?Q?HBqz5uPbzg/OgWJQW90ImUshH5mvgDT+hpCRm+o5waPGje6DS06w5jemGHbB?=
 =?us-ascii?Q?GJ8Qlg+CDCuf9Mr5AWzQdJsWcEE7tnNPcDJT9vBYNhl1XKXx1H44KTOqGwSp?=
 =?us-ascii?Q?CBB71qXLqjfhACXr/uJbumuY5L8geKFEtOEuA7KANTXJwxZodmt5H0GA3wdf?=
 =?us-ascii?Q?GehkaRKDF4UmiPDRTMM9J5l7n4rPySQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OV66gycHLfA5HwJxSildxFhnI1e7C2hyhVXvuqckudsCVEp48vpJXTwXjMqKTj5M7InGItPFboLnc/ckxEfOeq3QAr/UEcolcO3AFMBVq4Aw98OLasK3QCOHycQq0cI6ozlSMASU5HCw5l8TpTVgRInzmAXYw7mmwHXlDoL+MY6TAcE44tsC/Xs2c3+XZ2V4BruYDfG5I7YA50mbLWCnJ457y5YScpD/ESJswwjWW3YT88ceWBKJ3+dQHf78V+Lo0xRpa5iGHAQr5tw6+ZWw7iwkaxfWqMo7H7UobsjcoLQajvi1g0uV7KzmbDd2FccN9PsLsR7qNETmsdTu37cpdw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5394.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdf0b148-7db8-491b-8f78-08dec57d4a25
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 16:45:03.8580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3kuybnYgw/axYoAaFc6zJ7556lvFg5hc9wCJZ+5pUufAzJmW1OQaWenA232aTZM9UYMM78yPNWlEZxlSTH7cmLpyxswZdibCgExk5sOX5o4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780937110; x=1812473110;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zBKm7D+jHY48NmZt1UDPIg1KXqsrdm+PCnfuE6G2MgU=;
 b=b9+ns17LyjeyIrPDeN9dFAeMgUfZp1sK48lPom22hP2II5eJ9CBpWO5A
 WGlSWx7e8JzqrGiRhbHt0oN20n1uFcEBjwx6EzRuA8vzC+HmcLrL0f0OJ
 ntaGCPsV4LFL5l4I5ivy/OKxcCZMtTEm9wZoFk4ckPct6pIM/1VsJi/kd
 hpghwYw/J4nCdW4qU1fgZ6/8pjCPNyxk48MpjMsSZtW2G0P5Ow/ZP04lk
 IUuc9ChZQMVAveWw/GaqHRLkrkOxwjPYyrR3SpaOtg18tMAdi9nJTVd2Q
 NsqJMcKxR34gNb5ze8I2dI7MbTnahWLw/mdmQCUkSDXFjxKZeThycsieV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b9+ns17L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 04/13] dpll: send delete
 notification before unregister in on-pin rollback
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "kuba@kernel.org" <kuba@kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54CC1658DC6

>From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
>Sent: Sunday, June 7, 2026 8:31 PM
>
>The rollback path in dpll_pin_on_pin_register() called
>__dpll_pin_unregister() before dpll_pin_delete_ntf(). When the
>unregister dropped the pin's last DPLL reference it cleared the
>DPLL_REGISTERED mark in dpll_pin_xa, so the subsequent
>dpll_pin_event_send() failed dpll_pin_available() and aborted with
>-ENODEV. As a result userspace was never notified of the rollback
>deletion and remained out of sync with the kernel.
>
>Send the delete notification first, matching the order used by
>dpll_pin_unregister() and dpll_pin_on_pin_unregister().
>
>Fixes: 9d71b54b65b1 ("dpll: netlink: Add DPLL framework base functions")
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/dpll/dpll_core.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>index cea7e2be2cbc..80195f3a84f3 100644
>--- a/drivers/dpll/dpll_core.c
>+++ b/drivers/dpll/dpll_core.c
>@@ -1007,9 +1007,9 @@ int dpll_pin_on_pin_register(struct dpll_pin
>*parent, struct dpll_pin *pin,
> dpll_unregister:
> 	xa_for_each(&parent->dpll_refs, i, ref)
> 		if (i < stop) {
>+			dpll_pin_delete_ntf(pin);
> 			__dpll_pin_unregister(ref->dpll, pin, ops, priv,
> 					      parent);
>-			dpll_pin_delete_ntf(pin);

Hey Grzegorz,

Since patch 7/13 this is already part of __dpll_pin_unregister ?
The call should be removed at all? Please make sure all calls to
__dpll_pin_unregister(..) are aware of that, also maybe better to
put this all related to one patch?

> 		}
> 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
> unlock:
>--
>2.39.3

