Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEo3OvGRAWrTeQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 10:23:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B9050A06C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 10:23:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 366128444A;
	Mon, 11 May 2026 08:23:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ctJf0Egj0l2K; Mon, 11 May 2026 08:23:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAAEB84450
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778487790;
	bh=fc2tO/W7+cOxaAJ2WSaExKZaxKf9ppJMEhJvc8b/Kow=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6vzrIrubL8dMJ7EORlfniizpSwXvrA0j0ThJny99J8VQVrs65hs29ECJuLbxYSCVK
	 6xpcFw2s37IxQ3lzYBF4i9sKLjwvQMLDHYLGeZ1oisnYav6TLXZCRgy8hZxkNkEpr3
	 fsr+gspNQlQ1PEaJ62fI90zPExDhv3GxGQQaA0zXilh0Jjm2HT3/EihKEBFO4nBFnk
	 u/3xxf/jlQBANYEJmM4wUlVlaiMfhGCosjMJPQU/n/Ny1N/ujOxdpq2AOFPooaQICC
	 wO59eNzfNW7Aunmx6LZ71WmOEkO+d6oDtTHBspId+5tkSkLNFcwlzgj1vA9fSoxRdu
	 30B2+jmRjfHYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAAEB84450;
	Mon, 11 May 2026 08:23:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E55A173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9015460823
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:23:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WAIpknQ6wobB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 08:23:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DB988607C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB988607C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB988607C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:23:07 +0000 (UTC)
X-CSE-ConnectionGUID: tMexldpmScO/XiIWZa6h/Q==
X-CSE-MsgGUID: dhZThX5MSZWsJEGGiuQQkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="89952557"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="89952557"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:23:07 -0700
X-CSE-ConnectionGUID: n2VgnICgT4ud6BGiUrhNaQ==
X-CSE-MsgGUID: brd4XA6+TOyLgdI0dHkWsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="232906163"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:23:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:23:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 01:23:06 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:23:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AxQLZdMButNPxm9y05qExuFvAdjfaJa+eLoFLsISObGO0EAP3gH5per9+EMYPWEexTRfr/eOda4545dYYZcN23QCxY5m6rE9RjvIbs4SvhEgOmQnKkJvldxl5m3ChcqiN7MbFj+a/oxftnltNPHYARUaPsbJOgcX+w/3NxZrPd/OIH94i08abzG9mSshXpa1fu400wiHjse6k1kUxzc4UlHpAC7bxa46HYaX5DvyBOobXJmPyx9ig94K5j9EgfYdUhTzra2IZM3O+PEU6/eAWkFVx8ayB61DqbIO9qeAcM/0KLx+KAMmzX/Mc7HwvEw2TD0XjoKTSTWnXE1f7LVbdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fc2tO/W7+cOxaAJ2WSaExKZaxKf9ppJMEhJvc8b/Kow=;
 b=L9rr5NBsEZdP1jFX/50dfxzWaYZIKtgIQqvyXImWpfu7NHsuM3uIozcf4pSoBfmsWDFL5iyQa2J7gAxxpVSEOWyz46+UaFLEV548OhofReWOzdAb2zcc4Vvl7upiFp1t9AAHi3seI+CG/hKfm9XYG09qb/AjKjONIBSyyyzRigtgv1vcWjUmlcsY7Z6V+NO3he+gL+wH4wsAsvoQj0p5AOdZDthuXEDcCHfar6+7gUYhN73QcgoGVxbIuZtIGWMl3oYR0uHDDSRvGsbXiKRA2weATehiSR+XvV/zk0gCYxx04FOY4UumUhXVQSNg4dsmR6wydWPRt5ctL4IJQlpk+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH2PR11MB8816.namprd11.prod.outlook.com (2603:10b6:610:285::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 08:23:04 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.20.9891.019; Mon, 11 May 2026
 08:23:04 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Kiran Patil <kiran.patil@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 5/5] iavf: return 0 when TC
 flower filter not found after qdisc teardown
Thread-Index: AQHcyxeGkq5hOcJbGU+fsqOPo3AIlbXgKDqAgCiAUNA=
Date: Mon, 11 May 2026 08:23:04 +0000
Message-ID: <IA3PR11MB8985BC9EE7E5ABAB7D90A8658F382@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
 <20260413073035.4082204-6-aleksandr.loktionov@intel.com>
 <20260415135315.GK772670@horms.kernel.org>
In-Reply-To: <20260415135315.GK772670@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH2PR11MB8816:EE_
x-ms-office365-filtering-correlation-id: b9123342-23de-40d4-c650-08deaf368601
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099003;
x-microsoft-antispam-message-info: Gbuab34+9cEQN2DpkG1GWw+iEfPyelwxS9dgG9hmu/sc1J7FNRZfdLrvNWuc7PCgD2MXh1F6xKn/wVfEnSF6rOfzcMMlHkgFqulnSoKJLBGVbXXP7uNP5xMK+N9euZniWSPFEP7ceKQ7g+gDDyilgFpGZPa0rrBd2NxT8V+lK/hgyIDkk0PS8yNq2YtkKY74QdUfw6SpSC32HbmxyHkaseQwCL1VbnrvO4M36HCy/AZygA4rU0bYTDZbuHAb9Y6Y/bwItuDdlyB0TMcxpPkhZkng91WNSUoAwSYYeiShb2hYdUQhxEAzsu35jtnDRAkkz36EI7kx5ieHeZCYosm7Uzcyga520jsiKn64QAm6H++DFhQF86zPBAEI7Uvy7yIYJY5Y+QF5p+CjdRh4/NOzT6QFahttSGcBs9zXHzYI92ZlGhcexwWpSACxDOMvKpQnOuuOeRdnU4fYozvGEN5euYRHSGePOc03vcroBH5qXXCCBREl/X8dUSrkKlZAVyntSXTKTCa84F5RjmpwWa46zy/CagNcPSFsHpgVAfv13qDfm/Pwjw+/jxmSX7ex+1K9AioIc1dZl5Ae5KaldVqhGgbuLbGwU+csnb42crVZ2akOjLOFHLDXQ8N+ZfRxoN9+bSOt7OU1lrVAj+OBuBFonQFvkRJFbhecIN8G/QuD7Jha5jy36/1TJVOYX6ofMyMAmMI9XcwgjR3K7U8QqeLkDpO4s7Qv785sZIy7kUKi4PDZq245yxLZi5rHzKvU5Hts
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8tqW6sCLQYVSW/Yp3Z/HQUnN2q3hn/Bt40tjLLfZ6zONspTdxTmcSOcUJiRt?=
 =?us-ascii?Q?21bfcjffX/UN54yrCpf4M0fly01lzTFFY5U+lAK8rFcqayph9eMOQ5jqnabW?=
 =?us-ascii?Q?3zIcyjp5atA8VKcCsAUZh+Dsr3GhVwsiRnZGVPx37RQPB65bsrn3e0Qsmx0h?=
 =?us-ascii?Q?5AJb9Tu9SZpHF0Sdz17lPL9YQWVR3pah5XPEQVQU6O9GyVWnzTj2ajA8O+Rt?=
 =?us-ascii?Q?c3cBAGET7ZdB6SoNBz2y+nz0q19I6ZCkAeuX6SVT6zpHRuF1q4o/Lv/Pk+1X?=
 =?us-ascii?Q?bA/MW0DRVJyYjeTt5Gtibxj/xYtAhIfZPHtjS9CLaoB0EjqW9H3u2sjzqh7A?=
 =?us-ascii?Q?WbGIeep2xxxu3tiNqlf/tVIeqk8NhdEs+6rvq5azV6pDxSA/1L8LKiN6Pole?=
 =?us-ascii?Q?xbwCO964kEaPyS9voPJ/Cz9BCWglnu3eGH2+wvxKJiqKUdIJcVdsbdE9Z/Kc?=
 =?us-ascii?Q?uD3J/acaADNaSH1VoXEq6ExIYwzxBArDO7qp/qOETxIrU1eSTxefWeyWx0c1?=
 =?us-ascii?Q?JnZNT00jSl1nIUs85Z1EZsQkpP4O1a/fWiRqKkqEkVuToyuKdt9EKaPrd9SH?=
 =?us-ascii?Q?uMveSaK5GsOv0+VnViX7yBuBTeJmCRnz0AFx7TAGMj/HzSgg2+j9egru7WfD?=
 =?us-ascii?Q?6dgS5wfjGeNS6WhOclDGrB3bfkXnlmi41eLSqRoquNfXx5IVutPcWhrEOLge?=
 =?us-ascii?Q?ymSKVfCnStU9go/RMAwW3s/ayneT45/OQhYEZ0Nx6s6dy22IrUstKix/e7/Y?=
 =?us-ascii?Q?pNA3fvHj1B9Ew8VgZN7Vni2WLRjJTqw1SsthRi9E5b4VG2e2eCXYdP4LNBfh?=
 =?us-ascii?Q?znDfwRL5mkoCOYll9Bo7fWO6dVig62RGcIxADamvhAwhDW7e9gE/1E4yu8yd?=
 =?us-ascii?Q?nI/QbhgJM1lPD64cJi6JA+WKOntNIsFajpS+IUijFmFZYLjLDtOXz0K1qcGl?=
 =?us-ascii?Q?hgYUSeq2uVkAtYiIrSSgzaOIi6VoCT55S9gllV/K0wGwDoKXiRxzIiNTgF8d?=
 =?us-ascii?Q?sgR8cwKr354JlA38To9kDXHBlIVGCAx/JJoDGJb3ddpOL3IovjN30dbPeeOy?=
 =?us-ascii?Q?txcVnKNaR2xvhY633G7pEjbGt2PURCtUusazf95OMIneI67+Xd6PjWKhcaxa?=
 =?us-ascii?Q?3R6FXVHwaDELfkmHodian+e1M1IskpEB08s2v6o7DpvysIDm0j1H+/b0nQI6?=
 =?us-ascii?Q?nqkPJHxq7vRyWp/zwV9IDsMz6qAm5kWBa8SPjl85BYwAx22+FJs2EPgr8wv7?=
 =?us-ascii?Q?ycEClA3MoDKFOdxWE9DM5lYmNNYfQAf4mFZrq3U59poC0qa4i7i0HiFFvm61?=
 =?us-ascii?Q?v1Dvd+dwaTbKXLIj8otqu+zRO5GDO2KIJEtxw7AXrLTa6RM77ztfUcRT6+SS?=
 =?us-ascii?Q?dkPHtBZfm5X7Uc54MBar2qMeiD9a7yeKLUEezG3GMMmrr7nNwV5Hux3w94hW?=
 =?us-ascii?Q?byVYJDzCKpJnEqs0xb+ClOckl2X5uM2xcVkHWuLdInS0pRV1IyCECSxKP+4w?=
 =?us-ascii?Q?wlvogbDg6n8nsyseQzZlv9bUZZpfFuTpGt9q4q9yjIDsSmKLCbIX41Cv8qYi?=
 =?us-ascii?Q?/9KKnFqK7svjR639b1EWocr+1ZaY3UrAtuCWoc6P2MSNP6bM6a4yYAH1T9lY?=
 =?us-ascii?Q?Lpy97omZo3B2qDWU85TJciijVQ/iGHEjfwGSzYuErSfqfwyTP1BiP8HOBila?=
 =?us-ascii?Q?MqHTsMHowafQTtfUKT/ILeka+i27igi1FCafYTa71+BqutxYrN6Nxs296v/K?=
 =?us-ascii?Q?2MfjMgMtxg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HDDZDD5BWiWAKOCUzN+Vll+LIepwxDQQGf51GIXHdT52Cnapq66HlgrEkbY/YoHymHqgj9dwdJuaMVpu1qc0ycczGaMoHaCzwO+b0k6rtHIu9ywibd+H9c1q095Sfh4E/lGPBX8lW9nCNEBGcOJutTZf1gmim4n/kUEPWbSeTwJ1deTcchM9cFs7qm1nMrzqPc33A4zHSpFC9u6kIqOJlmVAmZyR50cnqDYCovSM0375N5nV0K+3nBDDZHe8IVFIPvW3WugcZj8wiDQrj6/mk8qS3ElLSq54ajuy8u3rStM6kEvHkGzGAgZCkatBD7JHbVQXToBZQa7sG10hgN+xpw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9123342-23de-40d4-c650-08deaf368601
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 08:23:04.4193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vixImgp5LqiDhy0QKLNxdabGMcPEFtZSWyqijTBkX+v9lQY861T30n5bBJYPd2sjy6MEvYhWMd9tP/kmgKQRslL8Tbi5DXyYGCcoCu1hjoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8816
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778487788; x=1810023788;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fc2tO/W7+cOxaAJ2WSaExKZaxKf9ppJMEhJvc8b/Kow=;
 b=YiLXg7Y1EAgFCOv2EaKsbsNhbCLNXfN35ivA2YKlIzQoGNnJNIPTCnhn
 JROqHwjo+xEN5F7x8f+088bK37faPgaMqf1F9u3c0HDdx9mTdzVA26FU7
 q4y29LfFevOquBfujuOwxkHouhed3ZOvqQ/8zQaaeRQ1dxhrkMR48CXBe
 tP5Kxo2p4ZuYEIg6aC4iLtdgp2zDskegNSUhdF5gr36g+8U8XXMMGlKjP
 9PUzzeIeVE58GEHM0lBna3buYzJIwqj6A485z4n4rEvQ7duTtwsrOVRrk
 56LGeIwC6OqoOJFofTVIpW+0H7kQEpPSEPntlq5VLtNkGhjaynPeD8sVf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YiLXg7Y1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 5/5] iavf: return 0 when TC
 flower filter not found after qdisc teardown
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
X-Rspamd-Queue-Id: 39B9050A06C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:kiran.patil@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8985.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Wednesday, April 15, 2026 3:53 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Kiran Patil
> <kiran.patil@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 5/5] iavf: return 0 when TC=
 flower
> filter not found after qdisc teardown
>=20
> On Mon, Apr 13, 2026 at 09:30:35AM +0200, Aleksandr Loktionov wrote:
> > From: Kiran Patil <kiran.patil@intel.com>
> >
> > When an egress qdisc is destroyed, the driver proactively deletes all
> > associated cloud filters to prevent stale hardware state, decrementing
> > num_cloud_filters to zero in the process.
> >
> > The kernel netdev layer is unaware of this implicit cleanup and may
> > still try to delete the same filters individually. If the filter is
> > not found in the driver's list and num_cloud_filters is already zero,
> > return 0 instead of -EINVAL to avoid confusing upper layers that
> > believe the filter is still offloaded in hardware.
> >
> > Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> > Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> Sashiko has some comments on this function - which do not seem related to=
 the
> logic this patch touches.
>=20
> I'd encourage you to take a look at some point as a follow-up activity.
>=20
> ...

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

