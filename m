Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E78816DD3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 13:21:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAE0D4071B;
	Mon, 18 Dec 2023 12:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAE0D4071B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702902103;
	bh=CdvphzUZl/+k7po66N12NTsTqprPr271LPHS4biN11g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W0K40l+bix+RzEJo5NDLj1nRODaXZm9xrZcq6rBgOyfWW1Ba9dwljJbmU6Q/uSp/S
	 zds0LDIfI61IuwC7w9ZCRDL/KXBVPbZ3jsF/gA5UaYgiB2yhX1vnVfI8MyXILheG6B
	 590yII4+QLIzmiMikiiHW37canqrAa60S1JqXSt2/4JzppXSUFJEpueVcDXQmDbepx
	 HcqaqCi2eZkC2PT7CKodh6jxUfj1nlYspMzlpR1uejNjmWhWaUrEiPBtBIJichdikZ
	 ikcDMMAu035PFOVLZVz4cgonIinnVn71oBh8JRvXfxzR//CD4MBZktnycJ2RJWjgA1
	 KRak7nhRjqT2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bwh6FMTrdW84; Mon, 18 Dec 2023 12:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4169740620;
	Mon, 18 Dec 2023 12:21:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4169740620
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00FCE1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:21:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CACCF408A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CACCF408A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ZcvuQt3LLyn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 12:21:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D61CF40852
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:21:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D61CF40852
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="2326447"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="2326447"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 04:21:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="841467052"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="841467052"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 04:21:34 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 04:21:34 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 04:21:33 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 04:21:33 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 04:21:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gXtMGe2KlpZxE1ZUy/vpBNKxYa2QgdDVUVu/m3kZ9Fwoi97JtX6EckdphfWvUGRyzXiwqarvSqcoTcg6N3nZU6EPTsaivFY5z5XYRWwBH0rUelCeG07sBQKAgwP3r7+iEfYDQU66sUj1L7G6ca8QUYCF7JcOd8O+zzmyx6E9WB1hc40BVJ/h5zmiKVwoiK/z0AYDZ0fW4LlEaD5GRWi2WjKXwKkr4hL0wX7tPJyK+cnSTR6teP123W+JEdZn3FUdUxMB8vtIV1LlqF85ITLDJ2O+k2MAwe10o7KhXjFyjSXzFtBaJZCf9B6UmqofvaK+SrgJv+FABIoNfkv3BBoI5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JLZgkcnimXrGpSO5+Q1C6nI5Rb0+fYJGlX4Z3flO1UI=;
 b=ZM9TJDRoGGtyGPgmssNi9RQeyMzlkx2GRUNPLkIQhu95CBGt0a0VilG9qYL2qCBouAVOT+8scOGH7MfsrLH+ct3B2DWRFWnBQ5X62dZvFBy20BBGPA4/rtvTQ6aIXwKtZ+REck4vLH6uBP6hGvQPkbVyyx9qByPlTOnD9Tn1z2Ry93o124x2HE0AYthX6Kf0HoadU3OH2LLLk+PFdbRp0EgC3qZjEYSytmH9AjpIxcme64FM6zJ0Jn9FAQvGyV1aWnYLh26IRVSBKbI9FMONpn61l3x+d7Bb/BByYpxr0uSbzrt46CUXBVpKK+lkmlqh+ZQvXyHDT/Wzr6ooiWQkDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL3PR11MB5681.namprd11.prod.outlook.com (2603:10b6:208:33c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Mon, 18 Dec
 2023 12:21:30 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::a0ef:99b5:2de7:75db]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::a0ef:99b5:2de7:75db%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 12:21:30 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add support for
 packet mirroring using hardware in switchdev mode
Thread-Index: AQHaLPn+QEH6ZvceAUqw/JFtinAQrbCu/2sw
Date: Mon, 18 Dec 2023 12:21:30 +0000
Message-ID: <PH0PR11MB5013BD828C05D0661244E7B59690A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231212125126.3297556-1-andrii.staikov@intel.com>
In-Reply-To: <20231212125126.3297556-1-andrii.staikov@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL3PR11MB5681:EE_
x-ms-office365-filtering-correlation-id: b2fad7f9-ad7b-42dd-4e84-08dbffc3ddcc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Cn0SqzXGoT2pT+zfisdZLsOMEDtP1gNlTOM1cMaQ46xFkELhEl4tnupnQLTStKo5i1uole462PNAucsPWUv49XgpxEv/Vs7TfyhtSXNojDi1LJfU5507bJcLT+UDe1zTjFdD7oTz1XyFLqSP5oHJgD5WLk9od4eolOi9vL4/Eo17DDnQtWAk0QolfoSFXrDt4LzEddq9gO0UzPWlYGLLi0lDjQ0jbJSE5yVQNTNomTg5THouxkHjisd4q4mdnj2tOCDW5TGdbXI3yq99FYZ8A676CGeTc4VbP5EqpKj4Oh/ISHNz4Hus3IjkSSeh3X4T7IdD7vrzEX48tc4c3wxGH021S8jGDp8jwHBuloDSCqn1kjhwouXzNP7sDiym/DZQahjiOrvih69BjDu0m8szR3OGHziF0Hwh9FUAo/hK90/K+g4DOWrNC77IjngJFaWt+DFyALoyjGLLQyZpeVo3HWSG4wcDgXO/Tr+GQaIp/dF5mVPd2ryerU6V/o+QgIjUtCH08QbOpGHcZzEDXrotT0cBTHc62A0P5Q9XHkfFoFLC91S9GbbCp6qX1fqfufVlqCt7GC6RUZyLTqAQxUe0vMe94cYbIGaaET81KJuOG42B0A5NpQaQ34JhpaqKKBO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(396003)(346002)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(55016003)(38070700009)(110136005)(76116006)(82960400001)(86362001)(33656002)(38100700002)(122000001)(83380400001)(107886003)(26005)(53546011)(71200400001)(478600001)(2906002)(66946007)(66556008)(66476007)(66446008)(64756008)(54906003)(316002)(9686003)(7696005)(6506007)(5660300002)(8676002)(8936002)(4326008)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sfATnybLFqYGEUo3MquHVUq5WauPvskjhAPs4hYHw5UU+OUcObzrooTqTbqa?=
 =?us-ascii?Q?tyKzK0GHDx/ZpB3eq2aETkTK6irAMuCnN7c9tYo/qcZghQ2OJGUnXB5DRw0b?=
 =?us-ascii?Q?w2x4U4Llw1cFf8OnGYgjQgzh5++QwtLBur1nUn7UIp7nHw4DeTOyhDsL9Gv9?=
 =?us-ascii?Q?YT0XniVN7PF6ScWUZqV3L4PDvKYTrttBGFLTYx5IrVVWbJCMRT2AqBbX2TaD?=
 =?us-ascii?Q?v4CkRTuoGgKc1yDAb55cqh9eSzLyaTPKN4tYmcvb0/aYY2Gwl+1hdf1WN52e?=
 =?us-ascii?Q?uPHjDugM88kNnJBEZECBh5GSyfFYk5dm+vQ9FZ1iI84LtcH0wH5f8FWnsFN8?=
 =?us-ascii?Q?zBnFMiNhw2irKMEiVxMsV+9HGvWvt44yubblwenzMltDpwA26Eoj8II6TMjI?=
 =?us-ascii?Q?4cN324+Uq6qzoiNOFXo6Jpvq+FHfaeTGMSA5HuWxk2lbQiGjNHSUDcQ84CHU?=
 =?us-ascii?Q?21Zx3MgPBrzVPv4sek0nHO652cPhIwfRq8KrEAOq8q1PWOni0ps3uk3uh94o?=
 =?us-ascii?Q?LRLTaRmJLYcbr4DqMulPDOWotY9MDLxF+MNDZKz4n3/kAvvRRFuBGRv5D6CI?=
 =?us-ascii?Q?LpSY1q5xcytuLf5yj9Dv1FFeLhAjSFIeHRt9AwMieNhMwKz3S2XLpe2KUDjT?=
 =?us-ascii?Q?Uc9gbIkUT/wab/yTTKusXAIUmkcsq1452i9cwIKb2C9KJ7yDrtxNVUz7Fn0N?=
 =?us-ascii?Q?QpD31pXuBv/aIHM7ykXF7JxcFgext+q9cmVvKGLftICA9NxHjffUPi2zDVBK?=
 =?us-ascii?Q?vOoJ1g0T4OhNhka2iWRKhw9h9+zy3rxNH3bZLLRG+BPpcZ3ZeY9k1zR6iQlO?=
 =?us-ascii?Q?DQeraFpyQyfhrim1VMRDHu8qzjIULTvA+Ohv+T36GfDhpDvdtGIjT6y9TXcT?=
 =?us-ascii?Q?y9+MWfKOp2Lt/Kdrw4GRmzXtav/Dn3YOIL9hKrYMLGeYTlQ6QHvgdrauAQNV?=
 =?us-ascii?Q?bPQrT3I7HIGCXhfN/5P89dRQBne2rWeQODC9tpGjkFqDCYkDAkkJYKVWeJhy?=
 =?us-ascii?Q?4fPNH4Jfj3Nmh/4pbrffOQfs9hHe2klDQUMbqiMiIbaJNxiO3lJzQgNXSklZ?=
 =?us-ascii?Q?lobAHY6mkKzC3B8bb2NiomywGrHpYe5G5pwKF8OEasAOz+l2QO06PaLz6bf1?=
 =?us-ascii?Q?HXgEpnum1mT93418lkGNrnortJI1LZ/F8q5Dii0Arpb/XG22t9i3D7paarEm?=
 =?us-ascii?Q?g+fLIt2+f3cUX2v9KSr9RyrHnNAzSit7zr/LGLANi/zyNZcRE4qlqSV0FGmX?=
 =?us-ascii?Q?ro1bLV3bJw3vfHVtu7XnM9rmHo+BfRMNRLdkMrOFc2oRUtIOamTBVzdpiAKy?=
 =?us-ascii?Q?dlE8mNFIoDTdiIAlMT1FXN3KbpJeSRtXzgbs4AAX6ZhNCmxinVfvuJBa6Dde?=
 =?us-ascii?Q?5nR9w5e8DF3h+lc9BatyWL3LOVfra9WdG2bht0FEfhB/XfCq/MjuxtzcWRfn?=
 =?us-ascii?Q?lrGJc/cn0a9Qp/nHc4U1qpyLnww9fiCkJR+Lo9vBZ1YhXU5tKk6AtOhi/odo?=
 =?us-ascii?Q?mLt6kqiHAqKO0CVvHY1+IbdjiDF401tZtUjb1pC5g7f1dKFB9gt1Rn0xOszl?=
 =?us-ascii?Q?g54DCFz/dofOruxorfcfTgq86nVGvt86YcgUL65bZwwxbl9IgO3xFKHLUgt4?=
 =?us-ascii?Q?Bw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2fad7f9-ad7b-42dd-4e84-08dbffc3ddcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 12:21:30.7386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0yuusUb5wDPUswUbeqgsLXYvxCWTl/CIwJfCY5zNNb7Q0doXwZkpspLmvgPNtpC1fZVTBFO9NB0OM4Xr8BEULuA3dOvYBQ4b9f3WCBB6Q40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702902096; x=1734438096;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uyVBY1/AA0uw/Ko3YQ+9RvPJXljsI9q5rsCygy11O+A=;
 b=TFeq9K/a/+D889osqBaJRZ5azGKKVB2cRvHqpIKZwp6cIfDq6ywpaSSm
 Q3rdmYlkHsrEiRk5GvaKOOZCONMqc/nERjAgyUgPx840UtUB7cKXNBY0C
 ISwY1iG/HCClYGJjH1Kn0gLYuPV0WUwYj7vFvu5AUwomreN9QJkkP9KSe
 xu2eehv0OWtw7ioLe04Z6Mm5YiXTLfNAMt1cIzjW9BNd/cYkCYKBf5LUh
 mlRaKcGCnmv8t3/HfnvDqsYS1fQLg4lYBirBbf2eRLVyo2kwI2tzmSUbz
 lLWBZ2NTC54LYf8q2wHaci9yqjgt/g2aizZofOXfWeF+42cHHkPBNtTTm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TFeq9K/a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add support for
 packet mirroring using hardware in switchdev mode
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Staikov,
 Andrii" <andrii.staikov@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andrii Staikov
> Sent: Tuesday, December 12, 2023 6:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Drewek, Wojciech <wojciech.drewek@intel.com>; linux-
> kernel@vger.kernel.org; Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add support for packet
> mirroring using hardware in switchdev mode
> 
> Switchdev mode allows to add mirroring rules to mirror incoming and
> outgoing packets to the interface's port representor. Previously, this was
> available only using software functionality. Add possibility to offload this
> functionality to the NIC hardware.
> 
> Introduce ICE_MIRROR_PACKET filter action to the ice_sw_fwd_act_type
> enum to identify the desired action and pass it to the hardware as well as the
> VSI to mirror.
> 
> Example of tc mirror command using hardware:
>   tc filter add dev ens1f0np0 ingress protocol ip prio 1 flower src_mac
>   b4:96:91:a5:c7:a7 skip_sw action mirred egress mirror dev eth1
> 
> ens1f0np0 - PF
> b4:96:91:a5:c7:a7 - source MAC address
> eth1 - PR of a VF to mirror to
> 
> Co-developed-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
> v1 -> v2: no need for changes in ice_add_tc_flower_adv_fltr()
> v2 -> v3: add another if branch for netif_is_ice(act->dev) ||
> ice_is_tunnel_supported(act->dev) for FLOW_ACTION_MIRRED action and
> add direction rules for filters
> v3 -> v4: move setting mirroring into dedicated function
> ice_tc_setup_mirror_action()
> v4 -> v5: Fix packets not mirroring from VF to VF by changing
> ICE_ESWITCH_FLTR_INGRESS to ICE_ESWITCH_FLTR_EGRESS where needed
> v5 -> v6: Additionally fix some tags
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 25 +++++++++----
> drivers/net/ethernet/intel/ice/ice_tc_lib.c | 41 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h   |  1 +
>  3 files changed, 60 insertions(+), 7 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
