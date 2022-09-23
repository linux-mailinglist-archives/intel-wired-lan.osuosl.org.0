Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C265E7980
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 13:23:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5924840441;
	Fri, 23 Sep 2022 11:23:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5924840441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663932213;
	bh=9JoKrn9q8jf8bdNu6++uAyelmuoXpzizBTSvE+Tw668=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OThagMUdghjz6ej8dAFpqPFCqLRdWhVN9XvfaO3gclzY2TJ1sPNHWRAOaFZjvqeFy
	 /PxzBg/bscJmau81ngz9pQsUodXzTTYBmbcsgkma4uBMCpCuqLKLCNxasb4F/ey+ql
	 hbAeukSb0x6ze1NJ+LUFD2KdjxmzU3rUZAfiDCWgAYfssSALiNG2VVVW4r8XjIbbYc
	 euqg/Vh2FaRPi4Cgc+9H9AfJBPyeS9tK8GabLvnKnZWJ2knY6egGQYcmGDSducKx0w
	 m8UTMvjPMoiDgY9CBuPcpJqplunWWXNTcnQi0mZ5PWi7u5uvIJ3waOg2BIHdc8IidX
	 YTPLdAAVHH7YA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RLH8leHDANXe; Fri, 23 Sep 2022 11:23:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA124405A9;
	Fri, 23 Sep 2022 11:23:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA124405A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAD341BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C293F41997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C293F41997
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxgN-rncEjun for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 11:23:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F34E1418CF
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F34E1418CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:23:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="386861269"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="386861269"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:23:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="688686611"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2022 04:23:14 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 04:23:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 04:23:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 04:23:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=anLFx5KsI2a9vrWl/CdlcPBhDyxR+OjP8l9nYk2ufaiVEyP8rzc00RP+km2HrER6MFB49OONl0383RYC65mHgUNs/h5PyoxkXlR8svkPF5MOwuczylp53O+we18tRD81mKlG1GMNdkVmg2e2Rbe3CFczsguJA2hqIJJB+QwxsFmxgMKRpnuZTXldN+0ioem59FITEF2V+HR6OhkxlsvRVxboJZh0RfHUBnmOlTL7kmnl+4tRELDXTdx6jNGa6Io4FA9LrhcXJtCoZfO7Zz2iXKbaCKn6TZwk2AymchoT2tFMNiq/thAWy1jHkEwRMqxkSPgG9o0kFEHbJpQtPekvwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=siQMygpumsoX+107kiCkVD8S0V+/6bYbkcPPbI+4z5c=;
 b=Cyuk3iVUk6XW4tme2XoqohynQ16HVw3App2Hgwc/q2IlFQadU+PkdXMSQOxLmdx2tv6pgqSZlyiIWF5N1JsiwKIPl7TJoTf1jHCOUJWIjgbWpjYF1h6rb99nMj8znJ/pE+8J/XIIYnnh6wT6KA7BgBE1j2TOwsF2UEZ9uXmx5xV/CNfSy0I7HBd/Kecgi/3blMhFAdpO+cdBv4XcldT11AOP4K2OM7Y9NCQ427lQcC/dFHDtw8YWmOdCq+YItstWS+DhOuFKXMMD6Em/igWdVbXVC++g+Xo3/EYN81xtKslfp2L54StUhJjs3D2KtgSrQLaj+thSxiBYK9vy09hswg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 11:23:10 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d%7]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 11:23:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
 topology
Thread-Index: AQHYw3GEBMOX0YM29keonx9tcm/A763s6yVwgAAHt4CAAANr4A==
Date: Fri, 23 Sep 2022 11:23:10 +0000
Message-ID: <BYAPR11MB3367A0C8B0FFEDECFEC4FDC6FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
 <20220908105427.183225-2-michal.wilczynski@intel.com>
 <BYAPR11MB3367A7B2299CE71A0BB878C1FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
 <CO6PR11MB56032DFE65C714E73E239AA7EE519@CO6PR11MB5603.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB56032DFE65C714E73E239AA7EE519@CO6PR11MB5603.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6297:EE_
x-ms-office365-filtering-correlation-id: 3abf0cab-0658-4b3f-234f-08da9d55ff33
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /EsR341XCXY40tIYISLg9au5e4KVpDIx7wXUE6TrBlJ6hwmyV/ukJkZ2gQqJMrKWuWQcCqWEzNaS4CnCLi71GTJhhpD+9Xmm8FytRuZYcMKw8dv3KQvnIjEbV6cFrZ0bWItafVrM0quvqtd04p7+LcVTlzM+IXgKKZuK701QbQLt8m7jV2zAl7x1Xsho6+vpPrLOcuABCTVDuIojQt6Mi34vNQ2CP0Px5jk5km9Y1MXFeEtQrhhrLne7PW+8JZDHsaj2BZRwOnwtByTuWqt0jp82GPHaPDKU8sIra1BbneZNU7wNKFjHSZFy7M5uiz2y+6593KiLC+77ZWG0V6ocnn8NA3+TN/SdPX3IYo22LmWLVt49PrcrsBCZOLyA7PA5jGsvX4f6YfjL5Ce8sfeTBUuS59CArQQcx5N+6Ue5M9nrnQ8Bsk3Zs6fIBqPyUlAbFsiDK4TeoeKH7to1sw8t+yXf/Whfiny9OaYtqQJQvXhvf3lCMoXk9ReJ7lQ/fmk5cfjjEq23HACm/utgsh0/wpDIt7ksxDf6C3EwOGWvs89U/y7CCKouBLxXowvpk2xMThHRC/T6icTj3e3F3PePaO0m6pSCRzthpr3XHgStOFUlJxUcItIfelaLDrGu6yzS1PZb5xyriL1neeymaVLK6M9BHzAmP9kQaPY3EQcrrK2D8nwf72UtOWl/jmHlBH8QS6WZOEprnXTl0mlT4AkWEHF+imOJn5ICtXe/8M+uk2ex+u6swUqh/Pm1xmZKFMMiNUvat6tBrChXCmgUNoILrg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199015)(52536014)(107886003)(38070700005)(41300700001)(122000001)(316002)(76116006)(66946007)(8676002)(64756008)(66446008)(66476007)(66556008)(4326008)(478600001)(55016003)(86362001)(186003)(83380400001)(7696005)(6506007)(8936002)(26005)(33656002)(5660300002)(53546011)(2906002)(9686003)(71200400001)(38100700002)(82960400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?mQvaz2Snj439VVNwT3qFMYnDpR3CJpB/MtbQHg61Vc/7VmsZJqxJuS7WV1?=
 =?iso-8859-2?Q?ZpKFnzAGHy5dhwjrxw/GGgn8EBj7L8oqvsqnbX5leWpo0pJ/54ubR7ByY0?=
 =?iso-8859-2?Q?ZMKiaWEBZaFw1IhyLB6bpaEHaUXWr6UQ9UNkDNaEgOAaMFEAnWxfBGx5NA?=
 =?iso-8859-2?Q?7tRACzN+4Oi9hR//SDDvpueGDTBqwytZ6VNrKyUi1/uJkUmACquLj/htBD?=
 =?iso-8859-2?Q?zWG70thCg8oHjTunFZ566bCRQ3ahg/t0afh/93iJMANm09zMxsUHFuUAVT?=
 =?iso-8859-2?Q?igUKbT0ipcdcwm9pszRUU2y6q/sNnLJWrnzk3Glvoa1bB2I1bH0//LIaH5?=
 =?iso-8859-2?Q?PDstjZ3om8NoZTUW6/mUcGSmB1Wrt/ok3X5vNyGWK5FNFpLW59Tfo7WjEp?=
 =?iso-8859-2?Q?p6cqS34nVAMpnSOT3Bod+XHE/oq3flWOoLVUfxdmsroSvCQ0Ic8bcA0TOC?=
 =?iso-8859-2?Q?rIGnbUMDihQTfe14c7Os7CQ+cYkLLMek+te8GBRZX6iF1B/pJhe/ZG4Hj5?=
 =?iso-8859-2?Q?ixdYX1Lg0v8AjagglpGdzdembWjJtRAAIjBlrOLIFpWvz/vIiUZFUhr3gV?=
 =?iso-8859-2?Q?vmGfJ64GLvFqXtG+w53mAOl7ec9HTuay7u9bz6iKrxT7c/K62ekh2GbP6G?=
 =?iso-8859-2?Q?N3dBsrckmHMQmININrKf/su+A8dWFrOrptmkSe5dkUNIIQr/bwmWzh+sgI?=
 =?iso-8859-2?Q?9Yr8alHgl43ujtVOTt1rz1KOcCohBfcwxHNwW48XvclcI0NgS9fwTXIMzE?=
 =?iso-8859-2?Q?MQwOObcGEICWdVHsliV7/KG9DKMEXXwt/pGcWOEscalKzN6rDyQk3tAEFf?=
 =?iso-8859-2?Q?hXXGNnTN3BzWUHWoQt02BdCm+ky99hs1TfKCmCPItFSByrNo3efh8omAxL?=
 =?iso-8859-2?Q?0aMTcPYnujaRw4WaoC7pysDq5coQPbpmQ9kMezbbfJMvrL8rbsWNXMqPsP?=
 =?iso-8859-2?Q?N4GaDUY5ZDm3+C0j9NH+tcFv5oJsS9oOf1y/QKGc4PhL+65VA41FaPK4lg?=
 =?iso-8859-2?Q?YErBMWjbBlYmBmn+qkvKDG8ePhVTbZAygQoxD54T6zK7LnyXbG0wL7vGdy?=
 =?iso-8859-2?Q?Bw7sUAj0FRHtorA3JW2plgtN9oJ15q+V3Yppy87vqbN44ZEdTIAWDr01O5?=
 =?iso-8859-2?Q?mXPV1pXne1PFFsrZRn4WfL6EG7x9RjSAuWHytJIkIBwqJX3CX1oPwcq/9W?=
 =?iso-8859-2?Q?OztVh0KzHdeb+EJp3Ko5DlB9td1huZYM4Jrn2CZwZ2aeCmgIY3ie2f+uSa?=
 =?iso-8859-2?Q?Aw+nesZKEBrs4HideOlYYPM1nlLnyxQad3IVsCPMJokgCKnwV2LCMLQq3x?=
 =?iso-8859-2?Q?cjOvEMrm0rQU3On8y4on+j5jD++Q8lAZoAOgA/SN7nOasD08+Yssfrqk3g?=
 =?iso-8859-2?Q?bAZOm/tjfhMiTcxpvsqP+yBqNW7yo8cHHHResOHPi9U5qRNHRNsQqsQdPK?=
 =?iso-8859-2?Q?jM4HI7FYEtazwgKNO98xPvT6635BeZ5q22PGiLcAuQypCbOiqT1GngGaVD?=
 =?iso-8859-2?Q?1XZ/XcNbwV+n+Erh724V3GN8DFl1blV131cJrQtbSi+drgtOSHpKBjCnyz?=
 =?iso-8859-2?Q?A6pS09i/kXcpi0Cp4xn2vypZcaJlf0SApy7en6B+34egDSTxSTi3LPHQ7Z?=
 =?iso-8859-2?Q?d0e5piskfNaj86+QiRJsowVP9a8rJUzdFn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3abf0cab-0658-4b3f-234f-08da9d55ff33
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 11:23:10.5356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5YPp7alGgA7IssOT2ZhJnnfVnz321SDDe8WF+IDb525tTVAVTETJiBH/Iie4yP8JPFv/+Cu+k6cgBxvYvgHwEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6297
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663932201; x=1695468201;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0SDfeD7U7m0ZWH6/l77jQwmBlherWrKYSWPdMy+pCT8=;
 b=CtaE6ANnmLpyFWlzFH8ZUArYRBh71X/wp5YK/iCtfkg0qZSR9tsiQag9
 QSKygmUNU6qwqR3vwubijVLyOHG1mG2ol+Zrge/YHC4FMIWAW0wD2NvKa
 AnHaCeJ4JAdLatM3zsDkSSmvlGDXbd7g8NehN1ixuGE/3AGPrGw36pk2D
 fSglj0W4lBz46BKOvNtZ6SvkPHvmzGgQFXG8CwfoTHTlFcWaUsCTFqjz8
 WQHBgjWhu5BP0wiyoWHEvDBKVmJzVflmwbS429f3hGQMZClZ/D/zkODud
 s0ALDm1lamdkRicULcog3NK4TQA/tdY0rXP9IgpYzS0Tt4+aqjECsjWnt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CtaE6ANn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
 topology
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
Cc: "Raj, Victor" <victor.raj@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal,
We have gone through the OOT HSD and set the environment accordingly. We ha=
ve used v4.1 related NVMs. We are observing better results than the earlier=
 but they aren't balanced as specifiec in the patch or observing through CV=
L4.1.


> -----Original Message-----
> From: Wilczynski, Michal <michal.wilczynski@intel.com>
> Sent: Friday, September 23, 2022 4:39 PM
> To: G, GurucharanX <gurucharanx.g@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 lay=
er
> topology
> =

> Is it any different than what you observed in OOT ?
> My understanding is that OOT hsd tracker was closed after some discussion.
> Please refer to previous discussion if you don't understand how the spread
> should look like, and how the testing setup should be configured.
> =

> BR,
> Micha=B3
> =

> =

> -----Original Message-----
> From: G, GurucharanX <gurucharanx.g@intel.com>
> Sent: Friday, September 23, 2022 12:47 PM
> To: Wilczynski, Michal <michal.wilczynski@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 lay=
er
> topology
> =

> =

> =

> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Michal Wilczynski
> > Sent: Thursday, September 8, 2022 4:24 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Raj, Victor <victor.raj@intel.com>
> > Subject: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5
> > layer topology
> >
> > From: Raj Victor <victor.raj@intel.com>
> >
> > There is a performance issue reported when the number of VSIs are not
> > multiple of 8. This is caused due to the max children limitation per
> > node(8) in 9 layer topology. The BW credits are shared evenly among
> > the children by default. Assume one node has 8 children and the other h=
as
> 1.
> > The parent of these nodes share the BW credit equally among them.
> > Apparently this causes a problem for the first node which has 8 childre=
n.
> > The 9th VM get more BW credits than the first 8 VMs.
> >
> > Example:
> >
> > 1) With 8 VM's:
> > for x in 0 1 2 3 4 5 6 7;
> > do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> >
> > tx_queue_0_packets: 23283027
> > tx_queue_1_packets: 23292289
> > tx_queue_2_packets: 23276136
> > tx_queue_3_packets: 23279828
> > tx_queue_4_packets: 23279828
> > tx_queue_5_packets: 23279333
> > tx_queue_6_packets: 23277745
> > tx_queue_7_packets: 23279950
> > tx_queue_8_packets: 0
> >
> > 2) With 9 VM's:
> > for x in 0 1 2 3 4 5 6 7 8;
> > do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> >
> > tx_queue_0_packets: 24163396
> > tx_queue_1_packets: 24164623
> > tx_queue_2_packets: 24163188
> > tx_queue_3_packets: 24163701
> > tx_queue_4_packets: 24163683
> > tx_queue_5_packets: 24164668
> > tx_queue_6_packets: 23327200
> > tx_queue_7_packets: 24163853
> > tx_queue_8_packets: 91101417
> >
> > So on average queue 8 statistics show that 3.7 times more packets were
> > send there than to the other queues.
> >
> > The FW starting with version 3.20, has increased the max number of
> > children per node by reducing the number of layers from 9 to 5.
> > Reflect this on driver side.
> >
> > Signed-off-by: Raj Victor <victor.raj@intel.com>
> > Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> > Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
> >  drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
> >  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 199 ++++++++++++++++++
> >  .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
> >  drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
> >  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> >  6 files changed, 243 insertions(+), 2 deletions(-)
> >
> =

> We are still observing the performance issue. Its been observed that the
> packets haven't been spreaded in balance across the processes.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
