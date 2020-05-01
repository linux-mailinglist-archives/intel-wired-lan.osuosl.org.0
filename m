Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0071C20F3
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 355B621543;
	Fri,  1 May 2020 22:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOY6G9qGiqPr; Fri,  1 May 2020 22:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6B31A25EC9;
	Fri,  1 May 2020 22:54:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 469D91BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 306A221543
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TPldkoZbYUAN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:54:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B8A2204F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:54:06 +0000 (UTC)
IronPort-SDR: qoUB+UBgMCK2RA8EV2mK5xTI+HShKTcpVh9FqdTPPR6F4YTJ9+eXzXd+xaY4Ptz9X1C0rPEDLL
 nAIgRF9s5fBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:54:06 -0700
IronPort-SDR: OZLYULsQVvGEWqFctLcPOpYa2mIIultQisn0VfZE1eN5fUY8beEEz8TSfj3K4eDvfC9W0KRB4t
 cg5Df+t1C/AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="337738246"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 01 May 2020 15:54:05 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:54:04 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:54:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 1 May 2020 15:54:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gQ/1fkGCxLvi7cwXe7ClE4Nip0M88pEZhY0QQSOty8iyyE4CFDbIdrJuNo8f9h3xBfEa2Bh+PVpHwxUDvcfT9X3uCDSxQt9vioi3vMe3LbGLhXqv1V+XDWoM6Vmk6AUltIlvFOwLKo8ADB0G5Bw8XdC3UKTscDiTTBdaYwZUijpi1JZbz86moHjeT7Yo5857RLJT14ODpOPgaRXHK/IeuTk0Jak3ZeZy0kCYnLRlCgT/g+8nsfktWouVgWWLGdS3ckGRn5cGLMGa9QmJ2HSLxH+JBBcxrci+itXh94yrAw9A3YhARh5dZEBwJ3iKoaLchF8ueYcbeo6lIjnYTVZSUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eX5F8JXZsJ9cMRAT2r0MLgX9Wo6MzhlqqCPrzFOQ4qU=;
 b=DQZbriDfQpL2oLLmwpBEZ5wdfS0fpQpBU4Wu+LTbave5otJeEbW/XOjcnnGJUfq5MNFt31UERsMmtq8uRCcQgro5kpqZHwGCIyjnhH+Xa5TBi2Pz8wVV1UoiyiUqLhHegdFDnFO+8vswO2DBDmrKFtCK6moqYvgeOle91nlfWrS/1obE9QkausG9SqSo3XnModwioBlewczwUsw4DO4jGzc+fMoNjkmhOqFTgB4OTCseFwg2nfFHCcQa26qwK24R1qw0QKjuPnN1gasynWWYPwgr/B7TwMmb0U7CNsqSNc7CmSaeGd1OJnWUjUJA0FLW52vkZGFomvgLFAZkTmSh+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eX5F8JXZsJ9cMRAT2r0MLgX9Wo6MzhlqqCPrzFOQ4qU=;
 b=D75MTO7hakPjiRL8Odn0LnkpTOZDECzYU7/CX/N6Y1cfFLFga7zTzQbdRDRdgls4lH58x5pPArOqT/D5c71xXHS2LS42P4U62auhwBve+bgQTT9F1ZwCnwDXLCOhRQnRK04YC7wQudHazRthyWH9CsJ/tkZyQR8aJ+zPHVoZ76g=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4299.namprd11.prod.outlook.com (2603:10b6:5:1df::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:54:03 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:54:03 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 19/19] igc: Remove igc_nfc_rule_exit()
Thread-Index: AQHWGnWYLYUfLkeKkE2C635IxGbwkKiT4c6Q
Date: Fri, 1 May 2020 22:54:03 +0000
Message-ID: <DM6PR11MB28905E8C1981EFF7FF59DBD5BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-20-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-20-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: c2727d53-5f7e-4df1-8fae-08d7ee228b8a
x-ms-traffictypediagnostic: DM6PR11MB4299:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4299926E69745C18D634A35EBCAB0@DM6PR11MB4299.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NMnIZhQ0nw+ZZWUVTPubiDG81sA4Wyx47Md2oqtij5L5/OWioNCED0yjipUg/5GZuwb4oVxBRUTd9QhAjoUThB0ZZZ5ca6U3WDubWl2I7D/xIHXmI8yCSseogBB1HR1kXCUhQ3q76AQtT/Km50iNz/re9RFn+NjgSotQhuDlCg4aaWY9WxRw6V4TT8jpwdYm1+lIqMHOP1ispxFtV2qCSPferTLLaSniB6Pfaaee47cspQPxtoXipLao83/SXNMHx+bqK7MyuG/E1Cpp1d1zLs+20keezvUEfDjUtosVIlxqURQZK8b2eCq9OuI59tFBdROzrUQibOF7RTuyxLOHsxj6Og2r76NrSij9biYp7sd20Im2gAtgaVGcHfmgixdmoCd0YuheiKsbBiV4S+4zzxtt+bvocE+z9fC+OLF3vZ/X1kkCeBXssCZMoO2xpReV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(396003)(366004)(346002)(376002)(76116006)(5660300002)(86362001)(66476007)(66556008)(64756008)(478600001)(66946007)(52536014)(66446008)(316002)(8936002)(9686003)(8676002)(110136005)(7696005)(53546011)(6506007)(4744005)(55016002)(186003)(26005)(33656002)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6LbULevq0OvI6lBtTUN7ZUF5SRnQxnUCxC0CoyIsuV2z43rrZxHfqRW1iKVvXJA5nk2gA1a0AnKxK8ObRdD9wLut3QIB0ljrwqMbn3BM4UGoy38vOeOD+RBFBcD0TH8qb/PVey6oD6WZBOLbFmEeVm/ZRB59zSnbdQMMEB+elKXdldUol1HEWy9zeIRMVjv9P1nt8Vs1l4DS/Zax82oiVUujRir+gv1O1qDuKjW84U9ZlEQsH8mAkqUifHe8SE1HhHHnGMhkdwGLraaSBaYu1oGZ5iLiThGU/ImP22L7+ClzzwwTr426EjFPo3PrIORa7aqW/QwdTXrLLGiCFEMm8/7IFbZ/9JAH6oJ9R9g1bNuF5mhQY3vksN4H/PKeRZvWyQURhoQMPg7w2quwe3vekN6IvL9/a5kFFkiwH0k3E7AUAp/JmPg6e2VM9loHM071YzygvPsh44gLVac+H+PVjnk7FbKN7dKK/QMcEOVIMVJHy5IcLsqvsS4GF0EEWgl2ucXs4+RzYb2btnwz2lhfJhJIJtgWoVIB+tLVrxI37T8HBxrfTp/uj527zmAxNvzj283EbBXNOyx+oeWRv/ZFZaBt+9KTjqCYdZvyWyXTqOgvOrcQimaxe/6pBvRUOKXAub043rHqyjIMZs4WqKGl9qw4bpM8hdOvENk9KJTheRpt+TkSRk9owLJ8hqNwjYJ/+mQC4BZjs29rNdVEM/JMtUJg64fwvhUjWiIzx6E2B52HuPsL4eJ4eU1fxUuAe4vqwU5sJoOqmN6uSxaXDTMsXyIb++XaBGLRvYzqSwpNE/jOKRv87XBFU5D7j4kfGcVd
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c2727d53-5f7e-4df1-8fae-08d7ee228b8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:54:03.2827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tmmErjR1dfES8rLo5J4zC3vHU0lNN873zcDbBDAgjCUDIGm+OqYJrsNjprv/A2Ua7UrVJGJlOx4+LLYDVZH0Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 19/19] igc: Remove igc_nfc_rule_exit()
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
> Subject: [Intel-wired-lan] [PATCH 19/19] igc: Remove igc_nfc_rule_exit()
> 
> During igc_down(), we call igc_nfc_rule_exit() which traverse the NFC
> rule list disabling filters one by one. Later on in igc_down() flow
> we issue an hardware reset which also clear all filters.  Since we
> already reset the hardware, we don't actually need to disable each
> filter manually. In order to simplify the code, this patch removes
> igc_nfc_rule() altogether.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 14 --------------
>  1 file changed, 14 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
