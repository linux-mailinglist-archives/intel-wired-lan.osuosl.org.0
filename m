Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C65939FAF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8309A4046D;
	Tue, 23 Jul 2024 11:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1i4yQrgrPN-7; Tue, 23 Jul 2024 11:21:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88CA24040B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721733708;
	bh=xNaSqQh/bBecSSB/keCsiE7MoG0glb6UiN6E/APwCl8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Wwnm63jKQWvd8Ar0SwqKtbV2IrDRC2k4tgH6A5cho+Qcq0YjWhXVGi6Sz2GFPAsxn
	 VL1X9hlxEQjywmzh0mN+raSnKT3pOsq7BrtVSn3Me0vl3Lj63umj+EkPU9YoqmZ7mj
	 Zcp42lcILBCZBOnOu+zEwgSJo9rYkiPUtz9G4EgM5jZFIYv6CxHf+MzzY9+RAScemK
	 C6Nla44p4m+BEZRUbt/bvThnOif3L96fGxJ/IqFZ72VzdaIG/GuSpRu8qtAEIqQlcH
	 1OA6uj51S3NGREAnde/i7+9CF8E1/zSTQSg5xGf8hInUlirFlIT1IJ+hxz9tgVnj+f
	 h6SP/qXR1ESOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88CA24040B;
	Tue, 23 Jul 2024 11:21:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD501BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF73A401E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:21:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FFgpuFDXgvjd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:21:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D6A08401C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6A08401C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6A08401C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:21:45 +0000 (UTC)
X-CSE-ConnectionGUID: Zn9CEHFBSECHNjdsz70Zew==
X-CSE-MsgGUID: vhSqiWqPRsGJT3CooC+DpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="18965115"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="18965115"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:45 -0700
X-CSE-ConnectionGUID: geJb+LBdTxaRv1CapIKWIg==
X-CSE-MsgGUID: R4GKHuVjTEijGnCSvt//bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="51871124"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:21:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:21:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:21:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:21:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E6zT29Hs99Yl4kvyiZfRSU1iaXjcqtkX7qhFOG3zTVlKH4kRIZkCmxXPUhqwt5Bvue3RtMuLRUIvn9TALGQ4hueGXJ4wNXFt/T2k5h8IKyF/rsUxUE9tzVPfTGS3vs/+OnuHM63Swm54lvFpWpTj9E2lHHZGoImEjwhJ1kPHNU7JWf9Kk0xz2NuM5+ohyadQ4+KUqU8fQC8tGls7DHJLJAOjwL7IIPHTfjOLe+SfgOhAGUs5AT2MBs5Foo0JEOQalLNEh6692wP7asjf5cJDoXY4p8UxX09zNSlTkJcVB+EgSGVPdR7UpGQUQOHX0uiT5BfIS1vhKS+zHLiyLQBuUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNaSqQh/bBecSSB/keCsiE7MoG0glb6UiN6E/APwCl8=;
 b=dmF8tmacmOvyVOVA5aLtxmmZDkizanzYwInjCJvQ6Uvuz12IJjl255cPxpx7PUWiW0HCimGMYUXZleSHR/CZp33+s94bkyes2WXxloiCgdbvCyeMxfZmOLjaT2nUNfc//a0eELWj8+mR/pX77SYzRuozLgipe/Uh+jxIlImsLse8mhSGiBFwhLHr2NGiLk6ZZ2jA40a/Zezuv6cyGjrvU9wFnCdxGWHGRyNOpucrzaDUdZ/Efk61PiJMIgN0M6QR1sBE0HcGf6Avasp7T8iexC18TNTgWKKuJP9eHqSpj//9nf/lFWVNKTL9yu9o52TGGIuJ+/O/xW1HY8IatB7TIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Tue, 23 Jul
 2024 11:21:42 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:21:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 09/15] ice: create port
 representor for SF
Thread-Index: AQHauAOraM2hK1KOE0eSTa7Lun5ssLIEdOIw
Date: Tue, 23 Jul 2024 11:21:42 +0000
Message-ID: <SJ0PR11MB5865A5A2406AEF2E73233D9E8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-10-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240606112503.1939759-10-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM6PR11MB4611:EE_
x-ms-office365-filtering-correlation-id: 3bfbfb58-e282-40db-f450-08dcab09a0dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?QlrU/IIzPttcz0NYQ7rjYiSSu/bDKRLb27p5GLRqSmhYXAzdAGIgXIG1ICWr?=
 =?us-ascii?Q?UqsM92PhlDMuH5eDcht4J1eS39xZbhK72EcUbhTZ/eqKQ5R07nlHiKv7kaGc?=
 =?us-ascii?Q?MMazOZFdpSZAaZHiynJH0Ja6wnxtk1ePqG06YRqr7RQl1zlf4MOlhi0IM398?=
 =?us-ascii?Q?OpLOToQmJY0pz4H+oflulKbd40ubdjKEfga9C5ilx1K7KBPRFlDzu23cvg80?=
 =?us-ascii?Q?dsBoLnQrGUbF3HdFwcp9pKKZz09Zn6lDyre/23kxdWcsrN+l3kWOLgBOxUuC?=
 =?us-ascii?Q?Jvlo/ytbpCurTVrh+UAakIFQYoueFow6jJb1d9Vb2hhIOKp9NUh7CxYi/Fcb?=
 =?us-ascii?Q?Ydk26Yy67w1hR6XCWTmMH1DuMML+6FQ98kY0LQOsQNuId9RI67SWgkyi9t/8?=
 =?us-ascii?Q?B94pHsHgxEDtxDACOr0R7T4UOuPesGIipE1KYCS3+DQ/owYWgVzQdnP8QGxu?=
 =?us-ascii?Q?9E5vzke4YhyGBBclTxeaYvQA2+CTvs/vkYAxratTevJdj0cCEKd+bHgILoJo?=
 =?us-ascii?Q?MNbnEkQv/qfNH3F6ymRK+Eu4JYsjRlTDcOOW3flhYIj7gT76jpn79MiaLB0Y?=
 =?us-ascii?Q?AhCfxi7Padutmo3sWamNcawxDgiK1+p9bYh4HY2NuKlK/S4EB/l4yyp0U8Sy?=
 =?us-ascii?Q?sVJ6lYBJK4W9KF2bRo1r9fUyyLFPEtcNlwmrWwEGwC95XWZUrzvjbwP4e/0M?=
 =?us-ascii?Q?GqDmqwBjC5K9pU/XCM63E4gSAewMyjxLv6afYrUrlDzQugzpcaqps4ZRAO6Y?=
 =?us-ascii?Q?+gBusAynp2oZfDEzL3WlCSXmHhUxH7m+XSwOMkldpyJAu9L6Y0kRJazMUbuo?=
 =?us-ascii?Q?P+6O2LMhgaTPqYxf7TXhYDsfbqe+NvCL6R0ez4WKWMwQHq8dfVLrECFPndVU?=
 =?us-ascii?Q?6HaTZ7XvahznhTAqd2t412z5xaBdVallac1mwQF6jUjIx8CYob4r16AsXWgB?=
 =?us-ascii?Q?7mSdz3TrOkLsaqJRzwLT3N0k7NynptM8QsslGIwreHwBRkyJkRrVIul+f4Mu?=
 =?us-ascii?Q?bY/ytL6JGPViPNJWQD+tOIvL9s7rubH1t8JFQJq5oCcQNQ0pSBT+ecbWAUtA?=
 =?us-ascii?Q?hbexguW0FKbBxd50Uoqx5sPPz+9rdrT/21s6+wdJ9DsBCi+O/FdxlWC5617L?=
 =?us-ascii?Q?yE62DMZXplL+5bzaQRW+cTVZ3j2iLOGhOuqVfbpqUvKHcz2hTyq3JUA1RQz5?=
 =?us-ascii?Q?rbLiwiTWunRV90nC5Wp8dcnRD9TDhZ9JrC+KV5MW31yGSgv1Se4g7cmqWFRK?=
 =?us-ascii?Q?m2yWS0d1qMUyT8YdXgcPthZBPvrQxRj0882fuVnCWcRYVSIso+PWstraDjoD?=
 =?us-ascii?Q?xLk9tDQuDC6yK/76+rlrHMppdNe3Ae5XtYgjppvaQ/pPweKGHFo1+7qnEY1x?=
 =?us-ascii?Q?t5O0DF+/QwvIyTlbW/TlK3N3V4xDvns4iHw3o1FWMwyZiM9FUg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8eqELuEpI8xnYXt17vr9Tvg/8mjiySA/CCzZpvGSNSEa5UYVtIxe62jCKukg?=
 =?us-ascii?Q?9t4D9qU94YsWv/e8sWePyJzEIW/ePFuUaOARNLXWJ4JQkKBrVUOFf4TfISIt?=
 =?us-ascii?Q?/04o92t380nWLM/ocnvEdpogUDUWDMAl5c55Sd1+jIb92BJnIDZrnfwxNOm1?=
 =?us-ascii?Q?rVQlPXwL7p94M9e+5qLnuqvWXgJ0g+LeneMI+7rGDJVg1SrxRZ62QH2TeKj8?=
 =?us-ascii?Q?rMXjYIA4Aglx/xiTDjLelt0sPZT/urdPDroMNTScWR8MSNpz+nH/w0xzlfem?=
 =?us-ascii?Q?ZNmZ331tDsBIo2GzUfRHC6iFzGEmAZz3rSGvzpiBQXjTTqZgRz67ADCaMaB/?=
 =?us-ascii?Q?XVKA3pBwCHQsQbQmF26jcrnejyPgyKcu9oNmdnrtWQu09KzZYREjCti3ox1S?=
 =?us-ascii?Q?uHoFxjafrXQaIYKpR+STCtSA1xdwVt6H4nxG47Vk4uG6rYa6AldO+ccJhvvx?=
 =?us-ascii?Q?H1srZyO7bFRHPgZkZb3T8VAZZgE+XS2WKKTtLmzxKTcEXAh9IeyL8bEZCuLv?=
 =?us-ascii?Q?xgF0YqF5gOMs2+XZjTiFw9CoZdsvL4gM+36WPlGaWERgHfymyWOtYW8IzZU7?=
 =?us-ascii?Q?EMz/zf05bJ0h9BwSzDAuK2LnTkSZwBNKs/2vwvqy3+eNLDBQfR/Eugs4nJ0K?=
 =?us-ascii?Q?G3Zydf4y2KmXmremqgH31tRQS0AhH9sFGKDVqAyX6IckDnIivSitPdYqJ+RJ?=
 =?us-ascii?Q?z4bELsphv+ZyhcZXstXLuce2iEBcMx7NacTTUreEq+bBUE+wkh1vGh1KF2Bg?=
 =?us-ascii?Q?RTrpxRWhh1G4ryqQPkZ6JnnrcRWymGeOzPPjv8sq2aBYTtfQWCfLnwhxqVUS?=
 =?us-ascii?Q?4CDWDXXCICqyGYD3gD1nM8MWCFiei8HvdHGmAmsET2OG53stID335Gk2tVOu?=
 =?us-ascii?Q?m8qSFwpk6b+wA3F6ICjkfsAbh66lxD9SPFjRZ1qqkl6IK+STSgdo5E0tePdZ?=
 =?us-ascii?Q?A+O4QndK5YIuuWQp9YCsSR0krIFhGkkfU+YJ5APe4mXlKSoVl1706zsQG8/9?=
 =?us-ascii?Q?B+hqOT6aGkJAdSKvxyAfNOdsb/Q6jM5dlKX5hDlVsrNDDH/Shi5mfGk+1FqT?=
 =?us-ascii?Q?86P1pu0zuAL/Q1b9gHX+pqzRNrhzUqayP2YZJuowkMjG0GgyFt3GqgH8hz4Q?=
 =?us-ascii?Q?aVSy19IVxmwHjjAgfLILTE+1uCV9f19eZy5J6jB+2kOmq3eICsPFlvrnKGZE?=
 =?us-ascii?Q?mqwAHAaV8LGBakAW+CJKLFLikgzPqT4094mOUKTycNzMDeBvESf4Yo1pqStw?=
 =?us-ascii?Q?+gRzHyF8Et3afDRNhr2jHkCmwn08XwZVWp68h5za9q959RsajDK7RmQ/SoKN?=
 =?us-ascii?Q?oQcHgeSkxlkHksvOaEkI4nMkfSwJKYTmvrsOIP0CL7z9oD+xUqL09wImMOlc?=
 =?us-ascii?Q?SVAiv/AKKXLiHDl8ER0bxFrQBiQWO26JG9Ad7m2RJGh8k2ywTcvI2X0R4/HN?=
 =?us-ascii?Q?kC36h90fyNElpdqblr8QfbtY5bE+3jQ1Ddv70LSCiz94V8HexIrWTuYxhW4r?=
 =?us-ascii?Q?2jex705cfJqP6wxY6mcdGz2GT1whQ4aUagxt6BdrxmQ+gNMaif3aI24Lyli7?=
 =?us-ascii?Q?VZEfKMCIrPVQrUS8XK0IBQFvJ1ua9hyjirQIxQumhtRt80Tg+8pJqmyzr0Ga?=
 =?us-ascii?Q?QQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bfbfb58-e282-40db-f450-08dcab09a0dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:21:42.1284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: llFG7iaQXWD6xNzygxO68plEzEDzNUtNeS1EHZCOwuiAu7veigQrOSybgBY+cwcDv6k7FjCnFg62nvsklDhGYUAV/l6prXv0Z/ZmIa6yww4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733706; x=1753269706;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RQWbQatC+jIhQLDzp4jZu4uzCMXyZeOXKk5gj9tTepc=;
 b=Sjx18E4AmZnEtnkAtH7ToI1gX5DYqf+Ln6/Duq8n7+3lUR8RjLDxDH3u
 NvS2sLXlsloA+oQ/e46tRV4YN/cRoQ/TPFBG5yOfbrzbUd2xvc8D2Sere
 ayMwlKc+Tbj4RAuUg3qmC8aqgJRk7IjHec2sgUiI18SLQbWFyL28NB3To
 hzrbCzJsE1nHN/nEYvRmdPANIHIvgI78goJK5dqp6+zRiZ9MIOJItV+av
 0HF8hVrV/Q1yhBVUETM0MbdecerFFiZOrKAzN5f81V/SEO3EGXWTohYOP
 pJtpg0EfRoEUOiBx4rvZt45zecyUgQ6LBs3OcTvpImXaobta2FSyHNlAa
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sjx18E4A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 09/15] ice: create port
 representor for SF
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Thursday, June 6, 2024 1:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> horms@kernel.org; Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; pio.raczynski@gmail.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>;
> Drewek, Wojciech <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v5 09/15] ice: create port represent=
or for SF
>=20
> Implement attaching and detaching SF port representor. It is done in the =
same
> way as the VF port representor.
>=20
> SF port representor is always added or removed with devlink lock taken.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  .../ethernet/intel/ice/devlink/devlink_port.c |  6 +--
> drivers/net/ethernet/intel/ice/ice_eswitch.c  | 39 ++++++++++++++
> drivers/net/ethernet/intel/ice/ice_eswitch.h  | 11 ++++
>  drivers/net/ethernet/intel/ice/ice_repr.c     | 52 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_repr.h     |  7 ++-
>  5 files changed, 111 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> index f06baabd0112..fb3ff68e0666 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> @@ -543,7 +543,7 @@ static void ice_dealloc_dynamic_port(struct

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


