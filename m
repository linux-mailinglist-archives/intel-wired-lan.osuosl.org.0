Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEBC6DC3BA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Apr 2023 09:01:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79FBB41D85;
	Mon, 10 Apr 2023 07:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79FBB41D85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681110096;
	bh=w0F7F/5QBXUNVUsd1fClxzwNr5nH2zkqnTn1wvx3/8o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SVWQX6Lyfd72HyLqd8EORu+pyPmpj6HcwXy1TslAniphD1alNAwlt654+U8H2KJx2
	 cp83KDsOm5iXZArLk3qxdXScRBQGEjoEAHGQo5C+Ltp0EswnKLVkA82CrVBbb85g8R
	 J1XuG02RuM23xS+MXWyhdAlg30I46h0eMWnjwWORvno+DngswzXbn+kWuOim5blBPi
	 grnB0DybDRxB/X4VBQPV+TqlpwjYzr5yS3qJSssP/SQ8IvpiONzkgQNSHUoIO8hrx4
	 JMHDP6x5gIejb8JSVoCry1Ppfqj3FsflFtWhpB6XFlTvNu7/o+/6um+OQluxI7zGsq
	 nf6RUNaQAxjtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XzsnK26eH_29; Mon, 10 Apr 2023 07:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 318384167F;
	Mon, 10 Apr 2023 07:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 318384167F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C7B11C352D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F0D16FE73
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F0D16FE73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2wbk2aYM7Ah for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Apr 2023 07:01:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD68060DB7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD68060DB7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:01:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10675"; a="343308122"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="343308122"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 00:01:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10675"; a="757375343"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="757375343"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 10 Apr 2023 00:01:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 00:01:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 00:01:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 00:01:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nzvpMobIJNrcRdYgPexqfxAylDBwfBZAQjL2VCGvgZfbCcQMQM7vZBaUlQEtQDUO2t4iobm+E6uoIQhGUhXRZ5PPgX1Mr3WatBPPJUAdRdN83+49E0SZsZD6ctSIvjmjEt4J1p1p/4T8qGCOERlvb9MSPeFhcs7178Az+CA01hOZon0H3rQJmJVx6qbvVaMJwoIa1v+OVEe3L/WFkLMZCeUGJChbAfXG5sjMdEGNiyA1sx7Vru+PJlA/VSO4NbgP3/owTP13uYV/wY72oi7nLUtTKfGg455CganYohqDt5EPRw4HOaA0zT3KqZlGy9o96TpHo5ozNDWC16VlK5zx9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kqAEo91O7o2KAcVMwlTLXl5IcMnMlI0rL1ZWTnbcZOM=;
 b=CGxtY7+9Lju9peqm12nYXbaxC6ikc9PmbSCgHPznwRh/DUI5lY0baa90GxN4tlccctvl9FSt74w1LIy7ipHZ+6NZcJmr0EmWiCmeJ3908kbbgwNapEYj51UVjlO1sD9+ZWlujySfSSaAAFWYkYOBKZwgBT41f+TxDsBMG/GfCWEYd2vAisbMmFjBgHzBH0GYhMVUBZ7T3Q4OPGp3pM1QfbPcQhj8+jw8L/C01oyYS0Y3FDCvPWf8L7s12Og+ZEH14R2+u4RGXu2P0JanezmqviJWk2ar6A2RMle949tFOTcGTX21WZ5wIgXPppKEpun6IBfuTbAxTrzAUI5y+3DktA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by BN9PR11MB5356.namprd11.prod.outlook.com (2603:10b6:408:11d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Mon, 10 Apr
 2023 07:01:23 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::1977:c45:c8b3:b5bc]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::1977:c45:c8b3:b5bc%3]) with mapi id 15.20.6277.036; Mon, 10 Apr 2023
 07:01:23 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Kyle Sanderson <kyle.leet@gmail.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: igc: 5.15.98 Kernel PANIC on igc_down
Thread-Index: AQHZa3pCDIvvlF4zRUa8L6+lTZELGQ==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Mon, 10 Apr 2023 07:01:23 +0000
Message-ID: <SJ1PR11MB618009FA2028B918093DC094B8959@SJ1PR11MB6180.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|BN9PR11MB5356:EE_
x-ms-office365-filtering-correlation-id: dad73aed-a38d-4b15-186b-08db39916510
x-ms-exchange-recallreportgenerated: true
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-recallreportcfmgenerated: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AYOrmNYmCjbu+5euJUsLBWoey4VEi3QAOFsMCwjk4y9lAjVNWXC9KDbZwrWd+3tmmS38XYGtWbREY51bxTZN2KdYK6ReJgnPZnDz1brNIEpBxXYH/uOGhB8XQ9843TObpcIy9CO5Wy7DiKwHPSNgnMs6Oz0D4VF0wwHAZfJXThLw7SO6a1FeP07wxzs7TIh1Kl0rF4hjPSiwXD8v6dFlZsp9PTxGGhE7U5TPxWRLcQ50jyjsRVLyjEthxdXzEge5rurFtZySx49kd+/vdsluu8/roiHRv/vjUBfIEOj0HwMVhi2I1As1/muglXbYnpUDiGJvso4qYx1ReS0LL7D4V0YUEbdJlmf8zkyxPGnC7OGJXfAuX/CWyNcRDia/9HMvZDLMJISTsHwfCM1GyH80FQZCdCEElHPBQ8GUJz/el9cxrzoqWs7lrrYCTpYdJm3DA4pFfe3FH8DrJjl8Jty5LbXz1AW8XasYliRkbaIPmfFP3Als6zHzhS2zoqB5R0CCYJQ2Ew6KSplCtzfoX3qZZCRFndzN4zl3KLsC/DIG+cdlxNPPGhk8Ge2XWsdYzW0SlL8SEZx4cw4WKjAwpy28GT24GkkRdcehR3fgEisSUqWQEchpZSoXnv8LiYW+xjHN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(376002)(39860400002)(451199021)(478600001)(7696005)(71200400001)(316002)(54906003)(6636002)(110136005)(9686003)(6506007)(26005)(186003)(2906002)(5660300002)(4326008)(76116006)(66946007)(41300700001)(66446008)(8936002)(8676002)(66476007)(52536014)(64756008)(66556008)(38070700005)(122000001)(38100700002)(82960400001)(558084003)(55016003)(86362001)(33656002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mgn7LK0ynbPjosMu/Zb7cG3U5EmmkqI0huxjVtJax8vbCVO9tN0na+tFH96y?=
 =?us-ascii?Q?h3ENZdN8YEixk0Oh9b06fnzogYARKkK/zt1L5glXZpB0rYix8QB80zNEzruf?=
 =?us-ascii?Q?vYZM58O7FldoETGZG9u4V3isJ0xBO/BFVd/UYcd8vsWRVhBhVK/LECh6aIO7?=
 =?us-ascii?Q?WToca0GtIH5wSNzuzIfNCB7gJPPjdqrUEc0O5R7jQzPHd4UFpwlzJCV6H1xB?=
 =?us-ascii?Q?JBb6z43AuhSGbRkx07NaXk7JjlvQLS3Dr7+fBajQr+rRFjiezOXdYb1JmLUZ?=
 =?us-ascii?Q?KVIswsB6xUYojIyUESZiToNyQEQYeP179PxHoZ37umtu5kA6kEnWWWbWxo68?=
 =?us-ascii?Q?xg3H8F1WCWSJfcSNfh45wm1aBeAe8W/Xk4ejyelucq/WRo/L0jmytzXQPeQH?=
 =?us-ascii?Q?robOZLu8nFrHrtCZ9KLOo2DLmUDEOTXN4AR8ZbpAAHZIXQDFY6CijCfTqKZt?=
 =?us-ascii?Q?6MRGs7hPfpXizFydws5PcRBYFLOaH9VaMQTvM+EZlxlBtH4jpru/ZapYmykt?=
 =?us-ascii?Q?SiwHuMbs/pryw08zcLSwiMfU/ChoqoW5eDYV7MuezoNHUYx50tLcnDWC5wHH?=
 =?us-ascii?Q?Pdfr6xaorCfWLrz725DDxp+VG8d7shMDrTumZoRlyKPpRKTd8c0wEMtosg7D?=
 =?us-ascii?Q?g5Joa4hPXwO4MRAeiz0H2wPStQsuniOjdnrt4OPrg4mf3VP8a1k6rJhscozP?=
 =?us-ascii?Q?Of/RV/Dh8XK5i2g8iXgGn5FGFbjUyk4WkgVpCSvfboC+l24giwtyNsZ7IWb1?=
 =?us-ascii?Q?y+9M4h+3cvQzV8RT8QOZGIP0ff3pv0ALhwYD8kZm6SwYnurWHKIwRsUB9tn0?=
 =?us-ascii?Q?wDMeZrc0VBxdf1MuW5AAgGR6RI9P3yI6DH4QORj157n3MgbmoSsh8+tazrLG?=
 =?us-ascii?Q?tbl5GeAie/DuAYFi1E+SQiMbuSxbl0ttFQnpSIj+SdSe2jSw6KzqcmJToA4p?=
 =?us-ascii?Q?UiFhPKZZThoqfJ3M7h3EDV5abHD5M/gKrHTW9w8D9pSOidScL27C3dKX+3R+?=
 =?us-ascii?Q?IXI60GVu4RmB12vW8t4Qv+NcUxDcDkIxm6AFEutU+vU7eBAN84dMITq5kHdQ?=
 =?us-ascii?Q?TrXK/GGXHGphm/WgOA0/RD9KO5mhx54NlQnRzlmVmgw9StJNR+54KBLGWBtJ?=
 =?us-ascii?Q?3Ssj/G5DN5EGpJo6x9yAa7CUTrlFccLr8bUGomJh5pXXTEnhOM8hp9SQGNMb?=
 =?us-ascii?Q?Tuq0VIZ9/iuI+CHdzMo2ThXsABoQfiUBxpVsPnikx+Bds/g6oScr2RXkP5J1?=
 =?us-ascii?Q?Q53IL+VUgnwdKxwwI2KqRmnNDysSZcTEziOn5HG1nEU0mwfkAC6KRjdbvC34?=
 =?us-ascii?Q?yaodywMwUIkjww+ffPD0gXFBu57GGrXokBuIAbEetAqmpl5dEmOzBnBXgymO?=
 =?us-ascii?Q?sZ9aggaWdgTaTTuulYKj5kBeCl5oyJkgnSh6Nlw1cjiHFBsyNKo1y/B2N883?=
 =?us-ascii?Q?jEq7hDvMMrJ3/5JLj9FSXl3NsKByslY4DV1AAsrsuJIb6OzfqkKKymUVHQBr?=
 =?us-ascii?Q?Hl47W74r3mAyELhAiCaW7+wOKMLidfLxhdLJzDW5QI0RDXasZ3MGbo6jPV6L?=
 =?us-ascii?Q?xhKl2KI0F+fsHMWBkA2R4tMjGEnkJP1ny28mQsgwwUjy1xkrcbx6lppfQUIQ?=
 =?us-ascii?Q?5M+uf7iPSG/AmJAyZgj1bLY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dad73aed-a38d-4b15-186b-08db39916510
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2023 07:01:23.1493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GwgrOyJtdThG450VMaTZCa2IvvVsJPLkXZouBc/XQo4o7Fls+tnILtxr7sQFSToctLS3D0KXnYJq1pD3Lr0HDMgLAn/Jj5EruVHI+Y7hSmonCZqVEQLDdmYeI2W99iRP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5356
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681110087; x=1712646087;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=kqAEo91O7o2KAcVMwlTLXl5IcMnMlI0rL1ZWTnbcZOM=;
 b=HBH5SKhC09M2R0GBscF+dOFnMEALvGOACtfJ8MKI1VSXmPz5D3xqtqAs
 tGXr+q7jxdXISh152QxeREL2LtYjuOcCqPhBrB4xU7ZmFGSsA2PHZw4sq
 OcX6WbqDNBWefFKNQ0PXDdavpovCP+XDzuRGoFmzIdJNz5tZzoyEVAeCj
 3z0l65d7UVmd1tmGIZdXqqZGCeJntvtlodwUTgtdb7O9EUA5//k6I2i6I
 PaU4yXTjwKWmLZ+bFl/9ysywsDh87nGurQMi/fiUxm52/bz8onsi3ksKd
 5Gh/Mya8MkdGzrc0wMTiqw+jdIX0dV6oMrbNGcK3NoOvxU3rUKeDEXVpw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HBH5SKhC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] Recall: igc: 5.15.98 Kernel PANIC on igc_down
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
Cc: "MP,
 Sureshkumar" <sureshkumar.mp@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 Linux-Kernel <linux-kernel@vger.kernel.org>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Torvalds,
 Linus" <torvalds@linux-foundation.org>, "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Zulkifli, Muhammad Husaini would like to recall the message, "igc: 5.15.98 Kernel PANIC on igc_down".
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
