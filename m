Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F403F22A484
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4AF7224BEF;
	Thu, 23 Jul 2020 01:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cHTqGirVhdJQ; Thu, 23 Jul 2020 01:25:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 622F92408D;
	Thu, 23 Jul 2020 01:25:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B16A41BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADAE889369
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O4bRDDCrbrOn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:25:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 10CC4892A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:05 +0000 (UTC)
IronPort-SDR: 3ZbYeSWxzmA2wq3PfJ4a+5rvy5i1ZOPs45wBdFaJWaaDXRWkXYewNU77U56kMs4fah0ah9pF11
 4ItQ18GAQXTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="215069760"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="215069760"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:25:04 -0700
IronPort-SDR: KOVIejKmxqeeqY4qYf3k/r24KANYinLIhqt0Q7FX9suOZeMyXNhSeetvGq6bUGifD1xL9EYnZO
 LtckqpW93tRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="320477749"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jul 2020 18:25:04 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:25:03 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:25:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:25:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiH+NIVPsZK3AsVLsE7BrGAe/V1ELhZYHMmGR0tW9NJznmbFMp56OW6QGZEHmj8UYp7cbHcUSDjbekOOV75daY2VKXG0dfd45TlyNJxgtgQHINaSLk3WqD5zc3eeZocihBTw0P2AkD7sQY8U/QA9rWxMZmd/h7tsq+c+wu8SWWrs52VGVN+aeaFXJy31Rx7zSgHtq/HkSLOc6N5OSsIyKsIGWuFXPmMPkLMkmroo/tR2I5n19VN+2/ktojZ8/O3S06uX1PK5bEGdKsJFUfPM6u26XK39Ls96sHQ35EhyGKRMJRiY+TJfFEEW1p6OEUso6LERIPTL+eQeyU1AqUzZFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4KwR7lO/Bpv33AK/G2Jo4caazVttr5c7XftdZe6StPU=;
 b=FZsGr+KpYiOtpZeiYFoDfbO3qtare8Oxb6Iz67qOnMtlLyp2+tEMndOKudK86zjr62stiA/y+Eo89tG8h88qzOKjGymR9OoPbKSD1DrsmmHvgNIpfTKUzZJnsDfnp6iIM1diiOG8WMLieaVkX34D5cjFR0SYTpg97BeGUEKVg5fF5kn3neyuMb2F5BfTMEBV7mkhQZCilSJiK/czas0nKsl7p9U8z7pnPiHvj4YAv+LwuHBmcaAI1jQhLmo+lnVNYlQIhqVQU8H1wzsC7nDRXbPb1w0fGlTmqIqBaY0/GTcJWSzrg2Ap2X5MLoKsSat4xQN/FOZWzU8ahoKp28XYpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4KwR7lO/Bpv33AK/G2Jo4caazVttr5c7XftdZe6StPU=;
 b=bQllBIPXE5kQTGxws0FGfrJL5ChswzOKHngtjc7JKITTVnktUexkVr6vricmaZvctwOn3CkwSHW8OgNXF+cVKbGtiLUB0KHVwd+Ajd6v1fqARIZyteO0griu7gXdsXDPJwb/iJ5Hlv0FGrhcSodjIif4hjM0fV7N8v7E/H9FVDs=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:25:02 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:25:02 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 08/15] ice: add link lenient and
 default override support
Thread-Index: AQHWVgzx22E8R55Rdk2IgfWbpbZPDakUdAFw
Date: Thu, 23 Jul 2020 01:25:02 +0000
Message-ID: <BN6PR1101MB214561F95E4B6DBB849B64428C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 953d9cd9-0cb8-4458-bdbb-08d82ea73924
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB1537DF80FFE2C84FAD4068258C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jlmXVj4uNvaOOIKqpcHVcF5CFdXg0U9FB/UVl7XJKPePNPif4lwh6+fYsmCVm1LXfaSycReSMNk09QXA4vJb4bOAnJqlCOlqBAIT5UfXErr5p6PldnrEuoPIip5rWXIIuGpV8S3CwyQcofSFQNmr6oLhVEbpo7lkxcKqBasdvzfLLxVoRFJP/W0eIGxsQcupcYj0sSWhgY0tb+Y8qkM9LKvyXzJ9hZ+YpAXDnCH8kMSiRAFPae7zzUMeWvxTmtC5NB9kFhG6DXcViA7NuLJMXbUsFpFU4NzCA574zAXebx633F0vrwXV3rFa6MV7gfmO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: pjgyJVfJTVIiILPfcUqDo9w64HWiWNv4vVwAUiIQAydlSm/d0komtlbMfEsEI9Ner1ca23K+fhtEujXYEZnH0A1rKTKQtfaSX7cGlke9WifnUxlokpNFZNUJTH7mj7axOB9EWuVuufYc6RD+0k9YrBnhgdtbxFyvQJ59JiaPlCLw7YPgmhHoKOrkCgKjpXYgSkPFukLVmJa1jOoTCvAqZqriJhmHLGtjyUdh+j91DBLDM7IXi37GeesdzCEfR0o+Sq4rY0Cz1tu+5whK03LNhNLuwcj78R+xr5v8jG8oquwi6rTgmpRd15PqwI+MLreJj+FrDCS0OwJ1GfioBTNE8okKfo0dka3aDP7omCgOM3Z6G/W1ltMdnstpsvySN2ntiGku+Rtql1IT4A1tp/JTKMn4t4s6BygG55RucDLcSqG5TkxynZp/VXywqyVSi3A+388dVKO7F0zW8NY9xAgZvB+t9i5aghsftR2Y/pRsCdM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 953d9cd9-0cb8-4458-bdbb-08d82ea73924
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:25:02.4331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e0mXGGgPUXUCrH7+YuKkHfKTK/TFHa2Dc9IUExPoG9vuQZJTZMi8uEzrJhpgmAq+kAQ9NBT+YfIrE4VvYgbGQkE/QUj/ShW3oTArXaVfATA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 08/15] ice: add link lenient and
 default override support
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
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 08/15] ice: add link lenient and default
> override support
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Adds functions to check for link override firmware support and get the
> override settings for a port. The previously supported/default link mode was
> strict mode.
> 
> In strict mode link is configured based on get PHY capabilities PHY types with
> media.
> 
> Lenient mode is now the default link mode. In lenient mode the link is
> configured based on get PHY capabilities PHY types without media. This
> allows the user to configure link that the media does not report. Limit the
> minimum supported link mode to 25G for devices that support 100G, and 1G
> for devices that support less than 100G.
> 
> Default override is only supported in lenient mode. If default override is
> supported and enabled, then default override values are used for
> configuring speed and FEC. Default override provide persistent link settings
> in the NVM.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Evan Swanson <evan.swanson@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   5 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 170 +++++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   8 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 519 +++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_main.c     |  99 +++-
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |  35 ++
>  9 files changed, 628 insertions(+), 216 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
