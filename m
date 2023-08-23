Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0F87851BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 09:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 813044176B;
	Wed, 23 Aug 2023 07:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 813044176B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692776250;
	bh=2dhfSqavJ1YhWJLZAblKfjNZ9CrExBgf9rIh8wTzU1o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vHdyQ4q3FY7Keppyvgj60vOR9GYYrHM4LbpdmUY/X5FUcRzKDEIeNQK/wCAvh/F3t
	 Q8UDlvC8wqLjtc5y2r5zeQiY17zNIkjP7qyfMC+wIn4NFx6HDOFOjBhj+KLq+lCtzQ
	 HHBX9kBsi352rZRgJgfVW3fbT2I593A533eZg220hsb/2AXkakgZZWcbnik5nd39Ku
	 wrVFZOX+xvV+svJWK4y4m2SSXVRC5BSpoussRy04138DvRyYbnb5+F9dM/aM1tJSR/
	 a9Vivbvc6xA3nMQEJantB2Fmk9N2aojMGMJxg5b1zAUErjqIHmr/RaB2HMu5W7SSwx
	 NRsS1ewhMY5+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rn_3dYIEQWMs; Wed, 23 Aug 2023 07:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDE6F408DE;
	Wed, 23 Aug 2023 07:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE6F408DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 136471BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFF00400CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFF00400CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CR0UPn_WiTIk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 07:37:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E1BF54015F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1BF54015F
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="460459747"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="460459747"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 00:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="739665794"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="739665794"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 23 Aug 2023 00:37:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 00:37:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VaHAJcCI8WpG0HBaepKqBd83LWu6UT8tu4upYmhOmNOIRgfI/warpA0+YKvQxD5IJ6QP1Hs/WFJfEJ4YgiMhVUzEejpyJDRHeU1NePHPb1Sj/gBDPQjj2p0Vm5lvdtT3lm/97q/yHQe1LxjvW0d9XcA/8NCtkcpYRzNMWwxR/plF2clHqYf6EIdyzWxLek1Zex4IVLFI0do8JGgc3IJUonm8iJKXD4o+IjVm+Z9hNLFOKkuVtXn/mNvRpPolr4RQtv6rxxRFVut3A2k7piKLrpx9yJ0/KXR9CWe2rnROuCxERvKNGh7SjkKd/UPnnvzCrtN8DOu+NjkBUcXq3lnM/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MFP1OodVtUIRwC5pEkFpHaGlwrMhHLFTc8OwNR++qJY=;
 b=fhE7ULBR7ZPjpxgMnRT38VoZEnYi9z5LuRdpRUYus13QmPSjAOcqrzwNNPpYRJYvAB81TEFkTgocNp2KLYK8Ukzw2KNT699qCVK/AsRjF1lEjMS2dBqjkTFYOndsC0d8NxO1bNwMsJv2dIqx1z7J2PnVdZ5wG8InlXB8um0gerhAtCusBw/DCfdxfOXBsxVJ2+xMjrqI/cKawcb5LQYbrS/I3cREDHkDtN0LHHC4/7MkFyjUVDwfixR9kQdIaodAMCkS3XiwGh55khtHNWruVY+eEsYm9q4toI3tQFpDQpze8OM8zx212+6gEJFhpAjRyBXy15ZD6OTo9rG9dO2CmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 07:37:06 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62%5]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 07:37:06 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: lkp <lkp@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, "Intel
 Wired LAN" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: avoid executing commands
 on other ports when driving sync
Thread-Index: AQHZvzcRxmD9+w2tZU2WI3Ibd2qoT6/LBaEAgCyayBA=
Date: Wed, 23 Aug 2023 07:37:06 +0000
Message-ID: <CO1PR11MB5028CA56BC98E20A2E479ABCA01CA@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230725203125.508243-1-jacob.e.keller@intel.com>
 <202307260524.gD96xyN6-lkp@intel.com>
In-Reply-To: <202307260524.gD96xyN6-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: 70f8e851-f185-4188-5374-08dba3abc034
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZHOhycH9NJZuQmjKqKnshovN2QunXKhrp8t6e1vA74mIUhvLNKIvfNZYkpsMZzBHURKvqjvYHZkcxN0W/TA9FslIm846yYNqOTyzkkxiDN8i/1mWxb/FHWwfdJZGNfxgYVja1DeXX1VlLJDdfenHgBh3rias0j5wk8qV/YIrWpVDRbwdkZiOqEacQJwm6E6wX25zoahJpDTuP/kdIRSm039GQXwduCGQTsq6qrAWNBZG2XX8d+hAOQcCHRcSxALCr8if8XRgAERWmpy48M6E2Aqs52w105zweMEOFBHK279HfxxiQ/483uAjuL3ZN4oerA9MfS37WNKp7cm5WakC5+WlqhZcAaeZ4Bmq6Mz8wa+0AJZxR0t0TL0zT7N9DBkniBjZZv0+S2u9Gq5f+f7cvrA0ZO/VAELNdPmlcrnq/wq0de9v1ryClKgXWUuoMHCTTJT9TNmtOWAa0tgfEW1KkkYSAgjjcBuV6GIAD4FIXiwHHgJIthJUStYdL8Z7YUD8ugwLJeeGBFuoUhmLs2QTjbW2jhI3x0hH5CK2sFyoZvv1nuC87EPVpys6fmheQFQ9lPI5SQl5JTIlg/q89crdMkFrC94EEUQv8Jb9HaS5oDZypiH4Wfccx/+jVJBNEIn5zwi1QnVJItKmykRLQpwvbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66556008)(66446008)(54906003)(66946007)(76116006)(9686003)(316002)(66476007)(64756008)(110136005)(8936002)(8676002)(82960400001)(4326008)(41300700001)(122000001)(478600001)(966005)(71200400001)(55016003)(7696005)(6506007)(53546011)(38100700002)(2906002)(83380400001)(86362001)(38070700005)(52536014)(5660300002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WEYWrCs5ONhy/E38wz/roZb6gHYDPSJD9xio9iSCFP+WzmD06xO6uN2BJ9np?=
 =?us-ascii?Q?UlkBhm4cbJ5kPH8TbKQCLpamnyzTdHjqS28cSNvSZ1Bp+QUXDcJECKEOWP9i?=
 =?us-ascii?Q?iudc/+TQJITHzEy+/JqC54YQVkiBV3CZjgt2txayC6agfg3Wa9h5jYkiH8SG?=
 =?us-ascii?Q?DDQ0Q+Tdypq1qBGw8Ydjn3aTT21DmXlPyFbTZ7bjNYTx/2vEbYo/8HMDuBBG?=
 =?us-ascii?Q?SqCTIlqKwHT2xrqumvX9ZP5m9jm6+YpHHZA7M3Qy0v5B2ZxJTrxxhpzTGHjG?=
 =?us-ascii?Q?yF2GLf/kEjwM7XCOjeZneazAf/7pPFxMy4jzGtbtMhcKlilne9mW0fveItok?=
 =?us-ascii?Q?6IJr3arzUNnUu1walj0fE7Hqvur0cUgRGIbZOr73wmXtYWjOQLyBappcWrkN?=
 =?us-ascii?Q?ej1ZgLsvr+P0XFpkqn+d395I6OF9PRpznqWMv5fvdQS6NV1uTYXP8P/BoCQa?=
 =?us-ascii?Q?yCPrFzVzpeIZlzPfUn1S9rWQnTy/OdDJfDzgESBf8C+i5QflxP0eVxAFrE/b?=
 =?us-ascii?Q?viwWi56h6Yk+Qu65xfFOyow4aTgPz/3LfYXpdpHLBFfqdNuIfpDvzZQesRc/?=
 =?us-ascii?Q?eMlE/pXgpBVDhLyl6hNDzkR9rKknEZsLxDGu0ALSgi1HuxdyxTTJMI4Yq+F/?=
 =?us-ascii?Q?+ZOH2J46qoDZd81r8rwwr2kePrz4PhGu07+325QIk1q5qGBYCD7xxi/asEeE?=
 =?us-ascii?Q?1vOZZvbNN1KBt4PWjQuuqJ8+/iZITtUQwV3Eht2xNXeaOfWroAkcfBGCD698?=
 =?us-ascii?Q?EE1h6v7K3jcaLQbZcnGi/2KojzFqE3XY/VF6jfUgL7duSBTtqRlHPdjYf2RC?=
 =?us-ascii?Q?pr67Q9WqvJXbf56xLEepFHyXyCO0MPxL4uHTSX+YnvVy0EA0KRyYZnmaK6k8?=
 =?us-ascii?Q?OjO4qrpcIFMH2N0CSgaKgbcfUexnuDwq4nYOq79M0vFHytkovEkEKpXpS5Zw?=
 =?us-ascii?Q?kJP2AdKlBPCjZV1TumVWIRQy27ebtZ2XXzBQhg88Niole2gEkrd3cqwhQuuo?=
 =?us-ascii?Q?R1rdKp426tgxnwxog1RWAGEHt10CQdufAVAJ7LNnSQQgkzhsTW3j3BSGl63K?=
 =?us-ascii?Q?6pa0G5qWsFA/Qu9uvT3w8K3XLzMYEYGJ+amOX8C7MzOn93Gds6snQCS3NpNU?=
 =?us-ascii?Q?LmdWbmMXTtIRioWNOC+4wgiJWc+4fbdxGr49p69jjVu2elhgMyzXeVdfP0/N?=
 =?us-ascii?Q?l8xgBE9G99kPLlql8VEzaYUa77Sqb7UL0d5qyOJsxhUAuB+ihnPiuqIW9DDf?=
 =?us-ascii?Q?klrBXgwRPj5D2JOxfK7276qd1kCtbdspYX5iZuOhd24NqsKKx2pstVor7qJD?=
 =?us-ascii?Q?p1e0OU+i4E8geFst49cMFWK8b2D4HcbHjc6PXUwO/20bciaYN7Iem/CeiW6b?=
 =?us-ascii?Q?768GM3rF6ih4x9/74aaysH/ML+YH0cgU57hxi7/fBobt7J1Ta6VgzP0Ou06z?=
 =?us-ascii?Q?KuTF4zmxO8BBbNCM6F8GZti8K1EFB7WgYh0pHMWYzqDHhcNx/sSx3ECDyB0L?=
 =?us-ascii?Q?4w1sSdkDw4jF3kIhlRa8opOjHaS/24c+O2Q79Yt+qs/omHGafeMw9p1FmG4h?=
 =?us-ascii?Q?oe32Hu+EMzaSqjo/rAxaJ20Xl1xih2fvigB77BvK+VZH9sHPZn8Mekf2Zjtu?=
 =?us-ascii?Q?Jg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70f8e851-f185-4188-5374-08dba3abc034
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 07:37:06.1924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /yEHBkno4PbvGYKPmcQWwRbp05qgwtXhCvi+byxzdVD0Re9bdtLlC7MklSPGE9PN9bXg2snd253JN4j/7qfp8Eyx4eogMVdDdoM4YC6OtWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692776229; x=1724312229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Malo6UXd0XyFqVEi1yDlm1EyI0MEOFnsEmIhSCrKg8=;
 b=CS6k8nniOt+PjkfYblYwqFZOnU0hzzK+L2KFKm9dMC3XygpaP58Xwdyr
 CrnB5A0fRgK7HQ+1lbGOfeMRpt+7HQYX0Wioaxy7X2sQtbZ0WOV47bBf5
 ivKe+GWdZ5T6pL9DCcs+H2gIKFxYj7jFrUUEFwTBvFpvHv/5i9uzwx+L1
 5rmEfP8FpVJdBgNMvh71hNUI5dafBoUe8aHQi75utp5OEDWc/iDYzlg8M
 K511vlkr3cEL1mlTJde2HWcVtbr7RI0AOlhN2TZuQoIJZNdULTViu/XH0
 bwQKeZiuwBqlG4EglDMim/+67ANmEt73EQ8S0gVBv27DpdzbAES+duPQv
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CS6k8nni
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: avoid executing commands
 on other ports when driving sync
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
Cc: "D H, Siddaraju" <siddaraju.dh@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "oe-kbuild-all@lists.linux.dev" <oe-kbuild-all@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of kernel test robot
> Sent: Tuesday, July 25, 2023 2:51 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: D H, Siddaraju <siddaraju.dh@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; oe-kbuild-all@lists.linux.dev
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: avoid executing commands on other ports when driving sync
>
> Hi Jacob,
>
> kernel test robot noticed the following build warnings:
>
> [auto build test WARNING on tnguy-net-queue/dev-queue]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Jacob-Keller/ice-avoid-executing-commands-on-other-ports-when-driving-sync/20230726-043405
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
> patch link:    https://lore.kernel.org/r/20230725203125.508243-1-jacob.e.keller%40intel.com
> patch subject: [Intel-wired-lan] [PATCH iwl-net] ice: avoid executing commands on other ports when driving sync
> config: loongarch-allyesconfig (https://download.01.org/0day-ci/archive/20230726/202307260524.gD96xyN6-lkp@intel.com/config)
> compiler: loongarch64-linux-gcc (GCC) 12.3.0
> reproduce: (https://download.01.org/0day-ci/archive/20230726/202307260524.gD96xyN6-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202307260524.gD96xyN6-lkp@intel.com/
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:1326: warning: expecting prototype for ice_ptp_one_port_cmd_e822(). Prototype was for ice_ptp_one_port_cmd() instead
>
>
> vim +1326 drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>
 >  1312	
  > 1313	/**
>   1314	 * ice_ptp_one_port_cmd_e822 - Prepare one port for a timer command
>   1315	 * @hw: pointer to the HW struct
>   1316	 * @configured_port: the port to configure with configured_cmd
>   1317	 * @configured_cmd: timer command to prepare on the configured_port
>   1318	 *
>   1319	 * Prepare the configured_port for the configured_cmd, and prepare all other
>   1320	 * ports for ICE_PTP_NOP. This causes the configured_port to execute the
>   1321	 * desired command while all other ports perform no operation.
>   1322	 */
>   1323	static int
>   1324	ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
>   1325			     enum ice_ptp_tmr_cmd configured_cmd)
> > 1326	{
>   1327		u8 port;
>   1328	
>   1329		for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
>   1330			enum ice_ptp_tmr_cmd cmd;
>   1331			int err;
>   1332	
>   1333			if (port == configured_port)
>   1334				cmd = configured_cmd;
>   1335			else
>   1336				cmd = ICE_PTP_NOP;
>   1337	
>   1338			err = ice_ptp_write_port_cmd_e822(hw, port, cmd);
>   1339			if (err)
>   1340				return err;
>   1341		}
>   1342	
>   1343		return 0;
>   1344	}
>   1345	
>
> -- 
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
