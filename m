Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DA8334C8C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 00:31:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A58B042FF5;
	Wed, 10 Mar 2021 23:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pfvuO1ZMxljp; Wed, 10 Mar 2021 23:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A89CF40175;
	Wed, 10 Mar 2021 23:31:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A0F11BF37E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 23:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5476C42FF4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 23:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4K2X54Dx3xWW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Mar 2021 23:06:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 775C242FF2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 23:06:37 +0000 (UTC)
IronPort-SDR: 2h2BqDzbUezP1u/18YitaxesJICmUebDo70oqQWxDrjaSXKaOMxnjbn5VJJHBm1T5krb6pi+J5
 4ZQ5rnSPskmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="208393007"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="208393007"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 15:06:37 -0800
IronPort-SDR: rkckqfla0WgZyRMbM19K5avNxh0Vq6SRl69ybz+cdcl7i93wnic83fEMHi11XFIXQdHY9GSjjs
 zeC91UJsbJkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403868599"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 10 Mar 2021 15:06:37 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 15:06:36 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 15:06:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 15:06:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 15:06:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QeoaXgqvzAZ6ELsEsaQOxtVb/SAkSqjF6O6Vl9+l+jWT9s9jIq9mwfFVUdQ4czEi9XQ8y+f/uAWhlHYJL9UmgjlZfPQ2G0EpDhH9hvF/UAPYhodUqDtdUynM34L/UqQKn7Mz3miDxmPe/qw5pMJGnZwrG0JHMopdFJVeVe5EzuQ64ntB21KvgV7O2GBMylxC0vTZVfUUKEnJeHom+Ita3LJ2OV7GUyWcfJLQ8jTcV1QjWCF4Gvbkb4tVe6ZDEe5i+VQvShyFle/ftgqcjRLivi2H+1ltkuYNOl4vZQF7OBJhPdV5M3H8Xxtv8Etkrd3n9yDBnHx6hqytogB8SmKMUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=600cNACe0zp7wk00fOoM+JoFFKuwUfgTvfTHKv5aH2w=;
 b=Ca8bC6WuJSyQg4PYG1muSgvkACeblGl4y7opRUvXunDyxODLitonxSunu4VZhogtDzvapCc0FVyy2yhxkpQo3/K9GSSTE9fET9R7kqMBEGlbq2oCn71ppFcnEfOvcuTjHytblwKNpgEfrUJZT3/c0j/YwFOcE+J4anysf3EQ5QlJ/VuhSMk2l0fmVUh1I/TlZdKu9EkBF0dISYkETqYsB4EfaLBU9o9qAv3qNX5U5oCVI/ULhFwxM2mlrth6IOCW2FkZzD3NW5R1znsi86/reGRDf9HS3XY5KT6LqTV9DLrZBA8miiZDrjX1Nl38M6xgCvkrb+rgnEouM45LUj5IXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=600cNACe0zp7wk00fOoM+JoFFKuwUfgTvfTHKv5aH2w=;
 b=qg8L1mvcMBkLeUDbu8DC7KgAvcaX7XgLj98Si1ddk10ObjAGnmKDT100RMwXqqgI7Z/b6f5mKazLsJmPU/18p+hAhgMPl7X6ZYJnkyCNrzUDhPj5025162ysoSHMChMV6qSbt6A2J7nWRps1MSvqgZ8WQZd35EtwglEFhhwG9DM=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB0015.namprd11.prod.outlook.com (2603:10b6:301:66::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.22; Wed, 10 Mar
 2021 23:06:35 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Wed, 10 Mar 2021
 23:06:35 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 11/13] ice: Use port number instead
 of PF ID for WoL
Thread-Index: AQHXDIaRzd3fqho/7E+gKXN17vLcSqp96tWQ
Date: Wed, 10 Mar 2021 23:06:34 +0000
Message-ID: <CO1PR11MB5105E7E9DEDB3C9641731B10FA919@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41b03b31-877e-44a8-e4d0-08d8e41926df
x-ms-traffictypediagnostic: MWHPR11MB0015:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB0015AF3EE8E0E83209A12299FA919@MWHPR11MB0015.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yfcQ6HAeLI6I7KyGLbFfO5hlglqb/ZfAy/YZYyIgK8z5wzIDUxKF2rUbfd07XIRQeAR/6b+yEjdySt9jr7nwwFcYwt0IxPVvxd40e19p75zj2q3oITB0k+iaY9wsANBIeQTnqNY0L8fOuyPVxsI39epJqaWN7tbUhKy1cn+4VbVFqVRzm8ZvflxDS7eoYIx/Mob9RV6GfEay/ykGwWBMqNY9lUmJkIVxFd3J+OUzv0mZOhJPzNVrVcAHTeWM4Ew+xwifpAd7UG8QeOihqWGiS3suDwpXoHqx3KZdmOsBAbGHTrhFD24oD8+zVcH6238EPf1XKVEOAPnJC2DwX2KhirrcNqs+kNuFvUSZ8iiTJ9oCQJDQVNivUYht+yOEBpJl9fFontBscswtqdUyLeTsBjIIkTTEzyOOzsbHVNBrxyzkcbaE7CMgkugfn+kzn2EqZ+fQeUm/nKbPrmEjZrl/3f25NEa663i+pQ3w3w9MpB2VV67uDkzM5PWYcYKTBP8hRdVW5NRV4y0wSqHD6ylLAA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(366004)(39860400002)(136003)(110136005)(7696005)(316002)(76116006)(66446008)(66476007)(9686003)(55016002)(64756008)(5660300002)(53546011)(6506007)(2906002)(4744005)(66946007)(478600001)(33656002)(86362001)(52536014)(83380400001)(66556008)(71200400001)(186003)(8936002)(26005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?xaKNuq5KU2OFfyagHtSGd8KPybhAjEDDpn23LcvXXxNVQpCC6UEHCzxhfVDi?=
 =?us-ascii?Q?qwzMEcAYYBN0FOPFpw0RC4zRadNaDX3Mm33KFXxdLZFkUrNKQUtL185JLEn4?=
 =?us-ascii?Q?L+b+K8To8u4C7pYNF39P8rtSVP3JDxgmO2HK4AbvAJwUkS/n1lrMJ5mdFLql?=
 =?us-ascii?Q?N5jw0rlZHJyiuvZaHOye5jF6MDXJ0TtqK3oyuV+n1ZNFzGwhfG/8m2o0Khvm?=
 =?us-ascii?Q?Yz9axrnFx4Yeokk/KS+sN2ZP2uPcdgyl+CZB5qH6un/Ulen/kmYxrpC27QNU?=
 =?us-ascii?Q?SOWZTyz+ICt2FJPc0SPMgNc790N8o+mkwimUC+8msIg+1GZM1zZSFUC/+iOs?=
 =?us-ascii?Q?SVf4YlFXyWTewgdGzEngQbRaEbh/quV6DZfrkwzJBblRyxp5o3HWgowy1pat?=
 =?us-ascii?Q?u7bdMif/edy1mWG0lnwibT+dl7sVjWZMJhzDIKFXi22GV8lxoCopjC2s4BLz?=
 =?us-ascii?Q?BSxoTsTGkfckMKoCnT5Ryk/gJcxudHgJ3CIX9qu7zjAXH3D/lr3taA6EeLfs?=
 =?us-ascii?Q?kqhl5aPBH7r5jqroe/5R5++viEaLt+ElK2dLUPdTii6Nata0fJ4yqPd9+dB2?=
 =?us-ascii?Q?89g6A7vdUJPgD0aq+l+iWoJNtznvHn8azY1WCNazJ68/grGWCdnDR4mQ0XTy?=
 =?us-ascii?Q?/ertWS1fBGDgReXYfDKk6/nrF4MdYcEXhrbhWi791j3FQ9QxpmG0r7JxRmXE?=
 =?us-ascii?Q?9iYqmyN6KCX6lp1qPPzcCL+lJi4pSyYIfKodPyqXePvur8FKZ20x8XafXhVh?=
 =?us-ascii?Q?sN/nbLRN+GYY4DF9crg7w4pBX7X96eBfzICr3C5JoBX7/VZDe0p583G2Ossx?=
 =?us-ascii?Q?u5QVnuhTGLl+tJd/wDeNyRxrC8YwSNVk+UKbDGvgH3dJ2jgRyAT3JulZ+bIH?=
 =?us-ascii?Q?4c91GT8gQ0TqZQsqScTNpJrE+t5OX9Ec9zQit3GRyGelQv9a5oYwWAY876gL?=
 =?us-ascii?Q?LUmZXPzchynnEuaO1lTgbtro40fEJAtPVLjbx3EhdZBhDDtTXZOb5oxsLqzz?=
 =?us-ascii?Q?NeOkLn6dA/enIKbt2QUtvFezuRjZ0QSzhGEc4mDy3NfXZ9RkQeuFiRug7F1u?=
 =?us-ascii?Q?KJD/vgNVOC9eVZQkIGxoFlGiKQzZ0CChWsulwrxTtPnXwridyIJ36wfLvxfx?=
 =?us-ascii?Q?R4Ent9/5vWuHNqVTKX65yDTIp9+GHnuwVqax62gvHMCf899jEZ7zPxT8PHZv?=
 =?us-ascii?Q?D1WAOc7GYOvZ/Y2UzlckOyxxcXcRxF/SeQCqwZQOoV92O+rycH1Z7UB3JHub?=
 =?us-ascii?Q?tDOSkwlMXsQQQ/Wzpl751giarpvi7mij8B3aZvy7Auf440+WjLIvBk/vQhZy?=
 =?us-ascii?Q?yjW/GAYkeUlr3EsQ63+fSwk2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41b03b31-877e-44a8-e4d0-08d8e41926df
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2021 23:06:34.8884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QACVcM993FeaVW3c+ufWcJuwfY+MwuhskZgE7gVfKwRfEs9GVeFV5VPrtGIHe6ZNyAfPs7zPbXGYKvy+8jCYZWfK5upwquIihWdtii82NmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0015
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 11/13] ice: Use port number
 instead of PF ID for WoL
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
> Sent: Friday, February 26, 2021 1:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 11/13] ice: Use port number instead of
> PF ID for WoL
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> As per the spec, the WoL control word read from the NVM should be
> interpreted as port numbers, and not PF numbers. So when checking if WoL
> supported, use the port number instead of the PF ID.
> 
> Also, ice_is_wol_supported doesn't really need a pointer to the pf struct, but
> just needs a pointer to the hw instance.
> 
> Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         | 2 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_main.c    | 9 ++++-----
>  3 files changed, 7 insertions(+), 8 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
