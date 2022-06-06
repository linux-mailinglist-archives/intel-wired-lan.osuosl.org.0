Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D732853E43E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 13:45:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50EF460E2E;
	Mon,  6 Jun 2022 11:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sUglczbtjA7B; Mon,  6 Jun 2022 11:45:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54B1260B50;
	Mon,  6 Jun 2022 11:45:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EE591BF405
 for <intel-wired-lan@osuosl.org>; Mon,  6 Jun 2022 11:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A4A8840C6
 for <intel-wired-lan@osuosl.org>; Mon,  6 Jun 2022 11:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IAt5TlhS88iX for <intel-wired-lan@osuosl.org>;
 Mon,  6 Jun 2022 11:45:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 444C783404
 for <intel-wired-lan@osuosl.org>; Mon,  6 Jun 2022 11:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654515916; x=1686051916;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MSdNlG53Myqg1k5WtzSzfels81enmPhAIKDzKFno4lU=;
 b=GfsQOEuUNgD7KEs9UGKLKTdjR4pnCoHd9ijcSDLiHXxkJIUAK5xnaPzK
 dQ9bLzSWkW/Nlb0GC0nVFufzRW2xZD937/A3wbZJFybNb+NCqocp4Uzyo
 ceLtl9EuoS7JCnoE9vnKLbp1kvvOv0QdMDpB359ATTLnDOT6IhCVlDwnF
 W+B5P5TdGY0iX+oYL65STX6+2Cq1Y3o9zrJZ8x/bz7fN+l2703GdtTHdO
 EyVUGsPgtIS6W//sYQXgT94u0sA54e2Qrzq7AaWASRlhISpCyjHoW/0E+
 UCGih4rA5mzzurt+r6asssh4U3M9+bfyO2ZxI1s/gaFKZSPhSETntBeoR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="362993720"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="362993720"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 04:45:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="583593549"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2022 04:45:15 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 04:45:14 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 04:45:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 6 Jun 2022 04:45:13 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 6 Jun 2022 04:45:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jXvLIx8Sp0zFljx1l5oLBpNf0Unsuvq8Zi9Ih8qJXviayi0Ryw70w0lSKs4Ug7MiZ2kTImYnhrQEITqGP0/0TZYLhLUxxAOm8NgieCgfGX0HDyY9vY7PlYfhsRtBVkPe5mR9Pg5c6/+Ku+FPKy1x6yYN9+mrK0L/jNXnGG7TwYfC9urB45348s6g9KQplIRnDm0subFEBNSU9cCoRdv4BBwldXulNkY8lzPfwf4zNWQsUoQ+Xg2PKM+i8PhgS+LtdecW4wuhdLA06humbuQYVpKorhkd33bmynBoiOUF0FbfbIouRAqH0EVusNiXk4bDr3Vx/gTaCS0AmmG8XUVGiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MSdNlG53Myqg1k5WtzSzfels81enmPhAIKDzKFno4lU=;
 b=kgrROzoUawX6pLZ/EPrvd8GpbjFCkO4wr/y36ehw/pmcvvEuU91nPVkFxrOcGaBj2mYvIwDe8VW4S9zDeDGzNQtPpO1c94OppU7kzGkzeBV3bATEkg+vSFxjUyofUXwkkHYb3wVDjZqrzgvggj1J4KgQKq/jZkDpTGu0rt/TyXwTS9hs+gxAg0pLsLLLE7I7Tj67aWSoGy4VVJxPKo46mCO+A6zOTp5tXZamwxkCA94Vz8HS4OkI/gJ6BJwFz1nG6Llzq2rHVaR/V9IvEsxZwrT0n3SM2vc0U6znevxOdh1DPxIGPbB9il8vWioF97WUARjPAp+4MvYvwlviLkJq7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN9PR11MB5482.namprd11.prod.outlook.com (2603:10b6:408:103::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Mon, 6 Jun
 2022 11:45:09 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::5110:69c8:5d4f:e769]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::5110:69c8:5d4f:e769%3]) with mapi id 15.20.5314.019; Mon, 6 Jun 2022
 11:45:09 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Matz, Olivier" <olivier.matz@6wind.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] ixgbe: fix unexpected VLAN
 Rx in promisc mode on VF
Thread-Index: AQHYSZxFoB2M16ODbEaqSvwItjkVKq1ColkA
Date: Mon, 6 Jun 2022 11:45:09 +0000
Message-ID: <DM8PR11MB5621828371AA7291D9F85EF8ABA29@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220406095252.22338-1-olivier.matz@6wind.com>
 <20220406095252.22338-3-olivier.matz@6wind.com>
In-Reply-To: <20220406095252.22338-3-olivier.matz@6wind.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 565c1c03-36d2-4fd1-b338-08da47b2021a
x-ms-traffictypediagnostic: BN9PR11MB5482:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN9PR11MB548275534E6FFBB373979898ABA29@BN9PR11MB5482.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GJDxsnbPyG7tiHQi+1FGoIrX8V3A6uVAXumO7F7pKeBmQVXhhpxyRyiroVlri2SOI4pKjKQTQf9+/4w7ZOH3c3jKpuc4Tba7rNZQdoAFsG8kHJ+HoBdmB9/ekzsfUmBp8aVF/S8WisVXFEg8R45MtUtFR6ZUx7rdmhh05y1wyY0XvNm/fglyVcoF8+iEUqO0CYjYgSXfwGKnrnrurpcDPKICDdFHFeeoXT8FeHyxRaUkPTq7lIcL/gDeazcBdQBHqh5Xs0lKdhXMs+Exf9PRivW+I2WC5yD0NSQD6oGnApmIq8Gsos6fJcCZkzIHt6qEUDBzeXtmydYIw8AFHoDQUCKkqF2ZrRToDDf72GMqKitlYVxZM7iHi4TVj76Bd+TMQLOSoyHJ+tLgFrl1Styf3OhlVV9y/R7OHakyTcDDk4rBdKD+diHkpyx456jqoeAht/MpjVB2iTkYUntvusWDdzZgUms7ZWP9BZGh5MrekKwE2MV51H/gYr4lMfzwiQO5K+EnXpfNwEDt6oBI8BAYkpf59ot72E+slJUD2F8hkNBZCLPELJpzTEZipkG1uJY6iTeRFkQO/vxJEmVvYHcKoeLWpPnSWXF8VBb3LPK0gQXEflYH0NMBnzPkGolvFeEl8L3JfSgv6BylMMU+6R13j0b8y4zS+UtB2/SgcuqBUt9m0L9j3coAv6WI2g0YTiX9fUC4dWas0jtOBtkL9eeBqA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(64756008)(66446008)(8936002)(55016003)(52536014)(2906002)(8676002)(66556008)(186003)(82960400001)(26005)(316002)(38070700005)(122000001)(110136005)(83380400001)(54906003)(9686003)(66476007)(66946007)(33656002)(71200400001)(38100700002)(6506007)(53546011)(7696005)(76116006)(4326008)(86362001)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnVNaVJOSDBnQ2tQS1pjMGhiRlRnT2N3elQyNSs0ekR2Q2RpUkVkZG1zUUxS?=
 =?utf-8?B?RXNaeXU2WThqcFRiVEdveURZMUpLZFIxUjdXZVNvQTlMUHZNQmRmRTJ5RUJx?=
 =?utf-8?B?MmVVbm16bzZnYjBXYmxkZU1pQjhIdnk3a2JibUQ5ZDVtRVMwMGNTV21OS3Ni?=
 =?utf-8?B?akRldCthZWk3Vmh3eUsyRDBLYld4cU1KRExCMDVwMWgvaWVuaitwKyt4V2Fq?=
 =?utf-8?B?Z0QrVW1tS1U5dHdvUzBMam90QVcrMTA1eVNIazNFcFYyN0hEa3dsY0pqVnYw?=
 =?utf-8?B?U1Q4T2hhL29kNldIR0xqemlrY1ZVd2JTbnhZU0Z4MU1UVVdDVjVLdjlOallU?=
 =?utf-8?B?U3F3SkJ0VklTM3Y3TEE3RGQwTFFPNUpmaGZjaUxidThlUnRBZ3ZkdjYvQ1pT?=
 =?utf-8?B?QW5aZ1A1OUdzVmJJZUNEYjdBN0hvOWxCTFU4Y1RMbHVGK1FxcGVja2ZsVlZU?=
 =?utf-8?B?bG5wbllWVS9ZZGVHMDRwSlVQRUQ1b3JNelJ5aFNIYTZIR0VuS3NmaFBIZU15?=
 =?utf-8?B?Z1R3TWdvRFVTWm5CcnNRSjhqeWN0NjN1ZEFrejFBemRvc0x6MWVXL0pYMzFh?=
 =?utf-8?B?cXFpWVF1NCtuclFpRkhhZFdydWZ5MUNOUFpGYVRlMFp1VXB5a005V3hhOVlR?=
 =?utf-8?B?bWRLOGxjQllzcUNHT2kxeTYvM04rUG92UWhjbmZqVzEzdzllSUhrQ3pjTTV3?=
 =?utf-8?B?RDZmZUo0TVcrNVBTNHQxcUUrMDVhdGs5aXFCRGZWMldWcmVpREh3bHFLNWRi?=
 =?utf-8?B?S1hPZ0R2RExoaGdDdkp4cU5uZmJGTTVrWmZYYkd6ZnRpZVJxeXo0WGxRMjUv?=
 =?utf-8?B?MUZYM283RjgyMXlqSmNPSDhzUENpditxWHBDK2MxN2VUNFE4WVlQeHBnUXZM?=
 =?utf-8?B?Uml3Y2NhZ2VBdTZPVCtzNFIzWDF4OWI1NXkxUWU5R29oZ1NuN3JSRzhWZTgr?=
 =?utf-8?B?YStsdU5HL0RMWjhaY0hxVUhGUDJRMks5OEozOXhaTDVBMHZaVHJhQXZRWFlH?=
 =?utf-8?B?Y0NucEl4N3oxQmVseFgvd3ExSnY2bGgrZzdGdVlwOE5lU2tIVWd1OHhhMGI1?=
 =?utf-8?B?OWc2U08rTkRuRTNSTE9CZER3Q0JXdnBvQWg4dFdlOHc2RStPTjFkdnlWd3RX?=
 =?utf-8?B?OS95ZzVFN01jb2d6T2dOQmoyQzBvdTVwZ2l2TGIvU3hlN2lJeURRWmtUSzk4?=
 =?utf-8?B?QUxnRzdDUTBwaUJCcXJKM0FDT2hPSzhiV2llRGRGeTlBSWxTY3oxZnVKZE92?=
 =?utf-8?B?RHRaTWZnNnE2OTJ0Zk50V3Z0LzZzODNFUmxPbTNESEVCNnFzLzdPcXRrb25z?=
 =?utf-8?B?QTFjS3FZcTBQV1htNFBJdXlLSFBrVlIyRVhpLysxemlLZ0ttS1pRZGl1VXdZ?=
 =?utf-8?B?L2JvbE80VUxId25HeWp4RGYyK2xIMkJmd3plWWlQdVBLM0tKWW5OM3p5OHNP?=
 =?utf-8?B?M0U4Njg0QnpsVkh2VGl0OFc2a05oZUVYODBuOUN5YXJFU1Vrblk1WXRubllm?=
 =?utf-8?B?M0kwM3JsUXhzKzZwVDVHY2RjWDdLUXJtY09Xb3VXQ0JxRGdXR1VFY0FBZVFF?=
 =?utf-8?B?TWl6OXRuYnhTSU5ibWlOVHB4YWxJRnFMUnFVdW9DbU56blBUeFdjckUrVlR5?=
 =?utf-8?B?eDhFbDhlVTk1SEZKbk1IZFZ2Z2hKYzFlbXdnaUlxY2NVWHF4YUhWMFU4NWkr?=
 =?utf-8?B?UUVUdDk3UVprNUl6bnNURElGZzFxN1dNUUlPSmFkbnRzcGpWMEJKcm96SEx4?=
 =?utf-8?B?Z2ZRa1FreDlETlFGNkpjU2o5RG9talkvRkxnUUZ1VGpaWGFKQlRiaVEyQkJn?=
 =?utf-8?B?eDVEK3dPWU4rTGJqRjVsMVNtRmxUUUpJa3FHaVhkVzRaa3hpY2NOVzFFQlNB?=
 =?utf-8?B?czJsL0JlbkdUcDNJNWJkSHBVZ1hiblRNY1NadTBOemd2aVdaSVkvNzRTYXpB?=
 =?utf-8?B?elBPNENtZU9QQXlGUUdQeEFRVDBMcGNxTmJCSE1XTjNhbXgvenFBb1ZBalht?=
 =?utf-8?B?KzNBVld3QkM5dlBjcDZITFdkVDRzQmZSSXNXVXJFeTdEb01QSmlIUTZVd0dN?=
 =?utf-8?B?YXN3djhKMTNTWDBiTHQ1U1NIYUtLN3Y1MHcrTDArR2hUQWdkdmVPWVRFSlp2?=
 =?utf-8?B?QmRzWGN3YXova1R3eVd2cTVHTHZCNWhHOGEvcys0NU9ycjh2MXdyWkZHZUIy?=
 =?utf-8?B?c1hHMjJ1bkdzY2dKRi9VQUVrTXlrL0p3ZGpnS2ljM3FzZjY1VmNBTnlKVDNV?=
 =?utf-8?B?K0YvcExOMWZ1TzJxSWFMckZPb1ZvRnZING9jVlpNdlFkUEpOSUVtU3QrRWFu?=
 =?utf-8?B?djhERWlTZ0VCOTc5d1JGTE03eGUvbmdnb0l3RDloRXhNenRxR1RCVUFYT0E2?=
 =?utf-8?Q?uooaPZ+F50TmE9Dw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 565c1c03-36d2-4fd1-b338-08da47b2021a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2022 11:45:09.1245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F5YD3ly2jrlCX+hOOrJKwVcSd+D4/wrk5ZjLiC61vfXTnRqbD+0W3x0wqFlOSA4VgFw4qvA1LofBM43LaNhC1k8ffjEVkjKAKvne3QKP9Io=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5482
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] ixgbe: fix unexpected VLAN
 Rx in promisc mode on VF
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Nicolas Dichtel <nicolas.dichtel@6wind.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gT2xp
dmllciBNYXR6DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgNiwgMjAyMiAxMTo1MyBBTQ0KPiBU
bzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBDYzogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9s
Z2VuLm1wZy5kZT47IGludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnOw0KPiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnOyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgTmljb2xhcyBEaWNo
dGVsDQo+IDxuaWNvbGFzLmRpY2h0ZWxANndpbmQuY29tPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUBy
ZWRoYXQuY29tPjsgRGF2aWQgUyAuDQo+IE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldCB2MiAyLzJdIGl4Z2JlOiBmaXgg
dW5leHBlY3RlZCBWTEFOIFJ4IGluDQo+IHByb21pc2MgbW9kZSBvbiBWRg0KPiANCj4gV2hlbiB0
aGUgcHJvbWlzY3VvdXMgbW9kZSBpcyBlbmFibGVkIG9uIGEgVkYsIHRoZSBJWEdCRV9WTU9MUl9W
UEUgYml0DQo+IChWTEFOIFByb21pc2N1b3VzIEVuYWJsZSkgaXMgc2V0LiBUaGlzIG1lYW5zIHRo
YXQgdGhlIFZGIHdpbGwgcmVjZWl2ZQ0KPiBwYWNrZXRzIHdob3NlIFZMQU4gaXMgbm90IHRoZSBz
YW1lIHRoYW4gdGhlIFZMQU4gb2YgdGhlIFZGLg0KPiANCj4gRm9yIGluc3RhbmNlLCBpbiB0aGlz
IHNpdHVhdGlvbjoNCj4gDQo+IOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkCAgICDilIzi
lIDilIDilIDilIDilIDilIDilIDilIDilJAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSQDQo+IOKUgiAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSC
DQo+IOKUgiAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSCDQo+
IOKUgiAgICAgVkYw4pSc4pSA4pSA4pSA4pSA4pSkVkYxICBWRjLilJzilIDilIDilIDilIDilKRW
RjMgICAgIOKUgg0KPiDilIIgICAgICAgIOKUgiAgICDilIIgICAgICAgIOKUgiAgICDilIIgICAg
ICAgIOKUgg0KPiDilJTilIDilIDilIDilIDilIDilIDilIDilIDilJggICAg4pSU4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSYICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KPiAg
ICBWTTEgICAgICAgICAgIFZNMiAgICAgICAgICAgVk0zDQo+IA0KPiB2ZiAwOiAgdmxhbiAxMDAw
DQo+IHZmIDE6ICB2bGFuIDEwMDANCj4gdmYgMjogIHZsYW4gMTAwMQ0KPiB2ZiAzOiAgdmxhbiAx
MDAxDQo+IA0KPiBJZiB3ZSB0Y3BkdW1wIG9uIFZGMywgd2Ugc2VlIGFsbCB0aGUgcGFja2V0cywg
ZXZlbiB0aG9zZSB0cmFuc21pdHRlZCBvbg0KPiB2bGFuIDEwMDAuDQo+IA0KPiBUaGlzIGJlaGF2
aW9yIHByZXZlbnRzIHRvIGJyaWRnZSBWRjEgYW5kIFZGMiBpbiBWTTIsIGJlY2F1c2UgaXQgd2ls
bCBjcmVhdGUgYQ0KPiBsb29wOiBwYWNrZXRzIHRyYW5zbWl0dGVkIG9uIFZGMSB3aWxsIGJlIHJl
Y2VpdmVkIGJ5IFZGMiBhbmQgdmljZS12ZXJzYSwgYW5kDQo+IGJyaWRnZWQgYWdhaW4gdGhyb3Vn
aCB0aGUgc29mdHdhcmUgYnJpZGdlLg0KPiANCj4gVGhpcyBwYXRjaCByZW1vdmUgdGhlIGFjdGl2
YXRpb24gb2YgVkxBTiBQcm9taXNjdW91cyB3aGVuIGEgVkYgZW5hYmxlcw0KPiB0aGUgcHJvbWlz
Y3VvdXMgbW9kZS4gSG93ZXZlciwgdGhlIElYR0JFX1ZNT0xSX1VQRSBiaXQgKFVuaWNhc3QNCj4g
UHJvbWlzY3VvdXMpIGlzIGtlcHQsIHNvIHRoYXQgYSBWRiByZWNlaXZlcyBhbGwgcGFja2V0cyB0
aGF0IGhhcyB0aGUgc2FtZQ0KPiBWTEFOLCB3aGF0ZXZlciB0aGUgZGVzdGluYXRpb24gTUFDIGFk
ZHJlc3MuDQo+IA0KPiBGaXhlczogODQ0M2MxYTRiMTkyICgiaXhnYmUsIGl4Z2JldmY6IEFkZCBu
ZXcgbWJveCBBUEkgeGNhc3QgbW9kZSIpDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+
IENjOiBOaWNvbGFzIERpY2h0ZWwgPG5pY29sYXMuZGljaHRlbEA2d2luZC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IE9saXZpZXIgTWF0eiA8b2xpdmllci5tYXR6QDZ3aW5kLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jIHwgNCArKy0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3Ny
aW92LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5j
DQo+IGluZGV4IDhkMTA4YTc4OTQxYi4uZDRlNjNmMDY0NGMzIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jDQo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3NyaW92LmMNCj4gQEAgLTEyMDgsOSAr
MTIwOCw5IEBAIHN0YXRpYyBpbnQgaXhnYmVfdXBkYXRlX3ZmX3hjYXN0X21vZGUoc3RydWN0DQoN
ClRlc3RlZC1ieTogS29ucmFkIEphbmtvd3NraSA8a29ucmFkMC5qYW5rb3dza2lAaW50ZWwuY29t
Pg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
