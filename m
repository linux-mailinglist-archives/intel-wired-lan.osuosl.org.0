Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PajNV9UHmqDigkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 05:56:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF16627EE4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 05:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5F4A405E0;
	Tue,  2 Jun 2026 03:56:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id glvPxNWWe-ok; Tue,  2 Jun 2026 03:56:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34964405AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780372573;
	bh=vL0AKAWuV4AANwFWmydAJ1UwrnCBBxdtJjTdb87eurI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LqfidVerr/VxTqk9CsTUiRKogI5vgjJLYy0YZxulsxKLuHrB4x7+Tss3N4w6wwBi5
	 C+35wCUthZO5LlRdj0MCdTEazsthNAqc45ImSwZYayxnZ5JRKEmAEWkDfTJLIVokEM
	 G6q4P0igcQ9kWLSurqBjtUW2dBptCiMtY1kj/f3JKtGq+Rl77nCa3fmcLckkaJkiHI
	 CYtJ8aJQdIjCRImYjGdFdui0L9zYD5HJTk7ha9oGlXlKi79h8AAQWtgJW6uNVjsJei
	 VHN6UYPU6HiQziamzWU936SvKvEhnttXeo3pQxFAh3Myqdm7bC9Eou1BTHUss/A3+g
	 KXB6Srr9MnwaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34964405AE;
	Tue,  2 Jun 2026 03:56:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B80EA223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 03:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D32DB40D70
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 03:56:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4H-vVimcq5h for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 03:56:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B1BB240D77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1BB240D77
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1BB240D77
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 03:56:01 +0000 (UTC)
X-CSE-ConnectionGUID: CaM2DjkPQli9P38eUH4O9g==
X-CSE-MsgGUID: 9DOSKTqXQl27boiPWhD6UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="80295201"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="80295201"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 20:56:00 -0700
X-CSE-ConnectionGUID: 1+EsydoBTuCjFBdRmCeyvQ==
X-CSE-MsgGUID: plK4OdZAT8OXqJ8ZTmp3Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267648868"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 20:55:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 20:55:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 20:55:54 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 20:55:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MRKBx/9VjDE8tELVc8n3izJrc8WMwnslqHz7KrBYqeVJkDWotjuBnA15033IhowtMl936eeaIl6T08gkBVARNk+V3nlnJzcb1Rst+F1QxTB5tzn6MjXkOkb7wxodStzvjJHbkRdKUjAicjyTA0ZzBtjopCbebX0QhLKnhwrwi3E3kB7br6N9cvjoL62pYFbwRbsTG/cD0lBbUj9Vn+g0Gq4f8G/CFoTZxiCwOOnHlUDAsf0IYjvQIJV9aAqAS8M8hyP7t07j4fx+8XyLm0k8bA3yYw4bQve7zx72m0BT4JDLapWq+8nPobJ1vTIJSSlABMf+AyDPziC2xNet9M9Eaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vL0AKAWuV4AANwFWmydAJ1UwrnCBBxdtJjTdb87eurI=;
 b=uYmJWqY49bDpabyGepqcAtFa46gYpJgIhXzW+0UcNjOkAd0opWFeBVPU08WsbPyVmcbMtT+OHTOANfsXS/waiPVy9kQSGKTMB/Ht9dHJhTebvvUodZnbzAEawLPsM9AyEgwtLvtoQUiqKDW67msOn1MvqevpXXPQnzzJZdpwygdapuu2dKDZm5H926+OmmkbbS6zBtGIY69Ww9or93s2I32unsrVaS+tfsAlq4fmlbTIX5Hs75QKm0B1WsPsUrDD2kAQ+u07hP6wu658ycAI1/ZnDKoK0GzpNi2VhEyQaOCfdVqO/e0lRWA3/HstILQDQZoRJsa7UvUTiscI8FCKqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB6332.namprd11.prod.outlook.com (2603:10b6:510:1fc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 03:55:45 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0071.014; Tue, 2 Jun 2026
 03:55:45 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ice: pass the return
 value of skb_checksum_help()
Thread-Index: AQHc4fIvOYex8ZQuEkCyppfMca6/vrYqwGyA
Date: Tue, 2 Jun 2026 03:55:45 +0000
Message-ID: <IA1PR11MB6241DE6F2A0F10A97A24A2338B122@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
 <20260512084729.1338557-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260512084729.1338557-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB6332:EE_
x-ms-office365-filtering-correlation-id: 9ab4f31f-ebd6-4af1-d22a-08dec05ad2f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|4143699003|11063799006|56012099006|38070700021;
x-microsoft-antispam-message-info: ITuo1WeDWwoGtCbR34krUzUjCoPvFlRhy/3RqXrpMgzHDxccbTnI/6B+RGZwT2B+qLW/E2OCEBOXOCZrJyYbOS34zisoSN6axI7NMC4Lx7fbZbSbKvb9F4lz0HIsdKPTKQ6bv6yv+ukjevd3UdtPMDFdJ97YzciBjpO1amT91c8HEFAVTzyXfcXuaJSn6/Spo378V0lxX+wRIZVzoumi7bsFTXXAlDa9oS0/1MXr47jfbGP7H/eAYWtOO+aznX6sCO9oANz5CluaPsMTz5DgROilikEvBqVAxzS2LDDCoHuYccFvPTfGUP+0FCth77LhsDlWpBFhMjrvrm8r8HPqOFNncn1gQLNSh5f3DHGXsqxvFWBJMGGvK0bghGazN7CKf7la+xpsWOXVXF45fffPldxFxiluefGWpjU4gRX0DSOWmTNjuydBY6zcbTC6vRs+bg6GqVPke30FVxT0P6q1KtHrAOw454LwTKoxgP6WSzQwanKJ2vfzdpEERCL/dotU4ssq+UxF76HjvUr8hKZbX/CnYLJ9MkDHuIZl9ef/nkdHDHbpKPp2I06nq4w4XcPe2Gplmbrav/ytqxsgDoOeBYl1WCkjHrmLnx3w04MdGAKAo41qQLGkDNgKePCgDp7NdE+S8xzrwCqRNBrOScM0pdS/AZ4bgW4pnmGfjlmaDbCmmmyb79iLByuRvWJoKQRhPq5B104tCdUxWGl7eLrLeVk4OQtSOI3Svc1JAYxquVbH+GAghTNkdzIsB2/dRjFd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OaUckJevsrIDQMHBUeMLu3bCNw/C2G+Ra5BGKbBz8L93qfrS3phV9AxlrjX+?=
 =?us-ascii?Q?uBP9ZqzOPIheCzVEu71IvnkNgj5ICMYn4zl/5Ls6TzMhgon/52cJaztMKXV8?=
 =?us-ascii?Q?xTHf90KjEaxo26POkLUiBZV/pDrjZNhtqd2d4JIWHdBbzgD1ocIwhoEOuL/i?=
 =?us-ascii?Q?duCx7vdMLWETpIN6XHWb4f6WnwKw9kTeoPfkV1SShYbohDGAG0r6nIT92+7N?=
 =?us-ascii?Q?URU2z4kOCb6/YeI9tWtkcAt0I6lYxXfP70+7hDPR8MQ/HeOZW1IxR0JcCo2c?=
 =?us-ascii?Q?8V8TKtAvox9DIcFdavMqifdfE1gawvBaPLvqyNl8EH9W4xQBTCteXsmZIU71?=
 =?us-ascii?Q?mr74/S2QFtMED0AAuXHAn04kKY+H4y8169NMS6jWNuswqnXZgjF5aLUtL8lB?=
 =?us-ascii?Q?Wz6chKOB+ZjkbEInAzWECbuxX8T6JRaqqFZ63dtSyjyXVeWNJ9GgDFWpMTqO?=
 =?us-ascii?Q?Nx0+yBc4NYwje/hcskmO2lELdYFx3wY5tVYt2WsYnovjq6Iv1qf2r+fbcx2t?=
 =?us-ascii?Q?ZgZf6CxOTu763hRjLxpFK1aGEOvNMwAZKwDpN9Vasl3w33vK6CVUP9/ZEoMN?=
 =?us-ascii?Q?gN/+pY1w/bGWeEnosco2NEucBRk9tKb1JhKg0RWb6uoxsC0xBxb1ih3mTVaJ?=
 =?us-ascii?Q?/K9kjIesLRH8M6IdYIyQaOY2EW7P/YUJI8Z+I2gk8X6BdwqHk8l7EHPdHIUH?=
 =?us-ascii?Q?6wPaSwhtL/eleZuqIA+EzAPXcNIM9RhJOHORfxsoRhIfFePwD0Am2LVTVjlr?=
 =?us-ascii?Q?WXeH9FMAXuVe4C+51ntGA+gQ5ihO7tN5dBTxHcpahqbR4fAG7j6V5SeYHqlH?=
 =?us-ascii?Q?nJiuJPWhbjkh90Yb9QymKNIyNYI5vLteXEYd77tZLHOPhEKXXh7mYV6SG30V?=
 =?us-ascii?Q?QXwZ/DA2mu7ZokCcyrnWOePFZfT1nqR9yZbrAdO48ZPcg0WfQTJnIKCoTB+d?=
 =?us-ascii?Q?g8dZ3JtfFr8hoFzwybFWqVfIUekTRSWVfDLOWRkQKn7saEy58I0Rtna/BZys?=
 =?us-ascii?Q?Rl8L0hxCc9o+kNWyWbBXEnh/cmI90ZzEOgDXZ8C2pHKvaqjJkVyGr6tOf5tr?=
 =?us-ascii?Q?b0AZ4yiwIKL2H1tj8rK3D3mwSJikWns2NcWxy9+1GYBbvIX3kO4hzm4ABohh?=
 =?us-ascii?Q?LtEkv1AS/6eTCDdNPcvHQc9lRhqERYJ6vL3//qyOqq6WkL1lcq2kVbILH1DU?=
 =?us-ascii?Q?0w7A++DSJ1NCZzni/VoDs8uqNrfDBlpuiBmy3UqZXVlwTQNqPD6klXpYfEhp?=
 =?us-ascii?Q?X9FLzHRTYu1N48nMA9Xz7RfXe0o5ddOZllVrWU+4Tj9C7eAM9/7oiUSAuEno?=
 =?us-ascii?Q?Jny3W/xBJKPCKXSSJ1XSeRbt2pckTERfjCiVlIu+lR3JNvfFgxh3Wn8ZMK0A?=
 =?us-ascii?Q?mE4Y5GLtzrwz1uXohaTL4Xrq2HdDkE1zDoKgKjwp8iYFJXohOR8KXNwmghs1?=
 =?us-ascii?Q?jJrPonpEZAfpGF8vr9IPrI+ekUjHewZF6wcPHmaklHkkMwbXO/A1qGBsGd4A?=
 =?us-ascii?Q?mM3navvigaqiQPndUnuJUpRuX69rgm+SY4yMtKDkJUakrdukIavHpev3rzd1?=
 =?us-ascii?Q?Cl5rcuoP+ImICu1K1EiB7ttUSO7kvk63hkbN6Ms1D7PKF+T6JQwVR2BSYkuc?=
 =?us-ascii?Q?wV6Te/SvBtnSjsIO5nJGBYPNimrvElLJIzHcROZUVkrgCk11fF189Qu1fQEq?=
 =?us-ascii?Q?i25KvGWsObloRA3xdMcrK1/CsT48anvMhkRjlouz9BboGrUe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MGImHYEwW32LTi9rxLU/Kyt4mkO0uqVs3bNYS1O/OAFUKLl6hidsnICzJ8dsfL+pJmB0Zy27NFG6PIyrk/pW/F56z35w1Mmu/kWTPzRjqjQUr3GLUEuZEyKJiMPe4Vgn6xsG9obII3WBkzmmSE9QkYrUEmOcplWNEvh4XSDcrX3ysEi2DDsPNBuzVtejsVCYR45QKLWRPb3Qmdn4TPU4EITLwbC9T1OmV0uvt3LLyul6rUSVz35XD1fUoT6liefz+6ArFnrEuuTP3VCD5BHPT7PObpII7pg3HfqKauC27qba7f+khpI58Oo5H0fQDgCJQj7jjSDedfO3pPbSq3c/gw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ab4f31f-ebd6-4af1-d22a-08dec05ad2f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 03:55:45.1949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yJkQzPdhkR/aLM3E4cEqFYjRmajfMX2ZB9rNNzhFxmFmDm9pOjkRwgEgViiH6WfkAXF6RbrxaO/KieoR/EpG6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6332
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780372562; x=1811908562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vL0AKAWuV4AANwFWmydAJ1UwrnCBBxdtJjTdb87eurI=;
 b=AJOJYe/ZdFcdvLzfPKl3qPFL1RLEFRLRCpVXRK8k26u6HX0ckepmpfVe
 uEo+yn++HJmQmWGs5IP5iLkVqxnTq9YmEZSzkrd++eHWfjHcN7V/Ze/Rt
 KSWuxOptIUOY5ozamX2ZtdQXS/ATpnDTXsUN8rK8YUvAUyaPFY2SsB7bE
 ojat/fHsX+FwmbIi+iddO1NBYWF/ZNWrgEYoMv71/1O9HTz/nJMNkY0iN
 bluUHHrb4Hfhm+nz4CGnDKqRk7pkboaOuCboY4/hDtqmNlR3X1zyGrCdn
 +PtqKeKOq67HKDk0KYUNeQ+fgK09v6K5w3StKI6yrhxIx7x5FdhbQhBV6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AJOJYe/Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ice: pass the return
 value of skb_checksum_help()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: 2FF16627EE4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 12 May 2026 14:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski <michal.swiatkowski@linux.=
intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ice: pass the return v=
alue of skb_checksum_help()
>
> skb_checksum_help() can fail. Pass its return value back to the caller.
>
> Commonize this software path in goto.
>
> Instead of just returning error try calculating software checksum first.
> There is a check for TSO in checksum_sw_fb.
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_txrx.c | 20 +++++++++-----------
> 1 file changed, 9 insertions(+), 11 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
