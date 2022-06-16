Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E324A54EB38
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jun 2022 22:30:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E70394053D;
	Thu, 16 Jun 2022 20:30:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BknLR1aplW11; Thu, 16 Jun 2022 20:30:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB0AB4052E;
	Thu, 16 Jun 2022 20:30:45 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 378631BF593
 for <intel-wired-lan@osuosl.org>; Thu, 16 Jun 2022 20:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19CDB83EDE
 for <intel-wired-lan@osuosl.org>; Thu, 16 Jun 2022 20:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5VRzyPyyvNmq for <intel-wired-lan@osuosl.org>;
 Thu, 16 Jun 2022 20:30:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B540083ED9
 for <intel-wired-lan@osuosl.org>; Thu, 16 Jun 2022 20:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655411439; x=1686947439;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=a3s/MOPDtovE7oFvFLOOTXSeLswzSSdWdWBeGqK7vl0=;
 b=f+h+jMQnFZKXHS6/PCrJ7ccDp+F9Ot96AQwK3lZuR9X0hAeiIJQ9IWkB
 F31aGy0rQFEg4yn1rmc4tYjMxrZvgEz4TF7azvVgFq0g9i4wtHozBnZkf
 UzTksqi039Uuvu94ijim7PmftAQ/5YOc4BAjyuD3xMP+x8sxUH23/IjY5
 gw8ufiX/ra05XBH61wZMoE18iAEb7EOtA7cE85EM9Jk79wmpVEN0GFrn4
 +kffVzJcK/9ptrCo454xNsT2GUTXW8yDlUVZRcThHG/HyCgSQwLVglOgA
 8VHX+uLe5p0VnYFPabC1JwBCqX3JLqyGqkglNCpYuJd+IcbBmCGhvKVI/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="341000370"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="341000370"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 13:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="641717033"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 16 Jun 2022 13:30:38 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 16 Jun 2022 13:30:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 16 Jun 2022 13:30:37 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 16 Jun 2022 13:30:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z/7arzfShrUgzawe+HZTMObmDuAM9x/DNgel8y/DIUXFL3j0+PRKm9HpUcegiU9wOgZ+pxyYtRNQhgGMGuvjolLSWJ33MMlJbhddxf1H3wPbgLPEHsApPJQ24e2XEfHcLwPQXPTk1XBxOyzy10de/CTRiUy834m0KRnuD9bnxo5tfmm/RufK6acL5/q0CsHZsz8OrDxt3ymX19bzmafyB03QpzZJewv0IoYpFMZkMX7o/ZXJBfMs10QWRqdTCLldwLm9Ik8cq+WbdwmpG5OS2gH1CNQElGS4FIQVm+Fljgc6cpXaEYrNaLQyxez17ugDaEc0Y2eWq/XGSiol1Xwp3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a3s/MOPDtovE7oFvFLOOTXSeLswzSSdWdWBeGqK7vl0=;
 b=EOxfJe7Tpd3mTc5AGxPZ1b0Gm9gyq7Jj4yEG3a2FEOROZB8P4kRshTHOl8+bt9I+Gi0ud7ejrPacXTxCuLJFRChkjsnOUWqw4A0061lopHGm/GD/9yu1It4W0ok74IxoYoc3CBLtP2t7QZos/kUtfWS6XtbcfEeVyEaRqMS5CT1HGQC0INs3+N1qQD2Gy8PExVgGioMFaeIy7je2FrhfV/asRJ/zGLgHEk/zRQTUL7jpscF4lWLeYX6HsKl60F3ufpmljJ6NkPqbwkvbRRgv4qPpuriei1YlHLQvf7XQ0KyLUCmboi1rnLsovQibshUA1lrQLGzHxkeQFMDERP6Whg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by DM4PR11MB6189.namprd11.prod.outlook.com (2603:10b6:8:ae::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Thu, 16 Jun
 2022 20:30:35 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::8557:61f1:559d:586f]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::8557:61f1:559d:586f%6]) with mapi id 15.20.5353.014; Thu, 16 Jun 2022
 20:30:35 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Sven Anders <sven.anders@anduras.de>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] Bonding problem on Intel X710 hardware
Thread-Index: AQHYb0UdYdr2Hc3NqEG2QM/hswtJCa0zQnKAgARZ5oCAC+4KgIAD7uxggAWay4CABYlRAA==
Date: Thu, 16 Jun 2022 20:30:35 +0000
Message-ID: <SN6PR11MB3518CAAC30596FB69490B33DEBAC9@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
 <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
 <eb729924-7c59-23fa-4847-bff376a98d2a@anduras.de>
 <SN6PR11MB35187D9C1432AAB249FF8CCBEBA99@SN6PR11MB3518.namprd11.prod.outlook.com>
 <4cd7ea38-760d-23b9-5925-a9d1a0504286@anduras.de>
In-Reply-To: <4cd7ea38-760d-23b9-5925-a9d1a0504286@anduras.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f052cd60-e7cd-407e-6cf1-08da4fd71190
x-ms-traffictypediagnostic: DM4PR11MB6189:EE_
x-microsoft-antispam-prvs: <DM4PR11MB618913A1D6EFC00B7AC59A1BEBAC9@DM4PR11MB6189.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qv0havMeYPnJ4fjWCZfuvibC8HLLFv5hbhaLMxgiLqnX8iL0US3owZirLthhSKGWyNQQgqJex1uxAuHLms2d2V4K2kajWNkr3grpj1LbiU0kaCTbDTjqINymbWS4fjcsO/0mE5Dd2T4/ut3zrGot5kknzNy5m0UtCWIX2DdyunsM1EST+fnLrQ22YXFjk47QD4zaoWudif5wCZKE+cza06Au7+Y7Z9EgsCO9fBNKm/5u3PExtn5x/qR3BeZkKQM0+HhDyH18YlWfaqIR26tmypq17iM7DAg+aqWuv9d46lmgITq3KgwRnaMjLX5o/ak8T+yiVs9NSXLQ0gjI7e7DHs5e2jLQ6n3rdUzmBGWs5XzjB0UJEXKITQ9S3JbNoBIKzDxrHA3YiwDm4TE59emkFvNaZuwxIZflfAP2XMEopiick+7QQWwCcXB1YxkFXqBCs/BhnIeKtDOnkOrQM3T81qQDRkMquIRbSQSUf+6TlFl3rBPfNGvvw0o+fPitzFVSu0wvxhBO5245I/GrJlSUA2bTYQdA79/L/WLPpKVEHEeT97kcCLC3pmnmucSl3IkqT9FxJJcXYkf59KOT0mFZ6fW+oOPB8d6+BOrGT2qp3Ht5rr80DqfNLtBxq/tAbGy1+vJ1Fe3z4nEjQ7tfQTM3pnMcXrMqja5XGGw21NM95PzNySBpdKiYfS5V1FPIqXix/sgeW8dNNsbLJ4fmIwyrO/B7EV9yA9uoJWwro7jdV1nWx8k/6OQaY8ETpcAQiNJnwPVYJnHCsFoQUu3tsVT1qOz3MueQCwv2PaZipB9Bf0c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(66446008)(76116006)(33656002)(26005)(8676002)(55016003)(66556008)(64756008)(83380400001)(8936002)(5660300002)(316002)(966005)(38100700002)(53546011)(66946007)(82960400001)(122000001)(86362001)(9686003)(2906002)(71200400001)(6506007)(38070700005)(15974865002)(52536014)(66476007)(66574015)(7696005)(110136005)(186003)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RHdPUk5TMWNWVTVWbHZnUGs1VHAxNHFxWDZCQktWbHRJL3Z5eWpQSzRBenJu?=
 =?utf-8?B?SUtUYnNvN01QMkJzem9SVVB1QkZjenNmb1RVUmRnSW1OQ08yaU1xY01NTEUr?=
 =?utf-8?B?ekxlRk1remV2VHhUbkFSOFBtY2Q3dFEvL0c0TnlTdEh6M25YK2o2WUFkWjR5?=
 =?utf-8?B?SHlFNk5TMnZWZWpjeUFxNnU0cWM4aUZRQ2tCbStkeWp2cTlPQjZOMCtoV3o0?=
 =?utf-8?B?WXpzOVFWWHZDaHkvaStHYWxSUjdpUXJBUnp3MTRZNXd3aEU3aGFRS1UybjlZ?=
 =?utf-8?B?T2wrVVJTWW5LL3lCNTY1ejB2ZEVLR1F5bnAxaVoyZGEwSEhoUDZFUWs4ZVVm?=
 =?utf-8?B?Q0M1Q3ZybkVUNVFDUlJTa1owSmJUQzJZMTN1WWs2K1hJVS9seTRaSlJxZTlh?=
 =?utf-8?B?Z25aNmdkOWl5TWJjMzQvQy90cG5ldDdZTUNsR2dUME44azJhN0EyQndSS1Vx?=
 =?utf-8?B?dFBDajRmOENCNkFja2dXZHA3S0ZGZXYwOUhDeGw2UHVQR0IrRU9NY1kxd0dN?=
 =?utf-8?B?ZHNkd0Q0amlLQnNoMGhDSitNdFo1aVVoU3R3UVQxNjV3YWtxd05uSXZ5OSt4?=
 =?utf-8?B?djFFTVM2elZ5ZDlJZGxWZ1V3bzM3KzJxbWZlUUdrdDVlL2FIM1kzcjdBcGhJ?=
 =?utf-8?B?RGp4MzVEQVc4QXpPZHBkcnB0ZU04eENwTGpVSC9kOWl3Wlk0RlMrdW4rY1ZQ?=
 =?utf-8?B?YzNFOTlSMGJFZUsvQnVmWTBObTlCS09mM1BHaVJ2SzNBbkdZZUNsaHpZZWhX?=
 =?utf-8?B?Q3J5UFZZWXRlZ1F3S21iT3BDZ0ZhcHMvRElIYlB6bmluSkJlWHlVa2lZay9v?=
 =?utf-8?B?ZytpamprMFgwOUl1blM3YTR6bzNBdXYzK2NHeEdtN1ZPNHR1R1FhZmN3L3A1?=
 =?utf-8?B?Q1NwUVN0bmhHRmNmMWlMcUNQdmg2bXI3N0d5cXVHN3JPRW1wQzF0R2h2dWZS?=
 =?utf-8?B?ekFSUk53MnhGdmIzRS9FSmJTZjErOXA3cGpsZTBQQmF2ZzQxWDFUamxJQXhy?=
 =?utf-8?B?YXpBTjdHc0NtNDh6MjRoUGJnYXlXVllrN3dhNDJFUEhFbDk5YXpBNUwyTjZK?=
 =?utf-8?B?azdMTXd4N1hlZXRsMDJCbmdBZ3BTamxDQVFoNWsrcTlUQTRKT1kzMFFpVkpX?=
 =?utf-8?B?WEpVVHBwc2g4Ti93SlJqb0VyVEdVZzJFL1dwRno0ajRHb1BYRjBtY21mRXY5?=
 =?utf-8?B?MVJOTWV0d1N5VjliTzVFWFZreGJvblV1U1FMT1dFTDYxWGZReTRqRUFYZnRZ?=
 =?utf-8?B?ZXRYeXJVNXFTNnVEWjF4M2tKNVR5RWNCZUNITHhwenNFQVVzY1pQZ0ZISHBk?=
 =?utf-8?B?cVRDbUJBcjVPcEVoS2IvaHBLeTBIMHdkbVBhazFjTm9VMlRFS1RYS2tlVWpk?=
 =?utf-8?B?OWtlNlpvb1dqNCs2bHlxZnFndk91THpVdFdsZEVYd3pGY1ptRkJMZHJ0WU1r?=
 =?utf-8?B?bm5JNytTaUpXZ21GdG0xbTh0QkNCcUhEMVBGT2tHd0VES2VWeWZQSk50bjVO?=
 =?utf-8?B?TlBaNnR2blF2Y1JhK044ZEl5VzlkS1ZVY3M5Umt3cmI2SmxvOXNqc1BaaEND?=
 =?utf-8?B?VmpMM3AzWU9ySHBoc2pYRVl1dklaN0RibHJDOHZPc1pFMmY1dDFOWjh1anFv?=
 =?utf-8?B?dWpkRVAwa0lDK1JWYUd0SnZnNm11cG5uNDIyZmE0WmdlWm1ibzFtc0RNNDcw?=
 =?utf-8?B?bjJ4NytLSytpY25XanU3a3VXVy9Ra2tSQUpEdXhTVkJaWERaci94ODBFR0tE?=
 =?utf-8?B?Q3JzMldwVjhtMFVNcDk1QUt1MXl0NERqbTZsaFBTKzk3Yi91dzNsaTJYaURp?=
 =?utf-8?B?bDhFY1VQT2tSZTJqRnFmM0dWSVZyeXZQdG1XK2p5YVpuZ1pVS21hS2dCTTBl?=
 =?utf-8?B?NExiTVJpd0w4V2xYTlVRQlZVcCtxYngrM3NGanpXYmlkWVBmK0dieFl1VllI?=
 =?utf-8?B?Zy8vUzgwWlNSRkpSdjU4LzJDUTM2MmdON3M1aWlac2pzUSs2bkMzTUNCa2dC?=
 =?utf-8?B?SzRLTkYrT3A1Y25jdXZQNWp3a0drakFXOUp2T0ZkM2ZXQlNGTk9WS3R1ZWVt?=
 =?utf-8?B?Wm5sTi9TTzRNckgxL3FRZGR4QUZVc1hERmVTalA5Y24rQkhyNS9EdEwrbDRI?=
 =?utf-8?B?SzNEaDBkRkM2bmYxdEVNdjBpQzMvVkJBa2VjOHNsQlplMnFCb21TM3FvYnZJ?=
 =?utf-8?B?Uy82T1JOMjdjUkoxazlEZ1lHZkhhTmF5REZpWUlLUkpoVDlabXdXTGJlQVEx?=
 =?utf-8?B?SWV2SHBaZEdZaXJ5U0QxRnZUT3I5WE90YnlRTW1GR1VZUXg5VWNyQVA5K1Zt?=
 =?utf-8?B?OEVJTDFyN3ZRUHNyTTZySmp4eFo3OHIrYlVTZ09qUEdMcGkwbEs4QT09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f052cd60-e7cd-407e-6cf1-08da4fd71190
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2022 20:30:35.7430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4K5SPRR6VsfRHkC+pnMR8cDCRpuXuzrmEIfLY4Lul8l5P/ffDxNIKjt/Vl7m7ZAy5VMokPK0KEaTAjj10PiY9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6189
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Bonding problem on Intel X710 hardware
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogU3ZlbiBBbmRlcnMgPHN2ZW4uYW5k
ZXJzQGFuZHVyYXMuZGU+DQo+U2VudDogTW9uZGF5LCBKdW5lIDEzLCAyMDIyIDEyOjQ0IEFNDQo+
VG86IFN3aXR6ZXIsIERhdmlkIDxkYXZpZC5zd2l0emVyQGludGVsLmNvbT47IGludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnDQo+U3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIEJvbmRpbmcg
cHJvYmxlbSBvbiBJbnRlbCBYNzEwIGhhcmR3YXJlDQo+DQo+SGFsbG8gRGF2ZSwNCkhpIFN2ZW4s
DQoNCj4NCj50aGFua3MgZm9yIHlvdXIgYW5zd2VyLg0KWW91J3JlIHZlcnkgd2VsY29tZSENCg0K
Pg0KPkkgdHJpZWQgdG8gZGlzYWJsZSB0aGUgTExEUCBlbmdpbmUsIGFzIHN1Z2dlc3RlZCwgYnV0
IGl0IGRpZCBub3QgY2hhbmdlDQo+YW55dGhpbmcuDQo+DQo+VG8gcmVtYXJrOiBJIGRvIG5vdCB1
c2UgTEFDUCwgSSdtIHRyeWluZyB0byB1c2UgIkFkYXB0aXZlIExvYWQgQmFsYW5jaW5nIg0KPndo
aWNoIHdvcmtzIHdpdGggQVJQIG5lZ290aWF0aW9uLg0KPklmIEknbSB1c2luZyB0aGUgImFjdGl2
ZS1iYWNrdXAiIGJvbmRpbmcgbW9kZSwgaXQgYWxsIHdvcmtzIGZpbmUuIEJ1dCB0aGlzIGlzDQo+
bmVhcmx5IHRoZSBzYW1lIGFzIHVzaW5nIG9ubHkgb25lIGludGVyZmFjZSwgd2hpY2ggd29ya3Mg
dG9vLg0KPg0KPkluIG15IHRlc3Qgc2V0dXAsIEknbSB1c2luZyB0d28gIkhQRSAyNTMwLTQ4Ry1Q
b0UrIiBzd2l0Y2hlcw0KPihZQS4xNi4xMC4wMDAyKSwgZWFjaCBpcyBjb25uZWN0ZWQgd2l0aCBv
bmUgY2FibGUgdG8gdGhlIG5ldHdvcmsgY2FyZC4NCj5NeSB0ZXN0IGlzIHZlcnkgc2ltcGxlOg0K
PkFmdGVyIGNvbmZpZ3VyaW5nIHRoZSBib25kLCBJIHVzZWQgYSBjb250aW5vdXMgcGluZyB0byB0
aGUgTGludXggc2VydmVyIGFuZCBJDQo+c2VlIG1hbnkgZHJvcHMuIElmIEkgdG9nZ2xlIHRoZSAi
bnR1cGxlcyBzdXBwb3J0IiwgdGhlIGRyb3BzIGRpc2FwcGVhci4NCj4NCj5DYW4gd2UgY29tcGFy
ZSB0aGUgc2V0dGluZ3Mgb2YgeW91ciBzZXR1cCB3aXRoIG1pbmU/IE1heWJlIHlvdSBtaXNzZWQN
Cj5zb21ldGhpbmcuLi4NCkp1c3QgcmVhbGl6ZWQgd2UgbWlzc2VkIHRoZSAybmQgc3dpdGNoKHdl
J3JlIHdvcmtpbmcgb24gc2V0dGluZyB0aGF0IHVwIG5vdykNCg0KPkhvdyBjYW4gSSBhc3Npc3Qg
ZnVydGhlcj8NCkNhbiB5b3UgZW5hYmxlIHNvdXJjZSBwcnVuaW5nIG9uIHRoZSBwb3J0cyB0aGF0
IGFyZSBwYXJ0IG9mIHlvdXIgYm9uZD8gIFRoZXJlIG1pZ2h0IGJlIHNvbWUgY29uZnVzaW9uIGlu
IHRoZSBmdy9zdyB3aXRoIHRoZSB0d28gaW50ZXJmYWNlcyBhbmQgcGFja2V0cyBhcmUgZ2V0dGlu
ZyBpZ25vcmVkOg0KZXRodG9vbCAtLXNldC1wcml2LWZsYWdzIDxpbnRlcmZhY2UgbmFtZT4gZGlz
YWJsZS1zb3VyY2UtcHJ1bmluZyBvbg0KDQpMZXQgbWUga25vdyBpZiB0aGF0IGhlbHBzLiAgSXQg
c291bmRzIGxpa2Ugd2UnbGwgYmUgZ2V0dGluZyBvdXIgdHdvIHN3aXRjaGVzIGxhdGVyIHRvZGF5
IHNvIHdlIGNhbiBtYWtlIHN1cmUgd2UgaGF2ZSBvdXIgZW52aXJvbm1lbnQgbWF0Y2hpbmcgeW91
cnMuDQoNCkhhdmUgYSBncmVhdCBkYXkhDQpEYXZlDQoNCg0KPg0KPlJlZ2FyZHMNCj4gIFN2ZW4N
Cj4NCj5BbSAxMS4wNi4yMiB1bSAwMzoyNyBzY2hyaWViIFN3aXR6ZXIsIERhdmlkOg0KPj4+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+Pj4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRl
bC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4+PiBPZiBTdmVuIEFu
ZGVycw0KPj4+IFNlbnQ6IE1vbmRheSwgSnVuZSA2LCAyMDIyIDExOjA1IFBNDQo+Pj4gVG86IGlu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnDQo+Pj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1s
YW5dIEJvbmRpbmcgcHJvYmxlbSBvbiBJbnRlbCBYNzEwIGhhcmR3YXJlDQo+Pj4NCj4+PiBIZWxs
byENCj4+IEhpIFN2ZW4hICBNeSBhcG9sb2dpZXMgb24gdGFraW5nIHNvIGxvbmcgdG8gcmVwbHku
DQo+Pj4NCj4+PiBXYXMgYW55Ym9keSBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgcHJvYmxlbT8NCj4+
IEkgaGF2ZW4ndCBiZWVuIGFibGUgdG8gcmVwcm9kdWNlIHlvdXIgaXNzdWUgeWV0LCBidXQgd2l0
aCB5b3VyDQo+PiBkZXNjcmlwdGlvbiBpdCBzb3VuZHMgdGhhdCB0aGUgaXNzdWUgY291bGQgYmUg
cmVsYXRlZCB0byB0aGUgWDcxMA0KPj4gaGFyZHdhcmUgTExEUCBlbmdpbmUgY29uc3VtaW5nIHRo
ZSBMTERQIHBhY2tldHMuICBUbyBkaXNhYmxlIHRoZQ0KPmhhcmR3YXJlIGVuZ2luZSwgdXNlciB0
aGUgZm9sbG93aW5nIGNvbW1hbmQgb24gZWFjaCBvZiB0aGUgcG9ydHMgdGhhdA0KPnlvdSdyZSB1
c2luZyBpbiB0aGUgYm9uZDoNCj4gPg0KPj4gZXRodG9vbCAtLXNldC1wcml2LWZsYWdzIDxpbnRl
cmZhY2UgbmFtZT4gZGlzYWJsZS1mdy1sbGRwIG9uDQo+Pg0KPj4gVGhlbiB0aGUgTExEUCBwYWNr
ZXRzIHRoYXQgdGhlIGJvbmRpbmcgbW9kdWxlcyByZWxpZXMgb24gd2lsbCBiZSBmb3J3YXJkZWQN
Cj5ieSB0aGUgaGFyZHdhcmUgdG8gdGhlIE9TIG5ldHdvcmsgc3RhY2suDQo+Pg0KPj4gSSBob3Bl
IHlvdSBoYXZlIGEgZ3JlYXQgd2Vla2VuZCENCj4+IERhdmUNCj4+DQo+Pj4gRG8geW91IG5lZWQg
YXNzaXN0YW5jZSBvciBmdXJ0aGVyIGluZm9ybWF0aW9uPw0KPj4+DQo+Pj4gUmVnYXJkcw0KPj4+
ICAgU3Zlbg0KPj4+DQo+Pj4gQW0gMzAuMDUuMjIgdW0gMTc6NTMgc2NocmllYiBTdmVuIEFuZGVy
czoNCj4+Pj4+Pj4gSGVsbG8hDQo+Pj4+Pj4+DQo+Pj4+Pj4+IFRoaXMgaXMgYSBmb2xsb3cgdXAg
dG8gbXkgcXVlc3Rpb24uIEkgZGlkIG5vdCBoZWFyIGFueXRoaW5nIHNvDQo+Pj4+Pj4+IGZhciwg
YnV0IEkgdHJpZWQgdG8gZmluZCBzb21lIHNvbWUgaW5mb3JtYXRpb24gbWVhbndoaWxlLg0KPj4+
Pj4+Pg0KPj4+Pj4+PiBJJ3ZlIGdvdCBhIGd1ZXNzIGZyb20gc29tZWJvZHksIHRoYXQgdGhlIGVy
cm9yIG1lc3NhZ2UgIkVycm9yDQo+Pj4+Pj4+IEk0MEVfQVFfUkNfRUlOVkFMIGFkZGluZyBSWCBm
aWx0ZXJzIG9uIFBGLCBwcm9taXNjdW91cyBtb2RlDQo+Pj4+Pj4+IGZvcmNlZCBvbiIgbWF5YmUg
dHJpZ2dlcmVkLCBiZWNhdXNlIEknbSBoaXR0aW5nIGEgbGltaXQgaGVyZS4NCj4+Pj4+DQo+Pj4+
PiBZZXMsIHR5cGljYWxseSB0aGlzIGlzIGEgcmVzcG9uc2UgZnJvbSBvdXIgZmlybXdhcmUgdGhh
dCBhIHRhYmxlIGlzDQo+Pj4+PiBmdWxsIGluIGhhcmR3YXJlLCBhbmQgSSdtIGd1ZXNzaW5nIHRo
YXQgeW91IG1pZ2h0IGJlIHJ1bm5pbmcgaW50byBhDQo+Pj4+PiBmaWx0ZXINCj4+PiBsaW1pdCBk
dWUgdG8gdXNpbmcgdmxhbnM/DQo+Pj4+DQo+Pj4+IFRoYXQncyB3aGF0IEkgc3VzcGVjdCwgYnV0
IEkgZGlkIGtub3cgdGhlIGhhcmR3YXJlIGFuZCBmaXJtd2FyZQ0KPj4+PiBpbnN1ZmZpY2llbnRs
eSB0byBiZSBzdXJlLg0KPj4+PiBXaGF0IEknbSB3b25kZXJpbmcgaXM6IFdoeSB0aGlzIGlzIG9u
bHkgdHJpZ2dlcmVkIGlmIEkgdG9nZ2xlIHRoZQ0KPj4+PiAibnR1cGxlcw0KPj4+IHN1cHBvcnQi
DQo+Pj4+IGFuZCBub3QgZWFybGllciB3aGVuIHNldHRpbmcgdXAgdGhlIGludGVyZmFjZT8NCj4+
Pj4NCj4+Pj4+Pj4gRGF0YSBwYWNrZXRzIGFyZSBvbmx5IHJlY2VpdmVkIHNwb3JhZGljYWxseS4g
SWYgSSBydW4gdGhlIHNhbWUNCj4+Pj4+Pj4gdGVzdCB3aXRoIG9ubHkgb25lIHNsYXZlIHBvcnQs
IGl0IHdvcmtzIHdpdGhvdXQgcHJvYmxlbXMuDQo+Pj4+Pg0KPj4+Pj4gQW5kIHRoZXJlIGFyZSBu
byBjb3VudGVycyBnb2luZyB1cCBpbiBldGh0b29sIC1TIHdoZW4geW91DQo+Pj4+PiByZWNlaXZl
L2Ryb3ANCj4+PiBwYWNrZXRzPw0KPj4+Pg0KPj4+PiBJJ20gbm90IHN1cmUgaGVyZS4gSSB0cmll
ZCB0byBpbnNwZWN0IHRoZSBjb3VudGVycyBhbmQgaXQgc2VlbXMgdGhhdA0KPj4+PiB0aGUgY291
bnRlcnMgYXJlIGdvaW5nIHVwIHNsb3dlciBpbiB0aGlzIGNhc2UsIGJ1dCBpdCdzIGRpZmZpY3Vs
dCB0bw0KPj4+PiBzYXksIGJlY2F1c2UgdGhlcmUgaXMgc29tZSAibm9pc2UiIG9uIHRoZSBsaW5l
IGFuZCBJIGRvIG5vdCBoYXZlDQo+Pj4+IGRpcmVjdCBhY2Nlc3MgdG8gdGhlIGhhcmR3YXJlIGF0
IHRoZSBtb21lbnQuDQo+Pj4+DQo+Pj4+IElmIHlvdSBuZWVkIGFueSBmdXJ0aGVyIGluZm9ybWF0
aW9uIG9yIHRlc3RzLCBqdXN0IGNvbnRhY3QgbWUuDQo+Pj4NCj4+PiBSZWdhcmRzDQo+Pj4gICDC
oCBTdmVuIEFuZGVycw0KPj4+IC0tDQo+Pj4gICBTdmVuIEFuZGVycyAgICAgICAgICAgICAgICAg
ICgpIFVURi04IFJpYmJvbiBDYW1wYWlnbg0KPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgL1wgU3VwcG9ydCBwbGFpbiB0ZXh0IGUtbWFpbA0KPj4+
ICAgQU5EVVJBUyBpbnRyYW5ldCBzZWN1cml0eSBBRw0KPj4+ICAgTWVzc2VzdHJhc3NlIDMgLSA5
NDAzNiBQYXNzYXUgLSBHZXJtYW55DQo+Pj4gICBXZWI6IHd3dy5hbmR1cmFzLmRlIC0gVGVsOiAr
NDkgKDApODUxLTQgOTAgNTAtMCAtIEZheDogKzQ5ICgwKTg1MS00DQo+Pj4gOTAgNTAtNTUNCj4+
Pg0KPj4+IFRob3NlIHdobyB3b3VsZCBnaXZlIHVwIGVzc2VudGlhbCBMaWJlcnR5LCB0byBwdXJj
aGFzZSBhIGxpdHRsZQ0KPj4+IHRlbXBvcmFyeSBTYWZldHksIGRlc2VydmUgbmVpdGhlciBMaWJl
cnR5IG5vciBTYWZldHkuDQo+Pj4gICAgLSBCZW5qYW1pbiBGcmFua2xpbg0KPj4+DQo+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+PiBJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0DQo+Pj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcNCj4+
PiBodHRwczovL2V1LWNlbnRyYWwtDQo+MS5wcm90ZWN0aW9uLnNvcGhvcy5jb20/ZD1vc3Vvc2wu
b3JnJnU9YUhSMGNITTZMeTkNCj4+Pg0KPnNhWE4wY3k1dmMzVnZjMnd1YjNKbkwyMWhhV3h0WVc0
dmJHbHpkR2x1Wm04dmFXNTBaV3d0ZDJseVpXUXRiDQo+R0Z1Jmk9Tg0KPj4+DQo+V1JrWlRjNU1q
UXpNak0yWXpFeE5qZzBaVEk0TWpNNCZ0PVdIWlVUVWRqTlZreVNUVlZjV1ZqVUVwVlQNCj5HbGth
WFYzTmt4DQo+Pj4NCj5WUW0xTFNHZFVPWE14ZVZWRVExcHlPRDA9Jmg9NGVkNWNhNDNiMTQxNDdl
YjhhZTQ4OTFjZjJhNTRmNzANCj4NCj4NCj5NaXQgZnJldW5kbGljaGVuIEdyw7zDn2VuDQo+ICBT
dmVuIEFuZGVycw0KPg0KPi0tDQo+ICBTdmVuIEFuZGVycyA8YW5kZXJzQGFuZHVyYXMuZGU+ICAg
ICAgICAgICAgICAgICAoKSBVVEYtOCBSaWJib24gQ2FtcGFpZ24NCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC9cIFN1cHBvcnQgcGxhaW4gdGV4dCBl
LW1haWwNCj4gIEFORFVSQVMgaW50cmFuZXQgc2VjdXJpdHkgQUcNCj4gIE1lc3Nlc3RyYcOfZSAz
IC0gOTQwMzYgUGFzc2F1IC0gR2VybWFueQ0KPiAgV2ViOiB3d3cuYW5kdXJhcy5kZSAtIFRlbDog
KzQ5ICgwKTg1MS00IDkwIDUwLTANCj4NCj5SZWNodHNmb3JtOiBBa3RpZW5nZXNlbGxzY2hhZnQg
LSBTaXR6OiBQYXNzYXUgLSBBbXRzZ2VyaWNodDogUGFzc2F1IEhSQiA2MDMyDQo+Vm9yc3RhbmQ6
IE1hcmN1cyBKdW5rZXINCj5Wb3JzaXR6ZW5kZXIgZGVzIEF1ZnNpY2h0c3JhdHM6IEFuZHJlYXMg
V2FnbmVyDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
