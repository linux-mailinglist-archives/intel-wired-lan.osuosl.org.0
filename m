Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E15A1E6DF0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:43:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37B4F204E3;
	Thu, 28 May 2020 21:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cqcpv0nQQv48; Thu, 28 May 2020 21:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2385B21514;
	Thu, 28 May 2020 21:43:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47DC91BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 436C18832B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNMyl1bqLNu6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:43:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85BBC88329
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:28 +0000 (UTC)
IronPort-SDR: pvk8e9f14/eC1uy0qpU+gu8QMziwpxWL/K0FYgZ+yDw0CW4pioO2YSnZWawAQywTNB1EAEDoSo
 5MsAqs7j10jQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:43:27 -0700
IronPort-SDR: +Om3uTnxKseBBhB9ws4fFrprz2D4e4qzDaMfbbq5ABZozlDyEvXUxEvZy/1ZuXibj8rnJ/GjOx
 GlrkVn5IfFog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="255912819"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga007.fm.intel.com with ESMTP; 28 May 2020 14:43:27 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:43:27 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX158.amr.corp.intel.com (10.22.240.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:43:26 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.52) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:43:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ob/CFn+a5wm8o7P5+/TQ88ehX6t6TFc2yovAzU/OIv96w5a6xSvAzwWjMBL9h1q5xnqs9iKxsdBK63WjDO9XgMr/xxm3ynPZkryqzVKJ0RJUVrObyFm1+NyCkvlGe8KZNDQqHoW1ADT60N5mwK9TBk6ea2PFelzgpuI+5y909IjvTO15KeYwpdmCStGsar7oJMatWABXSqANZI+8T5ih8SRZe48HLqH6UaPCP3tKO4/pWg95NE1Uv6TDdnVkPgayR/MlvUS1Y8W8Ph81djYxCZaBoIYhoTgBelewoUkhcQirOy3od07O3Qk++PevPOZUYIJoFxSsWE8CMm7Rcmj6Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DGfArmilbn7+/5ZOP9PxN4OPPizekyrrA/+z0LuGsVU=;
 b=oV9D32+/r+OBZ9tB4H6pO+1KZVxsaeEGwjc1dqWJeEnZSycRZZxlxpJQ6HV0tgFH3Q7l3WagwqpKzFYN6+uam5++7GDIPETT0hhyHH9PDzxtYsOO/JombFwovt2DvNMzP4CwleyyokDjwm4CJIIZViEcgWVYRidhmyxG2yQ6GpDAu6uHOnIJhUvjQpFInMFSakgCAp1lhiMevEuTb70BsjUkzjo5/xZah1+O66dE0AxJC4Qlu+BVnz07a0/IdBX+v4JC9AwoPSBAfzXQnNt8Dd3V0YrcHBbWfTw6cpO0c5hsa0SKF+GWrejAHxwH5xNkTW2Vn3gM5FWg4patECbJiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DGfArmilbn7+/5ZOP9PxN4OPPizekyrrA/+z0LuGsVU=;
 b=ck7o2WcUFngHZl0Th+o3F4Tx5L9Lt2qDEjbxupftyWV+QwHF59BzLjQsjHrrBbrd5zuV/x5r9xXJWdSEcNP12ramgHTyVFxA3i+QmnOKpR6wSaTltHzgXk/0e87vxDe+YowZ/9yoDPr+hBf/TRnMd6LQcjVFOIzWO1pTBx3Zkxk=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:43:25 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:43:25 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 11/15] ice: allow host to clear
 administratively set VF MAC
Thread-Index: AQHWKxyYP/v15OwnNU+zIN2ktdPBvai+G7pw
Date: Thu, 28 May 2020 21:43:25 +0000
Message-ID: <DM5PR11MB16599ACCED4E7DA70290CC178C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-11-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 23bd2520-ecba-4852-8cec-08d8035026a7
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB2043EE7CA9A41EE8392B70C18C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: auYvzPS6VOOETvxA00yR2+AWnM8r9xh4TWMBqE5kyEm12WZ66eMPTsF6mrmeYmhiRDPWzRkKRzKm4wFIfTR/eXqn9wQgcSEHNHahOJTS+WQFNBsho8cQ2Fp5cNNU8+eTY3PIwkYo/wAyGQbE42esCcLn24cqeRm5bh8XQ3l1JMNleoJeWui+m3muz2nIZgcR2hegounsRVXbY3DSpg25GDIesr5GZw6VAdYYC6zV04ju1cYG4CMTTavNx15eXZICbioAcAEpZA6yCHtQfHcLr7xWTi5a+QtTCBq7dH1CK1/P9dJPWSvLBkd5OFw7u+Sy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: pDDCRC3HnYPUFTseo2FVFK2XF6rmPoB/U3USmBoi8kFJbDNPqzMMKgx0wiflOQI2XHDxqS07+OxlSZJ2KyZyED4ve2+eKmp3tLOGHM5oMnRdcLHr4F7xhbvB/0ccS6w36DC14IlybQJH1GN+Oy5CJzWdH0wL4QwYNDPzv+BXuqkvZF75YmwjR7L0Q3AUAULohvVqFgE2+nql2M9DAtiD7oRSBND+S1kmb7ecMq+QQ+EqFjyi1KYt6IQKr468EmMXFt3GDz03u4AkyvpsnnW9mp7EuKC1+OsH/GF4MioW/ghcSkzzOUGj43X/WJkFdFW4+3JFwj1f/iDLEgRYgTTJSu+t/mWZ1QufPNAvhutlQZfpkEtWvz7HkTBOkeDQ49rVbLJ0ivXO3z/WJQUc4iZ+HSJN7oAKPnYsG5+Uzf4owvTg9M/p/J74X50JjNj5QhiaAuJsZSkGM4fn/WYxCeigcZZkNS4+5N5vJM3boNPnNNrEQGNkgj4eNxS38x+60Rim
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 23bd2520-ecba-4852-8cec-08d8035026a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:43:25.2157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6yJ6RrFRXR2rIiqhEqaetoWLwL2si+39AbpKgw0UL1yCR/A3gxbpcdCwjvWi3L+L1nFBy0pH3hKGdb5w/KdoRy5U8zUDsJOXHGLounaTfNk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 11/15] ice: allow host to clear
 administratively set VF MAC
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
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 11/15] ice: allow host to clear
> administratively set VF MAC
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently a user is not allowed to clear a VF's administratively set MAC on the
> PF. Fix this by allowing an all zero MAC address via "ip link set ${pf_eth} vf
> ${vf_id} mac 00:00:00:00:00:00".
> 
> An example use case for this would be issuing a "virsh shutdown"
> command on a VM. The call to iproute mentioned above is part of this flow.
> Without this change the driver incorrectly rejects clearing the VF's
> administratively set MAC and prints unhelpful log messages.
> 
> Also, improve the comments surrounding this change.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 22 ++++++++++++-------
>  1 file changed, 14 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
