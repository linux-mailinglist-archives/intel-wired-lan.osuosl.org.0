Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD09533877
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 May 2022 10:30:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA5FA41BCD;
	Wed, 25 May 2022 08:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V11uUQbx4RoW; Wed, 25 May 2022 08:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5130641BC4;
	Wed, 25 May 2022 08:30:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2946A1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 08:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FE9A41BC5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 08:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T9fXWbrlcpsM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 May 2022 08:30:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B17241BC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 08:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653467438; x=1685003438;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uNRqdwZGRpKzpM7Mw0+8/is732rLlhW5Joc+u3w48rY=;
 b=dly0e+zJr2sL9NMoskP1R3kYv+uznFqY7ubxHfmb5eSlIo1h6tInyb/6
 OgM2aur7gElmrdVMPQClea9DY7Rmbu7mPTvvXdyZjccVWqiv7TYH8DjZ0
 qUi1TTmVRN8l98a73hGltzT/niJ7B/H4LSFUz5yNM0zISul3DSgnx+bPF
 I2MN232YRiib7mx2SpxFdfVDfyiVEThXy4hU+yxDaFKBjS48Y3ONAAydL
 Qwc2p8owIWJaosyTmcv4YQWRDaGnZ6HzNLdVO4VAM6kFM54dUG8RncW6M
 Roy7mx6ZiYrcdvSuJQFB/myV8E9scH46ShwuylG7rTsYNosJtLlgOno8z w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="273865571"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="273865571"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:30:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="676775881"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 25 May 2022 01:30:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 01:30:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 25 May 2022 01:30:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 25 May 2022 01:30:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lB4fSZes5VFft5KmOcoUTdYbUh2pyf0A4hXKLaPdXS1Tum/g5b7kKITeQahp2GEDRLboudybX1OcSvW1TLTT/fu+yoYmxKrcQb+vaS2RN9lXwIlXC2y8t2b/ad71lvUgYbYVIrpRPd/FcXmGvaA+hMo5BC5EwOKAaHYdRvYlL9dwjCfVEHqVHuioaoYyTTM/Jh5g3F5WQVHgxVyu0uaZ3ifg03vQjw0W7csP+86dXEv1kmNPpe1bAzmDn9DwPUwmkjMnAq5YHW62VR5GxjldWMg2dQkwqhLXJSXVxP14Nw/D+6BxwbkTLZ7p7mM/m7GHiw8/eXRnuqPme8KFqp78qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xUlQVqvobGYxNgKBUY3wFLF206jOmzGPMMfNgafnyZM=;
 b=LASnhfpYsC51bpe47DYAlNesz6zyqpAvay3JnfdhwZfvZXujPRcsmxD2dIv353qpIbRfYYrh2Gdt8ftuIpR+I6qUyIPu/80rc43CSPSYpa3oRVc17KniyQU5tvLxyYVXToR/JHmSfi9HCNpIQOAEEuGKk3Qv0hZ2MCfGrNSyPwBs1A5O1br2InFGpke3FG3TWribLW5diL40oPh7EW1qgPeCr12XdcqVv38EiC8vVYMMWbMNNB+npXQKx4J2CwKWoSl5qvg+1rnBMg0nakXUmM5WbMQvsgoR7Cfq+BR0WKEIDWbupLoCc6czcHpk0ZVkzYvN5M+mEPSys5p3PCSkGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by BYAPR11MB2757.namprd11.prod.outlook.com (2603:10b6:a02:cb::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.14; Wed, 25 May
 2022 08:30:34 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::e5a1:4f2b:ea64:595a]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::e5a1:4f2b:ea64:595a%8]) with mapi id 15.20.5293.013; Wed, 25 May 2022
 08:30:34 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "lianglixue@greatwall.com.cn" <lianglixue@greatwall.com.cn>
Thread-Topic: [Intel-wired-lan] [PATCH v2 2/2] igb_main: Assign random MAC
 address instead of fail in case of invalid one
Thread-Index: AQHYZgeoYiOHOEuvQUyLD7xuqhYz060bQ+2AgBQRwYCAAAB7gA==
Date: Wed, 25 May 2022 08:30:34 +0000
Message-ID: <BL1PR11MB5288F4233475A84ABF2FACAB87D69@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20220512093918.86084-1-lianglixue@greatwall.com.cn>
 <d50b23b1-38b5-2522-cbf4-c360c0ed05cd@molgen.mpg.de>
 <DM6PR11MB46576A8E6EBCB81E29FA49DC9BD69@DM6PR11MB4657.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB46576A8E6EBCB81E29FA49DC9BD69@DM6PR11MB4657.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d4e9de1-8484-44ae-a457-08da3e28d69d
x-ms-traffictypediagnostic: BYAPR11MB2757:EE_
x-microsoft-antispam-prvs: <BYAPR11MB27578905AB889F73926E82CF87D69@BYAPR11MB2757.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uZ3nMFQjKR2oOmvvrPfikYgLnwoWCWF5B6Vnmj93+Yr2qNf3c56sqAGJS3pJ+rI9e+7JwiJBA1rhCuaJz3UbxQ0lHd86K8rty5r160vvHxfmhzpLvTQ1FneSTEnioJ/cLM20guyZ5hItTwAKxQqOvt1wA94WSMCrpAU4oCQvny3YxtPvkbV5IkKM5joVcfdQkQEP+NeTzX63gZ6TObTZ8ymw8XyVa/7hpMXSpT7iAPk/bjseTl1dIS14cIsDGDNC3bTmXBhYdxfGI898v4rJEQjV9XxFA+XgeK3W8tiS/yF6t51Fe/wZHPz63w25bbI0cJFREcSom1mcgqCqMuV6IctrWHlS6+riHZDGzxaqoNxxqHDE9FMQMyTLYQkifFE5jfyA2r9QiNOuzmez/NpT6Lra2241CwvnVu/I289Y4FcjhnRTTV0E+mm+C4VXLjzi/UdCgCHCi9BZC2XafbiV3E3WSzF9V+sMn996HkgZqrB/aa9vEzF5yl1C+4xA2AcniJi0E96jjNfQLFS8HrfdKwtanypm2hZBgIBX2+UtwFp6wPGNKPaIfeTKjNkGF7IjFYINOAUrrg8H1UyUdiLss6irRbyLWHApkNgXDMk8Ljq5rOaCbRFU5hZzRlr45b8mO/evd1KLy3g+4uqPdtDZVcY0KjXTBHTxNO9flbe7RrvF6rsWmE4VTZKCTSghLlfRasOZPLkFX4z0rt8Gwa6z3A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(33656002)(2906002)(8936002)(55016003)(5660300002)(86362001)(508600001)(52536014)(26005)(316002)(7696005)(38070700005)(110136005)(9686003)(38100700002)(4326008)(8676002)(122000001)(186003)(6506007)(66556008)(66946007)(66446008)(66476007)(76116006)(64756008)(82960400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?emkohyzB34kkx0YJueNoA67HUZssszeDQnYIrpuhvtXDoES72fcm8gCfq/hf?=
 =?us-ascii?Q?HP1A8CR3EnQybRK5nojFz3EdfBnU3xgbPD/H8ZVsqwCqiwYfvBIokcXl5Pup?=
 =?us-ascii?Q?i8jmKk77cS+uO4jGpRhePLxR1TNB6dbi6MGvSvqbkcy4CYMw/59cdhOpuWZI?=
 =?us-ascii?Q?ZffzbLx5aJWsBRJMMgoWRxY540JBG9XdZixtPpGKiZoCgAypChZCAOKqR+z0?=
 =?us-ascii?Q?Ag1V+A4joBtxv29JB5YB+lsSkt28BCI3PFFb9NhQVJqSa141hNtWIolIECSy?=
 =?us-ascii?Q?CmrYosFegQqhtDUE8QGj5MatIwHH6XYBV4aEJ5UUWxWRqMIG7SvSZlOkqRk0?=
 =?us-ascii?Q?mAKNNWksCLEJo01wVcmJw4G2Nmpa+ZUyoMJSUtzHYrJeQ2arGX7R/2PS+8eU?=
 =?us-ascii?Q?leEkJtHV/N1rUv2pIfRMHPRNa671K9ucY27LV1wxudbmAk7Qf8Pfq/pzvwYX?=
 =?us-ascii?Q?329cWm24xHHEZtGuMUQOyriFoF8ShreCtupCrEv/cDdPqODiB1beE0weGvrw?=
 =?us-ascii?Q?nLoq6XbdZRdc3Gf55ryxTwbwV+vW8x+Lz4dwJPrqgYHEUbCVEQFrDE9r79fz?=
 =?us-ascii?Q?Nb27JedaHPldDsBXQW9I6F+easw9vIaFmZp51pAg6XWX6sKNDtVq1vJRRu4K?=
 =?us-ascii?Q?9AJ7dvZ9Hta7jGdXGdJQvHGIW0LRVShqvnvrkmzvVrZ8vxrldKUxhbbGzCEi?=
 =?us-ascii?Q?ZXTbF5GoDbqyW3r5omLtQHy0zlZn3rMDRuwy4pM6/8hnlGBrrmKQcHU73cE4?=
 =?us-ascii?Q?3mqEigIl0D/bckfHHpUitt60upHuIv6xOg9DbRY5qx591AfHM5IQwJK1LG6D?=
 =?us-ascii?Q?LJAK5s/t3Ndr32b2P1joaYbLzNJg9HBL55xYsmjklWWTDQgSxQQIp2c+piq5?=
 =?us-ascii?Q?KoY9fej2WHgXTkjDfTlCAg0tO6BUnRC5D4O+yVnKyoIjzMYPg9IjNpG/lG8P?=
 =?us-ascii?Q?FKP4GR0Nk/LweJKUpwlq5lCRKF27dW0H4LiC+SwheczImX5Kjc4cuYU0q+VT?=
 =?us-ascii?Q?rFvTMxLYzdojtonS0oQGDw23i9Jt3fABgVmtvMAkPe63fOWlJ8wDtQYOjH4r?=
 =?us-ascii?Q?+yDq9IfyFy/c5389s+08E8uwBLmPBTnCpjc71mBh5N7T5hOoh7PgnGcy/IxJ?=
 =?us-ascii?Q?yOVpWREI4yjymebi74E6WPjbTz5u6KrcbxKRCSetwC2rVbRhSdcsKhz8hjDe?=
 =?us-ascii?Q?FuMKbeO3wzmrlVEv7EMqQgERZaxFZMrPexVUbge4YHh2czGJRhG1XIK8cNEp?=
 =?us-ascii?Q?MAYyxsYlaaMiCFisbHKUw/8alMnYZ14s07ZF/JhrzVP181Mr1YjjV/oYJdko?=
 =?us-ascii?Q?c9WuBwu6HCrCyevgxZFauoptR3vp/nphlQZJ7yG+vfcOGoxMV1YzwhGm8o46?=
 =?us-ascii?Q?KZTCWZVHjgpebHaLDkoyIV6QwvwyIVLkLo3HVLF3xxoy0r5b/zkJGaoEuk/8?=
 =?us-ascii?Q?AC5CRi9AYQnDmc2V3bjJCC5Rno4gZZkaXB+RTvCw02JuCffP0gs46vd2EMbR?=
 =?us-ascii?Q?uLiIKSOTnR34CLN01nO0y+FVxPlUGz8xfnsjZEHcg1QeV70C2viGLwVfTSVe?=
 =?us-ascii?Q?E9DHDa+JK7u18XcBkkhXMSZTc6CXk978wA2BYgLqu+UPHAdpmoAYfidSLbT0?=
 =?us-ascii?Q?fyhptGLeiNJtIqMSkY3P1hKWEu3LmKzb4z8ds1a7cOIqCM6auTEVmfj+CPc7?=
 =?us-ascii?Q?gaO8u3MhJIqDt8jR95BuBpKD//EHAYDZLONyx5C6hbWX0l9cIIOSq9FmbMnA?=
 =?us-ascii?Q?MVNzFrJFcmjIt1OdZhohKYsSk05q9eo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d4e9de1-8484-44ae-a457-08da3e28d69d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2022 08:30:34.6303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EAXOW/Ci0fi304KGOW90+tXDR6tJWzz5jBAeEImGTnvRVRDyfgPfabex5X3bg95B2uDc4+d0l0X9PvGCCXdp/QzGAloCp+YGpJjnIdEgBAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2757
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] igb_main: Assign random MAC
 address instead of fail in case of invalid one
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Dear Lixue,
> 
> 
> Thank you for sending version 2. Some more minor nits.
> 
> Am 12.05.22 um 11:39 schrieb lixue liang:
> > In some cases, when the user uses igb_set_eeprom to modify the MAC 
> > address to be invalid, the igb driver will fail to load. If there is 
> > no network card device, the user must modify it to a valid MAC address 
> > by other means.
> > 
> > Since the MAC address can be modified ,then add a random valid MAC 
> > address to replace the invalid MAC address in the driver can be 
> > workable, it can continue to finish the loading ,and output the relevant log reminder.
> 
> Please add the space after the comma.
> 
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> This line is confusing. Maybe add that to the version change-log below the `---`.
> 
> > Signed-off-by: lixue liang <lianglixue@greatwall.com.cn>
> > ---
> >   drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > b/drivers/net/ethernet/intel/igb/igb_main.c
> > index a513570c2ad6..746233befade 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -3359,10 +3359,10 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >   	eth_hw_addr_set(netdev, hw->mac.addr);
> >   
> >   	if (!is_valid_ether_addr(netdev->dev_addr)) {
> > -		eth_random_addr(netdev->dev_addr);
> > -		memcpy(hw->mac.addr, netdev->dev_addr, netdev->addr_len);
> > -		dev_info(&pdev->dev,
> > -			 "Invalid Mac Address, already got random Mac Address\n");
> > +		eth_hw_addr_random(netdev);
> > +		ether_addr_copy(hw->mac.addr, netdev->dev_addr);
> > +		dev_err(&pdev->dev,
> > +			"Invalid MAC Address, already assigned random MAC Address\n");
> 
> Please spell it MAC address.
> 
> >   	}
> >   
> >   	igb_set_default_mac_filter(adapter);
> 
> 
> Kind regards,
> 
> Paul
> 
Hi, 
Please apply the changes suggested by Paul, other than that this looks good. 

Regards,
Mateusz 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
