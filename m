Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FFB21BD8E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 21:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B99CE89E51;
	Fri, 10 Jul 2020 19:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r0NihPCy+z1C; Fri, 10 Jul 2020 19:23:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E482F89E4D;
	Fri, 10 Jul 2020 19:23:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A16C01BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A5C622851
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KzVbNpYyKRBV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 19:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 3DE2220115
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:23:16 +0000 (UTC)
IronPort-SDR: 7Wb6EkwJ15956agHGoUWLoEj7jawbHPVvyGJ581mY7HdJ5S8ATC8xpedUfMGLA1rLVAVzycdUJ
 bFuy76tWblIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="135749712"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="135749712"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 12:23:15 -0700
IronPort-SDR: Q7IHIhZ9MS/z32L8GUquMf57PUEWIblRGCh+60Z+HWjW4muAvzcyL3XUnb2VHkeWl+YYq4XvzJ
 mzY1W8EefTFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="324762657"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2020 12:23:15 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 12:23:14 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx158.amr.corp.intel.com (10.18.116.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 12:23:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 12:23:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Llaff57rdG30S9D0hnmTx4XDb9gAgWVzkuHPIe6cgqs9Gh4jz70G8hdB2AVjA/o+QnseVLtcEMU+0ayh7eXy3pHYW3ZXVRNYchpBq80VV5fLeHTgiV23qW07IRI3iO1jP+FFCCnRwI6Q7oTYPqYAXOYaEJL5SDXfIz6zNVijw9kwpWe2t15qajC4zO1MNNSOPMhIBi14A/+ov3edNN3EhGJ6B734k5CmLUcYOsObyRF9EpsNB2ZlmrcLRIF8EPMWsqeSNsQ2InXCZK3K9+wiDeGkvf9th6Z/j1jWIGB/qbbxALNhajsrfUHnHWxUS/aC7o/YED0F3tU80gE0sz2fKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IHEp/fHJm3f1IyU5TgU6KCKy8pOfcnL9qrSOoYr51sY=;
 b=ft5fWzWiAPyPTUfpKtuTt59m5D/mZkswiLzY5T8yxqIkXfKfuhSFfXN03WaddVfnbiAdDZlbnHJyS+1wdU/ra6+HRoJ0k2u9R0ODZ1Khsp8ahyKaLEuhg/mFmNkKEzlcnnaquiLRW1V/yr/P7l7ShmxEAqoEzKg0/8tKEaSFV1rpfGIXycUFqB2d3qRpEXsLqwYCVzQ/a/dZGpwYFWBiM7ZR05KxXHwxbRZBch4RqnsoP+mFTumtX1Y71Kxb65GBa3zd4yfW+PeraiA1JpDEPZma+RBWPqelX1yO0SYlcRWcS1nVcdAPnvMiLJ5Xl9idW2UBQ03K90B71Ia9oLG1tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IHEp/fHJm3f1IyU5TgU6KCKy8pOfcnL9qrSOoYr51sY=;
 b=pUzlUudPc0o5cOViTEnMd4Z28JumxG/EO3RtpP1B6tTo00VdOtP7Q/OF4b/eKmbOdjOxh/UVooIw1HhzgWCPfsdK8IEHLQBwEIhC3A+VjXHkPlXsHaR/8o5UU3CFE81Tq9Xn51chQAmiN1U/GG40gP6mwYVxJDyWNQggGyc8NTk=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB0052.namprd11.prod.outlook.com
 (2603:10b6:405:69::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 19:23:13 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 19:23:13 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 4/5] ice: enable DDP package
 info querying
Thread-Index: AQHWVl6ClXV/LWNA3065vXFJkdev+KkBMkcA
Date: Fri, 10 Jul 2020 19:23:13 +0000
Message-ID: <BN6PR1101MB2145FBD10AFC11FDAE8D444B8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-5-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-5-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: 0af1c7d1-7d5d-4c5d-1bf8-08d82506b065
x-ms-traffictypediagnostic: BN6PR11MB0052:
x-microsoft-antispam-prvs: <BN6PR11MB0052003F497F3BD6B433AEE08C650@BN6PR11MB0052.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FjgJLm0shETlDZLBd52/9VAP3AORI7L2hae/QtV3tlwmsL/ck0VI5u6SSEofwqU0968XkjScjPFotrstFjc4a6Zl9aiiackYyVrdUc5nOxAFgviAfYn+wV8BCyHyHqCfkQ2A4LoTlkaRV6lWx7EBJwwX+TlQiYT9J/6mxJt1tPUoJT3QA2UN2o2sCPCEzPorVokS/C7zLCZSLXm55VdfcgstAQ11gbGjkXUBpoQ4plTXYYPEEEiU7EPMo8PwXWQpRQvEj/jhCFexK5NMkpqNoBAqGJarht983503peN1LSxYZMPPvA8GPZsarHVYayeG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(396003)(346002)(39860400002)(366004)(6916009)(52536014)(5660300002)(71200400001)(83380400001)(26005)(7696005)(9686003)(55016002)(53546011)(6506007)(64756008)(478600001)(186003)(8936002)(8676002)(316002)(66946007)(86362001)(76116006)(66476007)(2906002)(66556008)(33656002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bRrL5OEDKtiQDXR0iWNz4O2i0AQ/+yAD+6ozcLan+7qC4gIW9E3nSe02X9nE8zkV6kJX7/BOlhrvb8NsefN5lMUgZ1pNh5lHAnsrSn9vZlMfCdCBnWTyZjm5motf7sWTPqL+ZTGbpRgOmRGmL9F/VZuXsD/3Adj2HdJI4jy69pgxmb6zTNtChgoy2vYfM9xtv1a02XRpZ+qa4OlQgMBQfZ4+GmY2Pk9GCNdMSqZ8R7Xf6J/hHTdWhBZx3qgt0RuYM8z7wC/5C9MLFoJSf0CwVarlYH1W/uCCp5SKEihzUaWCMqS2S5h7DJl6DBLAR8/epK5Obi1FIFtXwoLeAma+jeR/X6TEQ4wp4AIo3CYSsF/z3jyA7KjTJ+IWD7+Yz5Up9VQyJE+M8Em8TBXThHYfJ+oAcHGpLQ3+sCEE3gNpD33Kv3dx/Q9RV9nvSGCtiLh0JZM9spiN6WgkbTz3x4YKgo54LZ6EvbwGdrwPP2XWLno=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0af1c7d1-7d5d-4c5d-1bf8-08d82506b065
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 19:23:13.0553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g9tQkms9G7E5SLLC7jm7p1dUi/Hmy1DezdcJlD6QBtseqtpTj4plaRUIxsYQpQm1ATDe3g2YBvKzZh2dAwJOyD7W2HjbF3Fa5IIdQi6erDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0052
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 4/5] ice: enable DDP package info querying
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
> Haiyue Wang
> Sent: Thursday, July 9, 2020 6:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xu, Ting <ting.xu@intel.com>; Rong, Leyi <leyi.rong@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 4/5] ice: enable DDP package info
> querying
> 
> Since the firmware doesn't support reading the DDP package data that PF is
> using. The DCF has to find the PF's DDP package file directly.
> 
> For searching the right DDP package that the PF uses, the DCF needs the DDP
> package characteristic information such as the PF's device serial number
> which is used to find the package loading path, and the exact DDP track ID,
> package name, version.
> 
> Only with the matched DDP package, the DCF can get the right metadata to
> create switch rules etc.
> 
> Signed-off-by: Leyi Rong <leyi.rong@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  6 +++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 52 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 23 ++++++++
>  4 files changed, 83 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
