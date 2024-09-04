Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDE796B622
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:10:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 780CC80D4A;
	Wed,  4 Sep 2024 09:10:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUAWpdGCA-rN; Wed,  4 Sep 2024 09:10:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B8A880D55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725441048;
	bh=OPatSVdDPeYmmy2MYhNjejCP+vPQH8wzWZkJYrobrAw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1sFIp/G9//WGm7f1ja1vwuQptkZwTnCPo39n8Q1BNseSq7PI4W81tXnbvQ4ONP48+
	 ktlvk9KFF+H8kmwlrE9NXZ4W+ZZ8BPh7LMpNzkfkENj5yDqDkc8quBlfR4rY/2QR9x
	 BXNyXdv+OuWKMr1bmP8Hug+bxQlL/1jRvrc64Sbr2KN7te/Qm5TFDRz4GBPMx1ogrr
	 xGbZYRsMN2SIzRbAcM94VIqy6pgscyzpaKMhhXJi6O4q6ioNDgwxpucZ9oQgyyok4S
	 xK5OyeJGZwHLAN0kvqFZmKTxSVVzmeoFAs2d01dtN8JuE2udXbM0CK56NPnmT/o8dK
	 C30jP5hBOye0g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B8A880D55;
	Wed,  4 Sep 2024 09:10:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 702571BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C8AE607FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cplK5x4HFd_F for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:10:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 86E346069E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86E346069E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86E346069E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:46 +0000 (UTC)
X-CSE-ConnectionGUID: 35uLAHdiRUeGvHcKFm/gFw==
X-CSE-MsgGUID: fd/WU/HwRvGxJ66vRchZsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35246607"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="35246607"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:10:46 -0700
X-CSE-ConnectionGUID: bSVyIYJ1SAGxvhEIfifn9w==
X-CSE-MsgGUID: 6mAcTH8MQzybbI2vNeeA1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="96002589"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:10:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:10:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aeb4d6VrYHkfgwQUhWwKRvvdtidQeGuyTDDl2QBWXeMA/V++BGJZ1tqaWH+QuYIm5/D8Dm4Ps5GCZGojIEUaQVSiUcUxFbf/xzScXDBbgcdZICmK02yyWdtBrwxAfFSB0UYewQ76EuCbhDG0qvkojV6wTXlG1bYRNHVDpIGuotYY0Y94jOdetBIWykZKuyiSWdw0RTbeJqtisEhaza/zJAnf3gkH1XEQNf21B7/9+ZHyxjpgJAo6h30auRW1Zx1kt/seZ0/BmxoOGWqVgHLnqpEe642rlq5NiFwTSf0/2BEQ7A3NcbPyiWlxMSq4fgPOcMEV4TlqKE77xc8WoTu6vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPatSVdDPeYmmy2MYhNjejCP+vPQH8wzWZkJYrobrAw=;
 b=bmzSRKDw56Q/11ayEGVCp5R2kIqQlumR00qOGkm9uGEc/gKQSFM3rr0Vl57EAK1fWL3ZfxtZ6352tzNha5g0OUgDj9nKEIckf60Cz5vcrtDn3IwIx64NMHg2jXT6zjMRtwps9ENVrEiz4/6Urhd9JiRQ9WxCUONzQnmvgMbKFdWlIpPGY86L4XGzYlNJuF/9W0lnLWCwKqOre99tf9myLY5MKVAYCMgzkQSR/A161L8BHOwCwf/oG+VsDHh4WWZo42NeciY0r5gYvBepqb2JcldPGZQBu6yoCdNCag1eWxOngN+024kyoX1UPfC6Ld6xiyvK+LBelSifjJXr+DYNtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 4/5] ice: Use ice_adapter
 for PTP shared data instead of auxdev
Thread-Index: AQHa88vH3TT9ViMRk0SitdYceNJxHbJHRblA
Date: Wed, 4 Sep 2024 09:09:36 +0000
Message-ID: <CYYPR11MB84298A8503A906E87E35ED93BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
 <20240821130957.55043-5-sergey.temerkhanov@intel.com>
In-Reply-To: <20240821130957.55043-5-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 1efa20b0-e4ab-4b68-1a3b-08dcccc14c61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ieq85f4kMe7kEQ/OEZdrbfCClK39AKrIj2Ir/ymkCwQVUZWl7CIWgzABH3kM?=
 =?us-ascii?Q?PjsHQeH8KLGLtYoWt73wvpElxqZN2wkh2v9ZhnaTZIvI3AlWURM8mKzbpzYS?=
 =?us-ascii?Q?gKfbsBQo9CdJUJIQPB1CSuAV/VdaVAUdjXYFg4/IxuvIMRwQF06gyTLZvZ9l?=
 =?us-ascii?Q?vcX2FT3ka3kSLOxdkKtrForl71YJCyqqZAdghufbNSnJ5rqChE5ow3bgXLTv?=
 =?us-ascii?Q?ryUPT2Yo0h7FkP7y5bvIBMgBWxC+skqko7rXOx151id3fCQBxv2omcUy9OBo?=
 =?us-ascii?Q?5imVUKRgFrJRgBcMVi/wkIWYnAY24sigk7EAlydWzWZ8+6sTQN4tjRWwPclm?=
 =?us-ascii?Q?2DYhrXaZC5PyzlmPn+1EBVHtZ1O3aTCwFdph0Su6gcRNo9qe1PRa5HxrMiDz?=
 =?us-ascii?Q?EsbGIP8m7U3LE9ZeAcTh1RO0LmPvnA5Mv9NbgcI/fM1W4pnbPcvz/xphu/c7?=
 =?us-ascii?Q?RwnOgwh3yLIKRPhoWoa2gb6Qp9MCPJ38zBBxGhz1CVp+gbVLLyCOUjSZnewW?=
 =?us-ascii?Q?LRa8kgL0QJgzqwN6K1MhhAPliPQWwA6a9Y8LV6meC5DlpQmFoYPVPM7bEjgg?=
 =?us-ascii?Q?JAQ/fATjrOmuViKKMJdf8HpOXCOaoh6FxLIwa9KAfyQSdvafWcMKJAa2svSO?=
 =?us-ascii?Q?5oQrNG9rbXLAo9qek1agQlhlYWOYxw6wefpRhbBhsEfj55eJTmlmAsfEcUSd?=
 =?us-ascii?Q?uFUYXaLcvTnmL1gRuoTUU9rjW/TI7l1Hn3NES1Gbh3+zqOlWUH/u9EThZtXr?=
 =?us-ascii?Q?VMNUFezY42y1js6lbT9fHGr+HaccAwVCf43iuoEJQhZKRlgZO9lfuiBsw5GU?=
 =?us-ascii?Q?3teLKXVx0dtxMfwB1zP5TPIdhyZzz/A+j+ZLobussEbAJIYsy9Fcs/65OxWQ?=
 =?us-ascii?Q?Lc5hs2tKA0yLpntE3CuDoljWbLyZdkZofXQQbmvi2GzEDO2b3WSXc2lsUeWS?=
 =?us-ascii?Q?mN+Sl2BAv8eZE9D7U4OhBxN2wU+THh6wAe8ChRe7uYF30ZwMy3sM2fJ69ueF?=
 =?us-ascii?Q?n+r/mZI/tGBUlQv8k8HLymDSBsrmAuFpFxyn18g7j8yhm3QjIt0KiV75GH8i?=
 =?us-ascii?Q?d3mTE9PL3naKVMljkepLpX42DY7fPPAHh7EgMntCWBfzcLgFqSHTRcM0JkoB?=
 =?us-ascii?Q?sLZAcK/9SKg/Qo0+YmvThCjKkfUgPTXqECSBwB73aKZWZai/ULw2zXWrOdvz?=
 =?us-ascii?Q?11W/cvV+kTZDgi5fQrHhb0jhWZuC3ieEtOQXIa3UIaGas1iy7pxzTWJMTqR+?=
 =?us-ascii?Q?J1XBgvg9HaoNLCZuuWEdaoeuglxMTc5oBUUlAd9qFZeV+MO3yjyl4sO1Y/bH?=
 =?us-ascii?Q?8lROTr8EIDD1KYnYMqKQzFARknDjCj3+ani0TPSoz3/tYn/KPx+gG+MwIadd?=
 =?us-ascii?Q?NPJh6GNfl+4CuffOqO7bGN9ggPF0myzCIryuBvDDlfFZtVVG0Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FdQ8nhCZpqf0Gzo62QELsJ1qN8gkceGsd0U6YfS3hvqrxQ42OfDO1mASc9Z5?=
 =?us-ascii?Q?+7Pdm0vVAaxOonmWnsHz1DGA/Y79opeI0vHu31+IDKh+XogserfJS9EMXmiI?=
 =?us-ascii?Q?it0VEtqTRCCWJO0KC/pJQK5W5IT9Skz8wyQWvKv/u37km0HqgKOUDE+Hbt0o?=
 =?us-ascii?Q?a0huoUnWyEuZxKkQ8z2McwzDblLvCOtDariM39HTrrisTAqzMlTiSgRfvYg9?=
 =?us-ascii?Q?7AMZdyUXZtRvxz9ZDHqBK+W1VfVJ7/dpa47LeNZ5C9ZMGNerkM6n5ORiOzPA?=
 =?us-ascii?Q?u6Hui0kmjs3Oh/Oq08f8On+9IOFRhOQ+ElGIOZ0wxHrdi3/mt3kyWE/fjzpm?=
 =?us-ascii?Q?N23kyKPexoSgk9C6MyU6jUwNmiuIse5WodBgYvFmKK9EgRNXkccVK0oWiEzR?=
 =?us-ascii?Q?zgdDrvnVO3xClfG7E/6TLK1GvtX/Iljk5lp1YPamVliIEi9yd+GvZ9q674cN?=
 =?us-ascii?Q?yKF6ITYRenr0mkPHrr2lX1fjTHAEwGCtqzRx1Lb9i8hwkfvF1Rv2SDEWHPxh?=
 =?us-ascii?Q?GXLuEzd6+i6o9Q+LSRfJrs2XALhWDQV7BY262LkMJaWXK9s1PoB1xLWhNydK?=
 =?us-ascii?Q?MDQnaiu8zFv3GShiJGqIxpy6wkLmza021Y8vo76soB7BMcSmRzHYktX1IsSf?=
 =?us-ascii?Q?iOLJjpTHOzByRi4Dkb8udhP53EMdRH3tzIMmC+H8Hzm2Qmr/XOkXNnXU/GwY?=
 =?us-ascii?Q?g8g+JhnM8RU/u1VczoklSA+UTJMMDvzoY9+jWN/hyWgKOi2sTkWjQ6tBqRZ4?=
 =?us-ascii?Q?lBQarND/FmWMep1xeWNUSjKOk5AIJetPk8NFzDJvm7b1CO68f4aE+3IOw6uB?=
 =?us-ascii?Q?n2PcmaU2ZLgftfY62mcEkku1hhxYz47EQEewfnCOt8d+RBCKPGZDogIVx7K1?=
 =?us-ascii?Q?n1bb8yRz05xRpNc76CN8dZ33h5iLBHZonleIaSzposXmiflX71cVDqsnBqpQ?=
 =?us-ascii?Q?N6HblF6xW4u/kmD8G9WYq4oysNpq/XCfQ1pvDUgknoi16S73lmRdZ7OixCBN?=
 =?us-ascii?Q?pnnjyfmhkcONe7I+zO3zx282hxssXi6A+DEK+w1H/2SeAJIVSi3GTPGFUdKl?=
 =?us-ascii?Q?ZR9gW5qZpWP/fWqcqDpYoDNgNXydSwErehpsNRrSyVoG0Tt7K6MdBrBgfkFA?=
 =?us-ascii?Q?/vhi/s/jfP5wBG9y+YARs9WgQzXg0lhNCyRgBsmJJyE2lKAx+mN9cRDT4gVT?=
 =?us-ascii?Q?cNFxEkO5Ihpql4jmnDjye95iTyP4armP38/lmCuaC5TvWQjbs3jljncAHhfE?=
 =?us-ascii?Q?8j4uP62nQhj6c8N3F2ukZuGJjcsaudZgpL17c7BqqdgC9fEHeUeu94ymlNg1?=
 =?us-ascii?Q?zkfVZ0iLmKjc/BYj729JEJl4uybsOYROkFYJxrrWB+0zBFfGz0NDvdfxhVYv?=
 =?us-ascii?Q?wLxPFpEZcCrcXlQFNuzq0MhLcU4/9gMn7bK/o02TPFwIjPO1CZpJ2cVmWVNZ?=
 =?us-ascii?Q?l06/M/NZceLIMCPSP2bHA8NtQkaIXDypMD0bPlhrMJe02umNcUKws6n+DtgP?=
 =?us-ascii?Q?A/Kql8VUbZpX7Jjmlc3DXTckal5hlEYnK08w3II/Q5Y/nQb/LXoMqy6y2mhR?=
 =?us-ascii?Q?nRkuv3R+Pzz6Y2lzmnkbNYKeyz97pUYijvV+IZxZ7B5umHNN8Ujgs2giXnwV?=
 =?us-ascii?Q?Sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1efa20b0-e4ab-4b68-1a3b-08dcccc14c61
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:36.1416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bw4oSZaq6BjT8fVcc6cfwTXof22BZ1c3KEDJLNEi1Jq9b2m3Gj1TjbYPFnzZ8sCoRaF3MIuF/Ge3S4XMPVQv4KtDPTZ+AUM+1BlgAbUYaU6Wio+IuAhqg4CChtQ6eVCk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725441046; x=1756977046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aB8x7IRHLqYyK66ZfDUbCfWOfPWuMs0hOi9g1+szceE=;
 b=PdxjGE9GxQoc/2JxVEe2GBGZ2sKRAKlFE5ycQSVtitSqa+koi6WSFkxt
 a+XwSfK6NwOjWMwPF2nXpVIR3Lto5IUZI2575Aen5HxvQCXoEk7RUE0xQ
 OUgGfaLxUwiVDIE9xZP0LIyd+zjskNK3+fOV689Q3hTSw27aoI0xw7uq9
 51AlfjNV1gkgWeAlsUsp4WN4xVlFsHO4zA3snc7JeH4bCtAtd5/Qq4q9q
 hp+Fl8VwryM4gzUt7oQ3relXFDVcTlQLuSxpCaKVSXQY5kC83pP0Peer/
 AYwRR4lRBq8aglLu5WEhzDR9hWVgXLK7fwfyH1YBJRgZE08o0SPIdwX5l
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PdxjGE9G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 4/5] ice: Use ice_adapter
 for PTP shared data instead of auxdev
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Simon Horman <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: Wednesday, August 21, 2024 6:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Simon Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.kit=
szel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 4/5] ice: Use ice_adapter f=
or PTP shared data instead of auxdev
>
> Use struct ice_adapter to hold shared PTP data and control PTP related ac=
tions instead of auxbus. This allows significant code simplification and fa=
ster access to the container fields used in the PTP support code.
>
> Move the PTP port list to the ice_adapter container to simplify the code =
and avoid race conditions which could occur due to the synchronous nature o=
f the initialization/access and certain memory saving can be achieved by mo=
ving PTP data into the ice_adapter itself.
>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  17 +++
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 115 ++++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |   5 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
>  5 files changed, 105 insertions(+), 43 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


