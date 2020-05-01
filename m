Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8731C1C2102
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7CA07261F9;
	Fri,  1 May 2020 22:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptqEaoasvTSy; Fri,  1 May 2020 22:58:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0B10F204F9;
	Fri,  1 May 2020 22:58:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA4C01BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:57:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A112B21543
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N-Oxf02SFjZD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:57:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id B27FD204F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:57:57 +0000 (UTC)
IronPort-SDR: m3KR2ONxyG0yLdEA+hY+aaG5fg+WffaWkcJeonSipkYMq21YOHDC5XfCnZZVoqcCizN3DcGkMA
 btvN0nbfF2TA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:57:57 -0700
IronPort-SDR: 10sEPbodls3hisXcP+vzDxwInl2N4rowYD15z/nR+7KRh8J44Q0xdfVQZD7t8IqyBOTiv+M531
 w6IRoLr9ZRRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="433452236"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga005.jf.intel.com with ESMTP; 01 May 2020 15:57:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:57:56 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 May 2020 15:57:56 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 May 2020 15:57:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 1 May 2020 15:57:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LyOOGdV8rMa3krYNWDYdRghLlNws8x9CUx3CxVPO1nc/iK4PKpZz7dJnzLbJ+M7ZBJ9CYXHlJiYiVLHDS14GklL4VBRJrU9GCwibQWEBwBchSYWQ0omvTiFrdQral127oyoidcLEFxruXHyiH7cF8I8MDskARmUNOVrPAyVuI/lDDABH9tL404oOUtzQq8BnVuBUHXrjpWm2KU+sILqlysPRS9Ch8h4olIhUkkDCurezDwi7kZ5uyRmSerTw1wDGKyhq2t7W9MLel6OHwnvHnkoUej6d87ZdC2Gs/ZCJJMcnn0HvjJni1pN0Oxzl7dQ2p3NCOk022u1q/U9zOqJX4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3eFtf+6bUdTkf1eIQITdNuZutKCziV3n8fgLLiVWId4=;
 b=nkThGdoCKAe1hVRLWfymel6KUzaU9dpOFJtDO2Ga3aI2q93nwWGRRewvCiKUWrsn2XrAsjwmmxdQHiycgXosIuG/e0Uy3W2l6OqNZkxlNVPP0rWrOVcuF6OEqlNrQw0zMiwHCHgPzLK8xflZSVoLz6OHpLOCjndLHX6by3WNUQULFO1DoJuKAq36yj3yohtBQUqbHhwD480d92PYI3kbB8GHxnaoEbfTNFrGiCH7ugWVb2tgi7z4uIrk8vIef1SzSofoPYK+DR8UUcivjJiESEXPVvQJCDN7gpcyGhljUtWpef4qMB95tU4EVZFq6EVEBIJM15ruOvHC8mP3RKtJPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3eFtf+6bUdTkf1eIQITdNuZutKCziV3n8fgLLiVWId4=;
 b=cor6/knCQXwVYN+gg6B+3uR4ok/j52Q6GautIIDzO6Jv+GlRGgfnFTlbjDdq15DQ3y7latK9p6ZgMulF9UXAXfdrj5axPbfuifga1Cozq16zi8f6hrGSYM5ZTAfldkz70Yja6C91JMS4oz5QK6PtTB3OH0tvV4Y7CHSjWrWboyE=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4299.namprd11.prod.outlook.com (2603:10b6:5:1df::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:57:54 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:57:54 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 17/19] igc: Change return type from
 igc_disable_nfc_rule()
Thread-Index: AQHWGnV8hUe/t3QzpUqvVXHbUXkXEKiT4rjA
Date: Fri, 1 May 2020 22:57:54 +0000
Message-ID: <DM6PR11MB2890464446F56FD2ACE70FB3BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-18-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-18-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fed5d1c-ba7c-44b0-816e-08d7ee23154f
x-ms-traffictypediagnostic: DM6PR11MB4299:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42990750F81C5F2BB1D70597BCAB0@DM6PR11MB4299.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7TJvfotgiyffiAe7erO06XV+/rENK6dZLaTIx6fqsR8LvPruHqHFwlVVJwcrp5ZdZTaqb1C2/YwZ8nvK+KDog3sE02ufsKUKJkW8/1ToxuRW6hCpRtuccwQztBLdDFn5Zu7h6ngyHCrBqgM8kyuZvLep3TRuDZr7x0mOKquDsCaXLVMkXI5AnEqVBLuuyLCh0ojUQ7ILYjY2n/TzwdfdjcLQGASGxi/hYKgWrxu4Ew+zzlDR7qKkw6wI/J5h1uBiJxDBXrydJ/bxVVQcYSf1feSxQpbl5S288anjCL14CA89M6KOkWuPbP9XalsThaussWSZTg9nowk1aC45TKUcF4l44D/w47R68/JF/3AXWe7INhJw1HTuiSvECZ1JejE7TH2ZsHt6QMQJUyfqei7k4h0nH2UviIua1Z+CxtXnJRRXSt83s6vAD2K9odc0/p4I
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(396003)(366004)(346002)(376002)(76116006)(5660300002)(86362001)(66476007)(66556008)(64756008)(478600001)(66946007)(52536014)(66446008)(316002)(8936002)(9686003)(8676002)(110136005)(7696005)(53546011)(6506007)(4744005)(55016002)(186003)(26005)(33656002)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rbHRYm/P2nT83YGVT/d3Tneyv5icFBG4Q9DkouFVStw7ZL1XDaqDga7tv9m78xj9IQxLnG327nvkwA/sDswxpa6EINvPL4hEJ5GW4/Tr+yW6JVtIi85NjH3WzUgDN2YvGKr3JtjH62F3R1PeRgg2CzEgLRsOmMxJYAw2l/RtLkYG3sY3ODjiAF6cxS9WUkIRoRC8zZFFi5jU43tbb1Hmq4bmqOPtATB++JsBNWC17XoKkL4L6PQLIvGix23IwxpVsd91Q1tWfZ/Pl7OABGdSmtbB5rUoy6/NmhNIs1UB9HDqDCVPmy69mlGSRMa/ofJ8dRVEGC6Pk8LGLG8Y7NOBYmB3w+s3xBVQjfAaJFnLtvFC87cy4jRIQF8c20HCMNKr0VV7zsyU4p+G6KkdGl++SzraQxTn4URDSmdZuztyfQHbRsVGV0YfHG3SsQdd9Z2RrqHvKD/O8vscLbF3hZsl/gEEmTloGQZdqpOHdH8RtGNqi3N5N6cbzNa0W4zHEcjppWnUmnWp26qbISH7h9kutZgdg1ZasRpdhSWFD7xtyfK+LuDUnK+7mprZLiJuWwtUTh/RATT5+TOmxw93JS/OaxTjv9Cl3nQGmuDaAo/21qMAAUrpXbc+FLbz1iDPgztlTyEqu23R/wbiGHRb4KNGo+Ww+UdKKppk5wwLLoGmnRwtpKutn+L92IpI8V4nFC4UYBRMlAzEGytM0YdeBvgkH/0VChgKfPgLWgJnU4YSCjb2vrTRX3NqeROIl8hUs98s3dTEqWDrdnRE8EgKsfqipVbI3uB/l4g5Cdhp6/qnqIN3x0g640pou9DN8VdH7rYy
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fed5d1c-ba7c-44b0-816e-08d7ee23154f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:57:54.4163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d9tmIigMQhqjEsD9kF9hukB5f0RX7AO4VwX7Cxkw5gsxv2v5Oht7xtdE1+rbFCw1jYUbBIj+6r5zN0x9shFIZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 17/19] igc: Change return type from
 igc_disable_nfc_rule()
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 17/19] igc: Change return type from
> igc_disable_nfc_rule()
> 
> None of igc_disable_nfc_rule() callers actually check its returning
> value. A closer look at why this function would fail shows that the
> only situation is when we try to delete an ethertype or mac filter that
> doesn't exist.
> 
> That situation is very unlikely so we can change igc_del_etype_filter()
> and igc_del_mac_filter() logic to "if the filter doesn't exist, we are
> done", and keep the logic in igc_disable_nfc_rule() callers simple.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 26 ++++++++---------------
>  1 file changed, 9 insertions(+), 17 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
