Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE4D6D41A4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 12:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBC9160EF6;
	Mon,  3 Apr 2023 10:15:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBC9160EF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680516927;
	bh=Lj/6b/pElWTNVs/fsZQtUDAR0Z4SKmmVrbQVwl0Z0UE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sc4E1ByuP47ypqBCWXcgIgaenapiD1TFTVzHXAQXyaMcQPJBV3cdcngI3emj9fIvY
	 0r1f8QXbvjkhF3DU/nLSsFOHh+vK1CIoWORPdpH7GQi+cVQpb1EGjTEBpaDc4SOUtp
	 MpESTQyvxvE4Zj1cA+18h3htIq5xd4IvrdmU6kgxXX5EUPc2yveZImw6FdPjQVSIaZ
	 7Vwd0l/qfreK75RcVp/aTovOuLV/O9uW0rnRWHNjs71FN5eWYLMkaCF4m+v5lPp3ak
	 8+xBhMCUS3bm9mVYbVN+/gOFc6t6yq0LouQ5Pidh/PdtflJYWYBHb5oH/30GEN4WGf
	 Ecq2tZxdztwsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 72ZtfBJ-bPNg; Mon,  3 Apr 2023 10:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F4F260EEF;
	Mon,  3 Apr 2023 10:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F4F260EEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 588051BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 10:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D16460EEF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 10:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D16460EEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XpGbud157tce for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 10:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32E6060D9D
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 32E6060D9D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 10:15:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="325860095"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="325860095"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="775130350"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="775130350"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Apr 2023 03:15:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 03:15:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 03:15:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 03:15:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YQxKK4Jy+ImM80osOoDUkVjyglzyQ1op9NrzjecL70pXBpBfUIDTBQCh49hT/CHR/+fPeQziRrt+L5yGvN+agy/InXUqSXGbghpIdSxyl6DloNqJjWPa2lIOxVeJK1XeZqTlTnA1/ief+ubJGNi38bq+etlP+PpN7yQnDt1ic75Z4iHSMwTm/SP+3SIhua/733lc42nz7P+EIDbCfeDxZSlBnp9tHHdFVWLIwxhsi6pRqlk3BMO2bbEaYjzA9fWMZ09XW5WAz2SkKPwVlaQvLx71MJBB6epg9qK9HF1Jfhoh5dOJkaqoagTMmOiSLxgK9SQVqcWC1h+UAIKwTfklmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AyxPrtEFHvczg3AQzfBp6vXPhy9ISr6IrVmn09wG2As=;
 b=KInLXmP3JlFsmlrvDkRDy5nwJM8Xs4mgmvWQXzVqp8dab+L4yqkHp8tN1DkejJWXyOe1RoE8RhpU/lnhuLdmMydW4ouhYBSfQEKl8Pvrs6zmd0El/Uy95PwW7J408h20kz1XAzL71ubbkQWVG01BisFWu1rzcGOb17Tx1rRZOccikilcycocwDfK3zyfpgpIhjsIbuEYDisEZFRyGpzHWOkSvXhi9R2vhXzrXRoS9F32cvGsvg23a/7rtAeVcpHcah/gNTEvR1+eFBxAE29w0VDMh516onHERCLeVdXWQBd3hzcoffxVPYjF/HQsYXRvTUpUAKtj5mlPA80OHhrLhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA2PR11MB4954.namprd11.prod.outlook.com (2603:10b6:806:11b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Mon, 3 Apr
 2023 10:15:15 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 10:15:15 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 2/2] iavf: remove active_cvlans and
 active_svlans bitmaps
Thread-Index: AQHZX/d8nOfxCjz3OUibIjHqPPI54q8ZalCw
Date: Mon, 3 Apr 2023 10:15:15 +0000
Message-ID: <BL0PR11MB352179F244F6ECD56661DE998F929@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230326152636.2168751-1-ahmed.zaki@intel.com>
 <20230326152636.2168751-3-ahmed.zaki@intel.com>
In-Reply-To: <20230326152636.2168751-3-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA2PR11MB4954:EE_
x-ms-office365-filtering-correlation-id: a52caedc-0968-482d-02f0-08db342c5182
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KdwliZswqkUeuB+nKk6HTikT3F4vIkUYYbxYJb6EoEKwk0CsdoVpZASJsgtkmMJyk1wykNJpf63+/WbblxYq4LBe9mvMTgPKWZizsgOWt4FygdNoIDTSaiRE1sA0UAmRnTQRJwL9fxDC2zyBimWvK9j/aduAu9lJzuME6OIRywNwCfbo7cefhM1ywKa3ZGrY7lZbUXHbQNMbTG52Ra/2xagj3O/bbzuL//VdX5t8MP5dgcIXCU79G9Y9ui4NqF3dgIF1rptZn7iukWLnH3yMNjMBp1SLlASKMmjsBJvddV+FywGn0h2YtPTm0nWXKI2/ILtTTK1DMMzCjlYfctPmp5E6s3Xev2AU7+drs3KEEqYSpSTxsAAVF2vs6guqq1TIzX3bRpe8TQPy1/DjFh56R7sB2fVNKZQF3GIZyVII6hLHpaftn6BnNSN1rQU+ZvFxOjIQo0c9N7EvjOs85qt7olGvtg0Lb8HaAk++1dBqZqZVxduX62CFQw1Ub7gs+pLKUf+ykAl4R4CQSmxda17AMj1NVkLgVuD4BNsGUSZysPDeheU+rVDscjxvoSlCcZKPjD8NDJKCWRiZAY9kdnYJAQE9NTXMU5o9NnLiE/GDpXik3mn5ABtYgv7DGQV3o7/b
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199021)(86362001)(38070700005)(33656002)(2906002)(7696005)(55016003)(71200400001)(53546011)(186003)(83380400001)(26005)(6506007)(9686003)(8676002)(478600001)(66556008)(66476007)(76116006)(66946007)(66446008)(64756008)(41300700001)(82960400001)(5660300002)(38100700002)(122000001)(316002)(110136005)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K505Vj5FW2fvzp+rIFIy6YrK2hDYyb0+ajPKC7FO5L8z+swK6S72qw/ETcsL?=
 =?us-ascii?Q?MU1RDHNaMlH40/+B/lCsvYZSYk7bG6pICmP4qhgY5c3Um/HTuYAMps27iOEH?=
 =?us-ascii?Q?yEwP9aqqWAMF0sdiyibkY96tqx1lMopfVDUen2BmzjKPE5XXDglZsejlShsM?=
 =?us-ascii?Q?Vv0uXLgGidfZleRUIvzJvRIGzUCPspNbMLYSW6zJDdNwxbZYwZ5IdakQxPNw?=
 =?us-ascii?Q?tHsLrrvazDfYkc+Vs1t2RKczk59tGzrKV64PX3IGxJBMY3HOcNWQqjMyjzci?=
 =?us-ascii?Q?hX/x0OJ44O4mTq8cmkaLVjvMzk6gnhbsu+PIbfaow3wxQbh3Ojwglm0KzP9p?=
 =?us-ascii?Q?Tc/4WrVg8N+ME3sKJR/NX+QfK1P4TwjEPKmCGJVObB4X0bR4r5GbF/K5AoBi?=
 =?us-ascii?Q?9atLeLSlQJ9mPK6QX8kNMW4Fh4jsBZHg6yAU0pw3jZxd34USwyQZnRbF+QFI?=
 =?us-ascii?Q?/pLA/gtk6BdvPNpKOHHlQz3+bj3zptlD+NHWGD7S47rXQB7JnDjL8ErFsMAH?=
 =?us-ascii?Q?gQ+cl8zFfa5uci6wfK0kjdB0V5Sq8VQUPHzd9hPLt9phYYkqsBR4K3k1uX+5?=
 =?us-ascii?Q?vJuWSIA6LCJ9KIgHxn+rm3elmQp4K2JZwoogtL/YGyp0ta1zRFtXg8xXcCru?=
 =?us-ascii?Q?JkDEaV34GEnp55XG6SVMyt+84bR6clDoTb56O0Hhj7NN9FdUds4+AG+a8QJf?=
 =?us-ascii?Q?Wu5PIbeGPpNn59cEwb322KkXJc9c1qAZplj0HAYqlrYWuA7xk7FiT33xdMCy?=
 =?us-ascii?Q?pK/TIL1AubSVnlv3EZD9FI2CnMX1HEpF29heGGdJhd6h/uiIveYdUjnxsW17?=
 =?us-ascii?Q?pjrYmcD/eYtmtpFkPdyM5WhSZF/g8X1LmuPCkn9Xo5/Fcl+9FjpKN9aquKGx?=
 =?us-ascii?Q?oPXBluwCBMwvWX1GcNs4e470bi9gB/jdUajMbhkxMk7xW8EHLWcP4DSpfsKB?=
 =?us-ascii?Q?2Tq1wiVgzUNRSacW6pjBPFOMaONYt5K+VX277+uYBQb77yYc0lg2GVgX+XpZ?=
 =?us-ascii?Q?hdQ8kTLlgc1HK8DLnmOYx53fcFScarN3l1FT28X3BbX1bX91zUtnMKotZGeh?=
 =?us-ascii?Q?D4MmtuiJQ6BhLP8+xcLzrZs9FVaVkP38LjCYjDg6JVhbhYadqhLts95/aPkD?=
 =?us-ascii?Q?ex8lvu8ipIckd8xVAnm9ISn9UedDiC0QZBW0anYIpUNX9YIFkZdaUF1mr+2B?=
 =?us-ascii?Q?ck6Su081emZlnjMG0QajOy940xqFsrYhBXyrBbdpQf8hyaKYJPNuv83NmGhE?=
 =?us-ascii?Q?DtPf25ZdyEUWnjF3NvuX0awgLaG/buIVrDNTV2VG6YoYKnnR1V3Frbrb1TEw?=
 =?us-ascii?Q?FnWcXhOhegcRAo5xTFxWfFvYXsz6sAh5UmGelXKkIbGtjEQTnyZg4d8luYry?=
 =?us-ascii?Q?lIMv4W6dBJaj3LTXv5LqS2Ql6+7wAcBV6nX6d5IVp1PLza/paQJ5bbf0Hd9l?=
 =?us-ascii?Q?HNFQbcCjhM5i+n+C76MJ6uIQy9eFAeoXM+Zig53fgXbRoEK8KYBgd6Nskurf?=
 =?us-ascii?Q?BsNIV/Ha+M25cv5SFXNVjTDvclSMaUiFDrOz9RgYVC0yI6y2VbhJ6DnycgGe?=
 =?us-ascii?Q?vYxiZTI6rID0C6vVNeDEPiDjrucaJU/ljNzZV7X6GwtSSODSKvgIky90QNyQ?=
 =?us-ascii?Q?Fg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a52caedc-0968-482d-02f0-08db342c5182
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2023 10:15:15.3707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ey7Mxc5JiAJ96nbdDjYGGrQeMxoIXnQzoz+hXCF9XVYM7nN4CV1qmPDy/lO/gWCd35la+uD98ta/D45JGmeiTtp45pVsc/eBUdvm5k+beso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4954
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680516920; x=1712052920;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SMFUmaTI++cY4NfevjpVUJIXJRsNvyCgVI+ecerHBrQ=;
 b=n/hZIwgoh3fQOPCRB1se1iPsYXi3Jv8xAaVJ6idn9W89GsUt7mjSgji4
 z0It64KFAXxj8o1fHCJ7/HSFVCANkHTNIk29loiiUWmmq+zDxVcLkLGns
 BzQdrze7whSZypZDTwhU8Cmy+wIp3Er6XqpQm917iUtSYmgR6NKRVkhf4
 dkwm6UWPLHg2u5I3SBN1seIQ4J+ZXBL0uXo96LKTF094zEsMa6OEN1FiK
 HmjjqAugyQH328GFrmNYSA8HsSlKjOn1mZ4mJtr22Li2nzJgm7lKtcmvD
 EIxepJ6acZYmagGaCjEm23g8oAqdkFnN1H8z7dND6HKZpRNtiW7uJaOmN
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n/hZIwgo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] iavf: remove active_cvlans
 and active_svlans bitmaps
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
> Ahmed Zaki
> Sent: niedziela, 26 marca 2023 17:27
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 2/2] iavf: remove active_cvlans and
> active_svlans bitmaps
> 
> The VLAN filters info is currently being held in a list and 2 bitmaps
> (active_cvlans and active_svlans). We are experiencing some racing where
> data is not in sync in the list and bitmaps. For example, the VLAN is initially
> added to the list but only when the PF replies, it is added to the bitmap. If a
> user adds many V2 VLANS before the PF responds:
> 
>     while [ $((i++)) ]
>         ip l add l eth0 name eth0.$i type vlan id $i
> 
> we might end up with more VLAN list entries than the designated limit.
> Also, The "ip link show" will show more links added than the PF limit.
> 
> On the other and, the bitmaps are only used to check the number of VLAN
> filters and to re-enable the filters when the interface goes from DOWN to
> UP.
> 
> This patch gets rid of the bitmaps and uses the list only. To do that, the states
> of the VLAN filter are modified:
> 1 - IAVF_VLAN_REMOVE: the entry needs to be totally removed after
> informing
>   the PF. This is the "ip link del eth0.$i" path.
> 2 - IAVF_VLAN_DISABLE: (new) the netdev went down. The filter needs to
> be
>   removed from the PF and then marked INACTIVE.
> 3 - IAVF_VLAN_INACTIVE: (new) no PF filter exists, but the user did not
>   delete the VLAN.
> 
> Fixes: 48ccc43ecf109 ("iavf: Add support VIRTCHNL_VF_OFFLOAD_VLAN_V2
> during netdev config")
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  7 +--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 40 +++++++----------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 45 ++++++++++---------
>  3 files changed, 45 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 00262f721761..7ff9e6210772 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
