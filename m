Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1B67253CC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 08:00:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E8F1415DC;
	Wed,  7 Jun 2023 06:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E8F1415DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686117641;
	bh=tgEtJtp40rirG6dTD9Y8gCP2SoPrykuqBZ7X/aTNWSA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=myiS9JPE9sCQHzO5ZZX9vtVa/AHwguHoCkBDl1xSFDPN5FwLksRpDe5Tk/qtKoXqs
	 fL9xFXdHU7VZ+2k0E9KI1w7Pu+jJNoYRbqPEMFziavpBSDPZEG98LnJ+KbjSk0mGTC
	 htDnygSa/OzVQfo2xhzpn/MQSIFxdw0BxDwOB+y5qwEYFP1TuDofjHekcIeN3sMUF0
	 jgi9FCjLRBRcLiNyBrcP0gVehOtHExDLqqoHq/wQw2AS8VLnSxtf6Y/DmBSl+5TaFC
	 Ejt7OWGZskOPXDvqf8feoidDW57x+Mvy1wM1J6afxkJ1ZvOLoRb3JqMfcC8lu9aHKK
	 kOTWH8cnBaJDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B1tJmEmtkW8S; Wed,  7 Jun 2023 06:00:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99D424148A;
	Wed,  7 Jun 2023 06:00:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99D424148A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F8D71BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:00:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1439A60B10
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:00:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1439A60B10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jt8y0S-2QCYG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 06:00:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 520EA6068B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 520EA6068B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:00:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="346505083"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="346505083"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 23:00:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="742459206"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="742459206"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 06 Jun 2023 23:00:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:00:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:00:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 23:00:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 23:00:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+4S5XNmBIP64p/ut7SUifsIHzDw3dOGFGfoPsvA+X7VdF82cWRpUd9LlDpENNhdISUIKU0zoELYd9qlU9oQE9agGVbadtxURsmnBxdXAbJ6UIxdveI1inuUOw3A3mbfq655nyZHrk6g1lMO1RD90n2CzCPUkWO+M3C7MAUmB1lhYFwWis2gsuuExNYIk0l/R7zlBayDbKZngObYPCX860OWAm6JhcNm7L6R3wcsSPVKfkO13frqTRcUlZ5oqWdLklq3Kr4J03VN4+QpEMbOKTVvNXl4b2ebEh9Mu8JPbwrv0lRQh5Fck93YCHt9TFQ5G32liGnfmM6EdZMjZCBI2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=faT3ACEWrkSF47AwcTMM27+y/+FnuPuhFQOu0ddSvrc=;
 b=SCWFFmkLlMFgLjaj8bRBDvIiFJvvRSOHmhtjZsehdA+upg/v8JdNWpp2Kbsj18eR/70YWCMI9B24yHleh0aTKUlg96x9E0lQD9rG8Zwhb/neaURZektUgigXors6CDlt9d6LfDEq+PoerbhnsNBiENOKdgGAmpOSn/aw4YIQn0F/AhBCzjVQVcJLeGlHrTzkDSh4veXH678hUfhqXh18aJDrxJ32kb5NyKLq7mfbtc5tV+aqgHQgwTx2vNhvPq+DMQQBOX1jBIRYVkiFlSQTjbDJHbK2K43IP6m1Yk4GoS2rKrIMwpgL2uJrq8jwbLD/oHoEDQjOfQiTlHPXIoRvnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MN2PR11MB4678.namprd11.prod.outlook.com (2603:10b6:208:264::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Wed, 7 Jun
 2023 06:00:28 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 06:00:28 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 04/13] ice: Disable vlan
 pruning for uplink VSI
Thread-Index: AQHZjjqUe4TyJCv9uEaoTk+z+EpeTa9+7icg
Date: Wed, 7 Jun 2023 06:00:28 +0000
Message-ID: <PH0PR11MB5013513ECD64462735DBD02D9653A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-5-wojciech.drewek@intel.com>
In-Reply-To: <20230524122121.15012-5-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MN2PR11MB4678:EE_
x-ms-office365-filtering-correlation-id: d0961919-d09b-4b7b-4172-08db671c7ed3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l9MAotUur7psF2k9vxmk3YNc0SARJmKg0AwTcwLZUZE+iERobXWF4azfMBE0maE9VdgSiDIsPohNSiSx+m6raRAmbqcxvbYdza7j8YUaKAOAXeh+jukXrzg3pQBv88/rM42vtn0hzyPUIpYjjSoDSBR8XWKAB12yna8pJiDQRg0IuNBqyd1PuJoT629IFz4Kw/ZOJGitLdAUTSGP+gj/fxrHhBMctVMN5zEKDyXwvopHs8B2JjRc79OgbJWltoeDLG1NVRj2j9uKO7/zg72CaADTdhyjTDsWCpqcL0QNbw759/4bRWOiKxD9ckc9v1+wkoPVK3BLzYWHOr0gRd8BQJVB+mbmudllQuB6LalTAx7VxklQlc2iUSyvJJamafri6QHZAPudv0p/I8/d/oq53SdoK/xzc26bBS1ZWhS8kj1w9F8rpLWHrNLbglt7XLuU1F3qTbhG1r18zVTNsE+jJ+u8A805pro/S/VlMyTHoMZ1IWg0h7CuTubAqJkrCRsyo/Ro3gaoN1mp0X07Mz+qQDZYoYK3N9j5dbooo0elcZWpZ2ybfPvhvkjoMQBz2SnVXV4MtIFr0myPHVBV21p3DR8JKsdWLIkd5S/IkmM43ig=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(376002)(39860400002)(136003)(451199021)(110136005)(4744005)(2906002)(54906003)(38070700005)(71200400001)(478600001)(33656002)(86362001)(52536014)(38100700002)(41300700001)(8936002)(8676002)(5660300002)(82960400001)(55016003)(316002)(66556008)(4326008)(64756008)(122000001)(66476007)(66946007)(76116006)(83380400001)(66446008)(6506007)(26005)(53546011)(9686003)(186003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ClhIWyplwsE8mOq6OsaZavTYYG8qIsCuU3ZYxtbehV9l4cPfS9ghlkOLOaQW?=
 =?us-ascii?Q?M4mOSBzA2OaJ6FiS2JAtKh4z2OZoUbzvqWMhgrHvc1ri6p323AR3qh+/ghaA?=
 =?us-ascii?Q?VUqVGdLuaVkMKFliwrN8Fy9kk6Ksj9LTmVsZ1hGMbdC9/KL6W416gRO1GgVk?=
 =?us-ascii?Q?hVyN3gMHvf96Gqydz2eX+g88xBJq00oBwn93Me+sfOuxfGiuPWi8c5AAO75g?=
 =?us-ascii?Q?nHznY8m+ifMbgZ9hTskhAX7pkPh0nJuATFw3C/M8/4cUQLjVzjwP2TSIAh9k?=
 =?us-ascii?Q?Wdu4/ygTd8jLQ4B+CNogUH7GYEOL1i0z43xiygB8jgKio2yVec4wcKTgLzlE?=
 =?us-ascii?Q?6hBf0xa6xUCXZ0If3707bXZJkqpebqElA1BW1/V5mlgRtEmngaXeIkgn/wu4?=
 =?us-ascii?Q?AsI1EKE92OzlM1A4kBcA4zmQzmAsQ7Xle9PTEbYGOAdsni1PQItv2RsBZzyW?=
 =?us-ascii?Q?90mfhjYSvE9IMG5mbS7BVbxPNNz4YqsYQroq2XD4zQfcjcV8ZTd+Ju0riqw8?=
 =?us-ascii?Q?6oFh2WpscKJ/muPsvR5hL0t1n+FpCbCDTWnjuyerOxCVmugpZJwe6LYbI6LY?=
 =?us-ascii?Q?HdyQuTKQsok2k1+Y08Fm+QPJ68xsL44Zaa0HJG3VGDGR3jsalbRyzrZZc60X?=
 =?us-ascii?Q?5MBgoXFl38qHWJb+gpv9AeTCaA6O2MUJ2fmyJmmQ7cxObr8T1J+fYzn5fXlG?=
 =?us-ascii?Q?708OKjSPcI7th6+UbMi0OP4eHo+GXggBlimsrotUU983ZojUwIwk8cG+19PD?=
 =?us-ascii?Q?ak6ZvD4o3di0YYYBRwKhR5YGcNpd+/p/vuyn3sAeza1N6HRb/kFzg31LW3PF?=
 =?us-ascii?Q?9olZqOmyEcr0M82ddkibGgRHeRHxazlE9YN0MQnD+RQz1daikmnW64CfY75k?=
 =?us-ascii?Q?RmA71sHBfHQsMp7a7YECfAH3oll11wv6p4qscG2IOI+e/Wt4W8LaepX3atlM?=
 =?us-ascii?Q?8mBot2irn8a/zvR0DLOXqawpNxCrzPgMxwpvfKt6GD8c02EENAe0B5Lp1o5f?=
 =?us-ascii?Q?tLlCXtchWc3J910r4qobtCnFOvzv8eHnNaAfBYAhrAk4uCneU/aHxDYYFTqt?=
 =?us-ascii?Q?blG3Krwc1Y5oTbsEQOL7fYqIH5+ZWszkUBVNpIafBZn0p0zNGCBUehs6VQDG?=
 =?us-ascii?Q?5QuJUtAr/iXtpTCRTSFokzu8rnbHxXMe76aIevpZ52HfFJ2jtGOWQeEEe34K?=
 =?us-ascii?Q?GqIfxrEI1MF1PpRo3FzGYirGoDSkR/OfMdFqeOwH4I7FEOqiqQNNOj80C7kV?=
 =?us-ascii?Q?aZqswcrVq3R9NpTCMHZDtRu1yqtxkv2C3ydwYGAEBxbZEywvSD/OYAh26SER?=
 =?us-ascii?Q?n8WPk/8IsMXG3OkELWLliG4beky9nNstCtKB16EpkV4Xw1CX/5gj9SD+c7zu?=
 =?us-ascii?Q?24bz8DpDkUY9Qyxy3VJLeOzjd2D4OhBulTU+BcpF1SVDT/mTVUigFRjk08rh?=
 =?us-ascii?Q?XAX1F+cCBcW02mEEkyL/qeriAZpJRK7swjDDheAh7QIt1QWCAU6w8XRFCofc?=
 =?us-ascii?Q?hmAws8BtcMIAcyXnImY3gFv4W4w9kFANiYlurzKYnodn0DF0zIydL/BmL4Q9?=
 =?us-ascii?Q?TsfbzSuN9sFOUTVojjo3DuyhD4gEnt82FOy9IIutUpE5RZ8YceEd27/0bJui?=
 =?us-ascii?Q?IQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0961919-d09b-4b7b-4172-08db671c7ed3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 06:00:28.7020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RD3mExVynlQkQnPwmX58781y/3a5fiGC+ECYI6Hfc9qtyBoc0/wqxEZbFMSxKUvgLultVNHT6FvcJMeHKrsLAUYpSfY6ltNkH0Uxov4bRO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4678
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686117632; x=1717653632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hXt+L5hqAGwFUocGm8dUyoHStW+DrTzN+iKA5gAYyIA=;
 b=l+2/+8cbXIvrQDXT/dtqCX312CWlOvkfFBwW5zwPO82cURdS4oH4T8X1
 XVrHVlexDrWOJid7uuC8G8ULpvofGzHm4usc5FweQC0148mQk3168AdE0
 IgEgJJmiowoYwjZf6qVwyIDhP0r2puylTZbqPmIV/E9b+SvPlJHbuIMrB
 GcwYoiNbvOBOpWDDKAHAZW9UsI5AfAE2vbjx9yZRNzYlFwQSsT/A6+wH+
 jyTEVwGdC/U0mfQaXiM1qM/OBKLT1bRIHwvcLCZ3KbS9KL58auNMMHJfC
 2/aBlg9SolAvK1t5n7l2XZW0UONXToWn2rF2oBCbsyiVnegFFqKX5EFlZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l+2/+8cb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 04/13] ice: Disable vlan
 pruning for uplink VSI
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, May 24, 2023 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 04/13] ice: Disable vlan pruning
> for uplink VSI
> 
> In switchdev mode, uplink VSI is configured to be default VSI which means it
> will receive all unmatched packets.
> In order to receive vlan packets we need to disable vlan pruning as well. This
> is done by dis_rx_filtering vlan op.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
