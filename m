Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 355C01D5A50
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:48:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E603787FC2;
	Fri, 15 May 2020 19:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tgxva7KTTqyG; Fri, 15 May 2020 19:48:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0D9F87F7D;
	Fri, 15 May 2020 19:48:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB7A71BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B715689942
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gLn9d6S4CDF9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:48:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C09A89915
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:29 +0000 (UTC)
IronPort-SDR: 11tenkZpMSi/14cbIVRTnL5Os0uRoy70a7r82VSaSzRYPVr99munHWUMQ6kixtsSfu4yLQQ/yD
 B3m4W2H73ZpQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:48:28 -0700
IronPort-SDR: yne6n/JMqBAJzfcJMWP3pDrSFUf5hQuQPSYn+dvTDta9Asnv4wEaMb/DOKBfvSzrbxvhU+yubh
 PTkAOHixil6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="263293702"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 12:48:28 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:48:28 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:48:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 15 May 2020 12:48:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B1VlmQqoOssZgsiTkOzfV027Za7RB89LAi6POqoEGPfL3pzAjdwOwcGVF/9xmRaQfP6RVobSLk+Xdh6kSoBWQjp+912BTKXQjswNZMy3GxZdI1L7ZmdaBzjq37yTOD6hrbqoFGTzs3X8HWoP8Dzrr3SuuXc17iGU9Czhv2JBkuW6gZouMpwVDELWBpz5A97WCBjqDhvwguxc3c3+g7RdBXXvcpSc0qH4b22L+pqwtx68KoEffrTxTzcwSXFNbJ7rzv9GHvGCWz51ZTjNTZfFc6MeC3Iv/zSv+A3KmWKZA1NrTX/L9OKWZWvHt3PHlvZdxCb3ne90wXBco7ZSddLBRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=owXF24KSiUWbkxeWH4D1urkm0XFEFBNhk927US0gT7A=;
 b=aZCN9BR3Yy86xWMN4RDIVXraEagsUH2wstGcT2e/W8n35aO93DV8PmYTaTDkVvCZT8CmbozWMjOxh1kk9ZTK0cilJeXwKSwJDBj6PUz0AohJV/hjwhuHjh9rlJ0vwj1/5y0vyBggMu/AN2u1f07xDIVjpkQT/dJKiTCdSqDCKjwJ/HIf36o70J4Fxs2qk7NDFG5D40VyZmx/Ai//LDNqUDKZRJXtC67fCoQt+mnptp3rm0GuouSC5XOvwTm+CpsYUO+8hG3VBWh2QpLmzBoBkpYHFp27rncRxCE3+1YKe3HIfaLO+ahtguy/EnSJNDI7V+JcCxD+JFqWQmTQ8NI+yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=owXF24KSiUWbkxeWH4D1urkm0XFEFBNhk927US0gT7A=;
 b=pCMy3TSnrLhQylM1t9yfZVIyQmgIPz4sPwCe0+N3u9k6wU9JGG5zfTxETFFMsJI8T8XEDvMAv6jfnJvs2kt3+Ri/Lzpymb9kYTOmx8IFvLomUfuXA/g87Fm68MyftLT/GAF/CzcAuwdoY/jCOht8dTLoSiZIfObFx2UPGOsvY1E=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1691.namprd11.prod.outlook.com (2603:10b6:3:b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.25; Fri, 15 May 2020 19:48:25 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:48:23 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 14/15] ice: remove unnecessary
 backslash
Thread-Index: AQHWJNHOFHFVEGftV0WxLKU9E52QX6ipmd7A
Date: Fri, 15 May 2020 19:48:23 +0000
Message-ID: <DM5PR11MB165961E68398B11516D826B68CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-14-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 1d792ca4-3c23-490b-ed37-08d7f908ed67
x-ms-traffictypediagnostic: DM5PR11MB1691:
x-microsoft-antispam-prvs: <DM5PR11MB16913DFD5AF7B05F0908CA4A8CBD0@DM5PR11MB1691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9EJ/r1+WDuKI8upPfEvCLpUSjR6UzEaCeIru3MzVkLWutSPnCV6Zn+eyxCCXdfICyGxcSGscfm9Pie8cIjBkEyO3E9FlfM+xJgF2BswmEFjbRrTCnTNPeBJNDNPaCjUQ3s8XfxkBgfMTo60QBjCRzRrqiR8KY7kAHdJ9NsXZJlOe4S9hvAfif0qKmfxQnDjnueWS46McTp3Y+393cf3q1NvQVJXYpgxak/ZoWZHBvklArHpMhF3+se9Ho/QqRt3HZZuIRJ4MRSbKailflQbQbpvlSxqJKz2PJoMM0iYAYfqSJEL29qGlnaEaUS4Xofjp1dTz/Ia5vD0kN6BlgfeknyH45pHH7w078xKC6bEp2tHqJi5LhikXD61AnElwMgnNMw8cJ7ABEiYC4/3ghF1vSDZ+sZEkGSikU0ly1NUgeDRBoN0kXu9MbuKKsgOLJ955
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(346002)(366004)(396003)(136003)(86362001)(55016002)(33656002)(9686003)(2906002)(71200400001)(52536014)(316002)(8936002)(6506007)(8676002)(478600001)(5660300002)(66556008)(66446008)(53546011)(26005)(66476007)(7696005)(66946007)(64756008)(76116006)(6916009)(4744005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: yoBzlXrB0Ojm87HTi7lOPKvBAg7pdNUzwItm3TL1BkFdAxRkUSuN5wZZXGlw2NlYRSjhSgK9T7J1elOjYLJ+/WIrczh1pJYV5tItSEfZ+EKyikFjL7EzI/2vczw/mClJDPslRz0jJG+EjKiQWKWKQMG7LWkBDkDDMDb8LYlkd26QZCswCzZ7v7mNg8ecVSuUUhasaGL6lUY3P/FhP89C/j0yQbFQJtPrEbn0Izc+WALxENf9tjsS+D/BC1STYBxvBKskY9t4KjFP++M5LFIa2YWRr22DOTU/oqHRYTN96xKd6fjCOrVNElSlYzWKlMamqBfpKVwbeizatO/WciSXeI4tIegozv1NX33BpVxxM+cPD9e9qwvng3NSFmey0+G1UzI4AgTL5b/zFrj0i439P7Tdh+GNxEWJy7oqYYIXH2WGJZHoCdrXQqJyGArT9FSQl2KkM10SeZTWCaIhe19RpmNRMxIrqGUyWj9c9428y2uv3R4cIrgAZVJruXsseoeC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d792ca4-3c23-490b-ed37-08d7f908ed67
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:48:23.3420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CfywJjsDTuPCrYc4wRNV1hAgU1gEJmZc1m92obzQkJ7htNDMhX5oENcSfWMOkrrl5UmOWvWaXJ2LDrTSjLuI8mjLsUXc5Vbuiu7RoeasrfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 14/15] ice: remove unnecessary
 backslash
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
> Subject: [Intel-wired-lan] [PATCH S41 14/15] ice: remove unnecessary
> backslash
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> Self-explanatory.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
