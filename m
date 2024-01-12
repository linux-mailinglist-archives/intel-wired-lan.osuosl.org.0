Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5695682C4C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 18:33:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72E3181E7A;
	Fri, 12 Jan 2024 17:33:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72E3181E7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705080819;
	bh=xZnPlfnxHNLUyhkULNXDEiFqw2jTcmOa7ntbFVN6ZK4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kG6hNtwEcF9BGTf42BXlvkbRZjOkhZhzoHTK7CxffxWcjf6jl4/ocpgnAdg3saA5A
	 +peZsP3T1xNOJBAU1floRCbMOS7+PLhRLFEdx2OQwDQNNrhasNSGr1gljPhyk+QZw5
	 8nwVm7ZznoCAqe93Ook+VmTa+UJB9WIW4bncYxt4g4wwFRnq4qf6BR5ri+J9I7pjfb
	 TpzAYwIRblRDbRQMYSxMOtyI8Iv14VkMjcwz8nfaJavFkj0s3tbWnCQjxiuvkBIfDv
	 Oj9cIbkWJB3NsYCzb3vCCwx5pH6ZRqTuYbkccuzs8U6TeXrYVitH7a0Qy/MIuKFzHu
	 ih0J7oH0VuuPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id os2982VQRKdu; Fri, 12 Jan 2024 17:33:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84E9381E72;
	Fri, 12 Jan 2024 17:33:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84E9381E72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F31A1BF309
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6451F41E20
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6451F41E20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpr7vUz96KEB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 17:33:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A50C541D8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A50C541D8F
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="20710655"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="20710655"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 09:33:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="759202859"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="759202859"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 09:33:19 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:18 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 09:33:18 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Chc31O6oNZr/9abdK5EuvtA0uINZSP7hDUzwww1RWvNAXFekppW/X8yPpu5CuvrC0OhMnFAdaS6fw7DG0EbYTNuhvrx+DGD8NQ/V+IqEBPyPLyudxCnl5yjDLPRUbVXl8WMXn/paNmP4UBRvlCJ6eQsBt1WItX/dAfLkhPG/XLThuRJkCbRWxQ0/kwraZc5yzo4Tpu5gWICE537WtXQ1oelCM0P7oSbYmWomr8lt57D3uRxUoYa2xzlOh8RVu3Vit3PapTxgZDQ1y05T2udC3Xa619lDwoqT/EKwCtADi7y4PW1ceclfZRd8WZ05rowhB/TrXXHmCs5GLU3ZsG66UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xZnPlfnxHNLUyhkULNXDEiFqw2jTcmOa7ntbFVN6ZK4=;
 b=TGYzUZdsgrulyzg3Lhk3biqjRR20z1nYnFD0WN+i6WOFbep8pp/dInuCHk/Ct/JyhpSOWAyUqO3fSsvZZZ5ywfIZK6SPPSQnp6Ptr3VVvxaWpEiIzQeKlKvPeZ2PE5Fd+WGVzQZgKKqxX9XUC2vl1/VJ5AC0NROc7xM6xGcADERA5VgdwkMM0+4FQwlTIrG2KIMVOVErzzjDbtj95JNkIhnHBPYe66sLUs9ybYZK6Y2xRQ4YnzZ3L0/6vbeoXTZX3PCEPAwBETUU5yHvbcsDOtDET7ozt1za3lPnF94+tmykeJQkoVmZFp2juHJtCiwp0ZafuUOR4+fiFgs6mScRIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.18; Fri, 12 Jan
 2024 17:33:16 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7181.018; Fri, 12 Jan 2024
 17:33:16 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-next 4/6] ice: rename
 ice_ptp_tx_cfg_intr
Thread-Index: AQHaQjENoxNFPLqMiUeNKQBPlQr5rbDWdM/g
Date: Fri, 12 Jan 2024 17:33:16 +0000
Message-ID: <CYYPR11MB8429302CD291E791307B752DBD6F2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-5-karol.kolacinski@intel.com>
In-Reply-To: <20240108124717.1845481-5-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM6PR11MB4707:EE_
x-ms-office365-filtering-correlation-id: 2065976b-483d-431e-d50d-08dc13948f64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T1Z4xPwplIvtbpsTe0cGrdJZk202guEq/O+1iX8KQf8/uOg4PmEpbVYFs7UWbUcc2MyxlYTKRs1lIjswB1GJKomLQQrOMxuUkojdz4bqjLsku8Ekqge3CpHCXwiP3+e/Ce744pPpr6H6gb77wviu50XiViBL0W2lq53ANMRXdLUNLw7mhwT12JvfipkxiP/lmzj68zZ/u2vX1Xd81ExntMBZyqtHBXs8M34NCxVQcdT/vsjxpm2BGoNROaF5Fw1gUfbrbP6UkZLhj8GJ4SrjVKREF1HDVkhNHUkHwFzoM5g91Fh7Sz7kq0+tVNBEkpSLI+uZB1bmqcUyCKa/vZ8enltDKryMrgksB9Jut8OqmtCMVnJCVEmMS4ckYu2p7GT6M/ToHUzmr36QjdcboVo1BTN0ShuPF8ZEDr9lT62BHasUeFcs4dhQNXh4+So7LdqB4ld25xBCSQhf5SR/JKLEwt/Q14K7fhtBxbc/845NJvVOW4d+cQwFn3+zwsNVLZMNywZGIfRP4gDdXGzpifMGTatUt1wSIPHc4RSUe06hg6FgHNQfFEhUlJsHo+86qP0Jvg0RtuaLeYnzmO2y06pw3qGz57NDsi33XrILLLI9pRc5vSlrVHDFuBL99oJ0aT9P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(366004)(39860400002)(136003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(82960400001)(26005)(33656002)(107886003)(86362001)(41300700001)(2906002)(66556008)(66946007)(66476007)(64756008)(76116006)(66446008)(8936002)(38100700002)(110136005)(54906003)(7696005)(478600001)(6506007)(8676002)(316002)(71200400001)(38070700009)(5660300002)(9686003)(122000001)(4326008)(53546011)(52536014)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aCKi9jLpZ5EsiOZxx600lCJ5DGrg0noUdz+5+vwb3hnx57O7ngsIaxof7FA3?=
 =?us-ascii?Q?YlsKmIGBnyJFWpzhdOVu5tW13AJIdjgj4f7gCnzAjAjMITIKNfKdguEPGKAi?=
 =?us-ascii?Q?BIDbPowyyl0N+fOJopZnSiTqRltApejqNMAbB1Iel22PJDeuU+crn7EUPlvS?=
 =?us-ascii?Q?SC9kY0jRBYL+9slIIP530HjVjZySxtEfD7DjJxJ2e69aQxW7hOUjkT0ArF2K?=
 =?us-ascii?Q?8zqu6kawqux5tMre/2N3UUrRVXPnVxbQJhq0O7Bnc5Fb7QYk5x4MI8zNl3KB?=
 =?us-ascii?Q?qHR+u9TgziBjYLgtGwSUlxLUiI2XRlFV0iFOfUBz7RWopXs/l8H9gz3E/aDi?=
 =?us-ascii?Q?UrRL1hJ9z/bVTc7vST4lM8KpjNrcDILlt7xfOh2MT2wz0UBuOgJMlaqGnk/V?=
 =?us-ascii?Q?H02I31VHOA6JQpoqrGGAzcEBYN6509H7B68+CFeyc2HOMTW8kRwzd16mgWsQ?=
 =?us-ascii?Q?3P/gFLPadJ0oGRhkIV8m1l13xFpS+QmWOBtGgweASH/H6cUqG9lR+u+BVSz0?=
 =?us-ascii?Q?10E62ASBLA9kLk/X+e52oGsBL5/CSK4fNI+Ycj37WbBi2dphgdWoXmyhlaQ+?=
 =?us-ascii?Q?iaqETBTZz0RMvl5+TaCPjx+cTee0D39b66XfTXcOvVDswa1Mr6Uf1mQiMz1v?=
 =?us-ascii?Q?z4X2hfEFchCxulJ2IQSQSoGt2plGS74h9nm1lX/05ZH5w1ZNnuhl5ySdBghK?=
 =?us-ascii?Q?TvkjJPKxsZ0O3g5sexTTsSDWkHK9PBJ+9Wmf/ZWLd+KsCsxaHJVdgzPMqia9?=
 =?us-ascii?Q?tqNyvp+dj1X6AIEDjtp1oei/azi4+xPY/3Tb0eBNvbQki/IMip0zmxJ/s7Au?=
 =?us-ascii?Q?tURe1XpS1vpVBY+M48cgXi2RmqYcKhsUoXQCLmP8HMgqGNNLgXvB6AfH0090?=
 =?us-ascii?Q?YHTpvE35ZblxwOKiYXVxUI6mP8CoQGYXnXLAE22ImHnTaBz/65EBeKTswF/p?=
 =?us-ascii?Q?BXaErI/QzO8bN97cpGBXYYz92aBS9F5o4WJrBC3gVL3S4Bp2DTOD/TRZ//UY?=
 =?us-ascii?Q?6jOb/91beoAJkGv0mDMZ3CTCDKj7axIsT0qWIoJWDKvInNk8BdwFtrBRwWFe?=
 =?us-ascii?Q?NIuWzZSCLfxisrIQGJKyUSSDlFh1nA2RyABtYsXdkofyGXVlx1BXzr7U+biL?=
 =?us-ascii?Q?US1c1JoZsanW15fJ7zMwAeuZGZWznLT1NH4vdVx9seQOiSGIpdLogygnlX8h?=
 =?us-ascii?Q?xjqiPf6tMtdL/77dTuiGUS91UT7hRKcdd8LrSt9gBqHwGQ/U/ibaoAldwF4x?=
 =?us-ascii?Q?Lbz2ZuVKaLrcZDZDr1E5vnk7IG6gAv3cnWTlrDqqn5R7u6QbcD+qSZ+Mx4p9?=
 =?us-ascii?Q?yJtGVF/VuwcOuGkJ3Ko2YqrN2DodgcPgML0JBQGm8CgGID1j+BzKMTJNhkX5?=
 =?us-ascii?Q?sr4hdUFs0aOA10s5GLjfZZ9na2gWO+bY9W7hWY6Ze4L9GYVelQzjdovkXWa0?=
 =?us-ascii?Q?AflOqSJhvvDf2NRwENHwZhOcHjin6rDZXZmXPVQ4xWrLqRcYcVkuOLsfDt7X?=
 =?us-ascii?Q?rGOzbwDAxTEBnQQT4RR+nht9OhlZ0VYbxBxadq9nhNWHukNFVpPn3eTzoWMj?=
 =?us-ascii?Q?4FaHfiLPRXCs5eEs48Ba/r26StJ2nxCZCI0KPwuo2RSUumjHbW6LnXIaRlng?=
 =?us-ascii?Q?wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2065976b-483d-431e-d50d-08dc13948f64
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 17:33:16.1412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jVjPkLU8gKYjJLRR2Zc9hNZmfQJ5/uYbznKLtfMk+Yo16YEOFUGsLhQDtCRelIJHn1bNbLIR9h4K9HEQ1tgiQbzo9Vw+wjwLi3B8GdtF+8UKSH+b7qUTxdpnhbYntsFl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705080800; x=1736616800;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9GFVz6OqBXIL3sCU9TNR2I8/mpiAeJQYC9ViNVCgU2s=;
 b=AWozqUKu/JiNDgR9ryaRVu3hrQIe4fXOGX653HUBWmgglXyZw/P6R3uK
 LFJNFbHrnvZyVIf7rVTmThY2Cw9JdicnqDxvHdO+epZizmAtTwOQa3YXJ
 NTNKZNN18ri0c+4PN8/OSmXhoaxRoIzLwNO9o7QmbUmLIu6fDT039OZGe
 lZ7iCDaba6Hhn469SGLc+3bzggATA6QbM5XjB9nGoJkefp5epA9Ccw+S7
 8eC51qGgPOuvbEBaYN9BDfZ9heADLnH1GzzIc73dgDFWDNEv8i9jvcgcu
 9Ys8TwTTVtDA3wgAP9jVQduYRE/yF2DzQUzFfmCheR7XnkacmpTAFCDw1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AWozqUKu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 4/6] ice: rename
 ice_ptp_tx_cfg_intr
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Monday, January 8, 2024 6:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v5 iwl-next 4/6] ice: rename ice_ptp_tx=
_cfg_intr
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> The ice_ptp_tx_cfg_intr() function sends a control queue message to
> configure the PHY timestamp interrupt block. This is a very similar name
> to a function which is used to configure the MAC Other Interrupt Cause
> Enable register.
>
> Rename this function to ice_ptp_cfg_phy_interrupt in order to make it
> more obvious to the reader what action it performs, and distinguish it
> from other similarly named functions.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

