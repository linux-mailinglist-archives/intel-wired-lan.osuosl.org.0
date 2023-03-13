Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A0E6B7760
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 13:24:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72B4040577;
	Mon, 13 Mar 2023 12:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72B4040577
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678710257;
	bh=bMlmhVgeMK3RhXBUz7FeJpoUMpRHAJWeqvkHz/xO2zY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cw/1dzUwa+ZYAE7BrG9lBF878L6pNg+rRLIcJEDArzCl/n7tRKO+tUHyTc6feJls/
	 +niwB5U4Kb4vIQIyOWATk3cvtJLjvu/84ACpCsnS4lRrQ2VTgnn8M4rVK91SCry5on
	 aGZylmkwa/KkrNtYvakf74mvuzd5ZDzlTGELFxlBgpY26Lx5XxkV5VtO8tcq/hZCGi
	 O61/Z3RWFIPhVM2SDZEmY0O5KWkekwg84fO8bq1U91BpFR7FxKGccJyZVieRKtacKE
	 Xpk0gFUldYxOK56mq2zPAwTxWxi1ZRRF4TYlGEU/hky48Ltv33+jH834X6/nWZ8XeY
	 cbYCUq7jR7hhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CAoEYqp7A-tx; Mon, 13 Mar 2023 12:24:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5739040472;
	Mon, 13 Mar 2023 12:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5739040472
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 92DE61BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 677BE40472
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:24:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 677BE40472
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HL-9zsCEnee for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 12:24:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AC3D4012F
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6AC3D4012F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 12:24:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="325490973"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="325490973"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 05:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="802430073"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="802430073"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 13 Mar 2023 05:24:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 05:23:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 05:23:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 05:23:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 05:23:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M7v6y//jR7820qlVm8BBKeX3rPmm/1dGbDBmLvZUn4ygt93imNNSDquxs2UNUdth6+Nj/ojajQnVb2zrTsgpWdMaS8eqEahqDSMf2/5AI91rmItspD65IKO/Y0z7E2S1PIZbuDiA83unRKq/v+uuY27YPjHtBJ9yd0LxgQzsKdOfGIWM6MDKJh5EuZOGx1V8qooRRB7Nh4+vkeMPvmfgHzKY49CA7CwcknkyMnT6f1o3FqVvjsoADb04MTdVSC/rXRqpisUfz0Bua3IXEWJZSiNFbDb9e1VQL9OmDWdbB+iVrFzHH/lZmsCKrYnLf7fTp4AmXOTPOBuz/EPH4q6bqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zsrHwzFjFskmWgcBXH/GPle85ULezjVQx8se+PYNmrM=;
 b=QFVcPBU526n+IJEW52GBpsG3ibj8GcEmO331F3E6sRPtF0tv7J0WlJw20H/RBILihaXImTr8T3sbp/U+m/+wVD2M/iSp852nGaByW8XPWeLuqveRohESlC4ibz6iUkWns4iUMeXhBw7c04ov6n/j31o24ULRMM8sd8ryZwG19MvUpxlBSHB+7ekbCr1rkF/ceo5Cx1kqBrZYRdFWFcFxTWtN59MqjPx7rIiuFjoShbuxc+mJPF8Lgd8cMx0xSc8Z6uQbCnG0lGwgezq95psmkGWuWaScfrHu1aqzt82N9dewYbsC4hnzwUprhW8vDZ/HD0U/onNzgGpCIUiGgIbSUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA0PR11MB4671.namprd11.prod.outlook.com (2603:10b6:806:9f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 12:23:57 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 12:23:57 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH RESEND net v1 2/2] iavf: fix
 non-tunneled IPv6 UDP packet type and hashing
Thread-Index: AQHZTDWECNiwRlqqVECt0i1TlcgXqK74tBjg
Date: Mon, 13 Mar 2023 12:23:57 +0000
Message-ID: <BL0PR11MB3521289E7BAF2097DBB80AE98FB99@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230301115908.47995-1-aleksander.lobakin@intel.com>
 <20230301115908.47995-3-aleksander.lobakin@intel.com>
In-Reply-To: <20230301115908.47995-3-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA0PR11MB4671:EE_
x-ms-office365-filtering-correlation-id: 1d3175d3-17ba-4bd5-3b59-08db23bdd15b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6y2d69F4IgQR+/NnW11Iy96pIZ4CvXn8wMXi6t81Tg31x91q9Aw157JmRGvbgWDPpjUm4jV4K2Ec+Ex6tqVJt+LYd4AQwhxCii6ebLmfYMf3Z7ejugPYIwrAgvMJxUvQSSCJ5A1chIuoTOzFnlQsSHosrlCq83Vj7BjPS3KyXzyM4gtX9+Npc0PDIDSbYNujkQe6Z4+NhrbZ8XxeP1Wc29VfOwbmd+n+q5s1Z+45VZ/CKUZklEUOfJMIYKqMi3EsFi49DlsK4iRFXMZ9gyubU/DWIU2xufRVgk6DN+ZkAraaBtTFtkb/2c7lTGw69Fg3GaJYC66pJzgaijvEvygwz040Tr4rpWQTLnv9z/yJU7QVQzPHltjOPokkAQRyqm450nM1wFVJ259paWGlFflZcI0q9DXCyBOf/1aWHPBR5QvWgIVagmsv5IliUqx0JU6c7GacdXMkoT5/2Uq95HKu92Hp+0aQpNaKZ9Rqc3tsLK/2McKsAKScgQ9w89YheR7xR7ESOY0Su/6b5HiDZbaAxCC6bxTF3l33ztvJsSvLx8OMxLgGVW9YfBxQvQJfiJcgi+AlxM4rrUJB8s3kkGLy6Ps8M3Iq0E9A8CXQxdZuq/jX1okqqxI/GLMhedW8ukUYRKYrcjq3op2MES9emGLHjB/LZnA6KiDq0KrPM1hW2MD5cs8bhxYDbphTTpouxJV6pxmvyZvkqRlSX5qu0kooMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199018)(2906002)(82960400001)(122000001)(83380400001)(5660300002)(52536014)(66556008)(66476007)(41300700001)(9686003)(8936002)(8676002)(64756008)(76116006)(33656002)(66946007)(186003)(6916009)(38070700005)(38100700002)(86362001)(66446008)(316002)(478600001)(55016003)(7696005)(53546011)(6506007)(26005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?nZUxq9jMnIQSfSf+E1JK43RaQ1EbpdvRVn4SSlA8NVj3FaELQq3VTcg6fZ?=
 =?iso-8859-2?Q?uCnipV2O2LPtEsBo8ZGZVglZBPa+kzhQM02pWQFrB4Caufx1cvJYsimKsQ?=
 =?iso-8859-2?Q?j3Ud8nB6fZ0huoz9LceaovsYQNV2uIuvnuDId6Yv/OsDudRO5tZAKbz0Qt?=
 =?iso-8859-2?Q?67I1JUYMK/PegheY++ti8FpBFTC23MVcZDg51EHCSIS97KIxj0OsqqlE1m?=
 =?iso-8859-2?Q?BXjMIVUwX7T/Ifrkd11gXXUxfu/FxKpw0l/P5ea8ovzpnknwNqNYfctSnv?=
 =?iso-8859-2?Q?J/Ro+aKr8+zdk8RX68mbkD4RNnPv2kA3sINcAp7F8QkPk8IuBqP6J7lW1W?=
 =?iso-8859-2?Q?wrcYb4gN+rumihvUKh4I/13n4rAEW4ZVym4U8YETZUxpiStWYJZ6dqnA6J?=
 =?iso-8859-2?Q?AVvS7XhWET0CVeYeg3/nqAR6VNI1YKVfKjfBRB+H4RMJ9+kQVpclcphHg/?=
 =?iso-8859-2?Q?apkKF/UJ/0ur/+LWsfuULKZQizA1R0qUnrR3pw+KqVccNTEap7eOYeXTBk?=
 =?iso-8859-2?Q?f98XWq5Hek5sdf+M3elHwKp5ldnbuHGkaIZYXjTeQrExMtm5ta/RrzWwHq?=
 =?iso-8859-2?Q?aIiLs8pL+1CYVBnxd/ikdUPbb3kxRkl2HbRfQro9tebxlK2ItMPu8WQyp8?=
 =?iso-8859-2?Q?Y27+blRLOJr0tzL0g9TOpTBZXZ+71499QdL2bjvTrtfTp1mLE8LzwlgV82?=
 =?iso-8859-2?Q?g06uuAOLI1yQC1RinXQpCqJKuR0tn9xKKRfnqI1WxoGNKtSEfgT8mm/iYU?=
 =?iso-8859-2?Q?Uhn7i+c6agKhHUy9d5PToQFybvIqddrVB2ou0XVx3i0OcG9yExmKk7Rvtk?=
 =?iso-8859-2?Q?sc9ULQljBoNLW6UAiUVmzXu4R4TTEqkbIEpeNfwJWM7wqTZYFo3ojLdFss?=
 =?iso-8859-2?Q?qqZ4W4Rr91c2bAL0/iT32WFYIcGPcj/94TlsrBZAnG5CwowVkGSe6UpJP7?=
 =?iso-8859-2?Q?2p1vMHfWpAptCGIpA7NYPJHN6Ur3VwQ4suXgocdX69a1d5dS6fPsmP+X8n?=
 =?iso-8859-2?Q?gCE79ksiZor6Gn4y2koY3mNKhUfKhJS2QkL7xO9cjRKgxRRFxxcVuvJzMB?=
 =?iso-8859-2?Q?UQF+HZtsHNc2hccp8vZdOodkCoijhpxtau8MF6YpVA5uAwgDc+h79ZxzCb?=
 =?iso-8859-2?Q?rpKxSMoPRmdfv5nDNOaR2p+SayvVbbzXDc2taoMJSixIR04IVLo+FFahNY?=
 =?iso-8859-2?Q?PCGW5y/bXvDcRrUfzVRV7yNZENWRTbTu/gWItIWmx3tZTGQLEfFThNVUaw?=
 =?iso-8859-2?Q?3Uqmd6ad16+FZkKIOAw+Iw1ccN7SHdlERZofRvqcsz0C5vCN4GThSgakYL?=
 =?iso-8859-2?Q?OAi1nm7C1p66jVPP2hxsCFv2GN4ArSFSgE2tYY7c/PSB7Ufo0dTtsoYwfq?=
 =?iso-8859-2?Q?r5HzA7aZKSa5S5ow+JXVTjXeKiTYPtJRCB9czTEX7gGXGIEHPzbz0Q2qAF?=
 =?iso-8859-2?Q?FlZRBhI0hCfSYMmBJnV2//J0wQ+0gRfMM2HfuaZ3TENZt68242OB8o05bM?=
 =?iso-8859-2?Q?SPos4h4upol+jIqDvRlSfeMRcZAVjnu9BJhcd+pExryDqvZFpal6tyGJmV?=
 =?iso-8859-2?Q?Wnimp1gGnegADGYgEZpHZ7F2LL5rHPXlLiRt3+EnDeNGllsK9/KVx5OS/p?=
 =?iso-8859-2?Q?kWhVw6ojlup4D5zCYtI5+N/iUIy8MQYWnb04rprY9txR9ddy/UIzGqvA?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d3175d3-17ba-4bd5-3b59-08db23bdd15b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 12:23:57.1109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZW4Vu46Hs5VefUyqJnb1DZ2HZzBgwJKKfgugogkv9y/Wo3V6nsaT9DAOz9KOKj2p656aI5lL/Y4nBaLY0ZQK/SBD7Yg/62axyJDQc5jH4dw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678710249; x=1710246249;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=q5Zk8tSu4ZZWlrCTuT6Ec/yfaCqGlpDYTIlPG1/bOds=;
 b=c0sP5/tZ39yAy9YncSTFE6BdwhMeEQXu+SFcLALMykrZZ2G8Wx4QVVMC
 Ans+0gSS+s8bFoV+lhdrlX7em3sF8AU1QvAztPywVu3+wJwX2UA/jVEyJ
 gzOpYLndlhKzqqUk91g82vHOrYGaiakt4vy1rJASF7fU4Ucg4I9k+nnkA
 7xBiPu15TjTCZLUVyEpdyRb5T3pG2OrRxMulN6u0HGe3hKjNoJmOZNjGv
 zqa9yqDBM6eMpYtwcvgItMz5EJoiRsaf1UjNo2+1hkemuDKbAyZZ4R5Ng
 QcIziN9vV5MuK8ep7mJ6alVAm7B1LxzwWGvvY8OpByRrQxSOEj+LSFnDz
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c0sP5/tZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND net v1 2/2] iavf: fix
 non-tunneled IPv6 UDP packet type and hashing
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Lobakin
> Sent: =B6roda, 1 marca 2023 12:59
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; netdev@vger.kernel.org;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-
> kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Kubiak,
> Michal <michal.kubiak@intel.com>; intel-wired-lan@lists.osuosl.org; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S.
> Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH RESEND net v1 2/2] iavf: fix non-tunnel=
ed
> IPv6 UDP packet type and hashing
> =

> Currently, IAVF's decode_rx_desc_ptype() correctly reports payload type of
> L4 for IPv4 UDP packets and IPv{4,6} TCP, but only L3 for IPv6 UDP.
> Originally, i40e, ice and iavf were affected.
> Commit 73df8c9e3e3d ("i40e: Correct UDP packet header for non_tunnel-
> ipv6") fixed that in i40e, then commit 638a0c8c8861 ("ice: fix incorrect
> payload indicator on PTYPE") fixed that for ice.
> IPv6 UDP is L4 obviously. Fix it and make iavf report correct L4 hash typ=
e for
> such packets, so that the stack won't calculate it on CPU when needs it.
> =

> Fixes: 206812b5fccb ("i40e/i40evf: i40e implementation for skb_set_hash")
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c
> b/drivers/net/ethernet/intel/iavf/iavf_common.c
> index 16c490965b61..dd11dbbd5551 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_common.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_common.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
