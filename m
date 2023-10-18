Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD027CDA6E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7825823A7;
	Wed, 18 Oct 2023 11:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7825823A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697628757;
	bh=BmXpSngZdIRbfFsj9AxQun6qbzsHvla22PVM3/AFjRE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I7SuQ3FLDx6Ian8TEp6VFmXQYFFUx5bo3GRpNTVcXU2Rs/5jSF1igBniescsnaZ0l
	 EZXDh7Dx1cpTWgEu7tk+JoPvOizwQNm6+6yoGEKtLuWuK2PzgApKJQ73gFAaRBuFVY
	 AaiTCRx0eEW8kVvkMxWvKLf6rgw0vUnzm6E91E72YsNEtYVbcgub6Ge7HqOPOqHAC8
	 Jnb8HjMAbuAtgnM0f0TzNYbBp0cQUhf7EPQae4SPa/0Hur+mURPt/Z40BRiySwZ3qD
	 XgKwshO4Hzx+BQaOIJukyVDG8c5fIkcjEHN2bnjg3AJt9iEIPRAGrtzdYm5amG/BbN
	 Rpmvxz+YXE5aw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L4pORxnXM1r7; Wed, 18 Oct 2023 11:32:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EB2682334;
	Wed, 18 Oct 2023 11:32:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EB2682334
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9D461BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:32:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A21FE6144B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:32:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A21FE6144B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bY0a_8E4ermH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:32:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F9E160C2C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F9E160C2C
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="383215446"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="383215446"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 04:32:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="826854625"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="826854625"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 04:32:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 04:32:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 04:32:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 04:32:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VNRFcF+wYKMM7iqBuc9rSbSHmhh+Ly6xRgt63bPM6YXK2D3pABnJGlbAZl6A99Tpo7KH1Vkn8vo2+yjYudbDHWfHw1DwvR/krMLuuv7tE8IFnv8Dez/1bkO+hPoltZd9wEGUzGW9woTjeUYz8MqHoTr7GguJkUAxpzLwgpzPvOv5vEMTczBan4f3oXqmt4d2miomnNcYW0WRoZgflazLZ3l7USHwRnBAUzu+XXOB6ixbmOBL4PMIbcnaNHam23YLGwJrGBYaMAwFMeW8sd3bMZtCfoXlzfeCJ8moZNKftE9M30Vh9H3qWv9YZrvlJKNZMMK/0QE7qBDgWyBMb+WlSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pl2WWea+Nx/BsXP4UE8TQ3ab36Q8RmDNdbmg3vXcGM0=;
 b=c0naEoA/6WmyfrWOCwQk1AIhKFV4195V7YGWiYRWbRE6P5tNx3GlyZenxuty5TkSxzw2nq0NRx1fF2ziQUxSGUF5yiQ90UH/6uSOi2vMTggduFSnf3u9SAg+2/qWHvfJ+4ydvJCRh/ZZ3w09jc0+4LieWiKk0AKudwCnKXhv6j1TTIQr9N8S9uy7Muj78rPqvg1FMBEWOk7N5Fkqz7zf3RzS22QSEYLDQOQ5tjKEZhvrgD7bIcAzuFtIXVHpF9/RAy55U/mxiz9U7A9PvEDI4oA0uuCk65LHSbD8DBEGg8uBUnkQfgLMzhxo5TjaxfgsOe3DKuIDzWzS5h00CwSBVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 11:32:26 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 11:32:26 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, mschmidt
 <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down,
 disable queues when removing the driver
Thread-Index: AQHZ+xBiTn8K2LbBYkK3cbg5pgj3DLBC5s2AgAAL7oCAABo3AIAMamjg
Date: Wed, 18 Oct 2023 11:32:26 +0000
Message-ID: <BL0PR11MB35219D372A64C887257907258FD5A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-5-mschmidt@redhat.com>
 <MW4PR11MB5776E18B4699E7FFE49BE3E3FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
 <33589ae3-77d2-4e70-846e-09192efce402@redhat.com>
 <MW4PR11MB57767A1083F95A4F826C3F62FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB57767A1083F95A4F826C3F62FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|BL1PR11MB5445:EE_
x-ms-office365-filtering-correlation-id: 308e990c-0f82-4c04-6c87-08dbcfcde7d9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C02vYgQ+8Gh78dwaclq7uBmhg9e2DNvZHPb9lTpJpSDNSPnxtXRVQ9yGG4+8hBqfV/QdgfFkmfuBMDTBm2nXNQcjkkQafhLzIPJx1C9jSkThw7qcYIgMm53/ioWDSxDEIyOvxTzSRmx8mjBf9DnJzM1OZUsSf5KmyoONJo76JPaXzzKVy83TBcXo2QK7KqDBTpvE9EaibcrcY5TPpQHOiQkTlLr1QJHQqQg+IrjfyziMUIThRzXCqu36E8w28EY5j4j1NYYOaP3VtS+81L/ASpT0PKysiwJwpuueQqq2QyjdGyIK2ItqJ42SI7Qg/L4PprdXSCPQV5gWnIMMXtxxh9g+xQ5HwJdRpyJ6PaRVw7aWYLzEJ5iUXbv4s0cSoc5slJT7vuadiXN/MTAxkDOi/foKTXvWDHHueigyccjKEQ1o7OYshuWwMNgOD5m2qz/vxKbf7ApOC2V5rkzv+jDr+H0HjdXa7fF8dmKClCX2C3PS/ILM4bhpGjiH9jYDJlfVyOdPrV+bu8NwksAvXEdKCrfozelgfyQOTgdr5v05loxjNkF4PUTmbCsWrh3tjYFgjmSWU39KH4v+0ukBi3YM4GUUSlfB+Vv/mqqGRbXKZ44=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(86362001)(83380400001)(8936002)(8676002)(110136005)(966005)(71200400001)(66476007)(64756008)(107886003)(66556008)(66946007)(26005)(9686003)(66446008)(54906003)(76116006)(7696005)(38100700002)(478600001)(53546011)(122000001)(52536014)(316002)(38070700005)(5660300002)(82960400001)(4326008)(33656002)(2906002)(41300700001)(6506007)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pHbqLyfKg/18kVNpcSaHQjEP1nZ5AOnxm46UoMaHDuemtGbysozhQVhanvQr?=
 =?us-ascii?Q?Yg6pn78rx3bsv/CpBEulLp+rXuf23/Z1gUeytso4H2JfSRwewRBFTFPLtcOC?=
 =?us-ascii?Q?iSpzgkXMjzREld9WIO9H8kPxbUtyQ1El7BwC5GBOQdE8HB9vTJ7tgXZRwCFy?=
 =?us-ascii?Q?PA0saht5chTKbmZB7lO1I4jg3z9d0HN8+SWaDpV1VcG5OpanMHybYSmBvIie?=
 =?us-ascii?Q?Kot4HYX3FyGNrzXbVEbL7Ru5/bOPnnjwv8qDEpcTL6IPIpC0TliNxBahcCYk?=
 =?us-ascii?Q?BewX5rThxaVgGFoW2TxQF+LxcY7f87EHYgDcuLcJp9GWTKIREICtiRBfc8Hc?=
 =?us-ascii?Q?dUAi2cVRgEzhpOIABgo3JoAJU8GRMFUPSNIwsxNS7j2GoFrRNKGOzr4vXtSI?=
 =?us-ascii?Q?HCBTP2uiSIQzVhGCMLBEjkfifUcp9V9hvFNPgOJIBZcDXDwe5j8JTRMqpjRk?=
 =?us-ascii?Q?q+mnJ6qn7RJ5/gGWvOEVrlMLXYAfaoWNpWyXxGrn4y0K/o00wjcVbYuNyizb?=
 =?us-ascii?Q?jJnGxJIHkN9hESFkwLA9smw02vtQHIriSbmMl9+rqTxepetUBWzivgyyuYft?=
 =?us-ascii?Q?pKVAisRkfofnD3uBsnjHNs/LZQA3zd1op9C3jKEhSztYQWlY6b5th3b0bk6Y?=
 =?us-ascii?Q?AumMVypehlBIlTxhu82wKXslPEeTKtbV1OGpGBEPG5k0lPAE++073PC5q9QZ?=
 =?us-ascii?Q?ZtjaWa07XpIRCewYe+ceWuAaOsMyuO89m5z/rU0QdQZoFOlKcrX5RNTaet+t?=
 =?us-ascii?Q?nO0tdad27dYm5KbSHYL2N0TGRPviIGONB7dlSDJRz6MTuDI8QpeFxCits07C?=
 =?us-ascii?Q?bBKtyhWw3uT6f+mhusNqAvVm//1JI2VT3E20RmUsmPBmpOYwIPSppNaRksly?=
 =?us-ascii?Q?Gt9aoF2hmHlcHISc9MpKqQZNytb0R/TOoBfp9OE3qe54XJP2EZRHlVqIiK66?=
 =?us-ascii?Q?iXSCwly/Av3o4GjyPUb9zHtqj1VXunQGLh12JLC8IxFTli2hhYSQgIDsLUc3?=
 =?us-ascii?Q?b9biiabNqNPGu6RfKHnSUqPw9ch4VOVFA8meqbjht8DopKy+flNCV6T8LUW7?=
 =?us-ascii?Q?eU5SD0KbI4BWv0s3KhJNZRk5Zefn4d/ZItxW9wR+MmRvrHsP7vsueybe5Ua2?=
 =?us-ascii?Q?ad79Ih2VnNO3Tb3byehUl3qsnoLUyhw0/K4f5ct1EZTIEQcx1C59W2N8wM8s?=
 =?us-ascii?Q?8VuHnCbGRVJY1CwWVdq9ltkYiraZ+PLkukneRfRG4cgd+LdNdGUwiVzAOa6S?=
 =?us-ascii?Q?vL2P7mboytNqlbHIH87UKg3O3jKsYDgTHQt/iYRScq6HD9Yy5IfV2ugtLwnq?=
 =?us-ascii?Q?TX1eLbpQkjPqUOhKVUYxgj0kQAMJR2cniCSI0QQ2OuAhwQRvCC5XemBU2aD5?=
 =?us-ascii?Q?NEpfY82LnImQaMnoguZhXdEZw53hdrLnxnp+BX9xIcHVIdLLcbWtDtPoRHac?=
 =?us-ascii?Q?0r6k4UmmUagA73OGVTLDZkD5UNwL7VqAid6bzkcu7yKOgBxsDmkBWF+ltsao?=
 =?us-ascii?Q?TCGK933cc3rHNzMZePYS1iOYmrrOIRFzHFweDOKZQhlSxSGOZ91urvs5qmaw?=
 =?us-ascii?Q?Kq6hrNkC+65CdggephEYTMNl8C7nLWVWPZwa1//oXFRSZNLwTD3o/bc528Ij?=
 =?us-ascii?Q?pg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 308e990c-0f82-4c04-6c87-08dbcfcde7d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 11:32:26.7874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 72V8WR0TEerC7AQruCsybyMaqcfXb/Q1S6GoG9fX85ZhsPDXtydHL0w0Z5GstlAgorthryDl5nvWgKSw1RNDIhaolvs8F34+Fq4oyZXjMao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5445
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697628750; x=1729164750;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aW9ecOyxp3+tvRxWP+5ijF15ITAQQSgkuXj828HKo2Q=;
 b=UMqtdIgreajt3426/QWRYZ+87ydLY0KWy1Du8pqbAYW+42drltBFBnch
 gOAEQD0j3tT/NlpxxhqEuadVCVUDXMdJfy57HWF50nIPAfd+Tk1TwM+83
 jW4CMVJZ7qghBGvz0F2XOM4lywV9l2vDVaqf7/XAoNb7Dj3M27hxJeWu7
 f4mgW9S6q1p+6dAfhTKgkbvEEXkQ2nRh21Xr3WtYWB/351JpBCR3aHIVh
 QdUhuDrnllC5LMeNUmlBY1w98t9WtePLanDlPSdG3pE2IxI17bv8aC5Pf
 N5/BAuEdG9AcXwey3DLFkGRJ+UTKseJLkCQ0JlKjpOnmdxP46XmT58Q2q
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UMqtdIgr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down,
 disable queues when removing the driver
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Radoslaw Tyl <radoslawx.tyl@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Drewek, Wojciech
> Sent: Tuesday, October 10, 2023 3:56 PM
> To: mschmidt <mschmidt@redhat.com>; intel-wired-lan@lists.osuosl.org
> Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down, disable
> queues when removing the driver
> 
> 
> 
> > -----Original Message-----
> > From: Michal Schmidt <mschmidt@redhat.com>
> > Sent: Tuesday, October 10, 2023 2:22 PM
> > To: Drewek, Wojciech <wojciech.drewek@intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> > <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in
> > iavf_down, disable queues when removing the driver
> >
> > Dne 10. 10. 23 v 13:39 Drewek, Wojciech napsal:
> > >
> > >
> > >> -----Original Message-----
> > >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > >> Behalf Of Michal Schmidt
> > >> Sent: Tuesday, October 10, 2023 2:25 AM
> > >> To: intel-wired-lan@lists.osuosl.org
> > >> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> > >> <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > >> Subject: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down,
> > >> disable queues when removing the driver
> > >>
> > >> In iavf_down, we're skipping the scheduling of certain operations
> > >> if the driver is being removed. However, the
> > IAVF_FLAG_AQ_DISABLE_QUEUES
> > >> request must not be skipped in this case, because iavf_close waits
> > >> for the transition to the __IAVF_DOWN state, which happens in
> > >> iavf_virtchnl_completion after the queues are released.
> > >>
> > >> Without this fix, "rmmod iavf" takes half a second per interface
> > >> that's up and prints the "Device resources not yet released" warning.
> > >>
> > >> Fixes: c8de44b577eb ("iavf: do not process adminq tasks when
> > >> __IAVF_IN_REMOVE_TASK is set")
> > >> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> > >
> > > Looks like a fix, could be a separate patch with net as a target.
> >
> > I did not want to separate it from patch 3/5, because it changes the
> > logic when IAVF_FLAG_PF_COMMS_FAILED is set. But on second thought, it
> > should still work fine in that case too. aq_required would just get
> > reset to zero in iavf_watchdog_task in the __IAVF_COMM_FAILED state.
> 
> I see, so it's up to you :)
> 
> >
> > Michal
> >
> > > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > >
> > >> ---
> > >>   drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
> > >>   1 file changed, 1 insertion(+), 1 deletion(-)
> > >>
> > >> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > >> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > >> index 0b808fa34801..2ab08b015b85 100644
> > >> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > >> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > >> @@ -1440,9 +1440,9 @@ void iavf_down(struct iavf_adapter *adapter)
> > >>   			adapter->aq_required |=
> > >> IAVF_FLAG_AQ_DEL_FDIR_FILTER;
> > >>   		if (!list_empty(&adapter->adv_rss_list_head))
> > >>   			adapter->aq_required |=
> > >> IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
> > >> -		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
> > >>   	}
> > >>
> > >> +	adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
> > >>   	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> > >>   }
> > >>
> > >> --
> > >> 2.41.0
> > >>
> > >> _______________________________________________
> > >> Intel-wired-lan mailing list
> > >> Intel-wired-lan@osuosl.org
> > >> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > >
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
