Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5461D9CEC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:36:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED30488809;
	Tue, 19 May 2020 16:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RuyrzZuDXuQO; Tue, 19 May 2020 16:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D69A887EB;
	Tue, 19 May 2020 16:36:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0D211BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:36:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 944D487787
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0VyD1jLfLu4T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:36:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C4D988683C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:36:29 +0000 (UTC)
IronPort-SDR: L6jpgeLSEqE7R9Yyf90R6crRw0Kj55NdRhnqXO4qy8xY4IeyOtJGRB+CzZlWIFvPDqJ/W1dhAT
 te+SvpsxXj7g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:36:29 -0700
IronPort-SDR: tb8wMnkhjk0V+jcKrRV8rXGLpkShYxBlN2jeVRzGxXC3+V94ViVcptvdPu2fW3ZSQqoZrqTXIi
 KdPWAQSNXMmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="267942934"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga006.jf.intel.com with ESMTP; 19 May 2020 09:36:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:36:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 09:36:28 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 May 2020 09:36:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:36:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SUUI52JGIZ6ph4Jy/0Np2DYcJb9hG6HaGdGIepWBvtiwCvCYPMDrJh8D0g5qRTIDu8ZEvqh3QgNywRxbM2ZG0Reb6cBlJ0CGKGSu9+smCQYLGgPosyUqfsqI+r1WuOJNZlOIE+Z4IsXrn3olNHWD2dwcxGXwwk9WMILlqMM2WmloadyDFGXYkgwawByOFwTL5+vykGjoce9srCCx+9v32ZchEhDGn79c4jlcEXkaIRugCk+Bo2J0+7Va4kqKLWHz1J/BimqlYKr6PijaXYd9uoeXtlbV8zsPRwsX8KzMKdIgtkceTzusUYaRNmiInyv76xVVzeMNHYw0qYLbVcuGug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYS9dfXDTQiDmP84ZCbVZi0ydcKvkX6BMlT1OMJVCCw=;
 b=duE3toXr7YT2ylZwAVn2jmaT0I2DWP91WhVTGMbNTxlQMCa/rdbySmCfXHhh1ISi3S5coQ7te8USFP6SvIU6kwcQd4lgKFWOZoOlZNOASPRTDu2e0E/KPLmejTFwqoGCB/wIKybLTITtkTvo8xv+laCJnZ5MojRSDiz3GqRitA4rdpqbSGCWdPAVx1f2J2GRKD2EVV7uFQaeDG3xaLdrDmKguMzidK0AiQvTBg1WBWO7zaU0n1xAMBzB6EZnQVztSGjqpg87RgJ3EmxbttHM3wp8xorAK0Tzq8Sk/EIMAIgdQdfsXV/kQ8evWikUkLq7sVniSv31i+yZrYFoCYjY0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYS9dfXDTQiDmP84ZCbVZi0ydcKvkX6BMlT1OMJVCCw=;
 b=GYBdiyPg8ZnqVaeQivG6Hr2zlQQ3phcjah5YqhzmWJsM5zvwTebp7R4/Zo1PEq760oAajQpLT2FS+Mu/odYKarxQwqg4W9AyE5TC8xEZxs5JN1onPIZe4VFq2Qi3JVPCy6+5fyT0jZOIuTKOgp5JtAIB9+OkT5JabkzDYNsFrB8=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1642.namprd11.prod.outlook.com (2603:10b6:4:9::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Tue, 19 May 2020 16:36:22 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 16:36:22 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S42 3/7] ice: Support IPv4 Flow
 Director filters
Thread-Index: AQHWJ/l4P+DEJM9F+Uy8C3wT7b0dSaivpyYA
Date: Tue, 19 May 2020 16:36:22 +0000
Message-ID: <DM5PR11MB16590DC1F635227ECC0878C58CB90@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
 <20200512010146.41303-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200512010146.41303-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21d478df-f323-4c00-1e62-08d7fc12c435
x-ms-traffictypediagnostic: DM5PR11MB1642:
x-microsoft-antispam-prvs: <DM5PR11MB16421DF1F0D6F2605B93F4D18CB90@DM5PR11MB1642.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:483;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g/pW2jEyamoavnPSKXpJO8a1TIECWSN7Lepqui5CuCLdH1ibM0r4MIU0K0dxwwiQypfoslE6pW2GnCVN7xVCeVkcSOrceu/nRYcXLVWLz/pDdxsahdWsF3Kg0sqUJmCHwYmJXZFFTrtAo/gcpknKzxnCf3S8mLdkoKLdn3gtBGbAQBOWnCG83dcVg4wmr6y4Z+6bNOxbpWVeOvFrD+aLbYBSZN0JHuRCRQ6D9miMpg/eq59bq2ByLWHb7COYB5oXe5iIFI2T2giNK/PIhlOxawWlLdR/MZJFtvz4xOaJvHz7EyWJ6FzIOmi1nOHqNBd0jbD0K9sT+YbuKJO/vD8C54b4bT5gqV5ef8Q6wVzBaAOK26NJXRsE/l5pNz75v4a/zCvAAFv7grF6mGvhxNqt6l5gtGQ0Gg5vvJ2SEoqkwmeR0HcyYTYtYBQLgVnmtdIE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(366004)(39850400004)(376002)(346002)(6916009)(7696005)(66476007)(66946007)(76116006)(64756008)(66446008)(66556008)(5660300002)(8936002)(6506007)(8676002)(478600001)(316002)(186003)(71200400001)(9686003)(86362001)(52536014)(53546011)(55016002)(2906002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: TE7PzBGtFtasge4pcK9PdBGNMUFVnekF9+ouQcIcYu6p8pykofkPt1RuWt2JfkgjoRQf1KPqCIs4qAl+9Tw9AeWXk39mEiUH9JR6r4eFduZWK+AHIPYX8fOf1GLtM67XAUizm4KIL31ExHu4XYY4iWSTcb7x0J2HF3dWkhD37BBMG/NODbrb1UtjB5scj8BYNQYDMl03lG/D3U6r++cHEWST0mm+W9fgp3gfLgK3+sBMWGCmk1kQAr1x+sKXUukuwgwGLQC2uUTpXrEk3AdSj3F1/rs/sC7KDj7mOd1FrouZiTplqY1bzUtnCoUBDlS0tX6MbJkgF2vAwH90QGqGvsURsv2w7ua9n6sJpEn/u7su3gcyLfASF5c8jmD0tIvcNmXxxa8YOS5RIBO6OmiUmmdCvXYKe+uBL8TLlGGN7shh7DfKETxh5fdi6Zst+d2t3tRxyt8gvp0L23D1mC1whlys+bwDU1VrIGKvbzK2Khs=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 21d478df-f323-4c00-1e62-08d7fc12c435
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 16:36:22.5981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1TKppIFsBq1odXGdM3S+nGtF6Q1xvlz0JxdQDqTJAannA37dVBB8Ei+O0HZ7SfnezS+r9JbBbic7mDQ1MqLLeumMvHoJyYn+M8tptn5/X0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S42 3/7] ice: Support IPv4 Flow
 Director filters
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
> Sent: Monday, May 11, 2020 6:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S42 3/7] ice: Support IPv4 Flow Director
> filters
> 
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> Support the addition and deletion of IPv4 filters.
> 
> Supported fields are: src-ip, dst-ip, src-port, and dst-port
> Supported flow-types are: tcp4, udp4, sctp4, ip4
> 
> Example usage:
> 
> ethtool -N eth0 flow-type tcp4 src-ip 192.168.0.55 dst-ip 172.16.0.55 \
> src-port 16 dst-port 12 action 32
> 
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   4 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   4 +
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 658 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 513 ++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  79 +++
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |  34 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   3 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   6 +
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 101 +++
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  82 +++
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   3 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   6 +
>  12 files changed, 1493 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
