Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A67DAC0067
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 01:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E25FB83B7E;
	Wed, 21 May 2025 23:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8AXGtWJFpkVC; Wed, 21 May 2025 23:08:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B8728333E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747868921;
	bh=jqpSQYLwlaBp9BrMONmSRS72PeQePV3OVGgspyOOVVE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wO+uTRZBaz/1wZD2UvX+Ag4HbXJpQJorIndui8ohYd0mQ4ji1cv4jjJGfarub+Z4R
	 NKcoPBDZldAhwkCBAXEq3Igg/vW81ehgCSPMTtxrUnWediTQ3GuLOCBEkqQLcOQsDh
	 W2M1rczgFwVEV+vpHRarSd5UIKD/ylDPIooH4Z0jKt5QiLkdJCMpHaGlohQt7M++Je
	 y4mDOHliAf7T3yCw3dHxaEg9d/rU++bFOunc9jAoKYrnX7sLXHLmWcjtKvSum2viNE
	 Q7EkSapwvB++eA33WAvfydSxE3YxOeNCKAjwhgNHKR8maRo7QdsSnyE4bTr2fG6/Mm
	 TV4glmrNbHKIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B8728333E;
	Wed, 21 May 2025 23:08:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CB9314F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54C4E81934
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:08:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h8Mb8CEWbRla for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 23:08:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B35F5819D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B35F5819D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B35F5819D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:08:37 +0000 (UTC)
X-CSE-ConnectionGUID: R6R2T7sURVCw8aYTtHgI/A==
X-CSE-MsgGUID: Q7QLrXr6QDWA1bTa6oNPUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="60509721"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="60509721"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:08:37 -0700
X-CSE-ConnectionGUID: /SRaznZDR/GdHWydpBNZOA==
X-CSE-MsgGUID: NVZKkwNhRHy6PFbEVQlEWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="140142537"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:08:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 16:08:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 16:08:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 16:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JkT6wzyPM6lgr0a9oFlKHyGfPf17EaR9EsQLmFXJ2TPcwpdt//Oae4z3pqYhcadJum9WkWvsfFraUoIsFr5PHyspAe1faIdZMJJhu/8vWgvcxb4am5FiYU7YnEudxG9FuNaES8IfaTsB5LwXzMuYlQsS7OREKmbPd0kKWbivfgl7YroTkDoGaA86bcHPvAKQ39OlLQPAJUjjMGjKPepCKYW29I8XOH/GFeTiRXuoVAUAIdBgQtEf8vKvjlq3WpZ+efsMMf29YJl+zDRL5pMA9ouBG4CE3RiXgxoysiSG8gkUE1cJ4qC/Aj4WhiJ0LbyBZrvIOxZaIoCpsL694Vamkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jqpSQYLwlaBp9BrMONmSRS72PeQePV3OVGgspyOOVVE=;
 b=MLgZA5RHCe8B7lac3aXTsO3V5nAwrrtKChE3z7JkZ7rrU4s7JFibtzr+ncEhbpbF90WLxYD88FO/CVs13V1rexO9+ZE4GXwOgw7vkvKu95bEgINlQr+FaHm8UWjgL39sC+ufzs/ILdRi2YG8qYCg/IVxxKZZVLEkztSkKGrgbDzDnxTwao8+/MWX2NTIFXdoF9T3ulTJNFibqHox6XYPIPCr91BTn1ehzAnlsSHvzyhsOr1oFufxhzFRB41Lx3OtoXLA/PAmUYspW3YPqsDrs6DVvbVzeh4NxNkJ3tBu5AesNEbECqul1/C9CtfLsNY5Dx8G84J+XbEICGNt9KtF3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by BL1PR11MB5224.namprd11.prod.outlook.com (2603:10b6:208:30a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.20; Wed, 21 May
 2025 23:08:27 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%6]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 23:08:27 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 9/9] idpf: generalize
 mailbox API
Thread-Index: AQHbwGNZiCI67Jj+LkypCPVZIlj84rPdxdDg
Date: Wed, 21 May 2025 23:08:27 +0000
Message-ID: <SJ1PR11MB629770E3D4294C5768AC60D49B9EA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
 <20250508215013.32668-10-pavan.kumar.linga@intel.com>
In-Reply-To: <20250508215013.32668-10-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|BL1PR11MB5224:EE_
x-ms-office365-filtering-correlation-id: d1d2c864-7178-4b8a-c344-08dd98bc655b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vgAtWjYSKNUUCkcCBej4wtSmJjURLHITTGrQtg2NTK2tX0qae/H5CzxNxRvh?=
 =?us-ascii?Q?atYi5d3qbA1Ng6hVdvq1WkS+YoE8JhSfkC3PzxZqaZhG6w2tH4ZwfzIeVAsz?=
 =?us-ascii?Q?qsXnUMxozi53255ZVSw/zuYkf0+0h6BMhVLJVpT/XHVrNQ4yijIejDfujQTH?=
 =?us-ascii?Q?OnpmntfOEP8l7f0GxPh+vE5cS+iHaVnUnBrUF0jfGwgsLu0EvOKmn8P0XaW5?=
 =?us-ascii?Q?JI6OVpD7Zyuau9tHcsDDr4XD+pFYNE57MfxYn/Le/c6kMoA+xY4SWpFiyGQI?=
 =?us-ascii?Q?+jhdhuy35mRlvADszUo5t0rxICMqE35j3VrlVcC2XBOYemwVs1/iJ18BM9If?=
 =?us-ascii?Q?f/Hz6PRP9UeP6uy7t7gNCCBozdKxkaZyZWq9PKGLmcKqu04r2JgzUaOvwr41?=
 =?us-ascii?Q?X4dhYoh9g74tOhnIZOJUkjjOQy373ma0fMZ2qjK/LbmaiRlagPsJeGQLe0XX?=
 =?us-ascii?Q?QEVG43CIyxjhEuVebdYBlkstagFFFFkUljL/R5G3+v4ZZ6V4n5n+hJtKP3gU?=
 =?us-ascii?Q?oleCKCnOQTd5xMI3t88oENGwI2bbp1aavhNksV3nW+bykFEeXt819Ss0hBTR?=
 =?us-ascii?Q?1n7q/PNk0lTZZKrSYMdicjSou6Pq5Tu+w36kNuJgu6eAzUp8tYMdIvNBgQWM?=
 =?us-ascii?Q?VDw5sqyhdg05MuZs3R0MlicYIOs/+mlAJ8zYrdPN+zCMpVqfa2F5ELA9veSY?=
 =?us-ascii?Q?diLQTeNLrgkaJeK0pvHYIiZA4z2fe5/2Jto9PfUtjEUEtzenCi40UECBxucL?=
 =?us-ascii?Q?L0kq+YsvAlASHZkAR/lFyxURdoc5YZeJmZL8HAreXGlI+Qc2D9tadnknri+C?=
 =?us-ascii?Q?4BfkMe62nvAgTZAiwXeebwWwK5CpgndxeKoJ1pYvsusSDi0m2Ui0tuLoir90?=
 =?us-ascii?Q?hlzNGbjuTi3+RiS2ehCZjWBlkodCZowQByNlLO4r4QkqaNGbNSBanwy23pdp?=
 =?us-ascii?Q?RTlsZhd4/EhZsWej6O2LYK6uZFd2uN3QG24Za8Dv7S/PnzHV/LcVUhOixM+W?=
 =?us-ascii?Q?06JIop+b9QLEsywZnaxFxyJYby5OJSkbcQvLtnUQdWR9bxMdpRQ3DuQs0CQk?=
 =?us-ascii?Q?ODLea5EF+HUE3/NnFOgmv3WfSLYRklTGHVK8dGZb8BEkT0oxNBa3oZgX2/rN?=
 =?us-ascii?Q?lyp0oweQo5vdYCbzLWiggoR08fjKPkoiOWoHpHB5BJeFcmmr7qslkXY5IS2R?=
 =?us-ascii?Q?+tGjXJpM3x+g46IyYvQRDZnBSergKdU3FHKpQjHx0U+UW1/968oDUQdKa6n0?=
 =?us-ascii?Q?Czcp4BOsgBj1VsURiWcVFLdmDYtn3PnklIv37AxPRMxapGCFiPSZpKwk7jP3?=
 =?us-ascii?Q?EwmNJS2195xfr5Hb/y/QRKNnL9PvtST82tlKN1xvALUM+EocW9krRH6HpbXB?=
 =?us-ascii?Q?LpQApdkGtxbjRcfzBdYA+nh1fPy9an67u6sh6dN5MjxLh51eCSBGkwMhCJXT?=
 =?us-ascii?Q?iPCtjySlMu/Inuib2JwnYEmDClMwmTBJ/5I11Q1QgZSAbQYnKRLh142WA7uI?=
 =?us-ascii?Q?XQiwVqZzFFbhlx0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Usx8WTQ0NmPkT1eGBC8ra57ZG6Lel4A5oZLWiF7YVivBU8/UR6lYmD+KvX7b?=
 =?us-ascii?Q?kFqXz4+Yd+W1Q3MySSPVTxjEEB6vu5EMQkZhYAsD5npRI5A1yTq4QiOfmttJ?=
 =?us-ascii?Q?mBpC6tZadXNeIkrCOz3nsrePrfpiRZSgyHd59UGbhSxq7PIfFSbmuT9EjOWc?=
 =?us-ascii?Q?rmG15DfU9LTwJpl8SZnvd0+Rsz7EpYOlYF5hKzf/14FFgz26vNNUWA4qPZjP?=
 =?us-ascii?Q?N+dnqFqF55AbZx7q2K+XOzPh2xym2SrTz/2Y2PBXDOqMcee9H/yNmR/u248M?=
 =?us-ascii?Q?yWwV4v9V/zQd6nmarxTqqtBBVOQ7dFyp3JxUINx0wiTBaBZWaojDxE/PWIz7?=
 =?us-ascii?Q?kqnlU9xrpLRCr61IE4dLkTMIBaRy7/yjXm6DHzp4bmp2J0fiATjyts8y1rBa?=
 =?us-ascii?Q?oSQQoPhSHUgJ4KhIkFjSlj0crkqNI6wsQHHnJI3OTZQ5G2NSDKuWbOzhdTJ+?=
 =?us-ascii?Q?9PPfbpGbLxcIldcmjagueedkGPCroSqdIciFOgkoo9FmlozDcQlABF5wLzva?=
 =?us-ascii?Q?tJbrRD3NN18FGiFvGDLTSE/uH+xNa3hF4F/XVbIRgVUTRX7kOjsHw5sxgjQU?=
 =?us-ascii?Q?VOOD05+Bh/Rr4NLSAlO9smZTEsSXBdmQlniU5HuXgfYvZ3TH3XJg0ys+Uizm?=
 =?us-ascii?Q?sQx5zH9NTMQ6mpR+QxIZyk1Ra02J0KzLcMDc/Fy8dYIPhtk/9HOQxQz1UCxi?=
 =?us-ascii?Q?qOtGJoOHbzs16DjeanzGLoPKfsz15wxEcrEa/p0A1IqCBVAU9MJ74vkAj211?=
 =?us-ascii?Q?dU6HOp6uxPGLRe7SGrcdA8gTKMCij1Ih7QnfMWOei4Nv8ovaxg6HHKnQbP8V?=
 =?us-ascii?Q?u6zkVYkVCWrMlkxFJFVd2j7FvlZluLw7fuYEUWhPUEVp8WpKytvJYDfVMkDm?=
 =?us-ascii?Q?NzKxCxYRN4GVXHwD5pFKBBuevXROtLBR4RorjnvX6dQBFdnq6ohkmLmsO5jg?=
 =?us-ascii?Q?1QNIYQ5bzeWaLvIkZtn4hzAUUjMnt/tAiGK1ks7N5xsSFECwexDIdKFlpeQl?=
 =?us-ascii?Q?TvL9WtXQbnVJxYhJj7thlR2cfdTd5i/lK97JiH/ublZQCvCcaTLoyYlUeEXp?=
 =?us-ascii?Q?81s3V8k1xvUV/cZvCaLPEonXVKyXalf3ANj1rMJHgqHy0ugsWeW/xNEBmNAs?=
 =?us-ascii?Q?z/pGsB5S/Kb534SAdGz8smbuUDW3QpByrE3dty9XzV8BwOJzzs4IUiWHE4BW?=
 =?us-ascii?Q?jZux0c47dl2NSRM35/y3IGpVLohKEBxU+CP2cUNqd1rSB7ZDW3Znsg08mqSX?=
 =?us-ascii?Q?xU8oHxBMEUuwdPnGHbJTyDnBhokqxDTe7+dqfbrjoXyn3KSMISqNrjAsNeWd?=
 =?us-ascii?Q?SkPoPNnniWe5TG6v0MxwK6ZkTTIa4DxfM0M5jnkR+bY67mceqDDzB/Axtd7b?=
 =?us-ascii?Q?eMinauitqxNFZLJozRu/gPBcVTTb65neCl/v5K81mlC/r1wC+3FYPIPzjvyF?=
 =?us-ascii?Q?gXQKwcENXo8tz2KXBt8pVVhtRIfdEgol89Du7maLcPJ8wvEw0VNmamXrOo2K?=
 =?us-ascii?Q?jHFycN23XsEfzrJ/RwdqFM4mdj4X6uw6FxFZY753Cu11+HPBqFYuyprbjRKn?=
 =?us-ascii?Q?Ocun8JCPZCu+40j9PdSzjKFdvyQBb5oiBNsCLIYQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1d2c864-7178-4b8a-c344-08dd98bc655b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 23:08:27.7812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tt4i56GdNsLf05dKC5N03y11D2NVmZwUaINzQBtl7FefeLJXfXqC9ZUb3YPb5hEOdEW28i756z+qBs6ZcoYghQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5224
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747868918; x=1779404918;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jqpSQYLwlaBp9BrMONmSRS72PeQePV3OVGgspyOOVVE=;
 b=OsSaAaj9V49Dzr+Z5EcZOqCYrAhC2bNaSZgYMAcV76GlA3MG3VZ6a/u0
 UNW0L2xRb/zdeTx2ul0vhQLJ4B7EAQvTr2OQSegyDUZJOf0KxylRJwjNr
 Alfw9fV/JuGkI0SWryg+2Lge1yJPRbZCVb3XFBsmDNUeZr2XWkPLA9xCV
 IKy1k6hL7SIAtaCO60TcdHDZaCMRwLV733CP+VM1C740hR1b+Cj20I9Zq
 xRlH5I7oOQoTEbFSLgVR+9Gie1YwedHpINM6OAjuBgdR80hPbrnxqV4lF
 nGRARmgSrrskU5s5dGbqEfvnGY1PoepgTgaQIj+QA6EPYGIe5ASV+/EYs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OsSaAaj9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 9/9] idpf: generalize
 mailbox API
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Thursday, May 8, 2025 2:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 9/9] idpf: generalize mailb=
ox API
>=20
> Add a control queue parameter to all mailbox APIs in order to make use of
> those APIs for non-default mailbox as well.
>=20
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
