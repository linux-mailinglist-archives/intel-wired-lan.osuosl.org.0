Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FFA538D85
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 11:13:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D40F041B4E;
	Tue, 31 May 2022 09:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUTyjyk6glMb; Tue, 31 May 2022 09:13:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFBDE419FD;
	Tue, 31 May 2022 09:13:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B93A1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 09:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58D8F419FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 09:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oY6fWKAfk6zL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 09:13:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84B7241A00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 09:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653988385; x=1685524385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n/BYIPG3Be6IxgaTvp8d6CW7TJ/mVEtN+USZaUjrpW8=;
 b=maO3DIXsm0hLzt2HUKwtqTFLZXqVjb68GicjgIWU018Obt05dEscoXAC
 NW6PFBKc7YMNkiMAkBw4lS5Uv6ILQ5ezC7nyDKBYH0Zxycu7NwL8Bhoyo
 ATFGSdSKi/ipXCTh/kUHkV6DI8a3x2xaw34soVwigoqmIEnv+0WtIW5S6
 YrcwDgVibC/0VYVhA4iwkmy6LQt4BchFLbHp8vqM05F8ShSXBrScmxP3d
 JcFUPHurFUdRwcSF31Nd9GZQr1sVyQG3dVq47SM6uYrsTOyU2mCB5D3zO
 9mSNfrWF1Ly0AsTRlyVd6YmxYsOSArXa6bfoWH8I5CDNBalCcfyttfgGI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="275200470"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="275200470"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 02:13:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="666838943"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 31 May 2022 02:13:02 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 02:13:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 02:13:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 02:13:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 02:13:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEVxn1gbgeSjlefhuo4Bqq2LI9BjT1ePh5gdP/FXdPiOJWlpdIKouNk5cIjyi6JA1t0xDo4XFqg76nNs1W8/wknW+mjBf2KdbikmbWpm5i/sklI1aEjqePNf3Bk2L4CleYjGhzJNkuZmZExqM3sjUMMpQdWp6w2Nd5BPOJNoZig812yU00ehmkP+kHg7L/U8KQGDsM+78A4T9cm6McnRQFrvEPtP1I5T/IXUJyvQinzSpbF8DTZfEaNt08i0TYbGsUGEKOr+/S/MXB1bwCIlxYAoO9wb67l5gBzWBSaueVuIxpcAgSSyS1Fg6oXVQz0q93+WtJRVsFCR1CTnHuGMdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n/BYIPG3Be6IxgaTvp8d6CW7TJ/mVEtN+USZaUjrpW8=;
 b=CO2E/pUThnCrPYK+NerHKzIqA+9+Z0KQ3o8/J5n9J5cQcLNdvWF+8QPkGLcwTecY0gK4PxvGofnWOno51L/AKYOm6AyprJEW4vhf4kvF75IrOHmbiFNiX5EkGeh9oyoDgZzcXQSW44f8u/jVj1kBN9jdQPQC81Ht6s50PQ4F8gVH4anqDmlEFrYpbzahx1hG/TzQBUzAsOuL+W+Z4l6hVwY9KQVlLkwb0tTehhrHW3ocfxZrTQZWq1MlKVIxfsUjH401/WmWX7cQCgDOPzRbnCh51FJzzaVWp15cwuOuyzbG9OPWtSMI5pSPTwFHO76KVlev4AH1hkh3RvpMVzYDJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 CY4PR11MB1478.namprd11.prod.outlook.com (2603:10b6:910:8::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.12; Tue, 31 May 2022 09:13:00 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b%4]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 09:13:00 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix dropped jumbo frames
 statistics
Thread-Index: AQHYcaEk7b0enkYIN0iU9MVR92hgB60yopAAgAYXG9A=
Date: Tue, 31 May 2022 09:13:00 +0000
Message-ID: <DM6PR11MB2731EDCFDC91225DA98D0620F0DC9@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220527080750.2370502-1-jedrzej.jagielski@intel.com>
 <77767225-beba-75f1-2150-a26713e6efd8@molgen.mpg.de>
In-Reply-To: <77767225-beba-75f1-2150-a26713e6efd8@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0e57fa6-5eba-45cb-388b-08da42e5c24a
x-ms-traffictypediagnostic: CY4PR11MB1478:EE_
x-microsoft-antispam-prvs: <CY4PR11MB1478B9CF17181D90F0E7D875F0DC9@CY4PR11MB1478.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4cV3vJamROQXm1Ekduhugv51YHNFOIjvDrVH6dglpL0iXID2CWSYLUuw586KY2bgtdXA1HFZoQghQcrhzrVEjqivr8eE/7/1ynaTzA0JREq5xtHG+mTLxmXRrMckIE8cV47Qt/8NgmaRrQNcJVVvA97m1h3MlAxGi4DcbeT3hKZSKibB1ARWkl3lp9fitrtekdCAM5w56+XuYMJPgFlUdL1m+8nMuQvJ9ZY9eri5K3Nz3peHQJwpz72Ojcf1Nhhwt0xnRFvpuLyrKwK83pV4ld7KJo2d9+/RrUMwOAJmWyTQakHur8qSg2mHov+wRNnl1M3Abpq257dAy+0gCTiZ3VutoQq20cN/tdSfcxDLW9VWk4oQuwywUQgxBueis8yp9BUg5GoWFlC9TIchoNk9LI7cWyKQt1qeicMsf3gvK6mi71p7JCCZc8K98HOMKWbXH4WenqKiUzNXJlQeETQ7t/77Pg4Zqngs2NVInpQxpeatjm3Hv9ZnMNpBO5GqpkfnvJeItd+xH10pXx+37V7sKqUAx4hjeVMt/jTcgteEAJ4Px+x1572UXMR4jBUpMxyfuvB1GDvBhTlBZNU+uc3rXpm+Yq3gzQwl9o7knX7GTjrtISZ3YzN014bg7qGK8+2UmvzO4Cv4TvobttPcpsFgkFY8IPIp6S9jJK+WoDa1Q4VWXIhv69tiwf9yIK3qnIAkbhlS5M5ApteelqRf0uNvTw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(83380400001)(122000001)(26005)(82960400001)(38070700005)(9686003)(186003)(86362001)(33656002)(54906003)(316002)(6916009)(52536014)(8936002)(66946007)(76116006)(66556008)(66476007)(2906002)(5660300002)(8676002)(64756008)(4326008)(66446008)(7696005)(55016003)(508600001)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Sjl2RUQwVVNqSCtJcmxhbFVIay9LamxhY1RGTmhFV0pwaG5TT1ZFZDNndWhZ?=
 =?utf-8?B?UDR1Y1hmK3hxWFRkd0YzZjJhTHZ6a1dzaFZMYmNxYUFSNUVjRFZGVnpaWVNU?=
 =?utf-8?B?WE1LNk1Pa2ZZQTJsQTlCdm9LUkdYS0JySEM4UHhaeTYxUHI0ek9tU2p4cGl3?=
 =?utf-8?B?OXB4NWpDZ2VmcDc0L002WXg3NUJEcU55cWptSVk3R1BwcFN5UW93UTBHMFY1?=
 =?utf-8?B?NXJjWVZ5dTExSmNOZXpRdlNzazEzRnZvbTJRM1BQRFoyMnJzMk4xdVJPQ1RY?=
 =?utf-8?B?M2NYQlpqR0VpVytFSS9KejkzREp5dVhhRXI1ajhrU1dQRFpycEd4ZzZmbnRF?=
 =?utf-8?B?NW82dGlJQjVRTlV5TU1Dcm1iMmxFbTkzQ1o4L1NHc2M2dXZBdHczREV3RUhM?=
 =?utf-8?B?eWQ1REd2UDgyWGJ1MEdMUkVBcnc5Qy9lNHgxMThYN29lUmFKSVVTa01ya08w?=
 =?utf-8?B?eXpWSE0zdnJnVVhrWXVYR2ZuWDBCK1EzdmtGb3Q4b2pEbkxMNENRVzY4K29n?=
 =?utf-8?B?bmFBbzYzYzc1NFhlMWVvWmdrYTVmTDhveERFSnRya1JuVGxWVjBjRXQ3Q1Uw?=
 =?utf-8?B?enJmR3N1L3RHWitrWFJvMWN6WGFzRHYxOWsrL2JvQm1iZDZlYXRXdFEvcUhV?=
 =?utf-8?B?cWhicGRPbVErWEZ4VWFxbUExa2JwTE1IZmhSQjc3TWQ1RUxuNWRha0MwNnZT?=
 =?utf-8?B?aFdlVzRTNlVoUXFQc1QxTVE4aFBuZEI0VGFEQWk4YXJTcldqd1F1K3pYaVIy?=
 =?utf-8?B?eEt4M1BYWXJOV1BQMzkxNmFhdDJWcmxtRHJDaU5TdGQwYzlBWjNldmhWRy9Y?=
 =?utf-8?B?eldsWmNEdW9WRU1Ja01zeFZsb1VFWk1UdTV4YkJqN2hnck93b0FKK0pSR2g2?=
 =?utf-8?B?VHdvUU5qejlVd2tML29JMVk4c3Qxb0pPQWJROHpUZjlxMFZwVG1vaktZQlg1?=
 =?utf-8?B?bWxxMEErZjk3VFRiU2JKSXlBclgwcDlEdjg5U3Z4aG9lQ2h1VTF3eTY4MGpy?=
 =?utf-8?B?KzZnSVJwY2FYcEdlNGlsZm1lTnhsVmpoTjdyU1NpNmp0ZjNtdmZsdE1DSTMy?=
 =?utf-8?B?UGJuZzVHd1lYYTNzYmJUUFJOeDNsak9xZ0dhazRWVWowNFd3dk1namhnZmIz?=
 =?utf-8?B?QXowdXFsaGRMbW42N2FxOEZVekExTnFQY21uaHV4eEQ4UjJtbE1xaEtkMS9D?=
 =?utf-8?B?aThaZGpTVVNPRjYwVmFHSnNmenlDK0tWTkVRWDJPMGtsRkltYVorWnJSZVI5?=
 =?utf-8?B?N2FFWUpJbEhDV0NTc3NCTXBycE9yNmxDTGQ3ZXJZeDFaQ25kZng2R083elA2?=
 =?utf-8?B?ekNXNGtld1V4RHFmNDRUdHdtY2YxQlQvQ2ZYbnBxa25SdFRBeW5XT2c0bkRP?=
 =?utf-8?B?MVZLQkY3cEF1NTM5MEdTUUtvZ3lDUHJOUG14ZVhaZFBQMDBYa25ZVWowMXdV?=
 =?utf-8?B?SFhWTTVKWkpZMDhhNlNQVUJzZllyNlZ1QlQ4ZURrZHZhNUNvdVRPOCtNSmZx?=
 =?utf-8?B?aGZiL1d6QkxOTER4ZEFZenI0ME9zb3A1eWNSV3ZhTCtUckRsSFBtUUNPNnlP?=
 =?utf-8?B?ZDlUc25JeDZ0Y3QydnpPOHB1ZUZ2NUQ4dEEwL1VaQ3ZrZ2l1d1gzR3VBK1RR?=
 =?utf-8?B?aEFPajZwQjNxUmozMWg3bUpZaWR3eVFsQWZMMlYyUG1RdTNiMUJwUTUwczNH?=
 =?utf-8?B?b2pQaHJXZE1reFMxVFUzR05SaTIxajUyVFc3ajVrdXBad1VzOWFrSFB6UzVO?=
 =?utf-8?B?MXRoSFJjYmZaWHRnWmoxb3V6UStpRWQ4YURqT1U3T2lMQS83bUNmbXpMY1k4?=
 =?utf-8?B?Z2FjQ1k2OFk3YytkcTcrbWtIVEo0WVhxT0UvNUlZT05SS3NtcjBtSEZseTVP?=
 =?utf-8?B?b0MrN1BLdFl2aThhMkJ6Q3VxcUZyLzc2cTRFaWRraVBrQjlzZEYvTDN1c1FX?=
 =?utf-8?B?ZVJkK3ZET052WitodEY2WUluem1vaGNVaWpFWEtrekpPNC9PMFhmNEVVUmxn?=
 =?utf-8?B?ZjFsL2xkaXZxcmYyMWJYMHF4ODVlYXpNTTFZN0Y2MHlFdTdaYm45RTd1V0Iv?=
 =?utf-8?B?ekxKdFlzSkxsQkFQeCtPQWpKYlh1MlRncXJrTjBHLzJrRFBwUzhiaWx2Z2xW?=
 =?utf-8?B?Nko1WS80dXVKcXdiZDF0a0FXNDAreGgrRlRhMWdHVll3NTNVZUN3SGNmUkIz?=
 =?utf-8?B?T2NMaFB5b3diUFQybEdZc0pWejlMREdxV2Y4dkFGMmVIaHAveXVsdFlUKzZD?=
 =?utf-8?B?UFhybEs0MG1WZVFrU2w5ZWpHaXRHN1QxYWVqQWlEbzNxRENyVDRjRmR1VnNZ?=
 =?utf-8?B?bFNvWDlHRmZ1MkdrdkJWdVZFTnZNOFdaYllLam43SlU0NkNMQ0hZQUN0WUhn?=
 =?utf-8?Q?cb4Np1GRIM0vlqo4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0e57fa6-5eba-45cb-388b-08da42e5c24a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2022 09:13:00.0465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A6xIeNKwbEeE5I9oTy0xAAm4PJptY0AxLH1wNLaYvmXAmQfnXZDn68vg/JKF9BB30ROHc6AgrmEdwglxHI0qc0klc9+jN4sW9YNJdZ1Sb64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1478
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix dropped jumbo frames
 statistics
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Cieplicki, LukaszX" <lukaszx.cieplicki@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gUGF1bCwNCg0KPkRlYXIgSmVkcnplaiwgZGVhciBMdWthc3osDQo+DQo+DQo+VGhhbmsg
eW91IGZvciB0aGUgcGF0Y2guIFNvbWUgbml0cy4NCj4NCj5BbSAyNy4wNS4yMiB1bSAxMDowNyBz
Y2hyaWViIEplZHJ6ZWogSmFnaWVsc2tpOg0KPj4gRnJvbTogTHVrYXN6IENpZXBsaWNraSA8bHVr
YXN6eC5jaWVwbGlja2lAaW50ZWwuY29tPg0KPj4gDQo+PiBEcm9wcGVkIHBhY2tldHMgY2F1c2Vk
IGJ5IHRvbyBsYXJnZSBmcmFtZXMgd2VyZQ0KPj4gbm90IGluY2x1ZGUgaW4gZHJvcHBlZCBSWCBw
YWNrZXRzIHN0YXRpc3RpY3MuDQo+DQo+aW5jbHVkZSpkKg0KPg0KPlBsZWFzZSBhbHNvIHJlZmxv
dyBmb3IgNzUgY2hhcmFjdGVycyBwZXIgbGluZSAoYWxzbyBiZWxvdywgN3RoYXQgbWVhbnMgDQo+
bm8gbmVlZCB0byB3cmFwIGxpbmVzIGFmdGVyIHNlbnRlbmNlcywgb3Igc2VwYXJhdGUgcGFyYWdy
YXBocyBieSBleGFjdGx5IA0KPm9uZSBsaW5lKS4NCj4NCg0KU3VyZSwgaXQgd2lsbCBiZSBmaXhl
ZC4NCg0KPj4gSXNzdWUgd2FzIGNhdXNlZCBieSBhdm9pZCByZWFkaW5nIG9mIEdMX1JYRVJSMSBy
ZWdpc3Rlci4NCj4NCj5zL3dhcyBjYXVzZWQvaXMgY2F1c2VkLw0KPg0KPmF2b2lkKmluZyo/IE1h
eWJlOiBieSBub3QgcmVhZGluZyB0aGUgR0xfUlhFUlIxIHJlZ2lzdGVyLg0KPg0KPkFsc28sIG1h
eWJlIGFkZCB0aGUgZGVmaW5pdGlvbi9kZXNjcmlwdGlvbiBvZiB0aGUgcmVnaXN0ZXIgdG8gdGhl
IGNvbW1pdCANCj5tZXNzYWdlLg0KDQpDb21taXQgbXNnIHdpbGwgYmUgY29ycmVjdGVkLiBCcmll
ZiBkZXNjcmlwdGlvbiBvZiB0aGF0IHJlZ2lzdGVyDQp3aWxsIGJlIGFsc28gYWRkZWQNCj4NCj4+
IEZpeGVkIGJ5IHJlYWRpbmcgR0xfUlhFUlIxIHJlZ2lzdGVyIGZvciBlYWNoIGludGVyZmFjZS4N
Cj4NCj5GaXggaXQgYnkg4oCmDQo+DQo+SG93IGRvIHlvdSByZXByb2R1Y2UgdGhlIGlzc3VlPyBJ
dOKAmWQgZ3JlYXQgaWYgeW91IGFkZGVkIGl0IHRvIHRoZSBjb21taXQgDQo+bWVzc2FnZS4NCg0K
U28gcmVwcm8gc3RlcHMgd2lsbCBiZSBhZGRlZC4NCg0KPg0KPj4gDQo+PiBGaXhlczogNDFhOWU1
NWM4OWJlICgiaTQwZTogYWRkIG1pc3NpbmcgVlNJIHN0YXRpc3RpY3MiKQ0KPj4gU2lnbmVkLW9m
Zi1ieTogTHVrYXN6IENpZXBsaWNraSA8bHVrYXN6eC5jaWVwbGlja2lAaW50ZWwuY29tPg0KPj4g
U2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVsc2tpQGludGVs
LmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUu
aCAgICAgICAgfCAxNSArKysrDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9tYWluLmMgICB8IDc0ICsrKysrKysrKysrKysrKysrKysNCj4+ICAgLi4uL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfcmVnaXN0ZXIuaCAgIHwgMTMgKysrKw0KPj4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHlwZS5oICAgfCAgMSArDQo+PiAgIDQgZmls
ZXMgY2hhbmdlZCwgMTAzIGluc2VydGlvbnMoKykNCj4+IA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlLmgNCj4+IGluZGV4IDU1YzZiY2U1ZGE2MS4uODk3YmQ1N2UyZWI0IDEw
MDY0NA0KPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oDQo+PiBAQCAtMTA5
MSw2ICsxMDkxLDIxIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBpNDBlX3dyaXRlX2ZkX2lucHV0X3Nl
dChzdHJ1Y3QgaTQwZV9wZiAqcGYsDQo+PiAgIAkJCSAgKHUzMikodmFsICYgMHhGRkZGRkZGRlVM
TCkpOw0KPj4gICB9DQo+PiAgIA0KPj4gKy8qKg0KPj4gKyAqIGk0MGVfZ2V0X3BmX2NvdW50IC0g
Z2V0IFBDSSBQRiBDb3VudC4NCj4NCj5jb3VudD8NCj4NCj4+ICsgKiBAaHc6IHBvaW50ZXIgdG8g
YSBody4NCj4+ICsgKg0KPj4gKyAqIFJlcG9ydHMgdGhlIGZ1bmN0aW9uIG51bWJlciBvZiB0aGUg
aGlnaGVzdCBQQ0kgcGh5c2ljYWwNCj4+ICsgKiBmdW5jdGlvbiBwbHVzIDEgYXMgaXQgaXMgbG9h
ZGVkIGZyb20gdGhlIE5WTS4NCj4+ICsgKg0KPj4gKyAqIFJldHVybjogUENJIFBGIENvdW50Lg0K
Pj4gKyAqKi8NCj4+ICtzdGF0aWMgaW5saW5lIGludCBpNDBlX2dldF9wZl9jb3VudChzdHJ1Y3Qg
aTQwZV9odyAqaHcpDQo+DQo+V2h5IG5vdCByZXR1cm4gYHVuc2lnbmVkIGludGAgYXMgYGlnYl9y
ZDMyKClgIHJldHVybnMgYHUzMmA/DQo+DQo+PiArew0KPj4gKwlyZXR1cm4gcmQzMihodywgSTQw
RV9HTEdFTl9QQ0lGQ05DTlQpDQo+PiArCQkmIEk0MEVfR0xHRU5fUENJRkNOQ05UX1BDSVBGQ05U
X01BU0s7DQo+PiArfQ0KPj4gKw0KPj4gICAvKiBuZWVkZWQgYnkgaTQwZV9ldGh0b29sLmMgKi8N
Cj4+ICAgaW50IGk0MGVfdXAoc3RydWN0IGk0MGVfdnNpICp2c2kpOw0KPj4gICB2b2lkIGk0MGVf
ZG93bihzdHJ1Y3QgaTQwZV92c2kgKnZzaSk7DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV9tYWluLmMNCj4+IGluZGV4IDQ2YmIxMTY5YTAwNC4uOTQ0MTBiNDk5OTVi
IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21h
aW4uYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4u
Yw0KPj4gQEAgLTU0OSw2ICs1NDksNDkgQEAgdm9pZCBpNDBlX3BmX3Jlc2V0X3N0YXRzKHN0cnVj
dCBpNDBlX3BmICpwZikNCj4+ICAgCXBmLT5od19jc3VtX3J4X2Vycm9yID0gMDsNCj4+ICAgfQ0K
Pj4gICANCj4+ICsvKioNCj4+ICsgKiBpNDBlX2NvbXB1dGVfcGNpX3RvX2h3X2lkIC0gY29tcHV0
ZSBpbmRleCBmb3JtIFBDSSBmdW5jdGlvbi4NCj4+ICsgKiBAdnNpOiBwdHIgdG8gdGhlIFZTSSB0
byByZWFkIGZyb20uDQo+PiArICogQGh3OiBwdHIgdG8gdGhlIGhhcmR3YXJlIGluZm8uDQo+PiAr
ICoqLw0KPj4gK3N0YXRpYyB1OCBpNDBlX2NvbXB1dGVfcGNpX3RvX2h3X2lkKHN0cnVjdCBpNDBl
X3ZzaSAqdnNpLCBzdHJ1Y3QgaTQwZV9odyAqaHcpDQo+DQo+V2h5IG5vdCByZXR1cm4gYHVuc2ln
bmVkIGludGAgWzFdPw0KDQpTdXJlLCBJIGJlbGlldmUgdGhhdCBpbiB0aGUgYm90aCBhYm92ZSBj
YXNlcyB0eXBlcyB3aGljaCB5b3UNCnByb3Bvc2VkIGNvdWxkIGJlIHVzZWQgYW5kIHRoaXMgaXMg
YSBnb29kIHR3ZWFrLg0KPg0KPj4gK3sNCj4+ICsJaW50IHBmX2NvdW50Ow0KPj4gKw0KPj4gKwlw
Zl9jb3VudCA9IGk0MGVfZ2V0X3BmX2NvdW50KGh3KTsNCj4+ICsNCj4+ICsJaWYgKHZzaS0+dHlw
ZSA9PSBJNDBFX1ZTSV9TUklPVikNCj4+ICsJCXJldHVybiBody0+cG9ydCAqIEJJVCg3KSAvIHBm
X2NvdW50ICsgdnNpLT52Zl9pZDsNCj4+ICsNCj4+ICsJcmV0dXJuIGh3LT5wb3J0ICsgQklUKDcp
Ow0KPj4gK30NCj4+ICsNCj4+ICsvKioNCj4+ICsgKiBpNDBlX3N0YXRfdXBkYXRlNjQgLSByZWFk
IGFuZCB1cGRhdGUgYSA2NCBiaXQgc3RhdCBmcm9tIHRoZSBjaGlwLg0KPj4gKyAqIEBodzogcHRy
IHRvIHRoZSBoYXJkd2FyZSBpbmZvLg0KPj4gKyAqIEBoaXJlZzogdGhlIGhpZ2ggMzIgYml0IHJl
ZyB0byByZWFkLg0KPj4gKyAqIEBsb3JlZzogdGhlIGxvdyAzMiBiaXQgcmVnIHRvIHJlYWQuDQo+
PiArICogQG9mZnNldF9sb2FkZWQ6IGhhcyB0aGUgaW5pdGlhbCBvZmZzZXQgYmVlbiBsb2FkZWQg
eWV0Lg0KPj4gKyAqIEBvZmZzZXQ6IHB0ciB0byBjdXJyZW50IG9mZnNldCB2YWx1ZS4NCj4+ICsg
KiBAc3RhdDogcHRyIHRvIHRoZSBzdGF0Lg0KPj4gKyAqDQo+PiArICogU2luY2UgdGhlIGRldmlj
ZSBzdGF0cyBhcmUgbm90IHJlc2V0IGF0IFBGUmVzZXQsIHRoZXkgbGlrZWx5IHdpbGwgbm90DQo+
DQo+Q2FuIHRoaXMgYmUgc2FpZCBmb3Igc3VyZT8gTGlrZWx5IGRvZXMgbm90IHNvdW5kIGVuc3Vy
aW5nLg0KPg0KPj4gKyAqIGJlIHplcm9lZCB3aGVuIHRoZSBkcml2ZXIgc3RhcnRzLiAgV2UnbGwg
c2F2ZSB0aGUgZmlyc3QgdmFsdWVzIHJlYWQNCj4+ICsgKiBhbmQgdXNlIHRoZW0gYXMgb2Zmc2V0
cyB0byBiZSBzdWJ0cmFjdGVkIGZyb20gdGhlIHJhdyB2YWx1ZXMgaW4gb3JkZXINCj4+ICsgKiB0
byByZXBvcnQgc3RhdHMgdGhhdCBjb3VudCBmcm9tIHplcm8uDQo+PiArICoqLw0KPj4gK3N0YXRp
YyB2b2lkIGk0MGVfc3RhdF91cGRhdGU2NChzdHJ1Y3QgaTQwZV9odyAqaHcsIHUzMiBoaXJlZywg
dTMyIGxvcmVnLA0KPj4gKwkJCSAgICAgICBib29sIG9mZnNldF9sb2FkZWQsIHU2NCAqb2Zmc2V0
LCB1NjQgKnN0YXQpDQo+PiArew0KPj4gKwl1NjQgbmV3X2RhdGE7DQo+PiArDQo+PiArCW5ld19k
YXRhID0gcmQ2NChodywgbG9yZWcpOw0KPj4gKw0KPj4gKwlpZiAoIW9mZnNldF9sb2FkZWQgfHwg
bmV3X2RhdGEgPCAqb2Zmc2V0KQ0KPj4gKwkJKm9mZnNldCA9IG5ld19kYXRhOw0KPj4gKwkqc3Rh
dCA9IG5ld19kYXRhIC0gKm9mZnNldDsNCj4+ICt9DQo+PiArDQo+PiAgIC8qKg0KPj4gICAgKiBp
NDBlX3N0YXRfdXBkYXRlNDggLSByZWFkIGFuZCB1cGRhdGUgYSA0OCBiaXQgc3RhdCBmcm9tIHRo
ZSBjaGlwDQo+PiAgICAqIEBodzogcHRyIHRvIHRoZSBoYXJkd2FyZSBpbmZvDQo+PiBAQCAtNjIw
LDYgKzY2MywzMyBAQCBzdGF0aWMgdm9pZCBpNDBlX3N0YXRfdXBkYXRlX2FuZF9jbGVhcjMyKHN0
cnVjdCBpNDBlX2h3ICpodywgdTMyIHJlZywgdTY0ICpzdGF0KQ0KPj4gICAJKnN0YXQgKz0gbmV3
X2RhdGE7DQo+PiAgIH0NCj4+ICAgDQo+PiArLyoqDQo+PiArICogaTQwZV9zdGF0c191cGRhdGVf
cnhfZGlzY2FyZHMgLSB1cGRhdGUgcnhfZGlzY2FyZHMuDQo+PiArICogQHZzaTogcHRyIHRvIHRo
ZSBWU0kgdG8gYmUgdXBkYXRlZC4NCj4+ICsgKiBAaHc6IHB0ciB0byB0aGUgaGFyZHdhcmUgaW5m
by4NCj4+ICsgKiBAc3RhdF9pZHg6IFZTSSdzIHN0YXRfY291bnRlcl9pZHguDQo+PiArICogQG9m
ZnNldF9sb2FkZWQ6IHB0ciB0byB0aGUgVlNJJ3Mgc3RhdF9vZmZzZXRzX2xvYWRlZC4NCj4+ICsg
KiBAc3RhdF9vZmZzZXQ6IHB0ciB0byBzdGF0X29mZnNldCB0byBzdG9yZSBmaXJzdCByZWFkIG9m
IHNwZWNpZmljIHJlZ2lzdGVyLg0KPj4gKyAqIEBzdGF0OiBwdHIgdG8gVlNJJ3Mgc3RhdCB0byBi
ZSB1cGRhdGVkLg0KPj4gKyAqKi8NCj4+ICtzdGF0aWMgdm9pZCBpNDBlX3N0YXRzX3VwZGF0ZV9y
eF9kaXNjYXJkcyhzdHJ1Y3QgaTQwZV92c2kgKnZzaSwNCj4+ICsJCQlzdHJ1Y3QgaTQwZV9odyAq
aHcsIGludCBzdGF0X2lkeCwgYm9vbCBvZmZzZXRfbG9hZGVkLA0KPj4gKwkJCXN0cnVjdCBpNDBl
X2V0aF9zdGF0cyAqc3RhdF9vZmZzZXQsDQo+PiArCQkJc3RydWN0IGk0MGVfZXRoX3N0YXRzICpz
dGF0KQ0KPj4gK3sNCj4+ICsJdTY0IHJ4X3JkcGMsIHJ4X3J4ZXJyOw0KPj4gKw0KPj4gKwlpNDBl
X3N0YXRfdXBkYXRlMzIoaHcsIEk0MEVfR0xWX1JEUEMoc3RhdF9pZHgpLCBvZmZzZXRfbG9hZGVk
LA0KPj4gKwkJCSAgICZzdGF0X29mZnNldC0+cnhfZGlzY2FyZHMsICZyeF9yZHBjKTsNCj4+ICsJ
aTQwZV9zdGF0X3VwZGF0ZTY0KGh3LA0KPj4gKwkJCSAgIEk0MEVfR0xfUlhFUlIxSChpNDBlX2Nv
bXB1dGVfcGNpX3RvX2h3X2lkKHZzaSwgaHcpKSwNCj4+ICsJCQkgICBJNDBFX0dMX1JYRVJSMUwo
aTQwZV9jb21wdXRlX3BjaV90b19od19pZCh2c2ksIGh3KSksDQo+PiArCQkJICAgb2Zmc2V0X2xv
YWRlZCwgJnN0YXRfb2Zmc2V0LT5yeF9kaXNjYXJkc19vdGhlciwNCj4+ICsJCQkgICAmcnhfcnhl
cnIpOw0KPj4gKw0KPj4gKwlzdGF0LT5yeF9kaXNjYXJkcyA9IHJ4X3JkcGMgKyByeF9yeGVycjsN
Cj4+ICt9DQo+PiArDQo+PiAgIC8qKg0KPj4gICAgKiBpNDBlX3VwZGF0ZV9ldGhfc3RhdHMgLSBV
cGRhdGUgVlNJLXNwZWNpZmljIGV0aGVybmV0IHN0YXRpc3RpY3MgY291bnRlcnMuDQo+PiAgICAq
IEB2c2k6IHRoZSBWU0kgdG8gYmUgdXBkYXRlZA0KPj4gQEAgLTY3OSw2ICs3NDksMTAgQEAgdm9p
ZCBpNDBlX3VwZGF0ZV9ldGhfc3RhdHMoc3RydWN0IGk0MGVfdnNpICp2c2kpDQo+PiAgIAkJCSAg
IEk0MEVfR0xWX0JQVENMKHN0YXRfaWR4KSwNCj4+ICAgCQkJICAgdnNpLT5zdGF0X29mZnNldHNf
bG9hZGVkLA0KPj4gICAJCQkgICAmb2VzLT50eF9icm9hZGNhc3QsICZlcy0+dHhfYnJvYWRjYXN0
KTsNCj4+ICsNCj4+ICsJaTQwZV9zdGF0c191cGRhdGVfcnhfZGlzY2FyZHModnNpLCBodywgc3Rh
dF9pZHgsDQo+PiArCQkgICB2c2ktPnN0YXRfb2Zmc2V0c19sb2FkZWQsIG9lcywgZXMpOw0KPj4g
Kw0KPj4gICAJdnNpLT5zdGF0X29mZnNldHNfbG9hZGVkID0gdHJ1ZTsNCj4+ICAgfQ0KPj4gICAN
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcmVn
aXN0ZXIuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9yZWdpc3Rlci5o
DQo+PiBpbmRleCAxOTA4ZWVkNGZhNWUuLjczMzkwMDNhYTE3YyAxMDA2NDQNCj4+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9yZWdpc3Rlci5oDQo+PiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcmVnaXN0ZXIuaA0KPj4gQEAgLTIx
MSw2ICsyMTEsMTEgQEANCj4+ICAgI2RlZmluZSBJNDBFX0dMR0VOX01TUldEX01ESVdSREFUQV9T
SElGVCAwDQo+PiAgICNkZWZpbmUgSTQwRV9HTEdFTl9NU1JXRF9NRElSRERBVEFfU0hJRlQgMTYN
Cj4+ICAgI2RlZmluZSBJNDBFX0dMR0VOX01TUldEX01ESVJEREFUQV9NQVNLIEk0MEVfTUFTSygw
eEZGRkYsIEk0MEVfR0xHRU5fTVNSV0RfTURJUkREQVRBX1NISUZUKQ0KPj4gKyNkZWZpbmUgSTQw
RV9HTEdFTl9QQ0lGQ05DTlQgICAgICAgICAgICAgICAgMHgwMDFDMEFCNCAvKiBSZXNldDogUENJ
UiAqLw0KPj4gKyNkZWZpbmUgSTQwRV9HTEdFTl9QQ0lGQ05DTlRfUENJUEZDTlRfU0hJRlQgMA0K
Pj4gKyNkZWZpbmUgSTQwRV9HTEdFTl9QQ0lGQ05DTlRfUENJUEZDTlRfTUFTSyAgSTQwRV9NQVNL
KDB4MUYsIEk0MEVfR0xHRU5fUENJRkNOQ05UX1BDSVBGQ05UX1NISUZUKQ0KPj4gKyNkZWZpbmUg
STQwRV9HTEdFTl9QQ0lGQ05DTlRfUENJVkZDTlRfU0hJRlQgMTYNCj4+ICsjZGVmaW5lIEk0MEVf
R0xHRU5fUENJRkNOQ05UX1BDSVZGQ05UX01BU0sgIEk0MEVfTUFTSygweEZGLCBJNDBFX0dMR0VO
X1BDSUZDTkNOVF9QQ0lWRkNOVF9TSElGVCkNCj4+ICAgI2RlZmluZSBJNDBFX0dMR0VOX1JTVEFU
IDB4MDAwQjgxODggLyogUmVzZXQ6IFBPUiAqLw0KPj4gICAjZGVmaW5lIEk0MEVfR0xHRU5fUlNU
QVRfREVWU1RBVEVfU0hJRlQgMA0KPj4gICAjZGVmaW5lIEk0MEVfR0xHRU5fUlNUQVRfREVWU1RB
VEVfTUFTSyBJNDBFX01BU0soMHgzLCBJNDBFX0dMR0VOX1JTVEFUX0RFVlNUQVRFX1NISUZUKQ0K
Pj4gQEAgLTY0Myw2ICs2NDgsMTQgQEANCj4+ICAgI2RlZmluZSBJNDBFX1ZGUUZfSEtFWTFfTUFY
X0lOREVYIDEyDQo+PiAgICNkZWZpbmUgSTQwRV9WRlFGX0hMVVQxKF9pLCBfVkYpICgweDAwMjIw
MDAwICsgKChfaSkgKiAxMDI0ICsgKF9WRikgKiA0KSkgLyogX2k9MC4uLjE1LCBfVkY9MC4uLjEy
NyAqLyAvKiBSZXNldDogQ09SRVIgKi8NCj4+ICAgI2RlZmluZSBJNDBFX1ZGUUZfSExVVDFfTUFY
X0lOREVYIDE1DQo+PiArI2RlZmluZSBJNDBFX0dMX1JYRVJSMUgoX2kpICAgICAgICAgICAgICgw
eDAwMzE4MDA0ICsgKChfaSkgKiA4KSkgLyogX2k9MC4uLjE0MyAqLyAvKiBSZXNldDogQ09SRVIg
Ki8NCj4+ICsjZGVmaW5lIEk0MEVfR0xfUlhFUlIxSF9NQVhfSU5ERVggICAgICAgMTQzDQo+PiAr
I2RlZmluZSBJNDBFX0dMX1JYRVJSMUhfUlhFUlIxSF9TSElGVCAgIDANCj4+ICsjZGVmaW5lIEk0
MEVfR0xfUlhFUlIxSF9SWEVSUjFIX01BU0sgICAgSTQwRV9NQVNLKDB4RkZGRkZGRkYsIEk0MEVf
R0xfUlhFUlIxSF9SWEVSUjFIX1NISUZUKQ0KPj4gKyNkZWZpbmUgSTQwRV9HTF9SWEVSUjFMKF9p
KSAgICAgICAgICAgICAoMHgwMDMxODAwMCArICgoX2kpICogOCkpIC8qIF9pPTAuLi4xNDMgKi8g
LyogUmVzZXQ6IENPUkVSICovDQo+PiArI2RlZmluZSBJNDBFX0dMX1JYRVJSMUxfTUFYX0lOREVY
ICAgICAgIDE0Mw0KPj4gKyNkZWZpbmUgSTQwRV9HTF9SWEVSUjFMX1JYRVJSMUxfU0hJRlQgICAw
DQo+PiArI2RlZmluZSBJNDBFX0dMX1JYRVJSMUxfUlhFUlIxTF9NQVNLICAgIEk0MEVfTUFTSygw
eEZGRkZGRkZGLCBJNDBFX0dMX1JYRVJSMUxfUlhFUlIxTF9TSElGVCkNCj4+ICAgI2RlZmluZSBJ
NDBFX0dMUFJUX0JQUkNIKF9pKSAoMHgwMDMwMDVFNCArICgoX2kpICogOCkpIC8qIF9pPTAuLi4z
ICovIC8qIFJlc2V0OiBDT1JFUiAqLw0KPj4gICAjZGVmaW5lIEk0MEVfR0xQUlRfQlBSQ0woX2kp
ICgweDAwMzAwNUUwICsgKChfaSkgKiA4KSkgLyogX2k9MC4uLjMgKi8gLyogUmVzZXQ6IENPUkVS
ICovDQo+PiAgICNkZWZpbmUgSTQwRV9HTFBSVF9CUFRDSChfaSkgKDB4MDAzMDBBMDQgKyAoKF9p
KSAqIDgpKSAvKiBfaT0wLi4uMyAqLyAvKiBSZXNldDogQ09SRVIgKi8NCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHlwZS5oIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R5cGUuaA0KPj4gaW5kZXggMzZhNGNhMWZmYjFh
Li43YjNmMzBiZWI3NTcgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfdHlwZS5oDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfdHlwZS5oDQo+PiBAQCAtMTE3Miw2ICsxMTcyLDcgQEAgc3RydWN0IGk0MGVfZXRo
X3N0YXRzIHsNCj4+ICAgCXU2NCB0eF9icm9hZGNhc3Q7CQkvKiBicHRjICovDQo+PiAgIAl1NjQg
dHhfZGlzY2FyZHM7CQkvKiB0ZHBjICovDQo+PiAgIAl1NjQgdHhfZXJyb3JzOwkJCS8qIHRlcGMg
Ki8NCj4+ICsJdTY0IHJ4X2Rpc2NhcmRzX290aGVyOyAgICAgICAgICAvKiByeGVycjEgKi8NCj4+
ICAgfTsNCj4+ICAgDQo+PiAgIC8qIFN0YXRpc3RpY3MgY29sbGVjdGVkIHBlciBWRUIgcGVyIFRD
ICovDQo+DQo+DQo+S2luZCByZWdhcmRzLA0KPg0KPlBhdWwNCg0KVGhhbmtzIGZvciB5b3VyIHN1
Z2dlc3Rpb25zLg0KDQpCZXN0IHJlZ2FyZHMsDQpKZWRyemVqDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
