Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E903B2197
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 22:09:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEA04607AB;
	Wed, 23 Jun 2021 20:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id euNDdU7qh6wK; Wed, 23 Jun 2021 20:09:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4D9060793;
	Wed, 23 Jun 2021 20:09:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A1921BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 167A681A34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-YV31UnqK7N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 20:09:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E078180A49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:09:45 +0000 (UTC)
IronPort-SDR: OWXYI7iA/m3wQ3j20XlpZoZ5k8BV26RUizyjndqP6ujtaOOvlauZlceoMpnC2Fm/iaBaxvmUHA
 EuYPPle+aZvg==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207155827"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="207155827"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 13:09:44 -0700
IronPort-SDR: DZvIONO7q/A9+zl4PCguGFOdstvL5Y4/hLXWYBeh5BHUubr/zaWYHNJF5U/NCAnSK3Hp3ygPdk
 XvQzdYsyXbMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="454774757"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 23 Jun 2021 13:09:44 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 13:09:44 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 13:09:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 23 Jun 2021 13:09:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 23 Jun 2021 13:09:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jr2fmKuSXItqQ8Ips0xN75rwaqn8iNcFfNXplnu4v5DkMAwPh7qZ/dy7eQVpXFBQSwgKMBWMWwiyJOV8pZ1sUUvS7jx1mLcztZ+aCsniHW1Rpm+Xg6ShWsJj8+Y3aTvZz7110zfYBvV3H+9nKQQ07AqKtAvcSGZDV5vOfyiI/WJwNVAqA9J/HTiD/agueUDfCdAj5CpjXnzx7GzPhUj9IqleTmw6ijCA8dPcEOXTY3UGVXG33vh9m0KAtLQIKfYXTIjJqlCd3a1qwXPr+eKkSdjRNBG8n6fl39UzNJQJhPuObp9AGpNonlRfC731/tRgWvZe4Enl5ug+xT9jg3zc1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGlzOg/4I2s0AlOB+wVrJyqySkuSIsP05ZVFLLysUCM=;
 b=N75Yn2oOmBRbsTAZEsYKMwHMl6/O1cM3K/J59K6wxPTmvchKSy9qssU6/C0AdQoXJ4uJ9IA1HtwKsv8rLyMFuyb1wrbExsUHi4d+/nW4vPhXExZeYIPpSc4VevitYR3Mkq363H0RBD4mFX+UllW7VeUqR801Dwdk5f6X5+LHsy7NsQEbswxPZVKIuQOAf0S+ulGLIPJpH5ZuumuG2mNob7syWe2vaC6FB/A8T20/nL6c9wC+VA2vPwp1BPsNjoWOOVr4sHM1rEpzv6/w0F2Si3on9P2AVjeauo/TqywggKaU+Egw9uA+RjHWr1FNl4yeJUywreH50CC9Y4v/xDIZrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGlzOg/4I2s0AlOB+wVrJyqySkuSIsP05ZVFLLysUCM=;
 b=voxIyKw+fbIR7fzwcR1Q/YAjMmYK4PO/g62qYIFcoMVaKn/9OPLOYet6dTYNSUUdnWarw1oQ4yfd8R8lCDlyrtYpoidnJV1/p5YL8al/Brw5d2aR4aT8R2g1gbU1cseB2wiCGj448M83GvyCHC2n4hMefBTQ6vQlDlTbUx03QgY=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5615.namprd11.prod.outlook.com (2603:10b6:a03:305::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Wed, 23 Jun
 2021 20:09:43 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%7]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 20:09:43 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Add additional info to
 PHY type error
Thread-Index: AQHXVj3jvltHgaCSkU6JMM9IDB6PWqsiKtUQ
Date: Wed, 23 Jun 2021 20:09:42 +0000
Message-ID: <SJ0PR11MB5662898763692D9F4F2D04AFFA089@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <1622480149-29979-1-git-send-email-michal.maloszewski@intel.com>
In-Reply-To: <1622480149-29979-1-git-send-email-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 131f5378-00e3-485d-4cc0-08d93682d714
x-ms-traffictypediagnostic: SJ0PR11MB5615:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5615FE3D43FE9BF5AAEE5FB2FA089@SJ0PR11MB5615.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RZgCSDef0OSh6qQK2/Fc0CEr2QaZqfoFH3Y6ZC9YqgM0hcuIfIknznueT1ciiadgt4lo6NVCpLvbjQK0pO8A6KA+i8aFEOHWMKWI63SPO32WGBQSN60l2Glyvt2Ry3qjnnFeSlIOhAD+DNqK/zdOxwWCBRoXLqtgd8mmgawt7vxq0RB0ZpjrlvGKjHm0+R/l2t4vao0YwpX6FyLkQfPI7PYzqfGeibeDqYKZwVRxZpbflw5oSYurDPhgpKy+nfPO72mtngiVw8Puv7MdtXFIJqN3Z95zZ/w4xXmWKUD8Y4630jwJTlsLtbAF+YhVXiKLckEI9smttShdNOzj7PwKVBUMXzD1wxQL07dcaXf9Sh6DWFGyBY8q1SfzYvK1wB2cxqFVw3DpP9kUp9JucTWlgKjfkdUaeDmvAZRK2iAV/WxoKxv6zBk6v/0IMvTN7f7LbRiry7f8oarkcmXsxRbGEloWwsZyNm1Z5j0myEK5kcoZASWvMoKsD4iqnOcjCcmBgqszGI5tPqXY43jgEVH4IKXXxeSbQCFMShbR0u72foIbScB1g7kWjePSBb2GV1kbXuOAs6nJpscNSq9j9ph+84z+nWteBKDuM5/nLwq/kGJK8k2929uKM5yiY/HRq5Wp6iJ/sS7zAt05O/WW19qoMw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(346002)(366004)(396003)(136003)(9686003)(107886003)(5660300002)(7696005)(52536014)(55016002)(110136005)(316002)(54906003)(38100700002)(4326008)(122000001)(4744005)(478600001)(186003)(71200400001)(6506007)(8676002)(86362001)(33656002)(66556008)(66476007)(66946007)(66446008)(8936002)(53546011)(64756008)(26005)(2906002)(83380400001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?U+Wc11fVGy4XnSiwNyk8ySR069sNCWl+QZWBwkwN5iJA4KmFs//rVOWOS/?=
 =?iso-8859-2?Q?6sdNDgABvdFhlrfJ1WgnEiXQTmC5LkJOIQqZuAAf85kfE6tEDlyoX1OYsZ?=
 =?iso-8859-2?Q?/1hK+b9kYucFNbtFf3rZNbkU/FGrmxP5uiSI892UzeJyB2MboRduqfzdik?=
 =?iso-8859-2?Q?wWXgsJ/OpKdbu9PxMg6lX07UA9ik/swXIRekNT5btceU9dsC2hjjkvQ2ao?=
 =?iso-8859-2?Q?iIE/+K+4P4yOOidDk9wG6+Qw8ynNrqSr3oYFL5oLdGxGW09iafnhCXnnTs?=
 =?iso-8859-2?Q?dpm4grJV5g/4U9Z8QppoK/nAP+fVZY/U8S/r69o7JmXVNt5tucdW90Vs22?=
 =?iso-8859-2?Q?LSDn/hTLtidHYvHQ8EpcPyG4ril4xBqAiZe9J3O3TgnVcLQIsCdFERVnSg?=
 =?iso-8859-2?Q?8cUbM4EE26im2i/COfJxAQLjpfVocVNT+R/YG17WUjAhgTXHzUoW7ZbAld?=
 =?iso-8859-2?Q?WOmqep7cCBqBjG5hpheML8CsjlSn1hbvVMmpj4/hD3gka+5FBgGYP11LTZ?=
 =?iso-8859-2?Q?Tr5kFz7QIp3U4JyYB6OgInLXaOH+Cfo1WvT2VfYohYJMUd8Qlf6cUsytx2?=
 =?iso-8859-2?Q?1vxnIE4BUv2ka8CVYzTpD3lfNfzSQlCIynX+x85JMuXwvl5B5WaaJ8ulyI?=
 =?iso-8859-2?Q?Jr3Rc30++Dl55h14zysJ76ZrHhT/wni/o+T3CTpuyNxPx4f6E2fKnHqz4N?=
 =?iso-8859-2?Q?XotBYmzVKyn5ueGMCZMthK2Y5qNBtsYaOfCmXM84yEf7OUfsObbi1eBWFm?=
 =?iso-8859-2?Q?PAXN9FIRQj4JVtmXcNuppQE/+3+461r91QRUtKS5oAvZqBt6BllIsyoGPJ?=
 =?iso-8859-2?Q?UrYnnFFLROz04CTk4sw+JasDqUpcfN97UmZsk9ZmPAACDbSHMZ0tJA3XIY?=
 =?iso-8859-2?Q?aCDZBbeFR9vrKvejr/47BEf9K+K/S1/KzFwmDX4MSsVHZ3lQ/tcL5NvjUn?=
 =?iso-8859-2?Q?opRURv8iJJwYYGsiQt1oA8gk03DwZQ6pZ1/60+0ZS3o+lHjMPQXI2C25oI?=
 =?iso-8859-2?Q?K5VGvWCpsnxPgEcHHlXbFBRBMNcPQGmvhBbGDGjPHLI8mrLSnIYqJwrlHw?=
 =?iso-8859-2?Q?tLSRKIVsVX3eLk2zf7FukttXJSxYVSFonBOSmQag8Gv+fqVxdsxSHgjTJ9?=
 =?iso-8859-2?Q?MF9o016125BvBFy28e1UDK9a3MX0eI9AiJrQFPxH0QBn6dV5hdHXYp8fcH?=
 =?iso-8859-2?Q?LfFMXZ7Uh0ZwJKmJiQF26gQpOzymtdRdwAp0o9jwq46Ec02yJHepUt2yxG?=
 =?iso-8859-2?Q?c94kH2b8ORnWIQR0iIUcWWYiMF8TpcnmAbKPOtwDNCLqbCOnAw40PE7DOt?=
 =?iso-8859-2?Q?jUzzu2JN7pHADNfd3zkW8ma/f2i5kdsj8TwgjGwuSfEowek4iI2HDYqnD5?=
 =?iso-8859-2?Q?seVwlKWx3X?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 131f5378-00e3-485d-4cc0-08d93682d714
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 20:09:43.0262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gJsiQm5udJd4uHoW7BXdTcNUgm7r6iOLh7Y9rmAb+3cQ00zr3d2xkqrpOdIQP9j1MKTLMvyhvaAYzzGIwCW1daCvxNrQNUnx3SUc1gg8Fc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5615
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Add additional info to
 PHY type error
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
Cc: "Maloszewski, Michal" <michal.maloszewski@intel.com>, "Cieplicki,
 LukaszX" <lukaszx.cieplicki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Maloszewski
> Sent: Monday, May 31, 2021 9:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maloszewski, Michal <michal.maloszewski@intel.com>; Cieplicki, LukaszX
> <lukaszx.cieplicki@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Add additional info to PHY
> type error
> 
> From: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> 
> In case of PHY type error occurs, the message was too generic.
> Add additional info to PHY type error indicating that it can be wrong cable
> connected.
> 
> Fixes: 124ed15bf126 ("i40e: Add dual speed module support")
> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
