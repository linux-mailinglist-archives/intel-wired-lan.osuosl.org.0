Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FF91E2FEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8500848F0;
	Tue, 26 May 2020 20:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rl2aplVJRPa1; Tue, 26 May 2020 20:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C4CD811D1;
	Tue, 26 May 2020 20:24:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 684A21BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63CF68838C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jb3D40kvoUwZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A42BF87552
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:04 +0000 (UTC)
IronPort-SDR: 3qSX4++cIXj7Cf9Ysq8hdSzpK/TmDMd/zF9ntu3fiuN4275hYC8IQy0xTpdPimOkXmHBMr5GEU
 dEHCecbfxptg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:24:04 -0700
IronPort-SDR: MtUaNIsuVj0t++Ww6sBdSmTTBEcqAS8sMQs7c5wkEwIINPvPBLECv4g+VeF0tRvd5XDODX8flJ
 n133sHBLtjZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="256568149"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga008.fm.intel.com with ESMTP; 26 May 2020 13:24:03 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:24:03 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX112.amr.corp.intel.com (10.22.240.13) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:24:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:24:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kalyWOMGZcqk0cfy43EAt6blOkU5bo3UCx8ahZwm4tui4kXk7akrF2vRmZ7oitiAZc7YZCSQpd/WmR+1SV90Q1s9bJWmH2VgnZJAsk5Zdp2MMAKq9OyT19ymfOW/pNWCo8pIATLrmfwKHuOb1mcQZdql6nrWN6Jj9tFtsWCdsAPEc+8oDO4txnAX3L4G6nfQBTLRYBSIGuOSpvsbXR3RtOWkInPi85f2veaaB+eEO3Y5zCoMx+QKKb3F2KwBa4kQhmzs7tpiFMTACrH7Sa5VGw+CNr+bDXhdNy8FZ7zcrI5MVG2r7MM+RF+nTa0JA/rU76IwodTEUaCONr96UTSieg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w65A4Nf4r97s0oYfZK/4BsPMHAt+kNwgs6YbADwpVYw=;
 b=iTxH9Wf/xAvxnA+hd9f9mi+ttSakV6IAQyDLKwSzmFaQMGlrHBfnbboN4JMG+VGZOL0S8Qt520o2fZqJrWaHsRug3CX7q0+oNcsh/XlRfJfuM6vA7dkfYx2lpF6t4e+a+j6E2LElBgMthhfjrc/g4l3JdY77bxtuCFE/wd4HJgKzeCjcm4/dltNYjWKHJz3JIZ0VpehFN8YoRgRiUJruG75wDKw6QRRq2qRdZ9GMJn7oinDSOJZmQzi4L4bHZXb0YRyFgzkII2kEvyOFOPvhVON0UNUwvjj6KfYSxUx8YfJLfzoh7ZRJhM1Mab7JQZ8Y7YUXQlSA07cE+IauC7Yr1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w65A4Nf4r97s0oYfZK/4BsPMHAt+kNwgs6YbADwpVYw=;
 b=s31ujtgKb2MK71r0uMntb3bK0UWHn3lCS1PzpUTd8iS+5+JWa7GzWRdBbNK1QPZWlrgenVz0Msid4KTrCzfmxswsQ5WthI0gfLXJhFzWbei7QoJFzim2RpC+TC5BJAq42CYPTR1pS0Yex7p8F/unzfzSYOUhFu0xf44SlyOspvs=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:24:01 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:24:01 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 05/14] ice: Change number of XDP Tx
 queues to match number of Rx queues
Thread-Index: AQHWKxtVHF0rT2CYwkOBp2XeDBdDXai64ONQ
Date: Tue, 26 May 2020 20:24:01 +0000
Message-ID: <DM5PR11MB16597327FED5F3F8F87FFE248CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: de979fe0-b0cd-4b24-77d7-08d801b2ba58
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB164376356D388FFD8592DC4F8CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q1AQLX0UslbDaeCNnGi/LR73eQklnA3chGZsXyYX7U6OGMdi2ZIg9ORFeEQB6LFtO0L8H4qn+/hUQvhwOaPqLIh6Q+nmF9HLH6qSzjEllnp/Z/S2Uh4okt/covi/yTUTOZEotggspM+ld/JAVf5ZZ/V1sebM7wO4E3HzuXo5C4RbAsc3Ao3g6nZ8g3mrMMWdf2aD4NBvKj2a43jNkhXIs7bgNEGubNFpy8EhdWZoEdyF+5ykqYIXyyUuz0+uL+1020gFZuQB6aNLBgVQflMnbpUH3ohPpNndnetzIH5aWWo2CigF+Evm0sFO9qpqyTlg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rnelNn1K83Orwke1JihylnG6XnFf/5bKmWC+bl/eHyejO19UlNKKzNQHNXcVc/pHvcIt5APVM5sX33I419ooVwQzk+2LyT0jWx+pZXmM0BTOxJufIP1eV4oETyVo8D1tJWGFBhfz8SIgF3w9ac19TLZeU+08hRPyM2s7SfNfIyFYwTX2mljK/ez6gPEhRGf5Lfqj7dSTjahMUSndSWI26RdgnQVoW97wNHs/bwhnmmkeMqSYMj7FOE+RYeKGLLfnlcR5hQGkLF1xceglhSfMLVC7XeHpo2S2CvfHq3WQ7ggyQ1ytUQHOQasOJuu/G3deIiekr8FmNrfKgRGad3zleu7Bgfq/mqsDAavYsqWYAjkgLprOS/6aWdX/Py04TCgj4va/BpJz7VulV+hm/mQzsm4dlu9tcZLNgpJC9FdbUU1K9phVi5Q9LXfDe29j4D4gNg7Hrc7sxZIx4BJxUaJuswSbRLIafoyiXRHlDIS2lXAsS0ua0swDHCZRZIIbTL7y
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: de979fe0-b0cd-4b24-77d7-08d801b2ba58
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:24:01.4352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y0483Bu7HroiuD/wS6unVA/6OkR53I9Rui3AUd+79TcE52qD6wiNQxjTplGr7jYiKOYxWlYv0jLUCdRDXILYXCp+RfVEr3z2WdJQeVY7biE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 05/14] ice: Change number of XDP
 Tx queues to match number of Rx queues
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
> Subject: [Intel-wired-lan] [PATCH S44 05/14] ice: Change number of XDP Tx
> queues to match number of Rx queues
> 
> From: Marta Plantykow <marta.a.plantykow@intel.com>
> 
> In current implementation number of XDP Tx queues is the same as the
> number of transmit queues, which is not always true. This patch changes this
> number to match the number of receive queues.
> XDP programs are running on Rx rings, so what we actually need to provide is
> the XDP Tx ring per each Rx ring so that the whole XDP ecosystem is
> functional, e.g. if the result of XDP prog is XDP_TX then you have the need to
> access the XDP Tx ring.
> 
> Signed-off-by: Marta Plantykow <marta.a.plantykow@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-
> drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
