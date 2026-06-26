Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BZbrFiggPmqMAAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 08:46:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 989D16CABBF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 08:45:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=aCJ8j04Q;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47B36821EE;
	Fri, 26 Jun 2026 06:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uw1sxYP2Ioav; Fri, 26 Jun 2026 06:45:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3CA2821A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782456357;
	bh=sC9h9MpSJ3L/6rGJlIYmgqSmRDxtZLAYlnM2Jxf9/ow=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aCJ8j04Qf0zfdZ4ZjBAw1sWtypt2WLn2RdQoz5jgRO7xfF8UPARMgKAHhES0y776Q
	 /p2JI+Zd38+IRz/YmLWLc1rcWD2F8b2ME6Ws+F8E5BDQhJWtRc4+WbaRaW5i7HEt7V
	 unV6gyWwrqoaCFw9YYFjwjRDhJbFKZGqO4pCyH3k5vtQLhX4Xv7anaK7VPTncr9T7X
	 mtQ/5c/ru6QsJvEUhbwoH+KE343sD5lz4hMcoHQMOIRzXclM9FayXVqOATLG6GefHF
	 KmzHe2x6b0wkvqMb5ZivFlFn3LL4z1lctdtLE9iKJmLKp/Ft5YI5xW+q/MxNb8QAtW
	 Ii119BQ+BCvvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3CA2821A1;
	Fri, 26 Jun 2026 06:45:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 881F8231
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 06:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DC3140BAC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 06:45:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rBQ_vWBNzVLY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 06:45:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A9AEC40BA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9AEC40BA0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9AEC40BA0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 06:45:55 +0000 (UTC)
X-CSE-ConnectionGUID: lzHdCsifR9q1xTv7K1VwNA==
X-CSE-MsgGUID: KWBOOpGdRBaYPj9ZKDs+Ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="108795634"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="108795634"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 23:45:49 -0700
X-CSE-ConnectionGUID: 5kwrQyL4TBOrESgIAhqvPA==
X-CSE-MsgGUID: WUAhCvQxR5y+x++mJirFCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="255245202"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 23:45:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 23:45:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 23:45:48 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 23:45:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JGltgGTkNaBJejj4MpV0iWrazBdicV4UYUs1g+TmY6JS7ekzzJ1CctajSctGx0OajkY8EHBILhADkQmjb0+lfjJo79fc4Oj2HJt19gEPr1b3WdyW4SUxUIEsNcW84FJNAgdycFpiA2gWIl1XjpJwvfOCxbX4L/7vZcTUMzSrH32T5u0zVc6S4R6NNIXSzrgfSKWBvKBIlGrBv8ipY8TVAn7jLzuDapXnkTFx6wRRRg9qyqM/UBVyhYl652b8E6gn50qFHbaHBwQrthBk6ap9YbhFECxR2l2ZGuat1WHBFYXYlz2vxquYY/WktiwAvVyap0srQz4NgOjXhLCqTFrHjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sC9h9MpSJ3L/6rGJlIYmgqSmRDxtZLAYlnM2Jxf9/ow=;
 b=oLkupEZObvCr/9cxJxSvke/ta2m3tr3VKFo/StDMMwBTOPnK3vXxNN682z++k5ARGVYOKcPlPy7Xdjwex29nwlci7TF/4qlL+1bpH9BizC8MmYrJ1pvYeNQXgYOo3+wVrovZ3m3tpt6sTtRTIJSIzXhK6oz2pCuu3FIxt1kiPuOXLBhigiu3uT9+gVvgWf7TOp0368kFRtTiOQ3Mr4m19FaPIEEHu9bWQOZgAu795A1ETVp2/2A7CKBDoWeUV3pBRqziecH+3PlX77VGFbOysCOex/jWzsHdcI35zx6SogQQHjt84jjDQGtsIg0T53YHy4ES9gA718l5PmCvGSRuNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8484.namprd11.prod.outlook.com (2603:10b6:408:1b4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Fri, 26 Jun
 2026 06:45:46 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 06:45:46 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v4 net 1/3] i40e: unregister netdev
 before clearing VSI on reinit failure
Thread-Index: AQHdBLVolIph7753AkS66xOuFVusQLZQZV7A
Date: Fri, 26 Jun 2026 06:45:46 +0000
Message-ID: <IA3PR11MB8986EB2317BFF39C9444F629E5EB2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260625151431.1102838-1-maciej.fijalkowski@intel.com>
 <20260625151431.1102838-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20260625151431.1102838-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8484:EE_
x-ms-office365-filtering-correlation-id: 6bbdeeb8-1bf4-4fc9-beba-08ded34e8d63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|56012099006|4143699003|11063799006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: Uq1Tv4WTbhnjLguFh7yOTvLHJPKig8nVamCnVc5QTAMDVGp69pU1Vk1lsWgt269VNlVH7yBH5POc8DuWmBn5StfyNbUXa8M2ENfty+G1x925MfMVMswsecQ4RZY1OFB4fOVl/IJM1G+SuvA2lTQ3H/llI23yQ9GZwN8ypu5buxQY+UoGXXm1mmWdrHjzz8fzUhUkVmkmUa7rs+gQBX0nCfBCjbk73NAOxOlmwQrzlO9YlFWpBryg0ms1E9d0JsBszuN07iOitd8Q1Nfq8+OVSIP2KgFgoWWm20oLrzlN/bKaL8xSy1SekJNoBJi6lKvTojwlD+jNrCy4JUvPl0R447aw9QE0y4x9AsTBClW4AMi34IJdP4tWBPsH/MnAihvIaQB3sjngEn0jVZcpMcYy/Y9i2t3ZWawsWHn95eLfZvd7NnE+yjBu09e/c+M1AbMMURWizc7uTA3CVcKQA2wI4Erd11lg5aZGYZiimJ5o03/abjvD6gFicPP5fFoxE2Kpu3UrDmTMGzCRIt0D0dAjts38pLl5WoNJYohe20tczah+SKxSgP6HxdhGfYxwHJXUBHiYrRyE7mtpanghYQYfXazniUcWAf3eSEIp7LpaUqzvYADqWipnBw01xA6CwD7rh/tumayNNDEDHFQqsC1eyCSVtLPcZvNAWEuhJB7TaREgYNLMrTK1rnovi5Rn73+9jjIwH2q5fMaizEPyp49SnDO/ICCZWxxB/HE3UjVQwi4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(56012099006)(4143699003)(11063799006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m1drbGqet87SA6pmuk+Y4ti+uabcxdsrIa08EYSSws0InpKSdNNFcHV+W0/S?=
 =?us-ascii?Q?n1Ce4cdMHaWwPJk3AOVlCQuRetWTI1CHhwAvYBSQQ+RF+/EkA35G1EZLqWsQ?=
 =?us-ascii?Q?CugyDa2iTMtU2fTey7Hh2RSfc8KzpgrOKrrCm+X/1rQ7ToBxR3rit/10n0wY?=
 =?us-ascii?Q?NSZFwvEy94Sa4Jb/Y1kjIz/tCfpdQzzyLmzqU2XmhORoJhRApnq7XhS+tF0/?=
 =?us-ascii?Q?THd7J6olfUHPKM6oAYhsJEd65s293qV6QpxX73jyNkBiT/7h9Jd8zRvcn/EB?=
 =?us-ascii?Q?eE0divZVfVXxvi1ZkqxGmzoHqzXJHpTyphBInuxieA83quHt9s58oYcrtyJa?=
 =?us-ascii?Q?q59ECF3Pv4o5UWdgF5j1xUdfRauITIBOgar+OJ1EIiURJajMpdlEYZvAM1fc?=
 =?us-ascii?Q?K4rxmvB8VrodvW2giwVEYVLLunYYhN+EAmaiPV3g6DQhY8CdMHDrd9kFW3mx?=
 =?us-ascii?Q?muL2ZuN+z6wZWM9tgpCGw3tiAe3A7ONQJBz2eYMYzt6ssdUGsgFH44L8bPSu?=
 =?us-ascii?Q?+rsExWvDpCLOIDyUU/g4P3c79crEqZ2El4p/sc0LvZqcEue6W3Faet1fj7m0?=
 =?us-ascii?Q?H/RZvx0rUwfYPINIBGLVLPFQpqhdem+YzRIfhSj74AF6GurGnODBHcpuyGwh?=
 =?us-ascii?Q?XVX7uCcxlJea5tJHD/26OeOu1lp8U8Yk3UmtPxouZSXs/vg1nFKTIEh2c8U8?=
 =?us-ascii?Q?uUhhstXeNJCzKTUZRvDb9NEvUQQhwNicMwLCPOhKepiFNMSEEcBN8dime1VQ?=
 =?us-ascii?Q?BM4FLHNk00gZe2pH+MBdSd6CqPwO711r+HFGyYhJtGzeEDObi4LRPkkiTf35?=
 =?us-ascii?Q?1BW+cFK7RRhnpopWMwgJE7ev3p5Um2rUQfymPwsvT5w+nRuSVwpqUBHDg017?=
 =?us-ascii?Q?w6g9qo384QMaINhLnCAulPdh5Mh1LRlZxzzi9g4NlrfPKro502mXGWM8D1uA?=
 =?us-ascii?Q?J+v4XjNtHXRI9nGpefKpDN7H2W37KHwwvxwwQVlwYHksIdwZ6dxgXRSweNCW?=
 =?us-ascii?Q?kWnAaiwxdPVVL3S4UEdvHwGIrp/oi63/X7YAlQG+sOrDK/s0UiGvuH33dtoE?=
 =?us-ascii?Q?lNkGvuk67InrmyhHjfAgVler3BZ6X/gZt2rk8Kj6i6ZX6O6O1jUPelLJZJmH?=
 =?us-ascii?Q?018acR34kWVi43stl9k44LUYO8Qa1N+5jEZQmVAZA6HusqDp0NoOHKU82pKn?=
 =?us-ascii?Q?xCgWdLiAv55niMl44jROeEqzN6eSD8FHEkzHHmRgm50bBEaecblf94f5U2Rn?=
 =?us-ascii?Q?91MtszY/5YhNO8XaVkaZoTh6Hiry2OdIIoK6fUXpt/0knHvvHu6MGSQD1NE4?=
 =?us-ascii?Q?GLb7FpT2G3Zkbq1wq12wLp8L8cIFvJid4yhoNTh7dGkvqrjOEv4yXaToFdct?=
 =?us-ascii?Q?5XNEVOZxyO5cG5tHC5MvgK6EqeHX8vnaJ4cfdW+dMUfJAfWpcXhxA8sQVIzw?=
 =?us-ascii?Q?BNuaPIPmeTm3rzwvpbanP1Ap+KPR0wgOQoYRqbVaiveKoPNax8Up5jHzSBaW?=
 =?us-ascii?Q?YxeFJbHrgGnXMSa1jdGcSGQOTPPoEzyk4T2G/jR4HPrWgWJz1JtvypKRfN7S?=
 =?us-ascii?Q?Tq/T1z5twKPmBPnMdFy60b0ozj+cufzjto6QjnaIjQIxeNggp0+nD26IOVBM?=
 =?us-ascii?Q?WKhMjh6GsfwwL4GP04L+oijjiwAnoydFwemOa6RyEQnMxP6S+ZhXY3Qex/0q?=
 =?us-ascii?Q?QRuXeWxAv5dTrFstVYcnHV/ItU+sdpf7RvEhIw3NXm6sMdQmJa7JK4eq/MhT?=
 =?us-ascii?Q?M40xaSre2016KfrvfJYmxgKxZHQZbcA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HkacnU0KIqohJBaYI8t/tHBUWa7R90frzzib9QOrRsFhB1weWFAX+ehzRgy71OAeMfRzIov/aynf7WUKvUgJefqTc3jXzTzHQaZ5EecwPNgAVbDVgp+4qq8VaUVwa1s++llq4Gdbvikcah4iBQrX3d1pSNQco2PYvAXnDljhbS3QF8O5dSNDOj89ZByDrAPJ+/Ip1vAdzXOIwGXfvGkMS0qMGYis27KCoM0T3XTcz1u3YYy1lXKYsPbjV/SYn6toU9NbHPO0NXqo24gBAlwNwZyp0IZyOPD74cxcn/lawapgWU/OYtllBgB8ObfKemOz1RNMaBpbPTi2Sm0lAposFA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bbdeeb8-1bf4-4fc9-beba-08ded34e8d63
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2026 06:45:46.5917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hq5+fXKAxQn8oN05HYvBhfd30f8HkSDqVYcy9kh93o++MihVdnpAd+V9ebiQAKIcx7cw0Z20ItVsmkKdEteLxNSdGHaq47z4MACQPwK5aj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8484
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782456355; x=1813992355;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IgdB6SP487s3lwXv1rSbLrMweT3SXdtfuYE3Y4OyWQc=;
 b=HnIyF5WPzzIm9i8sVjM+O1D87NQyajtE0inI/HMPFXw2HYuVE8fsIBhR
 EPCj756NTydqbWtyuMVtRT+GYyfbDp+XBFgvWrhQdwSPg8KkhSwe3rH50
 j4kthN3K+LzKmk2gX/S26OmmvQtUHFtTpHu5nb9rm1fhklUUjxNWahw6X
 ZWczmwBYYszFuSIEsbYI777Pmr0Q5tvUoGMUqRkZ21+F3YXD+/hFULeVD
 spad+5kA/+ToP0TMoW/1wu/YSSHXI7ZVHQ6gehMuD3t1h95EYfx4ty1gb
 qN8X+wAfblckjjVfYgJUYtyhOVvOpF9eG8nagrKuVyGwlNykQxRKYZ8WX
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HnIyF5WP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net 1/3] i40e: unregister netdev
 before clearing VSI on reinit failure
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 989D16CABBF



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Maciej Fijalkowski
> Sent: Thursday, June 25, 2026 5:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>; kuba@kernel.org; pabeni@redhat.com;
> horms@kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 net 1/3] i40e: unregister netdev
> before clearing VSI on reinit failure
>=20
> i40e_vsi_reinit_setup() tears down the existing VSI queue/ring backing
> state before allocating replacement arrays and queue tracking. If one
> of these early allocations fails, the function jumps directly to
> err_vsi and calls i40e_vsi_clear().
>=20
> For a registered netdev, this frees the VSI while netdev_priv(netdev)-
> >vsi can still point at it, leaving the registered netdev with
> dangling private driver state.
>=20
> Split the error path so failures after destructive reinit teardown
> first unregister and free the netdev before clearing the VSI.
>=20
> Fixes: d2a69fefd756 ("i40e: Fix changing previously set
> num_queue_pairs for PFs")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index a04683004a56..471fa7f7b643 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14274,7 +14274,7 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  	i40e_set_num_rings_in_vsi(vsi);
>  	ret =3D i40e_vsi_alloc_arrays(vsi, false);
>  	if (ret)
> -		goto err_vsi;
> +		goto err_netdev;
>=20
>  	alloc_queue_pairs =3D vsi->alloc_queue_pairs *
>  			    (i40e_enabled_xdp_vsi(vsi) ? 2 : 1); @@ -
> 14284,7 +14284,7 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  		dev_info(&pf->pdev->dev,
>  			 "failed to get tracking for %d queues for VSI %d
> err %d\n",
>  			 alloc_queue_pairs, vsi->seid, ret);
> -		goto err_vsi;
> +		goto err_netdev;
>  	}
>  	vsi->base_queue =3D ret;
>=20
> @@ -14309,6 +14309,7 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>=20
>  err_rings:
>  	i40e_vsi_free_q_vectors(vsi);
> +err_netdev:
>  	if (vsi->netdev_registered) {
>  		vsi->netdev_registered =3D false;
>  		unregister_netdev(vsi->netdev);
> @@ -14318,7 +14319,6 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  	if (vsi->type =3D=3D I40E_VSI_MAIN)
>  		i40e_devlink_destroy_port(pf);
>  	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
> -err_vsi:
>  	i40e_vsi_clear(vsi);
>  	return NULL;
>  }
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

