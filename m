Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8211B654A71
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Dec 2022 02:17:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD0D3820CE;
	Fri, 23 Dec 2022 01:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD0D3820CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671758229;
	bh=xI+cHd6tcNrrb7aN3hUc5dlxMzrXcsmfyBz2nZm7uoA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0lVFgkKOOlZO/rgTVMpfxy85OjzdSy9AZ4ZlDehVKXVR53DDU1NrQgTYiYAibOToK
	 50FErpU8Su6YpLtqp6Yzf3T4JXIpKP4ck0IfVPH1AYZ/BBf+oLZvdXlgyU6Y/eiRKQ
	 dN9d3GyZX2vRjr/gjRHJTo2aMLhO6o4Rd9jKxl4XGhym7pKZcW5hGXgmzk2QHl1cQa
	 9S8QhN/JWKRJX/X7BFKbl+m70gSqbSlUCC8YZ2a32/c1tbvYI2atEO6e8f4UXHp36T
	 sYuY3ieemJmho0dwy2OP1a1t1UBHRTZGRJux66rFYdJLYByoOsBxFZtlkAiTRXPvVb
	 FG393YScOG2mA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AeVQ2Wk7uK2Y; Fri, 23 Dec 2022 01:17:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE2E181EE3;
	Fri, 23 Dec 2022 01:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE2E181EE3
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F5731BF96B
 for <intel-wired-lan@osuosl.org>; Fri, 23 Dec 2022 01:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09B84606FF
 for <intel-wired-lan@osuosl.org>; Fri, 23 Dec 2022 01:17:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09B84606FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gasxXMRA0PTP for <intel-wired-lan@osuosl.org>;
 Fri, 23 Dec 2022 01:16:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C8356068A
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C8356068A
 for <intel-wired-lan@osuosl.org>; Fri, 23 Dec 2022 01:16:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="384635671"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="384635671"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 17:16:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="794305773"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="794305773"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2022 17:16:54 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 17:16:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 17:16:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 22 Dec 2022 17:16:53 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 22 Dec 2022 17:16:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IksZYo9YM342VfSWtGUZl9GpahUZEw85aLVLugWAY43F0Pl1NdrL9a0c1gzC/FdNPXG8unDZawFuhw9St8R55HtJTPS1/5MphGx35406LLhJzQzSOofvrgLxKIxD5Ad3WrYtFWwUDbCrDThj0rJvSfmoZvGp9cqwXq4uFvb6v3i9nGoO4jdRS3nCP7UQZjakuySONcfib6FhSB3f9TMCTwdVpAyRDa5RZ7vbI/xj8WmlICKpcWMrX8DGNqiS1eyaeldP7HQFHHiRmDt3NagIyCrjhB4kzMXDB/ps8mOVvlPVXmt4Aa0fgVeIVuRt216zcMyzcvcAtW+bClr38kneCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z+J6h2I0cJEwBUkpnJXn6ueEKvsJaCaCkzM+nrPQVxE=;
 b=Wv7biYeOhIcLDFqzTcX8V1UFoHAFZXsSxt/F+gn6t8fjsiuEhB3lSdfjiqpSi6q8epDz/9ZM9v8hUfm2xkOfzcOoe0yEb37gPvBu4PHXdVTEUPl0kOvc1BlR6h3EL461koAf8P5xAbZk1Djg4lKiPBc8TzsvGUQd/a6FiWEZRRBTS/d8BrKQDkxW5tUD1wom9Bsu5MvGdGmPUQQV2c1/O0jvcAoaWsdcF4d5t0erLhTTL2zFJmZl/RG/u54paAEV08nBEC++JC//92XxCBpcuOsinsC8787MI9pWm1dZ1X6tOYTBzsRWBTjGWXapRXJejsoc/3ofknIHzzRJEM1Jqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5031.namprd11.prod.outlook.com (2603:10b6:510:33::18)
 by MN0PR11MB6184.namprd11.prod.outlook.com (2603:10b6:208:3c4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Fri, 23 Dec
 2022 01:16:51 +0000
Received: from PH0PR11MB5031.namprd11.prod.outlook.com
 ([fe80::6488:c674:163d:642a]) by PH0PR11MB5031.namprd11.prod.outlook.com
 ([fe80::6488:c674:163d:642a%5]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 01:16:51 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ice: Add support for 100G
 KR2/CR2/SR2 link reporting
Thread-Index: AQHY/1k26jKx1hmtNkmiN1Uq7XXyRK562NhA
Date: Fri, 23 Dec 2022 01:16:51 +0000
Message-ID: <PH0PR11MB503116854FEF786A40ED1630A0E99@PH0PR11MB5031.namprd11.prod.outlook.com>
References: <20221123155544.1660952-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20221123155544.1660952-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5031:EE_|MN0PR11MB6184:EE_
x-ms-office365-filtering-correlation-id: 85120aa4-b71c-4918-cbf3-08dae4835f0b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K/cYDxdI5obrv/hfL+V8gm8s+3LpV9A8CQB3uFhL6pQ1A4Mz1UaLHlPhw7xrCI88x0GxrKYY7PMBY+QZwVnvA5EH91b3jMsGWHQQEeRQMIIiqoOZYPvh/eDLzjZPQEANa0hy9k+dMu0O6LZgGg4Hlm7O33nETgMZq7x+TXVL54iTTNwx1QuCzwTMDWj1jNPfGNFYljWJmKui0AozMyq7jcNpYglMntjSjLEdt2lZrzCtuEbZ4pZMjHYPywYPrOTv/OsRtfLEpsGkHgWxt1e2xSMj2pH9fHF7OpcIbSD76WIuPO37PZ+zsJB2js/1to+/YzBNf9vOzdWKsGGEyZgXNzHK9K4GD1nXL86k7mXrskHHPdzBPlo89I67ZDgNhiA4ssY1+J3oK9BLnWSQIyRPKFzzrwMEfCVK1oLkpM2iTlwKLAKz5NBzTbl1xEFQF3hkLXuykqS70nRC+oXklPt9D3iUkuz2YAPTkD6/FF5dspvBj00gt00v2F7AQXTRlWxwCXIXJT/1n9jMdIFAioYOdZ7yVGWuGeUsedP5FPOJiAVxzh/v9EuXflDF+WtlCuMzHEGXJLD4DHjcVbuAjNRNf7ZwOC8olWJbwunBzHdvqL5jrCfIPEiZsq1WlCewFenhsVFlP3wVSJLWF1M2VnqjlmhnAAzZtdV7WXZ1K4GWk91ZN0qrMj9zn4YxmXx5bpv0+6PhtraFDtJMfKxwGYGmnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5031.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(39860400002)(396003)(376002)(366004)(451199015)(38070700005)(53546011)(54906003)(7696005)(6506007)(86362001)(316002)(82960400001)(478600001)(122000001)(66476007)(38100700002)(8676002)(110136005)(71200400001)(76116006)(64756008)(4326008)(66556008)(66946007)(66446008)(5660300002)(52536014)(83380400001)(4744005)(8936002)(107886003)(33656002)(2906002)(9686003)(186003)(55016003)(41300700001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n5R0ypCPxPZTHDbnhl//V4T3UFXw8YFoKfOVwrMtunverFrBwYIcNDdAfmUL?=
 =?us-ascii?Q?2JFABZ1BoCMndq8UY8ORNCB9jnpUGKje35Wv3IMpjdKyAj9CYlWGwhbxSD+X?=
 =?us-ascii?Q?tfUutsXPQpd1w1kGlmB4DgLCH9CvcQYqAf90nuWBMT/jL4tMLYwX+1RnCcAU?=
 =?us-ascii?Q?fHniSFka06gqPm8ez5Cb1MPA7MzlK0Rx6SWwdwm78q7voRfVdKwucl4AhpUM?=
 =?us-ascii?Q?TE0shudaylB1ZRzZhm9onifNfvpD6ikn+4aBfqrmYT27Ay+tb3TuRqrt08YP?=
 =?us-ascii?Q?QIZEEzoV2m/gI0R0bWsZSZ2AFsAfcVLFpA6K/WNbLmn1ODju0rR7qrfXlaye?=
 =?us-ascii?Q?QVFwpo9/8QC64Jz7tnYQucglC20K4OX4iIl8eOpmkbQVQ6mAICdUyn7GWMir?=
 =?us-ascii?Q?s5Rcb+cFwZPDgzOFr+TKeHq4vd57DRBbq0AjMhv6XMtN969crPs8i31cBRLU?=
 =?us-ascii?Q?YP8q5VfJ+k0ulK9MwW8Mdy0NA3D5bhfhoZqjLdT5wP5vkn92UqXp/EaeiaSx?=
 =?us-ascii?Q?0g7mN47EGw+YNgVhF+wflp+wgzYKrR1QQiDUppEqIBw6q1o53oVh+H3k26xz?=
 =?us-ascii?Q?YDjPXIbVX44m0OQQo02kWmKHwmkElEgBGc8RGQDYo5s5fOXQjfRXnGFRscy5?=
 =?us-ascii?Q?hZ6ckOVtYHXNacHDwWXdIss3/EIQV0Uv8al1EbIjGWBoxQyEIxMMVod0M9qB?=
 =?us-ascii?Q?2MwRGw8cQfzi3jnGtokSTWKkewydPAjVGe5eeTdsNxPD+J4PHv7TXUhsDSKO?=
 =?us-ascii?Q?Bg9gn8E2Buw17bzLTHTL+Q63L45htzxb45XzQTpLJ4rFFDavU8X7sFJIGE+b?=
 =?us-ascii?Q?Taw5Do4yh03zdAOwkBvK1Ms21YEnpce/umWKI/bU6rcfF5rnK3/LlKNUcjM6?=
 =?us-ascii?Q?tZ6Qc5SmI3u4eeSkQUl5/2HZS2AbRpP3KY7vgqWqVeWn/j/3XEYBbDE1ruTn?=
 =?us-ascii?Q?VlxIcor1GdgQjbQ+rLsn2/7nzJ2H1U1am9kK8uxfzYzjIF2m01N0ytGswhFA?=
 =?us-ascii?Q?aC0t66nyV2M+Jszl83bXPe/dXmkePpcd3xhHQD6vw3K8pOnQwHup1MAhE3ZO?=
 =?us-ascii?Q?U7Zva+360BYAhlZ4xuOThNYCyKavyxATh+BWKU1Ti8OkdeliscDFp51p58In?=
 =?us-ascii?Q?BpvRCXZOQTJW7bMxdKlhGU6wXaTv3U3L0RkR1TyCs/wXNVNNSWO9wqfK19nz?=
 =?us-ascii?Q?R69LK13/Ctu4oe41CminltRxzXqTsb3gW9KUk4ooY4tzRQYuIL7gnrXDxg7z?=
 =?us-ascii?Q?wKihu80K+LUa+KbKrIX+XsQLqCRhTWpywoUmlhQcB7i7z2kCdPG/fM29YgdH?=
 =?us-ascii?Q?5cmQBqnAxfW4DkJPdIBsg8xCUzosrD3SJz0C4vTYEgvP9uQNo/lg8L+WvU+e?=
 =?us-ascii?Q?gJSs7ky1QFB0xwwY0jhXkvD3zAQrIR6eQuJ2AdctYzTXG9LtppOPJZCRC2N3?=
 =?us-ascii?Q?rt9fhMFn6TbCJP8T3yT4bNIFJthKOBx6kpljzKHwoZ0F+Iqxf2b7Ls9/mTaF?=
 =?us-ascii?Q?RuGMsuz/uGwMh0Q68geXnV8wdoYzO2TL/Pt2FOl4SgJbpeXRv+TJHq1OJkFO?=
 =?us-ascii?Q?KNIKsJQF20zIbNr8y6yq63D73WR0lMR4KM+wscfKq9bdDI9daAZLvMgoZuBa?=
 =?us-ascii?Q?oQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5031.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85120aa4-b71c-4918-cbf3-08dae4835f0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 01:16:51.2647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+4mSZvTaBwXUmzlAS8BSYP5w8SUnS7paeQ5ozFeAf6YXTJjCFaxXhATRqFlvYD2SZuPdccCgYtb+CpE6qZzLjIBrbWKKmZAa0A132DQmz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671758218; x=1703294218;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Cq07CLcmLBGj06PvQnJb/cNpzaPdIT0hNpigEtN48Q=;
 b=CmfE/qpB+doK5gVXuthBxY10DjUpmdq3ajm4A1+oWL+3KZ56S4v6Lvng
 yjwqow/t36c3SF08zBDAZ86XNNYZupJl11taEszmNHrqdka5rtIASBUAo
 v+/JECx5sIZlWT+HfWPnCiS+P5tOjrs+RuqfLl0UrfTKuxyK7qTBQ3OOt
 CG4Gu+O5DLCkHlRaNAdcrf32yZnYr2HDyWHf9Y15VXKhgZ4TPwKZuZY1b
 wFTrTaIAJv8M9YIqIn0hBOWEV1bmm1mSSef4YoBV+g110INucgYYwfAb2
 ZICNEO6zR0p5lO6DBcEdHC78uPnY64TEFsjXG97lu0foT8tyAgSJIBZeU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CmfE/qpB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: Add support for
 100G KR2/CR2/SR2 link reporting
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Wednesday, November 23, 2022 7:56 AM
> To: intel-wired-lan@osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: Add support for 100G KR2/CR2/SR2 link reporting
>
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>
> Commit 2736d94f351b ("ethtool: Added support for 50Gbps per lane link modes") in v5.1 added (among other things) support for 100G CR2/KR2/SR2 link modes.
> Advertise these link modes if the firmware reports the corresponding PHY types.
>
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 42 +++++++++++++++-----
>  1 file changed, 33 insertions(+), 9 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
