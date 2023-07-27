Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074A2764F3A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 11:18:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DB11417CD;
	Thu, 27 Jul 2023 09:18:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DB11417CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690449521;
	bh=W1A0869BAjwmXuVPiof/X3w1WsQTbCnyusDVI9DSapo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xxP43A6ikjjTk3nu2MYGuUMsZviI1BTQSeVAHSf2Pxh1FE9JJznMFrbhGdVyviOBx
	 pGeoJ5sjRfXX/phHnqTcQ2phi0DWFal54jgJZbwOu5fw4vm9H13OE2ng25ZyX1NcHJ
	 H3PGADhhCM2sb1M1ONmGluAzMZiTdKQqXCYk3yioc49Vv1wDrPQSbqOVjwICEhtUJX
	 Z4ccg/FZ0TfF86QWMRvTnmDw4O0bSERbq4PaLSCJvTe7hB3TiS3KcD45vy5mXEFEPK
	 JGbbOqSacBC0je6tqs0PYMZrU7d47BxZa0G+X0YOp/l9HTehGzXPw1sEXd5Asbcy57
	 R/4KiCp/tmuVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NLvFPuXlfAC3; Thu, 27 Jul 2023 09:18:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC657417E6;
	Thu, 27 Jul 2023 09:18:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC657417E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48EC91BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 09:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B77941899
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 09:18:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B77941899
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SOeO7srmN7au for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 09:18:33 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D95D941822
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 09:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D95D941822
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="348538753"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="348538753"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:18:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="1057647911"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="1057647911"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jul 2023 02:18:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 02:18:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 02:18:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 02:18:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aq1aaBpe7ufdTRqzuC5XEszWbiK8Mp6lKbetHiyNUDPI8IFdUr6VIQ8ZjV1Lq+SYiHGUpM4xfY5rBSMIETF7jFDQVOfoe0gNQbMRyK2Uu76M+TOQQLrBmTrgjGnDrfXcUxUzUpo7sqi/gM5KeM9TKZKBnnzsi+89N3OkzcBfH9FkVLVoPPNagsXlexYA5un0eQU1lqD7P7OL8B3JoD14lilapz2dibYLKXENa3LbRVniSBeT8UZFxxbbdJwVP8u3OuutPZ+34aaWslUH6Nq7zQIvHxXKXUvx8/KuNNdcRvVRB6lnr2Oh/UBLcpw/MObf6lQIzJBlFxIGldbqS229IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nC4NN2y32VrMVux2MrKOZCoJ2zl+iWKwKOq0/zfVtZY=;
 b=BtIQXyOQDELBwzxmhoDXvVXoA3STH2T3KmztvVXAT3oOo9s1j9FyaRazcDWTRoBLQWQXtZPCNIVy0y6E12LPj22T2hDasCyoZVW7IdMhrI9lEba0oXI5s96ia8MP9i6+672aaVFLHwPy4Px+ndcIPCDnHu4IHdEr9PTJf+WPML09WztZtqHVlRJrxCyMbN/HNlKUt4p4QFL/GuRqZGvFYSwsuuZaWLRUl4AUfESlri09Z1gxVA3lS5BxLBn/KZ+jfXtVhD42Dc+ZoWNH6Gw46GwGnsnWfdxBaAdcD7zuU3JEBPxKeNETbrnTwyEYUgERzU5P20UQxP8rSvPWQaV9YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SN7PR11MB7017.namprd11.prod.outlook.com (2603:10b6:806:2ac::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Thu, 27 Jul
 2023 09:18:29 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::5842:74bc:4aaf:a4fb]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::5842:74bc:4aaf:a4fb%7]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 09:18:28 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: VLAN untagged traffic
 support
Thread-Index: AQHZv7Bs1RWVVfy/okqgYh/p4qca1q/L7KaAgAFmHeA=
Date: Thu, 27 Jul 2023 09:18:28 +0000
Message-ID: <MW4PR11MB57765D0996877C9E782D6067FD01A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230726105054.295220-1-wojciech.drewek@intel.com>
 <bcb7cf39-2051-c874-ca98-e96d849b8b55@molgen.mpg.de>
In-Reply-To: <bcb7cf39-2051-c874-ca98-e96d849b8b55@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|SN7PR11MB7017:EE_
x-ms-office365-filtering-correlation-id: 55d0e3ee-0520-4eb5-8e77-08db8e82709d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yO0FyDOzW0dxHf5GzDeB4KuK6QiI/MWjwku4HGprT9JNGjs0FA7rTdwB1YM6pGLK+SqjDQP9d8JFM25ZQAy1Ra9+dQt6vXov/XttK/hud4+F/SgJlGN/6fKwzN1ZNau95a8JsbMLvE1bM5gklaMNaSwEGTxaqHAwWHlONec+Epi2+GfL8Zx5XMeIusHaOx3ge+qRMHRlw1MyKobUb11QmKfAwbgawv3NmMLu8ShikxGKi7/DRkCxB/h2yu5RzwEAkeIzOKggXBPk7zAyMReje2MBK25DNxYzPJE741srRbRcpTDTRaWqTqIIAnfUmXm8XNhg2M1vIlBi/oXC8B/6X/ARP4S7UX2DYzZK8IVB8rURTP6Sx8eN9UYKvXK01VuuWVSdSJrYTzUqxqHvKaJ2TwnU4LtzqWpilXp6JR5eCtxhQub3T239mijGza8Q6vIFLKdMb4To9jLK9hKnFx8FasVAxinclgeDUDnfIbWHy/0tO1J0H8Kk8NsMXH6NBVgZWviYEuiINe+CxKRmN0y9ZEpnnEURvSSX6IPsgwZrB8EEydwp+pb5jlT4E7wiQlc4YJWRiqdKH4dGdo05sty94AbepkcIcMwCYN5J0KiW5pl3iZtH8jiczVWsD3eKKI8U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199021)(2906002)(41300700001)(316002)(38070700005)(52536014)(5660300002)(8936002)(33656002)(86362001)(55016003)(8676002)(53546011)(6506007)(26005)(478600001)(9686003)(7696005)(82960400001)(71200400001)(83380400001)(186003)(38100700002)(66556008)(122000001)(54906003)(66476007)(66446008)(64756008)(66946007)(76116006)(4326008)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXM4dC9ZdUxvL3N2NTV1ZWMwOVJBM2JJODN2TzRCQXZMVDJGd1UxMjYxWEN1?=
 =?utf-8?B?OVA4d29FY0FvazZrYkU2OE5aRGtGMU1NdHRGMmhnZ2V3Ky8xMURPVGdTQTFU?=
 =?utf-8?B?WjJqNm1saHcrSzlXOXV0dTFiUldlTk1uVU9RSTVsdTAwOExMZXhuWWtEZVJj?=
 =?utf-8?B?M2tkYVVQRVdpZGdZcEhBa05zUDd3cWFRMUFMSXF1Z0l1ay8xWXlwcVgrb3lu?=
 =?utf-8?B?Z1JtQmE3M2JwaCsyRlRrSllQNThwT2dMWW4rZjd0MW5mbW5NTlJ1WDJvejlN?=
 =?utf-8?B?c1NzUysxSDJEV3U2bGpzT3Bob2RLN3NNekhWdHFRc2Q3Ri81Tm5NY3NCeURB?=
 =?utf-8?B?Sllvai82OUt6aFdxNmVGdm5HbTBhRHRqV2FYQk5QYnJJeXo1RWpHVWNIbkhM?=
 =?utf-8?B?R0RmKzJZdGt4d2RPTjhaeVdZRm1WcWNiTktLVXc3K3MyWVFhc1dnNXZ2VWFW?=
 =?utf-8?B?c05vWXBsbFRGb3ppVUdTenU1VUMxaWxhZkM4cFEvdnJtMVV3bHdNbURmZ0Ny?=
 =?utf-8?B?RGR0b3NaeitjVTlXS0hxLy9sSjAyZDNGMGRwYnNkVW9vT3ptMXRCbE9xZ3B6?=
 =?utf-8?B?b1U2UVg2SEJJbC9kK1IrNGx1czNxbmN3N1hLZW4vOGFyMEpqNDJHVVhJY2FF?=
 =?utf-8?B?NzZrYVJIdStySGNuaHNmRE1OUnh1cExnQXFSVkU0ZUVNUFRGbEJuaEhrc0d3?=
 =?utf-8?B?ek93WmVJMG0xL20zZ3JteTNvUGtYTGc5NFhSL1NLeklqc3JMSW9wYktXdU1w?=
 =?utf-8?B?R3h3UE9waWNIajNIVXNwd2dCZ3RDM1BiZGpIWkRNVHZBRk83Smt0ZWxwa0FH?=
 =?utf-8?B?NFRZaWMyb1oxd25qd1NNdEZ0ZGtPTFdwaWNOeXJtbGFtRDU4c1BMMjdUaFpM?=
 =?utf-8?B?NVEwQUE3RHZJR25uTUVaTTN3Uk4xZmgvRGZETllxaTlDbExVaEhMc0Q1bWNL?=
 =?utf-8?B?QVJqSC9RanpTK3pKaGMwNjBIM3pCb1h6RHZvalZwQnNzNk9UN2toMzNlSE8x?=
 =?utf-8?B?K0ZrZHhUUThyY1lyV0dLV0JTd1phN2hYdFJmeHM3cGFzNHM4bUZKd0xDUmRQ?=
 =?utf-8?B?K1B6OGtlZ2Vsb2NsREtRTHNFVzJJcTkrdDhqaGZZQ3J2c05jOFhENGVhZEtO?=
 =?utf-8?B?b29ueW13dHl1eGpOc1JRdFVkQzl0SkZWekxwcE9tL1lXd2xYZUtWdHA0MHNa?=
 =?utf-8?B?eFNVVjl2OWIwZjNxMTZEWFpIaUVYeXlrdHdsVXpOVFVBcXZMSDBqTlh1T2J4?=
 =?utf-8?B?aitCM2d5V0h3LzRoTlk2WGFSOEF4aEpCaTlvLzdrUHZSOUlKOXRnNUhNSXpn?=
 =?utf-8?B?U2VlanZFTXFEYVF2Yy95ZXJzWkp6d09pc2JtNHlyRUhxYnhIRFgzdFNUOEhu?=
 =?utf-8?B?TUVabnVSUG1Fc3llVEh2Z0JhcTE5cUtOa24yd2VyUGRpUnVGdGNqdEZnR1Vr?=
 =?utf-8?B?ek1NUEl0MlpaSWRjZGdSQzVVVklkdXQ4a0I4SzR2aHd3aHdwUjZHZGVQY21Y?=
 =?utf-8?B?d2FqNWJ3YjU2VUlTSlJOQ1BaRkpGR2paQThncE96bU41RkVUajNLNlFvSUdE?=
 =?utf-8?B?dVg5Z1pSV1B4eXo4ZDMwY2V4OXhqRDVlQmF1TEFpdEpsMHg2aVhRczQ5eWty?=
 =?utf-8?B?aDh4NDQ5eTVoYVBPYnE0bDF5blhQeVJLVW5JNncwUDdWQ2dETkpNWlVIdlFJ?=
 =?utf-8?B?UlJoQUdCYkZjSFFXemxCS2t0QVRIRWxrK0lmeWQ5SHBkVXhqbGtoZHcvNXRI?=
 =?utf-8?B?c2RFQy82Y1ZUUzVwcEtxWnB1ay9IZ0xGUG5iQ1B5U2pGWVBWeUV3d0FnTnRz?=
 =?utf-8?B?L01nSTBsQXFIajlKMEZ6OUxpcTltck9Ra3Z5QjV3bmkvYU9RSzJDcUg0QjFD?=
 =?utf-8?B?ZkZTb2t3YzVDaEV4VEJadldRV2Zoc1BLUGZSSWd1ZjR6SHBEWUd5UWlVbnBD?=
 =?utf-8?B?aU9KQkhodnREVytqWGhENjU5ZzRnK3ZVTnVFSnAxY3Z1cnk4Ym1CaElJV0xT?=
 =?utf-8?B?TnN1RlBPdTdHdFhzY2VjQ2VQWENJbTFTSERNZUp0SVkyT1V1ME5sVkQ1ZDM5?=
 =?utf-8?B?RHViVFFyN1k1TnpYQzg0V2VBRERrUXJuNGFkT3poak5BdGhtcFdtRzQwU1Vr?=
 =?utf-8?Q?sfP6jUGXtRMMVmlw3KSeWGbHK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55d0e3ee-0520-4eb5-8e77-08db8e82709d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2023 09:18:28.9187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZnQ5/6rqIvX4CIt9nMJ/rDhCcHfW99JB4ImSmjPuQFwi1lujyQatb1Zm/reVYSctrv5maslMQR87iN+YuNYLhX9oVKfUkBSQkbFssSOKYnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7017
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690449512; x=1721985512;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nC4NN2y32VrMVux2MrKOZCoJ2zl+iWKwKOq0/zfVtZY=;
 b=D/HvzgBnqfPeiZho30QseRKOPhIP1NOlxiY/ClKK4LBxS/xUS0TFIsze
 orGYC3C8dgQcV/MqMCtlwscmtHBf/ubbIUal+RqHQ8OxccZ2eQnAtyzGX
 iSM4maE75vn+J9EfyNFI+OMjDtLqcs+VBv8im1Ix3HoYJqOvPnqhZh6bQ
 5F5Pp+7PIDRSaxqArwcSSdqNGy3zBeK10YEhd7i5ZwhdQ0LbcWYc7VXwt
 56TLtxRzRdBs2PINje9M82IgttfDSrzQJXGOb4he0Mh+qI7Edfg1uAjXV
 kWpr4pU9WS7qkMarBWn4LBsYEUjmev1nbvzWJ54k5Cvq27s+HQ58VJp1l
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D/HvzgBn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: VLAN untagged traffic
 support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwNCg0KVGhhbmtzIGZvciByZXZpZXcNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50
OiDFm3JvZGEsIDI2IGxpcGNhIDIwMjMgMTM6NDENCj4gVG86IERyZXdlaywgV29qY2llY2ggPHdv
amNpZWNoLmRyZXdla0BpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1
b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0XSBpY2U6IFZMQU4gdW50YWdnZWQgdHJhZmZpYyBzdXBw
b3J0DQo+IA0KPiBEZWFyIFdvamNpZWNoLA0KPiANCj4gDQo+IFRoYW5rIHlvdSBmb3IgeW91ciBw
YXRjaC4NCj4gDQo+IENvdWxkIHlvdSB1c2UgYSBzdGF0ZW1lbnQgYXMgc3VtbWFyeSBieSB1c2lu
ZyBhIHZlcmIgKGluIGltcGVyYXRpdmUNCj4gbW9vZCk/IE1heWJlOg0KPiANCj4gU3VwcG9ydCB1
bnRhZ2dlZCBWTEFOIHRyYWZmaWMNCg0Kc3VyZQ0KDQo+IA0KPiBBbSAyNi4wNy4yMyB1bSAxMjo1
MCBzY2hyaWViIFdvamNpZWNoIERyZXdlazoNCj4gPiBXaGVuIGRyaXZlciByZWNpdmVzIFNXSVRD
SERFVl9GREJfQUREX1RPX0RFVklDRSBub3RpZmljYXRpb24NCj4gDQo+IHJlY2VpdmVzDQo+IA0K
PiA+IHdpdGggdmlkID0gMSwgaXQgbWVhbnMgdGhhdCB3ZSBoYXZlIHRvIG9mZmxvYWQgdW50YWdn
ZWQgdHJhZmZpYy4NCj4gPiBUaGlzIGlzIGFjaGlldmVkIGJ5IGFkZGluZyB2bGFuIG1ldGFkYXRh
IGxvb2t1cC4NCj4gPg0KPiA+IEFsc28gcmVtb3ZlIHVubmVjZXNzYXJ5IGJyYWNrZXRzIGluIGlj
ZV9lc3dpdGNoX2JyX2ZkYl9lbnRyeV9jcmVhdGUuDQo+IA0KPiBGb3IgdGhpbmdzIHN0YXJ0aW5n
IHdpdGgg4oCcQWxzb+KAnSBpbiB0aGUgZ2l0IGNvbW1pdCBtZXNzYWdlLCB0aGF04oCZcyBhIGdv
b2QNCj4gaW5kaWNhdG9yIGZvciBhIHNlcGFyYXRlIGNvbW1pdC4gOy0pDQoNCm9rDQoNCj4gDQo+
ID4gU2lnbmVkLW9mZi1ieTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9l
c3dpdGNoX2JyLmMgfCA5ICsrKysrLS0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmggfCA5IC0tLS0tLS0tLQ0KPiA+ICAgMiBmaWxlcyBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaF9ici5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmMNCj4gPiBpbmRleCA2
N2JmZDFmNjFjZGQuLjA1YmVlNzA2Yjk0NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaF9ici5jDQo+ID4gQEAgLTEwNCwxMyArMTA0
LDE1IEBAIGljZV9lc3dpdGNoX2JyX3J1bGVfZGVsZXRlKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1
Y3QgaWNlX3J1bGVfcXVlcnlfZGF0YSAqcnVsZSkNCj4gPiAgIHN0YXRpYyB1MTYNCj4gPiAgIGlj
ZV9lc3dpdGNoX2JyX2dldF9sa3Vwc19jbnQodTE2IHZpZCkNCj4gPiAgIHsNCj4gPiAtCXJldHVy
biBpY2VfZXN3aXRjaF9icl9pc192aWRfdmFsaWQodmlkKSA/IDIgOiAxOw0KPiA+ICsJcmV0dXJu
IHZpZCA9PSAwID8gMSA6IDI7DQo+IA0KPiBTaG91bGQgc29tZSBjb21tZW50IGJlIGFkZGVkIHRv
IHRoZSBmdW5jdGlvbiB0byBleHBsYWluIHRoZSBiZWhhdmlvcj8NCg0KV2lsbCBkbw0KDQo+IA0K
PiA+ICAgfQ0KPiA+DQo+ID4gICBzdGF0aWMgdm9pZA0KPiA+ICAgaWNlX2Vzd2l0Y2hfYnJfYWRk
X3ZsYW5fbGt1cChzdHJ1Y3QgaWNlX2Fkdl9sa3VwX2VsZW0gKmxpc3QsIHUxNiB2aWQpDQo+ID4g
ICB7DQo+ID4gLQlpZiAoaWNlX2Vzd2l0Y2hfYnJfaXNfdmlkX3ZhbGlkKHZpZCkpIHsNCj4gPiAr
CWlmICh2aWQgPT0gMSkgew0KPiA+ICsJCWljZV9ydWxlX2FkZF92bGFuX21ldGFkYXRhKCZsaXN0
WzFdKTsNCj4gPiArCX0gZWxzZSBpZiAodmlkID4gMSkgew0KPiANCj4gV2h5IGlzIHZpZCA9PSAx
IHRyZWF0ZWQgZGlmZmVyZW50bHkgZnJvbSB0aGUgb3RoZXJzPw0KDQpXaXRoIHZpZCA9PTEgd2Ug
d2FudCB0byBtYXRjaCBvbiBNQUMgYnV0IHdpdGhvdXQgdmxhbiB0YWdzLiBUbyBhY2hpZXZlIHRo
aXMsIHdlJ3JlDQphZGRpbmcgdmxhbiBtZXRhZGF0YSAobWF0Y2hpbmcgb24gYWxsIHZsYW4gdGFn
cykgYnV0IHdlIGRvIG5vdCBhZGQgSUNFX1ZMQU5fT0ZPUw0KbG9va3VwIHR5cGUgd2hpY2ggZ2l2
ZXMgdXMgbWFjICsgbm90IHZsYW4gbWF0Y2hpbmcgY3JpdGVyaWEuDQoNCj4gDQo+IA0KPiBLaW5k
IHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQo+IA0KPiANCj4gPiAgIAkJbGlzdFsxXS50eXBlID0gSUNF
X1ZMQU5fT0ZPUzsNCj4gPiAgIAkJbGlzdFsxXS5oX3Uudmxhbl9oZHIudmxhbiA9IGNwdV90b19i
ZTE2KHZpZCAmIFZMQU5fVklEX01BU0spOw0KPiA+ICAgCQlsaXN0WzFdLm1fdS52bGFuX2hkci52
bGFuID0gY3B1X3RvX2JlMTYoMHhGRkZGKTsNCj4gPiBAQCAtNDAwLDExICs0MDIsMTAgQEAgaWNl
X2Vzd2l0Y2hfYnJfZmRiX2VudHJ5X2NyZWF0ZShzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LA0K
PiA+ICAgCXVuc2lnbmVkIGxvbmcgZXZlbnQ7DQo+ID4gICAJaW50IGVycjsNCj4gPg0KPiA+IC0J
LyogdW50YWdnZWQgZmlsdGVyaW5nIGlzIG5vdCB5ZXQgc3VwcG9ydGVkICovDQo+ID4gICAJaWYg
KCEoYnJpZGdlLT5mbGFncyAmIElDRV9FU1dJVENIX0JSX1ZMQU5fRklMVEVSSU5HKSAmJiB2aWQp
DQo+ID4gICAJCXJldHVybjsNCj4gPg0KPiA+IC0JaWYgKChicmlkZ2UtPmZsYWdzICYgSUNFX0VT
V0lUQ0hfQlJfVkxBTl9GSUxURVJJTkcpKSB7DQo+ID4gKwlpZiAoYnJpZGdlLT5mbGFncyAmIElD
RV9FU1dJVENIX0JSX1ZMQU5fRklMVEVSSU5HKSB7DQo+ID4gICAJCXZsYW4gPSBpY2VfZXN3X2Jy
X3BvcnRfdmxhbl9sb29rdXAoYnJpZGdlLCBicl9wb3J0LT52c2lfaWR4LA0KPiA+ICAgCQkJCQkJ
ICAgdmlkKTsNCj4gPiAgIAkJaWYgKElTX0VSUih2bGFuKSkgew0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuaCBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaF9ici5oDQo+ID4gaW5kZXggODVhOGZh
ZGIyOTI4Li5jZjdiMGU1YWNmY2IgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmgNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuaA0KPiA+IEBAIC0xMDMsMTUgKzEwMyw2IEBA
IHN0cnVjdCBpY2VfZXN3X2JyX3ZsYW4gew0KPiA+ICAgCQkgICAgIHN0cnVjdCBpY2VfZXN3X2Jy
X2ZkYl93b3JrLCBcDQo+ID4gICAJCSAgICAgd29yaykNCj4gPg0KPiA+IC1zdGF0aWMgaW5saW5l
IGJvb2wgaWNlX2Vzd2l0Y2hfYnJfaXNfdmlkX3ZhbGlkKHUxNiB2aWQpDQo+ID4gLXsNCj4gPiAt
CS8qIEluIHRydW5rIFZMQU4gbW9kZSwgZm9yIHVudGFnZ2VkIHRyYWZmaWMgdGhlIGJyaWRnZSBz
ZW5kcyByZXF1ZXN0cw0KPiA+IC0JICogdG8gb2ZmbG9hZCBWTEFOIDEgd2l0aCBwdmlkIGFuZCB1
bnRhZ2dlZCBmbGFncyBzZXQuIFNpbmNlIHRoZXNlDQo+ID4gLQkgKiBmbGFncyBhcmUgbm90IHN1
cHBvcnRlZCwgYWRkIGEgTUFDIGZpbHRlciBpbnN0ZWFkLg0KPiA+IC0JICovDQo+ID4gLQlyZXR1
cm4gdmlkID4gMTsNCj4gPiAtfQ0KPiA+IC0NCj4gPiAgIHZvaWQNCj4gPiAgIGljZV9lc3dpdGNo
X2JyX29mZmxvYWRzX2RlaW5pdChzdHJ1Y3QgaWNlX3BmICpwZik7DQo+ID4gICBpbnQNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
