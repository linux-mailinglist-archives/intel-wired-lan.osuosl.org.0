Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12183583F51
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 14:53:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C104660EC4;
	Thu, 28 Jul 2022 12:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C104660EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659012814;
	bh=fQEdbyuuz2ZynlybaYrhWLQLw4B2r75CYAN+HKJgQ20=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M9LKLNQdxqJwPkNxOVCV6UOPT2mW522oM+YydvF/q9Ks8SUeaXByWR2DWPX160Ssi
	 oE1PVO2TfEUNAsSUF26TAstW4gxs+qr15CZtP9NKgTI+DzXQqWF9dBIDcjLDLfblfC
	 2SLMFb1DpZjAW2NbE9HnpEaFFr94Ver63NJs0dnnN1ID0I2eTHisOasBk1+lXEkoPM
	 jyoPCA4U1UPa3OhcLAiGbvdxYrnf98Kh+y5zV69pI1gCs7LgLJp67J8h6SVJZDJj54
	 sS/v+1mnyMK7GxMpOOxyKyaKEPIXlN+dXv1DNAf5V2WRjyOt6OhXGftLQxyGgvvaiL
	 XjDYXSQWcKXVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 35iEUDmfAV5X; Thu, 28 Jul 2022 12:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B8F660709;
	Thu, 28 Jul 2022 12:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B8F660709
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E4DD1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 12:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E72DB4088F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 12:53:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E72DB4088F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oL4BkB1-bYoF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 12:53:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94D984087C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94D984087C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 12:53:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="350207393"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="350207393"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 05:53:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="928277196"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jul 2022 05:53:26 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 05:53:25 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 05:53:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 05:53:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 05:53:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gdvxfn9uV6F4cb5B0zJ9iOBTozwWkypSvNKgD0C5wTHrNFVbNdVv/wffT8oJaY0E5EXYEe+N9TlN46H0bdKoSHpCDTBqzPLi0DgSGiv5+32H4dbyA9aB7jm9mMye6bhmihzWmIi1QWqoRjEfW8LnkuXwLr4PpC0VQbzsh0rtUu6gmQGQLw4sm8ALSxjEgYSxhqF9zP18SFWkE0RhAsC94ooF5ke0wdxOd+8vRUYLFB0hb1qJg4e5rz/CJlmdABkDThjwMvSGw7Hx3QYCAQGsM34/M3+GttgR7VkJFTYxanOexrJgbQZ31jmCvm/ebzq9fwUHyP3TwpiVmciV22nZ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZsHXvnH+SZLWj9bwoPko4ygXlYXsIIICq0kPTrAkYQg=;
 b=KKXfdag7cJ4fCgh2EhMZa+CP4OewNbcuwaSYVOOOImXDiSS57/zp7aYPWTQQP2HeJEswApyv6rw4G6AoajjRUfh77UCsKLYiLNqckHY0hP4qRFhYSDmgQP9UQ7z4Xbygq8AQPO6EBaeKJtg5AQEMo+ByDCk7R0c2lNT2u/dbNDrkD5wejni/DP7u6qTQIbEhMFumKciQ2+cJ90wb2E2IpamPmCOzEH2pMhsE2OlY4bTry8YHmrFEooaFLlhSjuaONykJZK9G1L7r41CD6Az2qMEMON7+BMaYPqkVxnt3ODeEVWVFF/DP8OmobtmipeARglqayfgvX9XFAbKtq2iGpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by BYAPR11MB3000.namprd11.prod.outlook.com (2603:10b6:a03:8e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Thu, 28 Jul
 2022 12:53:20 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::19dc:f7e0:16ef:d7ad]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::19dc:f7e0:16ef:d7ad%8]) with mapi id 15.20.5458.025; Thu, 28 Jul 2022
 12:53:20 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add low latency Tx
 timestamp read
Thread-Index: AQHYneDq7s24lnWi+0Ccf2ZjfZ5iK62RNH2AgAKQPyE=
Date: Thu, 28 Jul 2022 12:53:20 +0000
Message-ID: <MW4PR11MB5800A03383D2724EF4072F1786969@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20220722153610.499172-1-karol.kolacinski@intel.com>
 <63bf55b9-9889-a947-d689-b7c61d55ff5a@intel.com>
In-Reply-To: <63bf55b9-9889-a947-d689-b7c61d55ff5a@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 221233f7-3c7b-5869-ce25-3f80dd873b15
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4cc3e21-fe01-4257-84a2-08da7098261d
x-ms-traffictypediagnostic: BYAPR11MB3000:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NOmaSSDTJxi+5DxYMP/Q2sfU63KpCHJoIVGsEdXbq1dvOEgy1p7EoBmyz1wXEUpDqLjzBlB+rB0+l8Er8zKDlSNmMP+pd2FJ6gd1YSjAxQHmusutbigStGH4IEhlD5J1sGo/03AkeSBVVcPHeia9MQIJ5tWgf3TgbEziHzAAEDBpXM5yD16/GOzjXGLMyXKA/9xfc6tJlzgB9rsCSBHsCwySjbryZC7i7rR/C/w5q1iSMR1slp8qXRP1+l+vEq0cwDyTNToRoql8+9bkAhweWNWmEMNfoPxAvJf21SlChZ0kw5GRRmCioEFKZBRljiHKRtF5iKwjBHs7jmaJtbpnsmYr1HAgPMRiB5EwPL9K2XPFN0AeRK2LF/AxDf8c+eOyAYMM2ebJoll3RZ9aXrS9RLbd7U7oMUQvktERF9dGt094WtIQSazvjF5nZy2wht70OoC8gNPYtCwaBMYU+yQyBBMzjhFptROKUEjDEotaPKF+X5bOSrwXEY9y/sLsJReUNpkb2Sjszsdm1JBR0u7XT/+O21TujPnBwk3Rv+Eq7gDm3mXYd8+spk/vhauuDaPjJZbe3C43CkxLS7+edttM24p55PT10BU8Ro+jYSLR8Ox+kkSZI9rtaYmw78njq2MmXfRf8X28KJGymU9kPp7WJTVsFp3vgjWXp+9NSUfVT+N0pTUxxUbkZBn9eCKGIz2619OSS6p6lEiB7hpAWQ4kvAWghpmvhiF4aTH8NGoXBgzW7iTH5TnaPlSE8t15Pbe+5RSPoX+r6p6FFgfA+Y3M5WEPrBJQrH4kfmr7Z055YRgEVu/BYyMmdhrOrbZITRbJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(376002)(346002)(39860400002)(91956017)(26005)(53546011)(66476007)(82960400001)(38070700005)(71200400001)(6506007)(8676002)(38100700002)(33656002)(66946007)(66556008)(66446008)(2906002)(41300700001)(9686003)(7696005)(64756008)(186003)(478600001)(86362001)(122000001)(76116006)(83380400001)(110136005)(8936002)(52536014)(55016003)(316002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?2f6hTGTULZlggAZEOuW1u+3+qjutqnpUhWU7X6+Kv2pJVry3GW5guyzFYe?=
 =?iso-8859-2?Q?cY8SpKnA5aicD+d4hCk5PHz+VI5i2aKJ00UnO17CqyZl7amtb1Jki+XJl+?=
 =?iso-8859-2?Q?B5PkJiK54QVkLo1V5pv2R64Ea1Mn/oJn+NEAw7cEyX78KMre2oXCvevmVm?=
 =?iso-8859-2?Q?QFJFjr58HjgeHgcgk/6LDLEmJrUK0YCPuQZI7nMIY7KSAsdsQCokodxqJt?=
 =?iso-8859-2?Q?avrhn7jJjB4WQ/x/ZRdFhKg/XflRgYsfLNmTUUE7dUmsdewAx12qwCjt8+?=
 =?iso-8859-2?Q?Z3GOoy/aPcc4yBH5tMF1UahJ/zFMdC3ajjwfaf4mT/IJkpmlyHIGH4hin9?=
 =?iso-8859-2?Q?/NXS8DoVYo04u2NeEJ8Bg/qoleAcvE3dLbGSkunwGUWgcdn+NaTgqJ1lMd?=
 =?iso-8859-2?Q?g4bFe+ACN/UwE5HgNHS6Ge0Tyyr8qE12aMaBaAsbB37RXho263Ho8AW1dy?=
 =?iso-8859-2?Q?wMkZ2KTDG6+KVzx/GzwTdhHy/+p+MBe21t5bq/4NrupggDH/H5vSiAW4cR?=
 =?iso-8859-2?Q?AQ/3nCv2qtgbHEfL6bWGtG16zRAXaI9og8nSnB8QrOWPP5rPgXkFnZcvHN?=
 =?iso-8859-2?Q?QSb3WxcmtAx6XmJG4R+r2pUw9wt+amn4pYGdIcXlAqYWbK4mKP22ZaSInh?=
 =?iso-8859-2?Q?nYlvuDk3X4ck8mSeB3fCJLVI5qU/CjE+OPgeVQzS3ykSpV/VJQFNDigxYK?=
 =?iso-8859-2?Q?ZHs+KQNK7Q4m1VtxijubPsfcSDPbaaYhTHt7TKLtuHf7ZopI4WRnZrDOvF?=
 =?iso-8859-2?Q?KzLtN4DKXZdJfapjAi+KsE5xshRSPgrL0RVy3btdgjNH3Iyi0wV6ZxgQZ4?=
 =?iso-8859-2?Q?mLIluSKjxUMKYf+WZcBflN1U0lKbLCe3+ojgIuyJE3yQfyLpY9a5TnQgji?=
 =?iso-8859-2?Q?n3NExqA+YsYrxC+cXQNUOVALZmBA+b4EiMEhi/yN3NU+V8Uuhqd7KfT0Eg?=
 =?iso-8859-2?Q?vT/I5tEHJ1dDQS38FzAGIgdcdsK2GNsFX9wTTMYT1lix0NWsLfFVvKsGJE?=
 =?iso-8859-2?Q?IC7ZxgMWwdJlYJzeytpwooua9uHwgR1kHdvcM7t0CJaeQqjW5yddfnCLx6?=
 =?iso-8859-2?Q?10xY8Nf200WYnrruVcWoO5X/sAO3IFskPBlUPLEJo6nXH8oNPpBGwWqw2C?=
 =?iso-8859-2?Q?yi+CjVJFhiiEUrmX6J73upQTi35ARZ2/Wdi8i8INwQO4izHrRJvw2dOIoM?=
 =?iso-8859-2?Q?EdY70CGm545a+dCoE/GGh7pgjx7JH97C1iZxBcFhX9jqiqiwcdvfFlppwP?=
 =?iso-8859-2?Q?DzLZQ5FICYksF9eb9JGFflgI3iPX3PXy5sUGK5DGm744Ym+ul8VJ5Krhie?=
 =?iso-8859-2?Q?NuKUdcvXtFOcEJCpQcniHhfywc1QSK01vB6W/K2yINUWd8UY3+iMaF7kBZ?=
 =?iso-8859-2?Q?Cxj/McEk4xpPb95VJHYEVGkQZEnqX1adk6FeeJCssUemV99yuuyh+7J/+D?=
 =?iso-8859-2?Q?n0sW+Ks9qztceDwIninH8yuxmwJGUAxSa1UY5gRrxveFF6Uw59MLke7ajl?=
 =?iso-8859-2?Q?9ZaYW3ZjWdMvL/VKpHq2WjpSsZyyknV039BW4zVBYn7iLw0aAtUCE8cvXp?=
 =?iso-8859-2?Q?mAl/IGR/V6znGgBZtoPIzqqkQebzh72cMzRXW+mn/FnBEqLYci8fA8LSDV?=
 =?iso-8859-2?Q?TiIA8VUdt1mthcgRCwyDkqfSyK7iWiiHTo5M5WUbMB8zVQG9ln3Gnriw?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4cc3e21-fe01-4257-84a2-08da7098261d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 12:53:20.2998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A/K+jaQY9dpb1X6yXG/twt+wlTTtaKfMYRalwHO2owez9Vg9Ww48jVMiAFKqRCgAkclxF6Wd8Hgp2kpCa17gPJnnj8uQeNPLGXAEKOiz6Jg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3000
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659012807; x=1690548807;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZsHXvnH+SZLWj9bwoPko4ygXlYXsIIICq0kPTrAkYQg=;
 b=cy5+wpj5xPx3gPoVBKbXXkud6E0ellAKHikFQFOGSNg1NyfAOx8A8K+J
 S3g6po3eXi9Do0w2ouPHU4YWsjCUbsRe/MnZD2utCti/OmBwwdpy6X4TF
 5g1dDzYrbkaXmAYq9KS6ykBA7LLqvpArX1TaxWHqmoife+nLtosg4JdkX
 jyPPX4t0smlUuc0o8vO04b4v8wC4uPAzokfyJEjLmzJ+PxgHnPNxJXLQ4
 NLnanIFke1XNYW2n0WU44ydCqoeBlH4I8YeImnIyZQjXrH84B4N41E2Ov
 x8+0MrSrBmGTSStzmDsryN7Zcd4e1uJxVEoBUSmHS3vRluo9xxg2SaO9Z
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cy5+wpj5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add low latency Tx
 timestamp read
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Tony,

On 26.07.2022 13:39 PM, Anthony L Nguyen wrote:
> > @@ -3121,6 +3123,24 @@ static irqreturn_t ice_misc_intr(int __always_un=
used irq, void *data)
> >=A0=A0=A0=A0=A0=A0=A0 return ret;
> >=A0=A0 }
> >=A0=A0 =

> > +/**
> > + * ice_misc_intr_thread_fn - misc interrupt thread function
> > + * @irq: interrupt number
> > + * @data: pointer to a q_vector
> > + */
> > +static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, vo=
id *data)
> > +{
> > +=A0=A0=A0=A0 struct ice_pf *pf =3D (struct ice_pf *)data;
> =

> Cast shouldn't be needed.

Done

> > @@ -2171,16 +2170,17 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, st=
ruct sk_buff *skb)
> >=A0=A0 }
> >=A0=A0 =

> >=A0=A0 /**
> > - * ice_ptp_process_ts - Spawn kthread work to handle timestamps
> > + * ice_ptp_process_ts - Process the PTP Tx timestamps
> >=A0=A0=A0 * @pf: Board private structure
> >=A0=A0=A0 *
> > - * Queue work required to process the PTP Tx timestamps outside of int=
errupt
> > - * context.
> > + * Returns true if timestamps are processed.
> >=A0=A0=A0 */
> > -void ice_ptp_process_ts(struct ice_pf *pf)
> > +bool ice_ptp_process_ts(struct ice_pf *pf)
> >=A0=A0 {
> >=A0=A0=A0=A0=A0=A0=A0 if (pf->ptp.port.tx.init)
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 kthread_queue_work(pf->ptp.kworke=
r, &pf->ptp.port.tx.work);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ice_ptp_tx_tstamp(&pf->ptp=
.port.tx);
> > +=A0=A0=A0=A0 else
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return false;
> =

> I believe preference is to remove the else and have an un-indented =

> return false.

Done

> > @@ -2587,38 +2588,113 @@ static int ice_write_phy_reg_e810(struct ice_h=
w *hw, u32 addr, u32 val)
> >=A0=A0 }
> >=A0=A0 =

> >=A0=A0 /**
> > - * ice_read_phy_tstamp_e810 - Read a PHY timestamp out of the external=
 PHY
> > + * ice_read_phy_tstamp_ll_e810 - Read a PHY timestamp registers throug=
h the FW
> > + * @hw: pointer to the HW struct
> > + * @idx: the timestamp index to read
> > + * @hi: 8 bit timestamp high value
> > + * @lo: 32 bit timestamp low value
> > + *
> > + * Read a 8bit timestamp high value and 32 bit timestamp low value out=
 of the
> > + * timestamp block of the external PHY on the E810 device using the lo=
w latency
> > + * timestamp read.
> > + */
> > +static int
> > +ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
> > +{
> > +=A0=A0=A0=A0 u32 val;
> > +=A0=A0=A0=A0 u8 i;
> > +
> > +=A0=A0=A0=A0 /* Write TS index to read to the PF register so the FW ca=
n read it */
> > +=A0=A0=A0=A0 val =3D FIELD_PREP(TS_LL_READ_TS_IDX, idx) | TS_LL_READ_T=
S;
> > +=A0=A0=A0=A0 wr32(hw, PF_SB_ATQBAL, val);
> > +
> > +=A0=A0=A0=A0 /* Read the register repeatedly until the FW provides us =
the TS */
> > +=A0=A0=A0=A0 for (i =3D TS_LL_READ_RETRIES; i > 0; i--) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 val =3D rd32(hw, PF_SB_ATQBAL);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* When the bit is cleared, the T=
S is ready in the register */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!(FIELD_GET(TS_LL_READ_TS, va=
l))) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* High 8=
 bit value of the TS is on the bits 16:23 */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *hi =3D F=
IELD_GET(TS_LL_READ_TS_HIGH, val);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Read t=
he low 32 bit value and set the TS valid bit */
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *lo =3D r=
d32(hw, PF_SB_ATQBAH) | TS_VALID;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return 0;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> > +
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 udelay(10);
> =

> CHECK: usleep_range is preferred over udelay; see =

> Documentation/timers/timers-howto.rst

This udelay use is intentional as the delay value is small and this
loop is time sensitive.

Kind regards,
Karol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
