Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4B84C1A4B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 18:56:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8B2E415BC;
	Wed, 23 Feb 2022 17:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7nUE0CcJZvUA; Wed, 23 Feb 2022 17:56:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4B5D415B9;
	Wed, 23 Feb 2022 17:56:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CFF11BF263
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 17:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 416E3829BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 17:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RB5KtlVCFqbo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 17:55:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9722082983
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645638953; x=1677174953;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nPF7xf0FUtgi0fsPVaAy6RzuNtselEg6yP1Fu+uo8I4=;
 b=HJECf0abV6dFTNwW4HoWhSZMeQyxZ5x47j0KXybLZ+tyifN10wbUzJ+0
 jaqDx3J5y/ziXtALBlc6dziFlVvBFbVNl5Q2U3jds1Cb+gXKsAUG0Sgo2
 afvyEdmHEO3j1TGW1vhIh0ml0UhnfvTiM3XWN0QMwmINK5ILm+eX3pmX3
 1ScdrNiN9igPrFNURsoi41nz5+AHCOejh5+9ark5k0OaN9GgwR2w/pjwW
 wpvahvBLuWFQCXUikTPykMbvPa20wIfWM8LWcS8kjtZ0gumxWHN7KK2NF
 trkd6eBq6dtSlInUNWlvpCjwJjtx464IpJRQ5w3/aKpsoTfJU2HeGmA+V A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="250868709"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="250868709"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 09:55:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="776764680"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 23 Feb 2022 09:55:52 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 23 Feb 2022 09:55:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 23 Feb 2022 09:55:51 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 23 Feb 2022 09:55:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B95EWbhRc6KiypCZn/xexqlD9KWp4Vq4F/cGfW9y34HzW5hu6CQoPgqdkEqo6u5RVsjWPaT1/pzdGtK5YJBNRfxdkpBI4DQ/vxrh+FNtZhcu2XI0q9KQR4cS5NBC6PdeI1P3eyGufcrxKIPGiXJJckpUTnTuLN/HQPTU781hpZoWkcZBL8wyi8T/GzVGfIy5KLa+Bu/gXOgLqulgSe69FIiJvxtiDreyKqmO/Ts4LpdJO6NZS12gVhSntaQQeH7BKCkwirrmgRQq0bPDYncNTq6TeyI/tgPVuacTR5pksGfg3BjKzBjoLF3lT9ECbrKtbt/Vy0CBjyR7+9iz44XfKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t6KebT+uZZACaMfMEkUgxPq2eBFQE3VAWmbd5faEBNo=;
 b=b6QtX08yxslg6/VCYxQ93Jx0ESqhohD1JeMfpWN6z41chiZfKe2rChfXfCzMu8bumFJRroaiVO6qU0C1zABMuwf/FGjK+DVRGsOUBFJ1OHbk7TDDyHTqJD94y59M0NT9fYkbZCjVyKYeJmAq4acoYup1fVWqfcRHB779MwgQKLGVtcN3dfZfXe7yV7J95wberVQUuXLGJ8y18wmD51i094YF/Te3xsMNiRU+j4fiRHhgIP9aS0lgz1lksi014yT5a25KE/Wci0D0zWEoXm53M52n34vyDcyjJEVITCXGO85Clu4FV5P0SDXp/cxDC4WnsjhCQgBzUP8NndUPUGbRjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 MWHPR1101MB2094.namprd11.prod.outlook.com (2603:10b6:301:4e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Wed, 23 Feb
 2022 17:55:49 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910%3]) with mapi id 15.20.5017.022; Wed, 23 Feb 2022
 17:55:49 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "jdamato@fastly.com" <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] i40e and TSO with MPLS ?
Thread-Index: AQHYKN6XWNP22JWnA06houkUcSxyOA==
Date: Wed, 23 Feb 2022 17:55:49 +0000
Message-ID: <DM6PR11MB46572510E594BF3E789AC5CF9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae7b4b60-809f-4545-94fe-08d9f6f5ba0a
x-ms-traffictypediagnostic: MWHPR1101MB2094:EE_
x-microsoft-antispam-prvs: <MWHPR1101MB2094285935FAB4341E503B5A9B3C9@MWHPR1101MB2094.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aEAf0prrmjaOaL3RdXNwHzgt6yMe/h1qDKrU+f6wwEkivLu1p2OWoOVwe2eKldam/SHZ7qd0q0wgAHHf026vMhLAbxU6ryWMbEH89wc2Ba50+X4CXvPGCo4pDs6amJhx3MvcauJEcy9/+Dbo+DMDPcbtlXjaMVWMGq/A7/+iiyheja3wKD/+M8Q2gc23phI/IdgvyM0KUJAFhKYmonNfJ9IUS51f3bZstrKjF6o5ybgruJNScVTW54U0n63PRxV0ClAKS8d1uZxeIr6dmsf8+aSyudvhwZoSgdLRtJC7ki2QOH/UU37Orz5TCHXtj0S9mlmy9LQh1r26V8cAkTvgqE69fShSV9/YuGI1tD7lJ8+/pY8JHHdzH3J5mBk/AjArMDV0aqnYZLPOnbbpAt51mBcQQ1UpzNC6F1mVyWLSawYzpKcnsrPdWwKGeEBY2NUAlCGYscpCF86OrO9W6j36JjC58Eppr6NWOARynrZB6r+U+3DdRVakgmOmkstsJCg3dvwvmaXpr5oByoUj1sXi0inudFvlqMi04oh1I8nlOc/bxw7sRDyeKxij3IbZ9thR7uhIOcCtFhrESSyjeKEyp4WzOl/lucBu4DpUPPZu5hgLYuonxG7C5zInXbz71qHurFntyQGvrQ1p+9hHmzNhBcPL5YNP03u4Vk0stG1aUJkXKRqata0wDicHVB9AVfdN9tXxI+wp79ArJHc61VInf0OgZ5rx3y7PFAmzwUSKhrhCb60FlMiAc2AicNynxPu9SErA0TA4JalfeHc/FqduAnfg5G38ChDj78VsCew9UlY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(64756008)(66946007)(66476007)(66446008)(66556008)(5660300002)(83380400001)(8676002)(76116006)(107886003)(8936002)(33656002)(2906002)(38100700002)(4326008)(52536014)(6506007)(7696005)(186003)(2940100002)(55016003)(71200400001)(38070700005)(26005)(110136005)(86362001)(508600001)(122000001)(9686003)(316002)(966005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vLspk2HTJWcbseiqhvEGuVvxRK6Vinkbgh/5A2QcpAbc+245fv25P1dvkhHK?=
 =?us-ascii?Q?QCXR/EiLy471weg9eZpuBPAmVdz6CcRJWPtJdA/em0a+NibzBtXYVSyOgptj?=
 =?us-ascii?Q?2vnwtYzpyyjO5O1Lj5AGRlmQC52A5RFnkkKyp5lmHDUMnARup6Yl10ZL+zaq?=
 =?us-ascii?Q?TxwqIW1PqpNBNtSlSiEXlXmLTu51zxAYBD83DqjQi/O+GqJuObYjc9fpxFDY?=
 =?us-ascii?Q?GsbWHhQ2Jk/qvelQ+7g67kF9/SUI8heu0D87eIAiLRhLSVns4vIpmj1s4mwY?=
 =?us-ascii?Q?KmGNI+7jGUepE+ReUgUIxUO18V6waJYLUGhIEvuLzmXw9uz0brM7lGqy7s9M?=
 =?us-ascii?Q?//j3+TOntmXJ5Bq5r/A2ZJpoEX9/vH+WHUx52SewW+To31om3/uPGM+S0Czt?=
 =?us-ascii?Q?0po0Cg8LA4eo+FSKQJLbgV8NFxw0eLvZ91g/CWTa44X/AYa14oCeDCDCnV69?=
 =?us-ascii?Q?zjmZ/Vz0/PNamy9/bOhP9nwqVn5yYwLnX8MR8OKEQ9Uj6vaWYoVGgs44XTMs?=
 =?us-ascii?Q?m1eBQ6PB4Diu9TaN1vGGWQxwyM4WHGJwvYbpR4fkPnuuahq0u4VP4to1UUpS?=
 =?us-ascii?Q?n9+svn0XRcgO7w9oUORnJ+DktKaU0CSkNVbfQMrkvAzd5GNw6a9HzGyB/dkn?=
 =?us-ascii?Q?RhtnDSRYo5FiK0cIKGJa/RiL3jJOGet3AndnHXLcy0LjagfIb3p0Sx0pRZ0d?=
 =?us-ascii?Q?YI9xTnx9aIEMI5RpqVy2FfShUDtp9B6wOql4iWtIPUUeupBY3WaYcsHqtiaw?=
 =?us-ascii?Q?IbbAIVsVV5T6wtIuPhhhf7lvLz2ik8dCQpyUpTDkEsctbIIin58OJc52MODz?=
 =?us-ascii?Q?m1rp4acf1jy8IvTS/Q+eN90vhjZXQ933JPHBsJGMSCoV0Zv66IjFL0VDrsoQ?=
 =?us-ascii?Q?LJaVRNpgLMS3o8osP2BEjKwjCtBdsEkuSwlQK8fkUaQcNAHf5NPEQkFkiQJA?=
 =?us-ascii?Q?ObETLGo+nRdRFc9dl6Awx7xWS7xvtP4n+tt/fodIU+jMJoIBAFD2oJ7svPma?=
 =?us-ascii?Q?/fDTGex3ovRDHcJ/DOZCsTGsXY/Xg/7CWn5UHYdZtHV2hFwCdVpUGi3LujXP?=
 =?us-ascii?Q?YoQkjNKLEk5PLst2/W3tyfXtphoqToFJyxFOX3IOYa8/zl0dF7w9dWPF6K6I?=
 =?us-ascii?Q?YllFdSlScNfnCP99LGxW6ucWL7GM74wTurYPK++tHJkrkIOtkTFMyz4SzRSE?=
 =?us-ascii?Q?oqLLlP4lCrzX1Uk8DYFB2D7StMibVGIpsxprrALnYUCWSrdfaH602EyP9SlS?=
 =?us-ascii?Q?VYmK74KbRkEvHBzd2K95gzyjdkitrhprYJH0QFgtqXlI9DqMi1IsWFmzdGhf?=
 =?us-ascii?Q?Da2yYUG0HBr0mZHRgix3jtpZ/fRJT1+zx4Tt+2fkyYQy+CR7ugwtL2xkZXoV?=
 =?us-ascii?Q?DypypjGz/WoYQvshfxurC/T9NGaz8I12I9IB7WRIHT/+CWgomX1dqgA53U7J?=
 =?us-ascii?Q?sOincoRl2usMYG0WhiNqyEl1fWSZiJ4z018zau+Dn6/PGfTJEteufFINVeLR?=
 =?us-ascii?Q?+jJTBsftHpKHgdMe05d2nGAjSv5IveNo/L/CA7A4+B7Xw9qbblph7Ve0K/Kw?=
 =?us-ascii?Q?C95p7ZZBu0w6Pn2tnacvLphNLqfYp5//ZAVlMPxWSUittlw/zhtfJvUosLAt?=
 =?us-ascii?Q?dtz3I8HbUYykI89mB/5vJYHYprOBH3+A23pjmBjeugMH1pa9UE5lF2aJmVX8?=
 =?us-ascii?Q?uTIP2Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae7b4b60-809f-4545-94fe-08d9f6f5ba0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2022 17:55:49.7374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mLlXJpf5I/FHPTl9LhxZND2HpL/njwAsLtQc13/HydpGuZpXKCobXUKZt2czzahBZu2MvTxO+5SnEYL9cEFLLLQtzsnzbYayFaywTsJ+2PY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i40e and TSO with MPLS ?
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+Joe

> Greetings:
>
> Does i40e (XL710) support TSO with MPLS?
>
> We are using firmware version: 7.10 0x80006469 1.2527.0
>
> We've attempted to add support for TSO+MPLS to i40e, but were unable to
> get it working. The patch is included below for reference, but it is almost
> certainly incorrect - and I am not clear if the hardware itself would
> support this even if the patch was correct.
>
> Applying the patch below and using tcpdump shows that:
>
>         - packet data, as seen by the pcap filter in the kernel, is large.
>           This suggests that the kernel is attempting to offload
>           segmentation to the device,
>
>         but
>
>         - those large packets are not ACK'd by the client
>
> This suggests that either:
>
>         - the device does not support TSO + MPLS, and/or
>         - the patch below is incorrect
>
> Does anyone working on i40e have any insight on this?

Hi Joe,

I have done some research for your case, good news is that we believe that 710
hardware supports it. Currently we do not have plans to implement such feature
ourselves, but we will do our best in reviewing if you decide to implement it.

Such offloads should be supported on packets with up to 2 MPLS tags before the
IP header. For start, you might take a look for the features pre check function:
static netdev_features_t i40e_features_check(struct sk_buff *skb, ...
It probably requires an update after the changes you have posted.

Hope that helps!
Arek

>
> Thanks,
> Joe
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index a21833c..b7455cc 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -12920,8 +12920,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>         np->vsi = vsi;
>
>         hw_enc_features = NETIF_F_SG                    |
> -                         NETIF_F_IP_CSUM               |
> -                         NETIF_F_IPV6_CSUM             |
> +                         NETIF_F_HW_CSUM               |
>                           NETIF_F_HIGHDMA               |
>                           NETIF_F_SOFT_FEATURES         |
>                           NETIF_F_TSO                   |
> @@ -12952,6 +12951,23 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>         /* record features VLANs can make use of */
>         netdev->vlan_features |= hw_enc_features | NETIF_F_TSO_MANGLEID;
>
> +#define I40E_GSO_PARTIAL_FEATURES (NETIF_F_GSO_GRE | \
> +                                  NETIF_F_GSO_GRE_CSUM | \
> +                                  NETIF_F_GSO_IPXIP4 | \
> +                                  NETIF_F_GSO_IPXIP6 | \
> +                                  NETIF_F_GSO_UDP_TUNNEL | \
> +                                  NETIF_F_GSO_UDP_TUNNEL_CSUM)
> +
> +       netdev->gso_partial_features = I40E_GSO_PARTIAL_FEATURES;
> +       netdev->features |= NETIF_F_GSO_PARTIAL |
> +                           I40E_GSO_PARTIAL_FEATURES;
> +
> +       netdev->mpls_features    |= NETIF_F_SG;
> +       netdev->mpls_features    |= NETIF_F_HW_CSUM;
> +       netdev->mpls_features    |= NETIF_F_TSO;
> +       netdev->mpls_features    |= NETIF_F_TSO6;
> +       netdev->mpls_features |= I40E_GSO_PARTIAL_FEATURES;
> +
>         /* enable macvlan offloads */
>         netdev->hw_features |= NETIF_F_HW_L2FW_DOFFLOAD;
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 5ad2812..9e641a9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -9,6 +9,7 @@
>  #include "i40e_prototype.h"
>  #include "i40e_txrx_common.h"
>  #include "i40e_xsk.h"
> +#include <net/mpls.h>
>
>  #define I40E_TXD_CMD (I40E_TX_DESC_CMD_EOP | I40E_TX_DESC_CMD_RS)
>  /**
> @@ -2908,6 +2909,7 @@ static int i40e_tso(struct i40e_tx_buffer
> *first, u8 *hdr_len,
>  {
>         struct sk_buff *skb = first->skb;
>         u64 cd_cmd, cd_tso_len, cd_mss;
> +       __be16 protocol;
>         union {
>                 struct iphdr *v4;
>                 struct ipv6hdr *v6;
> @@ -2932,15 +2934,24 @@ static int i40e_tso(struct i40e_tx_buffer
> *first, u8 *hdr_len,
>         if (err < 0)
>                 return err;
>
> -       ip.hdr = skb_network_header(skb);
> -       l4.hdr = skb_transport_header(skb);
> +       protocol = vlan_get_protocol(skb);
> +
> +       if (eth_p_mpls(protocol))
> +               ip.hdr = skb_inner_network_header(skb);
> +       else
> +               ip.hdr = skb_network_header(skb);
> +       l4.hdr = skb_checksum_start(skb);
>
>         /* initialize outer IP header fields */
>         if (ip.v4->version == 4) {
>                 ip.v4->tot_len = 0;
>                 ip.v4->check = 0;
> +
> +               first->tx_flags |= I40E_TX_FLAGS_TSO |
> +                                  I40E_TX_FLAGS_IPV4;
>         } else {
>                 ip.v6->payload_len = 0;
> +               first->tx_flags |= I40E_TX_FLAGS_TSO;
>         }
>
>         if (skb_shinfo(skb)->gso_type & (SKB_GSO_GRE |
> @@ -2962,10 +2973,6 @@ static int i40e_tso(struct i40e_tx_buffer
> *first, u8 *hdr_len,
>                                              (__force __wsum)htonl(paylen));
>                 }
>
> -               /* reset pointers to inner headers */
> -               ip.hdr = skb_inner_network_header(skb);
> -               l4.hdr = skb_inner_transport_header(skb);
> -
>                 /* initialize inner IP header fields */
>                 if (ip.v4->version == 4) {
>                         ip.v4->tot_len = 0;
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
