Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DAD442494
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 01:21:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8123C6077E;
	Tue,  2 Nov 2021 00:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OO_CtX48QlN7; Tue,  2 Nov 2021 00:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CD106063C;
	Tue,  2 Nov 2021 00:21:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0D1D1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A976E4026D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lt_WEPw7b9bK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 00:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9345400F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:21:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="254756314"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="254756314"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 17:21:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="467492989"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 01 Nov 2021 17:21:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 17:21:41 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 17:21:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 17:21:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 17:21:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nuz/zlXZf8w9ggGDKhmQA8ABskY0gixeyDvCOAMe2rPU42jGJq10ReSHOdikeOZDn5EVmP7/5UYVzYTFGGrSQ+mukEgQopuDuLMQpSZg0UpNRPSUth6QGwOVJLMi6pXyFgY3ffd3lSJpzkA6zPzUezfs+pn0GJowd0pXRIp0vRtdHQVdZaUeL5uMlMbkQmQkg07BJ5DtzLJvU91Q/xXRBJ0gWMHpFkMaq3hm8pN9cpcr1AHzstzK+g4ajf0X9f9UM4zocnYFmC/XUFu++9Y+8JT/EcMy3iMf3/m59xx5e60oohRR1MPDxarU9QU40hItLZG0XbBesXmKhIWpwhiN8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zARhW/RI07oQEN08b7PYSEbbJXvDFaImHRqiKUwE7QI=;
 b=OBtHw3giOqU0SBgCgtGUaEjlOKSKEucmu3BtlA32Q4HlbbnH82Hbxp15T+2D8V3VXAztyCa+QMR8Sk+nSIx97TgUbrRJrjSceYuI06F1R6kgdeZ1LVP9D+dtJkkXnnH+ZAx5WHvyYqI7nlZXCyJoT4pYtAVNrkeztTNmZNdX2FxMqUSOQj4I0tS/I51LCZg8c92HQWv2EVxu/pfiMUKfwYJav675lZ/AVlcut4O0XAr8wIKnY9DOvrW1dRTM76nNFk3x+hE9Xf4TyZspGaCDZ7jSF+BGWPIyWm6XKBLdUAsYdDxH7XMO1d1nHGnlHfNhmRxo/IEaj7LeEA+oMlE3EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zARhW/RI07oQEN08b7PYSEbbJXvDFaImHRqiKUwE7QI=;
 b=ARR4dcLCIlo8MBqXOB4bQyMohgXFO/XAGMrQnj+v0ryqWhEDxD1jzT/H6+FON8u2XJROXcAZkj/Zw0bBYwcUEmnkJe9DAgKvnmg0XImk2zfbHw0kQAa57cK7GjQ6hiqnanmc13C0WZxEa0iUA++tnNRPlweeJsw7vYTH8nygeuk=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH0PR11MB5125.namprd11.prod.outlook.com (2603:10b6:510:3e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 00:21:40 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%7]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 00:21:40 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 11/15] iavf: Prevent changing
 static ITR values if adaptive moderation is on
Thread-Index: AQHXWWP7KP+XpmXfLEGx2wEguQkPQavwTGzw
Date: Tue, 2 Nov 2021 00:21:40 +0000
Message-ID: <PH0PR11MB5144CB199B7CCAB42FA9085CE28B9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604165335.33329-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87d7538a-f4ec-4db9-2e7b-08d99d96bdb5
x-ms-traffictypediagnostic: PH0PR11MB5125:
x-microsoft-antispam-prvs: <PH0PR11MB5125897322703DBF04A43E74E28B9@PH0PR11MB5125.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9ysOsVFH3xQL4NwsvIUQISy+X/dF8x9+Mrc5606g0frkDvjpWGhbWV8HZK5dKWqXC8STJLjjBEAxPEiLqPHsgaVQg/i/q1FsBo4r6gh+W/t0yawHyabIs5mRG/z2dAhTUwzcjJOlOBGab0wXwH/hutz6ZzWjmSwYmBp600jcS8dLNDjSsWhx6JurzcbfPUh7JbYo34gK8d2hU3z4+E8cwKwvzmjuMxzvjvAC6mYm/zBsJMVW8KBSGVHdFJ+ygAE+9dKm6pKMJgd4Gt38n0gRFmNLRoAWwd0usBrQsrE2bzX8776Uz6wCEUETdBoXZjFuzOuIfso4flXztGbkJVRUqal82X/BVuOujxF8oVAqKCKSBz9CXUqpY12/zTs2f887KE2mTym0HLvo8BnkRAyDWGw9PjzZ1ec9OJZu3x1MZaFmkJabT9oX7oUnhe+CfTIjn+cIJ3WGNkDCICarTscezwQcBXmYvS3UfjmCvDmrDcHCVS6uD4sZsDU/nM2ESZzr5oqTRS2atcMGmgeHXUSe/YFiNgVSWYlkLihLBsIgwtKcp98v5ScUGhyqlkdadHxthxXQKlpI0XNE85jfqQedpa4uOhvHJq3ug539K+0B3Ig4uJch5rehzgMBvr6zZ1rUdmBbcxrqwdBb0zkSucKoi0W/gOqhiArc8N4Ap+4noByP0R63kQjWiFJlvvxiljP3aPbOw8o/Y8P0Bzr08/gmTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(8676002)(107886003)(33656002)(316002)(53546011)(508600001)(86362001)(110136005)(71200400001)(52536014)(4326008)(6506007)(38100700002)(38070700005)(9686003)(5660300002)(76116006)(66476007)(83380400001)(26005)(82960400001)(66946007)(186003)(8936002)(55016002)(2906002)(66556008)(66446008)(4744005)(64756008)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ecau/d9gUTsGKzL5PoJGgGfoF6HCJQzjWv6J5rPJwocAaT8+iBwRIAj9o0pT?=
 =?us-ascii?Q?mGCNsduqXRVDdJk6j4m7jSo+DCdY+/jbeTQ0IvdUAZx2AGL5jVPf7JyqC9U3?=
 =?us-ascii?Q?NvAmJe2HvD3vhwSc9VVm53DhxKDU/7jDyUIKpfsBrrcE5Fj1P7cRiAHbUPHA?=
 =?us-ascii?Q?Mw+kMpMpvieyrM+48drryoBVcDzn1SyDDaQpCr7G7Wb3jf1WtfO8LfwFuGLa?=
 =?us-ascii?Q?FcQTIknYJca5el4SP5eNL0Rl+3ZJKUNVMdeczstbg1S6uB2zmeKCZZ33RYFA?=
 =?us-ascii?Q?mZ4EIKPOLdGik1Ns1GpAyYgF++VbVHHxH4QORDX0YJpy/rsCrWSlG5L1o3jK?=
 =?us-ascii?Q?JeuubXfHRGKCXlis4ExSbUg9DVadUevTnbtOsBwm8rmeFAzGCouvkOGnLwin?=
 =?us-ascii?Q?mOuum9+ix7QOe7W7gzZ45r7vNpWPaiy9SGXqDjFB1cFYvCWhXBnTL0oaoznc?=
 =?us-ascii?Q?DBsN1t4Vlbv/N2gGbTcyjTYDevmCuNK85XrnQ/Uc+gqqF1Hk8v0EZUm+Ni/9?=
 =?us-ascii?Q?Y/YtBAgJjjuQftlbOscxgGr2CxALt6wvRVER09Qe4riXA5nRyMjMXJ+m3btv?=
 =?us-ascii?Q?CNLPpC7FIsqmWk4q6FZF0Y+GgVbkSNgEXFvOFlHoDVY5t8z4c3dmcW8l+bvn?=
 =?us-ascii?Q?bOAtYRWNCAZY52NpqH7kcuL6cBCNU6hE2wKr31uO7hlwSm1Ebp5T0hdQgVtj?=
 =?us-ascii?Q?lwAQCG1MAwpz6YHz2U4ZdBlPQg2VausOrbC2vdYcSFMtlFHffEYncyFNXpqj?=
 =?us-ascii?Q?mKKicV2oK1y4uFba5IKrIvh+q7hnYO2o8aqDHYLd8AK43W7iVzjfLgp3nG7A?=
 =?us-ascii?Q?fEOlFyZV+ShO32reK7CeS5q8iVSfd0ItJpvYZOy9eR4DOEXzY9Q6EiyCC3Ba?=
 =?us-ascii?Q?/0Ydlc34SosOnVaujP9FkaJLEq7+a+NNLc5/qO0iA2iL7nrxaZ4QHxbciKrk?=
 =?us-ascii?Q?rnN50Zulcvh0baVlCbUUypoFX3M5k53fZG6llJDnw4Meyc6oLvspATDUB0Ke?=
 =?us-ascii?Q?220ZagVEyhdLNd1y2mUhIZTnxwphxHqa280nF8oX1lDFWAs4Nm7ktqTtv+ER?=
 =?us-ascii?Q?9Rkokg9SsP1Mm7wiJBi1+SPwUZ+TutId7zuYEPYso2XFfxIgb02PSapXPAT5?=
 =?us-ascii?Q?TYStpUw2DgiXNI3qeKNiLCJxTOa0bF9mJ1sVT3/ZewvD5FuRvD/TPWtSOQCZ?=
 =?us-ascii?Q?pDJ5azLQmayBfSYPr1XS33EbpPDytfd1jc8I0A1EJAyWdf1rdOEtIzLJieMd?=
 =?us-ascii?Q?pOq2VO8UZw6DdiQjm7c7zRyjK13xEgoAlKreTznnS+oOIzahIfA3je4eOzgi?=
 =?us-ascii?Q?5xYT8DCnKShyo9BdCPPIUtF/QhzAWgqq2yR24egV/M3oJKNERQ+/I8vX+7Az?=
 =?us-ascii?Q?rpvcx8pz7QWZyHEgbOaUzUHsgJXrHP4+l8F1HXuGUyrS1V3/Ppwpbq3zgpW2?=
 =?us-ascii?Q?cGG1B6LShLtRe5Tl3CmKyAFmI3Ir55fQ4/cdlqjPVDjLs/6u+BiAs1f7KUFc?=
 =?us-ascii?Q?rWOOd6IWUj/EbJGAXN49xNihI/YvHY7eWTVuH2eG0UL33ltf3WsE95IbjlVH?=
 =?us-ascii?Q?dJOnD0lMP9/ufJMiKqjg7ILm95Y5lsnqHHFDW1RcDXm3oV0XUiN+Kd7orpq9?=
 =?us-ascii?Q?xpPcwj+VquOGFRpUF5nOV8GOI3WpMtPsbuMSHUvG7Z591XtLPvZZ6gfhbkDa?=
 =?us-ascii?Q?jymeZQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87d7538a-f4ec-4db9-2e7b-08d99d96bdb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 00:21:40.1475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: trZ3mKilApliT+iZbNZzVzRaD1vbPCaxMGLv4ZiRA69wZTsLjIehMY4aHyb04LccaRUdwhtLpTxM3xwbE5IQX6lQshqDsu1fLVZexYKPaXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5125
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 11/15] iavf: Prevent changing
 static ITR values if adaptive moderation is on
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Nguyen, Anthony L
> Sent: Friday, June 4, 2021 9:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 11/15] iavf: Prevent changing static
> ITR values if adaptive moderation is on
> 
> From: Nitesh B Venkatesh <nitesh.b.venkatesh@intel.com>
> 
> Resolve being able to change static values on VF when adaptive interrupt
> moderation is enabled.
> 
> This problem is fixed by checking the interrupt settings is not a combination of
> change of static value while adaptive interrupt moderation is turned on.
> 
> Without this fix, the user would be able to change static values on VF with
> adaptive moderation enabled.
> 
> Signed-off-by: Nitesh B Venkatesh <nitesh.b.venkatesh@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 30 ++++++++++++++++---
>  1 file changed, 26 insertions(+), 4 deletions(-)

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>  

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
