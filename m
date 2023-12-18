Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D2181660B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 06:26:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3483981E8E;
	Mon, 18 Dec 2023 05:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3483981E8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702877160;
	bh=g2K7p25BDa+hGH7n0G77yTLh2K90AThu5SjfVBMWeIo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fAbu50qRDv/G7f11Sbm/awRize2vC9EGf/lE89bY6K+2g8bk6LFllNEeu8wAEaQI6
	 BnpAkngx0XO/01xtG83IRifbDk+wLrbrz+fQTLpWEdXAhcZLkA0k51/R+w59Z3qwh9
	 +ZNhOqb/FNqxDLdyWi+97BoafhFdM6zBAlzLSeIGTj8fw67g58DzU5zTifblfmDIaR
	 3zSnseLzdk0Z1WfIgNYb0jPriTNdc4l6U0w3ghYnMOjtVGUJin0zdAiDRaUmdqsRh9
	 YXic1dUBAKiHb5sv3cyv4jzss94obroli4H3OT6J4yOkdwMBg52a77CGAgIAy5g4g5
	 08wCRgNdrFpyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cv9dH5Lgu8NP; Mon, 18 Dec 2023 05:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D2648145A;
	Mon, 18 Dec 2023 05:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D2648145A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A3E51BF85D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FE8060A47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:25:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FE8060A47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnm_yRAJjdEX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 05:25:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5230607CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5230607CE
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="426591109"
X-IronPort-AV: E=Sophos;i="6.04,284,1695711600"; d="scan'208";a="426591109"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2023 21:25:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="768713433"
X-IronPort-AV: E=Sophos;i="6.04,284,1695711600"; d="scan'208";a="768713433"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2023 21:25:48 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 17 Dec 2023 21:25:48 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 17 Dec 2023 21:25:47 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 17 Dec 2023 21:25:47 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 17 Dec 2023 21:25:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3Zu/jFKbiYKg72YSjbsfiTfw9UPfJWPUobPTTxO5KUs9QLhDhHxD2JCZTMcYhoe+B2EwzyTWrfJOHBqzJn8MQuA1+9hO7rLiE0/gF0+0KmJ7UZKYmRSQUEsLuyUIbLCQS4nCLpG3L9w4DGG5EAonr/v1+JRdWS8CU8DchO9TafDfPgyEKpxkQ0YAdYeitCk4ntXcZxqPyg5gvT6oQCgxAkYBsP1WVVNMdKSYsEeyaxYxLE0nADKwTdWfaZAIKLW4ckiXKT3ly7GGkA8/4fW5u1sLb3Ohf+mHS/0W+u3CRphheOQw863dp/6Ihhw1kdNfCVDXtWJVpvyi29WFPH7VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+NjWu5Q28jjSxR+a86Wvz4pEBlTGe6h21G1kLqCZ90=;
 b=fk8klaeOquhDAGsyGxXcr/0ko4sScfMs/gBudgIxmC+P4Emfmor/sIHCZ8QE0uz4KDv1cBakhXdRknLrXN+zLobExKHIj/wCKicmrCOHx33BmfdShwtanQRr1qQL4CrZpD/deDqdtOuqy++FezEFZbmvBeseXxvg9kbWN5g6fEpTS5KJ40lvU2eHTdsX/yTaqbyQxf0Ymb0iOANAxZ1eBQKaTXODNnScuLZpMc24IBCUX0GwTnn8SLIvs0dwI58LR2eZYlbHIf25Dn448B+ltUmXgZf3OnWtd8UCFVM+EqPOVGOcgUQuPS5r1kC/PE8snbUPx2hfu/M4i/60oTv1/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by MW4PR11MB6984.namprd11.prod.outlook.com (2603:10b6:303:22e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 05:25:37 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 05:25:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Chmielewski, Pawel" <pawel.chmielewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Do not get coalesce
 settings while in reset
Thread-Index: AQHaJ5CgESwpVS3PXEGBjKPFlZSHqrCulCpw
Date: Mon, 18 Dec 2023 05:25:36 +0000
Message-ID: <BL0PR11MB3122D8C470FED645427A2BDCBD90A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231205152620.568183-1-pawel.chmielewski@intel.com>
In-Reply-To: <20231205152620.568183-1-pawel.chmielewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|MW4PR11MB6984:EE_
x-ms-office365-filtering-correlation-id: a4d1c864-e475-4d57-97c1-08dbff89c3b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Rcnn9FaA3nL0i/sGUN/AGLIgn/9vK8LK2IrAbfZbAt5Bghg+AWvABbHkfthQxytNHTgsyHEfwbpvEiSCUqiZEsMrp7R4YaFQAv/SWGDjBUlWjEwNCScZjUBiaK6IdGhREJGl1Tifv/4cY1SOxrLe4XvXcKH7Jojuu8Ej068MMBNMOIVYFF+MWy0PUHbJaEIRYV3LxBL73zGVHFkLB2904kPbf1KoSM5XGr2reaNkB5ziXHN+347nqPuaKeAigJm6l81ag/ogbtXDf/CiDuo6huaDedUAcrBP2eo3zkl++DDfc46Bs2xg20h+V2AAGUe9jz5YHlXVFHV+l9CwxQLsJqmKkejPj3TSpuycPrKkliWAa9mG1cOjTU1PZNM3x0FDwAiNELzv5MBbCC7ml2uKF/et9xRoM61LWtOR0bXw3fUY2I0DB9PpRYDMRCMsanM0G57+tF7cfhNaFLidOpF0UlNLqHaPK0Kku7W2K/PYUFyf+IuCrL5dKWYNaXTKhKIeGm9JL8sk9x3VrsryXDh9OXt2a8538TOCtR9NCTEM0LHx3h3xXQ4NWfX4KanTgAafS3017v8tZ+fQyXUFAynztXIceRul4SYkCUcVMIuI5b4mxbzvYQWgcCYZuV0XMXdmJbEZ4+9pJEbBGADkV+LvoVYE2zS3MVEI0UYtr+wyC8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(136003)(376002)(39860400002)(230273577357003)(230922051799003)(230173577357003)(1800799012)(451199024)(186009)(64100799003)(107886003)(26005)(7696005)(9686003)(6506007)(53546011)(83380400001)(52536014)(45080400002)(5660300002)(30864003)(41300700001)(2906002)(478600001)(4326008)(8676002)(8936002)(66946007)(76116006)(66556008)(66476007)(64756008)(110136005)(66446008)(316002)(54906003)(71200400001)(82960400001)(33656002)(86362001)(38100700002)(122000001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QXIPEFSrzK2mrGBseyYSGMBAna0OsF5PbJmms+Cg1SeI2C+DmfqBoo7zM9py?=
 =?us-ascii?Q?5Gb/dPYVeJZ8NcF+t6byXZTOwwkMD7DuFebfmDTt/KoCjG/LG1ID2iJnnAZP?=
 =?us-ascii?Q?BCXRRs3zpddzz/+bN427WAFuReciS7UkRnHzlmvezhUZpRw3+xPY2/QpoE/L?=
 =?us-ascii?Q?TQET1ur7x4klw/qzmHTxkXkdUMhHqj2esFbTLs+cFa/kWPitDt5hBi3TN8IN?=
 =?us-ascii?Q?kcZ1V2/YXDph55JCAQ7vRus3oK9BJwDX/ZZ3GoiYWiotrf4kFmroVqwdwzmR?=
 =?us-ascii?Q?5cNRqrGoFcQB6KldleqXgB/cQGu6sQhrw+RI64jw+3+eKmirpkTyVJk01UQm?=
 =?us-ascii?Q?yJ0VPfkvN4JfjsEYurSwjKdoTCkHgTuZjotZlxiJ2yt4iWtFF2aY0ljTSmES?=
 =?us-ascii?Q?5fEyRT1jCIQOfRqXUh3Kw/CospGpDfoBCYaDHJoN1uvPQh5RXL1ZwW6BWaxE?=
 =?us-ascii?Q?hCoqAUldbNWwLVI1BfljuG5icCH0yHlpRShDJzjypj4HoE0AdbJAyX6dOcVZ?=
 =?us-ascii?Q?zzegVTCCx7mDejDqwyqbGUgv0gOWB4xmjQeTipu9BK/k7dTLa4VTH2rq1WTs?=
 =?us-ascii?Q?f3PidKivigdFdV/3QBRCAMfU5ai0AEIzCxafbOjiecL33ZLZohGoKc3wgHLF?=
 =?us-ascii?Q?QqZKs1lEoLFrs6ibdn5vFO2XEdpKmCl/IH/TfO5+xJ3P2+4p4y6Ncl1o5Hs6?=
 =?us-ascii?Q?hyAqYY8eiGrpRO9aoVwZACW0rvG7qUp8FiD/MqyEgNMDmbkaiEgEKtbA+YiY?=
 =?us-ascii?Q?kO7FwbimQPxNB9g43tBpqE49OhszUCkLB4i3iSTs+53KCjyNt7uktw0Tu7S2?=
 =?us-ascii?Q?utXps2lSbqfge1onqrSSUxQU8GxagmzJ1Vt2pwAogdk7PsCnN4BbAf7WnbG5?=
 =?us-ascii?Q?chtR0QX4k8pbtPvenrQzx/xg0JRYRtKozynRdY4OBeZ/BmO15WzT+LK90o5w?=
 =?us-ascii?Q?1yXYlhA4WyaZuNtJC++FyDr3p4nghpdbc3X2oRKhKZ4LiYtuS8mDuDzpK2vD?=
 =?us-ascii?Q?O5R2IekUVoyTBAWL+j/OIIp0KVpm+46a7fOaPFiFYqmIgzgNaeUsJwR7aco8?=
 =?us-ascii?Q?+qaKxmMF+qeMUj2Ikt2AS03cXZcJwy2OR/Pe/IYnXfPbVjumSa0Z9mXgtYm2?=
 =?us-ascii?Q?jefjrKoCLKiNVOw9sN9Ja2W3kKdfi4SmBhEOfn6wL/gZ2kOe6/Z0GuTt+Tp5?=
 =?us-ascii?Q?Lh+ePB+/0fWLiLcP3h17F1VgSlMdg7aK4hqlli9uVIg4wzc2ntCBwYrFZtv3?=
 =?us-ascii?Q?qSHw1LOoDGroVzHwrhp+E2wHOJDwWh0vrismNqpepX+WAAl/kMLai283RpKA?=
 =?us-ascii?Q?qbEAAItujdOVa6roqBuB2ezle/0eI1p3hPeYs0AVSes1WiFlxMTNIuAZjhPA?=
 =?us-ascii?Q?iQC8NbA/rrIH6jYKL0k13Ps0VTMJvxpZMuCRb4xsnXsnsq0GvPOsKMEdIYFD?=
 =?us-ascii?Q?uYTIgWTdYvnDLE7I3fZ7O5bzLlUzpBBEBDtOnDrDsW2gXPMb+6AoPmsBM29K?=
 =?us-ascii?Q?x8caWd/++vMjTwV+bV1AosJKUs86X2oBInvQh3qEzrvmRBCMu6tcUdHfytoU?=
 =?us-ascii?Q?KIhrgAPKrzWWBRWGphEXj1B9E8wZoO7U2AXmMEuIT+1x917j2EfM8dN9ps54?=
 =?us-ascii?Q?aQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4d1c864-e475-4d57-97c1-08dbff89c3b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 05:25:36.1874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CzBptpNjre5VjTYW3De8ITsv1D4mUKGj9a3xDhRNA8n6yFtkOfKAyrauz7lnLpPnVtqD5wMxJOg99c99bLoGciBsg8UDQYD3wX1JEtCo+QHePKFiU/6Yl8MVItQXUUh5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6984
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702877150; x=1734413150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IPjUdetnAWF3x5DhAGx2CkHxQ2Zurei1RhuFbtacIlA=;
 b=fSgqtoG+/S0aQXnANZow5ycZ5BF7BkRyD/MIhX8+UbzFGYoOUPluxvum
 RIjEzOKUVpzF2ajuH4OeozVbTSMZM1N9jwklUqwcW8E7Zt7DMgljgx7lA
 jXA3yup55K2UKsN++wH7AVpj7z4bdLwGwPrqtBVg/sSwGglA9fE4uTGf9
 +dviCvDqDJTWujwTbaNKt85srWu3yoha3C9TPXqOgbHVWkt8GWkS91NtV
 5s1Z0sQCjXh97CuSiJCo/smPf4Fq9QeV6W4UFZTzwlrAbu0RfVGGDglLh
 44bKNxAxTl6ByDXIneYTqy5g6g7Ox8YNFyWN74LNX2ZMil9kZmhRkaClU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fSgqtoG+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Do not get coalesce
 settings while in reset
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
Cc: "Kwan, Ngai-mint" <ngai-mint.kwan@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Pawel Chmielewski
> Sent: Tuesday, December 5, 2023 8:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kwan, Ngai-mint <ngai-mint.kwan@intel.com>; netdev@vger.kernel.org; Chmielewski, Pawel <pawel.chmielewski@intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Do not get coalesce settings while in reset
>
> From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
>
> Getting coalesce settings while reset is in progress can cause NULL
> pointer deference bug.
> If under reset, abort get coalesce for ethtool.
>
> Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +++
>  1 file changed, 3 insertions(+)

After applying the patch observing new crash.
Reproduction steps:
  #while true; do ethtool -c eth0; done
 #echo 1 > /sys/bus/pci/devices/0000\:18\:00.0/reset

[Dec12 00:12] ice 0000:18:00.0: PTP reset successful
[  +0.859959] ------------[ cut here ]------------
[  +0.000002] RTNL: assertion failed at net/core/dev.c (6422)
[  +0.000017] WARNING: CPU: 88 PID: 539037 at net/core/dev.c:6422 netif_queue_set_napi+0xba/0xd0
[  +0.000008] Modules linked in: irdma ice snd_seq_dummy snd_hrtimer snd_seq snd_timer snd_seq_device snd soundcore qrtr rfkill vfat fat xfs libcrc32c rpcrdma sunrpc rdma_ucm ib_srpt intel_rapl_msr intel_rapl_common ib_isert intel_uncore_frequency intel_uncore_frequency_common iscsi_target_mod target_core_mod isst_if_common skx_edac nfit ib_iser libnvdimm libiscsi scsi_transport_iscsi x86_pkg_temp_thermal intel_powerclamp rdma_cm coretemp iw_cm ib_cm kvm_intel ipmi_ssif kvm irqbypass rapl intel_cstate iTCO_wdt iTCO_vendor_support ib_uverbs intel_uncore acpi_ipmi mei_me i2c_i801 ipmi_si pcspkr ib_core mei i2c_smbus lpc_ich ipmi_devintf intel_pch_thermal joydev ioatdma ipmi_msghandler acpi_power_meter acpi_pad ext4 mbcache jbd2 ast drm_shmem_helper drm_kms_helper sd_mod t10_pi sg ixgbe drm crct10dif_pclmul i40e crc32_pclmul ahci crc32c_intel libahci igb ghash_clmulni_intel libata i2c_algo_bit mdio dca gnss wmi fuse [last unloaded: ice]
[  +0.000054] CPU: 88 PID: 539037 Comm: bash Kdump: loaded Not tainted 6.7.0-rc4_next-queue_11th_Dec-2023-00891-g9615a96563f0 #1
[  +0.000003] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0010.010620200716 01/06/2020
[  +0.000001] RIP: 0010:netif_queue_set_napi+0xba/0xd0
[  +0.000003] Code: 75 9e 80 3d d3 ba 2c 01 00 75 95 ba 16 19 00 00 48 c7 c6 fc 85 27 85 48 c7 c7 10 25 1c 85 c6 05 b7 ba 2c 01 01 e8 c6 cf 6a ff <0f> 0b e9 6f ff ff ff 0f 0b 5b 5d 41 5c 41 5d c3 cc cc cc cc 66 90
[  +0.000001] RSP: 0018:ffffc9002d827b30 EFLAGS: 00010282
[  +0.000002] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000027
[  +0.000001] RDX: ffff88980fc1f8c8 RSI: 0000000000000001 RDI: ffff88980fc1f8c0
[  +0.000001] RBP: ffff888c984dd010 R08: 0000000000000000 R09: 00000000ffff7fff
[  +0.000001] R10: ffffc9002d8279d0 R11: ffffffff857e6648 R12: 0000000000000000
[  +0.000001] R13: ffff8881362e8000 R14: ffff888c984dd010 R15: 0000000000000000
[  +0.000001] FS:  00007fdbde01d740(0000) GS:ffff88980fc00000(0000) knlGS:0000000000000000
[  +0.000002] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000001] CR2: 00007f7358c89000 CR3: 0000000107fcc006 CR4: 00000000007706f0
[  +0.000000] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  +0.000001] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  +0.000001] PKRU: 55555554
[  +0.000001] Call Trace:
[  +0.000001]  <TASK>
[  +0.000002]  ? __warn+0x80/0x130
[  +0.000004]  ? netif_queue_set_napi+0xba/0xd0
[  +0.000002]  ? report_bug+0x195/0x1a0
[  +0.000004]  ? prb_read_valid+0x17/0x20
[  +0.000004]  ? handle_bug+0x3c/0x70
[  +0.000005]  ? exc_invalid_op+0x14/0x70
[  +0.000001]  ? asm_exc_invalid_op+0x16/0x20
[  +0.000005]  ? netif_queue_set_napi+0xba/0xd0
[  +0.000003]  ice_q_vector_set_napi_queues+0x37/0xf0 [ice]
[  +0.000072]  ice_vsi_cfg_def+0x423/0x830 [ice]
[  +0.000043]  ice_vsi_rebuild+0x238/0x3c0 [ice]
[  +0.000042]  ice_vsi_rebuild_by_type+0x76/0x180 [ice]
[  +0.000033]  ice_rebuild+0x191/0x510 [ice]
[  +0.000041]  ice_do_reset+0xa3/0x190 [ice]
[  +0.000056]  ice_pci_err_resume+0x3b/0xb0 [ice]
[  +0.000035]  pci_reset_function+0x48/0x70
[  +0.000005]  reset_store+0x57/0xa0
[  +0.000004]  kernfs_fop_write_iter+0x128/0x1c0
[  +0.000004]  vfs_write+0x2ac/0x3c0
[  +0.000003]  ksys_write+0x5f/0xe0
[  +0.000002]  do_syscall_64+0x5c/0xe0
[  +0.000003]  ? do_user_addr_fault+0x336/0x680
[  +0.000006]  ? exc_page_fault+0x65/0x150
[  +0.000003]  entry_SYSCALL_64_after_hwframe+0x6e/0x76
[  +0.000003] RIP: 0033:0x7fdbddf3eb97
[  +0.000002] Code: 0b 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24
[  +0.000001] RSP: 002b:00007ffdfc92bda8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[  +0.000002] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007fdbddf3eb97
[  +0.000001] RDX: 0000000000000002 RSI: 000055af480778a0 RDI: 0000000000000001
[  +0.000001] RBP: 000055af480778a0 R08: 0000000000000000 R09: 00007fdbddfb14e0
[  +0.000001] R10: 00007fdbddfb13e0 R11: 0000000000000246 R12: 0000000000000002
[  +0.000002] R13: 00007fdbddffb780 R14: 0000000000000002 R15: 00007fdbddff69e0
[  +0.000002]  </TASK>
[  +0.000001] ---[ end trace 0000000000000000 ]---
[  +0.104086] ice 0000:18:00.0: VSI rebuilt. VSI index 0, type ICE_VSI_PF
[  +0.003689] ice 0000:18:00.0: VSI rebuilt. VSI index 1, type ICE_VSI_CTRL

Crash Without patch:

[  251.069061] BUG: kernel NULL pointer dereference, address: 0000000000000028
[  251.069065] #PF: supervisor read access in kernel mode
[  251.069067] #PF: error_code(0x0000) - not-present page
[  251.069069] PGD 0 P4D 0
[  251.069072] Oops: 0000 [#1] PREEMPT SMP NOPTI
[  251.069075] CPU: 3 PID: 20728 Comm: ethtool Kdump: loaded Not tainted 6.7.0-rc3_next-queue_4th-Dec-2023-00732-gda7b4d5ccb44 #1
[  251.069078] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0010.010620200716 01/06/2020
[  251.069080] RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
[  251.069158] Code: 00 55 53 48 89 fb 48 89 f7 48 83 ec 08 0f b7 8b 96 04 00 00 0f b7 83 92 04 00 00 39 d1 7e 30 48 8b 4b 20 48 63 ea 48 8b 0c e9 <48> 8b 71 28 48 81 c6 98 01 00 00 39 c2 7c 32 e8 fe fe ff ff 85 c0
[  251.069160] RSP: 0018:ffffc900343af980 EFLAGS: 00010206
[  251.069162] RAX: 0000000000000060 RBX: ffff888121c39028 RCX: 0000000000000000
[  251.069164] RDX: 0000000000000000 RSI: ffff888106062d88 RDI: ffff888106062d88
[  251.069165] RBP: 0000000000000000 R08: 0000000038687465 R09: 0000000000000000
[  251.069167] R10: ffff888106062d80 R11: 0000000000000002 R12: 0000000000000000
[  251.069168] R13: ffffc900343afa30 R14: 0000000000000013 R15: ffff888106062d80
[  251.069169] FS:  00007f3901af2740(0000) GS:ffff888c106c0000(0000) knlGS:0000000000000000
[  251.069171] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  251.069173] CR2: 0000000000000028 CR3: 000000029e2e2006 CR4: 00000000007706f0
[  251.069174] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  251.069175] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  251.069177] PKRU: 55555554
[  251.069178] Call Trace:
[  251.069180]  <TASK>
[  251.069181]  ? __die+0x20/0x70
[  251.069187]  ? page_fault_oops+0x76/0x170
[  251.069191]  ? exc_page_fault+0x65/0x150
[  251.069195]  ? asm_exc_page_fault+0x22/0x30
[  251.069199]  ? ice_get_q_coalesce+0x2e/0xa0 [ice]
[  251.069258]  ice_get_coalesce+0x13/0x30 [ice]
[  251.069313]  coalesce_prepare_data+0x59/0x80
[  251.069318]  ethnl_default_doit+0xf6/0x340
[  251.069322]  ? genl_family_rcv_msg_attrs_parse.constprop.0+0x8f/0xf0
[  251.069326]  genl_family_rcv_msg_doit+0xd9/0x130
[  251.069329]  genl_family_rcv_msg+0x14d/0x220
[  251.069332]  ? __pfx_ethnl_default_doit+0x10/0x10
[  251.069336]  genl_rcv_msg+0x47/0xa0
[  251.069338]  ? __pfx_genl_rcv_msg+0x10/0x10
[  251.069341]  netlink_rcv_skb+0x54/0x100
[  251.069344]  genl_rcv+0x24/0x40
[  251.069346]  netlink_unicast+0x243/0x360
[  251.069349]  netlink_sendmsg+0x206/0x450
[  251.069352]  __sys_sendto+0x1fe/0x210
[  251.069355]  ? ___sys_recvmsg+0x88/0xd0
[  251.069359]  ? __sys_recvmsg+0x56/0xa0
[  251.069363]  __x64_sys_sendto+0x20/0x30
[  251.069365]  do_syscall_64+0x5c/0xe0
[  251.069369]  ? syscall_exit_work+0x103/0x130
[  251.069374]  ? syscall_exit_to_user_mode+0x22/0x40
[  251.069376]  ? do_syscall_64+0x6b/0xe0
[  251.069379]  ? __count_memcg_events+0x3e/0x90
[  251.069383]  ? mm_account_fault+0x6c/0x100
[  251.069387]  ? handle_mm_fault+0xd8/0x210
[  251.069389]  ? do_user_addr_fault+0x336/0x680
[  251.069392]  ? exc_page_fault+0x65/0x150
[  251.069394]  entry_SYSCALL_64_after_hwframe+0x6e/0x76
[  251.069396] RIP: 0033:0x7f390194fa9a
[  251.069398] Code: d8 64 89 02 48 c7 c0 ff ff ff ff eb b8 0f 1f 00 f3 0f 1e fa 41 89 ca 64 8b 04 25 18 00 00 00 85 c0 75 15 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 7e c3 0f 1f 44 00 00 41 54 48 83 ec 30 44 89
[  251.069400] RSP: 002b:00007ffd67aab4e8 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
[  251.069403] RAX: ffffffffffffffda RBX: 000055be8b68b340 RCX: 00007f390194fa9a
[  251.069404] RDX: 0000000000000024 RSI: 000055be8b68b3b0 RDI: 0000000000000003
[  251.069405] RBP: 000055be8b68b3b0 R08: 00007f3901af9200 R09: 000000000000000c
[  251.069407] R10: 0000000000000000 R11: 0000000000000246 R12: 000055be898b4e10
[  251.069408] R13: 0000000000000000 R14: 000055be8b68b2a0 R15: 0000000000000000
[  251.069410]  </TASK>
[  251.069411] Modules linked in: snd_seq_dummy snd_hrtimer snd_seq snd_timer snd_seq_device snd soundcore qrtr rfkill vfat fat xfs libcrc32c rpcrdma sunrpc rdma_ucm ib_srpt ib_isert iscsi_target_mod intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common target_core_mod isst_if_common ib_iser skx_edac nfit libiscsi libnvdimm scsi_transport_iscsi rdma_cm x86_pkg_temp_thermal intel_powerclamp coretemp iw_cm ib_cm kvm_intel kvm ipmi_ssif irqbypass irdma rapl intel_cstate ib_uverbs iTCO_wdt iTCO_vendor_support intel_uncore mei_me acpi_ipmi ipmi_si i2c_i801 pcspkr ib_core mei i2c_smbus lpc_ich ipmi_devintf intel_pch_thermal ioatdma joydev ipmi_msghandler acpi_power_meter acpi_pad ext4 mbcache jbd2 ast drm_shmem_helper drm_kms_helper sd_mod t10_pi sg ice ixgbe drm i40e ahci crct10dif_pclmul libahci igb crc32_pclmul crc32c_intel ghash_clmulni_intel libata i2c_algo_bit mdio dca gnss wmi fuse

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
