Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDB71D5A47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:46:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D08B889BC7;
	Fri, 15 May 2020 19:46:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VemEKOTsYr2q; Fri, 15 May 2020 19:46:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B716D89BCC;
	Fri, 15 May 2020 19:45:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADB001BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A85A987F02
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M3VEiLi5qCZj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:45:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2FD3087DF5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:52 +0000 (UTC)
IronPort-SDR: ksLo94VbthiPTTaWnLCmPjtdHc0gOsiyuZbBovIovu5wqGDPSRg4ayx3MVYDQ75mapB6i31+yx
 +RgrQCPhF9kQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:45:51 -0700
IronPort-SDR: 1oIQ5tDMGbAtAmvJfuqEN318J1oU71T+5iQcD3Yaul/sYWlzJbDHm39k5Lxug7S/dYVTJ5oy0Y
 u5tlIwkJGU1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="307504214"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 12:45:51 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:45:50 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.53) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:45:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T3CfRori5TZdn4K00/cQ++FSrz81v5kfsP/K8zFysROHfphNyVBsEwBynKZIvkllScsS7+LYmGOM8BLFxahututL6To/n1a2gtSg22qaWEwfcUOJN7l2qDD9mQHXDg6gjWtARFneOER5f+Yg2CSEjn6SC5XsCVE42Omk9C67M0JLrosBlGWluvbL3Ge1z4KzWtb95aLg+xjtxQz+2myNJCksoMpc4oamzUP+mXyvB7avdVwY8DwvjLg5ZW2mQl4GjNb4M0wNaMVDFPXm4gN3NAU9Y/Qfrzgw1XD39+25fyRCRkXwSk6Ac6zdKgS07hleNdghmx98Ca5BoGxTpxPR4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZkPMLVEvpgNUqOdvaoxLp4i3Mp6rP+WS1CHes6Xv+8=;
 b=Gzql/CEJNXYJi0EeOABICLEHOFKOOVrIR9eCLIvEo7cBRPyw0NnvnxS4HZEThYthoemPRMBWw/jdqx5rd/sfijnIVeMlLUsjE3zYfiYarLWMC2jk4Zl1CtK8wMfN+Ds39hYx/LUEh1G01rCUyOQJeTgEW+DlpUWPHCKFsCsA0P0BoyBHmKRk81IMBm5Hs7GxNnENDAs85vR2e7qAfoNEUOYje/U17H0xGHhbKidtRWGG8cly1TuGB1xF09jU9fuc3UFF9qGRQGFcXGtcGQpSR+MALqIs4BwC06YDErfh+IxNFnPPNXMcaWmoHnyW0ZQRZab2gIfFIto/9zvLV6bl+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZkPMLVEvpgNUqOdvaoxLp4i3Mp6rP+WS1CHes6Xv+8=;
 b=mtv/tEscvB61CRZi9upo1naqMDAF1e3VOPvKMLCvskK2a73J6mPfAlH7a5/v5+QprmStLFGOUyYk7mVdvb1bPDWbdX7cF0TdGIcd4zzvBc9tQx2yorGu1lEnArNmqbBAI5pMODa4AmrsHUq88BCquuT05dp86q9jfxMLH4ytwTw=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.27; Fri, 15 May 2020 19:45:48 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:45:48 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 09/15] ice: Fix resource leak on
 early exit from function
Thread-Index: AQHWJNHLpQcxn75VBEim1ABRR7nxcqipmScQ
Date: Fri, 15 May 2020 19:45:48 +0000
Message-ID: <DM5PR11MB16595619396F0EB3DD0A1B968CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-9-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 05317bea-1934-477c-6853-08d7f908914e
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-microsoft-antispam-prvs: <DM5PR11MB1452AD189A9B1547C7D7BD978CBD0@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X8rlNExLGnKc/hgFOVQPQNl7IqCqYriMl0dMZfcewHGlK8vQkC0NywsylO1KyFR08hqoJOMNt+vdhs5f1ZC6fhzcE4mOZp8izn/GVMh9cqzpZxXBx91HHL92a31wjrQ2TBTrXOfBgyc6JzjOx3A3GXIe95oZSELBEyL7R9hIrJ53LfA0KtXJm9trGHGURcIRPPWSSPkWvmexXRxMUZbq2l0RKEpqv1B/9fJ+9EUKXTI7Xx4saea5CpB2qnOPjqa+xTDag3oOI7U8JPoksIbGp4gWly5HGL21hQDf3DDdpr+qLC+xnLm6piQTsfDNoZsTt1LNt+UcUBQBPuWbOiJ0AwE9qL60guZaMPgqR5w5i3ZBIsbPJErjpUOE0DIDbmkYXYr9CAN0xDKQp1AtUTtvg9/1HActRiy+TgIjFQFmqsAIL4OYFsOfqgZThkOENKFd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(366004)(376002)(396003)(39860400002)(4744005)(71200400001)(186003)(26005)(6506007)(7696005)(53546011)(478600001)(316002)(6916009)(8676002)(76116006)(8936002)(66556008)(64756008)(66946007)(66476007)(66446008)(86362001)(52536014)(33656002)(5660300002)(55016002)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: VVnoUhgvbngCHPRlP04wAZ9K172DXb0xZ8azFC2fKOvcwtsCmmRzt78XDrJUyl08erEpTEqJ8lK+k+MM3B9NekophMKumeuNhOm7LS2QTmXN1BQix98IyRVPKS8yi9aYA/tjwMfQWQq5+7t8ekNZhkF7YQ22xVxxr03k1XLq9rJe97hVOXJb1wGYxbcBq2ZUFf/r+q6jOJMeE+nTqTku3nQnuGyFrclWe08ArCIQHC+CvtferQMGG22qhIhGMFWF0du0tquu+L4Pphm3p9mi3yeDHFZxh2cOTixSSAqUIO0J9HfShd2W+MULJ6GIZ1yYDMmKbKjboGCrp0qnUbONpRngejQyQBr6KqxAmsq01qJ/v0z1i5uCg3A/b5T+47rPJqnoHYg+9JO6a91uexOi8JXX6TqylkS8VV94TY4g6z80WyZBHC214vXsnhyNOdsMO2HxMjmTUvCm6+GdDnAMb1sPUu4hG5fUVFs20TgPFU6QhCT8mx40MZoztRypKNGf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 05317bea-1934-477c-6853-08d7f908914e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:45:48.7009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZjPMe8H+NQdnc/GF654hTq15rysZ6ndL3z0xvaY2zWYOzGRTB9PCRFchhxsaqbFRGbnYJlUtLIf3iUIr1WYkV6BUNnNl34Jx0Q+om1BL7Y4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 09/15] ice: Fix resource leak on
 early exit from function
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
> Subject: [Intel-wired-lan] [PATCH S41 09/15] ice: Fix resource leak on early
> exit from function
> 
> From: Eric Joyner <eric.joyner@intel.com>
> 
> Memory allocated in the ice_add_prof_id_vsig() function wasn't being
> properly freed if an error occurred inside the for-loop in the function.
> 
> In particular, 'p' wasn't being freed if an error occurred before it was added
> to the resource list at the end of the for-loop.
> 
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
