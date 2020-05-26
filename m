Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C600B1E2FE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6849620384;
	Tue, 26 May 2020 20:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sJlOg4+h94t8; Tue, 26 May 2020 20:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 66292204CC;
	Tue, 26 May 2020 20:23:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5DAB1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B12E3204C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C6ZXOVTkQY9Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:23:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A15D20384
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:23:18 +0000 (UTC)
IronPort-SDR: 867CKtVouUPEjwdGgejbLQCwOFdxoX5WMMF0BG8FENdZNN071YfX034DvnU7X5LF5V/ZIZurod
 dQhinn3g/ymw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:23:18 -0700
IronPort-SDR: +i8pJuM7kUhKEAY5tMhTh/DqEIw/7kxiM87MSp6NSgism3ZIyWW3H8Qas5JSzKO7vR+/a/cUeu
 bouVQt2TcDoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="442228474"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 26 May 2020 13:23:17 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:23:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 May 2020 13:23:16 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 May 2020 13:23:16 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.58) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 26 May 2020 13:23:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZXIlkRUOr+6T3DT9Ea6rRDu5G8IEl1XfA41r7B63DYJKIcQVtcl2HV02vVptx9JU12dqivrfORQNWtXTnkD2Q0J7zztVPGnhPlHzsGfb2+DIvMYy4mW79vibIIilg2kn0zEA35E43B683MX/8lDL+bM25C70TbBUjFjMlvD3HSPLI2Xixr3aG9R/HA1ERCq+lOU0gBuf+Fny+FBy2mhXIK9IYGUSuYhJAIcCPZpmQHqIeI+SDaGvha1ep6wgTyN5VVaWCHFx/z/J9fTVVVrTbhWEqAbMgkKcxhbXvWlEfOgagYUfrAsy+zm3WA/72RfIhw7+8MXhD1B1gEEy2dVOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l3zPDoHOptL3XduKyC7uJwtL5ZObGm3hDv45io1qw8E=;
 b=NBU7HtDl7Oo5ZntXkpfVzs2KgvN7XeHF7goZkg6k65LFW0vUQ1APt0xj6AgJO+QYLjDzaVC/A3Zei9X3YDqWkipgrWSQbBQzKl2S0FvgirtHpTX1CloBt1zqf2iuKumKRctMQAQxGTMDTIOiEk0mZuu7LPvXabNRFFVKl65uZlMTicHZj6blhwG3EYTH3TGv7SLzd5paDmlU7Ceu8eyiAndrx92YoUEOFxHyRhqermci0hlmXy27WT4cpncUYS+H8239WQ8LqROoSkUmseN/GSpsZCofSq47wGUcHuTteUm3mTWzLA6tA/AXsYGCwdEytyw14zVvYSjikXVy5ngw+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l3zPDoHOptL3XduKyC7uJwtL5ZObGm3hDv45io1qw8E=;
 b=Zi0ZNYQXIpf4cJ4EduM26/VY6OSyUlVjUmU+wEMZvXy7JU4s6835QwH7VlzCyXq3FIUItgLAsQ7gIavgURtPuGexgoRdCu8XAOS+AL3C3k4RpukPQ0jRGtTXqaAxYUVN6ZSt8ZDJGEXz2Bvt4D24XOHO+IISAH3k5zFqOUk4imo=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1353.namprd11.prod.outlook.com (2603:10b6:3:a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.26; Tue, 26 May 2020 20:23:09 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:23:09 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 03/14] ice: Change number of XDP
 TxQ to 0 when destroying rings
Thread-Index: AQHWKxtjfmQlUlAvLkWHXJHj41s68qi64KMg
Date: Tue, 26 May 2020 20:23:09 +0000
Message-ID: <DM5PR11MB1659CF09488C632C6B8EC8F08CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60605168-c9c3-4fb3-e7f2-08d801b29b2a
x-ms-traffictypediagnostic: DM5PR11MB1353:
x-microsoft-antispam-prvs: <DM5PR11MB1353F1D246B6E540C9F754258CB00@DM5PR11MB1353.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g49Og9/txpjXGP0W6XObx/KC7fnhA5/YTOU/mqWe0P+9GfV6whamxQj+OyG/SYueZtwj+nBM4kR7jZieUKZD7cTCQzgcdUKqf16XrFCo940OcurM0Z0K2Xd2LjmcXI1ihwIK2otggbeKG+DT2ZDuK8weEOvwgONK94UDu9xiu21Yh0O6g8kJDV/CnQUlxtRMP/pvcd46S8TsPk9yUhSXHReCem/6KenjYevMc0I3qa46W2LxCpwL8QpoJMgYZh1+qmQh/yWmae0MaUfBTKikmNkSZUHQtG0Zj8LTciRZ/35upomthtuhvhkAyBKSVOu8ZXIpDa3+9rcMWTVgt8oRYQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(366004)(39860400002)(396003)(346002)(8936002)(71200400001)(33656002)(4744005)(8676002)(52536014)(316002)(86362001)(478600001)(2906002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(66946007)(55016002)(7696005)(5660300002)(26005)(6506007)(186003)(6916009)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: gBYtG+OFCDPzDqzD/ZwZHaJxAxbkdAvD1g50GHhzwYJ9oM6Dqyxd99xICfKgauzSYSQmSzye7POJn1b/wynpt5q86Rq5Qde6BROHBAIsosyrYdecN1NCJw+xLXmKPzDsQSuQjjhAeOmqxt8AkW1zyKQdTHNxi3PNxPNMDMEVxuz3+8+hdW8P9oq/JctXHfn5lxbLA+xd73S85BotK2ObVy6I0iMEJ4DBpLgpBDYnpPWZRNfvVXMWXxfhZdDQyi9df2YhYj1RVY3rSdGEp/eiwY+qIN+BSYEYqVpV+itojM0SSqLPJ1eZV/uLUEb2fkboV1tEfgi5OQE1LfqYx8Xkjy1QxtHvLYIYQGnxCsPlzkFkSvMjbp5j+e095Jgt2Xaz8yFWjVbouvTP0YQSrgAWsf22JK060P8qcXBMyvkCqbqHbTDmT4lUcrUrEtIPeCCBC6e2adfleJbUdvZSDHUHCN5nj3PTTMBBoqyl+ogFgw7U6K9D3po2let1siIHXr95
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 60605168-c9c3-4fb3-e7f2-08d801b29b2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:23:09.0542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hzqKl+ploV99DRFoLlGy/lddhjTa5PxFxDW2F3KpHDQY0APav0VrymLIdbbIl2CfAP0fPxnPCUxs3Zorkxw2S5eT3NllQFvER/ym2XAFCZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 03/14] ice: Change number of XDP
 TxQ to 0 when destroying rings
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
> Sent: Friday, May 15, 2020 5:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S44 03/14] ice: Change number of XDP TxQ
> to 0 when destroying rings
> 
> From: Marta Plantykow <marta.a.plantykow@intel.com>
> 
> When XDP Tx rings are destroyed the number of XDP Tx queues is not
> changing. This patch is changing this number to 0.
> 
> Signed-off-by: Marta Plantykow <marta.a.plantykow@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>  1 file changed, 3 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
