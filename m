Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FBBB5706E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 08:37:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F5156F89B;
	Mon, 15 Sep 2025 06:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zaZGZ5yxrC9m; Mon, 15 Sep 2025 06:37:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC9D960AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757918258;
	bh=3Fi0xPASiJ0l16HQcV4ZCwcnT3D237tQVl+sQJ9Ue3w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=huiLVrhOzbY2IfUD/j+0m5GQdYL5Ywu3O/RPsWILrLQbXzqHvgsnu2wP6GqWcGIJm
	 Jmekuwhvp7lRdoSHeHG1WSHRJQMjm5tYh5epQUblfg/Dq4KZHORl2k9FHMwjyoYcLQ
	 Bt35b0rGZI8z2owy/w9Kj/D6kF7R+ShHQIqH9SAZSjNa3AOEqn7/gHjvPNBnkG9O7D
	 GSLTWbI562HuxWRVpaJvz1BfEyUQlbP/Yiz4jmRotB1ws7Z2H27yKtOopDPN7tj12j
	 QqnviC26J3zbmgLWXinwWvylD3qS2DzrMwZt/BVnLgmP8m5QoQrOk2WxhNga99rBPW
	 h4w2ug/01eD9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC9D960AD3;
	Mon, 15 Sep 2025 06:37:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E71722F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:37:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 806596F896
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9Oo0qlk3wwl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 06:37:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB52460AD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB52460AD3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB52460AD3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:37:36 +0000 (UTC)
X-CSE-ConnectionGUID: GisMaQXQRGaDsHqGCREG6w==
X-CSE-MsgGUID: zCtMRrhaReyaibfXaeX+GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="59204799"
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="59204799"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:37:36 -0700
X-CSE-ConnectionGUID: HlUPMgKoTBSgWI+dbakkkg==
X-CSE-MsgGUID: A9pLUIpKR+OElQPEQT32lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="174350369"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:37:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:37:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 14 Sep 2025 23:37:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.63)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:37:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j02FI3OVzr8f+eRfrBFzV1JZSYOTtNrda0Ew254jiA+LRjg4ZnEnVSf3eaKdVOlydLkd6JXl3CHoRxD9GGv8AyvskpHnJ+JnCmP39PwtEiWH8Miu+hdlISI+BMMLxtHLWNfh8bxfOyByvQK3gMK7diDsVM1ZXAI+S6hmTAPjbxUCq2SiovfyFgtbTsHtPY40oNoz6ETdLtHMqxe3zowkvQ8ugtVxFiFz0kiDor8g6qZYtPHRiW4UZl8KZu7anIX/CMdluKXLa232hhxg2C0dy6Uv6F2+CfUopCGN1Ox+WkvwX7vuCjfx83VDJM2Rd8kTwOj9NkmedgDhBnX6ilsIcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Fi0xPASiJ0l16HQcV4ZCwcnT3D237tQVl+sQJ9Ue3w=;
 b=ECZbq1Orx8t3A19i+C6AUHpK+8nNF9TpagVS4XPbAuU6WkUvtuFWy+kf1tPcPWz+2J28uygWrygbiwzC/5eSYg6eJiYCESGqNLhaCtP985dnlWd3BizbsrwJrGOf/qZcvCCTNveKaAI2M2erq9LW4YZ2gGv4F/GMBEDw+UhTSCZBxklbPI8MTncJIKHCh+7i7fPKHzNbPdzA0Zt1D7zmwZ2jq1xuP1BRvQIKWStTGkj5MccA/012zhsW9zQ17sDNWKtDJink5L/yDx1336g1Qs4xmnDuKEK+URt1gGEZWMOgVIbVb+GKDsVBSCPd20kwDurA4P/ILgJp51INeDcl/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Mon, 15 Sep
 2025 06:37:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 06:37:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 9/9] ice: remove duplicate
 call to ice_deinit_hw() on error paths
Thread-Index: AQHcI+ekXA8sP2AbOEaSvJ5tRXwt5rSTzn5A
Date: Mon, 15 Sep 2025 06:37:29 +0000
Message-ID: <IA3PR11MB89863561D9EBB976DFF2550CE515A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-10-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-10-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB5803:EE_
x-ms-office365-filtering-correlation-id: c116ef0f-2558-40ab-7421-08ddf42257f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ZX8r0ED+N3Gymk1XRE8/nIdSeuOYtBxH5WczJsDHJ1QADRBMKKp9PEOC4nov?=
 =?us-ascii?Q?nbb/KSVM3KyX4qXdpH2OqBDDOKAJUzP/DUt7q8aWcBF+wvGbUNJxmL56Qmq8?=
 =?us-ascii?Q?tTOBdwx18/BZ09OltsAlgOpA7RFW5WMgBDa7evu4LWdM/Qew2O45EZZLyI0a?=
 =?us-ascii?Q?vHfoF87Qmkb/8WBm9OpTMGfzCpmWG5vchOnB56qRYn2h2F8lYkQGcYATO0CK?=
 =?us-ascii?Q?CA0ZtmLGXeJ+mvFhvU6iReVp7uvTOwVZb5holj5Tcr7tWspc6WG5c5R52HmD?=
 =?us-ascii?Q?8KBlF60zG1il7Pge27aP+O4DHhEYSN4ErfSpVx6D0PZXXy/dxtXGsxzkZdpv?=
 =?us-ascii?Q?x5vcW1mezcWdnCnfyoKE2DkFoU72AVWqrvjZvZ08oSVxHCodXYWgk68bOc49?=
 =?us-ascii?Q?fTqFnwB4b1cOPOVVNoHxQN8GACXNOVne2siSgBbCkNrIQBUPZ3PF3/kV2Afg?=
 =?us-ascii?Q?FOwLFAx+qAR3hDgodoiFXQcfBJ98GTV6UZ8nL+JhOkzvkJes8YvNxEd22jTJ?=
 =?us-ascii?Q?Zoy9J0O/kePqeWkQsL+ebj4ixu15mBYWQhqa1Hj2bE3eebXNSh+LgnWMT9fx?=
 =?us-ascii?Q?sGU3Q4SFBTxTSHihv8RTt9h9Js6mIoGUjkw3Lv/Ec/d5lQgtR+ozbHiWn6zJ?=
 =?us-ascii?Q?NGpoKjYu1NaIMcABM6/knJD9Ry/PLKtVxJtx9cPwmNaH3IUrovIuEkcvXQbL?=
 =?us-ascii?Q?zEeXOijNCr/pD8kn4a6LHsDqxrkyPj4rkjTg0j+8/C3s+oj+tjfKd3n0SzPy?=
 =?us-ascii?Q?0ZJMSr0d1UmgAePnaoyFB9eJ0tPL4mZlbnV3akjE5gO3DVab8mL/8jqWF70l?=
 =?us-ascii?Q?5SU3ATpRYDU8UgGpafKYAOcqlzvgnCyeHjzc2VaBcqbWpDX8UqLOStcSvA23?=
 =?us-ascii?Q?7Lu2UTkl7Eu6bVH/NOK3iY+bfnGsZ2jqsHG+BpwHAHKzb5bmoGJ5M8ww0djF?=
 =?us-ascii?Q?btq1fNRD+OxB6Jon3x+w62fWoM3ROmATcojrw3DE9o2rl6kj9Ix8CXHNQp9q?=
 =?us-ascii?Q?YdXhgY5QapR8LY5kVLNxQXaRcAWIM8p11V5clXM6erQ/U1+wD/8LX8Zw8rHk?=
 =?us-ascii?Q?Pt+iNp2oK1mdAhWVI9bK1eu96akCf87LWk9bO2ZHmwWsv1b4Dws/RJwAG1Tg?=
 =?us-ascii?Q?7zZYCmDdlhmCH6cgw3Daztk9hz8MeqNJTlRDfsGDmD84DFgCTN2Mlz0qrzom?=
 =?us-ascii?Q?WiNiA7/+Xh7oZ4rAZE2Qjk0LztV2/hOCCCCon67ykdjQjUq6G5j96g0GTM6F?=
 =?us-ascii?Q?rYxY790WjL3In9aedpqlxNF8EN6vyUoVqoi2vyR8OcZRyMXQH/qvdMUjagac?=
 =?us-ascii?Q?jOcjrbaMNQnPsh8U0G0NoIl5hURYrcNdQ5ygZR/qHL44dz3aKMVz6TehSLDO?=
 =?us-ascii?Q?s7hfrEl53O4pOxVVXCnt04+PHJIoCrp07Foll+KSBUQYJHIT66p9rsuGroS8?=
 =?us-ascii?Q?WQFccTtqp+XUZYPB5AvZrzNzll7ACQZCw+e2UaseAs/c82mGQwvE6jujkQBk?=
 =?us-ascii?Q?0O4BecVleDqM6/g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8kePWeXCkczvOUxmTIXb5kql8erMh0X8xuayob9l7g0Y9KFLFxWziqyRYc4f?=
 =?us-ascii?Q?Wqg0tYpjMGboqKIrM5uUHtoemD7kzPyUY3k0tkHUfRzfA3fcyYO7vJdJLpdv?=
 =?us-ascii?Q?i70I4d0aGh6V9EZ42Ssc5qZHXPe2IFNjLqWLg6K4JqKu0S9UCqehq/+sWKK8?=
 =?us-ascii?Q?Pzu5YGOkc4GmcEA0YkqnoiPC8bQOXzgJG+0j23PhUuNTgPLEphzSlr8W+ejE?=
 =?us-ascii?Q?OvysfdNhPMnh+yz9L6AXij66H/tpbenOqGNGLGknBPWjxPA6aq0NUUUZf0bI?=
 =?us-ascii?Q?8YrIHpLNi+4aQjoJNfzZUfKKRbgO+JSLQfc1fEEI/DpWifnByOBLtUJtibAW?=
 =?us-ascii?Q?AtHZdYNxojYIu8TX7gzWXOdry5gQqTAh/d+hCGGxLECWGRMBVpTnVAMdNcS3?=
 =?us-ascii?Q?IP9rBB8Q8uUDpBeiymzxmNfS/tkF/+2J46zhMCollyIA2tGc4DV44VVDiThy?=
 =?us-ascii?Q?gt/6Z0BEh8m2ZDhVBDuSI6NktOYfxAuCr5pU8CVTXwtwqT35ulLlylMmpru0?=
 =?us-ascii?Q?nGrOXHRKq3KSkH70gaE9vO0vEzBZTeBlwmY+QFMjWgOWqR81pI2/RpCZ1NDS?=
 =?us-ascii?Q?aXGKEzjYWkyHl2HqkDks6UVFVsBo683rW9vt4ZIafAChCjKrLByqw1SO8LkC?=
 =?us-ascii?Q?UG/Eg7qBWQbi2FYfiGgXj4NLpy+DIIvHyOIyNUlJWO+69H0FoUCz0558AnZF?=
 =?us-ascii?Q?vvbbyDPKqypDSwJDf3ZyPfWwBeN6b4nl7P5PzXb9BDmtKXU9258z4+JBbBBe?=
 =?us-ascii?Q?OgTJPOZNg6JWcyVqigTSboJaQAJxeXRiFzGHbb9qE0MQ8g6qDq81yJgyyv9/?=
 =?us-ascii?Q?+KG1W3QyARk5RmCVimOXKD4DZLXz8jZoCWoK1xJ+ZK0mMnB8JLtzbddB8Na+?=
 =?us-ascii?Q?pZJsg8ixhpXTSrJaajX/uAxb/15RzXswnHdiW9eIp4cv3+NfoVr2Ua/Rewt+?=
 =?us-ascii?Q?umAGM1E8s8JqqUlbPx8PzHAZAbpakHKXeZwrL2vjihTEHjBp+Ouc6/BCdDoC?=
 =?us-ascii?Q?28uu0FDExajg5BVZcSzZwFXt5c4b+Z1GwEvgpR2PRhxvyl5tc1Zgaec2GEvm?=
 =?us-ascii?Q?+rpy3WcI5zmnvlrXvu/WL5/atclF5wUEzpk61gaK8gmRDR91yrPJe1ARvl2T?=
 =?us-ascii?Q?7/WarNfo3Rl2SKQ7CBmElfWt7Yi1/PuthU5fU3LW8RDLlFD/Ur4Qnkcwlizc?=
 =?us-ascii?Q?agiT7VyEHwXRezq62vwEodoBYmjZP8+8yc6HOIQPsekA88z6SY0QQ02HPdH/?=
 =?us-ascii?Q?VNSQhweroPXmFADOfgJG/VYy6YQdzb8jY2meiKdSOZSANbl71USzc2VZFwR+?=
 =?us-ascii?Q?jwUwp4QbzMVfMLG1zs3Rtnvn0eXi3JNRNhhBnsSrMbQBDWl39el008ssNUPq?=
 =?us-ascii?Q?R7QbgD9tNpEf4j74lfUHumN9k7VkmQ3qtgqhCbrps9av8KNI6mY4dQAu8yRN?=
 =?us-ascii?Q?k76pRz7cupQCLlAIeJ64YfH+79p1/al38s7VeFELLqoRz7XUlbT+wxA1cd0b?=
 =?us-ascii?Q?b6I0m3kGE3UVvPKMJmCWmwjG9HYre1FGLb1fH8+X7NvzRNwMxh9NxJ/RW0oc?=
 =?us-ascii?Q?ZknZ/HeKziFx2ckqxgIrjmL+iN8TD+ZdBak6b4rVIHi6oRREPBV0W7pX2gAL?=
 =?us-ascii?Q?+g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c116ef0f-2558-40ab-7421-08ddf42257f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 06:37:29.7650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3ptek8nhCmUdzSSiOdk6Up3WlunFKyKSMCTCKipjcbuMCUKhqksV5SQk1Y93WU5U9VURiEtCueYPHKzCcWvsT11sAKfamNob3RXSXJTPRu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5803
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757918257; x=1789454257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1IsjUzvrpkD616YrzxrXYIDc+o9c+MGOp9u2urYqldw=;
 b=GPQfu1+BP4ztozvXHk7gwnTxffc+AW3nzJXVDzLwuir5dO1vI8Hz9BNP
 7TOO9Lah3aBaMsJeNww+aXIksoLO5Eol/PLh1WzzINRBDfd6y0aifSM9Y
 JQ9suWmDRNoSo/yIHCgJ8eZWQ3BpBl/zXdI3fous/wMOsNmB4vBYC+RuM
 p3IpLkR2h2iUYOhGSR5T6P0wK7pIUYrXdoImfi996gbaD2IVVsDU4YRQ0
 ZB8j/vk6m/0FLQ46+ztNYYlZnEs2PLC4nxdFUhgCjrgZ0vjDHePJE0MvQ
 kNwO3llwpvlWUE5aO8w/hkQ3yjT7xtOzd7pTxS5/uuyRoIlWBavAyqm3f
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GPQfu1+B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 9/9] ice: remove duplicate
 call to ice_deinit_hw() on error paths
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Przemek Kitszel
> Sent: Friday, September 12, 2025 3:06 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 9/9] ice: remove duplicate
> call to ice_deinit_hw() on error paths
>=20
> Current unwinding code on error paths of ice_devlink_reinit_up() and
> ice_probe() have manual call to ice_deinit_hw() (which is good, as
> there is also manual call to ice_hw_init() there), which is then
> duplicated (and was prior current series) in ice_deinit_dev().
>=20
> Fix the above by removing ice_deinit_hw() from ice_deinit_dev().
> Add a (now missing) call in ice_remove().
>=20
> Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> Link: https://patchwork.ozlabs.org/project/intel-wired-
> lan/patch/20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com
> Fixes: 4d3f59bfa2cd ("ice: split ice_init_hw() out from
> ice_init_dev()")
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> This series obsoletes patch by Jake Link:ed above; already removed
> from our dev-queue
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index c169134beb04..6b197d44f56d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4815,7 +4815,6 @@ int ice_init_dev(struct ice_pf *pf)
>=20
>  void ice_deinit_dev(struct ice_pf *pf)
>  {
> -	ice_deinit_hw(&pf->hw);
>  	ice_service_task_stop(pf);
>=20
>  	/* Service task is already stopped, so call reset directly. */
> @@ -5497,6 +5496,7 @@ static void ice_remove(struct pci_dev *pdev)
>  	ice_set_wake(pf);
>=20
>  	ice_adapter_put(pdev);
> +	ice_deinit_hw(&pf->hw);
>=20
>  	ice_deinit_dev(pf);
>  	ice_aq_cancel_waiting_tasks(pf);
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
