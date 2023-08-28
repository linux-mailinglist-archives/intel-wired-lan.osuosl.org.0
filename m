Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6DE78A976
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 11:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9223B40929;
	Mon, 28 Aug 2023 09:59:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9223B40929
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693216779;
	bh=JPupT5WY7blDqnvIRc1gWJT2AZkbQlsu7JqLDkvQDBQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q3jB7rs8ckwOEUNwsQ9+ErPyBoCy3niAjlm8W+SWOjn0+HzMamaIeg09JtVM4e5L1
	 pIyz37oxwgSj7+0vyYN3wnsy8saUpKdHpaP8gASppvoi9QEGSGbhaJY9GJ+u+cJ9Vj
	 68WWtCm2y3jbvg3l6Z/Uxy2KwzoY3opsAuEaBB0Rnok9GkqwbDGaify8/FLtlwIBPU
	 aSdBJbpTrIaxy8x+2fuadQfBBYai2Wj737TOYdUiY9e1H1gVNkBYWVbhvu2RsDMi2q
	 sGdz61MH5M39lNbfbKRZT7p44uWVdTiRZM6AM/xUZpBsD1unbC+32gyHtViJQ+iKTU
	 9MfPnouowFUWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id icnoRm-evl5o; Mon, 28 Aug 2023 09:59:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 272F840926;
	Mon, 28 Aug 2023 09:59:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 272F840926
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 246E91BF271
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F115A81DFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F115A81DFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8gDChk8L3JSy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 09:59:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B24E81A30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B24E81A30
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="373953935"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="373953935"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 02:59:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="911990111"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="911990111"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 28 Aug 2023 02:59:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 02:59:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 02:59:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 02:59:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 02:59:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dx8T6GlASvm5j3CJnzN5x+pYyNwb10NNz2iJ757aokWfeDzDfSyuchzNJ8y86RzhCneyBMa0HgcHqT7PMGt5V/0JK/vodSR0fs+UFj4kGpB5KteZcCOUqbTyvVR1b5yfIzIYBctqbiNporxyjQF+Eu3wYmpzWlUIBvSFahFKOrieXDFBZKiCYIDEuLbFbTMSSPLtOK0c//z1hf1Ivy/lDzn4qwWCjx9Cdz8btnuIt05eFGbMQdFSutZqY5UE6P8j7XCAYmoKI8Ut9clB+ES8Xg3sAcdIh1OUKkMDqRY2yd4DqT0YCJb14zcOwptk4NOW4qcsEqr2LE8G2wtjtLFA9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ado2/l3HygbwvItApBeKhdoJIFTOIS+aPdsv51rVYeU=;
 b=PD99VfUuLO2p2bGRycmXVXM+y4Y0c4n4msO93STNo5spEx/JJh1D1zXW6tqfJCQ5F/dPfpJMQAZyyg1bxPsLDw7TQAEX9tXXCqJFvBiAfLAk8gxAhmh/fiicAKEITvQgCOeE5ehvwi3MhVC1LVu9zXc0LoojFl0nzN8TqhGFwkv4uGN27j8ou5BGr37Ree71bDC6QrVWNc+EQUSCPJdDFn+LI0tiLzD7hI3yPToniWf8KvgBjZQaDkfET6mZwhteZg++4i1+QoFS+yYLIuEGODTA7NWKx7FrYjOUFQdvLnlJIVFFbK+LHrKuoOBEqijlOHn01mDZp0xV/J7Nq8fECQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by SJ0PR11MB5182.namprd11.prod.outlook.com (2603:10b6:a03:2ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 09:59:23 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a%6]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 09:59:23 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: PTP: move quad
 value check inside ice_fill_phy_msg_e822
Thread-Index: AQHZv+8UxcQo9riOZUCY83NSySTYNa//rGMA
Date: Mon, 28 Aug 2023 09:59:23 +0000
Message-ID: <SN6PR11MB31330054D4EBC0BBF603CB27BDE0A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230726182745.1326754-1-jacob.e.keller@intel.com>
 <20230726182745.1326754-4-jacob.e.keller@intel.com>
In-Reply-To: <20230726182745.1326754-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|SJ0PR11MB5182:EE_
x-ms-office365-filtering-correlation-id: 97dd4519-7e0d-4e7e-c38e-08dba7ad74ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aqSfUbRV0xfWEXebPEhAzbEW7W8aNL7Gc41M0dJyBSFPchXl4NuAph41TF4tTqtsZMICCAPc97s23MoUroKHBmtUQeRdHBrZwN8IxhbAysLeYZrkpylsDPkHXb1moNhPdiTtSjZS6W6h7Gdkra2n1llg2wyVB9fsswtcY8WwiIXp/sSI92XP5W+YJDoQQafZsy+2EDpNT9O9eogT574yxwDGpBXN2AxKKxWpCU/YcfVL2pOSACsPccaDY+MpxlhlSEs/5gpXYsH7lGJcjq7wEgAjcqo8WHdFQ3po9ue40qmMLUWVangNP0xe5jUhmM/jjETWmf0d+H/BNvYUlgrBEPe2qrgm2Pobl75Alc0eifQpagbqRnwUfB2OoItQvut3XbfEezlAWU6/arv5xNTS+GOLJAliDKSoF3D12yUZ1cfSXB9htfQ4CGKsv0ucIJ5NtKlwxK9r4F03kTbCLGb5LDnkrGLB7QI5XULRo5cMV1mBsMwsRi/XAZkpS7QaREhNPhP+up3546erFbJG7L3dnVy6vGS1yuoQABCRD5y4+USEUXCkpeSsX3i3d6kadZbkX+wpkTOkL0J7aoSHWFlABJmA8uHRQ7DfAVBO55v0QCmBJWponeKrQqUyXDARsYIq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(186009)(1800799009)(451199024)(41300700001)(122000001)(38100700002)(38070700005)(86362001)(478600001)(82960400001)(71200400001)(83380400001)(26005)(9686003)(107886003)(7696005)(53546011)(6506007)(4744005)(55016003)(5660300002)(66946007)(76116006)(66476007)(54906003)(110136005)(316002)(2906002)(66556008)(33656002)(66446008)(64756008)(8676002)(4326008)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NXMydPIa2nHTt/3ihtbPHRova3rOqLDr6UlqVCrkhjDKV2d3tvnTai6mcZpx?=
 =?us-ascii?Q?swyqNx6eYT0ld5JzPkGkWvN/nlIAQspFqgzuFURIODM/zCBSDLl3/LK6srJt?=
 =?us-ascii?Q?uTw+bqBakw5hbzNuk9OK7C/4luOlsfQ6TQdTmPpReR1st74J1SyIsihbVQB1?=
 =?us-ascii?Q?ocRKp6Lhia7tW3nCjvXiV1Ct7zOuJ7HAJH4mU7cDRkV3YnjmqUTLWHh/yg9j?=
 =?us-ascii?Q?UPraCWiUoSpoK9pS/It7MpXQS4IFD0n5fsAAyzRNwa4JgznIalJ2FFEPQl3W?=
 =?us-ascii?Q?UW3GzaUmFOtSusCXjGlE8fOtoq4EAVnfNeuYdJbhzBHl/zWd6njFMVAq+YDC?=
 =?us-ascii?Q?I4WzgZD9dHDfsHpAIp/5uejHqoSvN3pHzNxqQ0E7XxACmbV7N3Mqkq44DDqm?=
 =?us-ascii?Q?k7A2eOht3eW6MWr7FstcDif2m92ZxSSi1sEu6Zl08hePGZWwKlpwKEvgmcOg?=
 =?us-ascii?Q?sbAL8ammHi4BuREPvj4TLIBMOvQj2ue176KDTr45HzP9txQGs1wGcA4PNmhP?=
 =?us-ascii?Q?Hnlt0bTWDphcPSo6zfg/+B06hBWYKBYBpqb73NgmmdvgtJYSsWnxg0bYFZrE?=
 =?us-ascii?Q?E/ugaqqMUiWDKV7jDeFeYY3r88hvm6Qe4m7FkcHB9MMHcFLJer80NYGEHjmV?=
 =?us-ascii?Q?CMukhXMOU5nGOLVnH3cV73FOr1dfnr4MGfc02J9wWPGTngivhlSpcftZbdBV?=
 =?us-ascii?Q?AgmDChHl94yV1ky3k9V5OXQpaZfpAVDPToERd94gpYyS2eU2x5G3elo22/+E?=
 =?us-ascii?Q?wMBofTuflQBCMqrSi8NL04KMXikrSPlg9MznzHlC83+IHiyl2S+M81MjPNm+?=
 =?us-ascii?Q?d4GWB8lhZHtQpO6sclpNSBKHq0yhLBCEYjBLEkgSVsIYc1I+CcmQ4KvYmg4V?=
 =?us-ascii?Q?eZXcf0syhn6CkUeUbi5ci71JNxuA6GxcQUvVynTaolG6U0RcgybtM1SL85C5?=
 =?us-ascii?Q?89B4GPXT5VpemQlbwKu31CxE64zri+IVLYuvABXQgfcY0/BGpBgRgASxCzmW?=
 =?us-ascii?Q?N/U3BgeNx8Gcpw8FxO7nVAhw9aFMqm809B43mTfKeuUUNCY8AiOfnu4Kt5z8?=
 =?us-ascii?Q?Ie1hf8ZKrp2FAd7oll+6dnwzVhkp0fLH/Ifl/rrvyOrQD90wVNJgO2RFSFQy?=
 =?us-ascii?Q?Gsbv1v4v8X+fAm4hXYhc09n612LZJ7MEk/fxAsNyJ/Cph7ujQA/i4J4EkIGG?=
 =?us-ascii?Q?/khvqKlIrAvzwq0xsohq03pl+Dezet2RGzVJRSsNL3T3C9Hw8n9Qp2YzoBt8?=
 =?us-ascii?Q?EE2ZZA9e/emMttEUSe8iHGgEsyS+pxPgiI61ZpN4th7t1HAPfl7N+eFzk5tX?=
 =?us-ascii?Q?fYImxslOgFzmSct64/nPCxOBgRJM1KYcjaBbiKhOtXbXCWFZQoQgG/GcsKM7?=
 =?us-ascii?Q?+z6yIvBra6Ccgbd10i2COuMedyQ6dcW1VDjOw5IhStB6BP2koSRywoGyMsdH?=
 =?us-ascii?Q?7ncXQFuTnW8AsY3f1UCultj4e9TiNzxCjZoFwoNxsNr2zK4i26cfVeo9J951?=
 =?us-ascii?Q?P7dyqxgP9DXH49aU7JckFBki8riY42ypJqAScnwNXjyCngnGTLt9JfvaaV9l?=
 =?us-ascii?Q?SwU82YnlBIWoaG99e/ZrDn0JSMKB0pno0naXn8az2jZTv5qOCJRhLjjHw0eS?=
 =?us-ascii?Q?fg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97dd4519-7e0d-4e7e-c38e-08dba7ad74ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 09:59:23.5489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XBFsvLx2cucld/xdAoAEFVnb67ozgEiLrUJHycta9gjfPPIT5Q2bLFvCpihZYhb9+/i/rdqVDGejSYt+/casrk+2vSAw5UZzBsd7RSTZRImc8+RdaFPJUw04pDxe2Jl7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693216771; x=1724752771;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KK0jOTJxTb2R10eyaXnXbVGy5owOlf+al28ShvC5HyU=;
 b=U4Y6SACvL014/BsBTEBh7V6MTn7Wl0fYxwvLgBRcGvPMO+lKnOuJZHVI
 g43bufFDoGLZ9P8IIGek1blawhndLn0PN1KqR5nidnMvCn+271OIgrqxX
 UTQuT+I+iIhm88C0nWF9eOgAa+Cb0hpsbWbEGPUSNdGKYM6wbnluzxm2D
 NWTLOX2hdtVfLrdyJYCL83VS8tLd4wi2REBUsP+Dl2j3w0Kg9EZ/6sg7q
 Hx4CGh0kslaFI9HW328gdZynDU5pFjzJZXrE+av8QIAKXdsQXSN2LxdRw
 Bd2kUkgTRipPQpX9rhlBl+Bc+Hh5Z/kDb78M7WPEevn5Xh9sXI/5RjPiV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U4Y6SACv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: PTP: move quad
 value check inside ice_fill_phy_msg_e822
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, July 26, 2023 11:58 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: PTP: move quad value check inside ice_fill_phy_msg_e822
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> The callers of ice_fill_phy_msg_e822 check for whether the quad number is
> within the expected range. Move this check inside the ice_fill_phy_msg_e822
> function instead of duplicating it twice.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
