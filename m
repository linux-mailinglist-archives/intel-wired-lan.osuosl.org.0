Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CBB1B2EE5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2020 20:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF1E285B8A;
	Tue, 21 Apr 2020 18:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CWFMRxHXt1l2; Tue, 21 Apr 2020 18:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 001B886DCA;
	Tue, 21 Apr 2020 18:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 505461BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 48D2D85A9E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8xr4NWycvu-P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2020 18:19:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 87A9B859D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:19:11 +0000 (UTC)
IronPort-SDR: hl2teWCA8c4FhsIUZuDu/71fuZGrEuRFT999oOdv7cbhXtqvoWnHkhJRvOuVyBw0AurZ9floRy
 Q3rPTZrVfjEg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 11:19:11 -0700
IronPort-SDR: YWj9OzvhjLqxhRjYr8nU5exIaS6kEMe+3zA+OdELFqyxIOCuJXlDpHNZlmKDfZfi51L9wA4tsu
 XxOYpMKyONxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,411,1580803200"; d="scan'208";a="258794878"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2020 11:19:10 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 11:19:10 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 11:19:10 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.55) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 21 Apr 2020 11:19:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRXDroHJoRjxv276JxF6vTfGoouISPYNvMNH+gypfaN0fsHjxDVz810T5AbXni38hzOy91HxJ+4XMm9AqpWScsD1qimaoPeNN9jB9lIGj9zZ5VxHt8uReVHXMVNurspMQJndEYXuCJBFv4REkzduc/0reD9UlWLyJDQvn1Gf2Ld4lgenmmrpZ77cQG6tmJt189RCNUxZtzgYmIoeLOFtYtVnHLEh+AmoeX2nQQ4tMXD6TZGO/RJz1kgoJgCkz6bLtS7wO8lc5lWEBDcgI7Z2NrngcmBc6Zqg2ZyGexqpDsfEVEnkHRzrEC2yMDZwfWoEsPaG1l6yzgJIah/1eVF4Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iZ2xjGDlyCFXSzpNWFTACTow/35GlLabeJKEeOn+avw=;
 b=blHEvmRpRjzEfMEeAajB099Kz01C+RSJNyz0vsQkGc9LJueqvseQzYGs+2vtc7wV4ThTs+FMtxfSYJaQ1Byc9CzhGoWWAbjxQtSicJPizNSiDUoH0WGz9/O9sM/9m4fI1JAdEzPaHTzROFM0F99GqxoUf0tICIXwARaOi5iKtCAZlboHQatIjbINzcixDVSWXK6fYNaYWZu7NDl6DvX9WQytwnwKWBhfMrD6EO3+1e4+fcQnJfGk3x0yG3zMCxfEmbdQbpNrczNIj2viwCRRRgmsqi8Igb+eC4StRAa7oMKy48mfN2lb8HtSiVamicg7/M+wQXWQsU7EjZlNzOLB+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iZ2xjGDlyCFXSzpNWFTACTow/35GlLabeJKEeOn+avw=;
 b=tjsTZn8QLt8j4AKHgbX19gilWs+tD/DPU2aAQyFhyuuII67TrtR8gIjEuGdrq2RN7uCQTyQWVFQyxzey6EE6fL/NfV9FFZxbuBw6ui6KiZNW0NGuFxj/7zh6v6dykfbzekCaRyWF0GEOA0cbjc4ZxP8shbiTNsJekkfZn9cKwYQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2761.namprd11.prod.outlook.com (2603:10b6:5:c0::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Tue, 21 Apr 2020 18:19:08 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 18:19:08 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove PCIe Control
 register
Thread-Index: AQHWCAGoc9ye/+OEbECtEZwUMdEox6iEAoBQ
Date: Tue, 21 Apr 2020 18:19:08 +0000
Message-ID: <DM6PR11MB2890E1C08A2BBF37875C586FBCD50@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200401084320.26165-1-sasha.neftin@intel.com>
In-Reply-To: <20200401084320.26165-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fdff37bf-ec8b-4c04-3bbc-08d7e6207bc2
x-ms-traffictypediagnostic: DM6PR11MB2761:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2761114B9E352A97235A483CBCD50@DM6PR11MB2761.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:962;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(396003)(366004)(39860400002)(376002)(346002)(136003)(66556008)(186003)(86362001)(8936002)(33656002)(71200400001)(55016002)(110136005)(8676002)(9686003)(81156014)(7696005)(66476007)(316002)(478600001)(5660300002)(2906002)(26005)(52536014)(66946007)(53546011)(6506007)(76116006)(4744005)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cUxfitRLssdvEmHVputjU0goHKKgWUXWEXbV0H1hmLSYQ/26KptGegiikLPQY9W7hrhCiScpB1hPLbdjbL8dnvFMF6yiz3I/mhcsUDBSxMS1y069+/I9Bus3zB+YcPkJSRc/oUK1OolOLoPZqjkkhbFzBQ1l4fKqdPSwlVP6+wrlYkgt0mT1Ca2yM9EfgwUWNmws1xXmcZawgrXIfD87h6gvUpCFC7rFeQwrje2TuI1ZL9ZGWfhmMj4wYM39i0jHDh5OKIshU7xC16UC9zevEmpbIW/TNTCdUa4XrTVCpq1KFWXgWepRtdhx2Sr/FE/F7C6CmeC6LzSkPosqhc3wTvToETEjQmgY6H/ZVFCHQ9cXVTUF5HjUnRO8Vk04bdDiAKhaX45hvc4UAeKEtZU4XHrl3WgabBEbf9zf7MbxD/Ny2AKVphQkRuXCxaxQGEyX
x-ms-exchange-antispam-messagedata: Ng/uc694GI4hVcLHifTVqy06RVtAtHpjRSKkp3vrjvpndsP4+LB1YhDvgNDKHhnPEXIYZsq+eBZn2NP3wBdvdmwLxkN7iZniQOiapKGI29LEV7jBnJslbHBcPpYV7mxwx2UWjudJp5lo6TlVnkMvVQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fdff37bf-ec8b-4c04-3bbc-08d7e6207bc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 18:19:08.4793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9ITZ5jEOTIWYTwgUWHg1EdWF9iDcTEqttxWvJ8qxYKKMkFSC+FRWL2BzE+t90XIeNgFM9r1YODMdgvFax24m3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove PCIe Control
 register
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Wednesday, April 1, 2020 1:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove PCIe Control register
> 
> GCR (PCIe Control) register not in use and should be removed
> This patch clean up this register
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_regs.h | 3 ---
>  1 file changed, 3 deletions(-)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
