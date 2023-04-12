Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D83396E2712
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 17:32:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FD8683AF6;
	Fri, 14 Apr 2023 15:32:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FD8683AF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681486377;
	bh=4ZU+L3xyUUYRmZ+MbWPYmtUNo2YWYODE5trX4gy8ePo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B00PSqnPSFLAjWdtjU0e/2654LT3drzfeaQ8Rw0Syl1WczObkjy2nq3hxBd+97hX2
	 +8mopF5+AYAFfPaLDgyFsVbPLjqgA7YKKJ6f6plxe9+nDF9bSGegS/Nl/6KXUB6ib5
	 gLqPW4xjN8YDZNql+8KTNralnAqrWB1MpgdnPYqE66qRoOadg60GXTNaDYAcZu6jdg
	 uU662IVmZfc5A2auqY8rTnSpo9/kEiUzCk2JZf/dynMVr8sTwwzR1Z7GHsX6zsOe49
	 v01GnvU1nL96o1SbBNVFcHqdiiCTnFqhnSe92basEvp5uyQ3BYxTOz+1KgnT7GlTrH
	 z9i+Gf2Z44+cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IWS_ZXhxb5NS; Fri, 14 Apr 2023 15:32:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B01D78151E;
	Fri, 14 Apr 2023 15:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01D78151E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA48E1C2E09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 15:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAB1683BF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 15:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAB1683BF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 94-eTKYPtR8z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 15:38:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B3A383BE6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B3A383BE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 15:38:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="430222231"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="430222231"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 08:37:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="691583518"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="691583518"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 12 Apr 2023 08:37:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 08:37:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 08:37:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 08:37:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 08:37:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NziZEur7eTs5jZ65zPmLg2QhKDuYh39OvwDw3IdQ7ay4br1K7IMNX6+6J9mhKSoU6p4mh2AqBblgmYm9iUjFBPG1+twWcrYrG48aOczWfkbvGOPEm/j6g3l4fwfGpzii6SDhzsvfCg1e2ofJyeN2xMFB7yhcpx98QMuf+zZglMd7mxkSHJpyTk5OIziwwI4oPuS9ixrh8Jl8dlY1CCRURa6TE/HmBtQtrZxG4+6spwMF0uYyfOwNUiP9mhLP3tH7nPLLQQ/fdqhSPEeu+Z7QmrEvuTCMV8cc1996eKj9qa1JgKlDDYnprBYUqMBPOUlkD6UDwON/Hy6PPXNYk6yFtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n13EKsWqwGAPJm3XviywqKy5Tzjjx2c6gpeK+30ld3k=;
 b=mt6bVgMqa1lg/uR7WSRnx0q5yyz1PMdHmft7uSPeYxBS880wKjXSUES2xaQva2+wpffNebLGH+yVgCxPpzMbxOsJfajzLNvrTB0xNDHK28F+Z32cE2GkMGyuZsC7w+iV09yIPRT11YAoFy2lgQjtcJ22QOji6A1s2lcyaKj2CfOhxhRZewHWMHTiK4Cg8S320jeIb90cU3nXvslfOWKnpMT9dVeZgUIb9A3FnCJ9UpE0gEsJdHsrxPFxq53Pdw6ZO+eYJDlswHuErwf1G0pOwtOL7gi1QplszfoD0me0+opXW1sdk8Bc1sPDXCwsVOKo5VfqSIGtPVb8T45voKi5lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by SN7PR11MB7490.namprd11.prod.outlook.com (2603:10b6:806:346::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Wed, 12 Apr
 2023 15:37:01 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6277.036; Wed, 12 Apr 2023
 15:37:01 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Brouer, Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>
Thread-Topic: [PATCH bpf-next V3 5/6] igc: add XDP hints kfuncs for RX
 timestamp
Thread-Index: AQHZXNeuS7IymFh/rkioE9W/4bejnq8nrPuggABBkLA=
Date: Wed, 12 Apr 2023 15:37:01 +0000
Message-ID: <PH0PR11MB5830D7F46EE359FF9EF59CEAD89B9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <167950085059.2796265.16405349421776056766.stgit@firesoul>
 <167950089764.2796265.5969267586331535957.stgit@firesoul>
 <PH0PR11MB5830A6488CD7AB8AB0C89A42D89B9@PH0PR11MB5830.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5830A6488CD7AB8AB0C89A42D89B9@PH0PR11MB5830.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|SN7PR11MB7490:EE_
x-ms-office365-filtering-correlation-id: f1d6fbb9-6413-4092-36c0-08db3b6bc255
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UtDHia7cutSToiFxsRLmCW5wiyK+Uor0hP4X9YG/PvPALKJ9VzsMN3BeVbPE5DFAExPWv5zZY+nRhK9v/vxAdZ5OJC3iDQOKoYynY52YcmlBSXz4DA3JVEUOfpx7mFIpnoNQecKkj0DwnAZMt++XBPGVBsKo+SmNXQuC4oEx/55M6GSIhIDDRHQBKpiyZCmityUexFJXOOKGB+P26cBogfv2/hjlX+es9JzEGsuvhtvNVLGuPwgpIsE2T6FFw+wsVQ3mlV7AvTBUebkgo64ss0KHM+7PNJXKxJAxX7M5f7Mxfd+JdZxEaEtaNVzKexDDzDepB+vD6KddhGBOSpoeUx0bKYcTrWgua02MJq1Lt2h89cq/j1TPYtgMQzpacCkE+DrDpGczVEsVYZhXijn/US8f9E7kVJiedtEiEQ8slZEba4R12kGFnsDf/xpwNO3ysGWfRNu1BKaa95sjXG4HPUU6F66ALWC3Cfg0SmAtDYyFyjwNsNE/mCrywSs5YsS8A3AdPhUCnZCTTMqU1mmV3c+dezGuiXiV/tQY/P76FjgEWgrvizWTmRKBR50g3GExKevns1iy1S6gCx89IATouJSuIOYKKxPLaXeNYu9QwmyG964xe0u2srp9nOwGhY2Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(39860400002)(366004)(396003)(136003)(451199021)(33656002)(86362001)(66946007)(71200400001)(76116006)(41300700001)(110136005)(7696005)(64756008)(66556008)(54906003)(316002)(8676002)(66446008)(66476007)(4326008)(478600001)(5660300002)(7416002)(8936002)(55016003)(38100700002)(82960400001)(38070700005)(2906002)(122000001)(2940100002)(186003)(6506007)(26005)(55236004)(9686003)(53546011)(52536014)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDBCdnlmbHJCblZHZ1FiaXBZVGFqaHE4WnBnYzRkVWMvTmNPQ1JzUVdrY0Fu?=
 =?utf-8?B?YkJsaURkWm5jMys5bE5OeVpnM0V5NndRcDV3VVB5ZWszRWRiNGVkMElHaFRU?=
 =?utf-8?B?WmJNZkNRVjVFS2pWT0duSDFaR1VLcGRhcVVVQWVHeWdSVE4xRjRKa0VIYlJC?=
 =?utf-8?B?clJnL2c1OEFZWDhuSlQ4LzVRZWNFNC9xdDNuS2UvMmxJdDlrU0M3OVgwSXdZ?=
 =?utf-8?B?OFZ3L3U0dzl6eWJBMWo5eUFFeDRsZSt4UGtydVFXT3RxOHlNTzRZTnhQd3lF?=
 =?utf-8?B?anFiaVhlWElwQVdFZkdlMGp6c0YvbjErbXYwemFyQUViMHRmd2E0Q2ZVeWNv?=
 =?utf-8?B?d2dVeGdRMVY2QUk1aDVBaitjNHVubkZlL3JlbjN1RXZHa2ZGQjlOaXdHVkpV?=
 =?utf-8?B?djVySDJKbGZocU1oRTFuRFNKQkJiWFpNdDZML1ExRm1QN1NSMWo1YTlFSkNr?=
 =?utf-8?B?M3ZOZDJ5OUF1ZzlvWGw1YnA5ZHc3YU1rY00rTm9HdHNiQ3NJOGFHTXRwaHlR?=
 =?utf-8?B?OXk2Wmw0bStPSVZqL25XYXRFai9pbVZWczIvaFFYWThUektKNVRKMEFwYlFL?=
 =?utf-8?B?YXE2SGQ0MkZoQUJtZVVJejFRdkgvMWw2dElySWpwaXJoUkJUU0duS2dRKyta?=
 =?utf-8?B?ZXhyaWNveUFLc2d6Y21SS2VOaDdwUVJxeFhvM241Nkcvd3pwOUFqUnpxZEdB?=
 =?utf-8?B?RTgzM2xyYTVQWGhNbUg4Y2pyZk8yaXVycHVQYjJnWkE5dmREYlIrMHZnT2N3?=
 =?utf-8?B?Z0hsZlZiT1loN3ExMnlwUVg1QTVkNTRDc25KYTE3YUhWZWl0dm9sd3dOc0hq?=
 =?utf-8?B?akNkaERxbUprazJJa2JSdzE0QWlIWVp4VEh6SHFKTnVMaFBPdVVWcnplcis3?=
 =?utf-8?B?WUE5N0RXK1cvSUJUNld5aUtEd1FSZmlRcjIwVURzbVJGbllySXF5dm9iUU4v?=
 =?utf-8?B?OFN5ZnRQdmdGaUpYZ0NiOHV0ekhIY0VlTjhhK3B2V3pIZjlmOGU4RDRhMURq?=
 =?utf-8?B?c3NSMFpzbVhLOHEycEVucDQ5Vk9Ud25XOHRoZVR0YnZGWVF6Y0JRcTZqVFNv?=
 =?utf-8?B?N3FXVVduQm9GZk1iNEJsREpMdS9KUnIvOU54aURpay9Bb2FtNnV5UmhlQjd5?=
 =?utf-8?B?TnNsRXB4UU5na3g0WlBMR1VVM1c1THd1L0MzeXpUUXRIVHQ3UERoWmt6UUlH?=
 =?utf-8?B?N0FlMUQyWnlIN2dnUWFMVzUweVp6Qm9oNFhKV1gzazdjVG1kWktyV3lyZUpK?=
 =?utf-8?B?dStTT0t1YXJudTV4WTNRMDZ3NlV0ZzlhcDFvRWc3OG9HRDZWdGFCOW92MWEw?=
 =?utf-8?B?azVvcDROck9abkpmTnIydWJFVEpNNDlmM1JkMkpFeStnWFFYM081THk2UENv?=
 =?utf-8?B?eUJ5dTRCUkVBV3pQbWpiZnROUzNQOS9tV1BMRmhGdCszems1QTk4WVVFeG9W?=
 =?utf-8?B?ZG04OXp1ZkErRE1IWUpZUllmTVRGSVhWWHVib1hKdlh2ZGorOHUvV2hpaC9n?=
 =?utf-8?B?Q1R0d24yRGl1RlRET1k2cGp4dnFVVGtKYXBTNUtZeUZMUklscER2VC9EWW5V?=
 =?utf-8?B?THZLT2JUTi9XYU9PS0FyOHJPMDllOC9iUjcrSFhvSUxQVmppUERvRHBQUENZ?=
 =?utf-8?B?YWtqdTRPL0xqVFRIL3BTM01nYkxXT0ZGN1hJTXhUOXp4MDY3SWltTHFEeTd6?=
 =?utf-8?B?eGE2QnF6eHBwZjl2VUFGanRoMHZJVGYyQTJybEp3SWNZZEEyMHF6Q2t6VDR0?=
 =?utf-8?B?VitRTFlqMU5vbWJBK2RjY09rdkVzbzVyUkwwKyt2Y3Y3bDFzWUpsZUVCbTAz?=
 =?utf-8?B?UFJsN0w2UTU4UU9TUHBqbW8xQzJWNlI4aTNRejF0VHFUdm9vdUhSbXhUbzht?=
 =?utf-8?B?ZFV4OHg1S1NsWHRpMXg0VnhNL1hiVFluNjRrNHRxOE9xRFZPUk1oMExHM0RK?=
 =?utf-8?B?UkgyREptQnd0aExIRVliNFZQZ0VnVHQ4ZmtJaHNkZnZRWWxzZTlYZFEzdmQz?=
 =?utf-8?B?V0dsaW1zTnJ4dVNYblVtb2dDbnh4RzI0Nk1mQy9XclB5ZnpKUTJSNG9DVmRl?=
 =?utf-8?B?VHZUeWFEaHE1YVYrM29iM1Q0NjliRWh4UGI1a3hTWjAwWWFKdy9SeDVMUk1J?=
 =?utf-8?Q?AY7GMs2+UrxxQ7OSJ8pL4YF6a?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1d6fbb9-6413-4092-36c0-08db3b6bc255
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 15:37:01.0946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wzbvfBFmcRzhOMe/QraB4Fli59d4UdFIPjdUXNRrBKnWUFVFtD7mvg7m6a144wDUnWz5pTD+9m5GmG54tWAdRCw5TMoc28uZlSTd75glJBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7490
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 14 Apr 2023 15:32:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681313887; x=1712849887;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n13EKsWqwGAPJm3XviywqKy5Tzjjx2c6gpeK+30ld3k=;
 b=GPrP03w82mS3HP0IS5+4YOzJoBQnC/wzRBZwoaP+JwATRyW+6QU8DkQ2
 mmsgk5HF3Tlx+QuQfzWgVtQxP1b+38G4/hkt0wVBKGSxfIEuJFbgkgRuo
 RaZSF8KR2TtAtf3wHTKvhqk7kMaantT8LZdkmIaEBeBPq5jVrm4xwEl0h
 kXMUm9nXgEypAc4OszDgobT7akmn+Tcmhl4LT5t9sMlm+dgBzKFbH4m9s
 gQEnat66/sPnOsM/XpTi2P9rVW1Tf/QywAm//tl09cFx8IPhBW/h/flPt
 Zkd1ehAfvDbYFBQe6eQPwRbs/U5W0U6CrufM4P/pMu7sDXlqt3086KcAo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GPrP03w8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V3 5/6] igc: add XDP hints
 kfuncs for RX timestamp
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Stanislav Fomichev <sdf@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Brouer, Jesper" <brouer@redhat.com>,
 "Ong, Boon Leong" <boon.leong.ong@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wednesday, April 12, 2023 7:41 PM, Song Yoong Siang wrote:
>On Thursday, March 23, 2023 12:02 AM , Jesper Dangaard Brouer
><brouer@redhat.com> wrote:
>>The NIC hardware RX timestamping mechanism adds an optional tailored
>>header before the MAC header containing packet reception time. Optional
>>depending on RX descriptor TSIP status bit (IGC_RXDADV_STAT_TSIP). In
>>case this bit is set driver does offset adjustments to packet data start and
>extracts the timestamp.
>>
>>The timestamp need to be extracted before invoking the XDP bpf_prog,
>>because this area just before the packet is also accessible by XDP via
>>data_meta context pointer (and helper bpf_xdp_adjust_meta). Thus, an
>>XDP bpf_prog can potentially overwrite this and corrupt data that we
>>want to extract with the new kfunc for reading the timestamp.
>>
>>Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>

Tested-by: Song Yoong Siang <yoong.siang.song@intel.com>

Tested Rx HWTS metadata on I226-LM (rev 04) NIC.
Below are the detail of test steps and result.

1. Run xdp_hw_metadata tool.
   @DUT: sudo ./xdp_hw_metadata eth0

2. Enable Rx HWTS for all incoming packets. Note: This step should not needed, so
   it should be a HWTS enablement bug on igc driver. I will take a look on it.
   @DUT: sudo hwstamp_ctl -i eth0 -r 1

3. Set the ptp clock time from the system time using testptp tool.
   @DUT: sudo ./testptp -d /dev/ptp0 -s

4. Send UDP packet with 9091 port from link partner immediately after step 3.
   @LinkPartner: echo -n xdp | nc -u -q1 <Destination IPv4 addr> 9091

Result:
   xsk_ring_cons__peek: 1
   0x559288636880: rx_desc[2]->addr=100000000202000 addr=202100 comp_addr=202000
   rx_hash: 0x0E550050
   rx_timestamp:  1677762906850259640 (sec:1677762906.8503)
   XDP RX-time:   1677762906850374981 (sec:1677762906.8504) delta sec:0.0001 (115.341 usec)
   AF_XDP time:   1677762906850396571 (sec:1677762906.8504) delta sec:0.0000 (21.590 usec)
   0x559288636880: complete idx=514 addr=202000

>>---
>> drivers/net/ethernet/intel/igc/igc.h      |    1 +
>> drivers/net/ethernet/intel/igc/igc_main.c |   20 ++++++++++++++++++++
>> 2 files changed, 21 insertions(+)
>>
>>diff --git a/drivers/net/ethernet/intel/igc/igc.h
>>b/drivers/net/ethernet/intel/igc/igc.h
>>index bc67a52e47e8..29941734f1a1 100644
>>--- a/drivers/net/ethernet/intel/igc/igc.h
>>+++ b/drivers/net/ethernet/intel/igc/igc.h
>>@@ -503,6 +503,7 @@ struct igc_rx_buffer {  struct igc_xdp_buff {
>> 	struct xdp_buff xdp;
>> 	union igc_adv_rx_desc *rx_desc;
>>+	ktime_t rx_ts; /* data indication bit IGC_RXDADV_STAT_TSIP */
>> };
>>
>> struct igc_q_vector {
>>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>>b/drivers/net/ethernet/intel/igc/igc_main.c
>>index a78d7e6bcfd6..f66285c85444 100644
>>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>@@ -2539,6 +2539,7 @@ static int igc_clean_rx_irq(struct igc_q_vector
>>*q_vector, const int budget)
>> 		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
>> 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
>> 							pktbuf);
>>+			ctx.rx_ts = timestamp;
>> 			pkt_offset = IGC_TS_HDR_LEN;
>> 			size -= IGC_TS_HDR_LEN;
>> 		}
>>@@ -2727,6 +2728,7 @@ static int igc_clean_rx_irq_zc(struct
>>igc_q_vector *q_vector, const int budget)
>> 		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
>> 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
>> 							bi->xdp->data);
>>+			ctx->rx_ts = timestamp;
>>
>> 			bi->xdp->data += IGC_TS_HDR_LEN;
>>
>>@@ -6481,6 +6483,23 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>> 	return value;
>> }
>>
>>+static int igc_xdp_rx_timestamp(const struct xdp_md *_ctx, u64
>>+*timestamp) {
>>+	const struct igc_xdp_buff *ctx = (void *)_ctx;
>>+
>>+	if (igc_test_staterr(ctx->rx_desc, IGC_RXDADV_STAT_TSIP)) {
>>+		*timestamp = ctx->rx_ts;
>>+
>>+		return 0;
>>+	}
>>+
>>+	return -ENODATA;
>>+}
>>+
>>+const struct xdp_metadata_ops igc_xdp_metadata_ops = {
>
>Hi Jesper,
>
>Since igc_xdp_metadata_ops is used on igc_main.c only, we can make it static to
>avoid following build warning:
>
>drivers/net/ethernet/intel/igc/igc_main.c:6499:31: warning: symbol
>'igc_xdp_metadata_ops' was not declared. Should it be static?
>
>Thanks & Regards
>Siang
>
>>+	.xmo_rx_timestamp		= igc_xdp_rx_timestamp,
>>+};
>>+
>> /**
>>  * igc_probe - Device Initialization Routine
>>  * @pdev: PCI device information struct @@ -6554,6 +6573,7 @@ static
>>int igc_probe(struct pci_dev *pdev,
>> 	hw->hw_addr = adapter->io_addr;
>>
>> 	netdev->netdev_ops = &igc_netdev_ops;
>>+	netdev->xdp_metadata_ops = &igc_xdp_metadata_ops;
>> 	igc_ethtool_set_ops(netdev);
>> 	netdev->watchdog_timeo = 5 * HZ;
>>
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
