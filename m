Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 598BA7851BE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 09:37:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2EFA41774;
	Wed, 23 Aug 2023 07:37:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2EFA41774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692776260;
	bh=MrFL4acVO4JHK4e5Sj26VCHC3TGOqX61STRPTCp6Zlc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZqxgNhbtQyHAkAtAw7asEjRp0pccXcWz13g82ETrjdMH5eU7v46SQqDYFFL9MDgu6
	 49/vPC3CyBIp3L+v7sOusGAfAff3qM5lkhTkVI2NdAWm7jb/Wd9h15XjaBU2EwdER3
	 nKUjkbsSoUDxrh/Iau1u2ZE5J4rJ9REp1zVN2DwfRoFej1QMriiPdqOnT6j9/ZuXJa
	 LFKGb6Ol5nhwMb9+0vizp0LAMmNAKUaIU+TKiB/Kq2XH2sy31axHKpU2JwOODnuvml
	 QsR56jVunKkrJB7F8exlxEH/JZs9ExmM0CK8l2TCrla+HezowMqL17tlNCLMAOd6De
	 pnmKntJHCKcbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pFix8LRjV9dW; Wed, 23 Aug 2023 07:37:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 761104167B;
	Wed, 23 Aug 2023 07:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 761104167B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56F3B1BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2EC5260B05
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EC5260B05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 18f7xf_PiLAf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 07:37:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B2D960AE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B2D960AE2
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="460459773"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="460459773"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 00:37:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="739665833"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="739665833"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 23 Aug 2023 00:37:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 00:37:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lnhQ+lsQeniqjA/7Glre0d24gqawJSSg6oQxW8mdRhQ8emdFWCtz3c8+8I1fLYFm9dzFKyMYueaPEQ3mOVC0lE4KInF11PRlWHgkEr2G77k4oujQIMu2fUWfcVY0ivxgKkoA5EGGxBCfhqz9hnvfAXtUAjWFxgv1dkyQcLUVYr4DxnjbbBiBf3aO7LI3szC22JP3ZRZSDConQAWjW9Es350vGD9w7wjPb8xHnXSgK5VjnrafyEYFy7xh62U/vjPUj6OwDQrUTw/Ph6Y5jx3gTTSIQwpS+d7qVXkGEzmmdABvNUcjFFRDK0OUG7ehUG+xrijRxCN5kX42UmdT7+AAsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mvkrji21wQPYQC7+hacQQZkwX11mqVrmjwQKvh9va94=;
 b=CLTfTsl9SQwaZIGUXA8FXg4eTC/lMZ7t6rQsLAv1OHYvNvv1sj/uJmPmNMneoHsrzM2PkP98HcPvyANtQYNRHUtkTmEEiPXVBOirgPCbaQM8/svAIcKFYJiUZxMR6VyRU2jYgCaexamQPhdjmrJen9Z2l7rel3kiOBen48cUFe7ddiLUevhjzDS4uxQmPrcGFJ/sjU2VFUtPdYJKVtGE0qcJcDfN7p0YDzQBRGP0ow+IkemU+LK+2mzGWKkLNdSPHGIbBtSIOumqsCMBfCyihEwaq5uN3vJo4lraBg4JiDFgj9SvCeUUecwnpy735aNmCfrsM6B4fYAhg3snAMPxgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 07:37:13 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62%5]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 07:37:13 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: check the netlist
 before enabling ICE_F_SMA_CTRL
Thread-Index: AQHZ0J4qaMeBSr9HZEOo0ewK/7QOea/3gO9Q
Date: Wed, 23 Aug 2023 07:37:13 +0000
Message-ID: <CO1PR11MB5028267B09E69F0AC831920DA01CA@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
 <20230817000058.2433236-5-jacob.e.keller@intel.com>
In-Reply-To: <20230817000058.2433236-5-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: 42078a7d-0b42-4b6d-0eb0-08dba3abc4b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0i8XHJHK90j3TxJ1k+d8Er81IzUGSQbC6Kmt84KhaLBXELnRA/ZMJzIHNY2BXdPLK16Oh1ZM4eovuvgkx/F1MjtbPeoK8aBtQ5eLSYN987z/FREQCWm9KhWZmmNT78NxdlXMdunld6jA+PEZBQ2I5McO0U7tLFU5wD3X2ORtsH87gR4mZwX3pJ3gUHhdh9rd+mWB+zqa9xaQJELzQ3GZxJroXr/SzNLq/FTx2deJb9dPHnnV5HYCZRN6HJD6dz1x0aW721kyHglBhD9RTZ7LajvVeK9o92U+FrtPTpJIRUal8W3RRsN7HgpCUgWI/ehe/rOGswpDmh7lsoCPImTc5fv28sCFd++3NaESCYx8M+bDYNwrUJiUuEJYqAohFqkJImJtD8C+OHwknGcuEPJcSCakK/UUWMFg0fHb4J4Wi26UqeM4//975sR6AZ9Vzrxs/JsBgJY3wkRvyB+pA3H9TDFoXlUtMf/rPQamviPYUBy+Bk9abrmMGl/KX1iuMIT0FGy/79Db1c68IU1urs1+3JAhfTIZlh7WDyYGs++DPEzQnToxm0BQksMvvfLqoS7euidWyWgOKvYOMZs5moJ9dV/y02D27gtSBuVwPtmF7AFZMgzPWGBdV0DiRZYBVUMH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66556008)(66446008)(54906003)(66946007)(76116006)(9686003)(316002)(66476007)(64756008)(110136005)(8936002)(8676002)(107886003)(82960400001)(4326008)(41300700001)(122000001)(478600001)(71200400001)(55016003)(7696005)(6506007)(53546011)(38100700002)(2906002)(83380400001)(86362001)(38070700005)(52536014)(5660300002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RF4Frp1GGIGx37I9xfqkq/MULd8On3cNgCTcqXVhDKZ+6VxfoWjZwNK/4SVM?=
 =?us-ascii?Q?UyehYb98FbIufdUW7t85bwC4K7o5/Gv9Ix1b2BoinFCxDVBDZvyR83KtFzjp?=
 =?us-ascii?Q?CAnw06J4S16z1t4fM9jbt1KHSWiCwHZsS4AV5xTkiCnxcdI6AmhupdtLW5EF?=
 =?us-ascii?Q?0gs/Rvn1Eg9NkGAgt2boONlHMHU4OwjZ7B5zdfyHrHjW5okeywRUtAeUZEFU?=
 =?us-ascii?Q?QBJ40NLNuSLXwMHxoNwgBTETVZeY7g0PBVudcTna59KHyciZwMV4mEVPul3g?=
 =?us-ascii?Q?dfATx1mGLdapj5zeTHjrWmF6K9jBcgeaCC3Rhi/kkBolyo5RhEY6EeFa12Hi?=
 =?us-ascii?Q?l9jxtu2vPiR76R8x1JnPOdjgAdcuz7t/IVEeVqyT5a3sH8p+RsyUJl01aKy5?=
 =?us-ascii?Q?edhhwpYqumDOy4ASjjJTcjlz0QRvs+PIo2CpVh/rsFjM2AqfkaJWhd3/bMTw?=
 =?us-ascii?Q?mnTT/5gwQxKI6xB653D0SUaAovP6YP4rBDuxUinHuCeVI1iljrpkZgK6xet2?=
 =?us-ascii?Q?Xt8OdxNiZVQx7b1H7IYiSGwNW/mTTM4gAi4UO2M8o0dcnkAroS7wdbhexSbu?=
 =?us-ascii?Q?uzfmgSWZTQDe1L++ULEPGNV5mqmko0xFfYjwEdNW6cOBjsCvYdaRXQKB1uKs?=
 =?us-ascii?Q?jlDbkNE5wvyEOQSvswLJloiPMeUvwB9V7fOQaP7wPqPe8bIKQfmn4kRsbNLj?=
 =?us-ascii?Q?Kza97uYJPPkau6HIkUBOgl2dwlmECaOWWRMh+zv21DZBTo/ZBQxgpYK6RU/l?=
 =?us-ascii?Q?o2gqCqJ+6wDs24dEtpTnxQyFQwBTPbQubaUyHyWR0MMJNxtvYQDDJ/hyZvl5?=
 =?us-ascii?Q?DtSJ+4yun38E3tJHH6Uli7S+qG0X8xsXyLMjkUVEG48abd6g6klbOjXl87aZ?=
 =?us-ascii?Q?RHPzSKgXK6syKKLNTSbbH7pEJvo6kPgW6sAbNaqcew6jSlYDYnxWy/Waicw6?=
 =?us-ascii?Q?+DH5h8bVSb4qhe1Og2o+/6TQISsdRoLuWZ/lG9pxSg48dZG4YHj1EjTLhrM0?=
 =?us-ascii?Q?Z0NITufAMXZga2WUCFLc8xpno+HT7OE3ZCut9xE56Ma/nOrxZH0TuZ6dxkFY?=
 =?us-ascii?Q?e9fAat/kLiGNRH6fifLzZSUQ3qq/hAvSWbQ5SRXbdvp3QxCUA0vvlUatr2Vo?=
 =?us-ascii?Q?Vq9ezZkLGpkk8RRcdvm72sn5e/n0doeTrBsf6LN23gomDOiE1atXgypZPuA/?=
 =?us-ascii?Q?vwSKUdeHbPA+YOHzy5BMEghSn0YVATb509h06yRwajS9coUpjeT9HpmFLoPI?=
 =?us-ascii?Q?9Z1EHp5gpyLa4Ahqqy0buSvPybn9+2zaOcrELn3sPP/Yp1ZVxz+gi76uipb2?=
 =?us-ascii?Q?bredYjUtX73lMO26QRQOrnoui9gnn3w9pGBmIT7EntAtfB1MI50Hx3AaSIOp?=
 =?us-ascii?Q?dyVIB6c/Ibtp+a6GQT+zyOQXc+MrkSgJYRYl/V8U6CpBj9rGk5AhIlMnDiJJ?=
 =?us-ascii?Q?arUJSMH6cx65zJc+OZH41C8D67oWqcXLCl77dmh3bTaxOC3a+NdRFWYYz98X?=
 =?us-ascii?Q?3taI/dy9umXPqFXHKwj/ZO8a+b1Q1gVEil3Jtm1rq6OFSdpQ22yA5jiudmzh?=
 =?us-ascii?Q?Oh75hB2Z//3GPqSVvYEIjub9bIT293/0PN80v1F7IJUv2+DRzposMaqqHdw/?=
 =?us-ascii?Q?vQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42078a7d-0b42-4b6d-0eb0-08dba3abc4b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 07:37:13.7661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 54i02qnxTr13ItL06wwjirDvTrdmWAGJojeyGJp3obbX8BS4YTgOo7y6tRDXEqkNmlNM50msZYABrDFdRL/ztqiYttxt0y2ZLP60ixb/4/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692776237; x=1724312237;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mmFd1oPQuqokq1DfovJelj0HFbG8DNWEkpKbsu2Y2Z0=;
 b=LEYvn0PoILdBM/sO74Tp8dWzBveKs/Wvd84c/U9gXs35dyvkKDU2sMSN
 CZxZXbRXV5v0YRsQsslCnYOB5Em1MQIwzX+be+P+iCa0FRFPkjrPTL1kE
 sbeayYJNRUc2XEsSC9OwOzuxrJUsunRs1JzAW+GG0GevAGflKr5QwOhgL
 nq4rnU+AlYtDq/dgishIFYPiIPhsXRdRDA0SFNfode9TvZXn+v7uyczpn
 TJdB+1GTQl4E4E9Yo+55jk1fe5n/6G/N7wPR/rl/tdzZYqotxv/WCynNs
 cm18epVhu2zRM8evnXHtX/pRZhBXqjKzheRPY9TMqJ4Gj9jDDRk/ZKI77
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LEYvn0Po
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: check the
 netlist before enabling ICE_F_SMA_CTRL
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, August 16, 2023 5:01 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>  Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: check the netlist before enabling ICE_F_SMA_CTRL
>
>  Currently, the ice driver unconditionally enables ICE_F_SMA_CTRL for all
E810-T based devices. In some cases, the SMA control access is not
available in the netlist firmware component. In such a case, the driver
will fail to setup the SMA pins. When this happens, the driver prints
"Failed to configure E810-T SMA pin control" and forcibly disables all PTP
pin configuration support.
>
>  This results in failure to use even the fixed pin capabilities of standard
E810 devices, resulting in reduced functionality.
>
>  To avoid this, check the netlist for the SMA control module before enabling
the ICE_F_SMA_CTRL feature. If the netlist lacks this module, then the
feature will not be enabled. In this case, the driver flow for enabling
periodic outputs and external timestamps will fall back to the standard
fixed pin configuration.
>
> This allows supporting the software defined pins on a wider array of
platforms.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * rename ice_is_clock_mux_present_e810t() to
  ice_is_clock_mux_in_netlist_e810t() and move it into ice_common.c
> * make ice_find_netlist_node() static
> * reduce the scope of some variables in ice_find_netlist_node()
> * use FIELD_PREP to set the node_type_ctx field
> * remove rec_node_handle
> * update function comment to indicate that node_handle contents should be
  ignored on error
>
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 62 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  3 +-
>  4 files changed, 69 insertions(+), 3 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel) 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
