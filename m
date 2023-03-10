Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BC66B4012
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:18:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C82E940447;
	Fri, 10 Mar 2023 13:18:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C82E940447
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454285;
	bh=J7PCe77gGf+uaWvCAwgEGObftfixDGddQ23F2zRatmE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aCwnctAq+8ygtitLOhxgszsSx6wf7ZSOkXsBcOe0knBp2Zv1estKhKLZUOYVidE9F
	 CWwY7GQ/DBUlW+97MWrI1+IAQxtmctXQQi8iI5OnuKtkrha8yQFbC6MsbHSzuOjpL+
	 avu/GavmTyxNlJQf+8rN6ymIB3c+PfxwUw3NLVToR7vk0n8H0TbS+/eB17XEg44mZV
	 LjE1/rKAvk7Aimx1vby9fEBd3rc1k2sR9EPvRfWM+9CMNfFiBXNnMR1vIQr7SZp9e5
	 KU7ZfFV5g2PO7hU+t7PMVHIt9Ilbv17uXrh4BQr5R4tAtrK2ZCeMHnK2gxLXfJCcw1
	 2WxI9KfnHRT7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fRY5_Mtxug7u; Fri, 10 Mar 2023 13:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02A794037E;
	Fri, 10 Mar 2023 13:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02A794037E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2350B1BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EEBC4404ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEBC4404ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 32RIgko2KGPx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0681D4024A
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0681D4024A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="399323660"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="399323660"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:17:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766825813"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="766825813"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2023 05:17:56 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:17:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HelQ2J84ZsWAeYsonuZ/76lYABoFKMFL0qalt+Psg99HwYoSoAJ3Rz1nEZD1ceTQ+htyh8tw3NjZ0uh6aL52mh4mF9yyC//lMI8kZNtH/0NkusnmnndJ6IUhVx95xU14X1BpN2l62GQr1CF2g56cJNNOk0PNPw1n8HaTbOIP2SnCoJRaqr9F/+3uEjO2JKAdKK5d77DSPeNWb/NFAQiGtOHFamDAHrwIR553B7pTcO5PJMQjW82ARllciPxvNSD83Y3G7aQzEaKbuAR/6yqQh7iU5ZeXrycEtfaHlkXv6m4gD/DuTb8FrAJoJHHphKnoomB9KDxJw9nQnLWbvO+IuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3lgzZWo1VENcYPKdg2muIsIywDIihw78+MeHvcxgKwA=;
 b=YgMHCeHbTcTR2b69KGCQhhfu+ezDrVEIAc418NtLzgKne5LQzSjooc73f4Xf91gULDgbxgGqAFD3ulTJMh6MMnbHu6ECxpBJcIgvlu5Qyfhkyl+TPl+lCDnz4WoQdZngKcqUK8Es1O80HjbxcNTK+MgA+TlqA1BjZ68O4U+bP5qiuOWJzQqQ1BEOr2JPheTP7ufcq4sQS1tJPo0HGSmYvgwPOZe0fCSWYStFFZuNr6MRufh58ddwsUc+Kb1NCByey2F8aujf1jxJf6Xu7pBIheiRb7sx79H1FDBu7+RTYXuUTYRBwaPLQ8t6xjd0i/SgUUgaLU0Y3T7t0YSlR8cAqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:17:55 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:17:55 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 09/14] ice: always report VF
 overflowing mailbox even without PF VSI
Thread-Index: AQHZRuF/6gIBrOgq8kiutVnB3Dt9XK70F5+g
Date: Fri, 10 Mar 2023 13:17:55 +0000
Message-ID: <CY8PR11MB7364FDEFB6980318F7F9A38EE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-10-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-10-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: 0b44b1a2-3bef-46c1-fcaf-08db2169dc0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XDa+EQpmo2l/LQy7w1/rjvE5OhuDEZL19F1KfndZ+ynQZzNwuGHb18VUHoQYjxDaQ+fIr4qW44lKQVPYjydaH1s57haF5S7J+TSzLkeqghApUhqPpuFrpsFV4fxJ8syIMVgf9I/czWTO2GnEP2P9WnRSA0sh/DQuKAZcn4RShv3BCq/7gdZTfxKuVvTvIEpe8fmwMO5OeqjJHR1zdjlpDTseKbH3rTu0NGnBy9jdVRxqW2ye5aTb8H1jgX70nLCpDj/eTrxP3jRUAKJE0wr/YuHudzwjecMTs30Pk+uj/nilXffCziA/8gj9K0yv5tyai7zEovjpzr6vgDNQdEKUEtzOU4KBTO/KmGsgm4D+HJjRb5I2M5dkMU0Urt3tyPuoiyimc7sGOu0uZiT3gZ1W+gJs00aLbwKkn8GZb95xNBYb9UCHclJ2LKmYhDo/nAPp92dU8RPGNAmFPfD2Jlyz+uZ80rrHs9yLX+OCTwsuWvcvvGL4sH3V2/Snao+x8qOpb6DYOPUSeT4y30EK4p5jaPFA7Jl5LTivjk1I9lT8DoR/lPO1eBPwA4XXyOZBZUejgfpRwFN6g/FarmNd6Cgz4asLQFspTbZFDCvgtEhTkbwglhtIldl2dKexpbqhNEeFotaUVemnafRgatqClamVQd1lZBQe0sj5yg7qYk9pELMdaeBTRm/kFkFLgYCZKins8pwG1TcOJxtdr0SDmVuvEQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(15650500001)(76116006)(8936002)(5660300002)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?jSMvGoj7//mfnNwKY9rfJn7fcs57U0Sv+GxT6eUgRcDrP51Q41fXRCyWje?=
 =?iso-8859-2?Q?OxThx/JfpEaYLxHMylH3MF5U6aPTp8EEOOsfUHXRc80SES/Y74xYHXs5ob?=
 =?iso-8859-2?Q?3DoUBri7VEwoxeiWwb/trB5EB0Ptud923SI45PUbQkphjd1cAxt2L7p4Bn?=
 =?iso-8859-2?Q?7fRnbOdEebvK2z63ORR0LnvWYC2TgCzVYOVMMuUwJnivoWkpn+wLvUGc1U?=
 =?iso-8859-2?Q?kvhwstqT356k69ii618UlZsIemP51Wsvzxa1FrpreBBUp9CZfjZuoystxB?=
 =?iso-8859-2?Q?MidgcX371xv7FEko4etIk/oV173wn/4G8vpiwj1QKpD9MX/kg1OAi9vqO6?=
 =?iso-8859-2?Q?uD4XQnPmjeV5r8IdA1PIhDt2MA1rByOcLV4I+ekPFzacpBQacidWNpW3sT?=
 =?iso-8859-2?Q?K/dT8I289SQL4vIeottCxO5/xfAkWT9NO+WPULQUX+Xnh7eqia7hh9pzLP?=
 =?iso-8859-2?Q?lSrW37WhMWdjd9mdpeZVIE6ZtnHnlNCKUWv577YkY34+R67bhJy1NNOgCF?=
 =?iso-8859-2?Q?GcqaVNxAZNHElBjfRqkGz5zr6Fuk3LBZxZtFI9E+kjuXVURSiuhJ26wpxc?=
 =?iso-8859-2?Q?zADgTyy1/4KfrOpp9K5wyqaXih3aXkwtWNkwvoIv01dDp3K2Ak63uIMcZm?=
 =?iso-8859-2?Q?uV0/XBgFLcQkGsw6stbwOEs8DR7sDNl/1vObMniq0gAbKaV5GND8FwrWOG?=
 =?iso-8859-2?Q?I6I0QbfLpQ8UMkMD5eEkA0w9QSFu7L6HZh2euMDc9/ErHes3Iu2aqdU3Wo?=
 =?iso-8859-2?Q?s/YtRmS1aYnXtKU1OBXnhG8Acbq122j95F+RvwiuA+n9N3CfdzulY+tKL8?=
 =?iso-8859-2?Q?Mf6DuFhBNc3twIIE5Ab0CwqMRdWDbcpDghbqlkHRMMXYzDHdD5U8u7rmwk?=
 =?iso-8859-2?Q?Z7Lwb3Fn0W5d+k0CFGOL6GJ7pdB4zGTPQsYz7p4bsR96iQVa2oZh7AmeA6?=
 =?iso-8859-2?Q?rGwAfFXNw+a3qL23iZCzFE/9MSZLIq4w0Qdi/eH8NCJSVua1L2rrx0Cw4D?=
 =?iso-8859-2?Q?EDOyLz810zUFr8Duerz1WH10SY1wN97if1WYO9IRvcaCgUfV8gCfXnPab4?=
 =?iso-8859-2?Q?hadfM29j/+R+7G7cbuwTaaD3NW/4Us4ZARTey9PKNkJFn6UWoGrBXt9j+1?=
 =?iso-8859-2?Q?3dWNpI03+om96SPvU+drqaPHaN5df7y9gkfSDc0oGWAJpgywke9eGxh41W?=
 =?iso-8859-2?Q?JG0A7G79OMdEXbnYBvsIaWXtQo22945VKCG367BW2ZbbKgcHMvX9XpCyut?=
 =?iso-8859-2?Q?yeNKfASXdCZvb76vxv8qRPc/9sCUEZloqc8X8m1YpqMFaQvSCIltaUEWu5?=
 =?iso-8859-2?Q?6qFeDINk9sQTAcSHTE1TTeegsXQVT/9PLGBFNZ8PUfMZ18yjmnY0lh4Mrs?=
 =?iso-8859-2?Q?7v8sTI4EUxWjwq5rXs7NWzgS2hWtXhAJzodBw5+mnD3OtyErIhHW03ftIk?=
 =?iso-8859-2?Q?s3Q2PG/dkPJEe1w8+4uCzgwWAq9EaudjPWtXYdR71ljtOWpucRko5LQ+hr?=
 =?iso-8859-2?Q?4vELEfj5j2s2FFf0SamBFFyOrPa+0riOVG3Sg9eWN043OSrL0A6+3zCw30?=
 =?iso-8859-2?Q?6MD8d1xPuJHXvv9k0PZklWjs4b3l6bI2225bfOf0DQMsewLW7fqWoo7P6S?=
 =?iso-8859-2?Q?T8slXI+mAsaE4xIVYAmk22hM3fIWdRTM4T?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b44b1a2-3bef-46c1-fcaf-08db2169dc0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:17:55.0218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +jWXWy0dw5SZbLPHEafaQq0k/phZZCZ80pyByqRkzfxfAfZhhVopG7YRtfb5HxRPC39JXNkxHaFdkXFhHudDTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454278; x=1709990278;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Biv43/RcmKUww5w65sFPjc6x3kUvFtwnSb5reZgUkuY=;
 b=nWBxHdhXcB1/n7eah90C86uEfTsKrA3C3dcmF2KmRTqip15wnDolCVjo
 Pfplays+8pc4cLbzYdWy9LgcCHTQBAePh0al1fxM+venRxfzyPg0X7NTx
 HOfuy6Zzd29vdvKrBnyvT9zcXAubKUQoWmrmdzqiHxAQCTaL42iPhNXCd
 gd9JH3gBo8XylYEhZjlP8EFjZGITElKpDEayX5aYNBNA3Isw+tDajVBmL
 p+xjvXJoWqKtr9/nQ2KNjt0/OxL0qBkcFLhDS0Nis6MLtl9B6lu038/SG
 v4sOT1d9s90SZQjtf/pHfi2eL7jdkPpLpMeskUXQoBDbxhDTpWVmrwEyd
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nWBxHdhX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 09/14] ice: always report
 VF overflowing mailbox even without PF VSI
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 09/14] ice: always report VF
> overflowing mailbox even without PF VSI
> =

> In ice_is_malicious_vf we report a message warning the system
> administrator when a VF is potentially spamming the PF with asynchronous
> messages that could overflow the PF mailbox.
> =

> The specific message was requested by our customer support team to
> include the VF and PF MAC address. In some cases we may not be able to
> locate the PF VSI to obtain the MAC address for the PF. The current
> implementation discards the message entirely in this case. Fix this to in=
stead
> print a zero address in that case so that we always print something here.
> Note that dev_warn will also include the PCI device information allowing
> another mechanism for determining on which PF the potentially malicious VF
> belongs.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 6764e677a345..185673afb781 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
