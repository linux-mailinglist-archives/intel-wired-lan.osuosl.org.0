Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D2F99A019
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 11:23:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3565F41554;
	Fri, 11 Oct 2024 09:23:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rQbCqEkY1UP6; Fri, 11 Oct 2024 09:23:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06F3841594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728638623;
	bh=IyIXHPs8F9+vuMB8itctgbnS40JM0S5rJZ7TSduItKk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SH7GBAeORcoFv8d3dFLoL62JFTEJPGwnnYlj5wWj7dmYnEW3tAk0Vb3D+/FK7YGao
	 qY+crbSrqK7YXGE1emXRIxvzJbkPiuAcuTk/ptGrx7eABo0QZNkAwbcoPxaKTlcOw0
	 vokBMfeQyHiqmFyF7x2iQkX7Zy2hxozf9r5+Ivyuq620SmgSq7Uwu7YjwTXrSmOeCI
	 KwZJ3SvEmfg3ETWNAEzPCBw7js1VEvOtCBskNgHt/FfrskIzAn9RnMY8zUOdCLPmHC
	 G2hnzRc9OtyH88AbGHeAC8/k3mQdQsyCsbDBBkvxib5I+XJcKfnUlqbiVznxi3KqZb
	 5XCTFW+YMYvbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06F3841594;
	Fri, 11 Oct 2024 09:23:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D38091BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0E7C610C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:23:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HuwAugP6AOfG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 09:23:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 914B060D58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 914B060D58
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 914B060D58
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:23:38 +0000 (UTC)
X-CSE-ConnectionGUID: RCcuJocOQZ2vCiAjQHPnHg==
X-CSE-MsgGUID: /G3fHYZZQc64kk44b8nBvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="28161782"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="28161782"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 02:23:38 -0700
X-CSE-ConnectionGUID: +RPhtvBRQwWcVQAv7tYnjg==
X-CSE-MsgGUID: wr3uGbfARzOU1NqSqamZfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="76772018"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 02:23:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 02:23:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 02:23:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 02:23:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hNLaeyf5XQXxM2N/3l8nSPMCOapKdQVsi3nfnY3Is4KM8r8zGGA2paJwv/i3VWtkYzapVvgDb4Klo4cbk122HfqnGnGl3sJNrc5dkc5+OZhCqwXXFS6vakGEMAL7QmMJYOsenPZpMxQFvqAzee84fiukdjLXtNyOQ8d/JCBXkDhlPKtImsAYq8Lbu9ohVOcZIY9qQ44hKVNq1aK9QihxFPwlv8GNiDG43cEQ0wtYhMNu0957tWWsr5ADOYnBK4mUGqmSn4k08/88mBJ1wTsSRDqwtK2Po/AItXqUeBHix/d1kTgxQQvsTUSIFkB++0lFmYB9xTlJty64TDPxqZLvag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyIXHPs8F9+vuMB8itctgbnS40JM0S5rJZ7TSduItKk=;
 b=vievwYnQoBhRYDRtw2K4UXb+HkD4oxBORImLWiqNUh3WfFHUdgfdT14JGFZqwkb4Iyay7PUS2OQ24EMO2m1+h+I7jvnY/1cF5XTaVojmX+RkAOFBlQY22qRqR0rOz6MlhCVT07Ip+qDJxP4UjwcnrdD2Nqkj0naHELbUCWqH5kqzdx2O1DkFy7L5l+ET8fq4FDm/kVFsBcvR4YVUtsYtfZRJry3GCz2t7U5rc3KRUpEbycK2w8CBCZl/mQKSpiZpXGXbE8jtty3nw6xojdnVFeqxWLNuS/d7IXhASJRzBvlZVMSGx/Pyg8d0qbdYGpkVufy/46dvss1AnWk5nfs54A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by BN9PR11MB5241.namprd11.prod.outlook.com (2603:10b6:408:132::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.20; Fri, 11 Oct
 2024 09:23:29 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Fri, 11 Oct 2024
 09:23:28 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add E830 checksum
 offload support
Thread-Index: AQHbCUyLtcyj/t2jY0mh2UrvKGijabKBarjQ
Date: Fri, 11 Oct 2024 09:23:28 +0000
Message-ID: <CYYPR11MB8429A39EDBDFBC3AC7F223B7BD792@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240917214547.3016085-1-paul.greenwalt@intel.com>
In-Reply-To: <20240917214547.3016085-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|BN9PR11MB5241:EE_
x-ms-office365-filtering-correlation-id: 8fc9a40d-73eb-4542-e89d-08dce9d65dc7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?IVNonsK4uQtZ1ZRVStSlfq+2CaKsvtN85jK9Vm5evv3WxikKIV7Gk0OpEQWN?=
 =?us-ascii?Q?PIF6S/ESkIqr87+yv0UPorhDTzJen+45XPt7YzjMFH2QC278gP6ADo3XUisY?=
 =?us-ascii?Q?tBHlbHWlRbRWImhCzvQ0kIkBjr7Lq64UNux900LwPRgvPSyGMSmcfwyNjRCo?=
 =?us-ascii?Q?RbTvZyHLU+fuXDRNtuUzANihiQDf9OfD9T78azaT4Sw3tIwCdOESTY6f+wZT?=
 =?us-ascii?Q?54ZCltNnnLVYYMl7Q8GqgdgV9eNBksv1lOJxNF2aMg/92VaOqjOmtnoEMCtC?=
 =?us-ascii?Q?9Kgn9hsuQxsvv9XKWjXZLX319l3WIEv6aAUvirsLVlpl/uawkfHe2CCgtX7v?=
 =?us-ascii?Q?CFGPgogVNf4MoRaBB2TAh4X9+rQGQqyXbgIDJaNO1cJlq8i0G7aYZTyCiAGd?=
 =?us-ascii?Q?whQaRU8Kimzb5AFXdJGPnRaJGSxIJJICbbk1fRb2s43/MXbuyB4C5wvFZ9J2?=
 =?us-ascii?Q?j/62yqopNNF0YfLbQTMRn80cChZUfcV7wGbq4vfHbGX/RmFYbVAzlqiu5zkG?=
 =?us-ascii?Q?fE1K3T6ewqxyrxxHHToaeLtGEy+aiE7vxC1PZi3Mj73wEuB6/1Fsksuqwl6f?=
 =?us-ascii?Q?oWyj1Id6Q0W3JJHxNWENOuol+mJzmQTUEc67hcyaHBdoqCComPpeETw59aRr?=
 =?us-ascii?Q?jbKFJNG8z9dHmr/X0PfcavJnAKTJfGBGUYhaKDluX+qdlvX6Zn/QnuZNTa9G?=
 =?us-ascii?Q?8NCD8SXG+W12KKytvcqaRO+SS/5RGI0T+AMlfxlcuQOjmnKzBCxEHbToeprz?=
 =?us-ascii?Q?cQRN0ik93Wi9WD1000QCWNxK2Ghg1EduxKMImsoENXeChHgwXn4rcTQ7OefS?=
 =?us-ascii?Q?3j9PddlFdKfTrlTQGQcF6NCyIa7jzzyFitdM4PCQyoSY3ueAOuv5nMeQ5hzq?=
 =?us-ascii?Q?T8IMNgmdetyavn6v7vIPngCLsD69KEYzQtIupHiz/I0OnSjZuoz7vT5I2lnC?=
 =?us-ascii?Q?gopsiYXenWff1jxS85MRiYtDO0G5NnRt7ypRIgmOYVTCKcYukp7Bc95NAUC3?=
 =?us-ascii?Q?9R+UIZnPuaeb+LSCwUpYPb/VOO0MjiVT6zyy59siuHT6zeH9TJ/o4kHdE/4t?=
 =?us-ascii?Q?0Xo9s5fE1GCgpmxc3mMk5pRcw1Iz99Yg/nfNExNv7z8winDnYRWyJT4SO5eW?=
 =?us-ascii?Q?Z0wVR3zuFRHuxel2fmvuak/uID0CsVWPG3ewZKNBbtPpt1IhtOOfAV5uyg4j?=
 =?us-ascii?Q?sVHcduv2G7xhEmKwhFfoRMi3qplhtQFrQnZNOQNUxoUA6JTF37pl/zaNagW4?=
 =?us-ascii?Q?JUa8iNU6C7uYF/P+r/A3RhCRe77zAayzKG6F7sFRHBDBhDI1F2tYtY3N89RZ?=
 =?us-ascii?Q?RUhC+/2hzlTi7XxthUEO3OVGPIevVCTT+Sok8JNDQvKVdg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BCQ1pr2XZpIsGOcfTVPYqfujFT4+L/MdmwJ+Gj8uxZov7GHpdTCIEeTt/xJP?=
 =?us-ascii?Q?mpgsJJ+DwaOaaw29djZrC9qluw4odKI++fdM3ivrTwfdZfJ35GnZ8x7qUas5?=
 =?us-ascii?Q?92TDSMJAUQzhovZXpjXoS5UMqaZjQpj5rzYjVK51H/ejqaKSt46bZRHDrfZX?=
 =?us-ascii?Q?K3mhGAaaFlWdqpNLaoIugOazhMx8tONY5xTidGhru+xDP/JvO4KAB8nvhQRH?=
 =?us-ascii?Q?gyQ6cgeiudGPl5TsYEyyI4SB79+n/UCzh5gtkYkBsywlsWH2RIAdoxDQlNYv?=
 =?us-ascii?Q?aoapyQrHxYE58kYaIaJeIzofNgfrZbsVgoBnf5NN5d8aZvkYxlaETKJscfpH?=
 =?us-ascii?Q?baEqr8o0iWGNwb7Emh1AQ2hQIAHSRlyomvXg8h2nbsCJBHzX/JdBVmBFD2ze?=
 =?us-ascii?Q?ukyEVERn80BJIzp/u1MW0mUNvMjtOxrultJpgfVHQo0B4AtNDxrNpygRmTcd?=
 =?us-ascii?Q?XbiQP9g8hgMgUbuZ9l0Cv2ZqP6i+gnRPKmCeczN1OAC7VW/07otVxYCJ2m8m?=
 =?us-ascii?Q?Obgt3NNi5AI3Qgj6+ws/5ZSTHrAuiYH24QU4uua9Z7adEmhOTw31E4Vx+ddj?=
 =?us-ascii?Q?992E7fwoZFxmTFBPXBpqR8Ge+j4xx9ww76pY++wN6FhP+3yuisatkCBgxpkS?=
 =?us-ascii?Q?eROsGVOhqV/7Tfhw/jcLDiQFjFBGECWf0pWF4Srs282coP+zjqny5ard2MM4?=
 =?us-ascii?Q?P39wFOK6VPpZsIPJVx0ftEqdwiHOAhEUEny5LxjWzNAyJULwgOEtpUngJF2S?=
 =?us-ascii?Q?WtbzYr0CR9tPTOczt4OTtdjqcy3ppo8gP7AHOKbWfGPuGjPW+7/JwBBWv6FD?=
 =?us-ascii?Q?OJ0IbdI7j2yEmIDG8od54ycN5iQSN14Q0oZNULaFaOZ1XOZCsKN63iCswec9?=
 =?us-ascii?Q?HRTlc5jeEfPgb6FxO+oF0krPqnScEOhdqJQTcvPUBa3sWFlepzco4n67ztaS?=
 =?us-ascii?Q?R0znAKCFrgxAD8L2qyC4CpT1QuueaDOWGbJtWiCWesKOtCCpnX7RP5HTOh9w?=
 =?us-ascii?Q?UkK0xD3JALWiNasXuZ6Sc3balTUCHp6nixT8Y6Ht/k88XKvZz8PoXjg0l5Lx?=
 =?us-ascii?Q?YoAtGVSKW4+rP07fc5Ml2x1p05WPgLN51cva5K1Gx2wwQdrOnPAA2SsUV422?=
 =?us-ascii?Q?sC2wVnf2E7ahwJT5hLG7GwwppS1sOMdGbEjWdlats8VsQRIv5MuuwGaXt8t/?=
 =?us-ascii?Q?OmIOC5vqN2LwYQB956AwDzk5KA5i6xUPCYaX6idgW0AyL38UcL47Axdh6DFE?=
 =?us-ascii?Q?5EmXrxJmL2OppbAVdk4TCFqSdil6lPvolRV0IcHxhivVVUZVRRNvotrLGX1G?=
 =?us-ascii?Q?9qYauf1Q+hFIHs3C1wlrd0wF6esugMcGdmAfwsR+ZXlvCtGw/TMkxqsW+5YF?=
 =?us-ascii?Q?uPs7Hmm5GMLQ9rhxxyp8aN3b/YfFFTIxBpw6c5xtnA0e7n5SPNraTZdDtAcB?=
 =?us-ascii?Q?Oi4SPqs/lAO/P+c13UxLBMQoGXWvNYJmTXu1aX/+W5I7PEBGWM2RH4f1YjVR?=
 =?us-ascii?Q?qKDH0muiOGBVdBnVdQSp3NjRHEazH+Mn9eeIDKu5yfbtL7acgv6ypPQ9pq5S?=
 =?us-ascii?Q?nUB1yhZUAux3mnmPQdwE/04Fikfvy4v7vRemJirlUq2M7BKkU3IQzcmPF+2D?=
 =?us-ascii?Q?PA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fc9a40d-73eb-4542-e89d-08dce9d65dc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 09:23:28.4926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uc5jNkCGHS2llF973KsSOpKLeWpe72OzS8aYkAOoj8THdOKDSa+8N10dtZ342mEvkYz4eChdg20O1imHUzSuIaL2JasslhqkTpw8ZqNuoLg73xGxWf/E4+Djq7SX4K8X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5241
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728638619; x=1760174619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zVZCgmlWwCfDbeAx2BEW/k3lGfc7QPXc5KpS8zSKq9w=;
 b=GUNX+8uX0krh0nUxVp/4rgKPBe3Cw5Lv7p9Tq3MMSZX/12N8YWhccms9
 Z+N6IOIBD4QayzfUZj06NT9rq/PrFKXaxuieN+m94h0x0V1BJfhEf6zOT
 8tOvx+Thzpjx4lmcIIm7RnQkgLmbWM9x4RBhko8oYwY+ls8F9cxuI9J0f
 29/JcQXeIn36T5CY+uGzWDAWcpSS0gxcDoQjRNfHsVD9j58Y+R3USsfMj
 Iun+y52e7hpKRMwwXiG6Z5hSjFjGTWFrI+eu2VT4PzvbjcZXVkyN142Vk
 Yvt7ufFoq++gv6q74/mRa6v+8G9p2KBkJvjIKnviMsMOSjSuDci1rFKQc
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GUNX+8uX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add E830 checksum
 offload support
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
Cc: "Joyner, Eric" <eric.joyner@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Michael,
 Alice" <alice.michael@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Wednesday, September 18, 2024 3:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Joyner, Eric <eric.joyner@intel.com>; Lobakin, Aleksander <aleksander=
.lobakin@intel.com>; Michael, Alice <alice.michael@intel.com>; Nguyen, Anth=
ony L <anthony.l.nguyen@intel.com>; Greenwalt, Paul <paul.greenwalt@intel.c=
om>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add E830 checksum off=
load support
>
> E830 supports raw receive and generic transmit checksum offloads.
>
> Raw receive checksum support is provided by hardware calculating the chec=
ksum over the whole packet, regardless of type. The calculated checksum is =
provided to driver in the Rx flex descriptor. Then the driver assigns the c=
hecksum to skb->csum and sets skb->ip_summed to CHECKSUM_COMPLETE.
>=20
> Generic transmit checksum support is provided by hardware calculating the=
 checksum given two offsets: the start offset to begin checksum calculation=
, and the offset to insert the calculated checksum in the packet. Support i=
s advertised to the stack using NETIF_F_HW_CSUM feature.
>
> E830 has the following limitations when both generic transmit checksum of=
fload and TCP Segmentation Offload (TSO) are enabled:
>
> 1. Inner packet header modification is not supported. This restriction
>    includes the inability to alter TCP flags, such as the push flag. As a
>    result, this limitation can impact the receiver's ability to coalesce
>    packets, potentially degrading network throughput.
> 2. The Maximum Segment Size (MSS) is limited to 1023 bytes, which prevent=
s
>    support of Maximum Transmission Unit (MTU) greater than 1063 bytes.
>
> Therefore NETIF_F_HW_CSUM and NETIF_F_ALL_TSO features are mutually exclu=
sive. NETIF_F_HW_CSUM hardware feature support is indicated but is not enab=
led by default. Instead, IP checksums and > NETIF_F_ALL_TSO are the default=
s. Enforcement of mutual exclusivity of NETIF_F_HW_CSUM and NETIF_F_ALL_TSO=
 is done in ice_fix_features_tso_gcs(). Mutual exclusivity of IP checksums =
and > NETIF_F_HW_CSUM is handled by netdev_fix_features().
>=20
> When NETIF_F_HW_CSUM is requested the provided skb->csum_start and
> skb->csum_offset are passed to hardware in the Tx context descriptor
> generic checksum (GCS) parameters. Hardware calculates the 1's complement=
 from skb->csum_start to the end of the packet, and inserts the result in t=
he packet at skb->csum_offset.
>
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Co-developed-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> v1->v2
> - Update commit message with additional details.
> - Add newlines, and add params around
> - Return early from ice_fix_features() to avoid extra indentation and
>   large if block.
> - Move and change some defines.
> - replace htons and le16_t_cpu with swap16.
> - Use FIELD_PREP where possible.
> - Removed checksum valid bit check STATUS1_L2TAG2P_S. This check is not
>   needed since there is no situation which will return an error.
> v2->v3
> - Minor fixes in commit message.
> - Removed unused register defines in ice_hw_autogen.h.
> - Moved GCS and TSO feature fix to helper function
>   ice_fix_features_gcs(), and updated logic.
> - Update to align naming with related flags.
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  1 +
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  9 +++-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 12 +++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 43 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 26 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  3 ++
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 26 +++++++++++
>  7 files changed, 116 insertions(+), 4 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
