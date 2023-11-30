Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EB97FF2CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 15:48:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37A9C8459D;
	Thu, 30 Nov 2023 14:48:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37A9C8459D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701355687;
	bh=GelA0engCp6gH1HeArV8JvGLfAwNPiUi5HkM0bttG/k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YAb/Cdf1SjNkPV0mieTtDi+9a7JjRtvK6GjBwSDRzVLochQwhASyhVun47rvM57vs
	 6Gf77uOvanmZF4tXfHwlbyF5tvp/eBNjLyZSWNT1JLFnw/wkxyAbkd7umr3GDPR68O
	 2B8FGWxoi/iqsK5aF4A1ik1Hd3lGG+3afhYQSNEvECDpAitBErUge/Nng1o7nB73gG
	 KgTr6UOhlOkf4a7F0SqUA/9t1MmH7/nN1ydzxE/NmM0Xu8StNkUeP3aycojTre+INo
	 TJIuKE4HCnYA8kuxH5nBzmw6eWXfquCvQCt3q9/44xU/9W2NB3FMUp+cxgwlQ9Wfi8
	 XgPhU/ICkFt6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F-8ELJw51W2o; Thu, 30 Nov 2023 14:48:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FA42845AE;
	Thu, 30 Nov 2023 14:48:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FA42845AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D09F11BF378
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 14:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A73F084578
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 14:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A73F084578
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZFVuSPr7qOI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 14:47:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C2C4F8454A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 14:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2C4F8454A
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="373516718"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="373516718"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 06:47:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="942732062"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="942732062"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 06:47:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 06:47:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 06:47:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 06:47:56 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 06:47:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ml6SerGeAiMPP63b9KaqV9PUWdhStdLtBr+uobD8VwHvQu4B5vRcRtZzYFtxPaz2zG2+h9B9MJLb+qGYQPEId6PQj+r8WPC8r+GiT/EqzyRV4Uc74ceeDdGjXUyKVWvafoNq25p+MnCsxItSVYxTNYhe6me7gKTKdJYUtgzJT9R4krXxTs3BOqT+1JAi4Oje+qvwbJn6nUaeTpomEqB/cFlt2bljgUycLjmqM812MbWO+L+lX4t4MvkUmyjF8q4MPDQR6kTVwq/vWqi71/I+HWh3EkQuJxEkDM25DN6h4tKKs205kk7nUrdOsNeQ5WLrTx0PbgX7BeO3kbsYpl+u0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iQObMYqnIb6Wq77XZp2MnQWZdj7hoYvA0IRUwUKWtmI=;
 b=YK71kq8KHGAJa5RwjzZVSXQDNeDUXPz0x0QNZ8TCcjdGeCSEdHT7uZoawwtCuAmIqmKKbY8ixmzYQtnOaC5VFbqsaNfGVyfQvc7Ti78WieNyqhvhUDM0ZS5HsLZ0QIzyayCsfwjQFRdJJl+TM4LEuJVcG3xAFywvEU0J0sODMsEQb/2D9QgHV8bKE1EkDt3ThV6rhi48L8c+uPF+aVVhrAXUd0ErB4KoFADsH5RLq5bWSYDA1QFMz6pZ3n3DoPLReStVLR4CsS1Xcp8KDyla8sPeNLs3zQER5VUnAExYe5D3UqX1qlkEm9WjPzHNfz/gIsllepXu0PPczZkWAeoTTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ0PR11MB4943.namprd11.prod.outlook.com (2603:10b6:a03:2ad::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Thu, 30 Nov
 2023 14:47:54 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%5]) with mapi id 15.20.7046.023; Thu, 30 Nov 2023
 14:47:54 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] iavf: validate
 tx_coalesce_usecs even if rx_coalesce_usecs is zero
Thread-Index: AQHaIYo88HD/5YjKHkuAY+v3gpyp/bCS9TxQ
Date: Thu, 30 Nov 2023 14:47:54 +0000
Message-ID: <BL0PR11MB35212E4C4D182DAE1229C50D8F82A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231127233350.2652604-1-jacob.e.keller@intel.com>
In-Reply-To: <20231127233350.2652604-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ0PR11MB4943:EE_
x-ms-office365-filtering-correlation-id: 00fc432b-3a59-4dfd-2fa0-08dbf1b355cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wx5fgEyWfFaomVPhZakgBM6OkSvn7fOtuSDKvWOyimedweNodEcVEXZdg6W9kviqlhSWxr8x7mYgkDsN+ntHPviqqOSwdQ3EOhilT94wSA0yeJAmu4dHZcEI/asaL7sYa6ImNtwc928LNoBGZHTFGrLh8w2Vh6wKEKeIaVrZfgXyo0qiZkRoIelm9rY32vOsbnLvFVPb3vhiXzw1UBxhW9hN1c95xdUd7HVA7+Ri7VEKpALIpQyPAfUTvDhR6HZKB5J8XXBrLdaTrUNgwq962acMD16RlpdPZKE8ucMnI46koctzInkJd62iSCZgIP78zOUTE/jYyVf4HDQdAZKlv11Vwh5nj2sV+8KGvM4R5CTNSj+96CPEcAaSDt73KkRvoKblgKRtvN8tUdr5FvDUsapc+9siOWluKOVu0rWCLM/NPrC8u8kL/agzhVWii4+ZtBgx6xgNoRf66u82Hqxnnp5qEXgjAdNXylAhjJjzKip+z7a8arxEUf8kVhkEt2sixZm0tjyFiCwXIMi9Qy8+psg8qfiVSARJJiXhqtnyooadpenE9+5Kosi/wniwvELzfhDW1WMLOgwTkhHHMSCwDWQg8iVS47tpdU45vKUlb9lne2wm9dNa83Rq989vY6hl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(346002)(136003)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(55016003)(38070700009)(86362001)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(54906003)(71200400001)(38100700002)(82960400001)(33656002)(122000001)(107886003)(83380400001)(26005)(6506007)(9686003)(7696005)(53546011)(2906002)(478600001)(110136005)(316002)(15650500001)(8676002)(4326008)(5660300002)(41300700001)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HQg4xraq4+QKnRjPX2kTEVmaeQsQTfRn2En2j75l7A9lTFoccvMr7tg5u8q6?=
 =?us-ascii?Q?VYiUbeX2XIl+7CZ8rPUs7oHsW2Kk73lxqARxMxPOu4t8Iy/hAVls8JUajoIh?=
 =?us-ascii?Q?L5FcZnqggWymkHT87HijRcUVe4lkCLFY3oBCz5YgPsfTdd7J6bAZbdj25hXv?=
 =?us-ascii?Q?eNGMWuygjSaYtiLN5OvbDmNqv8g1GsgSHGRFSfKywC5R2srdUr6AcreYfRrW?=
 =?us-ascii?Q?uXXxBCN6PaXfsCxbpKTuSEgFsNjPG6QvS2u7GCdn12rEDYfz6HrhHjm/TyoE?=
 =?us-ascii?Q?eTpvpfxBByv48DlEo4ZNuxHew6n6RVF5nVB2G3gYqtrsWzpghcIoQ5KpjI8u?=
 =?us-ascii?Q?P9gNxFd/jRG0/b0qAQj8VSmLbRn1oxFBx9p/Zh6ZSBD7QjQjuqkElVtDUKQp?=
 =?us-ascii?Q?40WhCFD2RVHkebqBYLMMgIfIa95DkyZQZ+c9IJ7xvM9tD7yfzLeA5lJn3f5C?=
 =?us-ascii?Q?qo+0KON8WkzvtNrn59In9ekleraZSIVlt1nmTrNws/kB/zB8RXPGXGAfrJGY?=
 =?us-ascii?Q?wBQbHOscSO6GwLNRHDEdSu2M2Xi++yaMR+n8jUcJilNCBVNhN3f+Jp7sqBu9?=
 =?us-ascii?Q?m0CVVWg9zLFCdcQ92tNfN+r2mMcLCTyJwRLGdPucqNRl8frQXPhvR5i6bARB?=
 =?us-ascii?Q?JeAHq6rLihYVYss5nxSlyfU4s5txLbYecqE6/j0wSuaUDZJsmxd9ThmJy2RH?=
 =?us-ascii?Q?pk1JnU2XtfA66hVG4GOPja3guirjPXG5P4bJVdptubrzvMtw8QN7xXu8ptK2?=
 =?us-ascii?Q?JBsF/XEXUIefoLRpL+nfwT4fpX/gdl9mAtrHpglu4HLBYufjeZ6l3d7aCrT0?=
 =?us-ascii?Q?4NCmLRbMEFNvzRMVyuBNxiWnyLom50RZs1ncRHgD1q29RWJf2QA9iThwoIc5?=
 =?us-ascii?Q?DHSbn4DNUX76kjlcI+PiEwCLk3rs6jowWArw76SwjyVLmAKguEegvwqoiWHn?=
 =?us-ascii?Q?Qy4SNpbaJ1sr29P9y1Uu42FZ0hJRAzGV75aGn9HvZsSZh8IHt4cH2HvWclWR?=
 =?us-ascii?Q?NGjQ3FC78s+thZiXu5EQxFlBwwDlt5vtNmhqNEoPxe6Uc+fkGETG0i8HPjb6?=
 =?us-ascii?Q?xwfeQolHNnhnUn/qpx3Go7aAkcWLyquwo3ialEXKChYjG9G7LMQfUIbOyaT0?=
 =?us-ascii?Q?CgHcg5RwhxXKzLUzm0wqJEVYlGFMMOnIi/gevx5qOpXEU4xivXSfSGAOFx2Q?=
 =?us-ascii?Q?5oQLqXDsFH+a+NmX7p864cFIuyMmUX1EZlPs+80/Jcc1UYIKEA0RmN+OpqGq?=
 =?us-ascii?Q?lyBio5ji2iuTUrwCG/AyKJYKPdcHw2GVMwgPtXkyuMvebTJyYx0Bzv+4d3Bf?=
 =?us-ascii?Q?9jh77YktOSg98AhZSP2LT3N+UtNDns4d4sM5IfguzeXmVAqMXOE/t/DvatLg?=
 =?us-ascii?Q?YMDGbetH8pPfgQidrA2wa8mB4E8X4frYY+DgZdLB9QtXm6hQN28t+l5KruRT?=
 =?us-ascii?Q?VclJGQ7nTsieJlaR9O6AZ82uYohS4i/VKHqZraMGyNJ+nhFjKulC216icYdP?=
 =?us-ascii?Q?ZywjN351ok/J0DzGX4/w+CQrY4EQrn9HgnWHbzIBf60dkGuhRCuwKSKuokxb?=
 =?us-ascii?Q?i0ICyTml5qHlZIa0v03HV3RZILZwst3n2YGWRHP+rZzXb/GajXd13UlTcDmR?=
 =?us-ascii?Q?tg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00fc432b-3a59-4dfd-2fa0-08dbf1b355cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 14:47:54.3586 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zUV+GQ87uCbAkYqVm1J5LSqClzEioj7cW58Uyfbb/9WkQxFCIQTESSnE0UQd8eepPG9I4RAb+5bsY3tcCV5kKVO15xNVaoHTGgBj/dStXSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4943
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701355679; x=1732891679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=awQ9Hjn9/538nw7fAHxIhA/wb48J9UpBhfXfnHyXVSg=;
 b=WcEic5GqDMUxJSt3levXHg0wec8rrwdjQDp3oMrBs8cJ7uxfIk4kezfP
 HRV8VoWxQ5AhILdFw8jeTKqnZzjf1tUfsX9IOZye0SlrpB4ht2LcH/rA1
 T3zXrnSpMWo2axfHDGm8OhzpHhY6SydfrBb0X8MgqUQ3O3AQ9PZPGeavz
 N8vuq7KTPO/a+9RvykjiNS9VtYRRVfX0affRSNAOCsxMH5YToIs7BFIPy
 cDIp5p9NbPvfv9LBf7PYk4kQeK50U9nGnAJxoRRbfAv80iLoHi1W4aauR
 bH46uTsYGAmiYSVd68GxzzBxzMDD2gTSjsT/usMf/yx7jF4jUFz5TL36C
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WcEic5Gq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] iavf: validate
 tx_coalesce_usecs even if rx_coalesce_usecs is zero
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Tuesday, November 28, 2023 12:34 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] iavf: validate tx_coalesce_usecs
> even if rx_coalesce_usecs is zero
> 
> In __iavf_set_coalesce, the driver checks both ec->rx_coalesce_usecs and
> ec->tx_coalesce_usecs for validity. It does this via a chain if
> ec->if/else-if
> blocks. If every single branch of the series of if statements exited, this would
> be fine. However, the rx_coalesce_usecs is checked against zero to print an
> informative message if use_adaptive_rx_coalesce is enabled. If this check is
> true, it short circuits the entire chain of statements, preventing validation of
> the tx_coalesce_usecs field.
> 
> Indeed, since commit e792779e6b63 ("iavf: Prevent changing static ITR values
> if adaptive moderation is on") the iavf driver actually rejects any change to the
> tx_coalesce_usecs or rx_coalesce_usecs when use_adaptive_tx_coalesce or
> use_adaptive_rx_coalesce is enabled, making this checking a bit redundant.
> 
> Fix this error by removing the unnecessary and redundant checks for
> use_adaptive_rx_coalesce and use_adaptive_tx_coalesce. Since zero is a valid
> value, and since the tx_coalesce_usecs and rx_coalesce_usecs fields are already
> unsigned, remove the minimum value check. This allows assigning an ITR value
> ranging from 0-8160 as described by the printed message.
> 
> Fixes: 65e87c0398f5 ("i40evf: support queue-specific settings for interrupt
> moderation")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> 
> Changes since v1:
> * Fix the new check to continue allowing zero as a valid ITR value
> 
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 12 ++----------
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h    |  1 -
>  2 files changed, 2 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 6f236d1a6444..19cbfe554689 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
