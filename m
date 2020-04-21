Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A20F51B2F1D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2020 20:30:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1D4CC2000F;
	Tue, 21 Apr 2020 18:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2XBkhCyG4rsn; Tue, 21 Apr 2020 18:30:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52CA3203FC;
	Tue, 21 Apr 2020 18:30:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 926BC1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8481685F50
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YiTtFJzXOKYv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2020 18:30:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E80BA84A7E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:30:03 +0000 (UTC)
IronPort-SDR: I9gcseY0lcmlAYt7wTLL3pUlqltUqH0qB1EQKAuCaW0KgFDAHWxSZSss3qsoCejNfuU12YsVS5
 GanydxoC+yIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 11:30:03 -0700
IronPort-SDR: hZBNkoFmMAw/cGN3P9Opexmm7NXuxfeOUOZa3Ml3P92hlXeuDww0VMPZYPpF/5ClH3TDwCYxH/
 ZAMMXsDASyGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,411,1580803200"; d="scan'208";a="258797645"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2020 11:30:03 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 11:30:02 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX159.amr.corp.intel.com (10.22.240.24) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 11:30:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 11:30:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bw5m+6uKJkzsazCOmY9OL1t8b4Ejf6Mzd3TTstuYKqPTJhR6v3WJYPy/TS+jnvDIt8xjON5AJ0Ew+r8ANmXXFRRnOX+8/uLsWPZP8RlANHOjIvzvj8e2/j9hEPTlQrFZVXu+e0OASPhzw3cFWYU3buHpBmZkoz5vui5Q1yp510QdWczK4ZWLkahw5RMWqvncNndaAxCR9BV4UV7iV1Kb4EfYk//NWMvPPwQw839fXISrhTMn+O74oNjUuMMKEU7Orc2gkRjq/WAvgY+ibEaIsn+SXrmFdEHfj6nT0Ml6dInBt4ILAHo2FaWoCf17O4KgeaRVIMaJ1c8j9Eg3Sa8ADg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tlqLD1M60zTmC5gyV/haIFh/MuetUQhKeANAUN8UTV0=;
 b=Md+qTSgRTFsMOWLvZKGx67tiZ2uGjpbp5wZRzuUqvQfYkuva9vfuNWWlUyeJt3q8FYjiU3WcAgGxEfEfn9JOkm7VRy7rPToEhswf3+TIsGR3DYWgulxNIxdF9++UdRbE6XL2SKygrX/4Cc/1cBJ4n9cyqToHUc85ktMomsdexB9gmUHC4ulxo8+HUPnImtvgPaYQdNWNfAhpvF0Xek6YVZ0uRnlQIk2x7NHwVg8/HWs45NNK72nI5MzG13p+OqP/M1+EjoQK2bxu3hHiIgMbuJStYOySqltrtxdWO9ua3icExXHb+vkJ9+OktwT0+UZJzksFT5j1CzTL0m1KgyCqAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tlqLD1M60zTmC5gyV/haIFh/MuetUQhKeANAUN8UTV0=;
 b=hN82+lV/2IWG47FptyLVF4aEjU+7aG2ICN7QXcveV2C7BE/qk2qQerqiymF+3YhQ2E5uJ3Pr0EP1z4wFzt6al6pnbhcjCDo+A5zHaTlsCISfw6RiFG0agDnm2s460dnwc+RQJahnYpp08dUD1W3U2Wdsoy5/5Gn9sI67SyRk0YY=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4364.namprd11.prod.outlook.com (2603:10b6:5:201::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Tue, 21 Apr 2020 18:30:00 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 18:30:00 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/4] igc: Rename IGC_VLAPQF macro
Thread-Index: AQHWCeRWRD/ORGbzCkGmrZ6XEdyMTaiEAcbg
Date: Tue, 21 Apr 2020 18:29:59 +0000
Message-ID: <DM6PR11MB28906FE90989C6C092F5C032BCD50@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200403181743.23447-1-andre.guedes@intel.com>
 <20200403181743.23447-2-andre.guedes@intel.com>
In-Reply-To: <20200403181743.23447-2-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: f0843406-6080-4fba-78fe-08d7e6220013
x-ms-traffictypediagnostic: DM6PR11MB4364:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB436475BFECBB595BFECCCD5BBCD50@DM6PR11MB4364.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(376002)(366004)(346002)(396003)(39860400002)(136003)(110136005)(2906002)(4744005)(5660300002)(8676002)(86362001)(71200400001)(9686003)(55016002)(316002)(81156014)(8936002)(478600001)(53546011)(26005)(6506007)(76116006)(64756008)(66946007)(52536014)(33656002)(7696005)(186003)(66556008)(66476007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0+BPnL37B+g29v4juUB30g5uqRbnH4WEertMpn7tzgX2bmIbHpdyCwC7IMhiwXa6Uv/ZYhNsK6q7tQcpnV0u3y5LhOhJrRMVZoUvi5HY/ynKQZ/s0UAoLSmXgy+/wwKRAMqjrvoxyVIeg/S16/47sNycaG4zOKLUbPdRqp43+sgMlpKD+b6gHq1aNSUgwa/8caIVW12x/avLSsZPiXBXVT1Opc7dyUTVPlmejMaw7kSvLSa1MCo+VnQQ1j4RvxGp4K3Vmlv5fXw+oxHYyZk4hKI5sg7Cn2nJE6s5SwM4utncZnLzWulk/Endhr4ba2a9g47TggbTI/J1JyrXxBP5SOdX6mQ8t+gPR+OrIFPxojBSCHRSGygq4KLQRfrEtXfFHcralRZHMBH12V8ZB8+E3lIKgYPlee5S9z6SW6qeeqMUIg2E/srO4hsa/R5kDD65
x-ms-exchange-antispam-messagedata: 6F8NTmm4kODfQyaTMteiOiC4z53t/eohRw3dspJ4mtbXLqxdbG0HWtGwu8pb3nCS1ROBhD4iXO5oBBXJe/FK5CBjwe/NPrJMDVrtYSzUxpuxIl8E9CwJ9sSlQIR5Mh+SPhKz6VQBdWjZQQH3Z2tZLA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f0843406-6080-4fba-78fe-08d7e6220013
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 18:29:59.9857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nkWfwgxo5NNWp7zMRSKxYYQNZd+EeLCweRBj8JTpikCjv/9gY8NrLVIf9QG6tsUjOrmAzOJz+st7mItH2cgrgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4364
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/4] igc: Rename IGC_VLAPQF macro
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
> Sent: Friday, April 3, 2020 11:18 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/4] igc: Rename IGC_VLAPQF macro
> 
> This patch renames the IGC_VLAPQF macro to IGC_VLANPQF as well as
> related macros so they match the register name and fields described in
> the datasheet.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |  6 +++---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 21 ++++++++++----------
>  drivers/net/ethernet/intel/igc/igc_regs.h    |  2 +-
>  3 files changed, 14 insertions(+), 15 deletions(-)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
