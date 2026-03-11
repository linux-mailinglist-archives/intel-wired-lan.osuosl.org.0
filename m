Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCluLIZpsWnsugIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 14:09:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EF82642A1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 14:09:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D75D542283;
	Wed, 11 Mar 2026 13:09:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eCHGbO7IqRGu; Wed, 11 Mar 2026 13:09:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30D1542278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773234563;
	bh=VowCAOGTurT6IIdV7oooybfN94a7VtVYKvDoSP1fYII=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6cLzdz+pZLkKNJsOroJ7XzA9VIr/0AcScHmpVYsnXAZKNiJ5lid/QCMxGi8kDe8sI
	 NMJspOLtmMljpntzBq9S4CJmZLxNpMsmjvp/JyVzNyncjZfjpww91sdnqF45uE82cM
	 jfvfzjfT+r8j3GUrCHKu7tig78AF9L7NoC8/rAfSLg6HRdBdM8R2ek7oGwyHqvXXJ/
	 7kza96S+8HggbtZ9T2O2/apadHjhgFkSn7AF6kbSUGr3i58cM42TgaUy4Fb0D7Q/rG
	 Bri7Fkc769tcVSebYaCqWU7+XDT0GUPKyzPMMU5Iy2IT3ciiuHpqi9Fy8M01Oyr/T+
	 RJUX4hBtqnKhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30D1542278;
	Wed, 11 Mar 2026 13:09:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E57D201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 340F342280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:09:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uCiQ5Yxxt6Qa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 13:09:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 434D742278
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 434D742278
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 434D742278
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:09:18 +0000 (UTC)
X-CSE-ConnectionGUID: xHWExDZNTFSUBJRQtiV/Tg==
X-CSE-MsgGUID: 9osV/PX5Q3K/OCH2n4cUQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74490072"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74490072"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 06:09:18 -0700
X-CSE-ConnectionGUID: JK0D0I0/Q4q3ItgOTAoIvA==
X-CSE-MsgGUID: QnkhImwCTOuj9IPs7fcONQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="219706542"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 06:09:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 06:09:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 06:09:16 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.49) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 06:09:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B7JI4fBjBYufQo+CV2z6Zl51O7z6ptiB7Ren68V7EJVcBtWm0oUmk01VFfrpkV7HkwGVVYy4SYqCfVT6IJn//9rJyPMs5kvG76zyNECU05cCByhqAa0TDFWBZqo/5Ri8mmBt69OE23XrGK1JcQjA8i0SMqVp76ZJbsepDvVxAOeVsczW7En42saLdZtOC18IO+5cWubTdksXhHMnfA03c13L3di0Vg0NP5mhUMnxDAqrAA0Xa7CJrDhyXdr1tS04saa48lOF5wu2KEQ2/6gK42gclPwMQ9lwh3YmDZqwtRxH9pbQARBbkFDUZ3YsIESgyFvZNFkNy6wh25QMsF8Uew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VowCAOGTurT6IIdV7oooybfN94a7VtVYKvDoSP1fYII=;
 b=UdxLvknexYYEsEKmJzqqF+RGGkN5Dmu5tJSmFEGI03QzeK/sS9sH3NqmLYAl6qdTGQNAHCeKwYsrQxvpJXcFsjZABxwbF6Wg3dxLyoRNAIi10pCIhtUI8tVwlZDrJ51Hy+f6KajYLANz1nBtqK6+soDJrhe60BC76KfJvn4VJKWKYsxBxDRye9F8nTjGi1A+M3x30mDy+SvF5Wl4FBgxDrQ3xPYQ49rpGlN4LjKTa9SiQCLLCuSecYwP6NSJYtE2x6ozR+w3jOnmPF/H1ke8kuVglSeazCChgNlD54YE5RaD19v6HImIX5sdHOBjZDR9HApkttL8ZC0RBrUGkPYZ8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by DS4PPF2D9C959A2.namprd11.prod.outlook.com (2603:10b6:f:fc02::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.10; Wed, 11 Mar
 2026 13:09:09 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%5]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 13:09:09 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
Thread-Index: AQHcsH3aCkZV4GjS0EiRZNcpFpJXibWnngwAgAGxW1A=
Date: Wed, 11 Mar 2026 13:09:08 +0000
Message-ID: <PH0PR11MB4904742C406E5B30DA7400C89447A@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260310110700.345904-1-przemyslaw.korba@intel.com>
 <IA3PR11MB89862BC3078293849BE46C35E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89862BC3078293849BE46C35E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|DS4PPF2D9C959A2:EE_
x-ms-office365-filtering-correlation-id: 0f421468-c934-4cc7-d255-08de7f6f61b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003|38070700021|7053199007;
x-microsoft-antispam-message-info: 2p3JRqHCrd42sfxbxRRbCAAJYxnx/wEj+XP3Q/NhyNecVuefZCmCxcvtcENq+ZktMc2RK+ZaPrV8s+bJKO6nmAchAAWgXvHkbJV5H9/ZillhJF+N5M0ddKmJ2KICShC4M+VZYUy9sCW6wRzm03JQFNtCmxUuOXENv/rWiQuwBVvpN2eVct0Yy5pcbIe6tddWUL4S5GIEKEFDHDSqIn4x+AHmqGuv4Zf/au7+srYmgQ867j7HzNCW46WihmYeDHs2OTBxgbgcryF03iWWGEuY8EtcLWA+jeWW4oBbMPWrqCeWoBTbWkDLgkCEtmFbnnpCG2V6i/ABH1Rllnep0x5OEcPDNDG5rneG74ZcbFPcmDnbsGg0cvwRjYy2gIhHAyZTsG1dZd3Z6K1Uz+nW4nrfy5wIQkDGqSO3oQHpJD5Uklfpm/iq1uO9BGBSeq3AuPzmgbfQwN34a+JaitqLtYeBbcUzv6JvfI+BAUL6XRWOhsA8JXnSGxQcQrLy+u8DO+dABZvZh31thC6YTpFIrcr03fU67Ba8m7IPJWS8RKisJ/Go+Fs4NyxeaE0jXPd7Z8JgM+nUMPXlv6PM/us7w1thiiJ8+Odg/3Bc9heQRgoo1dqBIcYOt2O/JDnzzeA3DGRR/R7h3gpWUHvsUqox97VVNAOTVQ4z7I4wEVY9x3OfWgqxzdgAjxjGo/bbZ72DJyP0m+i9e0xjIxVHN835JnRp6/Kd18guHzuQEyK0cdafxGC/x5Gcbs3h94ldlDfqZCxouFhUel1tUtfsdKhHvykkUPekwzEoeMrhxGIHbtzv10g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c1nTo0DJU18UooscE0fRN2h9IuL4bm/wHlQ+fYDWTrlr5weZSV0p6bLigBmf?=
 =?us-ascii?Q?EgnQKeuFGRF1YPBNHbcThpU0J4IqobweSophqWDQ8qVzsq1CTTcZErXJuAGh?=
 =?us-ascii?Q?zP7cTPNI7OHhzpK96EnK47xbDdKT1y7vGjBxHv3/o5ccKWfCInUVmPJOaRgb?=
 =?us-ascii?Q?sKpzZQTM3QQZupORnl6j6gEBX59eSucPrEetZf2fv3bMD5azq9YF++W1VjqS?=
 =?us-ascii?Q?kwx/ms9B8ImS0M48JfCQMFHAd7Cm2SHpVOXMfrMQ2blr0Mo6VZ6rHaILvIRv?=
 =?us-ascii?Q?3ncgCAYm7yzY7lGviN3oSfmUqfoWPf7GSHm1mvUbPgCYq73D7q4Lsy4SncU6?=
 =?us-ascii?Q?McgluHgtUxoXD7Bw24FJOWLxGwWnWWM1YJedViTfJ8fdQxqO5AlwRv4dSu+I?=
 =?us-ascii?Q?lRHKePmc8kaZ0Evm47C5Tc9OUc1dIGmlhWeNQDRwpdRI2B5ht/5hkv4/ncMV?=
 =?us-ascii?Q?jh8LJGUzRQchFLrvFHyMbUdcRTYvoXQdhpba5ZCWRdrsUc5DwWmyqPwmzjux?=
 =?us-ascii?Q?gQJwNo+1g9/WyxWuzr5rcrG4R0Bft4kXDNJ7iOf5E+lt/EW+9Pnt/lpgLkkY?=
 =?us-ascii?Q?+pMuZpkQYCbilVI7dKhidIAOJTka62+Rg5SkituU8taVuYA+30sl0E7y0I3J?=
 =?us-ascii?Q?O33eZ8yy/DsvaZspiKxGqBS5aDqD0XzUHLjh0cJka5sozH2azkAt2yDPhdI4?=
 =?us-ascii?Q?4mzjjxmksbYxi0OKVQSi99IICTUbwqt0CV18xA00CLvhr8rgE5HyoVH0hzSw?=
 =?us-ascii?Q?VJgOI0FnNSVaTulAcrzEZGZ1OIi5lEyDmnPaXPBq4WAYlASZyhed33foZGY3?=
 =?us-ascii?Q?2zH8lHDo0JFvMFeHICQVQQswrO3x5pXKz/h6L8JaBQ68O+Vs6gYD6BbJTwP6?=
 =?us-ascii?Q?QSaI9nuAw+Wac5BadGme0Y5NLt727z5nwbLCCWk/jHUC/cQJ0Ltwdz+PpbTq?=
 =?us-ascii?Q?Ufj6/I+1HAMvKcF9EaA2iWZaEObCeyKIptI00FJoMv4ELGQT79YhEH6AvJIS?=
 =?us-ascii?Q?FFIVQGpxxhybvsCLzspQEERpgIIiXrxP5H2Mkuf0hYwRrTZqQzUyY++SEOtS?=
 =?us-ascii?Q?3l/+8IzYD7kJsqB7hl1qLXpQPrpagKhcNiftBWG02waRqS25UqOJxYYyW+Eg?=
 =?us-ascii?Q?LhoTrpFStjAaKXWKsxBPBiWQhGwtXkLjwy9JGzZEvh8IodP3ctaiMyAAuCxm?=
 =?us-ascii?Q?OVQ7Uh9akKQuTxajtT+P2zsse5YHezT8DqgBHY2sw7xSuVoRNMcNNIhAwgYc?=
 =?us-ascii?Q?5WCF5acmNHBztmol/VSR+jXm/5zvVJEMHRrOZsQ9lYbSez1GmMzZHlip5gml?=
 =?us-ascii?Q?C0+Jobmezs8lpwJQiBAj/cTwEdGh00n5hxarhWcjcRMyiyieyzYOPie4Lj+o?=
 =?us-ascii?Q?UcIsYK5/BPZvS5ft6UYImnfmmcsYdajt78Zqkev4mvXEjZidoQtMX5AqdmN5?=
 =?us-ascii?Q?xb8cxc/npToUHMNwe/LIaAp14muGYfIKAFFrViinitNhBPoIyk4UFuZEK8u5?=
 =?us-ascii?Q?Eq8Orfa7T5fGKAj6nmU5ZnQDz/NP6Eo+S5SVT7N6gNJfGrUrQt5STFEzY+AB?=
 =?us-ascii?Q?/xkDlJi3aEjsHyOOAH7reW1doA7Jh/IRQ+/41jyk1kjLKSd6wirVKBAtvasa?=
 =?us-ascii?Q?S/pyakn/rMSZVXZaqvJrGmEW7LO81NzUONm3/GVp8Ty2EIfKK9tIR59UVKd5?=
 =?us-ascii?Q?0mVVWYJZNWUVzBYKZ4KvXIFDhwHks8uAmrJHh/bUMWe4aVf5mPLKXSsdsVRJ?=
 =?us-ascii?Q?HqiAeKsklg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KPCqtxOlC6cnoCQxq9QpHiiHzRSux6dGfEgk/odMTTyauHyPJ+qa5UFehGrqjtW3r1zqZylD0CWhfurX/RX6OAhXQRYJ2igu06R06ZdWJ4kzA6Z8+ZoLdQY4SV+RAewZxEV1PsnZKGDq8c7m+8sdyBpyIKdUjO5pEjRnU0Rk9BEvqKQ26QZ+GlBnon1Oa/HYcEnqA8eyZlqRMI1694Vevfkbl4v/Xx7/nC4JVPA8wCmIKhabNi4yIH/DIaKbUXiZDhVrwIghVR2Bw1FV9D3sFlP4ZC9dhLnqxhMupK4tivuCRr1X/Xo4GjYEy/95DR1OHmnPLY9dkepx8NxrGbAijA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f421468-c934-4cc7-d255-08de7f6f61b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 13:09:08.9893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zAmk2CBeAVWRrWrN+cgSkOynRRVKhmt6NAOemuw9GS6xtNiCQmyiw1NrE2Oz9UBQQHgbVMP3KX+HBWmLtXD0/LiKkXo0SbJKOLiWcMdp4MI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2D9C959A2
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773234559; x=1804770559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V3Z6cXCNhesEtDWPH8zigK37RCtnckhCOpV3TPVUOMk=;
 b=KfdT4odygzsl/5h6cm1lONNFkbb/KNVqXVgzVV0sSutTeDScwYNhwh22
 lYgNCQTiR8J+tB2ca4YaBgsjpb2RQdX8BMOkSKyU9MuLbKOVTYqgjAv/B
 KNnxY5AVh1CmuYbuiYwU5vqhdL9TlLSSXgsMh5wzuvo95w9SF50bGAwBo
 jsa7y6HEKkMz0K3wpv2RTq/J9P2+MrvqrcWLUrDq2qAqksy/4edaMmwtk
 kvzV+OZxujgCPxcv3HF30tApj5fgvGvFp3Mmzz7Wh8vpIGq9aX136taAN
 ICuD2pCqapxXE0F/nrTGo2EOLUu5NCQ+tpVOvs7yu6v1UHsj+oyNPiaxN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KfdT4ody
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
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
X-Rspamd-Queue-Id: 86EF82642A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,PH0PR11MB4904.namprd11.prod.outlook.com:mid,msg.data:url]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Tuesday, March 10, 2026 12:18 PM
> To: Korba, Przemyslaw <przemyslaw.korba@intel.com>; intel-wired-lan@lists=
.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Korba,
> Przemyslaw <przemyslaw.korba@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write supp=
ort for sideband queue operations
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Przemyslaw Korba
> > Sent: Tuesday, March 10, 2026 12:07 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw
> > <przemyslaw.korba@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write
> > support for sideband queue operations
> >
> > On E830, PTP time adjustment commands sent via SBQ don't generate
> > completion responses, causing the driver to timeout waiting and return
> > -EIO, when trying:
> >
> > phc_ctl eth8 get adj 2 get
> > dmesg: ice 0000:1a:00.0: PTP failed to adjust time, err -5
> >
> > Add support for posted mode not to wait for completion response.
> >
> > Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
> > Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_common.c   | 7 ++++++-
> >  drivers/net/ethernet/intel/ice/ice_controlq.c | 4 ++++
> > drivers/net/ethernet/intel/ice/ice_controlq.h | 1 +
> >  3 files changed, 11 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> > b/drivers/net/ethernet/intel/ice/ice_common.c
> > index 8866902efb91..df9e5422b981 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -1765,6 +1765,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct
> > ice_sbq_msg_input *in, u16 flags)  {
> >  	struct ice_sbq_cmd_desc desc =3D {0};
> >  	struct ice_sbq_msg_req msg =3D {0};
> > +	struct ice_sq_cd cd =3D {0};
> >  	u16 msg_len;
> >  	int status;
> >
> > @@ -1785,10 +1786,14 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct
> > ice_sbq_msg_input *in, u16 flags)
> >  		 */
> >  		msg_len -=3D sizeof(msg.data);
> >
> > +	if (in->opcode =3D=3D ice_sbq_msg_wr)
> > +		cd.postpone =3D 1;
> > +
> >  	desc.flags =3D cpu_to_le16(flags);
> >  	desc.opcode =3D cpu_to_le16(ice_sbq_opc_neigh_dev_req);
> >  	desc.param0.cmd_len =3D cpu_to_le16(msg_len);
> > -	status =3D ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
> > +	status =3D ice_sbq_send_cmd(hw, &desc, &msg, msg_len, &cd);
> > +
> >  	if (!status && !in->opcode)
> >  		in->data =3D le32_to_cpu
> >  			(((struct ice_sbq_msg_cmpl *)&msg)->data); diff -
> > -git a/drivers/net/ethernet/intel/ice/ice_controlq.c
> > b/drivers/net/ethernet/intel/ice/ice_controlq.c
> > index dcb837cadd18..5fb3a8441beb 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_controlq.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
> > @@ -1086,6 +1086,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct
> > ice_ctl_q_info *cq,
> >  	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
> >  	ice_flush(hw);
> >
> > +	/* If the message is posted, don't wait for completion. */
> > +	if (cd && cd->postpone)
> > +		goto sq_send_command_error;
> > +
> >  	/* Wait for the command to complete. If it finishes within the
> >  	 * timeout, copy the descriptor back to temp.
> >  	 */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h
> > b/drivers/net/ethernet/intel/ice/ice_controlq.h
> > index 788040dd662e..7c98d3a0314e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_controlq.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
> > @@ -77,6 +77,7 @@ struct ice_ctl_q_ring {
> >  /* sq transaction details */
> >  struct ice_sq_cd {
> >  	struct libie_aq_desc *wb_desc;
> > +	u8 postpone : 1;
> I'd recommend to rename postpone -> posted to match terminology /* posted=
 write */.
>=20

Thanks for review! I would keep this naming to be consistent with OOT

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> >  };
> >
> >  /* rq event information */
> >
> > base-commit: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf
> > --
> > 2.43.0

