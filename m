Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C807B5531
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Oct 2023 16:32:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 210FB61074;
	Mon,  2 Oct 2023 14:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 210FB61074
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696257163;
	bh=Jc+GvXISpWPXreCiYftp51QQB6qUYn8ouSlQAwZwNYg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yiGdkwHJ0qEnhyfm7fPO1fy1Kodqp52hFyp+vvY+uhYOFIlQWpaKx3MQUk5iwWuLB
	 Pk6ScnUxsB+kpXcCtj71MGE7H4zkyvrdHq2Xh+MD3cZcpI/y1I1bjrFAdD5oaKisGx
	 BUgKmhxsk4V/0ASyuPv81488J+Gp1pyTwNcZm3HSAnH5chbNmZOe4Axbl6+PTMXZ8B
	 zG1DwLSz+rePQ8CKeSlvT+sTwIIXghl14NkH73T384LlU8wFhP1I7vhVYxDI2Ci658
	 FKHOp0og9MLaM27ZsSDCLQkxL+t8w0yHMDhMAJIs+PoJGm0+wLJscy7Z0YPk0MflLm
	 VKod1sP/qRzjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hp21U_yZ3CS5; Mon,  2 Oct 2023 14:32:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC30A61040;
	Mon,  2 Oct 2023 14:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC30A61040
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FE831BF947
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:32:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC04F4086E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:32:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC04F4086E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eIva3Y52aAwQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 14:32:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93C224000B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93C224000B
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="381537139"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="381537139"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="866513949"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="866513949"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 07:32:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 07:32:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 07:32:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 07:32:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 07:32:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W/R7kpRLJ1Ja94hnJez7/qqCWenaKPuk7km/8DD37pCGnmNTwkS66gD9U2jFmBmfVOEOTXtNnbimvPXM5Iqpf8oBjsKne3fCNW8lQvXiD/HTbyZ5etWxWLv4ql032qaxN+8FrvQsYgN99xcNN9kxOI1s3e7BAgeAX0Cc3F6PmwBigy07dJBRAc8Hvfh7bRDpYBoNBU6ReSPuysBm5sv/P7Vf+XoOys7SwcT9+XP1c+a+e3I1oB8w1tl8l4andL+WVjnjo54BtZ06UwHQbRa5pX1VwnBZYBmN6QGsv6By9Mb00v4fIwnEGLGmZPct15eRwv6p9iuq5ZfRPtVci3IQHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DAt/clDwQ/abgQdJLpl7wv4dYDEV8jSvafUDn6V3VLc=;
 b=Fjn2wZrla2F8JNCTKouxrdVfUWvOYT81wcOTzx7VwGJKVfk4J4cZ5aoAUSpoFxWcaWnEvp9Udb1gNRf7v2ue0dD9Oy8FzY2OgqymGmd6mPVByAqQbrk6uD3NPuR20QTxIQ9fGAeny0cFwETBLGH2aZujqAutA9zpzmg5uq30kfDp0ka6FrUHqKMWrtKfTK6tuHUlQ8+pwGDxEvqmrxSEwqKJmKhDuAYbYi8ebeqHABQxrpWJz6ybXcZts4Nk7ozpiIv44Ohz+orqJDzeiOMvbDEE257TGDSSy1/t/qm8ebKM3oF1I8JVw0rtYo4G52W3N8hGX2k8JgB9yK/44rBqiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 CY8PR11MB7827.namprd11.prod.outlook.com (2603:10b6:930:77::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.25; Mon, 2 Oct 2023 14:32:30 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f%3]) with mapi id 15.20.6813.035; Mon, 2 Oct 2023
 14:32:30 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net-next 3/4] dpll: netlink/core: add support for
 pin-dpll signal phase offset/adjust
Thread-Index: AQHZ8STYBdXle/Bxd0eyxPCX/7DD6LAu+R+AgAebAaA=
Date: Mon, 2 Oct 2023 14:32:30 +0000
Message-ID: <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
In-Reply-To: <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|CY8PR11MB7827:EE_
x-ms-office365-filtering-correlation-id: 9979ad44-9e0a-4bbb-279f-08dbc35468d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2kLDWa/z2bOyc9t2XGrExXPm/6b4zhRArHgAMD0b4Z376zza8Oj4cKwVG9jpAK+23FJjw0vToCGP1XJ1jnjfDUDiFMAE74IlDC9F8qHS9Begg7MmymbBATt8sNJ8QtAbHq/0GcvNLakBFTMRT2IspR3m04mWzDBYYwL6mSToNQrR39QJxk6dJeuXUIHFMS0mCBiSp6Ixp2oR7as8LQHVMFGfKA6O8hzx4gLVZAClTEKQrJkOLiWSE8MNy3+6OV3mbksudGzf5/NcGvOEN7mAWTC9pQtSg6N++/jVyj3rCKjY0V0ysFPFGrUL1COwr9rkZDoM9aJ96PjZCoRriOW91ODALu6odNtBC2Hb47fzd1Iaf266efZNStIipxxTCAmjQZoRzJq1uRGugNpQyDzCYpZRZucjFckCoZIlAhzOLEtTX5dl5vZJRqmXt9vMr+2p2CEeBDKpkVTKkPLroZ7IP2MM/HVaTZlXp4eScAlZnUlIr2nLo4weW6TcGxrsEAkCi7BuyBqtZtabY2MQ5R6fPYUkrTSxnvbmvg7qrL8FKTnHrAKBHNvUAML4oMztZJplHKnzgMF/Vg7KgpnJSQg/ruJI3kGGC+jrp4lNpNwHgDsrtcuKI7cIAFr5xhbHcq7T
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(136003)(376002)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(2906002)(83380400001)(86362001)(33656002)(38070700005)(38100700002)(82960400001)(55016003)(122000001)(110136005)(64756008)(66446008)(54906003)(76116006)(66946007)(66476007)(66556008)(9686003)(316002)(7696005)(6506007)(41300700001)(478600001)(71200400001)(52536014)(5660300002)(8676002)(8936002)(4326008)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0ZpZmtwQkxxc3gzWEs0QWVJTm01allhS3plZ1R3N2x3YUhuQ1hYTTltMlhq?=
 =?utf-8?B?OFBWOFVLY3l6RDlvbWpmaFBobm4zWC95WXc5U2UyNDkrYUFWU0gxVGE3OUFl?=
 =?utf-8?B?N1lwTjB1MnRaZlMxL3JqMUdJaW93MGZXQ0ZRK1cvYTRlOW5Sa0pnSVlQdm56?=
 =?utf-8?B?QmRuNFc3dWZSRWNDWVpzWVV5cVdYRjlvWWVibnNiOFlZZUtNSzVJdGY0MG1V?=
 =?utf-8?B?em9IQmVBTGtyakIrSXYzL21NUzFjMDRlMWJtbXdDdzU3NUVrNldiUld1dkdL?=
 =?utf-8?B?R2N2MlN3bTd2V3hDcDRNV0k4dXFnR2YxcUprZm1jaEFsOWV2WGtrSjVWZFBl?=
 =?utf-8?B?anJoK0pmdnhtY1c2VDhqMlV6TmlEck1SSHk0NHRNSVpjNVRMU1pGYXlLSWZJ?=
 =?utf-8?B?Q2pKeEo5WlJhYnNmZ2JPTm4xbUhyT0N5QjNjYWo4cHNUYUhBYjFYbGd5OWZ4?=
 =?utf-8?B?MmhKTFFDRU03NkdVWUpzRmg2WE9pb1dIN250THBwa3BWd2YxVmdUM1dZekNX?=
 =?utf-8?B?TWNMMGNKQkcxN013MFR4bCtSNm5pQnhyM0pzaDdOb2t1bWoydEN1dEQ1L20v?=
 =?utf-8?B?bTd5RE9Vc2ZxQUVoSDBIZStJZ0xzekJ5Z0dSYjZqV0h5YW1tcncxMWpZYllu?=
 =?utf-8?B?aW4zUGNLREhPcWhnMlJFLzZPNnhGNUxjNnlGOUZEeWc2VUhKbXlsWDR0cnBs?=
 =?utf-8?B?bTJDT1FtM3I0dndjczBBRENvTEtpODMrN0JndEVjWkh0cExMazNqUG1nUkUx?=
 =?utf-8?B?NmplTWhaSzRaYWxtcSs0cGdrNmhzd0MveXQrYVRvVjk2TGRSeHJSVHhVN0xY?=
 =?utf-8?B?R3J5eVdYOTgwZWdTajBSK0UyUjJxeEhNREM1ZFdsNC8vdVFRV0VFY2tHR0xX?=
 =?utf-8?B?bVpZM3dsbVZXOFgyR2ZybDJNMWJvTmZaQXdVVnY5MDRxUE1Qam81VGorNUFh?=
 =?utf-8?B?eTZicTFacGkwK2E4UlhpRXNIVzRZV3pCKzJFQXdwZnNxODc2WWhLUjhENkVV?=
 =?utf-8?B?K290TndmWjhseGZNWk9VNEx1Uk1lS1RadVU5SzJaSzNWTGhITHVBSFhQMWQy?=
 =?utf-8?B?ektiRS9rNm5FV3h4am03WlQxMThnOS9uQlRyTUdJR1JxMkh3SGRJdDdlaTBn?=
 =?utf-8?B?T3g1dTQzdG8zRlBTSFdTRTVadmNnN3doREpZSnR6VjZGUVp1dVYyWlZZTEdE?=
 =?utf-8?B?MVprVWx0SmVFdXVXbklEQnFBaU9ob1Fhc0dNeDN4WGoyQUwwNWNUcENoUjB3?=
 =?utf-8?B?UDZJTHFVc2dOd1M2NXhuZWZkSzFlU2R4bnpYcUJ3amgrVWlsTFppd0RCQkdh?=
 =?utf-8?B?ajR1TGhKY01URml4K0Z1V0hpakhtUlJVc3hNK056RDRWci9tbVVIQVVTK1RF?=
 =?utf-8?B?dVRnaWkvdmRZMXd3WUlkUlluZVBIV0xUaWxrdXpwZ1A3T0hHSzl4VllhY21l?=
 =?utf-8?B?ZEJ2T1NlTklLVnZxeGZyOFg0RkdrVkhtaXI0c0hvV0V6UDNHM1hYWmdrdUxt?=
 =?utf-8?B?QjJCVDZxeis0WGJ1d3FyYVZnQmpQSUJWeTR1blJMQlNUZVlxbTVSaXdkQ3No?=
 =?utf-8?B?K3VpclVEUGROMmFsZ3VnQkhxaWl4b3UrZ2h2VVZTNFV6ZFZXUGw0TGtXNWdZ?=
 =?utf-8?B?WEkyNmo5eXRWNkNPTnRTbHJscEtLUXQ1TFdMZExxb1gzLzZ3MG1jb2FGSmJj?=
 =?utf-8?B?Z3QxQWlkR0l0ZlhxZDdDc1pWWDRuT282RWk0Vm1nTmZ0L29QZ2pOUTNMREw4?=
 =?utf-8?B?emEvOXF4anRDNThzcVlkVm02N3RnRGdZOFp5dkU5ODcrOGpSdHpXci9jcmtB?=
 =?utf-8?B?ai82c1cvS2I5MGlGY3h3YjRHZkpqNVNtMVBLZGxjMUJTaVdCT2taS1hPTEZQ?=
 =?utf-8?B?SkhyQ00zWnZzdTRTSVR3ZGlDaVV2c1V5RDNNSG5rZmw5Vnl2cThZNzQ1WmZk?=
 =?utf-8?B?VjMyM2FFbll0bEpKdTFEMWRzejNOR0x6dFJ3QkR5ODE5T1h6Q3BNbEdvNUtv?=
 =?utf-8?B?cnMwb2NnSWVBcWhWcTFqRFdWVmdHWVZYOElIcFBNSVZ1VFZvQ1pFYnNNVWFu?=
 =?utf-8?B?ZXZCSGljR0JYV0lnamVYSjBjdmJ6dER0a1hpdE1QanYwc09sdUJpK3hqMThQ?=
 =?utf-8?B?VzdqamdubnM1Y0xnS1YyMHYvbEVweHJiTVpzODV1cHRFcEUvaXluUDhUVUo5?=
 =?utf-8?B?NkE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9979ad44-9e0a-4bbb-279f-08dbc35468d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2023 14:32:30.5991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FWDhj7YS0xmTROpVBSzUZOqAfWHrT2H2Xr0aYPh8xMhcJiHbm3sx+X1N1A/nvUvRhMDyYilsrmCS0YoGM52KrRzdbIFv9P3K9X5ziaIfCCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7827
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696257155; x=1727793155;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DAt/clDwQ/abgQdJLpl7wv4dYDEV8jSvafUDn6V3VLc=;
 b=lTPdV/875UjNBBZuflWJ7KOznqiAo1zyGrLDMa909lighnORCZgeJYoZ
 MaH5gBjkPe1S7WnHeMcWbndo0Pap2nVdrjmzIXmxXsNVDnz1/Fy9ntG83
 yc/RLtmqN4rEHKU0cWih5x5FdRwpu6FnFn9kcamGi9LymngxhmO3ZFjwo
 euMF49F16URXfiQs69vdveJ28lDSczXwa8gJH3pEhoUCnOQYMZO+3nQfq
 Mtm2tn4g9mERKn8NH/j4L0RF4bsvVX/+uTo8oIJ1E5jcHYs9LWFE44V1v
 MBpygCDOk1I1VqLjbx4P1t3XPcq47Nlnbn2J/GS5qab4ja4gjsIq2JCxF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lTPdV/87
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "corbet@lwn.net" <corbet@lwn.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg, 
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Sent: Wednesday, September 27, 2023 8:09 PM
>
>On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>> Add callback op (get) for pin-dpll phase-offset measurment.
>> Add callback ops (get/set) for pin signal phase adjustment.
>> Add min and max phase adjustment values to pin proprties.
>> Invoke get callbacks when filling up the pin details to provide user
>> with phase related attribute values.
>> Invoke phase-adjust set callback when phase-adjust value is provided for
>> pin-set request.
>>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>
>[...]
>
>> +static int
>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>> *phase_adj_attr,
>> +		       struct netlink_ext_ack *extack)
>> +{
>> +	struct dpll_pin_ref *ref;
>> +	unsigned long i;
>> +	s32 phase_adj;
>> +	int ret;
>> +
>> +	phase_adj = nla_get_s32(phase_adj_attr);
>> +	if (phase_adj > pin->prop->phase_range.max ||
>> +	    phase_adj < pin->prop->phase_range.min) {
>> +		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
>> +		return -EINVAL;
>> +	}
>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>> +		struct dpll_device *dpll = ref->dpll;
>> +
>> +		if (!ops->phase_adjust_set)
>> +			return -EOPNOTSUPP;
>
>I'm thinking about this part. We can potentially have dpll devices with
>different expectations on phase adjustments, right? And if one of them
>won't be able to adjust phase (or will fail in the next line), then
>netlink will return EOPNOTSUPP while _some_ of the devices will be
>adjusted. Doesn't look great. Can we think about different way to apply
>the change?
>

Well makes sense to me.

Does following makes sense as a fix?
We would call op for all devices which has been provided with the op.
If device has no op -> add extack error, continue
If device fails to set -> add extack error, continue
Function always returns 0.

Thank you!
Arkadiusz

>
>> +		ret = ops->phase_adjust_set(pin,
>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>> +					    dpll, dpll_priv(dpll), phase_adj,
>> +					    extack);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +	__dpll_pin_change_ntf(pin);
>> +
>> +	return 0;
>> +}
>> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
