Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C47234BD3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:58:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA933826E0;
	Fri, 31 Jul 2020 19:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5qoQNqWdPn8; Fri, 31 Jul 2020 19:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2347E8493F;
	Fri, 31 Jul 2020 19:58:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 848E11BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8088E86C04
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLp2pZA-aTqk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:58:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A1BB86BCF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:22 +0000 (UTC)
IronPort-SDR: Ziz0GB4spuQ/oFobrJtI6SBIB6BtqqZJ5K5XXN9BRf8gVac8g2ubZUn5Ql1kIw5IpDV39PA12L
 1pJScFBFQ0Kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="149316415"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="149316415"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:58:21 -0700
IronPort-SDR: GPjesMEYhN5WLvO6CAiVOGthl0P/q0S9GVWe2gvbfut2bnGI55GQqbeeRc0dhFKgqeVkv4sqw9
 xiUCYC39jLlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="287272886"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 31 Jul 2020 12:58:21 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:58:21 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.240.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:58:21 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:58:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:58:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MFWbcSbDCGmOgcCjdzvPtHcNXtJGliM+3cc/2Qz0VG1jztxf4WTJ0hYtdPEJQlbggT+JqeTbTTOXTlFqCkAwJKau3fP0lGRBa0A4+wJ0APBomXEwcIrxkyf9kuDJTiy88nwWHx4xnlSNazLQHYTqAKgtlgKlaAQGrXzqYj1er3MXbZHrq+fCYGQz8+Ev2zlR437tAnomrtPD/sTpf9cGoUMusx/dHI1aQGxDqqUHnUK05ZHa+1pYGXM6Gq/g8mwxCNC5Jwe4wsEFKiOKax/KIVJbQ6DxfzulIGy7VcJzz2g+Pi2DS3H8wI7yIwimfk0AUZrY7oWsfhLeP+cFB1j/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZK4Oxk9d1/g6ZUwwiOTrp5KnfD82yUuM873q5TWYzZg=;
 b=k2HEf/B6BMJC4l31klqjWK4T2Hd+KdnqEWMIzmMUob5NeQCeJ63g3eEQX7MZEnBbbEAIzgnx67j4SvfDh3LkyKSRQQKLK5CbIRBSJXZPZfphpgdEb218L3R22tXFMe/mvDv1X4/G2aYTV1x7+3dOnGJssIRC0Yq/fh9eHjvTM29s783+RfgAYyrWXTSIuMnciICZuAgVuAfHY/vX4BZDSeAmfP7OJJ0hzwpeI5KFICI80kULlRQD98HIqq35IqqoUTYS9LHF1vGkz/VlIksGiHIXjN39LwsFxZIZjnrQ3PB1gKVtsuLjgXB41kZPIpNUqgjpX84lcVJPJmFPPBdm+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZK4Oxk9d1/g6ZUwwiOTrp5KnfD82yUuM873q5TWYzZg=;
 b=qhsbc1oi+twrkrWtRg63yaUCZcDV7sHVSLAppf88bW0T95HkuTS45FmXWgscAwVObks8d0rc01tN2jkqWyW+iS2TL1eTFOCNqA0N1CIpVLcmpjCX7kHczwR3fSnlExoZywFy7ue/ddQClzjsQnkJGzqKcBptuRVbisvr/omCwO4=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1329.namprd11.prod.outlook.com
 (2603:10b6:404:47::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Fri, 31 Jul
 2020 19:58:19 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:58:19 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 06/13] ice: Clear and free XLT
 entries on reset
Thread-Index: AQHWZge/9mPhzD8PSE+77i9NGSBUBakiHbwA
Date: Fri, 31 Jul 2020 19:58:19 +0000
Message-ID: <BN6PR1101MB2145B913EE49E66C7ACB0EDC8C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d77ba0e3-5a23-4b0e-0d4d-08d8358c126a
x-ms-traffictypediagnostic: BN6PR11MB1329:
x-microsoft-antispam-prvs: <BN6PR11MB1329D4C2C403009DFEF9C6D08C4E0@BN6PR11MB1329.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LQKFvhg3AeGFYPZTXnWC2YsBz4sG0jCiN8CAJ1ow8b6NPRUrJJk0xWhw7kNW+IKEY77g1h0J54cy5eAGXsNt1AnctzARZfaPNc+97F149Xe1XIeEkhroQgUHPoTIRPRpmDk9OvROXRcmJHSRXca2i6K4NMLMJWQy9C+wJho+QIqixuIyeA3VOZPEWM390mceuJeekOxu19sNm6Cx1eU59JepqI78YySKv0jQzWBh+HYLDknIL0Rl5jFJkJh+iwxS9pzUBOdkNys1HdoUG3LfjKtbAn4dI7bFB00FV3CH/Vm3rIzlfl7JUQnjcvB1pxodEJgtL2BX3wNSgKkDGptLZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(55016002)(83380400001)(478600001)(52536014)(86362001)(9686003)(5660300002)(64756008)(8676002)(26005)(33656002)(4744005)(71200400001)(316002)(53546011)(6506007)(8936002)(7696005)(186003)(6916009)(66946007)(76116006)(66556008)(66476007)(66446008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sUtXbCRA33VKxveOfzTGfKwiQJPLxDkNm8VI8pMiv1EOcT7pxJtXpJsD+koOpUUHikTagsKB5ahM+1mDWU/UotyUIyGgulxJ78YZ46ZcHpWHBOVt71V/GdsHg/yjOK1px53ne+vsUaoR9hZuThytrd5ObOUNLAUpDQGDVq4/ZXrOXkDlurif8XfeyFyVSpPrULzh67b9LCOP+8tTdczRasDuDTcFkPa8a4M6wLXJAtblgFeSE6vgH5sb7r5FCmSlf5+A82EdrokBN8nUe24O5u+qXGDZx5Y1cBQiufr8/ZxpVWnkW40bmjkENjK/6IGDTtMlKJzL2Xq0UfJqTOT71safL9bkgrDmYgroLS+BTI5hUv0Ob2cq3npQc3IebWKUKWkonRe7TvT2uiftAXoE3i4zph23BuQyW+JITrf8LWSavmiKEhdlnXL9NDRgyV0geBkfR2gkDTm8rRigIZbQQ4mncwhkymFV8SYYETdjaNI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d77ba0e3-5a23-4b0e-0d4d-08d8358c126a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:58:19.1579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nVyVo9UYtCP6dOtFpuMraNb83RfeDsWR2FJyO56PRetGCBaLO62q58h33B6UxLh2p+FkDjmP37ozZjmu1LJCnay5EUh3txKohFD+waQQ5jo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 06/13] ice: Clear and free XLT
 entries on reset
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 06/13] ice: Clear and free XLT entries
> on reset
> 
> From: Vignesh Sridhar <vignesh.sridhar@intel.com>
> 
> This fix has been added to address memory leak issues resulting from
> triggering a sudden driver reset which does not allow us to follow our normal
> removal flows for SW XLT entries for advanced features.
> 
> - Adding call to destroy flow profile locks when clearing SW XLT tables.
> 
> - Extraction sequence entries were not correctly cleared previously which
> could cause ownership conflicts for repeated reset-replay calls.
> 
> Fixes: 31ad4e4ee1e4 ("ice: Allocate flow profile")
> Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
