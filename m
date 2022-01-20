Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9593495641
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jan 2022 23:12:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4842A40977;
	Thu, 20 Jan 2022 22:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aZinKScupaYe; Thu, 20 Jan 2022 22:11:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3F864055F;
	Thu, 20 Jan 2022 22:11:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A1C91BF28F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 22:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34C7360EBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 22:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zST-W0zq5KRS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jan 2022 22:11:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 42C2060D73
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 22:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642716712; x=1674252712;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9sNl31DZpnfCHvMRbS5JdqsKhvnRoDOM/BidU9Burn8=;
 b=hkhzH/yrSrPpwkCAj4K1ZeUsP5UCm6un69Nd7x+TqkBFUYpTPoROEUlF
 1q1bQEpb7ynd+IzDT1oHv5CSdZvktWIeyyIm2vjVu122R8pYy9VkH5pgv
 GfSSqaMb1jaUq9mrFd/tVfzWO5/l3HKrkz5eaXHWRAXTmEtYLf05VYSiL
 FKxfakzJw5IsnhuD14cUnWseK/1LmXM4PnJP2KHApJ8SLYsLzJth4bOaA
 ykG79Z1QsExKlwTTSCYRbuIaKhoGcdRJAnPSNIa9ahGOYPnuppFCGaFUI
 SG2641RmWTTgYXbcEb5Mj1LljEy5E92SwZMm1bowJiekr3xK+VOaOvpN/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245440901"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="245440901"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 14:11:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="616275014"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jan 2022 14:11:51 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 14:11:50 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 14:11:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 20 Jan 2022 14:11:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 20 Jan 2022 14:11:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSHmylvW0khCvC9L97Os++BL6b1IraskIh5l3mA3jKbQqkGYA08KPTZm98Kli7nVdDPShRfUTt8eECDFeCC4n3TU7vs+F5fmlnytX0hdpqExWfTcR9fSsRurogsi/041m83UyJF3I7LToxHrXbGeeDcitV5Ft4/5ZP1q8IlspX9Mf19Jk6mDQoX5hUSWPd4BEf+GWNJZrOyGbsjQ/GlGyWioFJbiQ2gxQObN/C7hfPt/s/3TfT/tRJbqQxL/GzKHxQp/w3y12hUgRqDDf7iUeI0uk9GVHlRvdxNPgVhXKIHl3i+IcsQLAhCJs5lmtlNorobwlTXQKQAf4acNZVKDQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9sNl31DZpnfCHvMRbS5JdqsKhvnRoDOM/BidU9Burn8=;
 b=S4kODuZrftsT4Mfkj9+kycW1FofIKadPNUdEm8npyHVLLz+J1435f0gC5wVdXRU6Ax6JV5XBnhNWhDJdttOm6XIYONr3J/YOc1lvtdBuqDDPo1UKIwyC7k4RRPIf9wRVzFRn8J9VdVo26HzwCM18OZ38I7546FO/dJlNZqbzPU67aVP6lflo0xsc91vQ+FH0cCGEP6Ij+1rf85eyf2y79t7RXMWRuzAYPioUwEty/NICoRST4O6OhnHi6dsis6/2P+XleOOvAVCNu5uEcjfwxots1XnjmvsTUsCARBI+RGbUWJ2m7tMyyPcZ49gOlEOWAf80aahYp1PYrAhmasrwIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BY5PR11MB4452.namprd11.prod.outlook.com (2603:10b6:a03:1bf::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8; Thu, 20 Jan
 2022 22:11:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4909.010; Thu, 20 Jan 2022
 22:11:48 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] iavf: Fix handling of vlan
 strip virtual channel messages
Thread-Index: AQHYDgQaepx0q7YP7ku5DN0B9VBTD6xseU6A
Date: Thu, 20 Jan 2022 22:11:48 +0000
Message-ID: <5c08a2fd8add4ca4c9c15721ce14e342a053adc8.camel@intel.com>
References: <20220120134534.183322-1-michal.maloszewski@intel.com>
In-Reply-To: <20220120134534.183322-1-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 507eef8e-6463-4289-b987-08d9dc61da58
x-ms-traffictypediagnostic: BY5PR11MB4452:EE_
x-microsoft-antispam-prvs: <BY5PR11MB445265466866D4D035C6DCE6C65A9@BY5PR11MB4452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AIUFuI9oSSvXW0Fov7CvvMPntGFDpj3uM1/H7v1SzNMQezwAvoJ+lZeZAJKGPLkx2xvvILbsuJfOGMHDPRcxsI4d3mMvQMSUJTaDuAUAtfQc2l5x32DAaOuVkj5wV7E0J0dWn7ocjPq1faldZiT1R3UwR+qhsds2ZKytlW5BdgjPkI29jl5BjUYOOt8sZBtL/0zl0lRgW1thJOl0d29fJFRE309yVy4WhTCjovdyu0Ifax3/U3DgbrtPcSGd0ssJC5xTp4apvbEik0ei/JuDUSnAEtwE3MIoddfH0ZQwuiyemG1K3zWWsLTIdDjuK8H5BYfRFWlxs3xl4zurGvzvIM7P1bjuuhTol26/1DTM8hkErK0/YN0OVHhj6/NIX+3/iEw5syehDfTun5k4wk3g6wozuPbWHcGrNsFuE57rGAV8U6voU9/pk9Tx0KK/T2ZYf3XSIqWRaot2TlbxyrUI8ZrbMmMLtYAaE4uROPxosu3OoN1R4VqRPO+hEza2eM06GNsoPuBQBQEmLzxm9NZEQRGCf1d5slq0CZMjVMLbEkh7y26GeJO8SCaXXtGBL18ts+LCJ7umpkJZA1YhOytN2PYQEqZka0DEfp5drGf4LYNhWJxME+W2Zm5Sin7cxYaNTGg32i8+l7T0rpphCwUk2+lwdSIqWwomnBUQ6eHzB4i1oTiTa75EalDJy+1BKcdoGO6JguUfKSdLsLTaWzyURw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(82960400001)(508600001)(122000001)(2906002)(110136005)(6506007)(71200400001)(26005)(38100700002)(4326008)(186003)(8936002)(8676002)(6512007)(38070700005)(107886003)(36756003)(5660300002)(15650500001)(6486002)(66476007)(76116006)(4744005)(66946007)(91956017)(66446008)(64756008)(86362001)(66556008)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkZpRnpLY0ZHMXJQejczdHo5c3Q2TDhSQWFtNFpHelAvMTFzQVJiWk9NODVx?=
 =?utf-8?B?Mkw4dDhTWXNOd1FscHM2eStkUmNjWGs4dUN4Rm45Z2RsNjdFWFRIZFFkMnJU?=
 =?utf-8?B?ZnpCOE55YnM2UVdhZzBkbkFyOEF5bVozQ3FCeHpVZFpXczgrMmxNVjUwUGZ2?=
 =?utf-8?B?bGV2bDYwWUI0Sk9xbW1vekJ3YnZ6citIUmJ5Y0FEblIzclFsVnU5dWdCZXpF?=
 =?utf-8?B?Z0VjVUtjTnNFeENDSjkwMEcyUkFxdnd2S25KanAvdFJPcnVOWGxRT1hwMnNt?=
 =?utf-8?B?a0RoMkpXVHRtUVFMYUVHM3duZGVJbCs0WHlvOGRqWmsrNGJsT1NnamljSjlp?=
 =?utf-8?B?amUxeG01SVlmR1hSM210cDJaMkdXb1hwQlY5aE04aGNnbytMcEVQajBjZm1D?=
 =?utf-8?B?WCtnNGpHVDdTZXZJM3pyRm93dllQYW8zNEpjc2FMMDg2dldMc2lqZE5lTHRP?=
 =?utf-8?B?TWNrWUI2NUQ4bTFldFN5WkNkTjJWYW45K2Z4SEViM2xKNlM3TTRnUUFzd21t?=
 =?utf-8?B?VHlUMHZPQmJZZjhXSklNYW0vVjByZlkraU1xa0hIS29xcGNPckhGMXR0MUxv?=
 =?utf-8?B?SExIZlhGZVZEZUlJck05UWNjcmJQSzQ4MkJuOUlQYXJGVURSdTFBTFovbE03?=
 =?utf-8?B?UFg1OGt4WEhkclJoZ1JPSUVuUndzR0V2TDExcTgxbHhEYnRoWVM2Ry9IMWRx?=
 =?utf-8?B?UmFzOFdsaVlCdWFKQm5hYmhuQW5aSVJraTVKak5GekpmZFUwT0dmdzNqeHp5?=
 =?utf-8?B?eUxHci83T3Nvd3ZvSFpBOG9UUndoaTNuWHdORUdKSVc5Y0RxOWFLTm43VUxK?=
 =?utf-8?B?RGVwUUNSeWh0eWFyVzF0UVU0MHJFd3VPaVAyRFdyMlUzdEgzU0lvOEQ4UkJ1?=
 =?utf-8?B?dFM4cDFBUnBVOTBDTzJkOU1pSXJWaDN5Nmo3TUVTRTRvOHh6K0hqZFJ6S1NR?=
 =?utf-8?B?elpXdkZabEgwQm5JY3BQUkIwa1ZQRnN4Q1ZuZ25PQ0hiTUsvSys2NUM3L2c0?=
 =?utf-8?B?L2lVTzAwdXRLdjk2MU1DaWFuZmptZDc2MC9aVUFCVE94TzFxVnJ0VlMzb0Fq?=
 =?utf-8?B?QndKT2lBMitBZEl0RmRaakZaZmNDOUZnNXZoajZuWCs5ZjdzOHlvRXZRUEYz?=
 =?utf-8?B?VmhpUDhxamRDb3RoY05GQnFNWklwVEdtMUF2b3pNZDNLZGNrMVdTRS9WTEdD?=
 =?utf-8?B?aGhVSERPbHpKbU5MOHFsRUpCNHhQMndSTUcySFNFV3JoUWJiR3J5RTA0TjNJ?=
 =?utf-8?B?TDF0YVcrbHRiYzZYQ1Z6QXNta09qNHoyMVNLd2IwZ1NXTm9JaXRzREF3K25n?=
 =?utf-8?B?SzJrYVk2RXBtUUVIYk95Y3hJUTQySEl5dFhINjV6dmx3YW5ManpIZVVPelJZ?=
 =?utf-8?B?QlkreklORXZOMW9iemVLZjZLYU1uUUxncFc5VHdhTk12Z2xScitoMHA3eU5O?=
 =?utf-8?B?QnpHNHdvOFpreGxyaDNyd0JUOW44aGd2MnhnQkhrRmlVWlZSTHIyald6R0NS?=
 =?utf-8?B?dUFSQzhHbmhPVm5LaXpibjV3NXMxWHJ3MDFKempBclVMVWgzVnlFZnpab3My?=
 =?utf-8?B?VlRRUjF6V090dFIrUzVKM0ZsbU1DTEovaldwN3NWcUo0RVdmd2NuczZ1b0lB?=
 =?utf-8?B?ZndabnovcHAwTzREU3NVWmRkbTFQQXVRd0hHMU02SHFaa05CZFZ4RllZOU1V?=
 =?utf-8?B?WDFHbE1GellTbXBINDduQm9qV2d3ejVnRE41Znc5aFlxQWFzbEVsVVQ5N2JQ?=
 =?utf-8?B?VkpwNENQdzFrOXRGN0tYMTdvSWd5Ulo2bGlwOEk2VGtyaGg1YytVWmZTWENp?=
 =?utf-8?B?TXJERGFZN2N4TElSelNYSzB0aWNZYXpOZ3JEVzFuQUE4Vk5nNEVyTm1vUzRR?=
 =?utf-8?B?SGtTQStNUHBkSzQ0VWV1a3ZaWW50cTRuUS9kTHlaRTBoZEU5Nmd2a1F0Nmdy?=
 =?utf-8?B?eEdGQXdwU0tRZ0taZ3lYQXlHTFJPcjFPZHdtTy9xRmE2THRBT1V0Z29paGN5?=
 =?utf-8?B?VnA1S09KaU1zK3N4TWFqUTNocERFWWFtblRmVmd4eWNvZkFtQ3czU0ZYMm1L?=
 =?utf-8?B?dXJmS2p1SmdScEJKYytQbTFRNC9mMnQ3UDQrYnRRZEJrRUdrNjdVSUpMam13?=
 =?utf-8?B?WVBvMGppNlZ4S1R4SzFxRzZxSi9vZzJIeWZoVUp6VU5vNjFTa1l0NUpzTi9L?=
 =?utf-8?B?NXFGUVloc0lCbGRpTU1RVHcxbis0N1RCSVlqUWRlWXFoS1gxcStyOGJ4Qk44?=
 =?utf-8?Q?czaliKGO8txyoAxB/CZut9Okvvg4uopxrWYXM/dwB0=3D?=
Content-ID: <55B7C236CEA75142B39646C5D2445EF7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 507eef8e-6463-4289-b987-08d9dc61da58
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2022 22:11:48.2353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fjz3nbj/tT6LBOMscZD9ZLtkoUEe2+CeyKLHFznKTpOM36hsZegGkgKrauITG8/i8IME76eDaIW1ulH0IP83tjI6uKO6gnXO0VCYCBRDTe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v4] iavf: Fix handling of vlan
 strip virtual channel messages
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
Cc: "Ciosek, NorbertX" <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2022-01-20 at 13:45 +0000, Michal Maloszewski wrote:
> Modify netdev->features for vlan stripping based on virtual
> channel messages received from the PF. Change is needed
> to synchronize vlan strip status between PF sysfs and iavf ethtool.
> 
> Fixes: 5961a2b9812d ("iavf: Fix VLAN feature flags after VFR")

This fixes tag needs some work:

Fixes tag: Fixes: 5961a2b9812d ("iavf: Fix VLAN feature flags after
VFR")
	Has these problem(s):
		- Target SHA1 does not exist


> Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
