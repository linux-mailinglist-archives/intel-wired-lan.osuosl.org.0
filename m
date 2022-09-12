Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E64F5B5CD7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Sep 2022 16:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2B06425DE;
	Mon, 12 Sep 2022 14:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2B06425DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662994634;
	bh=QUli3y9epUb3YzZX/3ZxGxR4PUROFi1QyAFp9z9I/S0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aLlpJa0RuBRG1fL3w8faVGq16S+RkKo1oppjOrMzUKLAy/q8B7D915ms5aWSKDbzX
	 1LbxrX7tGMb0XCHk/rjVPygnS38jPOI6TxQZIGKbGm+wDC8Q5aHipa4BKQiYLjcwaa
	 OpMEaqb/QzBSXzXgQd9E1p2oPHAeXjq64bxxUzfxwpA1RArnHPkh1t9LzZfUjAYtb6
	 yrtHQbn/WSvYNj0hqUYqjgwV7/ghHGm1hM9dfZWQbjElGePAetWj0orOeRzvKjf5bi
	 /teUNpjDbsrWl3aghWfBOY6LTZVo7OWIB53y8vVheFfx2LIcvALGRjIqgF5Yvr8XON
	 +UdK6GePHG1/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NdasymC0Rzwb; Mon, 12 Sep 2022 14:57:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 912F9425D9;
	Mon, 12 Sep 2022 14:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 912F9425D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A24B41BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 14:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A246425DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 14:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A246425DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eWVB433KCVo6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Sep 2022 14:57:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B0A8425E4
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B0A8425E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Sep 2022 14:57:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="324117515"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="324117515"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 07:56:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="593523734"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 12 Sep 2022 07:56:49 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 07:56:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 07:56:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 07:56:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 07:56:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+RQykBlUBFeWEwPDAE60VQnfOdSZE8noGRrhk/Pm5P5WX3xPQBOXVpPrFB5GOhPstXub5y0BhobdbVbQGNvjHgyHKZhQDF8qQelpncB4ZkHd+g6j+yWCcDJz5iUjxnppSvp4E8cqFbLONzcluV6ynT7CiOo6LawCf2Yc/o+Ps2+x0T2q2tJNpIVjIohKxKsfEGyTQUvQCA2lEqshKdQTep0MODy69Vasa21b211lWWWvzMz4qdIbRQvTRsKifIEEyW9ORI2Zix7pCh8r9+P8T8CcUuseOSXGHMZFes0LFY2mjBMIex2P+XoL3GBmZ+Kc0fUYyi31Bb9J2WjXqzXcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=58pVjqF8G4QHKJ7TqKDl8/grg9VVeXN+huntJpe7uUo=;
 b=Wn0puJdbKunjMgkNgcMyOcON6STu7MNJ5oNfevedO2wsOuJLG1eUDdddhMWnMxrh4+2Twz2Zt6eNwrbcxDcSopo1228TBhHrkV4YYsYugK35fslTiYFmHuOEKSbXoVB707YT6EEoqxZGUEVWLlqA5I0XNHbvBOAlY81uyTwmVEv2maLwHwulkUyLveDx7eAROiVDJGd04cJVRlkeMDJ5ahgk3mzVtwrB4/yUUkRb53b2eWsc+DT5ujlNpGK7pGrCKEXTP0U229389SzujiDKtfa+GHYIzivF7DcFQLhqbFZdjnnt8gCwQtWRLJqR5mDN53WXjOs07SKPjobePTYuGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH7PR11MB5817.namprd11.prod.outlook.com (2603:10b6:510:13a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Mon, 12 Sep
 2022 14:56:47 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5612.022; Mon, 12 Sep 2022
 14:56:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
 timestamp read
Thread-Index: AQHYpoBZ3umBmyO52kGoCvLsgJi2V63cIgtA
Date: Mon, 12 Sep 2022 14:56:47 +0000
Message-ID: <BYAPR11MB3367F14AFE2E82CA06D857EDFC449@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220802145757.273270-1-karol.kolacinski@intel.com>
In-Reply-To: <20220802145757.273270-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH7PR11MB5817:EE_
x-ms-office365-filtering-correlation-id: 6fb79abf-7890-4970-c41e-08da94cf0420
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dQ8+oOFopWEIYo4LxdhfIkNvYnu4eNzyWlXm+GxjWm8yNHifdYfn715osTGPwON2nNeov7sajLvA87SMNmWHOV3GHpbVwcOBvOAY9NYD9ohxB7K6q4nCWW478v62LEoefWR8g2+LyzF5R3n+EAI1QyylHjPoKMiIKsd51+2OfnzoWaa27t52Js1rsSr5UWeDh83/IX7LGThBur0sja3TOaBZZWfKAT70XNKDkNBpJTLW1c7MSOhluY6TmbjysJ1US7dhoQNZl1IfDASX/WjdpWPLTHAvTbrsHvTCJbKbW+/eqvQ0TjdT6RfVPvrDFlUNXmSCEerFTd+sDnfGDkchLrZWjiQx0L94a929xHoO0gppKeM3oUBf9JJao16Gt4q8k5e4DB+7Xrt9nl1oIcz8ccMqP8PI+yEVJQOWJG+BpIwugSnRGm6r1M9tcOUNTdjYtMsVvOBBY+i/UvpLwYWo9jm+6Bv02RGEWPm+qkDFbIDb/glm7JtkNyqbD8xT76qKrYlChdSc+ouZFB3D19NnVU/6m9HIZ8N8j1xtF98wxaO/ZsIy/FgRPHQfK7FWO65IOsLfeOTmvZIRiN/4sSBxS/jwq/6sik0+tCi+d6I5m4bCoZ/0b4PdurDQFeZ0llJpGKkTAp0jfPORuzem7aqOQYil4ssWh2O6hF7uBY0enYGervfWFzICrD8Azsf9otNvtsvikmd5tg6C0a/9GSfo35cJQdReW35u4yX5spsaw+aLUjjdH26JD2UuuZN2pWuXb5+Ift0Lfi5fjZoBVpP4MA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(136003)(346002)(396003)(39860400002)(122000001)(38070700005)(110136005)(86362001)(186003)(316002)(83380400001)(71200400001)(66476007)(76116006)(52536014)(5660300002)(8936002)(8676002)(478600001)(82960400001)(107886003)(64756008)(66446008)(66946007)(41300700001)(4326008)(9686003)(55016003)(7696005)(2906002)(38100700002)(66556008)(33656002)(26005)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AX/g6Hmr+gSOkb7jyXe/tqhBNPOleJqtvNJuD4nFMJC/DmLpspqaljGh8uKD?=
 =?us-ascii?Q?heRadFHxaLRrNLOfPGMDC6vBi+yuSgpEEyFOJzwd7YWFwJjMxb+8/+7EYgX7?=
 =?us-ascii?Q?COvW7wbOtOlN8ubu0DbLuQCc84OUt/xEdFvmsLgqkgTY25HkURsUVZBUwfqC?=
 =?us-ascii?Q?rEhaKG7Rx0f0cQ+NDH3s7zrcnB8QiOOIB8TNoUO5/uGkXYQgsOtDKj+p1SS7?=
 =?us-ascii?Q?gBgD7TzQAyH+d+BAjb//PU9iZfg6VX6qdypLuOBedWvcqp0Kf8nXSFUsX/KT?=
 =?us-ascii?Q?dVBMaOcQT1QQAnwM63S/dacgggp3fqAaLKX0SM3uZo74Cw0flqXlfAaJzTxb?=
 =?us-ascii?Q?Pw8Vm4rQ7rIF2DOLedyH67BCSlHV2hVRV4o+pMomNHHJWF7DwYNR6YffZk0d?=
 =?us-ascii?Q?CuEIyf/ZyjdzLTQ+YELIOd6Lpg6ttkwJJ/n3lgmX0VOBu88TUiClQiWR2Q2d?=
 =?us-ascii?Q?NBfY0qF1J1XNAAeepqcR0YNo/qaFy2kzg22OlCNTOEUOG1cL9U/skLHrBiSS?=
 =?us-ascii?Q?bP48+ppoUOXfaZdv71STilaRPtTl+5PARwm5TK2qf8/ELIu2lauU/OMApvEf?=
 =?us-ascii?Q?Bbs7A4nySqj/D6Tt+vlLMxUJgNwAZExSbbOadfJ4tsjQD7JNccGZpa1+OWIw?=
 =?us-ascii?Q?Wz15jVZPJtVKLKdn7gMNJnvdz8z1aZXxMYI1/ZYx4jkZCC1BpvobeQfOBt03?=
 =?us-ascii?Q?mV8j9JsVnVEZv3GDWYhGNVXE6qIF2eHhFTEh8zS84qTMl8Mf55ZHMHGbitYt?=
 =?us-ascii?Q?CeHrEzWSXzlxW+ZcjrUn+dEnL3IBCCuPZlTaoQgqiYEbEPmyq3RUdTKTqZWp?=
 =?us-ascii?Q?B81ikP65/irYrSJWjRBQxrVf0TkE8jaO3aElI1/bNuihr1G86QA32Fz11oYA?=
 =?us-ascii?Q?teRxubUxO7zR2plqddpj+6LMPuSH63LHbmGYutbdYLZkFcYRjz2hP1DAWCcY?=
 =?us-ascii?Q?dLZbFFXvPf4+XR1QawiRz5E2HVOITg/nc8ScZ+rLKyBANlk2Vdc/UJgEH4f6?=
 =?us-ascii?Q?Hobtbss6cSaHsNfdbJ+BCwwY6bQL7fWK7kw72+5l3oWscpK3fr/Qdj9WYLut?=
 =?us-ascii?Q?y3wFCUJtMWvbc/ZX19jdWC/4HrIkU95sLWOM3Cz9fdagz5FITkzwXfBeiJOm?=
 =?us-ascii?Q?CmiMI76fw6Ufq7Aj/5wFvdaTXIiaawG2yTWt2rizrNWb0uyS6jQADfcDfWh0?=
 =?us-ascii?Q?qphGvD9Exi6gOIO3plUvrzSe6t1oBABhJwGsE16iernVKCbs/Y0r1CQix51e?=
 =?us-ascii?Q?iB8C2xViYylFpNnKdaEVpYKXyGRQlF7c9agZDK+dqzg31/d5xSsODTLRRAqO?=
 =?us-ascii?Q?JwhsyhoQWieEM8x+dTFeKdVxoDF6Sc6Dq00NjcGSMmJuv6M14l4ziHPca7vd?=
 =?us-ascii?Q?70nU8p8cQITxxPE+yDRKTZ7Jjuow6z8sKn9gqSUKN1Qs+5Z/VTaRsOyQT6HV?=
 =?us-ascii?Q?1pDQtF61H+bAhJo9RLEh3haGCsYauMcgTxngjR+IcoCkLv6J3S0tMod+QP+K?=
 =?us-ascii?Q?G+gOp2NT82bwKZ+CnCTNThU5My1qnWcGqawvp+M71a7gM8DVN9zhxDuOet5z?=
 =?us-ascii?Q?5VACe76JMCbnuDEt/NlV7RYKkmYRT1OmC5VxcTFt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fb79abf-7890-4970-c41e-08da94cf0420
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2022 14:56:47.4118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qeqYlssERlpJWUxcqueSe2yohO82i+vetGApWURxz7+cQ2aPKUH1bkQ5EGeeJIX3b9pDpOl1s9ZEFklAGo0M5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5817
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662994626; x=1694530626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P1MpqW/uYPhVls0exJxwDXwDF0w9glEcNwoyelWTjm4=;
 b=Nxn/scU69ibLzryejGoCsQ2qVruLlWQeWRXot1q1JNkVFP396lYKlDS3
 tYftyiX52WXvAAwYFlvUN2uOWBgAzliI6YiWMmVIbSzb63pjsHmq6/9WJ
 12/qCuFEb/miefoxmAojy5tmEDayk77Xy1VHp6t8rfwLFIf0whRy7W8NS
 OuQdJnqyQA3eOcPB6gAwExhO2sdleQ4Hz/cOhg9LwOUkqr4TOhdCwR9/l
 pbXaSr+MMks2aI+zT+LqvM6HhO5m/LeFDhmxoUHMVWljg2hwWG8Z6fMdm
 9RnWVKWxQ6W955Hh+hRCjNr5FLYVd8ZTlK6b8Mg6OucSCPohh//kLFLTU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nxn/scU6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
 timestamp read
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karol Kolacinski
> Sent: Tuesday, August 2, 2022 8:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
> timestamp read
> 
> E810 products can support low latency Tx timestamp register read.
> This requires usage of threaded IRQ instead of kthread to reduce the kthread
> start latency (spikes up to 20 ms).
> Add a check for the device capability and use the new method if supported.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V2 -> V3: Rebased the change
> V1 -> V2: Removed unnecessary cast and else
> 
>  drivers/net/ethernet/intel/ice/ice_common.c |  4 +
>  drivers/net/ethernet/intel/ice/ice_main.c   | 32 +++++--
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 47 +++++-----
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |  7 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 98 ++++++++++++++++++---
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  7 ++
>  drivers/net/ethernet/intel/ice/ice_type.h   |  2 +
>  7 files changed, 152 insertions(+), 45 deletions(-)
> 

After updating to latest NVMs i.e fw 4.10 ,we are observing good results.

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
