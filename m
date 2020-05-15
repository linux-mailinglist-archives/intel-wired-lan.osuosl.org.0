Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 443A81D5A4F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDB0688F37;
	Fri, 15 May 2020 19:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcxLpGEgY7bk; Fri, 15 May 2020 19:48:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 542A788F51;
	Fri, 15 May 2020 19:48:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 331E21BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2F24187F73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YnfIQuEKWsVR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:48:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA77387F7D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:06 +0000 (UTC)
IronPort-SDR: kpOZbwWKZLMN5S/5N0qbtcYP1oiTU1RFeZ7fmmI0cMI/REVQBcKHS3KIfD3ggQ1DxxWDmOy8FV
 5lweABdEC4rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:48:06 -0700
IronPort-SDR: 4+JFPuc5+SLC4nQHkT7enliKhYE6Qs8m1c5rtsxn+bbofDdKdTEKPLj7gEom0SpN1CzeNEO1yG
 MkDw5k3H00nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="253875894"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga008.fm.intel.com with ESMTP; 15 May 2020 12:48:05 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:48:06 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:48:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:48:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ivdPvCkBGNtxPJho8rmu4cgmTDpiuMSdVZuOvgvw3ZP6zrbS7LqYoqbyM7ug9Tj+Lj2nGl4QbBlfpG933WX0NGyfQ4tDjAmCq/gc9eCcl1S+e5ThhVxzAUo5AxPFPamKJtnvOTmtBLi6+6cOvAZ3uUjpGizJ7sp9R34sxbfI0YaKZ6EoyzLoQcQ5DVx31fmhmUJdpMO9ygtBLlwkiIFxAS0JLoeUGmZabPuZ1zC+Nzp2ePQsFYw6W3cD6adK2cHXepDqS/kMhm4NdYhfVtzzY51fHJXViKT3Suxa8+dW+9/HK27oRJo+Sky1DgPhhHdOqAxB1oZup2C3ypgSb2x4DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I8x4P9kswQ79boWrIPYQIS9qFD+I6CMOevNhPw+omvo=;
 b=TFMgpMCasUN8yZgd7VzLzjvHpuMJu8x7F/m0CX2d7JaSIpFSJJF3BmAg5jg/BbZhDdYxe230aH+icLJdHM6Q6NLIyL4v4bD5dWdUufeZ3hZm+hyIl1QGfllT9BCvpuJPCnIu6mKAmatQkcxrM3bVvuulEHa5/Tc7oWTCWTqcZmXNrcrBsqVkvYHlBMDWWpXnmtlj7sWndiN9aWXvFJmCqlmjn7cYCIfqpPR28Rql6HnR1xO0XDjUbl0OZuTpuWVjCUwME1EvMNdlHha9XjQZ5LoOq1l2Fz96jjdJP+L8/yMdK/L2yEMXkCSzUp6dGTWQOqWkshDjj7mTPqNfN6HcFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I8x4P9kswQ79boWrIPYQIS9qFD+I6CMOevNhPw+omvo=;
 b=q9ph9OIexjTvrT+VfPjM9oRB90BNIXuV3enjMPE8nl0rgZ3vjyYw8+5k3/OVBeEkJQJZNdTSvWDGsVGKQLTjUR5JSlVN2ZRttduzQXtMxehFd2oQuPDiw6XfRyXd7cUZzXRefTWBBcZY3wufAvLZWuRrO4AA0Wwsf+0wnQr5xFM=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1691.namprd11.prod.outlook.com (2603:10b6:3:b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.25; Fri, 15 May 2020 19:48:04 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:48:04 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 13/15] ice: remove unnecessary check
Thread-Index: AQHWJNHL9CMEW4ksNE+JTifOrnZPPaipmccg
Date: Fri, 15 May 2020 19:48:04 +0000
Message-ID: <DM5PR11MB165968EF143C720C513743408CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-13-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 8ff9d8d0-a297-4bca-3c0c-08d7f908e211
x-ms-traffictypediagnostic: DM5PR11MB1691:
x-microsoft-antispam-prvs: <DM5PR11MB1691D752FEE6EEC3C7BF43C98CBD0@DM5PR11MB1691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BWHrnP8dje+Fbj7/WBMkialwRqblPVIxKEkg8tSHA7DESvEVNaSlBlzE5Pt8UFalDtbMYGoLmeHAmkDfpBF8DWTSHQA2RoGvOzMJCJbOvZHbeTGvTpGNCtqOx3MLss1//dWlR7S5s+DAQ7CNtf66OgBz1UM6I9JUuK7AM6P+k8bQLzFtejCkZYQ5jJAhzfLELfv26eb7vdLG6r3DqelTIWSjaAO2sDRGSYUDfDxd5XG3kqR5WbNHYCSFgUV5Xa5HSgUVcsWeQoGGYX/zQAxzKMqrhwnIaDcg3MomqgkF7OJFP5pD+BO9IBfcZ55bfLQm+JWpX6nt3UqzpcVPDaQm8TqWOB14eYFFJKRJHcCvaNsEwAI3YMdqbbMp4sgfhFH2PHq70iPC28OMf0HXaE3esuwIatgOfXcOQWytx3bJDMeIseN/r+7gFxNE5jZmx1yZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(346002)(366004)(396003)(136003)(86362001)(55016002)(33656002)(9686003)(2906002)(71200400001)(52536014)(316002)(8936002)(6506007)(8676002)(478600001)(5660300002)(66556008)(66446008)(53546011)(26005)(66476007)(7696005)(66946007)(64756008)(76116006)(6916009)(4744005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dSn2Pg2UYCYlzM+jESg/7CkntSooKygUfYKv/IGRAAOiJPzcNnLF6/x97INxTEmJkpnSPvYL+WGeBjotAjNPpxmDugCLQco2sM/sPleSSBv/reynORsrIgMxAOrh4kD7rdpPRhvGwBfacxSPpU/oPnNUnUTF4uEIhQZFV0ahzlhXWpNlK8PSTSci2aGuTtpLbX7QnnLP467iR+ttY2/OQ/lIxiafR9K3IKGrhq2hXHAZ+D+NxjeXuPy97XTTOf01UzZU3MMjpL8J37HVwMY5/EUou2iC3M4aaV4kzzzpbED7sPhdi+5PmO8C+IsmkORENbTcBRzadPMkQxAJaQSHQWkRuYLvzMRFVzmY2gVoW6bv0HJNlUe4QWu3CfgR+H88kndgWqaLKUIR+0bXqvqbhNuk68CppAP17DFBb2Wzo74l7aWU0kq6GNLfhoZ2APF0+7yRMBwcJ9LfFhaGtmHZpzNhvu0/rXdGALa3Tgt5sjqd/zSzJSs3sHh4zfbZEPHH
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff9d8d0-a297-4bca-3c0c-08d7f908e211
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:48:04.2829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 97JDo8DyiJk9nd/sPPLyRK4gSsKXZu86RwTZdL4jqVxzR9UNLhor9+xXGwjUkMAhkq/j4Mtr6nUg+T6xsYu/6iGmeF6whCqM1LYWPjAbkis=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 13/15] ice: remove unnecessary
 check
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
> Subject: [Intel-wired-lan] [PATCH S41 13/15] ice: remove unnecessary check
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> The variable status cannot be zero due to a prior check of it; remove this
> check.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
