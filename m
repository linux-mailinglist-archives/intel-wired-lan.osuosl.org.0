Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 852966CD3EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 10:03:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 906EE60681;
	Wed, 29 Mar 2023 08:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 906EE60681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680076999;
	bh=q3aoYh4lfzLZ8VOb1qLdRt7SKSfiNVydmauNJXWqPj4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z/ILxhQnbBC9gxmkjxpsSFEQBstNLV4BL8DCEWCOHvps1VMa/qDxM/AAjUhJNDOJR
	 7OPOhprt3q48rAy9s12eF6ypqVqa+5NAU3ru/WRaPN/gc4Igp26/8YgCz1Q/CF941K
	 k3iBYCeYCXMhSZG0a5AUorUqHWm4sZGPNMp2aBLqUTJje+3UEDnOFDa8M8MmH4YLCR
	 pWSZ1EVPMpnayArkmUf3NkmlLg7zSA4aW4NUocXSp2TUpPzRx8wNq6i/a3AkD7TX6Q
	 cgo7PNt8BgWZWV/a5aJ0brugfQ6ED8v/sABT0FLzlBI1M1mQJnoWWIgZZsMdX49d+F
	 9ivkjBD/p2Pmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFaPoN1neZ8A; Wed, 29 Mar 2023 08:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75C576135C;
	Wed, 29 Mar 2023 08:03:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75C576135C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 36A841BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1627B6135C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1627B6135C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id loT9Z7bVkfhf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 08:03:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45F0B60E81
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45F0B60E81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:03:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="320463721"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="320463721"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 01:02:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="661508588"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="661508588"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 29 Mar 2023 01:02:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 01:02:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 01:02:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 01:02:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 01:02:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k3up/zEjs8Xfm/3ADwI3rTnhKY86KBxc4fmQpLciqp2NUU3aR7FZvzg30mohCcEAmtAR9GlsKF4ytEZb+qWmx2pjriFugtuO4hZq3aJ1wym7HNrCdnFpKndnZZr3lP9GZzeXp7J4ndYUXDBMej+uqLI0NyHJgVPWpKRG/ibyrgD18NXwWUf0da6qunzuTXo0FxUl7SWOI61LANe/f8DByrwrQzupr0+baJofbkvnx/PT1G27P/FrKTInyfbW8B256Tfgp45PldyKzdzGYYmgh+P9yMsc3YIoi+IZ5uO0YXQZXBIsRvPkrAqu3HkjAAH/+zYi0wh1F+S6WPImFPvTkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRgB83IFLZUGk17lMKQxeFTHLe5Xv5v92ea1OYY/Y+w=;
 b=DGIV4W++thRb9zGnNuvxLJBht9uzWQTo8hL9f6A8u5zWYvWqgk+foSPn+ZXiIidza+UOmXZU1geKj+A2VkYmt9FT2wy+W3+GOTIH+96Ah2e0pJGybfTt0uOo3bS9tY4bfFrks04H1xNufrMSuVVtlbfD0z/UAJTOJY5JgNvoyVHZUm1NuC/uOPNqQt9VKwu3h6z2robVK//tUPZVW+4N6aWTZuPJyFkgOksLHO8OFCXp6gXI7/jXn/e2RyXwr6GLNxWLlh99lf+RfM9rOyl5CnlQiUfD9jCKufeKiDMyLU/m/FJFG0u4pNuzukyDWgb0BZ+52mHWjv5GXmGajMT1Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.35; Wed, 29 Mar
 2023 08:02:43 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6222.033; Wed, 29 Mar 2023
 08:02:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add support for VF
 to specify its primary MAC address
Thread-Index: AQHZWy/2H3O01MC1+k2j7O8tuNcgNa8RcyLw
Date: Wed, 29 Mar 2023 08:02:42 +0000
Message-ID: <BL0PR11MB352125118B92E1C4128761188F899@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230320132427.11600-1-mateusz.palczewski@intel.com>
In-Reply-To: <20230320132427.11600-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|PH0PR11MB7562:EE_
x-ms-office365-filtering-correlation-id: 9d283414-16c5-4b25-d221-08db302bf901
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Tou6wD9JAREhWg+J9CLr6oBIKQp9P7TEBvP+TqOYS0tm00moOXrLwomKghynfI5r0dqPyADDBp8/mExVmO2s7y1Wpfy58tCTSSLg8fH9r/FgsLt/e4DqaXpo+yxCqsvuqgFqDUw2OVaSgN/BUmFhlQb4wBPqljUwUaQdGS7q0QbF0enW4gH8fYSMDhCusTRjDGqxiNt3WpKF5x5O4C4g0ipYatJyBwov5bPriwoZrLtcNYCimDTrrSaQDoyE2D+qkM/LXp4cmrHM7+GnnC5gpLhqH2bZNLK1In4Wb0Citxy9+teTAeRK+qWK0YscgLuly2tdhw09c1JjBJW/MUkDzOuSqwNb+29CwBbxBZTpBkZyl75C8E2I+fI/0d9pcc2W8S/XCPnWESQGTr3LBN8JxbGz8/KdyhDIWVNvfX0AxNcHLaHy1zJw7dDvrjqQ10oNZsAWpd7VuL1FEvsTSRJK4FH+LwcDqLdp1rNNiuAylUzUQgmR8SFBk+WVAKsnBkgXxPf2gUeQG/BT58F7RFWGk0iV4ALg+L+L3uFMcUnUeUP/8Jz9H9QomXNtYRyAx5v1G71MikC3KN2I53TZz/dzhaxj8DVdZw6UYOhe1IJ9oQPz+7ZdhgKsQ6tykVVulG2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(39860400002)(136003)(346002)(451199021)(316002)(7696005)(71200400001)(478600001)(76116006)(66946007)(66476007)(66446008)(64756008)(6916009)(41300700001)(66556008)(86362001)(33656002)(38070700005)(83380400001)(186003)(2906002)(8676002)(52536014)(8936002)(5660300002)(55016003)(82960400001)(9686003)(6506007)(26005)(53546011)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?aeYeJehZCoRxvk5FnQth77hOmAB7+pMm74RDv7sUXv1Ox/IOzjXEA4Ywwq?=
 =?iso-8859-2?Q?h8AH9JVBLuQbpArZrqYKUm05I2SjYYIErNP2itffbQGx6vmCjFEHz7mOYK?=
 =?iso-8859-2?Q?o3I/imOgGd7YQeuLVxv6vXMpWK3erjutPUuIVzyKpdxaRN1qQ5aA5XHFLH?=
 =?iso-8859-2?Q?hKmKBELNJBfa03Q6QkziKRbmRrrdqtwR/Oz0L9QiImuNgA+ZgqbrYpmAJ8?=
 =?iso-8859-2?Q?v19f0LdUSzkEWO14Rzx7qNQdLByOjIXLFVihWXJhLutmLPj9bsFrXqryyR?=
 =?iso-8859-2?Q?GpfCY+jSzRnSOIRBMsbFjEK9B04ixCafL7uJFT6Spa2qFWbVMufPdLdai3?=
 =?iso-8859-2?Q?BFM3ER0B7kb1zvDSsNMa2XOMV9ug+ikag2B7t71HEHdNbx8oV8rTIbbXoG?=
 =?iso-8859-2?Q?JKpKZaFA0eZurOdfplJXfvuB/S0uNOJoAyEqBW4C0GCTfFfkqWLenOuJ9o?=
 =?iso-8859-2?Q?Sxj/MAa7BstX/EGdT3bzYTh/251vCgI1dKsSiI1CxsB99yE0kGNWEoS3UN?=
 =?iso-8859-2?Q?kykTiBCxNy579JX0MqqyoTD7S9I14AExu9W4z1ec8CEbkxqEHIvduoBQQS?=
 =?iso-8859-2?Q?XB/AqChQVCnBxJy21jTzIk59hfLkj0fQwwrEi7I9PPt1CNCPQSUEwP6f0A?=
 =?iso-8859-2?Q?qUbQ2lGDQ2Hl/Q1QfsZUtp5iWjIvJnaftQoDfXa5RDC9jqsQOTqU/7QMBu?=
 =?iso-8859-2?Q?zfpceDf+PlsnvnjjBEceQPJRThsGBF6kr+UA/7qxNylcqYD62OORg6xUxz?=
 =?iso-8859-2?Q?Tzyz6k2AWL2sYGfQqpamkVOxrxIG/TdRefH3lxY+t+eN7w7uyHuiuPOngu?=
 =?iso-8859-2?Q?UqG0a5DPyIexDY8q6k0MIq4XUUUyf/8OlQ6XYPoPdxEfbrB3Ug9AwzxVAQ?=
 =?iso-8859-2?Q?nBuNwQBG28V6Cjfw7vYIy7qcPb8s2uQsO+Wce9WMFbO9Rj+bRGmjbgkxVF?=
 =?iso-8859-2?Q?0r6ulQM8EMUMPV6Fjmr+ubOR89KlKLpsx+ZPHofN7MeKER9wx90Dv6VUxJ?=
 =?iso-8859-2?Q?wikp7tsBm5tAil9ral4QPC+8392X/kPOAEsFVePOxvHd0gHzKWkPvtsj9G?=
 =?iso-8859-2?Q?fXG7WZIBup9VBdzHt+oUcATfpTe4CKg6NGLXfu11DzL72tcr0QAO4vfHNo?=
 =?iso-8859-2?Q?ZK07T/qxZ9Mbu8d4P6QF0t55P4RcWKAPcxScvuTMITaHm6drE+6Lh1q4dO?=
 =?iso-8859-2?Q?eSDK2CLF7PZdtHn8Wx9kpowv883Z0c7oaexj8cyfLDBeVd6NDlPznyhAJU?=
 =?iso-8859-2?Q?LNwmYcYbXFFB/GT9NH23KUP6QQB3+kd6Jji5p+ZyDCsoiGzXh59L48VFzK?=
 =?iso-8859-2?Q?E0B8PNlik4g+D5AT0HysHNvSUabygN7YmlUA5wdiPg2GDTUg2pobZ6Pnan?=
 =?iso-8859-2?Q?sTYfWVmqcChaMbFK+g1VB+qEen/pXqRHOyN01R6NiIgJ5rVXHIU8G1sM6J?=
 =?iso-8859-2?Q?a8zwdR01d278JAieIg2Hvh34W/5V5AnErfGWKdRfOGdOEsrnYk3ajC7M4W?=
 =?iso-8859-2?Q?e8eZyG4I5UdJjiBgVkOMEHR9kMeYU2VGBpLBNxAWf8A8p55byq7w4/Yhof?=
 =?iso-8859-2?Q?MTdxdyA4OORsV17xrV0QASlxV/B88dyxWvQzA3ocb56MI5ESAG0zhSxqBp?=
 =?iso-8859-2?Q?Pyt0d/h0oHNbc7PjWgDqNiloEmlv/tUkG8+zzpjSIGnKl+G1yZYAbTfQ?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d283414-16c5-4b25-d221-08db302bf901
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2023 08:02:42.2206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MGz40JiHOc5HhRcEnhWOKbuKXv2DpXtntCBuygBDV+0hYlPKoIrTTAChmHJBDT8o8ZenXTUTwCLlNyxPyeDxXHMEWr8K4GtlA6CPNzGVTRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680076992; x=1711612992;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VJn5KKF04NNznemh50ii2KgFFIYI1GKitBpmFKlCOog=;
 b=AxiQPqOhss3FOQQrYUeVhmYwMGT3uQyUlbXem5RQi5rGJ69qvGQjw15R
 z2BsAmfwze8lvVR6vCrMMqB+lSbx9iD0sPNPYzQXL5UNMWKIkkpbnhodB
 IpMdpAGLK64lPM35UIKlRawyiik+4ifyXrGR2RetRQGaKghk1kU3g0wd2
 4EhSowRa7BgGTJOe/0R7cOwpmgr2MSP6WDcKMnf55AJxkN26IheSrK9cl
 jR7RTYSdXSPdVxdVqIRLbszGO7aFYBBvw0Q9gFfO6MbHNej7n7q+akQ6d
 0Vg4kpHfJdIlUiHgxU9Cim/TejyxKyeBLJJq6UsXn3RmXDtpNnOlWNzSq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AxiQPqOh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add support for VF
 to specify its primary MAC address
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: poniedzia=B3ek, 20 marca 2023 14:24
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add support for VF to
> specify its primary MAC address
> =

> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> =

> Currently in the i40e driver there is no implementation of different MAC
> address handling depending on whether it is a legacy or primary.
> Introduce new checks for VF to be able to specify its primary MAC address
> based on the VIRTCHNL_ETHER_ADDR_PRIMARY type.
> =

> Primary MAC address are treated differently compared to legacy ones in a
> scenario where:
> 1. If a unicast MAC is being added and it's specified as
> VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
> default_lan_addr.addr.
> 2. If a unicast MAC is being deleted and it's type is specified as
> VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the hw_lan_addr.addr.
> =

> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 74 ++++++++++++++++++-
>  1 file changed, 70 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 8a4587585acd..be59ba3774e1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
