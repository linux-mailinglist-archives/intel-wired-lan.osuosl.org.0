Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7087C1DF043
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29CD388A2D;
	Fri, 22 May 2020 19:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dGW1g-iHW3fO; Fri, 22 May 2020 19:59:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA55188A6C;
	Fri, 22 May 2020 19:59:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A79921BF20D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A307C88A43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fljskJDt8SrN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:59:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2623D88A2D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:59:02 +0000 (UTC)
IronPort-SDR: X1FshRnk2e2yqIAU05KTbu5fsLGXSUHsCQQ13fd2FaYQlhZrcylT4zFWkvSLl27Sw9PUyKlUfH
 nTdCfO/y9Eyw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:59:01 -0700
IronPort-SDR: 6kqbH2PzFcT02aVsXL1xQasWw2g7Fmu/mmpHyuRZE6CgpCT2kdi/PrXJACD+nfRXEEQKLpwkSE
 iyUDNRUqklmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="265533306"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga003.jf.intel.com with ESMTP; 22 May 2020 12:59:01 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:59:01 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 May 2020 12:59:00 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 May 2020 12:59:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 22 May 2020 12:59:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7V0OiSECIBe3IcIoQG/wL3ktCPWubKNUifSH7pRC5y7YuWl/wU+GjrEVj6JxRUh/2yZpUVJ6L1n5n4LLlrT+Kv9fmc8EusI/W+ju6B/etOa/BMiqmF5srH92ZY0WkiBXEIuWA2DVEq04++Y+ei5yTWMl3k8czdTOrioDekHkk7ZXqy8gBOUn9/JD5dSd8n9SjYelX4hwTVMdGrbj2/Vk917IIswc1zqj4Gf2YCAum11dMD/1/5ymWaUyIs0zue4osLUAq5nsT6gxalonsqUQTVezd4FVYFK5Qz6cRV4rzIu2OjD/dkQvbNs/1n0iF6npiu19rjY2oXp9nlPSHGU5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hPsIQdkql7lM/4lfrjkc8TnubB08I/jMfxTZ5hvsw2Y=;
 b=JgM032+p1CdoUd27Yrc1hGlnq19fcYhNBG3KnILAV434ZaTBFtYveFA3OhcLTfqRrMNBwSYh2bvzrk3AdYsjyBx13ZtFyq9ihCNb5bUN4ojGwG8ldMx7rm2Zhabhi+cGrSqPwVDkBpK5h+zv2GFhJaqHGgNDbljH2W7eN0Ta+LrRr+939tnPO6ioEJtVFXd6dRudc3sFChhMd/9uDYAXbZ9Lq2iZFxUuWy6JbKn2tU+j/1pP0h+Y2kP/iyd7nfxbdVPxrbBowt7gweSpg9gOaOfTTWjzXOFyxuZV3PuRY2uYplmeoRKgyFxV3qWnsHDP4s4YMe0y/xjmGDw5lsUbww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hPsIQdkql7lM/4lfrjkc8TnubB08I/jMfxTZ5hvsw2Y=;
 b=tJx/jiiQ885GsgihnGtS9qpSG6Qr7xwxsACIwe+GY29llR3M0d7v3gGI92lF0Bu9tqQQyhHWB/JLCoDEDf+0PKapSfiYPcjnzGU6cEu5pAKCTMyNLQD6HQHqTF6wtb6ExfMRrLVYYG3lDodYlDCoCa8D5Ez9WYr91yJeUPDdAsk=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1577.namprd11.prod.outlook.com (2603:10b6:4:a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Fri, 22 May 2020 19:58:59 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:58:59 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 09/15] ice: fix signed vs unsigned
 comparisons
Thread-Index: AQHWKxqYPOXifxp+cUWSmFp4HOjeLqi0kJMA
Date: Fri, 22 May 2020 19:58:59 +0000
Message-ID: <DM5PR11MB165930587A3F4BBC4794073F8CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a72e8990-0032-4a24-4a61-08d7fe8a9143
x-ms-traffictypediagnostic: DM5PR11MB1577:
x-microsoft-antispam-prvs: <DM5PR11MB1577A30BAA1DFD31EDB629DB8CB40@DM5PR11MB1577.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kMVpnIuqKZli66MnrhRhjhmhPyHS8GTJISLW8swqYr68OV7br8aENs7CrYlrGnHpf8d5TV9ZShz+dFz3v+cJucCymn+IFShJlXFEZlsZSu3GJCaBoKmwRXTO3UG8SVMLmwJTMJwvN8GXMy1jaUe0G9Dpy6cnPn+yX/6hJKOb8VKHWWQRqYXkBY5+SUUXUxRZCfaW5qc7eqIbgY2PJiXEVVEd02jnxxINDbHukJCjiyXrpOiTzmClKHzpdwnBuo2COMejTDwp6FfkToiWtnoQRSdZVkptmKff73mqUfYkc+TJlqVsqDqsLWMEqgsL6sPB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(396003)(376002)(39860400002)(136003)(186003)(6506007)(9686003)(2906002)(5660300002)(33656002)(52536014)(478600001)(316002)(26005)(53546011)(6916009)(8936002)(66446008)(66476007)(64756008)(66556008)(66946007)(76116006)(7696005)(4744005)(55016002)(8676002)(86362001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: r8cKCY9OOn4Cm7vnZelYYckbYJH2Sieb7mNxBsoX+IRl6n51sgmRHgvckKz3cs+ApCOLXIVzaYd/5numWuD1gUNgJGXMA5eG6ApYP2TuMSgvWx7+4yh3YIcznW5EK1NfY+B7t0F2Ilx+DlhBXH8EbACrL4VV2ys4LFKhRLaJcLn7v8u7wWF2q44KrIHQ5siZzZOS4IAnTxCG68tzXGj8m2qZO3jtzoMhjIH4WWYTuwq7+4T3Xo/dXv2VP8pPxtkudoNTxrLd+sflXt70U/P+e2DKQMEllRR6hkW/ybi5+ux0pImk0AzsRbDzShXeIwjdWxNPYMAYQONy8w/RUMgbhCtIap/6egRTxlFgPMgdk6IKbTUoLyrEgFc1waDtYeL8joli9iPwNbESQoq8AAoBrDI+g6jmpJVLhuHqyqTBRES6rD3yjbkCz+fX/+LhNmElYJ6WNLfz2mKVpfBa60YE5PbamX7AwduaZTPG9PQSze8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a72e8990-0032-4a24-4a61-08d7fe8a9143
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:58:59.1443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Z1BXgBZvedfReHJHQ2m7efdwZqZ8UUeBEE6lMawdL2WV8rndWutgp0gUH9CNbsNNKGvim94Fi1USTPuRNE20xZMMlLxAkjx6sIbA08g5CA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1577
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 09/15] ice: fix signed vs unsigned
 comparisons
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 09/15] ice: fix signed vs unsigned
> comparisons
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Fix the remaining signed vs unsigned issues, which appear when compiling
> with -Werror=sign-compare.
> 
> Many of these are because there is an external interface that is passing an int
> to us (which we can't change) but that we (rightfully) store and compare
> against as an unsigned in our data structures.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 4 ++--
> drivers/net/ethernet/intel/ice/ice_main.c | 8 ++++----
> drivers/net/ethernet/intel/ice/ice_txrx.h | 7 ++++---
>  3 files changed, 10 insertions(+), 9 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
