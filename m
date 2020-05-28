Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 232581E702D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:19:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9671221515;
	Thu, 28 May 2020 23:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yx8GjPX6fu1z; Thu, 28 May 2020 23:18:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 28707203E3;
	Thu, 28 May 2020 23:18:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AC241BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5655320524
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sGq4t4Um1Rdc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D611203E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:18:56 +0000 (UTC)
IronPort-SDR: FvM5BetrkeCzRty9EEDM0Y2HjoLqgGLpt2USlXYKhWvttvBAY1uNtYK13GdO2vUnKtAv773aMJ
 uNNEav4a4uqw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:18:55 -0700
IronPort-SDR: 0kk8BCNJHsiwoPKsFYegPnq6NRz+ll40tjErvtnGRLLjHiCSF1czE7tN5mJm2tCkJJnbo1Z0jE
 QpHf/mF7zlhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="346076123"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 28 May 2020 16:18:55 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:18:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 28 May 2020 16:18:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccI60wqQ1Oxh2kMXpZ7lWIwbLYHaa7M2gQCedt8uBYNqKtiOpUcH/c79eOtSGxtDz540PR+UC/7bxogi9cK7tmq7NO28i4TY8oQQpzcUOKxSIc5/x/p4sx5LB1aFVqESKaD//GE3bzbmyD7aFhhD+Erc2h3+q1ncxNXDbfTAxrZPRGenlqKyWdhr3iywCcb8j9xBlex6D+h5lRFNBHmpTGTGCNnVkL6jy9kXT/nStEFdVYN5E+jUfZl/6BX0oDazAdXFj7XppqbVVqKCurGwHG3sGeyjwYv4dm9a76yD6WmqTtPPVxNGlHdWoTsTi7+cVoCo3U5KyKJIqsJkJ/9fXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3tLxOCGc3cOb/kXKdZ7yTGwOznkbUFojxF/CjrGmLkE=;
 b=VhY6L47ih+FII+FGqyAyw+oV62jFSXn2POAk8N53aORyttwghwR5K/rpVktswuz6Fqsv4C9fWa1WE8h/o4TBa673SIlbzdj5Na7/6s2S84ZsBKzpQ5BejikVZgQp1JAPLnU3w18xiXxIUg0JYyhYZMc8xGO0HFLeVO1jdl6rBogu/oyq29XiIvUxeamQqxVHYip5RGUIdUlGYiWyInKTvxN+wmD+TGXp1mvHPVqbj4/Lyr5qIKK4oMwOulO92CFBaGZJpp3rGg/ZxUZUdCKqjpxrUDzQ1wrXRTPzpFYUyZ9I5fR01mWQUCEQl9PxJz6HA5ikiUIqSu0rPqfeQjToig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3tLxOCGc3cOb/kXKdZ7yTGwOznkbUFojxF/CjrGmLkE=;
 b=SNubAdDGfS0z7AgcJ8I9qihuAyvCPCGYcW0oqDYRkJiMhDsbTjl67iKkJaqvuxVbR+SuQl0OEsxIcprrE/s+/wMjSllDbvnf7MaNaHVA1sVHmRz6aIA8xabzhsUbrS0RDydTlaKW4oc1y3G++ilOUvfr/d0EayxkQFVJ61t2eXI=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (10.172.35.20) by
 DM5PR11MB1771.namprd11.prod.outlook.com (10.175.91.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17; Thu, 28 May 2020 23:18:50 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:18:50 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 4/9] ice: Allow VF to request reset
 as soon as it's initialized
Thread-Index: AQHWKx0S47WRJo8trE+XETtesYRvEai+NmMQ
Date: Thu, 28 May 2020 23:18:49 +0000
Message-ID: <DM5PR11MB1659A46C548B2BE3ABF65E728C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
 <20200516005506.5113-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a2d3fc7-8749-4d1b-1df7-08d8035d7af0
x-ms-traffictypediagnostic: DM5PR11MB1771:
x-microsoft-antispam-prvs: <DM5PR11MB1771EBCBE9EA493642D652F78C8E0@DM5PR11MB1771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g0zv6XHMGJ0myAvPhcBxgl4wLsvoDqZvP7vA5JWvI/BFvym7AM/rAIrOOitx6a8H8pDbpVy9uJLyfJWoaJi/vAEfkAV16w1y1/5Fo9zmVqbdIEE5bjytWpn7VeOW7aONsVabcRKVbCA2F173NXH43dxeDUjB0xrk376tWjE2FDi0e/hlgF6os6A+6ryJWLLwnIQNS0HrT4BzWFw7c0nneLsYh+p/h/BTkGE9KKSoFSPUnwB2UjGAF2C+vqY0ygKg6DJmFwl9y+v8u38Ygip17mE7aGaBBFPSu4htClEopYyZ/0ifu/ppqJoqu6UtgCuT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(376002)(396003)(346002)(39860400002)(6506007)(53546011)(86362001)(8936002)(8676002)(4744005)(7696005)(83380400001)(5660300002)(66556008)(66476007)(66946007)(76116006)(186003)(26005)(66446008)(64756008)(6916009)(71200400001)(478600001)(55016002)(2906002)(33656002)(52536014)(316002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oj9CC/Cz0Yt918AAg8+UbFLMRlrCNtmQ6tfriyRqdF4bbCYXM4zD/XhE3lKyJBvNenWC4zV2N035vOuBvd/UDfRaNSXU1opSCSlYKUP80efzFaern2KAKcwnVq0CfFY9C1Zh3ksrGHf27koYnNeycjq5USnyAEv1saLG2yVBTVOnaJRZXUuAeY2T0r1CZBvnQVpn8LzjRCflwFvQWX6ZJe4fx3d6G/+w+/02WjLeJZiMRByUs4cwQoDQTHl6WUz+9YLU5JSoAHCm8a9/t7uL+YmO1OHUPhyOJZF5U8Cj+JwFiVGkMFqHC2VQeplO8JenmH5DhdeR1p4W7jyzYhdcr344RTyCkjrTyQEjwdxiW/VL8asP3yRX6VfmnB60z+auhJGTblpAvObFYZItOxoW+aJIjGF7SnXJpBpwBixQdL74+OOZIpuey4pMKbi0S/O/h0lOUnJU7srM/wAASlTzqkW8VQEHukGPhTAZM9Zb6u7sQ3xLgL6QpfZLxA8vf8+9
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a2d3fc7-8749-4d1b-1df7-08d8035d7af0
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:18:49.9195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bNTC6r7yZTEx2m5jYe6c+lSPxSPw0KLAgcZkOGu9KR+SbtWkSi8A8rfuvFO9fCPs38wOqrYrlxPeO/UpPp81RXXQSheWN/zt06GQ+vAPY7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 4/9] ice: Allow VF to request
 reset as soon as it's initialized
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
> Sent: Friday, May 15, 2020 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S46 4/9] ice: Allow VF to request reset as
> soon as it's initialized
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> A VF driver has the ability to request reset via VIRTCHNL_OP_RESET_VF.
> This is a required step in VF driver load. Currently, the PF is only allowing a VF
> to request reset using this method after the VF has already communicated
> resources via VIRTCHNL_OP_GET_VF_RESOURCES.
> However, this is incorrect because the VF can request reset before
> requesting resources. Fix this by allowing the VF to request a reset once it
> has been initialized.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
