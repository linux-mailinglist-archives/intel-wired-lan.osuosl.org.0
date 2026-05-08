Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCwzOTcC/mkTlwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:33:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D8E4F8BAE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:33:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50F4F41C4A;
	Fri,  8 May 2026 15:33:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yUx03JJrj-Dy; Fri,  8 May 2026 15:33:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEBD441C4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778254387;
	bh=MGuwYFsn2vohBVR78R8O33epW0SU9+Wvx0UrNA4ZlxA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mfB4A9xaHOQg3ZL6f+XamQHTpKEvB3jUfI+BKwGjOrHUULFQJ6/yom1I0XKj83hty
	 r2N/BNghDEWlsAyH7CDJOzetCeF8Rlai/rku+cB/wDTC7/vQ4yrL1yi8VqfQjfV3K/
	 xJM/K2yL3FcwxN8XZwM1E6OFLXa+ttEwE4RtKHipDQIWEQPyc7sSmunWU3YwAIoC26
	 K/4amV5UJDPzreJL7yXzM1Olvx+a/t8nXXhZpFd90Tmr1C5BNxPyZri6Ir240wmK6e
	 UQKWCYgTw6xW6CGc5ZdjXWT9fqWrzzPprnNLPmE/nHZXgS3viiHS9ygmWzcoW9+H/b
	 ar1KrMWWnzNbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEBD441C4D;
	Fri,  8 May 2026 15:33:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D92F7317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF0BA61676
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:33:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YdEfxABc_ROa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:33:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EC6BF61675
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC6BF61675
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC6BF61675
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:33:05 +0000 (UTC)
X-CSE-ConnectionGUID: UUrQDfC7Tv6MxkHiml39MA==
X-CSE-MsgGUID: kjpZS/8iRQudzP9mm4rpCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="89536233"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89536233"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:33:05 -0700
X-CSE-ConnectionGUID: 1H//GIIuQOa++CRogLb0DA==
X-CSE-MsgGUID: 23Dk5DGQRAGGQP/PkXXOjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="235812506"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:33:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:33:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:33:04 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:33:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WMLnDjg/k7kbBumeIKm+TA5nUhNpc/VT876qq5amSS+fdb2dKXXYDbW4PzIcfx8AaqMul1fvZ8tXmLjyCEg/VBH8LjQB7hHVVSnpDOz7AHXoXawI5Otq+QAEQ4zNj7OFp1mepaRUR2PWowkm3/uIXjlumu6LoO7VmIpn4MEKfQngYUMvA4fTQDbTRX56sFOfEQyXvBwBGd5wFNB4skNWYN5vQb9LYPGdS9CPO5lrd/tkCnc4x/7y62icaprzHLcjEZjG9vSSyexwrvdxOjRP0xt2LSRVH6syYN1m2KreRwStu1noc19vCyQVpgyVZF59sjNAowW3S5pp35ac0WhoQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MGuwYFsn2vohBVR78R8O33epW0SU9+Wvx0UrNA4ZlxA=;
 b=fxwwnH0gzv7v120Z/MMzCilvL04PpsUaO6H8365k0wBGHZmvJSSNwB+PUCMeujN3j9pkvGnNWgRfOuHNHrDSf9wdGJZ714HG84XO8HozpCadO7vh03FVpowpCiWEVfh6z/J8j9aAzNi8HAONU42k6KF/QR6/exXFoqtouKU2hIvyBrwGd6XKK1sV+4vgg72zuNIee2X06A0cVqjHeEruWXuLwY5LmI0hnjF7YAKQa5ylz8iMz7MqexsL5q5ySee/ar6u16q6aKjjZ0TrODM3L3yeqHKFiWLVN3uq6qUq2rUGjZ4okeAufMnmAriklczXEnJW3PeHC17jjJK4TWdvtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by CY8PR11MB7010.namprd11.prod.outlook.com (2603:10b6:930:56::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 15:33:01 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 15:33:00 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/10] ice: allow setting
 advertised speed and duplex for all media types
Thread-Index: AQHcyL6e0apSaxpnZkKl54hwu15lh7YEbkeQ
Date: Fri, 8 May 2026 15:33:00 +0000
Message-ID: <LV1PR11MB879043BBDA6D8396E1029C7C903D2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-3-aleksandr.loktionov@intel.com>
In-Reply-To: <20260410074921.1254213-3-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|CY8PR11MB7010:EE_
x-ms-office365-filtering-correlation-id: 4349035d-c734-43ed-1ec8-08dead1716a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: c939jzzeDuc/NLLLFvkAKVJHEoWrDsQbc5zI4zKEiOM4IdgghEtU1w3VcL9nIFfWaJQUXhedtmwLEYSyJEqK9YuIQqeaOhytSBTgPJwFTVk2R9bF0R21p2ivtu8OeekNmcwORGZXjUrG0kkaDkng2lnoGxR+BPXgKTAk6VN3R3fEx6pNkaDNoE6KUA+AGjBvzM/HK3P4gKUKwhWL8DMJZHY4mNEKXtrfIyQEezPK4ai3xECcUrWStimnzdn0PgNqKgIPCaHsFxLuCsFBBgvbyGhhqsUrT1h4izmjOdIaoBQJ6Qs/WOJikJWmjxnRRVWYKHQJGLH5Bv8v/A9jqEfcybb13QCL9C4yfOloV7XYtWmVOTn4hrla+2RxxAQhp4HZmOwRMy3VFFIC9M33I9zlBnN/lFnu5+H2BbbW2ym3y4nKHwEVZEbKMFnqe844NZUetzf1Pd5vlmM3u79cP9vCnq/Aw7LLwK1q0OEmypvxWwkDltCCmSuf+NxNMgHBolHxthpi6NdJdpKq/S7T48FgS4RwihRglQesslAf5sloYt72UX93arJANlIpp9aNwW9Zk6vgji8sWPLJyqgtEF4eLb737zhonJLEnfULjCpOLqzshXIVy8p1wtS5PqlxatQjxbba9mwvxLOcKUXpSEoIHR2N/Qw5fG5ZkD7WMGMW+xllyXmGra+mN6t43fVS1g+MaXu92EqSkME8rI2QsNkwvJV/kqKh1imRpaEyugOOoLSqEMfFup8DGEy/NjwfPQzf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1KEz12gkFSpYVgP2ScwamuK1t+vXE3RNG+UOhr+i5kSNCsSC/N/S78E1pFjm?=
 =?us-ascii?Q?hIsKydR4HVuGtvePoXuGofEdf+KSDldSmPojJjiOF0LtIwY3mWlOedMTE/M0?=
 =?us-ascii?Q?cPppHJWJ4W69wZ7r92L+5d1vj5G782ugBo7oTg9kGOHAGhxdjarEFJb2N9BM?=
 =?us-ascii?Q?0VhZMYJxHlzFQs3lJhkWriXMGWFz467vWb5RCm7GLgMrgsfjRJtpDtRA9/QR?=
 =?us-ascii?Q?t+PzA4X8DR4g8lXx6bYjD9qhDb0pUVClZaYhWgPEkq6lvqSQkGTujLC8KtiE?=
 =?us-ascii?Q?uNeztUgTQBsurfWW/YO7NQPxFbyP5HM4qZ6SHCf/bUUUCCeIZ/H8tMxYqcmy?=
 =?us-ascii?Q?CRbbFWFWh9oG185FzfTHn3zj4fVtU00aXYbcHHg1L08x78J9ZBKqmQ5ZnFRe?=
 =?us-ascii?Q?iZqR403f7TOa/G0t/uIPF8l8kctPC+NKtjVkbJnkoV5QpgC3cYXd+PNQ3I9e?=
 =?us-ascii?Q?OwmNh5Js04SjLt0jfE2fjWhF/jAKJYp877/1A8vwnkvVvTMyY/k2lYrmBCQv?=
 =?us-ascii?Q?qv7D5boJB4jxG4V/yRpbABR1IQnBepbQOKNkSPOubEML4f3LCnYsL461VaMP?=
 =?us-ascii?Q?HVFKoqNOqulL1QfynAGWKXfcg4M9XY69vqE+g6Iy1RZZgqpcdrENZSwNsS4y?=
 =?us-ascii?Q?8ofEK3wCfcXuO+Sq+r2aqtiXR0hgq73MfcR4VAdD4i4N7Xg6L7riFSCKmtVm?=
 =?us-ascii?Q?jTwtGxaBb7OSUMciSd0Li06OeWhU08ocNam+YJxVK0z+1LhCasC40Qu5Y472?=
 =?us-ascii?Q?uxC79MbMjpKrTAUAUb95HgHO5n2+EAW3zg4XZDK3Dw3qndgzrfi1XfSxUtZh?=
 =?us-ascii?Q?oCi9lvZHQuUPGqpUB1p8ufyTSfueB+IyPCylDyZpSvu3jAu8xdyI3PAkq+EZ?=
 =?us-ascii?Q?vc1C2eSRjGcakXVcgTSR4QXzLN+XBbtXGyqPJ7SC6OIK6+vH6oMCLuYhaHVh?=
 =?us-ascii?Q?kGOixc2MPxmJVzLOyk7mVMmROoWP8MckQfF7GI0joas40TP/zTyO7ugAs+zl?=
 =?us-ascii?Q?0ZqBZW1l4EoMlxKLKEyiHCyrQKWuQBH5I47WgxD6ee4Z4MgLzGKU70ZK9eVG?=
 =?us-ascii?Q?86eWur+YEBhbEuDkoxssnaoYMj/7LxfBCn4aufCFCHFkqfnU+B/hNdEKdE5o?=
 =?us-ascii?Q?i4RlqPDh6u+6YPxgpstmoCdQeIx1wcUvt+5j0lCHPrE5oAO5o+YauMQTs0ts?=
 =?us-ascii?Q?pQnJ9bagJWP2T6MQSWfwZ8JAj3QBl9l2e311Qi6fiTLCrGjEIxutplUSgwsd?=
 =?us-ascii?Q?f3nKUMXzmrEpaUW4w4HU0Au6INFasYZ2VLP4N188vVXPm+JyAF8pziAvifUN?=
 =?us-ascii?Q?QOcJtqEP/h5IOCpuNLf2DHdDMT2AHJQ9tP5rn0CtOM2NDIRoKGFYo1xyIlZn?=
 =?us-ascii?Q?yVA0xKf63pk+UpkLQH/+G/YTiLzdSJmJd0gn003i1tvJpPtGNQEImHU/1Egz?=
 =?us-ascii?Q?HCEEN+2RgcwxpZdrl75J4tSPxpxjhgrWKqCYc11ZJIRXYHdbTeuuInP4Ra0W?=
 =?us-ascii?Q?ET/GtiliiIURvMdutbLyrCXULlF4ATpnysEjHHj292dThRLKFJAs7M6Xdwxm?=
 =?us-ascii?Q?Ae/eNqPvDm5az4+LbCGHUp1uqPtQGtTKUYv9L32GAcYe/NIuufyGahoDxFVU?=
 =?us-ascii?Q?epexgZkN/dIWgd2RkEHnPOxG2SN6W07RMpsj/2usDiHubvTTUv1sIxmQk5b4?=
 =?us-ascii?Q?mjLPSbNS+2zVLzuh/RhUngWWS+5N3x1TTUwuXfoZJdz5Od+v/FfCL8BJ/AM5?=
 =?us-ascii?Q?O7SpVezUoA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: wCtDVUmMCCZh2N8vafD1wi3RdHmHZS6RrXgoYcsuG5aK63ktGLFGLCZvkFBUyBVMd3Mo6mIxt5t6ovFiStRkaA0KaqUpwtW5fOIwhLrqc42RsZnKE1D/eij8+xGfNVUm5WyeVHCyme0dmnp6jck3r6xxRz+TTANutAms2qBsPjvWqRry/zjrzr4jHu58SaVtBfm8mHF2/P3hIiUbMOnEzndHjIvMzPtYS6enAVQXRpYru2Vs6RbqT7EAHgmi+6ioIST1z0DbhCiXbffuIqJp0yNMq8b+0hrhP78s60dQowaT+60zyVp8eUTHb1yrrkk9DiChazrc4D7/z7wcHMof0g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4349035d-c734-43ed-1ec8-08dead1716a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 15:33:00.8762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aApEWb9Kx6Qnu+NUDENm0InAiJXDUcv3pkoFu9YXbZW8OlA6X3UJcTGiZyDMWcToSy/zpEArhq3FvvPfgx6hD3NH/EzDdu19RMDi8D+6MhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7010
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254386; x=1809790386;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OLzyD6H4BKdQISwwjo6Vi4b7TuAtr8E3F1WyJd7Mi8w=;
 b=J4K1ydtVcjoR7YiKNGxM9PFVtFeScPceC4mtae8CWRRdk9N99HqOPiTl
 B89kEGYUu+aRdVLKmFuEwtJ+RVtyB1tkIgP4zN+waswTVS6ff3efkDXoP
 bODEbFdAxCU1S1saFnQ8ypf1mI427vtQqvKi5c/M8hHnVCOwHB8ZeEwq1
 LTu6F5zzV3tIAMD8ano4Tm53onMIOCZLZ/JSl4YJhVpYbpiaKrdssuEX0
 l78uodswGh15R6U6skfIX/SNxARU9KuWxarL71i/dRunYjsAYMFe95pJu
 myes7B33jTygvrOtHuAVXdZs5yLtwYo9dL7ElhBEg/nO1kzZnvGBKdcPP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J4K1ydtV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/10] ice: allow setting
 advertised speed and duplex for all media types
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
X-Rspamd-Queue-Id: 36D8E4F8BAE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,LV1PR11MB8790.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, April 10, 2026 12:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/10] ice: allow setting adver=
tised speed and duplex for all media types
>=20
> From: Paul Greenwalt <paul.greenwalt@intel.com>
>=20
> When AUI media type support was added, the set of media types that suppor=
t configuring speed and duplex via autonegotiation was not updated. This re=
sults in AUI media types being rejected when the user=20
> sets speed and duplex via ethtool.
>=20
> Fix this by only refusing media type NONE or UNKNOWN (in strict mode); al=
l other media types should support setting speed and duplex.
>=20
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 17 +++++++++++------
>  drivers/net/ethernet/intel/ice/ice_type.h    |  2 ++
>  2 files changed, 13 insertions(+), 6 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
