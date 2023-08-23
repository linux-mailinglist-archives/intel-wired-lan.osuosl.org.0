Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F31657851BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 09:37:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14B444175E;
	Wed, 23 Aug 2023 07:37:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14B444175E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692776246;
	bh=6C+poB8X6XjGjpfCFvnGTVbayxxXRoGlXJb113WwN60=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kQG8sDausx/wOhS/dwQQkAZAu+ibHP1R+2KdEn5FRTJMMafLeZV6Ezlgz4K1ALMge
	 wRz0af07crhwZJf/M12fg1xWmfLA/zlXqWaa5aSLxNOXff+3r6FHPUZAhoLGBUBZff
	 fGTzhUEKCNpAFl315I2ENMgknZSKhOm+jndqUHBKhrPkkAyclAvMy8t8Kq79i4LCc/
	 ONEA+BirmtcNiScawoDsxYlZ1g7+tUjghD2elXm2fxfEKowVzdZ3l6NSFyiseMFEI2
	 QbadJmI7jgcesUakdnWHbqXGA+QLC2WMwALvq+7Jl0N24f7RQRQfAzXdM/21hzCazB
	 cXbTa79zN+fQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJRl9BAvq8hZ; Wed, 23 Aug 2023 07:37:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7956241622;
	Wed, 23 Aug 2023 07:37:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7956241622
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FC951BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68BD340179
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68BD340179
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RVFiYcfi0Zxs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 07:37:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6726400CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6726400CF
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="460459743"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="460459743"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 00:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="739665792"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="739665792"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 23 Aug 2023 00:37:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 00:37:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VnUar2lgFlUG/wpuZtbgKWsUF2s5SLjbg8pR8BsK17Xnr4zIC8/dJ2PGB4vT6MQwqerbTshX5PhL84XeICeQo1KmFQ6Osht6WvWM2iXupHqgIH71SE9Yo9NQMVv3RuuSPgkPp+JWozMyGFInvV7yVmDEwWzqKZVLAx+sFMVFwbnKW/xuySivibqoxQ4wcPaB8j66YAcNHCV8Enb4Le/ws/agDcPxLCBv23WGniETRGmphPJEWmIWuBKJMorHk9xwl+XJ3dNsunF7AR6R+r5hFko9cUY/UzRyUr1BFTfzgzJE/6FieZ33VTaWK5rL2hwC61Fob6wVR3SG/tyMjrCQiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9NbBdRhJBvBnqm1sYzIL7RDIwZxb161HgOTdU1U0eXg=;
 b=BX7CMM925+qxCH/oSfKDtoeuwpsucbPvPATZIhjhKKP6GD6AjDn1+OKvKc1ItpT3N1lxekMVMg/0u+abla1mA+2iE0uU+y1MjN91cPY/D+WqNgdCBTZLTGwIrwkoIpSqD43nJOZXV0c8Laz8j0e/ozbvQFCH8jDAuEbObUq9PF6/MnIY6hEkj2emjONCwTlgi2nFDcXQNIy/iclW9irgvV//ohWVvHJT+whvv4DNn05/ftV9+V3VoVHTt6iZXlATMctx3UxNuwdizQV0zNqf7K6Z0oudprynF7sf4vlAiVyXug7NZYH8NcnzBf3Z2dAvrc3T1H+J7S2Hd9WzUjeGLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 07:37:02 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62%5]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 07:37:02 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: check netlist
 before enabling ICE_F_GNSS
Thread-Index: AQHZ0J37WZjIuiYj4EOg4iPMWjwlFK/3f+iw
Date: Wed, 23 Aug 2023 07:37:02 +0000
Message-ID: <CO1PR11MB502809D33D49BF3B8B63FE6FA01CA@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
 <20230817000058.2433236-6-jacob.e.keller@intel.com>
In-Reply-To: <20230817000058.2433236-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: 14790cb7-3de1-41e7-1696-08dba3abbdd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OkLWblEuI8RNfFCQv4l0RrPOTCbBSSfxATbfDm1DSvGQ8eGikeSWOIYUQYQpCXWW6JzW1gxkfhU/Sct/k9649hjymjnz0W6QqIZY5yRnI1N2l+EGi8oIc7ryBi2x67YBPhMGQ6prQVTFPzTljKqEWQXJ9ZBc3pf1GMc7caybo0GYhlhXUJdOlNy58iYF7jyKJl7reoieA5kPhWEKKmaKE703CxY8/Iuh/h8Q6LerbLkO1T4B4+385nPP7YXgWNmUdfCO4Zgr2CymQC/Q7V3FJpoCzloH5/DGAhh/NivCgzqaz59+NG5GxgFQSLo1PRGwWiGImI7GCsRSJBKwQBbMxk0oLl4/ftiQ7WE8njJ9272BBLYuhLDjj3zYnfgof48+c7CN+oK6FneoZ/h9LIaJGBnTeJXGbcSBoFxstb8D3HxWI1RyAmExSuvwIiaul1R5aF5Iti9FOZ/m1Cxpi6Q4Yv3yKrFraurVORriGMdy2/VBDzTOx9GtpkkZXLye/zYhIUCbphC2rKkXuD/kbMa53vD4FZk8/6qxJCJe4VBrcaok34Dl6rE6aLmpL7dyU4MQE55s2T99zrtuM4mBnjsCoPOHOBPiyUXusnTGnbTOVXK/RGrtLyKzNFOthb2iwESx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66556008)(66446008)(54906003)(66946007)(76116006)(9686003)(316002)(66476007)(64756008)(110136005)(8936002)(8676002)(107886003)(82960400001)(4326008)(41300700001)(122000001)(478600001)(71200400001)(55016003)(7696005)(6506007)(53546011)(38100700002)(2906002)(83380400001)(86362001)(38070700005)(52536014)(5660300002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ooHyOAIbNTUi15+sfp6o9yA0VkuhPdaYmR6aRkyLi+IBPGEX/f8jrQhh3F25?=
 =?us-ascii?Q?Wp0CzX0Y/HJ/zBLiLsgyXL9cIoOPz+J/DPC7pv8o9zt+NNo15PcU22uJIWdh?=
 =?us-ascii?Q?BpLqpbEtVmE6JNmEwiBbRknz7Z0N31J8WVPjnm24ogQY5ds1FzOUtyXUMYK8?=
 =?us-ascii?Q?eXT23EsC4od9KFVfMjHpI3rH5A/6zsXFVt91hhg/nrF3acseQnRpfvbuvw6x?=
 =?us-ascii?Q?9Lin7rQUmudndU2agikAH1faxrgE0xFcNh1zmelA2EZi1kSB1apYdAIeu6JQ?=
 =?us-ascii?Q?uAxDK5h25i3uNyUEu7BTiItIe+N1Oncw6Kv6RbeC7QOFXSFlHNJe/aBxC5NB?=
 =?us-ascii?Q?SS8pH/thTXP1tJAlF2RgUrvda0ZGWuNQoAX0bP61K7gY5R8vze6wY9bkTPKe?=
 =?us-ascii?Q?CnZMP0XPofIeITzyDTcXDgUygRSbxMjcK+Mu0w9ZyW2L9mpvWhWOux3yWUzt?=
 =?us-ascii?Q?IbvvU5Pid46xxpei6omCQhFWpOctitGI+KZfWNAhNmZ/7veA4XFhg6sm5Gic?=
 =?us-ascii?Q?zbAcP6aSNwboH5zVF/6vRgexURYz4c0vrS/sx+j5t9H+6ORII9Q4xut8safu?=
 =?us-ascii?Q?teg+9sPlA5LQPgqmzKbFdNp9Iab29svd4VLPRsqwABZCjon2t3ltcAj5Nzwc?=
 =?us-ascii?Q?kxAMUaHGr6dmqYHb8+cR8SxJflwZ0Iv4Rxx75MiCuZwKd3igy3a5Yn/WJ9dV?=
 =?us-ascii?Q?HWtXgY5PoSfmmf8MGl/vfLx45wDhHUqO6D5eCtOFiBq/6fPDtY2mhoDIxJWl?=
 =?us-ascii?Q?UDMBWLiHCo41XUEd14v/u3lzaE7qM3fRA5dAbomY7t1ErxZ9IRXAlw+2RqGq?=
 =?us-ascii?Q?NIfw9gqzm4rg303rqqCXJFZslxCfkrSiHaYXMUxaqaT1SwodI1T6zvNLVvIF?=
 =?us-ascii?Q?A4lpqbdzpE/KU68hurIHNrI3h7L412ogC3ryZ87AkoUR4LJUVCl5wW5j0f0c?=
 =?us-ascii?Q?a+kdoFi7spmYLpKS+8xzncEAX9I3LYvSg00SAUFdBAUTHnPwsmzSiGj81mWc?=
 =?us-ascii?Q?84YKWMwOp9k9qqHE4Qsrrqe1wlcI6a0w8bMQOqlyKtHPwyhgMv1WVRR57VLm?=
 =?us-ascii?Q?fZIfiUKqB8tn44VFPkyo0BKmmZjCNVhPqw6kDh45GZDZC3zPw4gVjEDy9vy8?=
 =?us-ascii?Q?dBEkf7blOWG63pWahZJcAOv9pG/vp/gosKk7xpr8pRRKnnkVOWcCYYZQVV3E?=
 =?us-ascii?Q?+OoodtmkDl4OhZXASGMzPaRni4f/4rHBaRc6UODS+5uucBhCnmE82PNXvNER?=
 =?us-ascii?Q?0NRQBPIgQ6qNBHg3OXStR6q69298hoDLTLBYRTez3VBJRU/5Q55Esf+55FuZ?=
 =?us-ascii?Q?TTyiGUokX85VPy1539yr4xWAtoTUmDBLxAipiYq1MtKjvgkeWAnGhFW0F5aW?=
 =?us-ascii?Q?wFi0jHDg/Y+zLg9UP0xEWF+PB0K2gulAMugDS4aLRcZ/JddYBtA+wvVUGxJA?=
 =?us-ascii?Q?Xs4rxl3XzQV2li1PxER/pcpL/pYkX7ez8PDUul2jwL1oahcLcM3Lrt41aQYp?=
 =?us-ascii?Q?ysYc7TBzQdNSIejAm0zAF+ENe48uEQH37V6H+Z9zuTEHQMLskQHhDqFL+SJ+?=
 =?us-ascii?Q?NFQitZLd+paoQipRk6Sk+owNOgxxl55gf/6Tv2QuTVjTPPb8yc4CWvfnFfDI?=
 =?us-ascii?Q?YA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14790cb7-3de1-41e7-1696-08dba3abbdd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 07:37:02.2302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MhCse14dG6OdiPBm8qim82wQazZfxApDBSZ4VXKFFi/YmUV6CSL2g3huDs8ZqdTARyRT1D/4rnwB1CuaZayFuHcW4BhpKX1Y66nV8jwZ2z4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692776229; x=1724312229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ATqnN4jGPQku6kPs2WstXy2cB4NBe8Uh6um5YMXZNY0=;
 b=aq6+v3rLZP7FY3TecIgbKOGaYyH+wr/X2xmn9TlIJHHcX+7JaFU7qJof
 /XrsRTW9B+VTqzJ/+mqeipPYrp7fECMAplOOf4WAQro3JhkAH7AOAdEKy
 X4UP2U9hzDY6mH2GLZSCEvRwrcbb1qQN/5SVpq3b0visRsVTdJv5zo3wG
 89G6IaHf24q4B/EzRVxb/NmEH0QGM7DPZnKiihNoXibhcSWPZcWONXu+L
 OvyP13ec3U5DdLPidklrdQhhnrLd2MEVUF2Clxdimx2L0OntVDY+GA8ON
 H1GzdleObzLDWLuw33eNil7grHLHBTn/rpxIBGaI0QEz3VJ1xl1MQX0CU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aq6+v3rL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: check netlist
 before enabling ICE_F_GNSS
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, August 16, 2023 5:01 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: check netlist before enabling ICE_F_GNSS
>
> Similar to the change made for ICE_F_SMA_CTRL, check the netlist before
enabling support for ICE_F_GNSS. This ensures that the driver only enables
the GNSS feature on devices which actually have the feature enabled in the
firmware device configuration.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * rename ice_is_gps_present_e810t() to ice_is_gps_in_netlist_e810t() and
  move it into ice_common.c
> * call ice_is_gps_present_e810t() from ice_gnss_is_gps_present()
>
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  2 ++
>  drivers/net/ethernet/intel/ice/ice_common.c     | 15 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h     |  1 +
>  drivers/net/ethernet/intel/ice/ice_gnss.c       |  3 +++
>  drivers/net/ethernet/intel/ice/ice_lib.c        |  6 ++----
>  5 files changed, 23 insertions(+), 4 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel) 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
