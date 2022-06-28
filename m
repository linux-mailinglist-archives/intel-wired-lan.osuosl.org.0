Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF7355C0D3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 13:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6597160E7D;
	Tue, 28 Jun 2022 11:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6597160E7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656417450;
	bh=0AAIv54bzNmy0nNnjiiOe1BhQFQIzG6JFwmBvu11pA4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2AnLK0qc48ImXAxfe4sSVxfdTAReQtUOJpvIKGjcOmjo5ZOzAARHnquJhKZ48Sc2w
	 7s9KP8xuQy2mrc4MV4bozuPb/hc+/ytmBpbimchoisn+6o3zcAmvZEjxZfijS2g7PD
	 JjikW1LX5VIuJ56obVjrAxp5ErFAyDHpco3/u/MfJ7ZDZcbnJ2QdUJ8vZOwfSKBwwV
	 Usoc4YqJ85+UtctMhy+8JC1SCsPOLQNslyPE5KUbCh/9JhCPuPt6tyzuEvllNyBWsV
	 J88UJyFuaWN8R6PbpbndVexl+oPJjE68CrclvEYc0yXZgDOnd0SvaXtqBnI3pw1x3E
	 nxKPvMgBTPM8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SHW0s5Nmkk1A; Tue, 28 Jun 2022 11:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43A8660EA7;
	Tue, 28 Jun 2022 11:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43A8660EA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 517171BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3806E405CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3806E405CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kySOK6xoUYe5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 11:57:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F95740593
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F95740593
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 11:57:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261523524"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="261523524"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 04:57:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="717417710"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2022 04:57:22 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 04:57:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 04:57:22 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 04:57:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+Glnf91CuTIRMnljKwqpe1T+y/s8/y9gQ+YzEv5G/Wmy547/nbAtURKyTrkiDsHZNbHOy1IM5X3tPzd8nts3up6eYPdKC4xTyOGSVySLGgv+0jxzz2l7mguRXC5qcKcCzBxCqXUhzQt8xWaM4zOqj/IbbYy03mU7ig9HXFZX4g8qGMk/hUC82ZuhaLkQPu9NwzJZwq/T+bKyJPQXSkmtiw3o3pG6GsWg+RBXZP3ePotdgvXe9KGzRk42GWorkQSWwKex2KNOer/1h0lC5ogquKQNVylL9kFvahQTO/GPCHy34wUbvj6M2oUb4ud7xfbHVwFQGCBT455EOjWI144Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6was6KmEPCta6rQyQMCQx6GNb7p7FxYyLKnn+MD7msY=;
 b=C5QIaO50+zSsVCtpyVbmzLF6xIBG4jyOEYt+5olIbZpZGjVfk0QW+7hyEjz8+TM9TzLwnbVFeydCRUzOl2jMF0zCJrbHYnuVEOiLFT9pZY6ZClfOaaRpHy6TsLcrhALCjnBXXw9D5iK4SoQcVNczWDoVJm6PwNNTe/p+zpsxYsQks4R15cx5sLqlDx4ww2DtqKgkTRtbXSbDu2hG58Lst/bGa87nTrpKZjkujcHQy4bvrfkF1F5MVMvqFim4F4jvLOiwxPiEZSPVSkJ/JyeKrZyXElgExcAkpz7/5cYvm4tL97uDDGoq6sSWiSqOYNXJ3MfSauMzooJpw0mmSRcCaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by BL0PR11MB3460.namprd11.prod.outlook.com (2603:10b6:208:6e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16; Tue, 28 Jun
 2022 11:57:17 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa%7]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 11:57:17 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 net-next] ice: Add support for
 double vlan in switchdev
Thread-Index: AQHYQQ5Hh2oA1Mz/ZkizVfP82oqSLK1lShPQ
Date: Tue, 28 Jun 2022 11:57:17 +0000
Message-ID: <MW3PR11MB4554D49F9F3B8544CE5D2A379CB89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220326123535.3132-1-martyna.szapar-mudlaw@intel.com>
In-Reply-To: <20220326123535.3132-1-martyna.szapar-mudlaw@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01fb70c1-ca70-4937-dc3f-08da58fd596a
x-ms-traffictypediagnostic: BL0PR11MB3460:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u/0g0DViCHMnBmcg7Jpnn30tSL4W7p1cMbOOfKZoZfOry2s/XKvAl6jy6LpAj0Tf9snifPQeJ1HC3nLm1Egm8xYBVX8HZSncsK4eXDAZLhJdK4mnXfQILEUOT6Y820wcIpUgNTyRntLVMmJ9nu0Hip0mTvH+BZIc1psl9+AD4I1sjS275JpaYHN9Hdza29LniIVBBniBRwSgnLqUJjJUb3CNzixzkEBoR8CLxTHQgGROMZxX7TATZMWmkAy8nVbf6TRKyuJlloXML5NdOBb9nIz01t3/EvTAGe1GW9WwNTLoBoouBTr0fWQHa0tI0AiqRoCcqGXCxd4l4gT8UhyMClKwgXaVBa6J+JmVP9mYX9rQG1f+q9WsVmAL8kYp6mKCZ1TU0NsVVKmkVZUimAi2VZQ6iKTve97M9yKITP+vCOTYqdnYOLs2IcRxntvOI1ksn61bm+WVFuVmhuOMaYVlZGVXZCkMWn/0+5eHhxAQXNta5sNqvjc2Svun6S02AEgxzEjf21fRB4d6xNcun0dDa/uehfTtL1mPPVj0mYo77nZIjGf9oRM1/7hSLfgRTDeLwVReBW/LKlmpUC8uJpuqVfLyx5zJHwQym4cctODfttRr2skaUWdnIKzBgEI5PJzd1nsbFjZbA+3W5gxY+ZnvzZiSvuNZhFWce0VLe3oDHqBivyQ7dPdDa+tOWGbmhYodFm7tRjHIH7slmUEr+r2FQhEOLiJIjyPOFr7xgOlUv5UZrH0guKoeyd3QgkMf22Aj/M8K0DLXAIOBl8Vux9oXTW7zCOjSDKfAV6TXi5uRPuE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(136003)(396003)(346002)(39860400002)(66946007)(110136005)(54906003)(55016003)(38070700005)(316002)(8676002)(66446008)(4326008)(76116006)(83380400001)(66476007)(66556008)(64756008)(71200400001)(6506007)(2906002)(33656002)(7696005)(107886003)(82960400001)(41300700001)(38100700002)(86362001)(5660300002)(122000001)(52536014)(478600001)(8936002)(9686003)(4744005)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I2kVmAqc+L8wM1En+SazbAWutwKerf/oub4HAgQA4dXaIoBixsnm/DwSsIKo?=
 =?us-ascii?Q?UwpPRmETY18sK7Uu1GXWSs9HZkaYRSf7BbFqhk29IjkhFxtHnJPxOLFKPbL5?=
 =?us-ascii?Q?flcTIz/ojXK19spsXKW11FjePtH3ei2bTmZMATqLocA940eqjM1/ayYLIqKb?=
 =?us-ascii?Q?h7FaLslVUnjHs1qXND2XFsvQsoVd8wweMTb374gGVeDrWtn/0zV+0jDsrS06?=
 =?us-ascii?Q?pc+IwNs+3SS8KZRjuL4BBP4GnAYdy9QvPR89J6MUb4A/Su9moV0PAvGMM2Uk?=
 =?us-ascii?Q?3lO9pyIqhGrfwvsTsPwdQFcfbMHdQUGxm+Zz5Lb/yDIRAKxcuOotMzTlAAGu?=
 =?us-ascii?Q?T1yE/cXsV0XLLq2KGuQ0LMf1JciclHSdw1eZrYScJZ5Burl/9aGL8d8GcB9q?=
 =?us-ascii?Q?Q9n6fAuT+RXTInLCtRRSuHL5yY60vVlpGvdcwjEU1H3zfclD3UmiX1WDii+j?=
 =?us-ascii?Q?MVchM2pKOjdB0N7XUb+ZmTPkW/xlgpPb8xqoqHG6A8sjF95kOrH56eQu9F9O?=
 =?us-ascii?Q?CeIBamnbx13LQAhrdDlGAncsbJUJr22OIB8PYij/xiv2R2FAPYz8n3KtUp+J?=
 =?us-ascii?Q?gkLw/ESEZD4oUFMVaAgl7QCB3IPpa6M1IluIQ4CCgC7eCfy3aBDwhCDQ8ogF?=
 =?us-ascii?Q?ZFubvND36rQ22/wdQlVpX0IkIshFbfVl74u1HIV3ytF9vbkexNd74OrpHCR5?=
 =?us-ascii?Q?ErDjFEHq/x9M9NLl48q4MVRlPhm6GWJsRUoWqRal6vfm3/zSbQ3/f3scQCws?=
 =?us-ascii?Q?xzGkVzJi1rHS+cErvorgIxrI8UZiQvHSmtuNu/fwiknl/W/ztfJNVqo9vB3q?=
 =?us-ascii?Q?9VVg8+cF7OU5d+xUKt3h7uvM2UnpbXBbTP0FY9jjMUt3EnmvMEJh/wRavtdU?=
 =?us-ascii?Q?on4VLNRiC4mwgAOsjg4ywQfW6XlGMlBP5E8zjuJdP2y1rELioK9SW5p+9A3O?=
 =?us-ascii?Q?thg0gkF8VC7KfKzdLZQYQ0bmjBN5FHwtbN/jm2mfxi4GYWon7W8qpMsoNRRg?=
 =?us-ascii?Q?Fr0FhPu7MyW6XsfYwv1VAhQMUGKnECawul1TPrCouoQvg0alNc6CJj41FYhH?=
 =?us-ascii?Q?opSFml+KAorlf771qEWTb3vzx+I07sgkdPxLLkimEjbqkKk98c40TlNGhZtq?=
 =?us-ascii?Q?SPma9CQ7IKkmh9H47VOWGQvHoxSqdE5aqPz8CO91v5iBp4aK+OZVzT1tlK35?=
 =?us-ascii?Q?s1q8E6yB4AXaFX/TZFbFkJGXZfdKhIxm3QB5U/BGXkf3FKDySKdWS2tuRdE5?=
 =?us-ascii?Q?oTAzYvgKH4oaahl4qVv9BTgzQwPKhkAw8/jVUthJKNSX/Zl0NsCgvrUZcJvD?=
 =?us-ascii?Q?09K5wt+wlQqnvmyzVLT4ah878qO6sy+tjGIqaqzZN1uQLznr3Uxx9RGvgghp?=
 =?us-ascii?Q?7jYNVeeFqjjWOsjWhfK7g3GJQkHh1RZSWZnsiHPwCEAWfE87xt/9ZQ+RU9vz?=
 =?us-ascii?Q?l0CRFikDkRXpWA+8FtKnuZSypaa6Jvrhh8jDldzOHe41kgZuY41JfONE7GvC?=
 =?us-ascii?Q?m26J7CWsrVB6BerVaLp/CKV2NfnlWTQP/W2WtgcG6ISc7NtrooXVbCmaXy+Y?=
 =?us-ascii?Q?ZoEKfyDt0r4OKx49aB9qbJ/OEn8FLbk2VfC+Dv3yPGN8jZgI8/fSJBlbYS6D?=
 =?us-ascii?Q?Vw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01fb70c1-ca70-4937-dc3f-08da58fd596a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2022 11:57:17.6179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8jknW3lxSm9lCMZplKMSZz/tIMtOIlREbllmmBAYWIAgNxBy2qHH+VATPUB/W6K7B2qcmIlDaVPBc5q8RFJTiOlX/f8zH4lDv3wv16k+LgU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3460
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656417443; x=1687953443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YpJ4rQHEoUdzoQEwFMTlvcgJwDrukPhhtqNtdQr7Dxs=;
 b=PLwYcQqveDsFUjuevN/s8GEwgv0cbR/z++P7mQrpVmeiVmwLC3bnP6Vo
 f0XGRNLVS49ygnT/IVywO/87/AZYuwd5QsGaQ/hRlXgD5nW1E1uv6rppY
 paPBtAfJ3y6WdOM8zbc/Nsv7ZFaNDxDYcccNqCAB4i1pqmSwIbptRfBNA
 5Rzyxe8QhPaDvwFGuq93zh5CfrydYyiinWH+Rbr9v9famTd1DJhg9jmLD
 hR/wCrcJP28D4HdxCVC/A/O/M2lfmKSsGG0dfhqJDwrqY2797m0BUpdeM
 b6C5Yh/sIKluAUSsjiZTPAIo5TZBtdeRHC78jlxf9WrT4JBE6gZR8WXLU
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PLwYcQqv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] ice: Add support for
 double vlan in switchdev
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
Cc: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>, Wiktor
 Pilarczyk <wiktor.pilarczyk@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Martyna Szapar-Mudlaw
>Sent: Saturday, March 26, 2022 6:06 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Szapar-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>; Wiktor
>Pilarczyk <wiktor.pilarczyk@intel.com>
>Subject: [Intel-wired-lan] [PATCH v3 net-next] ice: Add support for double vlan
>in switchdev
>
>Enable support for adding TC rules with both C-tag and S-tag that can filter on
>the inner and outer VLAN in QinQ for basic packets (not tunneled cases).
>
>v2: Rebased. No functional changes.
>v3: Fixed indentation error. No functional changes.
>
>Signed-off-by: Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
>Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
>Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
>---
> .../ethernet/intel/ice/ice_protocol_type.h    |   2 +
> drivers/net/ethernet/intel/ice/ice_switch.c   | 230 +++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  43 +++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   2 +
> 4 files changed, 275 insertions(+), 2 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
