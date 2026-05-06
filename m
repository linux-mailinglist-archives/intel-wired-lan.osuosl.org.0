Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDyKHjqL+2mWcQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:40:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C92464DF752
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:40:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6269D60ECF;
	Wed,  6 May 2026 18:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xHDFWTzhy44Z; Wed,  6 May 2026 18:40:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA5EA60ECC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778092855;
	bh=h75C1XTnoijsd4zw+qAyrHViEIg3NU+cIqDy5HG1mV4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hyjHOGOmWlFmpHC2y1gTn8DuU7CLj7NW7gFB6A3xRhvQRIrcUiYKzaSv+rkhiaWYu
	 5Zr8JUwo75bq/Ql1/oQqxomLoRoalBDH/Wz1O6ljH9TNqbmLVFmcLfqzWgT1w6XkJ1
	 kmfl1ftWJUHxBGBZnFhCgxAyEVzmgGBuCtrnd4wYAgGqSN2ec3wPsyMTLg2gfBMC6X
	 TfSYWFXq9s1lpaznB69COZCi9Dz5LQrOExWn0r/MfExHpN0CXv77umUDDe+AdgbaO3
	 7R7JI/4+sOTDHXGIOGVZCk91DeML1pe0ZmbYcVAqnzgGPGKsj7VR4xfhm7buYxSqKB
	 2UaHIgFhZzH+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA5EA60ECC;
	Wed,  6 May 2026 18:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AA5E280
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:40:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3DC840C64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:40:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J8mD4jo2LrRt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 18:40:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DF3BC40C33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF3BC40C33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF3BC40C33
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:40:53 +0000 (UTC)
X-CSE-ConnectionGUID: jzTUhlUiR/qm9JKj8VMvew==
X-CSE-MsgGUID: irzmRBSyR0KMokNTQ59EqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78061867"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78061867"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:40:53 -0700
X-CSE-ConnectionGUID: Awx7p30zQcC/DsFj5q3YyA==
X-CSE-MsgGUID: hn9yuMfQQ6C6iD7v6LeuOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="233567937"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:40:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:40:53 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 11:40:53 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.41) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:40:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LUvtBy+hnbK1QZDTR3jyFXWgSxCuSWJwsd98FOFcq7sAbPQlZ4W1xH5oibynL5LvuvbShILb2QTH4qBZ4MHNnMtj4EljH1Qxd67IPqTMCIjKbxedhEQcS9c++Whm9Q7QZvoDysICDjvUWjMoh5Xo54O3ycUUa+RALwCam6b5bNYQ+85Xil/IY97OFUh9zbMF3amavJrzWNQrlO1C+0y70SMZ5rp+vrBSwumknl8hs3dgC4qVlyxwZZcKfinhMqTxEY7ERK63kjgSeVt8fzTROGgrcLlqHZql8OP4+9RB5xPcsbLCM6q9WBTKQlqAiB6FhmUZKQrfXoMjuBl7I8zSrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h75C1XTnoijsd4zw+qAyrHViEIg3NU+cIqDy5HG1mV4=;
 b=GMzcz05chMcb6u2UWmj1llYSUeh3K9LI67FfNovBGXH10wwAihajimDIHvMvoab/1vMcBrDBZc2gyFOh36uvW4jZV6Q7ygmgqWA9K+r20N/9rSSqzp6AMSy3RQxS1F5VQkrMcUhVqB8DXRtZDBHbGo8ROkJq05j1dXvIdYZzKXAWWgAk/QrHDTMjDDsZzSxCYvg34Zs8Kp188wDTv2W2+tLJx/ex5p7oPaypcqYvzQOQRqvn09NPSdNWimJ+c/OEIk8WKWkQsvIPIrAL/SfmK2Y8uRW4eItP2WL7zWC9wvPKoVDXyu9iG86zOvFdndx9kMCZ+BQRdVszl4elZeykJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by IA1PR11MB8176.namprd11.prod.outlook.com (2603:10b6:208:452::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Wed, 6 May
 2026 18:40:50 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9870.023; Wed, 6 May 2026
 18:40:49 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Cao, Chinh T"
 <chinh.t.cao@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 07/10] ice: create ACL entry
Thread-Index: AQHcyCEJOQpsMPm8MUq8qcbxVEmOT7YBfx7Q
Date: Wed, 6 May 2026 18:40:49 +0000
Message-ID: <LV1PR11MB8790982E0E083799AD76DF03903F2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
 <20260409120003.2719-8-marcin.szycik@linux.intel.com>
In-Reply-To: <20260409120003.2719-8-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|IA1PR11MB8176:EE_
x-ms-office365-filtering-correlation-id: cb9e4c44-bfb3-4343-b8c0-08deab9efeaf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: IGemDJ5+MpPMnOsVJqhEhHchHJ2vBcLENw1W3H73E50YIo4VlB1q5fJLKEOksCTL4Y8CapbL58eqXQNqgLVAUKsrdQHEn32zZnhacssx9e8HkyI7dhMxWhwepz4D2KC78cCx4hBrnth4fGpWSNdSvsP7NC/i53RvF7xUAV8E9eofYjwI43Cv7Ej3hzIbdSSYcuiausUaWSJXwiWRARYnlbmX1WrfgXmPZx+UvCgHn53m40Twgg410hq6afEsYsWJFS8T5fBS1Dq2QYVZc5PmV7kufafk5Llfk4UpWV2Jr5R1knWXQmHqiiBC8Qo3fwGLs4nrOiw8qPlilJNUcVAdS9JMw5CdDgLfhax2e1KDD8HKwnrhPH1JQ+xv335Chg9SiI7sQ+Axj28LGwtNh5dCJoMZNU85dmwntLh88O6KLkhv5dlWgEkTvFGu+u5EqqDVAE8IGp5SqVTec9je3BOrDwwRU2IEA+b9aTDKQS1I00nlfc5IY9kh9cDdZDMtpmqnwRSmy4sve+v8B0IISRNPIdzzxfpJcBTSGfOKliUeX5c1mcp8ntp4MydDukWh6MDkp4q3rk82Oa92MqgiYCW4vhZrGj8bmrirc9PBKG/zxAGg+BVbuS40bewprRL/f0kIB3G+hVmt6OiRFFWsNJKLIHSxhOl2CbBWUwf6lB71ibq+mstWBYezcJ86T6tD6PyIoZDrQJYwTbLIeFT0KRay0UnjjAo7p3RFwVdDu/rXOYXruZTy3Db5Yuvrj6k4v2rW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/zzyKbL3YoHUdOf0Lnw2NqwXPgdAzsiBYL/VX+UCor4rH652myi5p0Fqt4PM?=
 =?us-ascii?Q?3Lc1MWGhfwSXu4FcEXnZ/v4GU82o4xwruo32GVyWWe/+lkiNWE8utBCcopdC?=
 =?us-ascii?Q?Awh69rUWNyQ49V+l+ghthud7DqK7AW2HoMECb5hZ/HRKwAWLS8yz1TSZTTzJ?=
 =?us-ascii?Q?Z0eW6ey/Z7lEwWbsHV/z/jRAbnYzm9dc6q908trTzW9S7LvZdpWdbRED8A9R?=
 =?us-ascii?Q?oOe0lQXRIyuBz8HziN1kQAJ9x7fAdCX5wlx2LBk0xb7LUCupTKRx1clud1jg?=
 =?us-ascii?Q?q27aisKb9JtS/VfKrstiT0ypntzpiSXXxN+n6hDzml5YJ5nD3GjgODvxEhrG?=
 =?us-ascii?Q?hb0yBT6M/+qznUhA7YwGGUVYMggy11TuavrlTifZjX8FjeZdqOjJaPaBb4EA?=
 =?us-ascii?Q?W/76dUxMQsjlMLaZjKjDybt5cY/lBv6XUG3FJxcJwlLwUlJC9SzgwAY6aCrV?=
 =?us-ascii?Q?tnj+tsEOCp3nbrlUDs4RMqHXUtKvi15kie2VtIA7v/lpIeGV8xSQtLICWBgy?=
 =?us-ascii?Q?OLUB8POwI+qGWwpduil3kN5pg8V1dwysBdjlsoF3LQNKx4F3kOHICUAzPqqX?=
 =?us-ascii?Q?imtTHeMBu3NhxVjQJy9Kz/BFIqpUFbxNUdVIbVVoHNHPIcNryzoG5qHTpBe2?=
 =?us-ascii?Q?8xMcUnSuE5ZXxXaBJoQRE4OchckqTBaUDHtI3a5j5B8dNI3vZDFAEttvxdra?=
 =?us-ascii?Q?vSj02RsNWtRZiMda5FXcqvohA0mC3FWtmPYJO5W759nDdIIGZIWurEKFa7XZ?=
 =?us-ascii?Q?im6OroqZ+36Vvjap+sqlyhqRS2XOnNwAauJL5ZIwQbTzJYmSCdc5CtEKFHqZ?=
 =?us-ascii?Q?WzWXKmVgrGskI29y3ohFuxwo60gQK4tvcuJXE7Yj5R60DkQ1U17z24wRHnGx?=
 =?us-ascii?Q?4brNM3sDCZCdff7u4msputLYr67JNxvzA7h2Uo5Htf6BxZa1pPPoh5UgaQ2/?=
 =?us-ascii?Q?25Lj1UaCJVgcpgnJLPPlJsuztRpUdNvFbh368jfdlBEOcAYLBHzMtzOtZLYX?=
 =?us-ascii?Q?zB2B7ib6GWH44pa7Ho+EJuI+QTcGf2Bk+38IsKb/0m88U6DSAdU8ewmYh7qM?=
 =?us-ascii?Q?Od06Rsz+etOPfYY1dFJkMTHSqWs1ZSF/T6erf7VRPH9VVtUhU8mF9PBn4xhL?=
 =?us-ascii?Q?9S1TeZtMPbPiDx6QJ/KQ7GsGqMnLvnAASP+pon51lVN3uYePLMnwHW9NRGPd?=
 =?us-ascii?Q?AeZSVjs1GyoiNdgzlxvYZulUdfMQ121JOtc3QGhuTY5QsC7eo5X5K3A3OZNK?=
 =?us-ascii?Q?jdfdLP4PdiicE2hPr+VE7hgXSRRMLXqeqGEqMhwvfQn2yKH764HZZZ+cgZ1F?=
 =?us-ascii?Q?VPm2DjLfoqTWdU99AJppEZzNKLf63W2eT8XnUsoVAbC7hlsIDVTuHNGLjYh3?=
 =?us-ascii?Q?JpBhJLYK9wls48tmTKddaE7fBk9j1VAVNC6NqJHXZYbTQzwMHyOmUMxQxpy/?=
 =?us-ascii?Q?HaZElouMpiUgAmyZaZoyGcNYbsgN7NCNiunGZUmuTgjqvZVSGUZiSXcYbQzv?=
 =?us-ascii?Q?MhbJ3HsgNQv++0GA5mT5+hlULKlaiTweFzSdFr1uZA53E6wNHH6Bci5HLPd7?=
 =?us-ascii?Q?JdoBAlDQf005vc2kog8ZEAA1NDj5768TWU+zJm5wcv0+SqIWO/xM+MRcCJNs?=
 =?us-ascii?Q?CpwGCgx8plFCRqZ6xumiLiA4CgPYVqhs0/ek4D4hk0jFQ+L0Tp1G7VU7Ua6L?=
 =?us-ascii?Q?jUKPDWoHQ2cWn1WxnNwPu7yQaSSFzPNNg7q1nszXB/90MbH5+zetSPn/vbvN?=
 =?us-ascii?Q?U1yXJ0SrWg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: REKrDGU527urAagY1pQYVL+7S8pluNp0z2fYYL8pEU5PDAnPh/c6DLXJGH83rt0+zF7QbnPL72mHMynKb6g82qb2xMgp1zGhSAGpnn6Ng8eObebWhM55vd+Pmvh2BF1Laf+0Fni0mTsxDQjza0uY25Bzep9JXbjsxJNb0fsxFAb6zJNNtWxQbtGzjct51pGdMdTT6VtAK+1Ud+5cfyaXkS2g774dgZohzSHuPNogbjqGbw9CJhEoWUse3NFL8w0Yl1KDvBRd95EhP69tzA51FF/6vVEx4w7NXa+di5pkK5PBpHMy4PufJjANhhnySC4GUMJH5Gwlj57gMk9AmO+EDw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9e4c44-bfb3-4343-b8c0-08deab9efeaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 18:40:49.9260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TkNDsC1nlkqTTC173ny83SENTuemAXFtoGwo4VNuRp5zLkKkScxknOnEiujQTjctlLQTFhBLuo/J6fqPK4c3vGjehBjPdCjU2uoOqSbYUo0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8176
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778092854; x=1809628854;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FwJ60pAlN+okitQJ990t2wGaeImdtNo9pu4SDu3B/kA=;
 b=Yu47jmoHweapomLkVaY1kgAYftZNUzdVXdFY5dCilTCC3JtW/bWE9Bzv
 XTA0xhHCM3Kiz7GUohoR5t6WmedEUjRagI+KYo+oxSLmlK7oZ9pCmTfdL
 QCqP4Cw7LjIeMJlfPwJBwjvU1c4CONdZnA1ENmQCZSUqXURqfBolnVVmb
 E7sRFY1QRMVjv6+Qng6mT7OIBOGPEfmbKSc143S/2fq4brpeDY77CSfqb
 wBonUprR/Ex2UKsT4dAplMGSLAmSJZ2nq8pbgAwhmoE4bzcE2aNk/nFT7
 LTboSXxk2PdHhB263P0H0HSkXXM+9bCfMb4+5NxqIZNLg8RyrMFgLBszG
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yu47jmoH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 07/10] ice: create ACL
 entry
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: C92464DF752
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.79 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:email];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:chinh.t.cao@intel.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.359];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid]
X-Spam: Yes

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, April 9, 2026 5:00 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Cao,=20
> Chinh T <chinh.t.cao@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@inte=
l.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 07/10] ice: create ACL entr=
y
>=20
> From: Real Valiquette <real.valiquette@intel.com>
>=20
> Create an ACL entry for the mask match data and set the desired action.
> Generate and program the associated extraction sequence.
>=20
> Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Real Valiquette <real.valiquette@intel.com>
> Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2:
> * Fix invalid profile ID passed to ice_flow_add_entry() in
>   ice_acl_add_rule_ethtool()
> * Fix uninitialized cntrs.amount field in ice_aq_dealloc_acl_cntrs()
> * Make ice_flow_acl_is_prof_in_use() more readable and return bool
> * Add ice_flow_acl_is_cntr_act() helper
> * Remove prof_id initialization when it's immediately set by
>   ice_flow_get_hw_prof() anyway
> * Check if src overflows in ice_flow_acl_set_xtrct_seq_fld()
> * Adjust error codes in ice_flow_acl_check_actions() to more reasonable
>   ones
> * Add ICE_RX_PKT_DROP_DROP instead of using a magic number
> * Reverse condition to decrease indent level in ice_aq_alloc_acl_cntrs()
> * Get rid of useless variable in ice_acl_add_rule_ethtool()
> * Use plain alloc and kfree instead of devm_ for ice_ntuple_fltr in
>   ice_acl_add_rule_ethtool(), ice_flow_entry::entry and
>   ice_flow_entry::range_buf
> * Use plain kmemdup and kfree instead of devm_ for ice_flow_entry::acts
> * ice_flow_entry members are being deallocated on device unload via
>   ice_deinit_fdir -> ice_vsi_manage_fdir -> ice_fdir_rem_flow ->
>   ice_fdir_erase_flow_from_hw -> ice_flow_rem_entry ->
>   ice_flow_rem_entry_sync
> * Add missing entry->range_buf and entry->acts dealloc in
>   ice_flow_add_entry() unroll
> * Remove redundant checks from ice_flow_acl_frmt_entry() unroll
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +
>  drivers/net/ethernet/intel/ice/ice_acl.h      |  24 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 123 +++-
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +
>  drivers/net/ethernet/intel/ice/ice_flow.h     |   9 +-
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_acl.c      | 183 +++++
>  drivers/net/ethernet/intel/ice/ice_acl_main.c |  62 +-
>  .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  37 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   5 +-
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 626 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   2 +-
>  drivers/net/ethernet/intel/ice/virt/fdir.c    |   4 +-
>  13 files changed, 1044 insertions(+), 39 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
