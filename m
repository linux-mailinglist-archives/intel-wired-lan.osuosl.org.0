Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3231948042
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 19:27:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F1FD60777;
	Mon,  5 Aug 2024 17:27:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RySlPj0w-_ge; Mon,  5 Aug 2024 17:27:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A2EC60747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722878860;
	bh=5wCt8FbhVfKGClQWrEninBr86x9AJAtj2KDWbVRcKRo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cbNGrYxfmtSQ8DDPQy3eRiu9+L7+pXIKdxOZN06ctbmDsCp9t7hTBE+g1NmkVKeno
	 j7z/9qN7OniSRrodxels1erwgQivl+BGhuP6cVgfvvJLa5Y8kDZx/Pd3/VkC8mNkrl
	 kSkTmw74yUdsDr7NiLjQ+lrFfCCbhZTgPc/uJaGmmaJ0QgchTtls/8VFyoMLCKRJBc
	 +8nf94dIslmg49oXv2kwytTMo2mE2VoGrx91GgWJ0Z5yX5yEJehCqAJug5BOhBdZC4
	 rX3vOYbtVoIxzEwPgJmF574rIE88amjFHSouqtvL2ddhhJ/6VrdxtYT860QIk/Be5e
	 0cloJDijz5+Cw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A2EC60747;
	Mon,  5 Aug 2024 17:27:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E684F1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 17:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D297A405A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 17:27:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zj0Y8Mn62X7x for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 17:27:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8E1A640231
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E1A640231
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E1A640231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 17:27:37 +0000 (UTC)
X-CSE-ConnectionGUID: 7tk4Uu3/QXKxYmJR+VNVVQ==
X-CSE-MsgGUID: ALwjw44UQmaLqEVZfNOU7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="32264752"
X-IronPort-AV: E=Sophos;i="6.09,265,1716274800"; d="scan'208";a="32264752"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 10:27:36 -0700
X-CSE-ConnectionGUID: IzsvU3ZcT6KaO8wivsKweQ==
X-CSE-MsgGUID: lcH3w6VCQ7KPhwsIMECB3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,265,1716274800"; d="scan'208";a="56444340"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Aug 2024 10:27:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 10:27:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 10:27:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 5 Aug 2024 10:27:34 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 5 Aug 2024 10:27:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VI4Ta+pwlpGQ3UpzD5BA2IeyosDcpninOjiVwy1k/8KVKoUI09EFQB0f/bp5WWBOkuFKxqIs+vMINknlIU4DqdHAF4qqRGyIJr20rAJ7+IcRQl5bfsQETTy1uwJ5YZ7tOZB3oo3Rhv8D1kMMhhpy5blYZ/j+bvRnzildBvIroIozZppJMzchSqq+udHxmTDEvcaFCdRg+J/kWfHhX0xxiQ63jLMTM8thiunnpYhEO/dEyvaocLBGkzd5+MYvhP2UApNypq6EfiRLClvPpgVHghlYHuW8r8nkCwyxKvFdEpkTtT9arXXBixLakufIL8ajc5sV0azUP9XF2SoD1ZqOvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5wCt8FbhVfKGClQWrEninBr86x9AJAtj2KDWbVRcKRo=;
 b=lPmPu6tIkvgEAbN6pdVIgKFVJGRnkA4rXzej5bgZ4Av2fw9ShwdShOb0q1+SH6dpRpHajfkmfPkt77nXJrFDTrumlbgtzJPMotHYATArEIxfgv7oax+cklkS+QcHCjbi7cnoLAxENsrn8BmGtyxVmtGl3KyGU4cya/f7QuuHkAB3epYFiMS5Ob1a3eBbAidoWxrB1e8hV/MgLTN9bYtuLO/hXbMiSQW37UNo2GcYvUmKeBU6XLXC0Ylf9KN3UaC/0sdroH7DhMuXlj0bWXcxQvYdxMv6Kp1sZGve2TEWnaAk8LEiJJBlC53h1jT0Whzti9O+L+p0r8WLoAsP7mX/uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5924.namprd11.prod.outlook.com (2603:10b6:806:23b::14)
 by DM6PR11MB4628.namprd11.prod.outlook.com (2603:10b6:5:28f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Mon, 5 Aug
 2024 17:27:31 +0000
Received: from SA1PR11MB5924.namprd11.prod.outlook.com
 ([fe80::468a:436e:8691:6d66]) by SA1PR11MB5924.namprd11.prod.outlook.com
 ([fe80::468a:436e:8691:6d66%5]) with mapi id 15.20.7828.021; Mon, 5 Aug 2024
 17:27:31 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: remove redundant
 'req_vec_chunks' NULL check
Thread-Index: AQHa3hDWyIBv5ub/2kCZRI4kd7hjJ7IY/RMQ
Date: Mon, 5 Aug 2024 17:27:31 +0000
Message-ID: <SA1PR11MB59245423A6C306824FABE629BABE2@SA1PR11MB5924.namprd11.prod.outlook.com>
References: <20240724212940.2819-1-pavan.kumar.linga@intel.com>
In-Reply-To: <20240724212940.2819-1-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB5924:EE_|DM6PR11MB4628:EE_
x-ms-office365-filtering-correlation-id: 980132cf-2b2a-4ca8-23fd-08dcb573e308
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qu/CQZzMsws9WwHaYh1od0w658FheD/06dG8gIkMtQBA6/tp8B4Qf5QjIajJ?=
 =?us-ascii?Q?P7j5pFJiNY9PS61qiU0qYngMmbyJ0D9GP1UkMcT+h+/eVKHGPbpIdLsZNhq/?=
 =?us-ascii?Q?YLlNvIfv7e190xQ01uxdM45gmUYQeh0ReL/SjFuczpkaYguShw3Y5NiXjSFW?=
 =?us-ascii?Q?cpuZA0CBH20yqix+tMWhH3RY2teLGO0gASniRCiAfniFLKBDVt264+Qc/4pi?=
 =?us-ascii?Q?ok+N3YX4qXZg1Xj35COHe68X+d7HxbCS+WxM6lzSatjx9EqIHUFCKALqneYN?=
 =?us-ascii?Q?i71hPpaGey1D/TXrn6AyqydaYBP+FMeSh7exJ2P9t5dgkoElNY9u/lLCVQRX?=
 =?us-ascii?Q?mWVFh2d44GXx2Ba6kVHjmXUZKq0mAH6/0zz7hLI5NyQsbZqg3dbe+849H71c?=
 =?us-ascii?Q?/RGz1IZ9lW95Jd3DSVpH4oBvriM/1HXjCJVesOLiiE0o83ZvG6Tedcr4+GN0?=
 =?us-ascii?Q?5S0fHWBFxSfxQHOsO6R3Gc3wieFHN/jSAVse6madDQeIbbnLJXcyOaIMx98I?=
 =?us-ascii?Q?N56g5a3/poU2jEJOcDThFPzwBTIocJSK1wfeKFbOX0c3lm+wWAln803v1ILc?=
 =?us-ascii?Q?IRAeIGe5weATnGG0rbuH9MkhwZmmPntkW+HHS34e9bO2KKbpPC1uaiteZtvh?=
 =?us-ascii?Q?BWWM1rbI9tiZXS5NYAIepUfQ2QRFlh6kERliK7SyCZwjyUV9PNz0eTCcnRc+?=
 =?us-ascii?Q?/+4tqY3pY9qvY6UQyutm1zMAhynRNqznY9uq2dBTLR5zLxB3LBgdnVYhzU5G?=
 =?us-ascii?Q?u9Twpm6j33PsjbxCU0c7wfYD9Gq/HVadklmyGrb6QcoIRl4otzG7RBdw1iyr?=
 =?us-ascii?Q?dmVvfVeO2rfx47mwvP3xV+AH4I9i+ADCifj1vPdqib4UVc+ERMh3lF5B+UEA?=
 =?us-ascii?Q?wewQem3+MFMSBW+iWb8nZfZcJgH3pbX2S9py6wHoRWaWUcR37C8ia1S2FItU?=
 =?us-ascii?Q?WXic7NbyTasU0qO8QEopfmKP6MhJXsFpw0Y+H1uKmKoRHOwnQE8s6R0CAU2O?=
 =?us-ascii?Q?uP3LPkFTtble2lkL51fxvF8jzCGP9+p1ICytkZtBeijziy//BUaew2MNEXxg?=
 =?us-ascii?Q?0HIrDOpqDMLTf3cyt8cwS7mMgMM1fTpRIaY1USlYgsNx2wwJJIk7wW0vsDY3?=
 =?us-ascii?Q?BXAZ6lGWLPnDpDNxQbSi1ThF2AD3WGYsCesrjCoQK4pTiYcupB+DXyss6q8t?=
 =?us-ascii?Q?Tp9FoKmDpxI15AYGymm1wRvg1YPe/st8E0p5/BGoBuCiBhkskYgZbfQSIuDu?=
 =?us-ascii?Q?AWYxj/hv3fdSIJ+tWilH9cJOrgnwxfTXoIeCEP+nhW4gaYqSNV4pkK+aRKSA?=
 =?us-ascii?Q?WGXOaRvWU2yUDOAMngrvXko3LP/p7Jw4DggF2BRUGSCW+cnQ+5XUihR5PJ4b?=
 =?us-ascii?Q?Z4y10fJxOqyOLPk9CBazCgLTUcCb1bFkRJqZs1qBKQuFGC5/QQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5924.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?crdPSrDndazWEff2TkdyFjDGRsfjrXSL7LvQiXCyPHRthDmDPtMHT0O1oiqG?=
 =?us-ascii?Q?fraHib+PiKkrdj96VqKzvZki6roZYdsYuYmjpz1949l44VwdWBkv/MgoWnWi?=
 =?us-ascii?Q?avzaPqJMLVxCMUJ2FpjeM98GOaQKD/+cYdZ1uu8QV+Pszo9kLjzoK2LnDcb6?=
 =?us-ascii?Q?cRlsw1R/bOWe+j6396GcMY9bPALVoZ0xM4Wund8fR5SaHOGwNroX5bYLczzr?=
 =?us-ascii?Q?4ST7/u/zYuG/V0aRDNXez0bKqY0QgpwENSQDbsByO516S4stdylXGSUsKEtj?=
 =?us-ascii?Q?CwGVnENe9I3UtdNsZ5aVFDkAt/BWTyreE/JFLB1mncQKqSdtcSBXRvsfmV0B?=
 =?us-ascii?Q?jlaZHf2KzPxh1M5+6tTDekwkSTgsfjngIFsj2TkCYrIwVmkc7xzyP2WW3OW/?=
 =?us-ascii?Q?QdmnFgZIQsFGzQKAO3sTIkb8N6hZg7JL5gURA/8QuRtZ2s2NikgoQErekodF?=
 =?us-ascii?Q?lGEoi+YMHTvFC78Bj/JKA90YU8PzxwS3IrG3wjP10TLGJmKEyIzgC84//Kzn?=
 =?us-ascii?Q?t7GAv906fuM8mtTqIYbC9ZnNWYUEHUv0Zt56aQqHEjx/n6oy8DKp9S0CfW3W?=
 =?us-ascii?Q?JDOcS3ukcfj+E17+6FO04jTXKmGWPrUDGvJDzB1+ZfRchQwfSz3lb8LMXSiZ?=
 =?us-ascii?Q?bbwijqMCezmNzrYj0L4Mzwmi2nVR8z66rBW1k0qCth460Ta2MvmANZqzqdAb?=
 =?us-ascii?Q?AC9uFsIJSy5+XWSL3DWRCqLCsQ6ehL4+rE9L53qg65MrvTg9Kl0z/4X2hzOX?=
 =?us-ascii?Q?zW/ooU9vvubg8f2hEVQmgboMF2Avwb+JjkyqKtSe0Y2feW49PwWOfZVY7anT?=
 =?us-ascii?Q?NZN8BMI5IEx8tKmSuLRrm2mj0uOIRHpNDcyNnonOoget8E5BXR884Hqormpi?=
 =?us-ascii?Q?WURc3hm0OKIRhukJmrDou7xL/lISFq5l//nEzTPp4qCwDD5UJJC9USdn8tSk?=
 =?us-ascii?Q?og9v/2mp158t+q5ty9jorBw6HwXcAsNjnH5KJsyMyZOtblnedg7RdknyE7Z6?=
 =?us-ascii?Q?dlAXK7haT2xLe57eH9URy1Zr+tu0ieUACZnfvNNhkjjAt2LACFrFrUAlJ1A+?=
 =?us-ascii?Q?IkZrL2Gw2UFdWp+Vepg2lU+WBu5YXkgcJalnw6rktcx9dPTRFeeJvqq8tdsl?=
 =?us-ascii?Q?3zn1SgBxyHJvfa6Hv0vxCnRvrV+Nh1q/Kt1oI2ykYjtb/Tjmzv5f9DutnX0H?=
 =?us-ascii?Q?uDMS/brhMUz0jHZQrDf2Zms8cS6pywB7psmh+Y7wQkkOwCaQEdJW2dvcSAJB?=
 =?us-ascii?Q?5zwmvAnlF/RB8hej57RLOPE0YEqCU76pRUgTIv+FsPKv2rga/PZAbRFbvOZs?=
 =?us-ascii?Q?AI5gJbFXPwSwqMZ8yivU+uOLIFUMt8TVvbqMGmR66IieTPGQKCqxcCID+uA+?=
 =?us-ascii?Q?yYqrgFSp0PvHYCqxGHdcJlzPKe7ti+9fadZmWVsY4RUejb8FrDJKtNWbBv30?=
 =?us-ascii?Q?sWA+MWtuHs/UP/xrutTkGIqFmVx37FF4OPON+AhffdLSHI3tbiz4QEJnamwS?=
 =?us-ascii?Q?+iaJa2up4ZwfWFpN5g0zjsj5QH8tu0DgWj+a4MeM21ezV5k5ay0kuganjeBZ?=
 =?us-ascii?Q?xuVmgOdLhYJdOnLi2N6MkKB3HgdjNkdjDHxjmttSOZd+WshT0tj8xGEaWxJO?=
 =?us-ascii?Q?9A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5924.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 980132cf-2b2a-4ca8-23fd-08dcb573e308
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2024 17:27:31.4518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qn/0+4PXvTzLbMnRFb4F1I1sY2hw/xjArHOxN9aH5/ZbXG/z9sGLdmdUzTw3re9Y4AfAVcLDhzdyunk4D+nk3hWS430mN5nY8Re8XdBdGi0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722878858; x=1754414858;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HaVrjfp7cCq25ZHuNIlf2rQCY9MvLfEyJuKsOH2dkzc=;
 b=Ia/gn1jJ2uy0q4AuqOuLF3N16YLP6pPCJShgGEBQmYAXnuZi/EioLoyX
 2iLOESxemRGcLeSz1xc/VEh3lxegOqxyz/x08gF1NvqOOz2SXMdedDPjz
 AVSKcey8pRHnIRev4lFdPnWlxv30mZ/jw9bmyzird9E+TmVWtglOoasRO
 +7pTMhci1MvwB33GnFs329EP/8H2TjDfa64XyrTINLS40xt/62p+0ZMUs
 iy0oimRJj3F8jPWlTqvxJRoJjU/hXrqNz/DcRySEQplgXyTArmmTdR9I3
 GUPPRu8nAYUqiSE1vWRf2igJm/LKI2BmcgsJ4ZZWba/GzVERSh4PZpju1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ia/gn1jJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: remove redundant
 'req_vec_chunks' NULL check
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
Cc: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Wednesday, July 24, 2024 2:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Linga, Pavan Kumar <pavan.kumar.linga@intel.com>; Dan Carpenter
> <dan.carpenter@linaro.org>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: remove redundant
> 'req_vec_chunks' NULL check
>=20
> 'req_vec_chunks' is used to store the vector info received
> from the device control plane. The memory for it is allocated
> in idpf_send_alloc_vectors_msg and returns an error if the memory
> allocation fails.
>=20
> 'req_vec_chunks' cannot be NULL in the later code flow. So remove
> the conditional check to extract the vector ids received from
> the device control plane.
>=20
> Smatch static checker warning:
>=20
> drivers/net/ethernet/intel/idpf/idpf_lib.c:417 idpf_intr_req()
> error: we previously assumed 'adapter->req_vec_chunks'
> could be null (see line 360)
>=20
> Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 23 +++++-----------------
>  1 file changed, 5 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 5dbf2b4ba1b0..a56ea36fa8d5 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>

