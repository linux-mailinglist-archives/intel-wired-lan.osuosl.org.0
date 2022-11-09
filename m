Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6538D6225FA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 09:57:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BACA440AFC;
	Wed,  9 Nov 2022 08:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BACA440AFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667984259;
	bh=L75USB5siuBPA4Ce4RE9OIzUXez1EljGe5GpbLI1Jvo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qX9DjOdmPr8agSxUHzmj05hU0aPCMCjviez0LVzEWFTk7QuK3yvK5UQSMCmV4Nkq1
	 wdidsyUtfyIOjdW369JY5OdAaElr3rQIDuMKi+QsigXJ6k/+9mfLAlxrcMSUU8236o
	 fNO4v/R+GQAuWKosMfVxWOaJJ7KD+ZwTCT+E+z/SjfQwZ3lIH0DrR5wGmBakBHBM05
	 kYvFiSrfV92YpWLDT3oqnWOULbKoud3BFx4lZHcgnTT6g9Rb5CDhSygpan99iPY7dK
	 /k8fueE4OWk9Tr3r5e8dBCxiao14l7eb8JkrKLFpQa3t3uRWGFJWwGoVmDyv4w4uiH
	 TitGx0RrMc/6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ov5Db8__tlZN; Wed,  9 Nov 2022 08:57:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7A8540AE2;
	Wed,  9 Nov 2022 08:57:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7A8540AE2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C20FA1BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 08:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99B0B416CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 08:57:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99B0B416CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNMvZB1NTj1O for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 08:57:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C998416C9
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C998416C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 08:57:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312726080"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312726080"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 00:57:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="705638470"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="705638470"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 09 Nov 2022 00:57:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 00:57:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 00:57:24 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 00:57:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Efvl5Kd94XdYx10/qcRGpotkDluu8R3FYnmXOgJUGdZC8V2UlSd5UMvD9JYv12f274z7AUI124hVCmToejDZlA+yqjcgwfGZs+YNvYiZ8k8RfiSlmCFzUdpMwjs6uSlHOVXVJMd3vbGQCdlwBcUvrK5EA/r6+y7mSMnYGqTOtkUim48/zD04KPbIkULuVkm0JIJ5D/sCbgAgr2mjO7Xiv9+9ts0JiFBPqBFQJkI6mtb+0tFTpuKKSK4nJeU1eujJefI1JOgXxBvfSnqYzx5agTqK3Jq5j6lFtBgs6yJmk+txnDpXtmG+NV6XYhzxoVCIVzrvfecDAU0Unhx52toAKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+MHVAnvg+f6iwO9O+4lVY6wDOLDIGcutZnXe4Z0Qu/w=;
 b=PoBM7jbH46Wr4L4TPCxdzKvFJHcc3Y5SB82NIewX7pZirevJqkqcmcacLSXyLlIaJ7sfIK+mBCBMDiPEzJNL30gqJtJK1ue5dE/bdELOf6kGf8o4OyKBX1pG5SSKgIeFAPrzX8ifDFl2ycjqCgY5gdWYG29QM+aJlUQM9Q+OVf5lxtHNinEuYj3ZRXDZ/65CASAjykqU0uGeuH/J9Ebha4GS2Qme1EYc228L0/TZM3Eh2MkRhiq9DchBkp48WavSq4IR0n4qPcQjwYHNUhiwU4XIJA23wGiukM2XUAUaoLxKsrqk8WRk3eE2RbeslWW+moz34ePsvIm8XsZHLZyYLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5822.namprd11.prod.outlook.com (2603:10b6:303:185::9)
 by PH0PR11MB5829.namprd11.prod.outlook.com (2603:10b6:510:140::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Wed, 9 Nov
 2022 08:57:22 +0000
Received: from MW4PR11MB5822.namprd11.prod.outlook.com
 ([fe80::3462:9d66:b748:499]) by MW4PR11MB5822.namprd11.prod.outlook.com
 ([fe80::3462:9d66:b748:499%7]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 08:57:22 +0000
From: "Nagaraju, Shwetha" <shwetha.nagaraju@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix failure message when
 XDP is configured in TX only mode
Thread-Index: AQHY2h5WNOXNscPxDkmwXTsD7sDdra42fRjg
Date: Wed, 9 Nov 2022 08:57:22 +0000
Message-ID: <MW4PR11MB582278F26040225FD92A6BE7903E9@MW4PR11MB5822.namprd11.prod.outlook.com>
References: <20221007072424.83543-1-mateusz.palczewski@intel.com>
In-Reply-To: <20221007072424.83543-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5822:EE_|PH0PR11MB5829:EE_
x-ms-office365-filtering-correlation-id: e6b8bcaf-3248-4e7c-45b5-08dac2306a5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qBjMIGhY0iWWO+xMqqppRddFQsRLBz3oSORGE1vkHLkUnZATtbFsavMxZEhZfwNcBfWaboShUjD8aerv2OHhlGI2uzAV/Am2bJkh+u54ZU9Db/AUE6JQiLStzx4NXsPEXnsGLhWAfGgmyCQ3jwvCi23aI0bjZgqBnMGFQPX8lQhG8iopFB0/CfbWm8kWhT27lpwpWivVHfnkVo52wB856rpr2QRlOqfh4N5h1F3xFY6eSp4Gk6DzVacNOl9Cc3sSB5xCAa8TBIZUHxO3dJYufurgeIGc0AWCsc3YIJgGFjZApA0uv+JA48nzK7iUTWzSCpX6geRyF2VOFYAHDEUEyCODNQxKCSfUgxJow155FWqxTSMV6v7UOyzUC3fKIN9Gf72H3UclmrBypzpEkBiHi4SMlotAWI/1k29CNQOgJMh0p32D/mvZK2UIRE9b6Y12KsjXlA5/LIP0z/ObXwWQv/zzpTjDsqxDd+YbgCPzHLSBGwrDpB1QBm2B3D9VL15AOYtsk0DZV9YN8Y/IJTMRhWsvM3zCeo+Pl5kAJvxtE3ynAkKYMSHsbB/4ggdaT2VKjQ1dDUqabYZm4BhEaabakaTcHumCe8F4GdR4wbKSfK8Z54TYzHMrNRwh0N+wpX/M/858fih9ay9ql4aOourIYx4bAbBbjzTLY3m+Vg+jzymRGpr6E8PXUogaQqAqeYHvuzNYmLjJAWBEgicj86lW2eZLjoV0WZ44BfRn/ORU49gfanCw0KE/JZSNF5fIIw5l7l1ocBalrTreqDBAGm1B0g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5822.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(396003)(136003)(39860400002)(346002)(451199015)(55016003)(122000001)(6916009)(82960400001)(38100700002)(66476007)(86362001)(66946007)(316002)(76116006)(66446008)(66556008)(64756008)(52536014)(15650500001)(41300700001)(5660300002)(8676002)(2906002)(478600001)(8936002)(83380400001)(33656002)(7696005)(71200400001)(9686003)(6506007)(38070700005)(53546011)(26005)(186003)(55236004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fCB41GdU6+fsBFrcjpuQNJ/v7ht/+zL1sbpn1wz6zJeFc/Vy7gQBgDdRPkA/?=
 =?us-ascii?Q?+lxrCsuandmeADrvTmbv96dngf7CxrNIPCft0bvzZ/QHmBrOgub2lpWMZXAi?=
 =?us-ascii?Q?LcxLDM6dXm2U9yI6AEmInp3jK3Q85i/EDG2eO1T5YdlQgUdm5f+f5qZxdZ5X?=
 =?us-ascii?Q?2Jhc5lbdZplx9LdxkkhvsrgtcC7K3spRDI29onVP/APaMH4hBYqZOy6niKYa?=
 =?us-ascii?Q?KfCV+3RO722BJpHDTWRnnswVoAQ4OmaVp958bfrosJIKxgfZwR17qKReUCF1?=
 =?us-ascii?Q?YDKVEx1UbxrLnmbes0/qeAjv62YDFkdEwNxKqi9LmBPLI4Ravrp5Y2H6Qui8?=
 =?us-ascii?Q?RPdzFbY95kRHnBSQSUn64l924ysfsMjPe7ja9jw7guEqf6BpCnV0oG+EfOXN?=
 =?us-ascii?Q?du3Q0gEuZasx69AGnWDYoPOm4ba/ZnJgfDpyuqW2OHFU5Ufyk1KOaQ0ishjp?=
 =?us-ascii?Q?tw6s8TuPb2aBqzwlPx9PCKHyfuE7XVw1bdF1MUtJdnYg/I2D/iMPki4G/sB0?=
 =?us-ascii?Q?gMD6Zl53TaQZMANT+OW32XYHqwDj+uJCqUYzBoD1rVJjCC/Z3mWBLZMR8NTp?=
 =?us-ascii?Q?NKSiG72zZspluhulhOp4hiDTdwQzcvR+Vd+ibnCwU/cIgnzPW4DjNPqUZrfn?=
 =?us-ascii?Q?+yqriVuF5NZe/ZRMx8BuERSxR6Nqugof2qBAo/IijSYUQHhLMSj+g2G+/CaX?=
 =?us-ascii?Q?lsh5tqvi0GpiBkgZFcaraHicqW0WzD4z/kWzD0yyL/wtL103VDQcytWjdUEB?=
 =?us-ascii?Q?+45sIEEyAw2nT02OjlVmGnf37fShdYdsKF2HFxqUNK5RO5+d34GavJ6VQVqO?=
 =?us-ascii?Q?dDacUi5tm9nF10v70YGj+CUm0ngvzT6qWkOUH+z9wQpXRwmHrX9g/8r0Lp07?=
 =?us-ascii?Q?lvrvoWLBxtMn/0Dw5kXIeUD36kFbQf+1Bf1uzHNk5VqjA6Jd8GfjsRdiB8e9?=
 =?us-ascii?Q?T+b5EbOKiRuFSlM93ZSezCPFzval0ZBKQf1JrHO+ctjbKsKUnD/+mFy3i9PK?=
 =?us-ascii?Q?3PMmBwW+EaGwdL6CYJiSpGT5AtEsuLMsaXa1K4F4N9aQ9GQWyZ1hVdgNpbW5?=
 =?us-ascii?Q?9BgOD+SVmftwv0Qa87+RRiQheY9nT8BHxipDlT8EJkqmd3W1ffE91URGKAl3?=
 =?us-ascii?Q?HEUp0j11vy1uzgV7Ceh75Cy3dk1P6UVQQn2sLPFlrJosBpc1Qv4VLhgr04Ki?=
 =?us-ascii?Q?PHQ0dtWqGMxpHGD/294o0MTfRXuXy7fqMIt4de9vw37oIj1O2ab0YipQ7UP0?=
 =?us-ascii?Q?+TO+8nzSIEu07A19jFvjAe3rsE4raGuqabW2abSoThqiPuDA6TyNPBW6sIFS?=
 =?us-ascii?Q?IAvZaqyjQTWtEDbPr8ut0YA6277pdiyWUNuMWHeYJJypTp3epNCghtibZwN2?=
 =?us-ascii?Q?cfJIUqZYHso1P0skLOpUvriYNuht7dnUjF3NQiFm22FlTZM2mhVZOG4cGsgl?=
 =?us-ascii?Q?mMqb2yY6a4rmMrmohpuoKW7yl8WARSNIbvRj05i2prNaOCoRasY4NVL5XV1A?=
 =?us-ascii?Q?01NoOp21UKkVheYTe95S6qQqjSBC8p17u/OaV4WPLdN7VtQxBjV7wPrLsrWN?=
 =?us-ascii?Q?GhFvXrEjPWRHaCYQLfOQIpeMjjj9GyvMd6P9sDqIW8Tx7OGO9jvCBKAIeNvw?=
 =?us-ascii?Q?OQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5822.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6b8bcaf-3248-4e7c-45b5-08dac2306a5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 08:57:22.4307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Fw+H58wTdTGPyILuVc8NUQreBd9W7vPV9X15VeAxiNcym22k/GARZE1v1O2aFt5ci0jW8BxC93RAlK6MaR8+rObpV1hS5lb7JlDT2iZtwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5829
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667984252; x=1699520252;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d7htqTNBHudVDXpeivq0xeh26Ut8kbfHw6tip8Rbluw=;
 b=CkwytSwFi5aZc01CdSTNbkoFQV1xQep1872ELU6RjBfjZ4bzrCFbodvL
 ONLLGkRAQ9EWkUlyr4Z986pRfOe1/FVlbk0c0kvfGQLGECvJZwf8nvvzv
 dmDqVXLMUol6aZcaH49NIu8rLw27EqnD1wzYqQm9M495Aca60Y4nP/q7/
 757SoT5smbUfRDO1OWCKX9d94XNdJahFZEO2KdiXf93CYKmVoQc7yaALg
 E31opI5LNkCtGLaBSJAIAVGieEQUpjdDTr8EOMNBexFIRu/ISLUSetSII
 YimNpgBo9fA+Sc24rnDYIt47EOioHOHBn5D3byQMRAe/nqQW7ptrI3fuJ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CkwytSwF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix failure message when
 XDP is configured in TX only mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, October 7, 2022 12:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix failure message when XDP
> is configured in TX only mode
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> When starting xdpsock program in TX only mode:
> 
> samples/bpf/xdpsock -i <interface> -t
> 
> there was an error on i40e driver:
> 
> Failed to allocate some buffers on AF_XDP ZC enabled Rx ring 0 (pf_q 81)
> 
> It was caused by trying to allocate RX buffers even though no RX buffers are
> available because we run in TX only mode.
> 
> Fix this by checking for number of available buffers for RX queue when
> allocating buffers during XDP setup.
> 
> Fixes: 0a714186d3c0 ("i40e: add AF_XDP zero-copy Rx support")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
Tested-by: Shwetha Nagaraju <Shwetha.nagaraju@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
