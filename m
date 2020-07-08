Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65134217C7D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 03:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D637A85495;
	Wed,  8 Jul 2020 01:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gvSD70tXgaDx; Wed,  8 Jul 2020 01:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF130854B4;
	Wed,  8 Jul 2020 01:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C60EB1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B537E88C19
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IuX3SaykGCuz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 01:17:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B637988BF3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:17:17 +0000 (UTC)
IronPort-SDR: Ir1pz2fEoBihc+J3zQ7Cyl2S8IdS79Wv13516qSd/qXwXLPGtuWt3ZnzEbeVwHAIqT9tCf6sj2
 t1uMVVlqnk0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="145220306"
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="145220306"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 18:17:16 -0700
IronPort-SDR: XxPIMI7OERv/sweomu7FX8Y7gDDQR9f9Ow/pE7e3TVjsKUKcTmbdRAACC1BktyetSe8Wck71cG
 CJnoZqRNrliQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="483702730"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2020 18:17:16 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Jul 2020 18:17:15 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 7 Jul 2020 18:17:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 7 Jul 2020 18:17:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ac0ADU5jY4p9qQythhYlyrJGJAK+TiI3DCKXduCdpq4Ljt0mF9GZcr7sJg6Ox3HMzqmWSS25oKUxe2IeBAxxOQSnkbTe3RolfPt4foOstSuozy50Z3/tes9M3/Pu6VqQpBRHs2g5hACZol6JQfgWihG8+V3TV2ADoAQnvPK0JwN6oKHlYlhDkXOihLl9J4TaZvR3Hhnr5Ol4HdF+zUItXL90o08r2Bht2d9Je6iGy7A3ftI32ZIOTyf37rwnk/9s9/aFz8U0Am+zL/SDPUus+XSu+nDJWg0xdb8xu9h01sJvSL66FwAcb3td5QnnbnQqhuGRjRQKj9u+3RZGLrYNVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R1Y0N5FVYIvF4F08ZYWBWzrcmURaACSuXXjp93nASTQ=;
 b=GWm6AOUcf5QtL1V3Mb9hf5cgMGBaXlyO4eUl0zoSXtes36JL4N/e5UsVQbhOJDSzr+CphsLb2yGbcErViZOr2Ng3gEfAxFDmM/f+U1sEdGo5YXoxiaCkviXOhY7FXLFNem2B7ol7XG1TXOTD3UAOJ+pVqTErZyNlR8dVRDukAMwRxoY4ZO7yB65LYEZg7yCZPiYn8p8y7rY8fZV+0UBULAaV+HSb91ApAfU0BTmP5og7NSiNjKZ+KqcbUk9SOYUVG/liwXiUCm5fPOC+G0t9QFzqQFASnZrEPcdNAfqZoe7EBBAN1EyUs7vuXb4THwY2X539QEtmOucYtUSw0/j6Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R1Y0N5FVYIvF4F08ZYWBWzrcmURaACSuXXjp93nASTQ=;
 b=hZfK+925Pz2Lb5KPebevkbUCFfn5OR2IqLlqak443jk1UYJ7Lp9jFTZOZR1m7VbodjNzuF+pa8uzTfjhfFfEh9me/0QttTDyP+xOMXiwjVl59N/t7iWc/rH1AqXOGdV6qTuqL2Y88AR6rppR4bikpubuEAjWMVPv8fZJ0IxFLB4=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4644.namprd11.prod.outlook.com (2603:10b6:5:28f::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.20; Wed, 8 Jul 2020 01:17:05 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3174.020; Wed, 8 Jul 2020
 01:17:05 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/2] igc: Fix double definition
Thread-Index: AQHWSGWgLBrVxVxw+02iaqD0sOVD1aj8+glg
Date: Wed, 8 Jul 2020 01:17:05 +0000
Message-ID: <DM6PR11MB2890A9E476809242F1B8C97EBC670@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200622072017.31186-1-sasha.neftin@intel.com>
In-Reply-To: <20200622072017.31186-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75cad528-4b53-4789-28c0-08d822dca0cd
x-ms-traffictypediagnostic: DM6PR11MB4644:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4644800080578BC8B7038944BC670@DM6PR11MB4644.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SrTZW9CP3ksCCKf/uYmyhnpoaU6/DrUc9WfTv1LYkp6mLMOjxKGluMog6lS/pPQ8T/Nn6CZ4QibVE8BeAP7yhtt+c6JG2za33l43Y/hD6cnoorql3IFxAtPHStYsFC78+LcVRB8vjwWU0S5oP1kqgX7LBp69kWEB13aQsprTv75QIs1afioNFjrrNdeCn6jPTXWOK2qbOePPxWUUZGXecPhm+IUJB/WDMOuwQ30BNaMMxYnyoS0QVeDPzrpLROwWoCIOEJdTBVgC3FZ0gwgx7VRyplzXvcm5MftrmbzHQ5apB2P/LN1vurKfscqshhrSLBKzRZLHOd80MOo1tdHkJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(39860400002)(136003)(366004)(346002)(186003)(4744005)(26005)(2906002)(8936002)(8676002)(9686003)(55016002)(7696005)(33656002)(86362001)(6506007)(53546011)(71200400001)(52536014)(110136005)(478600001)(83380400001)(76116006)(66476007)(66946007)(66446008)(64756008)(316002)(66556008)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: I2qRxcvvaLblz8qB1CE0h2/i2V38HU2wSW9PT5/AliPbY3Hdl+6d42IC1zIpYL8va4VpkWwceUobhaf1sHmpnxpZgT6lMfKBoMiy74FYUPZ80VqGkHof4TsTNHpMN5h3S2XK1UtVtLm5FfmKZkCD0xEbXkWg/SM9UrpSdwZ/7mLPeGG0lzA25R257lK/d9U2W3QaiNDBKYV25rBeCOzUDOCCvf5+t8gZHBnyysI5PmiBl21pPfBvm+T5aqRdx1rZRMr94imENQ5BxATKxFPhu6C5TJgvZYURIq798xZIf1xmtGmeSqkMzhVfhdlxF+HlXaFreRrpnHdETf1UaeCl49PIHjkRbqFho8RZf4nwXHYsp/wrulikXdZZM2FP5+IMVEfCq/3T/0ElUgueypSU95zdMr8RqNdUUJcbKye1+FQ6pShHruz7LWTLJMigRbLLqDo2fAEuMY8qBfHWGOOULPPPSbLR4A13+VXMOm5edhQqwGVqBsqIWOtdHRclsh1n
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75cad528-4b53-4789-28c0-08d822dca0cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 01:17:05.7025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iVDYNEBqnAlm5t+kMOVrB0lbBdYFZkOJiCU6Qmhm2iVdO38bHeIadafF+Wu06ezJjUUg02B2abBz2T3RjLTlZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/2] igc: Fix double definition
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
> Sasha Neftin
> Sent: Monday, June 22, 2020 12:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/2] igc: Fix double definition
> 
> Accordance to the i225 specification address 0x4118 used for
> Host Good Packet Transmitted Count and defined as read on clear.
> IGC_ICTXQEC not in use and could be removed.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 -
>  drivers/net/ethernet/intel/igc/igc_regs.h | 2 --
>  3 files changed, 4 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
