Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644B473F14
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 10:15:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79E8640502;
	Tue, 14 Dec 2021 09:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRJqJWK_b9bG; Tue, 14 Dec 2021 09:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B03D4025F;
	Tue, 14 Dec 2021 09:15:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 474611BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FA284025F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4pNTraIgv2DM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 09:15:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2D594011B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 09:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639473311; x=1671009311;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OPx8gOoOM7pCoBgzASIxgPYgzZFhhAvKklvpVaJ7qdE=;
 b=MJJ39DzD1yuh1EG8eTNxjZiNZkU33Uqz+e6iVZGK2ewbh8XWazrQmlUz
 x++cu0ELG+ZdCoVX2hMbbvshfmMd5B3fDQoEGycZbT1hZS8tkjMdCpFJw
 TcQEcs1c6nE7NPb7lOLjQZICe3/2Ss4qP9CqEdrHC9+6WUyE2a1KnWRqH
 N6Q5qe/uOxMDiBJwc5fOD4WcVkBn9f5vVt5rIxvwOZmzyUEU8LFjSw54T
 2nuq9nkwmMNDF4KgZrMPvOjZdl6Eks0RAmFY2GgYMThPRFFS7O1ohtGAx
 OFrFvbjfP30YlQ0eONcONJxvY8KOIvpRnFrm8tFB6yHrDEBloRdCh8lyv Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="219621055"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="219621055"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:15:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="614191704"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 14 Dec 2021 01:15:10 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 14 Dec 2021 01:15:10 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 14 Dec 2021 01:15:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 14 Dec 2021 01:15:09 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 14 Dec 2021 01:15:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h28voz9I2aB43hWIFoI4A4CREwuz4wJluKzh/QlIyOx2Fb5E4l4Qqj5mW3e0xyNXWvPxHzh9N+5Vvsq1Zcsf+8NuHTuWzZDQTTWLFvhGgGN7pySEe2weaMu+n7uTXUedXq9Vkb6+TChS6lYS5T2TC5v6NGJsr+z+DB943MHt2Y9AT8Xv0P4BR6zwP7A15eDnSBJVuuiynDaVPTOoOEHY2MVlAog4XMN5WOEaZzPZakEnAI0T8BXkTwzIqg0Ou2oxya0LpIECsDkCrS1wsdxqVkhizJdr6nYqzx7wJS49pfLMnffPWEVF7HUtQNw0l37kUlAf1AaYT6JrXeL8c3VZ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VA7/IW/sGSrOARaaPT3w1X6J2h4du7wdWDpTj5bHPtY=;
 b=YuOo5NzGqPn8mZvg2VmTyB78YKwIrQJiFISJy45d6abhDO89Pd+nM4DgomLdJiMFHjKZVZxkud2hwmOfcVGYa1gjTJNEjzD9crz4QiM0LwBvxe/HpfpWwqxYe1iRMj637UuQ9UzqVuvK20Q/h8cSEubxo29gA9++dIqxIGqi9F4c+gG0nG70E+0XR6FLqnObpwaPRm44WEJ121cMqFFwdEq2lHEsbwoq+CfZUpCS782vL4PNy35+FgniWmdOCNGla4NtE/zlith4exAgi12HKK3ozz/C6Qy16+ZF6kbNYqTAMH9iDKLzw/2+uofVQJhZg9lPdXLT3L0MttFzLWyuaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VA7/IW/sGSrOARaaPT3w1X6J2h4du7wdWDpTj5bHPtY=;
 b=CVo2hy7innolA8dRc5e4M1AVxAQvJxMJqMpaR9WWoMza+6se9ySPz/54cSKZ9iQaNKTfHnqCmy00BVAghU9z+8PfmMxWMziXO1mf7/a/40PpiCRGT7vErjavbbNyo0epty7PToreA1I7ChUNtVNuZcqME7rOu/dW8kk6TKhCE9s=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2773.namprd11.prod.outlook.com (2603:10b6:a02:c6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.18; Tue, 14 Dec
 2021 09:15:03 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%4]) with mapi id 15.20.4778.015; Tue, 14 Dec 2021
 09:15:03 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 9/9] ice: support
 crosstimestamping on E822 devices if supported
Thread-Index: AQHXv7DmWQzgr4uN4UGNyaeCIe1MA6wyFp4w
Date: Tue, 14 Dec 2021 09:15:03 +0000
Message-ID: <BYAPR11MB33673F01DDE858004E6C5548FC759@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-10-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-10-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edcf6312-3416-477e-21d2-08d9bee23690
x-ms-traffictypediagnostic: BYAPR11MB2773:EE_
x-microsoft-antispam-prvs: <BYAPR11MB2773312C807FD29B0BF1CA7AFC759@BYAPR11MB2773.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0lgsps1YqD95txm8eFXQdTB4lqPkFtqPXR4fbKqtSLycx82k9+jU6tdxFirEKj4BGYKCtqCBCoOH7/lxq3kEdA+mxcoG8azfQGsqsy0jd4icNUt66eE6M5/EP6C+gBWzMGrnkoamnQGqAyoSeBXe7LlBed6KewMj72y3ApdjaPwjnUIsG/Ymezh/2m6GCI053jsILDdWaKiUgGLKKoVxXYy68rJ+sEUmieIXfXdI2kP37+mrACZXlPvgNVj2GBJ3EQj0ttbUZye+h/VHsmyxLkaRpZ0sU7SsypCejPEEkQhzBP5MeWNtib9LcZLDX3o/kuulNcRGLGW7IM5+CbSfHRFVKVZNhtJRVMQYeUw66BWHaUDznm7HhAVrKxPzNgmxFmUSQLrZYHS3i0ne81NzHyI8Sg1XHTq9axrR+kx6U7vXkfKQO7I6+vX6QZBM62iy2lmCnIGO6HG+5ZLqvqoZDf5i7GwXQzm9CCB0w4e2IE59N+kpQwJu2lV6r/wNGjuVSno1ULsdsDZ0NFMDVPD4CtjJvoFsdZ3uCEsz1sEPnxpzdpiFo7Zfa4RIl0QxlqBE7W2s/fcVx9WDrNLWPN0b7K6KytoPdkIymQAD5NINqnw/Jvbdd6YEz7OhiTI79LMch4hGqBu0wuKFYfLsNbhhirIroltDzbK2Ivb/RpUp3z1s7Jptl2lloNJScaIwhS4AuzleJKRTI2z68yqOr2N+8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(71200400001)(9686003)(38070700005)(7696005)(86362001)(2906002)(26005)(33656002)(83380400001)(6506007)(82960400001)(76116006)(53546011)(186003)(64756008)(55016003)(66476007)(8676002)(66946007)(66556008)(66446008)(38100700002)(316002)(110136005)(508600001)(52536014)(122000001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7NlTXGbsJy4RfvNeQ2gu7RmNha0F2vJZxHHW//P6KvsDesrwanPuR6it44Ia?=
 =?us-ascii?Q?3mOr87UAvp0VpkBfApUPOFuSWokOYDgDpHwS9fFiw8ydJi3qIywSNMI+BPhe?=
 =?us-ascii?Q?My1TvCORjPZQyUHfZWkZgKoM6aMFB9wI/UoN5+UowBWJAQWvLU/dN1S5fM/o?=
 =?us-ascii?Q?yo5AomnmOUiSEvwIbOWghiwChP2lGenqs4BfTGhCCTKCwAOT0YOFBSrShTBD?=
 =?us-ascii?Q?SNbpPdp4wqbGzRzYLEYR21qFrcUUVFaoefLpB9aklOjkDcSdwuSQKYF8gzsC?=
 =?us-ascii?Q?CsMkoITLWpt/4xyqxGYi+/MUonik3ydyMFApMFejKC2YAN/xZ8xNQp3sPG9K?=
 =?us-ascii?Q?cFsx9PG1SlHjBtzpRL4c4k/k5Q4GdUA+UydkuIaGHeAQUYUNIl8Lm7HvSzdu?=
 =?us-ascii?Q?ZRaidv9RHIhPMSjpMQ6jSo7jB8p3YRxR9E7A/K9Z/Gw8whbO1JP/lSTw5o4B?=
 =?us-ascii?Q?EJACJUR24F8JuO/p6KOfdn65P/cRHugWpsuyP40sTxNO/qa32C9KqWSZ4ql5?=
 =?us-ascii?Q?MiDEyYR5/F5Q+NBAenE+UxzPnSGDRX47lBxQQBW9bFSB1csF7N6VZ3ZveoEo?=
 =?us-ascii?Q?dxuNKB9mV5+NniHqW504bMPwWoygsLI2dgUvG+ACrARJFgtaeQgYHGl0Vbis?=
 =?us-ascii?Q?s2807yMqAJ1op3myZqOKVEO/3T3HY64MS6O2mkLqIvvYw13/kNe8Z77pczZw?=
 =?us-ascii?Q?8YtPpp0Pk6zWiCgEfiFhCi2nPourv32AECojUO2/q2lgf0irEL9L5zPT0Bjz?=
 =?us-ascii?Q?4zFaVlGF2ZMA2bCA3dGO5hJzioziSFVPJtC+67WoASqf8vP+MGAwbN9p1esq?=
 =?us-ascii?Q?JS96V1oK25UR3qeLAqpjCGW1sW1r5MKG6A/1NTT66BpFb4O+ORM6rg8Ek9Iv?=
 =?us-ascii?Q?TN/ZWw4ANkgHjNSFcE76sxkHtqNQ0Pogr7QemL9jtE0+JDpYpR6Oah131TI1?=
 =?us-ascii?Q?YAcWi0UYsUyw8Yg6Lnvx1bm6xJleH8wvtI/vs7uiNjcDoHh8Sx6BdAxbMYrD?=
 =?us-ascii?Q?GQoyOsIjmv5wGteItMgSjm1uFisedLAQXfNahmx3Czf5uOqiKekJQkeuSfko?=
 =?us-ascii?Q?nNs9gur0HQe6sqYtwmlK0IMRIzEs/DhNBMSnAVX4HIp4YyKH4klpbmzdtiRq?=
 =?us-ascii?Q?X+Nae3RkntWNoxlhHR7QPzcWcUL18xEm+OuRegLcHWJJnCtIc+m50cOb4lqg?=
 =?us-ascii?Q?wkDvSZhbdlzZ8AohZOw+gfVzbExkjSOv2GD7EKfj1k/fhw9TLIVlYzCAmumR?=
 =?us-ascii?Q?nc8HFNMCYt4Id0IRtz0iBD9uivbKlsfWC7r1kKaomYEe49kjP1i25boldyNw?=
 =?us-ascii?Q?baZCal+NKNLIu66S/C+dIXhTseomr4Taoi30LjKgkuv0F7LAjqfsRgMoaB+n?=
 =?us-ascii?Q?4NiHjqUKZsw4kAQEQBVK+iogD2R8vXsG5mCZ8ANYyTlsVnYnF9uYTy/0Syry?=
 =?us-ascii?Q?EwCQb+0TwAvDzqtBAVAOCWYnyOOckRAT9l8E2EZ7AUMy7XbneXa+g9YQ7JK6?=
 =?us-ascii?Q?lOB1pwQ0lvApKRevx7Fv7ewocWsNph1BzhWbjzmIEEK03gYw9VdwZn0JQssW?=
 =?us-ascii?Q?WRlaWabgg01RxveW9mNqdkRELgplxB9txVCFFnleAXhWQh9/EnmrcANwySqn?=
 =?us-ascii?Q?hQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edcf6312-3416-477e-21d2-08d9bee23690
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2021 09:15:03.5843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LUetul70rrz9A/cl6Rk39G4qzoSDfE+3pud9j3kIz1jGMi/q6Cms+n6PtibVGWFE0RF1sLSSDNYJijsnRWaj6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2773
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 9/9] ice: support
 crosstimestamping on E822 devices if supported
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
> Jacob Keller
> Sent: Wednesday, October 13, 2021 3:03 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v3 9/9] ice: support
> crosstimestamping on E822 devices if supported
> 
> E822 devices on supported platforms can generate a cross timestamp between
> the platform ART and the device time. This process allows for very precise
> measurement of the difference between the PTP hardware clock and the
> platform time.
> 
> This is only supported if we know the TSC frequency relative to ART, so we do
> not enable this unless the boot CPU has a known TSC frequency (as required by
> convert_art_ns_to_tsc).
> 
> Because PCIe PTM support is not available on all platforms, introduce
> CONFIG_ICE_HWTS and make it depend on X86 where we know the support
> exists.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/Kconfig            |  10 ++
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 ++
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 117 ++++++++++++++++++
>  3 files changed, 135 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
