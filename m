Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E64039973E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jun 2021 02:52:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AED7583D4F;
	Thu,  3 Jun 2021 00:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bmDu3kpw851h; Thu,  3 Jun 2021 00:52:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1C8483D4E;
	Thu,  3 Jun 2021 00:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14E961BF94B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 00:52:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F963608B2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 00:52:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YwRU3mTbGiyB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jun 2021 00:52:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E650760869
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 00:52:46 +0000 (UTC)
IronPort-SDR: htSbxwC+3kN7awmaartVzLoYa3wC24SxiNMQFsckGgI7HZeMMkOzY9efs5zgmp5i0bbpZnhCzZ
 tFE0vPyM1LRg==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="184304308"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="184304308"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 17:52:43 -0700
IronPort-SDR: tzGDY/ofGM3+nVzNZUGTIqxjdCSGMwqSrZ1Q3VYerQxUJ8qoKWWEIG33ZuGZMYy/AKa1c4DPmN
 1fuG75yNbJ5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="550503548"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jun 2021 17:52:42 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 2 Jun 2021 17:52:42 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 2 Jun 2021 17:52:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 2 Jun 2021 17:52:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 2 Jun 2021 17:52:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yf6kuAp9svexceF0b5o45Oui4AYKBXtxlZgTzXHhpAASKPxy/oHEkln+KuWzER3PsddRRvLqrDsg217EJ3hC3zQzW3spVvHIouIPynNERoRGqTMWXvl3rdhPXLEJ/a3c7GwIPZ7zwEg2LsCRuBKv5TuxCvN+CZc/KT9WCArKnUfNG4lmrbQR6nimsnmP+T4CYUYlIFv4q2BMTRj/rMy8Gtcre0MGGRMd68xqMUiKnGyh7yoMajtLJgLchgqSLqgbfeGE40/kjnIm8iq3cKbh7Pb36/e7Mr/XzlTXicvBLBLs/OMyRGySRqWVycFY5tNq+uwSY9dZPdbG4QwqDzXFKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUWNKMGUrRW3Z32T/sBDLWxw5aV13cb+GMBxIQE5IfU=;
 b=THUSl80YcxRFBURdojuP23pn2TusIWqGduV7hTAAHr83mElldWdd7z9WfukUZitfHA5C1+2in9cT2n1qMBj5Aig6ckQzrnCPXMbrTbmZT4QHlAnUhodpvmOZzJPe2AscMAjf6YXV/sCkFQrxm3W9vWkISrvp3AweRnbz/K69igtPrH/HmGBGgrxV9Hl9Uqf4Up3FU/aZb8oUJ13Cx+/kX76LsOk5eUM8ilY9XwpmPivncRli2EfK2sOD9f0ceBVnoat8oQcwiAylK70Nx67MxP8ioBjtxRYwYYzzpBCVqU6CAxsb+zA4M4msFZWvq3xIv8dLJ4PHYJ8D3MhpaNtAQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUWNKMGUrRW3Z32T/sBDLWxw5aV13cb+GMBxIQE5IfU=;
 b=vSsBOslWDUrWU3eJxUEWmRb010Ut2s3YGZZkYpLKQk0KunXme3xOCophKBuqyNW9MeHP3ywj/g5Zp5KKS/Z3IguNRs2mkUeaKss3Jm1jzzxUmqUOKxQr/rpybo1nJiCzS7Yc+dsCHlyu/tBWZS9xSKRmo6J18pikSoQUV6+EKN4=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3230.namprd11.prod.outlook.com (2603:10b6:805:b8::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Thu, 3 Jun
 2021 00:52:38 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4173.030; Thu, 3 Jun 2021
 00:52:38 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH intel-next 2/2] ice: introduce XDP Tx fallback path
Thread-Index: AQHXVtvAzRtQQAIMi0WXDpOmdI5xNqsBeH6A
Date: Thu, 3 Jun 2021 00:52:38 +0000
Message-ID: <39b84a66bae09568cd1f95802395af3e2df8fdb1.camel@intel.com>
References: <20210601113236.42651-1-maciej.fijalkowski@intel.com>
 <20210601113236.42651-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20210601113236.42651-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffb50578-babf-4205-da94-08d92629e28c
x-ms-traffictypediagnostic: SN6PR11MB3230:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3230C998A8C5895721105876C63C9@SN6PR11MB3230.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q0fZgjC1jA05R1gkc3E2a2Hdyl2tAUKMpas9boX25KOCAsfBXqDyazR2h6dGVq/PaG+db0wLFVhlRHbD6orqfG9S8AI11LVFixmRBCwiOhgkzdXoDK9gWkZSWsTYK011uEGdns2pGax7iq0a/etnBzw7kyJGQ5m7QXjw9jFb/qAkdQLCRJbuuSVSa5VhSN+Q6ELdOI3LiYDgvXSF+K2bP7cBxMGGyZUwuLtF/V1C291uzmII5icB5AbOsy3hPsmKoGGry2jmbZejyo07Pur4snwDLl1/Rtb7/9ZGWCqjY2jiwmS8TE/I0+BujHxU4Gvk5uDHb226i1Gp7AYQChgMZFUq90BvgcludwIsId7Bs56CJy1B62DMTEX1dhWKca1E0kx2FkmzdQ30eqUlV15XAJHORYoldh1mtyEj7wQBZ9y/+zXNjEHJv8M/e9ah1IdZ7YY/t4Qxhl7hbuOY5bvxUpXBIj6hUBWQXmlZlGTWLVhPmHPLVKYAKFzRPjgnJF9Ha7NBh20Gs4S3gxY7cYOgzOdUtmvPKNCPKXhoQ7aYNqkcfUnO2SdEyPBNyuWZ/DCLtAUhRt4EnvBoejMUtct9ta0TQHF24ldBdeHbwouhIwC0qDd4R156yS9gWZuS1phdfGoK+0tX8aVZ27baVpayNkhBYTqnsaFZ+Y5ThX3GNA0M7LP/tH7P/nzcCcjjtnELzqkDuLzTxr5PF0fiILN/iw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(136003)(346002)(39860400002)(186003)(26005)(76116006)(2906002)(2616005)(6506007)(478600001)(64756008)(91956017)(966005)(66476007)(66446008)(66556008)(66946007)(316002)(83380400001)(54906003)(110136005)(4326008)(6486002)(122000001)(71200400001)(5660300002)(8936002)(8676002)(36756003)(86362001)(6512007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?TjZGYkhKV0JHNTFPd1VVanQxdGRLVlJJSE9Ud1VLd3dRNEl4VE5GaHJRNXVL?=
 =?utf-8?B?dHFKV0ZRR1RKVWFydGp5M2NVNlBjQzZSK3BpS0JHVDNOUUp4NUhpWWNUWTgr?=
 =?utf-8?B?NzByVW5kSVI2WXRneHhnWWt6Y3VDY21nQ25zN2VLeGY0d2JmUXgvcFgyenpL?=
 =?utf-8?B?dUhrNlcyTWttQjkxZG85RVNXVjl4VThLcnVYYm5FZ3p0VnpLMStjVDJhM3M0?=
 =?utf-8?B?Z3R6WlBPdW1kZHdBVzZIQVVoMU9ud1hpR1F6MHZQUzIrZENIV0h3WERYUURV?=
 =?utf-8?B?MG9ES096dm5ndGs2VTh2RTFGZEMxUldmOUF0OTg2L0Z3RDI5ZEJSRGdTZEZN?=
 =?utf-8?B?ZGRnN1l1eXo3dFNNbWhmQ0N0aEtyaEVWakVYN0FDOUZ0VXE2MUszL2pUZTlJ?=
 =?utf-8?B?dGFNSU91K0Z0RTJUSlRuOVNYOUdVZFFrRGNiK1BvYjlqeTBJWFhqVHpsNWJq?=
 =?utf-8?B?ZElUOWZ6Q2daNjRHbHVSbjZ6NkZpMWlPbEJ6WmR1a0NwVFVHOGhTZWh1V1BK?=
 =?utf-8?B?QmFoZ01ldjNjMTV1cFYvS0xVTGY2ZHgvRVErMDErbkZNajBSZU95RUpKM3dZ?=
 =?utf-8?B?YTdOWjNRaG41RlR6UFFWWSsyWCswYmJVcTJnQk10STEzMEJVUmVyZUJRbnZw?=
 =?utf-8?B?QkFQeXJpWUc0ak1OaXNtMGtiSC8yaHNielVadmdPaHpxMHNPeWRTUG53eGFB?=
 =?utf-8?B?QVMvaW43N2VsVkRDWU1pZ25ZbzZUUmgwcTZ1V2dXNFlqV3U4MXZRcmx6eHIx?=
 =?utf-8?B?OXY1b0FTczRCaEV2WHFsVEJ0eUNwdVRYZEZCajkxZlk2NVRlV09zSFk3M1ZX?=
 =?utf-8?B?WnVzTVJSQ2p1WTFuU2Z5UitDVWFmd2xYVUs3SWtEWGhkR3VyTGRtcmZRVlFV?=
 =?utf-8?B?bUU5QnB6TTVxNDlobmxISU1zWG4xUlA0RHdsbVpZWHJOc2pLYXRjZDAxN2lW?=
 =?utf-8?B?UDc4MkpOamwxWk5yTE9ESGM2cVBQeTJhQWVxYU8yY3h6aFR6dGVSUldRaXNx?=
 =?utf-8?B?dTZvc045QVFlc1puUzI5ZzlhYUhON2ZNM2lBcEE5bzVweWRibU1lQW1FS21S?=
 =?utf-8?B?Y0F1WXBTZFhHOUFhZ2xUUHdPUFZPdzV3K2NjNzFCNXQwMUlXZ3BRa213MWJk?=
 =?utf-8?B?aUE3ZUczVWRyM0phbmEwWVBqMHZhY1c3YTdodUYyMzlYQklRczRWNGI4U2c5?=
 =?utf-8?B?WWRsM3Y3TTZxMThIWjBGQ1g3a0ZWeEN2bS93N0VqR1V1S1BtdTNmZnZZN3Qv?=
 =?utf-8?B?dEJNYU9FR1JFcEU1eHdhcFhZbjgweVZpVUg5T0dTSFF3QndSZ1B5cUVnbXRk?=
 =?utf-8?B?MzBzbDV0S0tFZ1UwZjBDK0w1dGFPdlBlK09FdFltdk5nN2g4bW5lTXErUklP?=
 =?utf-8?B?SEdjRGJzcytJVERrZkNDa01rWGZ2S3A3a01DVFFGbjdtRFlVME9GemVrR2VT?=
 =?utf-8?B?SVY0WU0yUmxwRitwN1FuL2tDalprK2FnTW42aEdLY3dqWG9VeVFnQzlnMjhB?=
 =?utf-8?B?N3AwNk1sdnR3U2VNR2RrMjFGL1lndWhpc0xPeHVtbDQ3QTRaSDRMZng5K2p0?=
 =?utf-8?B?UENrR0t1cDV0ZnJzUnlwM21aTHVWa3FGV2Y5am5JVGxaL3JaaDlzZkNQYUd3?=
 =?utf-8?B?Vm00RU9yQngzVC9YSy9xT2xya24zaS85cHNYNWkyV2hoY0tyVGNXcC9LTngx?=
 =?utf-8?B?WCtncUFacW9pQm50Y1poRW9OQ28rY0VxMWpNOFFVNFF0bmNpWi9yWm9rbVJ3?=
 =?utf-8?Q?/kGubau2eW9kwXurimieq8B9HpR2EjVeV1WPO8f?=
Content-ID: <49C88B288A6F2A44AE9C0690F30B4FA0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb50578-babf-4205-da94-08d92629e28c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2021 00:52:38.4842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MJuyFDQ+E/HDcUOShfpGy8cmSbAmODKrO+6fBjcbtP/Ma7yPaXZ77FG5xGr7UXoaSqSP9GM5KfkOE/koMgl1ysN+lW3zNwngAmSoUurY0f4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3230
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 2/2] ice: introduce XDP Tx
 fallback path
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
 "bjorn@kernel.org" <bjorn@kernel.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2021-06-01 at 13:32 +0200, Maciej Fijalkowski wrote:
> Under rare circumstances there might be a situation where a
> requirement
> of having a XDP Tx queue per core could not be fulfilled and some of
> the
> Tx resources would have to be shared between cores. This yields a
> need
> for placing accesses to xdp_rings array onto critical section
> protected
> by spinlock.
> 
> Design of handling such scenario is to at first find out how many
> queues
> are there that XDP could use. Any number that is not less than the
> half
> of a count of cores of platform is allowed. XDP queue count < cpu
> count
> is signalled via new VSI state ICE_VSI_XDP_FALLBACK which carries the
> information further down to Rx rings where new ICE_TX_XDP_LOCKED is
> set
> based on the mentioned VSI state. This ring flag indicates that
> locking
> variants for getting/putting xdp_ring need to be used in fast path.
> 
> For XDP_REDIRECT the impact on standard case (one XDP ring per CPU)
> can
> be reduced a bit by providing a separate ndo_xdp_xmit and swap it at
> configuration time. However, due to the fact that net_device_ops
> struct
> is a const, it is not possible to replace a single ndo, so for the
> locking variant of ndo_xdp_xmit, whole net_device_ops needs to be
> replayed.
> 
> It has an impact on performance (1-2 %) of a non-fallback path as
> branches are introduced.
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          | 37 +++++++++
>  drivers/net/ethernet/intel/ice/ice_base.c     |  5 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 76
> ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 62 ++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 13 +++-
>  7 files changed, 191 insertions(+), 8 deletions(-)

This isn't applying to next-queue/dev-queue. I believe it's becuase the
branch has the soon to be sent tracing patch from Magnus [1].

Thanks,
Tony

[1] https://patchwork.ozlabs.org/project/intel-wired-
lan/patch/20210510093854.31652-3-magnus.karlsson@gmail.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
