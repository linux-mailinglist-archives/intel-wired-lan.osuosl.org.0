Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161B01D5A4E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:47:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B9CB889915;
	Fri, 15 May 2020 19:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mmhty0d17U6E; Fri, 15 May 2020 19:47:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E668489942;
	Fri, 15 May 2020 19:47:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78B211BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:47:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71E5389954
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SVtUkBUb5rWW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:47:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DCD0F89915
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:47:33 +0000 (UTC)
IronPort-SDR: HrOz26/Gapg/5dHuIzX6H4fh780t0FvgN9M65wXby2DLbYDC9N/e+JLavObqhH4k0p7JsqDbcr
 whZLZHtTi/YQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:47:32 -0700
IronPort-SDR: Eex+H5ZsbPROWBZy3mtwpglceQaU0aKo89zxNg/kcqjjxY9262fwc/k9mRAkXzTqpzFBJb7NFd
 t2IIXjIHh/ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="252131238"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga007.jf.intel.com with ESMTP; 15 May 2020 12:47:32 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:47:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:47:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rzh1lItC+YCV9AjxUaGLxVlqVGxaohuZZrHb/4JAue1JYj1mPv1j98h2qyT9A7NU8HQ+WlzTWYYGFnEw76+25oTBp8jLCJL0MLEKy53+yOCeUUpREQmE6qTOwfj2HeBy6iYEkkG+EGTjoUvDc0Ry3TDk5bf4/hq04qCEc2dzJGrlDXsKZHpy9OLtJ++J5cikpjYF/L1ybL+0TVUcCGdLux7E1OelN7mn27ze6jXjbTU5ud9JARsfNYAhLvuBl0s8h9G0DqKOAbu9OBqrVxBK0UmvC7M3C2CHUA6oqRpG7mgoGnKXetYKnq1fk8EDhWQ0VbrD6Mz/+PApNzNdno662w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pgqtONGou25EMNDYrhUHAjUUmmcF5bF/FQ2epW9Oxyk=;
 b=B880ek3RPaW2nqCO1LMDpds9TMPAT3aDAcyz6x8oMpMNTpWw0Cgd0cv0n+p2gsv0N0U+22HWdpPTwSh7gZH8FwCDYd6upQObMSC4HoKzFYEu3WnLsH5cQRCuMLohuLbFKujsA0WWjBw9aZgaHhE4DKuAfDsB8fHmKAbT/Jt7VM20/dqBwg1kANekYexMv3gTQeTceX1iWFt5ftHLvZ8LOS2vUFPD5QWejcmH7L/zInaTgBsT7g5h6a3jQsiLkO8ihL9aSzcz2KgYK5UMIZOietEaYiu8YZ2557Ikj6qpnYEDkSIkYRKLaOysk47gRa3ZMC+dqUTFI2/KoE1XbY+FYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pgqtONGou25EMNDYrhUHAjUUmmcF5bF/FQ2epW9Oxyk=;
 b=XDlSF+7KbBN9vn3pYUirvF2dtLZrXRvI4wKraP97HjFJZ14cpTiVNRGiKv65J2bA7yTGbxwLatkopVwgxchR6ndoNgDnV3QHAdcg6XMIsIFEElVz00R5SvaCH5KD4nBPxNGK3IoNbHqcqsBEAQZJvVyrCywifGfCIPQOcyZGO08=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1691.namprd11.prod.outlook.com (2603:10b6:3:b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.25; Fri, 15 May 2020 19:47:31 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:47:31 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 12/15] ice: remove unnecessary
 expression that is always true
Thread-Index: AQHWJNHP/10tdbh5N0ydprVyuomxSqipmaEg
Date: Fri, 15 May 2020 19:47:31 +0000
Message-ID: <DM5PR11MB1659E02B4C22FC3E69C339D88CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 837c0faf-68f0-44ff-b20b-08d7f908ceac
x-ms-traffictypediagnostic: DM5PR11MB1691:
x-microsoft-antispam-prvs: <DM5PR11MB16915CA9815B331D2884C2898CBD0@DM5PR11MB1691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h8DZVs7Nhmaxgr8Z/B/Isnwu5iD2/9JlXge1CVu5gKSBjmCZRY7kPPEGqlVeG1waG0nFgItJO2D2BRz9fRcP+9A5dr20P7R6bMD7uhIhByOYFt5uGrp/GR+wc5TP8h9sQDS4Lklp8dCLFtFatzfFAsrZVVEZot6AW6XTRIBe9bBywdFAw9OKhziH2bBqiZeTWcjcof+P+9nbaby/SEmGgWlVeRgmZgqzvCo58gHhvsz6FsekR1eTr2gjV6DBlstVfFUrqPJu8lJVyErDwu1Ks2JTlogGZ22xIIb+dzBnQhIJH3ZMmX8Kli1ob6pZWQLjhGFuEpLyamdDfpp7e9ISeDBSk90oeUepSC/9UQabmSA/NjSd4yjRB7H9V49B5YbkMOlwkJyfy08ciylfpI5bPw88K6DKIRAAZEFNgBNTd4vVvu/EaCSLSvSwOrkPOrdB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(346002)(366004)(396003)(136003)(86362001)(55016002)(33656002)(9686003)(2906002)(71200400001)(52536014)(316002)(8936002)(6506007)(8676002)(478600001)(5660300002)(66556008)(66446008)(53546011)(26005)(66476007)(7696005)(66946007)(64756008)(76116006)(6916009)(4744005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OG3C85AakMgJlIsjVBfZ+c6PXh8MV3isyZM0SYMLmxbPZLDD6+1N8N6ZnGsGzRm9PeSOFJfrFrxu0hdxd/ewXeLOMR//WTB9NbXH+3qwf3vSCStmwiVbOrrtraAUqBhkuehEZpZbKKNybWhSvzQ7l0pzRT+UnH09gbNsYbpGTclpa0HSdjm+sNEl+3xzKTmct1YPHLdfXwX16FJvokLclt9guELiVw0JFYqaAQfoGDvTNTvamVeAhqdu6y0iGELS66kfdT+MIUeQYp/6LXIH10Fe+OpuCslwiMUdtoy/3ZcgyeF0ynlFYSLCLioHxoZ/ZoqlJ1mLULUfg0d9pmgaHIPAFYAHAqWJ4jDB7pYBWs6EI29/vAZIBb45trztxCaDMcAJ1qGcVLAySApj5kQ6lfmLEteGCMZCjTuXvtcIb9IvJzHpJ7ot5pbPxMvesRmRNPvHXSfNkvldrwK9jlCrzp5BnuTUwGkHj5300pMzI7ULTqy6oarfRyRlf3+Pc4OF
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 837c0faf-68f0-44ff-b20b-08d7f908ceac
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:47:31.7863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A1gcFJAl7voo2I3+fqiaGFyx9SsPWAjyt8HexWehqhO0Sa8tW2C0EKBCWuGaJcZmZzTNe/Xf+YDDAwZYIuAtEouWRIoMSTxqse2M+sEjBLw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 12/15] ice: remove unnecessary
 expression that is always true
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 12/15] ice: remove unnecessary
> expression that is always true
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> The else conditional expression is always true due to the if conditional
> expression; remove it and add a comment to make it obvious still.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
