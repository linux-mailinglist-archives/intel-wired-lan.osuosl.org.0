Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E676F6FF9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 18:35:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41B436165A;
	Thu,  4 May 2023 16:35:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41B436165A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683218121;
	bh=XWGysu2cn9Y1hVNKW4Ix6A/xJ03440P8vTQG8pOb0fs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J2mWom2fKLGUUetgwEdOs7RYjE9yjqIvSSq2OiuR3+H18atdwWsboPtOOPAe9ZvHa
	 45gNVO9yuRob2CryEiriltH1Gx2UTouJGsCzJW8WioJxtSIolQXqPub5Bl9TMAsQnX
	 Zcf2yKzHQkXZEPTLB8ECOWugFRoBqSdjKG2t/7QCgilbs+u9fdBIOUdW0PZ5sv2guB
	 vApmCY3irmWj7sn6bW4MINFFAaJYmzE3S6bxbJmiGtx1FAbkaTG4xYIy9rZSA8BIie
	 R+44S/A9AiGYq0xwqg6UBWmAbuTfBSanK/JVcwqjZ1ETLbABq5U9q4otqMXSpOic5p
	 i11bs1HLd4KPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GhFgBan-4xpa; Thu,  4 May 2023 16:35:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D81061659;
	Thu,  4 May 2023 16:35:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D81061659
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 428EF1BF310
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 178FB42725
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:35:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 178FB42725
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9mBsk0A4nvkt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 16:35:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3691742723
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3691742723
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 16:35:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="414485071"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="414485071"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:32:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="808803345"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="808803345"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 04 May 2023 09:32:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 09:32:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 4 May 2023 09:32:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 4 May 2023 09:32:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lccTVT9LWDAcXQtyeXuBLiY/RntpEt7/1T0QB9swi7A9ovjQXxMF4OV2IZSPzQ9twLlbdt3xg18tDBuwASZvGKNjYsAqq9AHFiCQ9q38MU2o+ZxF1aINdmucu8EwdLkLZOj3k735QYdK1HZapwRJeobnEC/iwn3tx7Jhsmqeaniwl6bHCg3vvWvDV+iM7/OSyBscReBgo8CWQBwrxtqhNYkXQZWyhtHvAwIsQ1UslIXfoda9xkNDh1mzcPSFhUqu0HsWWtop4UaC5DhgAd7Zq7yrWpL1DzrAL3aPZS3GgOcGJDCCB3AeHEfjWhC7XqYHWBuuGB7C2LEAtmzBslkiKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VIW8EjmUlRTWXFjIJRwT7vINUAEYUfmYZ/D5/H97AfQ=;
 b=daHSv2w6K0ajIAU0P4vGRPfHFPKeX9PIbm1y9P+N9jE3Vja5IBaH4ziKylzOsYMn2AjiKiaS15xCE2VbEgQ5zSHzA4s4VztOtypZxzQbZwb525nkyXk/X6/i4ptDsVlSTkH9smX6+/qWnPQNEC4Oe8LScU8045PEH+4hq0qY7ZQNY0P5TKqvtARk76IUadXsxlm+vkeUSJSmmB2Fa9R9S2q4NH6NgjGg/tmfKJoREVqLzMmLHrFeBNxRdd19lIk69v+D+7WRfSGFDSyDKakeHQYXk29t0+/wXToDyRxD3TCKnJs3P/QtR4jUQGaIvviNNII+B2jtdXiocmse/vsGxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CO1PR11MB4994.namprd11.prod.outlook.com (2603:10b6:303:91::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.26; Thu, 4 May
 2023 16:32:32 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%7]) with mapi id 15.20.6363.026; Thu, 4 May 2023
 16:32:32 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] igb: fix bit_shift to be in
 [1..8] range
Thread-Index: AQHZd40SgGSp+dEbFUGrq8EbbAoKvK9KXFAw
Date: Thu, 4 May 2023 16:32:32 +0000
Message-ID: <BL0PR11MB3122C5EA4B47A1EE7B48BE82BD6D9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230425154554.154424-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20230425154554.154424-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CO1PR11MB4994:EE_
x-ms-office365-filtering-correlation-id: 17f7d0a8-9fa1-4dc5-864c-08db4cbd2947
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g+ZjVMqqDbYZ6EUDWdxyMDXxdYOJBeKkfXOAlMlN96zRtCoCwt7uWTIz5JIBWDRdI9ALaHqh63JwVWeE7TX1CKDw4iq+4UdGqyJ323MXEIIgqisQmn6mZETYrIt90TaafNR8uzt1+yAgxjXh9Q2xnksDqvhddoaHZvkoT0m2+kYEOcT2itcibHL1xn12Y+yJ7otMaTWVYDK4iPDdgkEN40Ny15AX/M5MgXBZ9KR4EnRJtGPuNMnwRDae58G//H2Edi8yslq3iI3KJz2d1Q9FGayvwnTGSaywkA0ghiP709ytUyAu+W89snnbu1VdRLSKE8QRriElCJ+VXiOw+YUYQ1IUt20NMKsPk/IPjz7PgGOliwvclc73zQ0dC2aBWR1JQv57QEOcw5hrF+bKkGtS9ijq5Otfli/YUHks6e+CiWJKjmViSlPR8/Yn+DS7ix8Jkny3/DN/NdScFdxwKoVp6T/gudKF92ZxlSHkuKouxJboUEsgTgVv1ETrldc+AGORT985INriakc207e8ntu8flrIjeisvPTPAK3iopE0TJVI3Sc8jCt7zLj3IVqSWn6pLqLwnA8j4jRLJ+K466ezfpauO+3AnucAVnHAdPEhYI1nNrBU280uWnYCP6iyawvNkxfxJ7n1F04fuUw4LUVXIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(136003)(376002)(39860400002)(396003)(451199021)(7696005)(26005)(38070700005)(41300700001)(86362001)(33656002)(316002)(83380400001)(6636002)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(71200400001)(55016003)(478600001)(2906002)(4744005)(110136005)(82960400001)(38100700002)(52536014)(186003)(122000001)(8676002)(9686003)(8936002)(5660300002)(53546011)(6506007)(101420200003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ycfKyCdnpwlJoEUQj28zRPm1Tgxc0PsV2Mi5idnfDbGv4DlVwu6wGuxB37xX?=
 =?us-ascii?Q?0UjCloHEeO20x+GMT5VHIFz1VrpVgRpopGBO7wfG7nvsLtMeOFF3loaAcm7R?=
 =?us-ascii?Q?8zYUwmantMxnRBJEifRLg0llV/GZ44K5KJJdPf9PLEE3puoKPqrrZTrsgv+Z?=
 =?us-ascii?Q?gfJ0ApobtSyIWiwinRv7t0RgHKVOCRHCv8nMrcHhDCFNLQboZRQM2v4o+KDz?=
 =?us-ascii?Q?VUao9Z8Qp6fBBhMcLty4wm8umhkhu6IsN2MvXOJgKM6ngd36xdVlRNqLtDtU?=
 =?us-ascii?Q?6I3tFVEN1atvbiP0HxFxIjv+kjXU6OWOXqayqL+NR209pA1Zwf7i7lfJmX76?=
 =?us-ascii?Q?IRblIDdYBVZWCN03fecT6PFOPVK/+igzpmWsF0il7dtpUT1fn+HnFJil+OGp?=
 =?us-ascii?Q?Xl+vvkpJwRRg5n9z3GA95/Zd30ZT+nmU1gsgBvCZu8Jip3d8umTxQ84HHUIw?=
 =?us-ascii?Q?ZVkUdZU4yWW+IkKcwBmHmMb8bhNkHs4IvLALQoRS2XZc/hPQHVnbVMj6aFI2?=
 =?us-ascii?Q?KUu7h6Ly6+IzygRs808i2f3JvjxL18Nlov98ndRwdGstHUlnIp5heXKtwsCs?=
 =?us-ascii?Q?LhZ5xe9Ex99P/o6qeIi9LLnoO07DNuffm7FZw0V2i4KKqZzkskHu+P4KAk77?=
 =?us-ascii?Q?o5W7aCm7dm0IPa+aFIgb0oS8eP61AaWUUwACUj19qSFZGGCJtN2UZ64p5tPD?=
 =?us-ascii?Q?cRMVnaBgYx9dp22yqKUR2X62qexW+ROPZwMt95TyiAgBBirGxDYG/3Z46CNX?=
 =?us-ascii?Q?gPItoDUMIcVP4U4EG0yglkHvu4QmZJ0OrNV6YzD9GkoWI29JQJkTww0I00/V?=
 =?us-ascii?Q?NnK1StCM7O/7vnph5Bo1KOKcfz/whXO5CgQylJh5JUasNEdbOFYdSEzPlvsT?=
 =?us-ascii?Q?p7E8l5jao9HfqfnS954NaAsYU8swel5nrIV8/yJVofqYYIGIIHdqUBxoN0hi?=
 =?us-ascii?Q?o2F/ily3ec9o42YhEQp+LO4w+T94a3Lobq9e3KSpkXGc16PUhQ8uNNoaJY2Z?=
 =?us-ascii?Q?HPpifomrVxJAHh84IbNNz6IVOcNcDIGPDfQ5pUkPR6A5/ihvsgU0E2H3GVwU?=
 =?us-ascii?Q?Yov5IJVKlaP5KysSF+PFWw2i7WFBcSnXgK6CkfUGbSKXtzl5hUHdX3uhY0kY?=
 =?us-ascii?Q?Z/VmLVkP4TYMS0a+fOwN2qmKtsyzEObekchcrA8kcWtGnUDTXdxh+TLaJY6n?=
 =?us-ascii?Q?UEH0R+T7YzL5XYlsO/UlKmaljWlIMhF6oqOpJmDBvXW3quJHnQOsQU0ydGbE?=
 =?us-ascii?Q?gfDPE6NnRdlYPUoEynpakIrb5Zdzk9l/pMfh97EbENXWfS0I4GeghA3dmTgS?=
 =?us-ascii?Q?wREX49IfQ+FIpw3vtlwc6wfcgp3byu8JfsQZHdi8+jX7E8Um93U5Zp0+u0hq?=
 =?us-ascii?Q?HAiDHXeiz6oi8lE0M7LmDhFOUAhC5x1FcATnb5jtVkgYCoJndbT06rrDTuow?=
 =?us-ascii?Q?RliUYQJITabFkk4ccGMtfQK8TjmCQXpxHgHiHBOu46znW/AKPbmHFtwPHWwO?=
 =?us-ascii?Q?gyEnNHnXzHC3JDcK3TWQR4ylPQwgww7ArovnqFnq7Ty7dwxHqunWJrUwxBtG?=
 =?us-ascii?Q?Q/bSyDcxlfJ6uVD4w19NQ0yW/ScXJU8RpBidHk1wGWWz9Osa3UmYj/cuTK20?=
 =?us-ascii?Q?lg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17f7d0a8-9fa1-4dc5-864c-08db4cbd2947
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2023 16:32:32.7859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hUBecfB1wGMTgHWG3X7VGf4tNpHclozd0ZKp3pkMN+ouX8J2uxsLHmJGLy+YJzvEMJ3iE+mwUfJCfUVEJPqnJnunHR4IvEI4R2XWLYHa/I40JZlNciEU/I3AThJxpgEA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683218114; x=1714754114;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ttKlDLEitFqg7schYF5dHyHUTEEItCTqaPkpYnq2XH4=;
 b=UxC0wZoYynQs2qwRRrQRiv/+6qdH43jPUJZo/CuN96sj7G+03evv+y9A
 qaxXXcMlBGs3NdAD/ggde06tUvtE1GqV0Q/NOkfiHX5V+ONBaho+tVx71
 zKAYnbWU/Xe/vLLwsCVHSCiu+p85MYbApcX4ecFvW2D6VZfdWaofWrt6c
 sZNkPkxf+FCGodrfA82G/UGPKfo91mAgovhpnZaKGcIGfoBl7bb+6VVw7
 iT2x1JIfWmQPLRHmA2SEae+RR3HqkbEtYzhf4CuA3njzCwF8es9q8FhdL
 VRZZGVkvtw+MMbvLwj2CFgDTnstKEsKBRbHy9OCSGlXO8CR4rCM17LHvi
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UxC0wZoY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] igb: fix bit_shift to be in
 [1..8] range
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Loktionov, Aleksandr
> Sent: Tuesday, April 25, 2023 9:16 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] igb: fix bit_shift to be in [1..8] range
>
> In igb_hash_mc_addr() the expression:
>        "mc_addr[4] >> 8 - bit_shift", right shifting "mc_addr[4]"
> shift by more than 7 bits always yields zero, so hash becomes not so different.
> Add initialization with bit_shift = 1 and add a loop condition to ensure bit_shift will be always in [1..8] range.
>
> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/igb/e1000_mac.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
