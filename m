Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF20F274FB0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FA6385EBE;
	Wed, 23 Sep 2020 03:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V3W1JOyiYOma; Wed, 23 Sep 2020 03:56:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 920DF85E8D;
	Wed, 23 Sep 2020 03:56:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 334331BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E0898676A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ltb2WwXvvOl8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:56:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E6418609C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:56:57 +0000 (UTC)
IronPort-SDR: x2Sg6+wQIqsexzlTXsPLPJ/u3FyUIrmI4AG1nkoXqr+tHFDLLSHyb5ewv7OfwqSoUWKIyd1S0s
 hzVJ4D3dmgMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="245608456"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="245608456"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:56:56 -0700
IronPort-SDR: QtUawxHcVoTQx17A0wjJ1LfozPWNaIvqX1asf8tAOGI3x87La2cYStBiT7F/aigiGDyId5ZBTo
 loT4GuO2PoGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="486254288"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 22 Sep 2020 20:56:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:56:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:56:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:56:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aR4rOcnnwKWKEYoqQ53xagbad9yLkiuqkG9NIAFoS0NVGk0PzUd+9UmrWi7r8tHt7LrU3S50Ap4CLc42+y31lxinVMKWPL2Di9+1J2tphub4rmrmCTFE7v0A0aENE8wLB3X19X4y1FNCY1SDSBauKVSNHBAOatBnwlW319vYVwQgQlNrBvASpeNxL2yV/mejwWHNaUybkNQAqqebthqqu6UPZIc8KHbqDfkEbZF/3SJIjmlQia7LH7urYFuuL3IT2C//nlZ8ZdXoXcflq5PyHXEt6gdaFHNlZdN8TDhgW2C5BUDdgNqTmjFnF2uM0qvrcdFI/MYNc/YjMDYb4bAjXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hgJRmTiT1zsqCV/5xCDFivnzNIzg3fzkbYo7nhLXtRM=;
 b=cTIrDwAXMFJ1vITyWMoNZZF8MlfioaQnNbmTaglw9eUqotjKvsQhEnmTMK71CTfqSXhcmM1eM2vjyfKeSxGPRtZpoFOFIXeQPojlPleq9iot90Bw0iL2qx1acTsM4JsWD4i+V+5xYHl15CI+dal8hpmI7tGUY+eUn5tyTdFrm+mp2ReXkoF6ZCi4nWfkHAthl93Wx0F7i/lvT1FzQ+DKmm/aMzCbEC9of97D2GKC1va2CbAtLGg2SjV+D3Ng37jE0x8ZoVChRGKGT/15Mum2ZF6MlKYsYKsZYUpX+kgl4Ftq0xBR7jUGX8Zixw2zYR+zpsUvzHWwLzi1lSjh+Vw/TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hgJRmTiT1zsqCV/5xCDFivnzNIzg3fzkbYo7nhLXtRM=;
 b=epDmWdwll5WqYPkKpHzZHeNGz53VOVrR8eFx91aZ0mZ1UYE1RDMlL8rtQMDzthhDfNogvmggH+770qnC7QVgyekfb98UEXTMR4jV58NAhV3V1or5MrUJa6HWoEgPfK5Z98otJgUAqdVyhXtq4eDPWQgEHv75j39GeBaUkI05CQs=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1419.namprd11.prod.outlook.com (2603:10b6:3:c::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.11; Wed, 23 Sep 2020 03:56:53 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:56:53 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ixgbe: clean up W=1 warnings in
 ixgbe
Thread-Index: AQHWgXhz+2vVFBujGkGlVsz7TNcXoKl1uAfA
Date: Wed, 23 Sep 2020 03:56:53 +0000
Message-ID: <DM6PR11MB2890EAFBDA808B5B0533F3E1BC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200902222708.2144290-1-jesse.brandeburg@intel.com>
In-Reply-To: <20200902222708.2144290-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67f58099-6fe1-4ceb-4ccb-08d85f74b52b
x-ms-traffictypediagnostic: DM5PR11MB1419:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14191AA4708206DAC6C91FC1BC380@DM5PR11MB1419.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iuduwshCYBhMFG8FNJ71E4oL0KFQTSf0fFxLNfeCVx/Es0LLb1I81/skOx3BkCM7Lsegk8+I9Q8UNTMf/qAyldjuRsvDfCt5jAlxpHnVIwBAdLobzi2h8+BprSMDcshm0JOWPiwPfV/ioYVxRmfjUqVuSs4KGWdlD8MBNSBv2u3cDEMU3p6z+AIO0ALT9Jn3a9c25GbG/JkSkr3D6s5uRALqeNfp7qrFi9ALWXh7lrRfWYHHMSzSlpmMv23agYJ//BlpO7QVXhMKNBEYofmmxX78LBE+9Gx8vgi6iICxLV30a6m4HgVzKM0rn/B5myXx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(136003)(366004)(396003)(26005)(71200400001)(66476007)(478600001)(110136005)(66946007)(53546011)(64756008)(6506007)(66446008)(66556008)(76116006)(83380400001)(186003)(8936002)(8676002)(4744005)(86362001)(5660300002)(7696005)(33656002)(316002)(55016002)(52536014)(2906002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: SZ/DOmbKfCwiV5nyUpdxpH5Ylh6ZASUV2V7Zf2+xGWl8RK4sRxFfcgwRw0qsyh7FKNAtrxi5xS+wWAUfDxx5iWXCAA1MR1OON/NfSmjPo5OsLGgDZoyTFcTyZunYvnMpWjUFNgGYTfCq/VFMB7O+gsTzLCyVDOYUzjI4bjNqvnbtk/st8LNUF5e8VcSomyZgud6kwtKXEM66M4HFqWQiPJF6WdqhrzRjhO9NkoHOIvb+iovEUM2Ykyum1vKcse96jxHpzKYyhy+/xlZCz/lzhGjH2n5rYH4l6e2zfHbm5eHfBgDj4FGqbMZ9Js+GBGPtHBynPiupmiKDD8l2ol9gBDQ6yAZwIsl/eb8vKry/wjdhdeFCtZbqjj1GIYZ0qJa4jTSgbEjavEIkvzoAvGurelqUppOfNDMW3lSjEKbq82anxZXrwraAbVevF+2ZzIDiOYQv5iuHzJaiK0Bx67c08qCiQ8nJABtc0k1TK5yx48Y9DLULC//dOEltRPiVPgsEwj/pyeaN/zW0dXahLzpCU7GG1zZou0mSQRSLRj26g7BwlOZiRbjn4zVkjbeGl+Lx7iTsDd7VkF3q1BnH2r5ozsSJpCP3gN/IY4+Kb9GOb6V/g/EP3q6h8e7+KDX+MzeMDsQj7L4RnYHjzmTisEInPw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67f58099-6fe1-4ceb-4ccb-08d85f74b52b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:56:53.2674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m01/043GmNye6P3Va94mZZcAme1QQZdBhjayjIgGnDMFP7W35wvZ2BhXKRt9S1cENCO9lA1b75AbndQJLXFIpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1419
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ixgbe: clean up W=1 warnings
 in ixgbe
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
> Jesse Brandeburg
> Sent: Wednesday, September 2, 2020 3:27 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] ixgbe: clean up W=1 warnings in
> ixgbe
> 
> Inspired by Lee Jones, this elminates the remaining W=1 warnings in
> ixgbe.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 8 ++++----
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
