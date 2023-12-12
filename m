Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5449D80E879
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 11:01:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D553B614D3;
	Tue, 12 Dec 2023 10:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D553B614D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702375282;
	bh=dY40q+3Un3ahv5AKL6mlmdQ7ir84HWGh4KvkOb7hI1k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BiTdjXGmDm3aZmfIfaY8qd+1fIcSqotbG5O5hzddzr3IdFvpRTelli+73qi60KyAf
	 7JqEd9vqOm20SaYo7XtYCj/rpMn3IvGXNe3qO8ehWBuciImdod7XOwN4YUhphPSRnL
	 FIV/lEMt14ztkxZ+FkEp+7K5emcF8p9newKScwLVuc/6sCVYXMmQlzyrA3XcnQ+xxm
	 PXNw7jRNvl9DKFb6uHvk8nguzgYN+YwMIR6NHXyPRBepG5tZQqWuEhcmdaTL5fhHJ2
	 /ZBoMp8RLO9p7by43lxlccBOql8AZK91Ul/4uf2XsDNn2iJjXBcuEZuVZbrBJ3Wc4Y
	 CJSHzM1GiJWdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mv3fWilTK4Y3; Tue, 12 Dec 2023 10:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BFA060B69;
	Tue, 12 Dec 2023 10:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BFA060B69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 924DE1BF383
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68500403C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68500403C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0P3I8sh0lSzR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 10:01:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41A0940108
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41A0940108
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="397570013"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="397570013"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:01:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="917227192"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="917227192"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 02:01:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 02:01:12 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 02:01:12 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 02:01:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPJ5whMvu+2MVZ/9G8uIm/RSndmvBxjuHCx0xDF55BIJH9aBQ8P5ROsl2bJKHt8otp12KP1+a50oRNtTq8OLcmrBL/r+MjDtrKAsLubNP3JXFlTWoB6mEQ+EBugaq98N2wCKlHdNyrY/UDCiniadFNwwk8KFiwbJElbL32Ed1sr4WiVGyGh8cKAqY3GtKwAH9FJ9obcUDnCNNeYeLKmNPGz3WGN02/xmj9ttOZAni/P/Lnu3hqv6P/kJtsaF4U08LdJROyXHZUYR2b7cJQg+wtDHskJnfm8PQW+4wT/mnFu1nPnmhkHN9No5VWvjS4+u7fqL5qZ/Jwf/Nm8j1fYAtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tTC5P8Hh6KuCTjf1nBeRLpvya8L9onnGL++DpdBV5fg=;
 b=Q11RBJ8CggXH9PFgTWOd26G2npFcgpKQBSStHeCK7KIL9+adhAKoGeTzkZAmBruZcDnqnikcLLuVzWexk9KG6P9a7ztqjnr3z1rKQhuiHmiICAru1SZN9q8ZYY+EqnGlVF3ikkV5Wqh+N8ZtGCj7BczpeDVufHwVIq9CAs3SNrNcPlAV0yoc3Vd3mac76ZjUwSruxrJuZx4SGL+OyOs+I5ieDmrYGgf3FmozoI/TVm8kpSlA+YV1405HGm24y4i2igLJP4xvZfPdg1IkyQmBzHxKNBdZ/iTOxJCmHp0+Byk1tgx3iHs/N1f6Y94eaBepY3GD8BTQsYf4LN89ZQOkjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3528.namprd11.prod.outlook.com (2603:10b6:a03:87::26)
 by DM4PR11MB8130.namprd11.prod.outlook.com (2603:10b6:8:181::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Tue, 12 Dec
 2023 10:01:03 +0000
Received: from BYAPR11MB3528.namprd11.prod.outlook.com
 ([fe80::7273:de04:d24c:2457]) by BYAPR11MB3528.namprd11.prod.outlook.com
 ([fe80::7273:de04:d24c:2457%4]) with mapi id 15.20.7068.033; Tue, 12 Dec 2023
 10:01:02 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Rao, Ranganatha" <ranganatha.rao@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 1/2] iavf: Introduce new
 state machines for flow director
Thread-Index: AQHaHRClMQ2GPr39VUqgNWrWAoaCm7CligGA
Date: Tue, 12 Dec 2023 10:01:02 +0000
Message-ID: <BYAPR11MB352816F09556F665E866E42F8F8EA@BYAPR11MB3528.namprd11.prod.outlook.com>
References: <20231122034716.38074-1-ranganatha.rao@intel.com>
 <20231122034716.38074-2-ranganatha.rao@intel.com>
In-Reply-To: <20231122034716.38074-2-ranganatha.rao@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3528:EE_|DM4PR11MB8130:EE_
x-ms-office365-filtering-correlation-id: 21e2b8b4-7161-44b2-2860-08dbfaf93fbe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wQQJ+M2hKMez3INbSh9WxxkiRWG0X4UFPd/bVeBkVdrWrX0T6YpxsH2mXDfIvRmZMkXV5a2Li2DLqQr2l0vTdeDTWuwK5hvdQAY7YC2S1dAhCD83wkhAab1IByTkLFbTPM0tsdQTl9JuvLXteNwqMZiI3+46HZFkJvbGxOF+V97AiHziNBTLoALRV/CS27j5bRURr4zyrKEqAL6kHtgxyVN6R7laL0FkHiWFoIukjCcp1SG4tDLkPmP/goYM/Q42my846zReYF3dB7HAGXPm5IHdHd6qQkLd3UavcJAE7qqxuFxHL9RrgVRpBfxYI4drlur0dl0FPlNDpXPqfFe+aqhTZhtb3B0qUuRtGiOdOBetqMDzuVYbuPpEr2gwgqoW+7Yvnud/H+rZaLOnr7pf54VWX2iRcP+mFARlwUVRtJ/8xwyd+8Yh0zOAgQcPyVh6or5BLbaiVmuVamjUly9+xaksKvQ6jGMS+71GPJc33qFIVXqXx/pSMaV938qb5ZHyox1+VjKpkpGcsBiFM/b5TatHvFv4U9bij9Qh+RT4aCVeS4EcELenV1oI8+27d9jlP4pKh9mSeo3XYF0ntk78A4f7Nf9tcRN/FtOqI5jl2jToj2MnqruG1JRjtzFrXuyF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3528.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(396003)(346002)(39860400002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(38070700009)(55016003)(76116006)(66946007)(66476007)(66556008)(66446008)(64756008)(54906003)(82960400001)(33656002)(86362001)(122000001)(83380400001)(26005)(6506007)(107886003)(9686003)(53546011)(7696005)(2906002)(316002)(38100700002)(110136005)(71200400001)(478600001)(5660300002)(4326008)(8676002)(41300700001)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wudpWoII/Rca8uAw30kA/lJhBGWgJaQLVZmDkoPyy6wXI6TVCUZPxhHMsVyn?=
 =?us-ascii?Q?JQATIqk9cE+MlvtwkvJZUkKXCYIk4l3U6swMsOzbwQyARQ8g7e4HhD0k0wuP?=
 =?us-ascii?Q?Z0KQZZtR5Sm8qMnURLnTO120W3ry1gNFUPdsUBLabjXqUQ/0q8uKctF2hffn?=
 =?us-ascii?Q?CCukSvjHtVGr1YPysekNqbPdLz9EDrYHFtN1Lu02B+AcHZYKafobcc2HAxpY?=
 =?us-ascii?Q?zpArmo6CevLfE8DY3D3dgv9EisO3ymkylhW+sT5FlZrFczYIR4QFFNF2+7Dv?=
 =?us-ascii?Q?exksFiFzUlskQ71kLOwmJybTDlfk9YKSBUa2oZTfaMz/3BpW0kHIHa98TJ1y?=
 =?us-ascii?Q?9dxza6JX+wKTMdTnFHkid48Pg6NKb3g3pvbfhMoTSIS039UPLVYq21VsxKRm?=
 =?us-ascii?Q?1rlASu8hZ2sOvhhQLIAY4RAjWYHbDiccLaDjrsxxGuteE7VRf5p6DCxbN2K0?=
 =?us-ascii?Q?oxYJBe+SH3Qz2y3dlvFzOV4bJFRD4MVYGcXWDxMKpGIhw2iahrk6oOkSKrOY?=
 =?us-ascii?Q?w62A9hHB9GlQwgKtyJNg54ewh8bzGadXd1Ao5wnzryiq8sXkSkb1qb6uWp4I?=
 =?us-ascii?Q?jwvesxAnN8ZaW1Ie7rn7kyqKghhMqP3OufdH56JwKQadQ1xauyvwrNx560W5?=
 =?us-ascii?Q?prBCIiNDtV+eSnymMxAwcRYMLSrTR/D9VRI7Na/k3GSgGkIbxXWCEfx/Bb/O?=
 =?us-ascii?Q?d87TDr2CcguUL9rf6Hmea2H1JZFI/Asu8N7on0LnVk6VSAwFchQbJ2KApeO7?=
 =?us-ascii?Q?knnxfBfO981ET/66d7Ff5W+BhtgrInQAsCqc73vKpaXcZVzYYuvbjMytpp2A?=
 =?us-ascii?Q?V72uBgKlUf/fDqRN6tK3PazZzfAguk0VKzi1SU3WoM5T6UcAxj7K1ALfK9XK?=
 =?us-ascii?Q?MTVi+toXzvycq3fHYRWVpR0+3jigB46DQS/eGXGR8z1urLsdfOQD1lZLGX29?=
 =?us-ascii?Q?XJCMXLpG5mbgD3DxTpZDQSISPeeUntefAJlD6SsN0LSrKsFfqPsN4U3YMYyR?=
 =?us-ascii?Q?IGBbEex5GtbpRnn5DTPrAqXfgBjQtaVooWlevR01PiGXQKmv8pAWD6fwhUxi?=
 =?us-ascii?Q?Cnpp9FWleObtRwz+cCCV16AbTlwpuU6SiGfFX+PtIyrwTlB129xc7hXPnk2E?=
 =?us-ascii?Q?eLq9sO8LFBvlrWDmaplrjoq3b04M1pBpLVI6iaZQgf2UDo+3ChLO3AZomcN6?=
 =?us-ascii?Q?ix7t5yE6xT2xQPA3ih+tjLV4g6Dkb9zeK9/Vb2wrUQbfRmUoSEByLOgvsjZf?=
 =?us-ascii?Q?MRfHr1ekyFTHPywUgP8era5xmzEmJiyv9XPlYqt6pbieZ2f1fjCNMU/p2h5P?=
 =?us-ascii?Q?oEzIp7gMlplWQSKGxL5e5BU70buQ+CdygIBwgOvoieG3hb5qrfLe+mHeYhUu?=
 =?us-ascii?Q?9TYCXe8bu9/wsI7yt60ZvJyMSvwcX/e/M8xD/+N94/3fpJ6Ojg6Ny4ESfY+g?=
 =?us-ascii?Q?vZVGxli67dQBEb61CAQGfJ5zkfJRo+BObnHPLuBdC+ABPdK23rVYu/ecwWP1?=
 =?us-ascii?Q?KP9Z0yzg5B2I/pmN0qa87InkqBARIdU+mfDn9pJ5t52Nci32EvnztmXqTRJy?=
 =?us-ascii?Q?TGCsO6uYoBdd4sOC2AXs6M68v9ojG4XNWkKVXZuuLiIZF+hiyLMnuW+9EVWf?=
 =?us-ascii?Q?Fw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3528.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e2b8b4-7161-44b2-2860-08dbfaf93fbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2023 10:01:02.5753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xAKYlo7RZFBARmjIG91U9UuaibnAlx/u/RIZJVNwB1zMH4UoD834Se+u8Mf582AdjNZK/8VxxbGsbW4mKi3gQU0tGSCBOxyNNGfzRDrZ5s4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8130
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702375274; x=1733911274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LIQF3hUjqdI8Z81TzmQ+3MRQc6mgIS6ZY1I2zqeDw6k=;
 b=XOdiS6dFQVyrMYh9Pzuyn0IFZKVd/ZdNvbymgXKFOftJKDEG3njC9GAX
 +Kx28e6JytNDtqzqNPZn97Ocdk++YESiclSeyHYIKSD8gbVer6GAq1q2F
 qUwu7qJbTwGt8GSp/82QpbSjtteTqOyX+02qCfNj7QaL0bhPe1g9T5nXf
 fMNln3+YueFGtFnd1yw3b5dKn4c7wjSRnAPORa6hmkDUZnIiqghZ40tRp
 xXYXQYRXqDV4P1zvc4ojDPssT5v/Nz+Y0zbxZjw6IQpUxQm4jhY5LlbWx
 7We6c9x6Ft09NGa9Av892W70IDHechTSbw6L1/VPpWPiYnWmdotxeJgKB
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XOdiS6dF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/2] iavf: Introduce new
 state machines for flow director
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
Cc: "Gardocki, PiotrX" <piotrx.gardocki@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Rao,
 Ranganatha" <ranganatha.rao@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ranganatha Rao
> Sent: Wednesday, November 22, 2023 4:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gardocki, PiotrX <piotrx.gardocki@intel.com>; netdev@vger.kernel.org;
> Rao, Ranganatha <ranganatha.rao@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] iavf: Introduce new state
> machines for flow director
> 
> From: Piotr Gardocki <piotrx.gardocki@intel.com>
> 
> New states introduced:
> 
>  IAVF_FDIR_FLTR_DIS_REQUEST
>  IAVF_FDIR_FLTR_DIS_PENDING
>  IAVF_FDIR_FLTR_INACTIVE
> 
> Current FDIR state machines (SM) are not adequate to handle few scenarios in
> the link DOWN/UP event, reset event and ntuple-feature.
> 
> For example, when VF link goes DOWN and comes back UP adminstratively,
> the expectation is that previously installed filters should also be restored. But
> with current SM, filters are not resorted.
> So with new SM, during link DOWN filters are marked as INACTIVE in the iavf
> list but removed from PF. After link UP, SM will transition from INACTIVE to
> ADD_REQUEST to restore the filter.
> 
> Similarly, with VF reset, filters will be removed from the PF, but marked as
> INACTIVE in the iavf list. Filters will be restored after reset completion.
> 
> Steps to reproduce:
> -------------------
> 
> 1. Create a VF. Here VF is enp8s0.
> 
> 2. Assign IP addresses to VF and link partner and ping continuously from
> remote. Here remote IP is 1.1.1.1.
> 
> 3. Check default RX Queue of traffic.
> 
> ethtool -S enp8s0 | grep -E "rx-[[:digit:]]+\.packets"
> 
> 4. Add filter - change default RX Queue (to 15 here)
> 
> ethtool -U ens8s0 flow-type ip4 src-ip 1.1.1.1 action 15 loc 5
> 
> 5. Ensure filter gets added and traffic is received on RX queue 15 now.
> 
> Link event testing:
> -------------------
> 6. Bring VF link down and up. If traffic flows to configured queue 15, test is
> success, otherwise it is a failure.
> 
> Reset event testing:
> --------------------
> 7. Reset the VF. If traffic flows to configured queue 15, test is success,
> otherwise it is a failure.
> 
> Fixes: 0dbfbabb840d ("iavf: Add framework to enable ethtool ntuple filters")
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Ranganatha Rao <ranganatha.rao@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 27 ++++---
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   | 15 +++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 48 ++++++++++---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 71 +++++++++++++++++--
>  5 files changed, 139 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index e7ab89dc883a..63b45c61cc4a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
