Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGPJNxDHumlobwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:38:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFFD2BE633
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:38:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3236960A8C;
	Wed, 18 Mar 2026 15:38:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r5B1mO_fIp0a; Wed, 18 Mar 2026 15:38:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B77760AF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773848333;
	bh=LCmxoghRL7yYQBF8j6cp/4wL9ibb4pAdpVn0GE1D8PU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y+wt88s2UFtxK81wXcSkdk3U2wkUBrvn+eOhRvh0SnWvefm9pALtsPW8vheurftn+
	 BPhLb6x04OY6JNQIQl8Wt2m6Yt4Xvpxxrtle2+UDWiItx0+54ryqNCDDlCi4CStJ5s
	 8dIc/VpIobzEK2o3G/K6khnOy39eJqu8sMPTFpW9cw7fJPkRyfXmzQNiwRdaW04O4U
	 2X9ZjfikFOx7pBvR+BNO6kfpoJnuAV0XYFZy6c0lXhhSr34BniGJdpv3mVGkNu1NnX
	 jyLSHLLku9OTA/T9MM9lXi7iInP+kJBE3Sw4Ix8gHG9Vw92YgKud0ZDy/335gHOMu0
	 aYrovipNEqWnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B77760AF1;
	Wed, 18 Mar 2026 15:38:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E2B651AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC7A440411
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:38:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wraBaP1FoQCz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:38:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1300E4007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1300E4007D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1300E4007D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:38:50 +0000 (UTC)
X-CSE-ConnectionGUID: 90vu0D8AQcWamVgo2zlw5A==
X-CSE-MsgGUID: cXrsySBgRIuLRt3yg+fpsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="74605846"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74605846"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:38:50 -0700
X-CSE-ConnectionGUID: b0V25hOxS9mgrjJaP9Qh2Q==
X-CSE-MsgGUID: 799m4D1JSg2ASmi4tNpZqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="227352266"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:38:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:38:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:38:48 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.46) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:38:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EaQrYhlOQHjbpUe1fSBlCbiwY3pqcBuVEQ/hyc+yGnfFTPKJRbbSB0jk/kDJDbqPS4+XSHeg/5zqB0+vKzK5gtDXh23rTH5l8sNshLBSRWPMZaHYpi1bNJAYg57RcixqdUzT0TpN8Oc9sf6ufnAsrnZN5SnQrtHz6nQvgbFy69cYUEt7CphDTIi22UBBTw/1Ir3j51EuEETOdtR2hBB1Ll04k51Ex7VkeOgGWaRVCqlnovqBs1RnPQ+xStB+rCr7sNatBzX2rtYJ0/zaSwd0XcOGJzQGHvoED0o69VDZn44OQWRbWuNMSdQK1xHKcSL++KMTw/TUEMlqlx6TG6JFUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LCmxoghRL7yYQBF8j6cp/4wL9ibb4pAdpVn0GE1D8PU=;
 b=N6NKbsNnaaYbeH5/tslRYqxq/3XFcvNLHSh+dZV33lcrpunl50r2FEcpiIXPgLvOchUsvCwQDgwyW0K8TV+6NNzGs57/Q1kFCS3FFDmBw5cNdAk7VljdEr0MFUukv/HXXyRYDm6SkcmrlYdVY3QIQ4peK35ZS0N+Zb8QKQ3P++f03ofYELSMSLYv7XKxKe80O21QShA1oUL337bjw0eRPUOZi0kA4jFVRIpyw+rb8V8G1BEnWCXN/0UAR+0EESyO+PUYrnvOnMIETDyOJOUdl/WFar9LDLdfU40EGDyhXZrSK6Dy8FQ2Pzruzup0tvFTBWEWGlu4qXZKlEkuQqNKpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6500.namprd11.prod.outlook.com (2603:10b6:510:213::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Wed, 18 Mar
 2026 15:38:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:38:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Agalakov Daniil <ade@amicon.ru>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "lvc-project@linuxtesting.org"
 <lvc-project@linuxtesting.org>, Daniil Iskhakov <dish@amicon.ru>, Roman Razov
 <rrv@amicon.ru>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/3] e1000: check return value of
 e1000_read_eeprom
Thread-Index: AQHctuo+O4PLN66nZU+868YDYYuZsLW0bLMw
Date: Wed, 18 Mar 2026 15:38:43 +0000
Message-ID: <IA3PR11MB8986306AA92F2427C16A681FE54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318120512.687149-1-ade@amicon.ru>
 <20260318120512.687149-2-ade@amicon.ru>
In-Reply-To: <20260318120512.687149-2-ade@amicon.ru>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6500:EE_
x-ms-office365-filtering-correlation-id: bcdd1a5c-cb20-4345-097a-08de85046fd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: vl6fstFhgxUMeHXAQ92j+GH7aV+VxoOwkeeeu6eAesOSu42h4x3ZAN4Y1AcPievj8R8XSgX5PzTvZhMRUW8iCSiQChrLtuBuGadn6MJwGB0gtMLhFPnbG2EvUIxR1NCNo1Z0OOqsH92pBrnMbUuFBSH5zlTa8TTZFmdDl8nqOy5tUv4G1kEvCsmkydN6Q3eHMfPQCK+BoHSQy+WiJG56w4VIQReYLbIHFJEt+STmKPHXIrLFpvmg8cSkvWIiepp8ISUlqNMQen5n1XdgSCCGOzZ58TENPczKdmufvbSrp4M0lZg1yEN1gKEAQueEq10yAE3UZLl1fNfMqTKS8Fc9j9Q1DwtyzNyhTir9zoB65IJcaqLiCAvgOJXY/i1b9M3uTYiyRqDo8tJRqJVq+p6ErzJ4eVPV2BL1+qmhECkGgkqrJW6XpPbbiui0nkmD/fn6F0JlxM0U2jS/upb4WSeRY0rVdeeMdthsNwSscYd010eIis/M7XbgABNS7oBKLV0rGYPUAecQHOAyQ00O+o/CR1pyFpqBt/bCD95dBKhl2p2TMhsWt340FvAM03xztEZkouYP4FKeWxo9I6AagbqPXHyneDdebZud6ULOCOXWKyViMz47uiUMvjBgPbiDrF648irLv5Asr6JVUzmh8EUiXqgO9B+PSFxmouxpzbYXAca81vo19KZjLc5bb0fpBnQB5BvPFMuDfXHPLPir39+ybTmQHQkTALmBa/v/LdwiaYdPC8kMxwsqEdoapLRf0R+21TLB+ooWRtQ57jA6koP7uNFCObunCdLKPZ11dde87cc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e3SPx1zuAoGWHgnKb0NKOkZjjv5kFW2kzuu4AGXnT1lViQeFcgCumY25kB6Z?=
 =?us-ascii?Q?/S5a4Kpqzzu/gkjbNbMRs7hGwn6KwXzysdBjGb5SBePaaq+bBsKr8tBBgpYV?=
 =?us-ascii?Q?2dSUupPicj0Kgesrxvs10XRpSCers5QWn1rMvIw8TzwhI+yCZRA0/jKEDIaY?=
 =?us-ascii?Q?gKQq4wT92yfO/2+KZAVIhKpyIkVOe54E78CKeM5x7oA4wH9Xr26M8wrAFyJZ?=
 =?us-ascii?Q?lBMgRLv+prgQXAIZr4GbKkH8/kKaYRe6krn5PP9uPMQKZ0+w2HiFfU6a5Del?=
 =?us-ascii?Q?QPkgAKcUp/975B0ScdzjsdPdIZqXR05El9mKt+ohMQL8ZT+41F+7YNGFAhSA?=
 =?us-ascii?Q?0LAkGJfUIlv/vXELC0FF66IhyGDkGcb0A7q6B6wHe/tqMIgWPb1jSIyFanEZ?=
 =?us-ascii?Q?apkqP6F5xklPAeHgnUd6ES2atUzbYyqNGgPBIXBYYuBK16zl2BA8aRNZM7Cs?=
 =?us-ascii?Q?bfTwbK+DXVkEQFaQl8A9YH4v5HoP6s0+rxN91ng9pq4oPhlxEQfGTzzLKcJZ?=
 =?us-ascii?Q?UyduViSP25vXZjlYe2+rTbhtmdw1suoVONj/HWWZ2EoUS/2170ZPQKdKrfNM?=
 =?us-ascii?Q?ixI6gPv29+9ML+Gt6rLBLpNWdh44kuLYZsBD8U5Jogsq5LAlzBooODbj/5G/?=
 =?us-ascii?Q?hg9shlWrxcH0rtL5m5lbVHf1iNbpAzoqah6QprTx8XdDIgcSs/0mMThEJx2n?=
 =?us-ascii?Q?GiS7LEYnQF0vi3HhQEQh7fPNKVgK0UBK5sVA/2n/1zzbto7tBqFZwQe+VDmX?=
 =?us-ascii?Q?Ctw1dVybBuWaLXTdnrjXmHlDKju39+OZ+Ql0LRDTN/H9KNZ7XKmynmR6f14y?=
 =?us-ascii?Q?6ExAR6KSyPDJN+JDe7tSOFoVepiwCH369Y53PFZPxv5lDRHQO6VDCiW5Mt7a?=
 =?us-ascii?Q?XCH1PfQeJ0Kq5/ym5GODJlXva/qbJ7sOwX1RHEHLm1sUJkgcGbMKQse76Ae6?=
 =?us-ascii?Q?ATFfjWqGO+a/UIFZk5uHiq3HfcCivCbLD9/W7CuHWWue/LWwFyfBAgerSz50?=
 =?us-ascii?Q?8X2ZvXjbiFJrjkdNCjgrliCS+/emUcnopOml7M2x60zS/mxkg1VHTAXo9Nl8?=
 =?us-ascii?Q?lLW9R2WSI2quN2BwQT9imZSuIEiVe5MEYJfi1CWfLHsw+Bqz4AojGzStcBeV?=
 =?us-ascii?Q?TrQEVQHUA9ctEqN6rsww1fs2jHfEzDZJ1dyagOedrsC/K+kR677S+F8C74Hb?=
 =?us-ascii?Q?blUXV4eOAzpbLYgfiX+qICPNGcWrxwOFTo8KVn/iZ5Ky6/bcL5RK3BIJZm6p?=
 =?us-ascii?Q?KJ/41Wwpsvig9GQgFBUvuOjh67N32rmdvkqSroFiqL5E85GuZuwihXbNYshA?=
 =?us-ascii?Q?b7DO06jzLPkkkjhXs/QMAiFgatk+3Z4aeu4SxyEBP8nK0Ic+S8P6lKVGlnMf?=
 =?us-ascii?Q?rzeVKe68tbJuPCb9n5vCIuvFBZzdqwP8+nytDZonSjtusajewwAYsVI+vMXv?=
 =?us-ascii?Q?VMlQhLKO7SUzZFylRbBZPdAqAfxzfVvOIB9Pnq8KmbHz2+yfAkM26jcEBqHe?=
 =?us-ascii?Q?9BFxjW8dZ8DDR8jhu7nzAozCMC0SjzyBpzUdVA69FPNtGa7GwcEretujRyCj?=
 =?us-ascii?Q?4KMk3wxWfHX20EZvdWaqcFUNzTtVbUXcoPwVB7PhTUhxHf1ErJ0sX5P0VaWm?=
 =?us-ascii?Q?d4giQCtirLRt9RGheq/sJbTcKCwvufRIATGXoZ4CG6GvTcfqeNcBbjKSC7wL?=
 =?us-ascii?Q?t0aPmWa+r378sZPYIFBqRx1lcTdyedsvdItByAoMlhmwt+WjQmGugH3tgx7k?=
 =?us-ascii?Q?1UiRjQikg05GGC9WFr4M6MONswha+4E=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ns/Pr8b3UVqFwQpnRKSe77+n/d7v51hJIkFUgWV1JYLG1gjXnyY2l8V50+luDnjyBJn87RVEn9f+7FCATQ+7lFMithZFqtsS6xfHlPSPyuFkECQl4SoEJMOtheww32EdhNZVGGsBPlVAZqsJkQc+RU6aZwCyGIMZOG3ZyMhHXNTtGQTFSVOLgwwIbQidw3Xi+uWfj2k6u26oNhFyBBriDZitdS6mSt5z4V2EL3XrXt/e280q06itPYNavz5MNlQP0IE1MpS/iI1V1xn1vYlvpsTuwn6mKu0gs6PYOPoDMC6aHYQrjfYaYfQVDc/NEk4+P6KFtEKGxNDq5H15ObT+gQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcdd1a5c-cb20-4345-097a-08de85046fd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 15:38:43.5439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bcJwXS+MW+WR1SFEQsr1W4XpTpa+HX1WujmUaqxnbdSPCa0l6Om1LPgYNNREbFX4QEZ/Q26jk7J49jTpTor1Wz2yuj6J/hyHKIKYKGkDalM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6500
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773848332; x=1805384332;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9bAgvooKKzsR4KDfTNf05LEzxOXMOI7y3MhGBu+R5wA=;
 b=UXV4c4np3wU04aucKKGSJawMUWsDan8//ONACxmEQUEkGjAxy/3AXfO5
 JKUURZJHEKZ+/Tr4BnzRYmc0nqe5TXLYb8kY/MSV8DDJX1xR98uTIqeDb
 BWMaUSNkYT1nyuj4v0YpVGkYgMneABK9rJtbmADVZHl1pPR8eG4+ue4EG
 rcRgHJAhoP0iNVMuXy4xjAwmy1gJ5IS/t6tv/yhDJbOQFC7uy9TvbTHhM
 BhKUBZmvQtZpz3w5VGYey1seSpLXH6jYUbs1dRX07NI5eKgNMOdlvpqsh
 5GyMXfZMRJbjUH/45dqXdG2ZOQZwIDLA6broEFuf04s5crzpzVHz3dvzK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UXV4c4np
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/3] e1000: check return value of
 e1000_read_eeprom
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ade@amicon.ru,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: CCFFD2BE633
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Agalakov Daniil
> Sent: Wednesday, March 18, 2026 1:05 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Agalakov Daniil <ade@amicon.ru>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; lvc-
> project@linuxtesting.org; Daniil Iskhakov <dish@amicon.ru>; Roman
> Razov <rrv@amicon.ru>
> Subject: [Intel-wired-lan] [PATCH net 1/3] e1000: check return value
> of e1000_read_eeprom
>=20
> [Why]
> e1000_set_eeprom() performs a read-modify-write operation when the
> write range is not word-aligned. This requires reading the first and
> last words of the range from the EEPROM to preserve the unmodified
> bytes.
>=20
> However, the code does not check the return value of
> e1000_read_eeprom().
> If the read fails, the operation continues using uninitialized data
> from eeprom_buff. This results in corrupted data being written back to
> the EEPROM for the boundary words.
>=20
> Add the missing error checks and abort the operation if reading fails.
>=20
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>=20
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index ab232b3fbbd0..4dcbeabb3ad2 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -496,14 +496,19 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  		 */
>  		ret_val =3D e1000_read_eeprom(hw, first_word, 1,
>  					    &eeprom_buff[0]);
> +		if (ret_val)
> +			goto out;
> +
>  		ptr++;
>  	}
> -	if (((eeprom->offset + eeprom->len) & 1) && (ret_val =3D=3D 0)) {
> +	if ((eeprom->offset + eeprom->len) & 1) {
>  		/* need read/modify/write of last changed EEPROM word
>  		 * only the first byte of the word is being modified
>  		 */
>  		ret_val =3D e1000_read_eeprom(hw, last_word, 1,
>  					    &eeprom_buff[last_word -
> first_word]);
> +		if (ret_val)
> +			goto out;
>  	}
>=20
>  	/* Device's eeprom is always little-endian, word addressable */
> @@ -522,6 +527,7 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  	if ((ret_val =3D=3D 0) && (first_word <=3D EEPROM_CHECKSUM_REG))
>  		e1000_update_eeprom_checksum(hw);
>=20
> +out:
>  	kfree(eeprom_buff);
>  	return ret_val;
>  }
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
