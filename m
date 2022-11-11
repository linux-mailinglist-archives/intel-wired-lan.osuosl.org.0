Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E81C6252B5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Nov 2022 05:39:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E43F40B9F;
	Fri, 11 Nov 2022 04:39:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E43F40B9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668141558;
	bh=gF8Bms9Y6QODbDxuNypxJXzBG9VSVsPBiO5j+0CKzcg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9WRknz11/n4ZJKnhwdVM+HtOwFzfHviIZJIKTA759LFnl+RNvFgEqbQSVxO0rGMgm
	 HUEHDyEbCKnL8PKmLNPjCsZuAkuiiHM49k9pr4uKxr6SZ3/oHWUtJ8e880jz/hQ00L
	 1Hd2RXgj5ibRVWAUj/grZAieWt0N+LIdK3JGbg86UlB889MJvB+r7hLmKjWZvSpsx3
	 AX9y9BXuGPWTqScKnH+SUIuZyTxNjB++ovvrEZQpT83ye1P0ynBz9+zUkK0+iqv8qw
	 wZH7ekC5ZdBpGMy2eDtg7DWWB/HVzcork3RsSiGbbNRfib+gQ+pYH7pq4oAn9/9fB/
	 129i86Go/1bbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57rkqZefRars; Fri, 11 Nov 2022 04:39:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25927400CC;
	Fri, 11 Nov 2022 04:39:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25927400CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9161BF867
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42A1060A88
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:39:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42A1060A88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SuN0swUCuc4V for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Nov 2022 04:39:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 668EE60A74
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 668EE60A74
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:39:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="312667109"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="312667109"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 20:39:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="701082703"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="701082703"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 10 Nov 2022 20:39:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 20:39:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 20:39:08 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 20:39:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gpStIdMtVPVwuuDzdTi7Ev75ENFMU+ErS8B9HZneO4mqiBkzo83iFdUOqD/fWmAvXTeuPx+QFM/4C9/K7ny+ip74kL8W8EH6jA2pc6YV0zfSygGZWa9uL+VjxCM7g3OQ4VeV0emDXMrEEXlbQnv3KcsFMYkY0WTVQlqsklRG5UeepCotaQUxSHW0PFQ9oo4hBAxtmlqDnuSkkpcUuBOmYUNAV6VpyPM7RQTDBF/ztO98YEV9CJwQDrj9VknZbKP+T9lQZbrLrNJhvabpQ6mPMB4TfMmPH39Am3Rb4giiXaQyZ2Q/RJkYpt7HFWXifIP2Tto2qHq9vEOJGmjuVxGXeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Xlaw/GXWAUkCIzhIjXNBQ0QeL8rmafXsrFMsVN9RwM=;
 b=VDpOLMU1E8J3hRmgbWx6mmbduBQ26tFA3yI591qTM/ui2n6F/fOAU/3SYK9R30gLGqORbC4582nmxnX6Xr3PycuyCipWv75bY59+LoE2KBX9dKfIyJQ8EDzeiQPKbWiqcXoVEwPgyGHMF0OQLEpB6Ax4AXtABXahs/VwLghHA3+IOqQWiOrYE9dtzKH9U+XcigLQ7CTzzxXmlOenl1qHFv1unVDK6j9ya6A2kaV1SPU3Br99LlizJgLCmqQJW2Vfp74FcGQfBn3jY0pu+L6yG7BBy5VOWifNz0gULAtX/nCL2KFLl7kVymimdspNeC5XkFfWitNWTU6KEAV7n0+UKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by SA2PR11MB4986.namprd11.prod.outlook.com (2603:10b6:806:114::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Fri, 11 Nov
 2022 04:39:06 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::a53e:8e76:af42:1b8f]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::a53e:8e76:af42:1b8f%6]) with mapi id 15.20.5813.013; Fri, 11 Nov 2022
 04:39:06 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ice: Check for PTP HW
 lock more frequently
Thread-Index: AQHY1w5SakPf3AJdBU+r5jXDZK/q7a45YNjQ
Date: Fri, 11 Nov 2022 04:39:06 +0000
Message-ID: <BL0PR11MB336318919B591B8403857B68FC009@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20221003095519.539390-1-karol.kolacinski@intel.com>
In-Reply-To: <20221003095519.539390-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3363:EE_|SA2PR11MB4986:EE_
x-ms-office365-filtering-correlation-id: c8cc15d0-96ad-46a1-50fd-08dac39eaabc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IIKYT9myXJ4ol74fZJFj+m437pgYUY3rXFJHLdfCgkN+qj4QfX32AxJRW2JTcTCFJb1I8oBmMAMvLZ49eA6QVtXtu7T8gekN82KNRsuUv2HZ02kw0wYlf85gbEQ0FYvMyfC25DzvIdChLFXA2p7wo+8CzeIQh86N8KKXgK/gMSRljRTB12RkLo2R9BmmvcWucWitOIpQ+56aa4Lu1FqyNeYrubJ1Q9nfSfyBXiprM4jjuB3uP3qHFNDqBX+XVTGOwO2SXRq8SOJ+4TbJRYMxKX9dqwvc+JmVDWNXM6/m9jkCJsRqIhbvREUr27c1E82Ev4p7vsqennRWTI/WJYSVJ2f42zex6MH1AVAOzMz5yC+cPJk/imKw5N4CksZEbPgNMiPK684UYXbWRgo+do0NPPmafj6ehT5FqfxHqdOOAmV3zbWofFk1+L+P9RRZXb7ZOAaPnxIub/xuVOOTQs2iTCUyaA7jCy50zicCjKMGADh7Mc1VqR4fQcH7uhoQt+l3Vtvh82lC5ayx60tEfXxGyxvlxrngITeD3t3XhV8Py9wKuDuvdqNNp67/C9fv/FglPsASnkRBKFN9gAonHMfjYgQEr3vDIjjooWReuLbckcQXB/ZPWKFDswEwx3A9CiTDOVHrpO+JcIIyTQA3qrQR9RtWcCrErQ0WSovZRlL/eCf2c2Zj4CiHyQGngpoo3Qq1C6De4vQJmfDuZrmhlUOJjwFmDNHPKkpsUsRCfWqwBDQl+jteoSuV8+Sw3uiBYjuTdOv9GkE4VD/u8oXvAkMZ0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(366004)(396003)(136003)(451199015)(83380400001)(82960400001)(2906002)(186003)(38070700005)(26005)(122000001)(38100700002)(8936002)(4744005)(5660300002)(110136005)(4326008)(9686003)(7696005)(76116006)(53546011)(478600001)(107886003)(71200400001)(55016003)(8676002)(6506007)(66476007)(66446008)(66556008)(316002)(52536014)(41300700001)(64756008)(86362001)(66946007)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PI1CwnS20WaBn+BpIykt24e+ECCDlStEW+/p+VxrF2M+f4Poho3eUon6Yvbf?=
 =?us-ascii?Q?tgsfFozNW0vqJQDtTQkPaxpUlovJITzkX69zslbJRzuqPx4mozT/hM4+ivIW?=
 =?us-ascii?Q?C2bXcBV8V3aGGN1Z6DKNrVAuEUQj5uYrncAdZ56jtIC8qaa3pd2eaJYjEBTu?=
 =?us-ascii?Q?qp9VEZQVpSBbGwlP2uW8654GJkEhSceHXfrFBuNo0TDSqNbWkgOMHAFzR1qC?=
 =?us-ascii?Q?cxux37x37Unp16zIcqBwH0RXYewUyEJu96A8miut3iCznniXG2etjQ4dpYkQ?=
 =?us-ascii?Q?QRAuFE9SpQnz7p99z70wTawLyrwNROxLrD/Hi8BqR0q2mlUVzVUlvLLg9uWI?=
 =?us-ascii?Q?AKWz0+aOomYTwWY/xejDcMnW5nP4jC4gk9DIQZFCBaUwUEep+9lobBrEFRD2?=
 =?us-ascii?Q?9SmMOhNRypDd1wjb4k+VPkrYlXp6+74SdYAeDrfKWTYCYp/W+8DBUTEufRCZ?=
 =?us-ascii?Q?4Hwnh68KqA0ID/bv75Jlt1oEqOvdMKHJ4LSv809zFD6kfinQI+uHilLI+7zc?=
 =?us-ascii?Q?Ka/O3/P7uCM2kue39FByXQ/qtibXJpl8zPEjg4ktBvCehA11nZRRTnMYiJGI?=
 =?us-ascii?Q?LIcPpcyekhQbQWJFQBsOHjlttUwRbPPqB1c5FhKOpqDyW1I8wHcmRMLx5INR?=
 =?us-ascii?Q?U4G2OWcOGfQqwe/zOIixJaSny23+/K6aLI4okfrZH5hsBw7LWBVW2R0BQcTu?=
 =?us-ascii?Q?rvMrUbxYEK5SQm7KoOLbldeGTwJWlE30oqK5NdBUUU7evcIZhcgQol4LADWx?=
 =?us-ascii?Q?pYDhsXOm28tJcSJ0ktr+N8TXtNVp8BGpEs2Cz5yneXTsJuVVWMKgloFuSqc0?=
 =?us-ascii?Q?pBk+HzqMkfwXYbqbojW9ObyfXrZQ+pAdZ0l74TsG7OL6ljsqoV1D6oIYx8kI?=
 =?us-ascii?Q?OrYiGscuiz9LLHcR2BhGPScNqhWZbnGKGHokHRpW5lDEXtMY6zHvFDkRqHL1?=
 =?us-ascii?Q?WqyGy7YHbM0pk/LAVZ2LPVGSqXh89CVLIRiFXQn9J0n/Sx7a80leeX8ADq6r?=
 =?us-ascii?Q?19ENnqQr6zPZAHsroggVBvVSH3plaf88nhdk69UIaRloLbWRWZZDOQ9XDoDT?=
 =?us-ascii?Q?bSi2wRpTLX1VOXBebHM5c5ASIn2ZTPIi08G555PatJXFEIaDDbL9UVJEpugy?=
 =?us-ascii?Q?58d8to9dLNv6Yxk+9XVSQTi7LJKstjC+c8aNnndAFKOP2QpeuKeIApxkK/gB?=
 =?us-ascii?Q?DubeCcsUyLpa8+DJ7/KzBVHdZvrpFcYAcZcNpQZMOVh16NLms3q5ytHhMB02?=
 =?us-ascii?Q?lp2EBbiC52EYD4ZTGt5pKd3T7fED3FODiH+gX6jms8o3qD1Bu/win9Zk/DD8?=
 =?us-ascii?Q?QFNcvzjuz6S18mRFpW6I80AObJswLyQRVdJwoN9L19wxdiQdpE7amIr4zK1H?=
 =?us-ascii?Q?tKF82PSpmmipDfj3IFQMKmF5qveQ6J5hw5k1eusQP5pQkhR19E1qOKvnGd8n?=
 =?us-ascii?Q?stcbydZmD5p/WbfAG7HldmUxL/P51s6cF9goYBWHVaEddjmNGxUhrsPu5PGY?=
 =?us-ascii?Q?tw6/UQCDbGmupReaEbu525reL+FNymMcY3hmbfOvXdhoMQLZxLeUzT7xahU2?=
 =?us-ascii?Q?q/8vjXVE6feDXvXpW9vGC5wconZHarkrbhihVjcS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8cc15d0-96ad-46a1-50fd-08dac39eaabc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2022 04:39:06.2751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7WRwIok7M/jdcVcqhm9YwGV/KxKpb2DXYKhTH9jYywa6Ku0l058u/jEOqq6Oa/nUJBRkxf32XjD5NrqPE8TW0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4986
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668141551; x=1699677551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bM09O+9BRvXA6WvbCjuI9Q5bD5fLO9vWgBwC3MYfggI=;
 b=nB1tJJdvQDr57ThHNNQnAJNkF3SN3ROXeUphKK2n7/r+Dqzjjyxo0OaX
 kZgBbVwAq/bheRKk8lGNjOg9ugsbygYb7DZUy6ifk3NJjJ0zOS5MrhvbQ
 HLk9J6lPaEw88dxZvR4cKIOic6mn2oHzdIEWDxddxjr7WOSDnPX5w3pTP
 wJE/54QYPALM/hIWHOoJGVvY91o1zGEStw/JeKl5+EbkMbVhKqOGa9mLd
 I/SuwHFdldeE1sF947Y8uz50gOU7OlC0eZ3byf0uD/46BIBTs8Wsio2SR
 gjexDbRJHM+S8n/x0/ez/cydaSGPzFcQ+VM44oXv/NAmRJIXlWtCCRX/Q
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nB1tJJdv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: Check for PTP HW
 lock more frequently
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karol Kolacinski
> Sent: Monday, October 3, 2022 3:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: Check for PTP HW lock
> more frequently
> 
> It was observed that PTP HW semaphore can be held for ~50 ms in worst
> case.
> SW should wait longer and check more frequently if the HW lock is held.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
