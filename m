Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052AB7D7668
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 23:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 897F64056B;
	Wed, 25 Oct 2023 21:11:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 897F64056B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698268287;
	bh=wsBOvO/Yh1c54BRHmgd3GKmWbdpgbvOb1te9Er5Ltdk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=msWNgYUjg8jObNU7nAmI/Kt4sQnVCJlLca+pIX2P6+cA9TZSUKJJE8yUtaicJrdFd
	 VlU7fUaLj4AfCvMzrwagJ+AFJQO6eW5nSmFYJSju4Y07ZB+S+MIZnWbqAD3kZtNTub
	 AUYNiYBMqPOsG1XuvagdY+k/CScMF7pgZYCiMCHtnVS6Jq1pVy7mt4UX8biQemDGlP
	 wOF37Wm6EDZyKghGNoqlPWLRE8nEmy7Bg3g69nl0khwoMp3+pjCsYd17lN8Jsh8dy8
	 Iuq9eVSdiHlUicWFUM5jIlCdlaRjYF8jB2ILiUm+givRwsB5HOZeb6WT1D+YcMksUM
	 A+TD0dGR4O4aA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FG2OmjZN0Y5K; Wed, 25 Oct 2023 21:11:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4018A40567;
	Wed, 25 Oct 2023 21:11:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4018A40567
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0D141BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83C0A820E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83C0A820E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bvNQwMz_QH-l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 21:11:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36763820E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36763820E1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="377769624"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="377769624"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 14:11:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="788253503"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="788253503"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 14:11:15 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 14:11:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 25 Oct 2023 14:11:15 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 14:11:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DCnwQGTKnO2U8uobF+iqgz1pc0fdIlt4rn6XDEtnV4yC23woml8Jb2dUlM+oEppDfinRpOW6+r/nCo+/1suGtdnn+7HSkVM5hmPqTweW8hVK2Ug1pMx5QTmWLVk1RYqN1dxxLFaNXBIDYJordOJ1GmDzFuVVAW6nQEpWxHTPGQ/36Ad9AothSEUabq1Kq2KHukcTFytTryKVXgkWIbZ9EyCFjaZvb0zw3cWrQsgdEdQZntjcdk6hSBntIx+nc8XmJITdAWXGFI53AG1YWOWZVBib1x2+qxSzL4fCGeaqsfvN9a3Fbr0zFwjp/tLaTN39IsLC7ouSeptWZMcAfok1AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WP0PUJJPAdMwkNexxuV5y7CR9xUSnLA0Tbin4rEicyg=;
 b=jLnjy6OHlpQr6exKUCatE/WeiVCmwK0BL8P2rfXeSDePfbDitA/5a8mXiweO0PSerFM8BnMQC9j+i5p+DA3HrDq/efFidCR3941fP4T8me7yvfo44z7MLQfB4uwWC0fmRoW95Jtttxya8hie0WohD5C/I89lW4B+fYOAAIf9fHFNJRS7jpx0izjMQ9D/JmPS899WXczFgd0mBTPEptLOMMnaqyGxNywILToM2UN0dVnCmVoo3w6ZGIM1/oQ2GJXcwfP6L6/FJmwfKnOTVHaFMqCeIjcvwi2JbPCud4Bf17MP9D2CA4gl6hXZOgB2+a3anHdKvoPuxsSlwQVoYIucCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4218.namprd11.prod.outlook.com (2603:10b6:5:201::15)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Wed, 25 Oct
 2023 21:11:10 +0000
Received: from DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1c69:1b8b:5fd7:2e93]) by DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1c69:1b8b:5fd7:2e93%3]) with mapi id 15.20.6907.032; Wed, 25 Oct 2023
 21:11:10 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 2/6] ice: Add 200G
 speed/phy type use
Thread-Index: AQHaAhpb5Y2LY3eiiEiTF8qQ6rjRULBbCzrg
Date: Wed, 25 Oct 2023 21:11:10 +0000
Message-ID: <DM6PR11MB42181B8BB51EB523239AD4F282DEA@DM6PR11MB4218.namprd11.prod.outlook.com>
References: <20231018231643.2356-1-paul.greenwalt@intel.com>
 <20231018231643.2356-3-paul.greenwalt@intel.com>
In-Reply-To: <20231018231643.2356-3-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4218:EE_|BL1PR11MB5256:EE_
x-ms-office365-filtering-correlation-id: 8188989e-edaf-4377-7457-08dbd59ee99d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wce/LTiUu+IkqLuKurxHHUCqNzckyxwkTIstU3NEG6wVqCo+pLz2s9uHsK/uDEwEqqoJt8uIlC7uHrq/vp5JVJ6/KNvljgLf52rAPwY6iG08b3hQuuTuKB4n3jJ+BBkgQXPFnDiCEmFeFNcJUELtencfJYcsnE51FBBScxNc/sTEy0EvAINEguBHaRcfLEJ38Syzqlis4SbXnYKIKwkr97sXPYpT/izllpYqc9wgsna/bdC6i3Etu/zOuDhLvrUsGPkKMl7kC7cc7bELX/P29QHn+gswuTtMEaL9A/jxcrv3jYX7eF8L/Jc31dC98gWIC04VV8N4B03x9yeO51ls40IpRj0Uhsj+EcbBAWsbG2m2Amj8hje7MW0g2TtQovvPJa0w1T1i74S2V/NrY/ve3apznMLGufVtKhO9ORPU00nUrgPOqVsJeYUTeHDG0tfvccnGiZt/TR02HAR9birCzsOzpT4JOekPPHT8xq5g3Je91G9TBIMV/xOSDHCvh1+sdKeRHtdvYBhspBHk2f41Yxz+udQ5iDrrFCzkPXXVINrvAo74+noB8dZ0Ea9PAyGTb7BIR0LVDPnRuix4HneF4TT+ygbZsNvwPbYimxmKcKX3YsXgfbQAs7cUJpLvfYVI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4218.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38070700009)(2906002)(53546011)(55016003)(478600001)(5660300002)(38100700002)(4326008)(8936002)(8676002)(41300700001)(66446008)(52536014)(66476007)(33656002)(66946007)(6506007)(86362001)(54906003)(71200400001)(110136005)(26005)(7696005)(9686003)(66556008)(76116006)(82960400001)(122000001)(64756008)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kokdVcSljZDE5hFdHX0ddQdp+ahrXpq/lcWHch8df8DjKSOddu34KumPalyT?=
 =?us-ascii?Q?UhJ8w3gSQrQ47c29hykbBXKiNByxxuJCModpbEjpG+qzJ6X1h+ufXutoCgEO?=
 =?us-ascii?Q?TYJRPfEj6jjQy41gTz9Be2Bt43kDhAWAZWJY96Uto4suSQzySBLDHyiD4bhP?=
 =?us-ascii?Q?n6mrcp7k+8uPSK4opNr1xnWj8FWgZ145VaqIx8gs1x4oFViHunBy0kynQJ37?=
 =?us-ascii?Q?NYp2uieMp1JB7j3uiSb9X6L52sIQUHv8D7v9BckMtjG8Z1y5slWhHg9LYX71?=
 =?us-ascii?Q?f9QQRFNCrvitbJk5LVwpIXwB8YTb/CYK+Plc0kuA6HWpWeayS5Wt+RrqeeTV?=
 =?us-ascii?Q?Ed6BYA1r1qRel/J+e0iq8vX31E+tniZNXH+xuoUFAwZwxdmoTig0ffMq2QII?=
 =?us-ascii?Q?hEdZeUE4cs0wvzDQPMCEKT9P993nTfdDWk4t8ijGYDK0NNAeSBS71p1Vfqg6?=
 =?us-ascii?Q?Vgx9Ky1eWpOiBlVbD4tJl5ToXQD1/+x9JjUS8VgVMJJTdXTSiZ9JAzbmmthg?=
 =?us-ascii?Q?VhKZZ/9WA9W973cRKWOaftQIBdpFQqeMgMOXcekd3SW0jVvHzy1NLG6fVcUD?=
 =?us-ascii?Q?3FWr71SwfSnjm6+08nHbfploaWg0JR32vDCdaqAwGj3nTU6qUVFCQuv/ODKb?=
 =?us-ascii?Q?BZuiveNGcOWCrBPgl+tOxFxMpMVeIfYFcXkg4A0fDw7djI3FJZG6y8ReWWId?=
 =?us-ascii?Q?+6Mo88DjaaOuXMmVBzRUpcKhWqMPkC5etDc32s0GQ5spJ08FdnGyulOhyJsp?=
 =?us-ascii?Q?F+B/Q7SfiSTOjPUwFPagh3tXLKGFINalfF6o6o9oZuB5olldcJxzqGGgZTXR?=
 =?us-ascii?Q?OAcCmOZsIqv2aKS0RC/gE5rAlnw4ofZwvBzQ6rkuV0gZEnuJtG2e5iObIy10?=
 =?us-ascii?Q?Z7oyMfsJfQ8SeoOFRS9KC6UTvJ81pdkFkOFQ6ZF1By/Tnuf/Kr3092p9neVz?=
 =?us-ascii?Q?vd88BwR6Xnp0X2YWLN9CATy30UCmIh30NcrgfHPMgIcHPcKYwXpsON1/a5Ej?=
 =?us-ascii?Q?c1DxcJXgEX5zeGM9BYuk181cNNdzztd9k0H1ukaRmaGFxEo3flXJpzqSKzrR?=
 =?us-ascii?Q?IEN+srqkMdm94FHY4qv/BnSLRZgBJQGpearyqNdDmhgvKDQ38vR3S0Lz2xvu?=
 =?us-ascii?Q?5sUBxDQo/+WC55s9Pv4ug+UANa+08R47QLW8HdLBIqJF8c3TQgOu5+z2VUIH?=
 =?us-ascii?Q?r5GEgN+zNWD54S9xD6gOC3Rt0o49yOmliYmFsKP2fXAXevn/CVEINe2spKkN?=
 =?us-ascii?Q?EJW1Toj/ZntcFxe+W7ncIqR9w72McFJvlVXbXEzh5qm/VwoQPZqq34xvcLIN?=
 =?us-ascii?Q?8pB903pIK4aF+FDaocWCd4CKpOTiT4se+X7NWhPebxlNsooBwRkIJ+/zHguf?=
 =?us-ascii?Q?3gHnC3b6QBlDAaKsKSYXripDyfReWzCmRi/G2B3BFE7xetQGbXFuY5rD6gAu?=
 =?us-ascii?Q?V/iCJCsIEEIyiUMAqrGjz6SoeGE1f24y53dYogtlJFtauxTlSt+F3dp3O/xf?=
 =?us-ascii?Q?tKsuwKKPgFZpSmZ0hSrDomzRhnLsQP4XBZlxNLt5XW/w7v8MiQO6k+tqBiRO?=
 =?us-ascii?Q?oJPXoIrBAUZPvLh8rtPjNQzjLFFpcmvZ/Vu6JGuS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4218.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8188989e-edaf-4377-7457-08dbd59ee99d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 21:11:10.3916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JVi1gxCt1FQPB5MDM0YprVHH6ICCJcmjh3wgHvay2RlOwf9eXxrxok9XaDhwG8YMO3Y5IfXqTocn7VvlYiNEc0RgBDo64ZeR+ZLud0HPHsU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698268277; x=1729804277;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dzqf+N1e9/tQpIf3KZc2PbOCLBjadM5xF88+4XnchBE=;
 b=EUWVqXZJ+q+3IG8nOlUqEXXAPC0Jw8XPd9H86XuoGj8j/HwAmpqR+WEe
 5pHJ77cwNeP9i+80ce0iGvAuyZMw9NJ/OWTdjJ3iKzS4GAYaKRvd7XYCk
 nmcfOY6Kn64xSGABhFeHHhZLoCS6n2+6zHM9+g9aJcnMS0zxME2t077Zt
 oLzO5YvPqao9vToI3KY+agfizWJNM/J379iMXnPtWUaqjg052MaLUECB1
 6t1wxGP8JUVsJd16MW0KpeYb/AME4Q7is+EbqVILuSqDHy03Q3H1FmdEg
 AcNvIk7jjbYQ/YR8AlIWsUyURuGjTZ/lC2yYTjK+c3GHyjKdIBKywoP6G
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EUWVqXZJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/6] ice: Add 200G
 speed/phy type use
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "Michael,
 Alice" <alice.michael@intel.com>, "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul
> Greenwalt
> Sent: Wednesday, October 18, 2023 4:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; Michael, Alice <alice.michael@intel.com>; Greenwalt, Paul
> <paul.greenwalt@intel.com>; netdev@vger.kernel.org; Chmielewski, Pawel
> <pawel.chmielewski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; horms@kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v5 2/6] ice: Add 200G speed/phy type
> use
> 
> From: Alice Michael <alice.michael@intel.com>
> 
> Add the support for 200G phy speeds and the mapping for their advertisement in
> link. Add the new PHY type bits for AQ command, as needed for 200G E830
> controllers.
> 
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Co-developed-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 11 +++++++-
>  drivers/net/ethernet/intel/ice/ice_common.c   |  1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 26 +++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_ethtool.h  |  8 ++++++
>  4 files changed, 43 insertions(+), 3 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
