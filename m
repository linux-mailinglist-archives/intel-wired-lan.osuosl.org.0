Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D733C8A1426
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 14:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05E7C41E77;
	Thu, 11 Apr 2024 12:14:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S2eXDvfqX1nT; Thu, 11 Apr 2024 12:14:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08DF141E6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712837682;
	bh=ITKOiphz25eRA56HTnH0O+iJ1q7Ai2cdhkNXGkIG9mI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ddneKX/mCTZygWpATIG+BhQ1HvIiyEa/cG5oJ/0rIRK+VgJLw7+sb/sdNtzVcAPNK
	 gIWdFEDdDeVYpiaeMAsbSxGJb2CcgBmFYXiOTf73gdpmE0mD7fy7GiikAs4LIIL7qt
	 ZDpeH3kERa3ZUtfp2yLKME7IrorzBnKH1+H01f7qadH4TwXQ6qx+3M+B9tat55O56L
	 2AUqx+hgnlKwlTeIyJksElNx1sgDg5KGJrbNmTRtRKzVQrsTVwY/xoGHyUSJsImQZK
	 KplnbHGD5PBVFeYCV6aSmRBXT3Y5KDZwZSHGt2BBdsTZ2+7VyGkOFqsDVLT+DW2xM1
	 xZ6EDcgfoQU7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08DF141E6F;
	Thu, 11 Apr 2024 12:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D7291BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A60C60862
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2FKJtL1T2-Os for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 12:14:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 88F1360749
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88F1360749
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 88F1360749
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:38 +0000 (UTC)
X-CSE-ConnectionGUID: VRcyz5HLSceDf/wrHkPJxA==
X-CSE-MsgGUID: QImScivnRXaCD1edd9n3og==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8417361"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8417361"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 05:14:38 -0700
X-CSE-ConnectionGUID: okkx61cDSsyLhRcjS10H2A==
X-CSE-MsgGUID: CHVmEkYWSkWdXQvxjSKFBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="20887153"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 05:14:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 05:14:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 05:14:37 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 05:14:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IE008nzMPF4PuEXrohRo7HmvMosu/wroSNjHAmEn4LXeWKNGiQKnlQ1XQPM8MR+KY5squkdHxcELydMU4xUPUksTdNSre2SvDEU3ULhieLW8VW4wUP873m9KhQ8eNNUWkZsHFCTF2rvUat+bmqPVNSiMnoR5Dg1U3r981V28JbRBETp3+dxlOy4RnjOmbenM+O6HOJijdvrAArZZirwQx5D3bmuVtyDswie+W6CLBwme4XQN7Nq3x6qB7oIpFzVfK2/VGullw9BMhZLcZ6bXuTmvn0eG15P+0DATTZLq3aAy6YPAT2CR9yXf8+mt2L01FC2xRZ7Xdre1aYtvrya72w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ITKOiphz25eRA56HTnH0O+iJ1q7Ai2cdhkNXGkIG9mI=;
 b=YmESMTWNV0QexjPALnOyWghI8lIexQtOvYJstU/ffc+DSUBpIsIsjN9eMpXpc/wl4iXaoQatzgYItJAmSYySwVme+gJzlSHyiOWiQbyF4uwL4Ag/tLLw9Hhcw/brNXFAaophSzuz6PalU/ePZcB+Olpuiq+hwlW+/AWe0NoQuYPSlZGWnd39TVeDDE9LkA0wpIC1wlobMSVQJdnyKmRaF4f/OIyeHcCoxqM4QhdPcS2jA3GdLHgEaqfxFNws18BLhLFZU3rcLLyQxKThR0ja1AUm6XWAG6ZDv75GsYSrlC+VPrsIJLN/KqZSFben3/JYSv4bbLFW/Sl0HV4VuoGSrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 11 Apr
 2024 12:14:34 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 12:14:34 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 3/6] ice: Adjust the
 VSI/Aggregator layers
Thread-Index: AQHahZu5L2SiD9xptE2vuM5LTowpI7FjA8ZA
Date: Thu, 11 Apr 2024 12:14:34 +0000
Message-ID: <CYYPR11MB84291E5D0504B3CB7A034916BD052@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
 <20240403074112.7758-4-mateusz.polchlopek@intel.com>
In-Reply-To: <20240403074112.7758-4-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM6PR11MB4657:EE_
x-ms-office365-filtering-correlation-id: 6befde66-6c6d-4f73-19a1-08dc5a20f30e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kLe189S0dAfs4GeWo/jI4lpKwINfGWgVJuWpqEmmKiiiybKBVeSc1aApsjl83yS4hpcYxvyje0FO4A22ZJTSqKUFprnWPOXU3nOwQxAzvHUpSQFCuF03t3rGEpsjmLsOM6fX86Ng7FCKFKJZKQKheyI95NQVS00qLI5M8Ptx98j5Brda5jTH64to2G7YnunO3h+cahHq5YX5DtpQuQDk2qYCP2v5RueQeSZQRmovcALoG8qN0+INaUY6TDSXtP6LdKnes9Jcnwcle30yw4daML70Wyv7ItK4vPH8uKadN6lR3LyrAtbxCpwXni3qEKGCVvOyBEVp+FVGzSryRwbNCNQdopt2DBe1hO5Dqp8dyMZTZJlcStEyu7ev2R3IpuqaVqVBdbgRj2KKLMlRZphVOy1ZTO8oMeqSXczZoDETvgME8wUSQeo9fzmtpPHdXL9fLI4+aSQR0bMIKuGw2bdmk2PcNjSfgz0LIMd6wZdUAx9o8TBEWXVEnYdrTNAfemLBx8PoN7qiJs3tP5XVglCfPV3YK+xQBr+pC5RsnT+i8BE3jRlG1fOQRMT7K0d1aHNaqxyJSrlP0iE6FulzWP7hzYOQym9IBZ1qE/qSO+93DA5i6242suLLHyUjtDwbIhVMKjuqR4I1uEkQZoB3aDJI2Y6ehbylEpAYFZ1DqZsMEsNLSMnghlgJ3d+KOhOorXStDcbYpSS27BhMOMQ5k8ou1mtwgyDHIMaE3aJWc+DA8lo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lRup89rk2IKPTcDcTzHks1It2iBXoEssGXSzkISwTOdlJEIks6C6p2hO93xw?=
 =?us-ascii?Q?RBRFocE3QvJWOJIyWifTFlUWrL6GxchnR60LAXQk7kp/bU/3sKHiQK+ahdRy?=
 =?us-ascii?Q?gLbYjoOrkwcA39GxIudu/B6uIa7OsA1arXT8X0XwJp5cj0dUQwfJ3W+WlrKB?=
 =?us-ascii?Q?IVz3I1sDdUhi+QFUtBcczWSoo6Kylb/mja2QQs1MJLKsDDXfWoi4ET8wz+ux?=
 =?us-ascii?Q?RHA0tX6cV5uPw+b8huLG0V5//q1w8Mo//+ykUWseHmVUMqZeLYJlwD6zut5c?=
 =?us-ascii?Q?ZdNKfBUVuFp4kLgw9RIFnGKEJKa72sadgzek79O+yqcLpb4aeppbIsH6HWx4?=
 =?us-ascii?Q?iIwmy1nRldCDSYawO9koefpuAslmT9El7lWjeQdFm/ih3A1KiCVUoCW7eCFV?=
 =?us-ascii?Q?2Edz2XAjDyp4emf9pGaZB3DF1X/amlYjU2m/YalzOx44BxNP38gk3XwACuuz?=
 =?us-ascii?Q?J5S+BE2oeEvCP8Yk2CDnqcKkZ3scCbFs/kAMyYCti5poU8CiqCK6A9NePI35?=
 =?us-ascii?Q?dxP6e1ybR+L5gOPhE72KqvuRq4Lq1BMehgese3A7FxKPEE+hQW8g0503BD0e?=
 =?us-ascii?Q?UZ7f7qQKF42CrggV96+WNzq3jfVD6GKQrgFuT3JxOY23tgi9E/L/xA3WJ6as?=
 =?us-ascii?Q?+aOIx5AQ4zua7q4Rx8nnTUEXEv04fgMEPxZxPtiiXGWjo+eM4TaWIBQpPzJ+?=
 =?us-ascii?Q?TSR3GRpOTJX95A8CUKZHrg1Do1fPsDD9ppHWJaFCA1OdXVwigmGpYaYqvBGM?=
 =?us-ascii?Q?XIuC39r+I9gd9JvOYw4k941bgEYxK+bq0HdSys9m9GeNWZXk0FKJG1vpPabX?=
 =?us-ascii?Q?YAyhM51Ic5VvZrmM76CaBTb0FKJWdLizwE5Ru9ZwYXOVySYhplNOBnXVZcx5?=
 =?us-ascii?Q?veCHNGLkloNRuFTGYO/xoeSv7EElOD4w0u8ZKql8cYYvhn4r9xPrgU5/Psru?=
 =?us-ascii?Q?5tb6jN9w4fALNS7bdJnWszle9MC+LWvlR6/yKq1gceC7TPvSYLJc1exEJHpG?=
 =?us-ascii?Q?+C3DAscSKD/lcxf+2VpunP6ijxeayvId07ZyNWqXcpjHHm3JsxZaRJYb3Wvb?=
 =?us-ascii?Q?IH45yzXe8vHEaXiEIdL99XVPldh8iNoedISzhnrVUuH81jEkAdSoMgHFsv71?=
 =?us-ascii?Q?SbJtc9I6VCkT0Es4SvLgel9OXALOIrO3qb/BZrvlMP4m9RlXedWG6Ne0kKTT?=
 =?us-ascii?Q?837omLIATQzuDCTnT5ySZcfDygXWOaegkkGk5Kwl33b/IKFNkB6AC1e3jiuA?=
 =?us-ascii?Q?XBUWbfaRpJgcHDsJwNEjUuAZg4gA0DMZm9d1WqZtcqiqTNr/ETVagEkT+VrH?=
 =?us-ascii?Q?ZO6rcDEGpAdzk9z4ZDye1l4qYfku0QHw9ViNQFadYiAd/Jsw12HxccbjRw0c?=
 =?us-ascii?Q?XulDOTOJ4q+QgG9BeCPdihFDKn6e8ZtRaEhgwsXP7ugs0i4bbibg/sMRcmPB?=
 =?us-ascii?Q?jK24/ArnsK6ZqW5PdfUIK2z4GRwrlcZiRbEWGP4BV1D8YyRp5P8gzEKwO7xa?=
 =?us-ascii?Q?msdku/fSJ3LRW196SiqL6yH7/c4Qzs+9umelwyAAWpvcuu0NxMhVVQtYS2dg?=
 =?us-ascii?Q?ve0roLDoRBSnilnJVoabDtf71LKc1Eh3CnskXTdTUdkuFeT0ZMGwyxj8UCjV?=
 =?us-ascii?Q?YA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6befde66-6c6d-4f73-19a1-08dc5a20f30e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 12:14:34.2396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aBRkva6byFLLWAyMYkBN7d4l77vg4JH4aIeM/uEEj5j858hBwPrAba9Q9Qg179AWX1sgsqctcU3x0fKYK/onjxo6GDMa0UbrpqTYWt3vaS9plE11u37xI2Y7W/lqyLFF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712837678; x=1744373678;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gsRwILQ8rILh721FP8h+hy93irC4psLuXw6x9UjlTsw=;
 b=myQFBFQPlwWTJe+sfCcFQ/cz5e8z6OAw3a3BU8YaM6m4q8hSxrAFh2pr
 H3rPffhAZGZ7Czd0afNnJbT/jt5vTRU4+8vxMrugLqaQJtXF9p/rIIzmq
 pVkm9oBTn/Z56/7m8JOYpxloog3CLYZy+XAbpRAjtUtxgvXqbnNMWsmb/
 vzyqQZdfgBoziiNpLUS56pzxBSuyAjCfEN1KrYoOVkb2XxBtkI9v9zRu4
 i6zyHxHktrw3iKv38RPEkcED293w3QnU9la2P7ng+vvuqV80UjCDLZ/tE
 7fDk2b90GYkjD/3cm5qpcg8ajfL5Cx44wWWZurrDJhrozyy42IUG9gMzs
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=myQFBFQP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 3/6] ice: Adjust the
 VSI/Aggregator layers
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Raj, 
 Victor" <victor.raj@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: Wednesday, April 3, 2024 1:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; jiri@resnulli.us; Wilczynski, Michal <michal.wilczyns=
ki@intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@v=
ger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>; Raj, Victor <vi=
ctor.raj@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; horms@=
kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel=
.org
> Subject: [Intel-wired-lan] [PATCH net-next v9 3/6] ice: Adjust the VSI/Ag=
gregator layers
>
> From: Raj Victor <victor.raj@intel.com>
>
> Adjust the VSI/Aggregator layers based on the number of logical layers su=
pported by the FW. Currently the VSI and Aggregator layers are fixed based =
on the 9 layer scheduler tree layout. Due to performance reasons the number=
 of layers of the scheduler tree is changing from
> 9 to 5. It requires a readjustment of these VSI/Aggregator layer values.
>
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 37 +++++++++++-----------
>  1 file changed, 19 insertions(+), 18 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

