Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75365232332
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jul 2020 19:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34C588688B;
	Wed, 29 Jul 2020 17:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C-JgSete5HmF; Wed, 29 Jul 2020 17:11:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD06486896;
	Wed, 29 Jul 2020 17:11:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD1911BF346
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jul 2020 17:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3D1B23E65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jul 2020 17:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FVG0rNEkhIx5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jul 2020 17:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 82263228EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jul 2020 17:11:38 +0000 (UTC)
IronPort-SDR: UJzmw/hOVPXkYR05DbbH63cflWnms5zwftlQ4PxQlZWov4IjCfb8M9rnFQ4iH20QN08unp1j4E
 ByuN0r5L4mgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="212993686"
X-IronPort-AV: E=Sophos;i="5.75,411,1589266800"; d="scan'208";a="212993686"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 10:11:37 -0700
IronPort-SDR: Nnobfs4B3FnfLEH1tltc2sQ6MYBuH/I0O7UjP5ldv6R6i5JL6zYQO5Jfm+gmM87zoS72Eq2tq6
 fYjhVlNnGhdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,411,1589266800"; d="scan'208";a="286579053"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 29 Jul 2020 10:11:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Jul 2020 10:11:36 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 29 Jul 2020 10:11:36 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 29 Jul 2020 10:11:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 29 Jul 2020 10:11:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGaCUksUBxrRM+fPVQbWMMcjmkJssRpyO4NWXE6TEgjmjSfr6zU3Cmt5ahiaQ208p/vNk4eJJ6GqXko7clrEML07XI6d1dcFYi4PuFkuqoeMfwdn81DO1+H0BCYpLkjLjilDjMAMdMOTdRWlspiZMh19vnobTJTOL5ClSZKBvNlEiwHi/IQ+QjI0l2BVa00P9jzsi8n6+Tlf0ZY5/cjSsmpVpX7q7q9Bs7y1ig6mlzGJPZ9hWKqPnkxQxCYhw/5CNCUMk2Ex57GdM16Jbpot5a1aCS49RKRoCytALUMFnmtloffJ2Xe2trL5k0xDMbqfgMi9bZaQUDomb4d99a76rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z1YhTEz1vGNDrNAfC/mgITkcdmGsDyPWSVRpulYxC+Q=;
 b=RIBLVDq6zNMt+gdjvO8ZptqSmqaQYmfOn4w8tVNsev2zY91JXHBLU6vU6Hktgvd81T6SwsZTbhDXXOR95eCpPVH9/ol+fOTGYuIvYUaUKWgizZwnOGKvtNrWm6UgJMrqy/MZejQprczqhSwScqmKRdF/4LxbDSg7x022XJ/Hzp1ww3hMhGrN7+q/x2d8+84pULC4IAtqg/vF0SBOJ+f9dl+l2JPuVuhMJugtfJDeCsIx6aocVZHhrDViVvNHz2ceK7eZp6yqCH51S5QLfHcFwpWcIxDuJmA6YcWVS1Q42PUYgfTLDGWZCFiVUp1zGy+zJ8mslz6iCrNXB1A7fJB3sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z1YhTEz1vGNDrNAfC/mgITkcdmGsDyPWSVRpulYxC+Q=;
 b=oAC61Nn4pGaTEQdE4zpYaDBOENwFILxMq3NmHZ1QpfaD/Mt7h6P3x7l/i06KHIKjasDnBJhjXdhYqy3f1lmadfJfgwJ2rT8ZNy1zwsXh3Gn84hOyqvwsGo35F+Uua9nCPnE4s/3SBAEW2EfZ0zR+dLdNbLZmL9DX76CwBgykF+4=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1764.namprd11.prod.outlook.com
 (2603:10b6:404:101::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Wed, 29 Jul
 2020 17:11:33 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Wed, 29 Jul 2020
 17:11:33 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 4/4] ixgbe/ixgbe_ethtool.c: Remove
 unnecessary usages of memset.
Thread-Index: AQHWWhb228xW4GOL8EyMDSKP5ArWfake4kTA
Date: Wed, 29 Jul 2020 17:11:33 +0000
Message-ID: <BN6PR1101MB214560CE80E83A83A9BFEF318C700@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200714194212.GA21612@blackclown>
In-Reply-To: <20200714194212.GA21612@blackclown>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fd62d80-7e95-429e-d773-08d833e27190
x-ms-traffictypediagnostic: BN6PR11MB1764:
x-microsoft-antispam-prvs: <BN6PR11MB176495F74C60D1AF2B11EABC8C700@BN6PR11MB1764.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:439;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ISqH8Ry301GE3pIS8IDrd2bmv2rF3wXrC0g9Tal8H7nVS3sJKljetxXgeHKxWVQFt/f2pF8u3gx2tUy5mAeEJRC13g38cP4iYseUgt7ZxJz1B38dkXu9V2aSrlHZ3p0J9W1qhWmgSVTyayO3algFJzAGWNarPuvpQc3tnaep3Bqx/t8r1F71+QC50SHm3yxA06YL976Saf4jGfbIM1cY1WLRk81vPslYagmdjEm5Pl+BCu6pLEoF7nsPdBKiQq56cZ380l4WEr9gmMEEIihDYAxae5Jkd8yqdH8+sK8I2kSHOmOXb0B9dlwADDsJdjgrOJqyHZoGxaYYEapB63GVVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(316002)(53546011)(8936002)(110136005)(6506007)(8676002)(186003)(7696005)(55016002)(26005)(9686003)(2906002)(478600001)(4744005)(83380400001)(71200400001)(64756008)(66476007)(66946007)(86362001)(33656002)(66446008)(5660300002)(76116006)(52536014)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6C8YmdvBFjjzZ/uEZU1YQWHvjWDbgw2yhNH7O8NHH722++aE5xbqudC3juiWRl0Smd1izdkgzYxscpRPNo3fj5e6uk9aifmC5+NKNOhwBAZ1XxTvkBN7XA70nS+wxk9aYh2kK/fFwY0cYAlu8nTxIsq2kWFU8uQrQYPS9YkKT7szRzIO80bZgbz2EjK+0b+hbZrpRhE+0WzoQE7XyoA587Wvu0b13n2/GyfV0T+FvEYCg/lDY92+67SvepRppYZxmsIDxomr+cl+aG3TuFXYP8Ll03Yb0Kgdyo3jbQ0mz+nvQ14a1IpneiXqCPoFWxFH3Nfvo5bPfENejFO5uc8b0aLQ/8/k2a6sVSp0jEdLfOUUOjx99vEcZJ6enIgowh232zbrG78i2ridPeSeAeb6sBVf1lOpc9r5EA2ZG9OkunTQXkwPQIpVyPg1EcmwyVo/ny0aDmuxaTJg5EecxWlaJc9elqKDoaifXF7ULtpenlc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fd62d80-7e95-429e-d773-08d833e27190
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2020 17:11:33.1779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1HMIwvRgR5rOSeXvOnAxkvDYu8+BN9PfIP2tcv754dTvPPSIRO9/SNe7L+V+V8JZFtjzBQDz85JF+RixSo7Ea+ScSI+ckS1x6Qwrc0jvu20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1764
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/4] ixgbe/ixgbe_ethtool.c: Remove
 unnecessary usages of memset.
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
> Suraj Upadhyay
> Sent: Tuesday, July 14, 2020 12:42 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net;
> kuba@kernel.org
> Cc: netdev@vger.kernel.org; kernel-janitors@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH 4/4] ixgbe/ixgbe_ethtool.c: Remove
> unnecessary usages of memset.
> 
> Replace memsets of 1 byte with simple assignment.
> Issue found with checkpatch.pl
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
