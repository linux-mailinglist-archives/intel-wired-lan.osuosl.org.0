Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2D34D79F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Mar 2022 05:46:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 629F8829EE;
	Mon, 14 Mar 2022 04:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X_oFl2MpEp8U; Mon, 14 Mar 2022 04:46:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53B4B82980;
	Mon, 14 Mar 2022 04:46:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 35B171BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 04:46:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2351D414C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 04:46:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h6zQ91EXUT4V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Mar 2022 04:46:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E7F6414C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Mar 2022 04:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647233210; x=1678769210;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sEiIvTYYo93UXL1HxYUQnT7+eD388VAG63gAqlE21ns=;
 b=ea8oOk2OYnidGXI6WTlVKKa4hKUk5eihzG6UDu1+h8kw4ElbMIsyql5c
 L7h80PwtGbLX4djNUdfgSsoXJ/gI0RPmKbbS5IFUyUOrXtty5jFC5aJDC
 hkZVXC9tU1jdo5cg3fQTLlqdDcbG8w+7bCK38DxVeq0Vc7dbJCyEeDyHj
 lXBeLb/EkXdbUbNI/V36uVSFo6iXGrx6JoRs+T1fVShFDLdO08dSbhcuB
 a14fpkdO+Oeuux0SI93Tqnbx3GNZxgSuwHazpKrOegaD1/46xObnzayFE
 3pY7RSWlfKg+7f9TOIF7a27hSap5/37y+e1X1LeF+SmbabL/OIwyO7nwk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="255885629"
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="255885629"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2022 21:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="597749617"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 13 Mar 2022 21:46:49 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sun, 13 Mar 2022 21:46:48 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sun, 13 Mar 2022 21:46:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Sun, 13 Mar 2022 21:46:48 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Sun, 13 Mar 2022 21:46:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cTT5XVepQnkyS2wetV5LAERsjbygbdQoyYkWYIQzLkA3q3243rMg9WpL/HR9IHQCZYbi7KIYdID+GOLrAS5GtFC3ODcm1J4hcMya6d4IKG0eyuH8BeLhA+PPTk9pn2ocU6jHwtrIyUR98Tm/WRBn4jdCFCG8TscDAT4iQIXaaqjzDwQol+8sQmyFbIofUL7ibOMc0fsIyMY/V1kB6RadbFsldEVvic4H1qTm/yoth/Cr7fenTk7vpuQnkUfy5PZTqXvb8ryTuGwXta80JMr7C3HaV8UgGQbVfntgy6i4zN2KMNkkP8DxWup08vXFYDFA4h7ORGjMRIYNVHAPNAqmCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cDmCkf9wMVmadH7At4z7nClakvT0zEPtBneqEXeDjrI=;
 b=RUoIGr4QeKfR9TR4aC6lZItbED5DSgd1tROVBpaYk1ndQxcGouFJ5Hc3MXj+VSicmuk0hVWbvpcUC0CDOYYbw7KRrCnCYUZuIsJVCp3ld9VVbvV8tJ6biV+L8lIIFbSa9Oid5r8UfGgxbFftTGZb8qJpv8DzQ3/shPm5E32BzNR0lzqLIiQwGC0gEKTQgbBvp1uw+iq8F+olVPaKz5rRJ7JPlTngC5+K+xhzsVnm9zofHkJr8hR2tAX75BLVIL0S/sPEanD8eO56ZG94+/XyoyXdvbaDRGa4XBXjVeQ0on8ntAXO0/La4gMS+fQlrXAycJdwKJMEYLwO2kcL+h0Hyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3670.namprd11.prod.outlook.com (2603:10b6:a03:f8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Mon, 14 Mar
 2022 04:46:44 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db%4]) with mapi id 15.20.5061.026; Mon, 14 Mar 2022
 04:46:44 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net] ice: fix NULL pointer
 dereference in ice_update_vsi_tx_ring_stats()
Thread-Index: AQHYMkuJs2Mo/SzbmUKsvvxxRI+3uay+WDYA
Date: Mon, 14 Mar 2022 04:46:44 +0000
Message-ID: <BYAPR11MB3367D9730C0C04E6626D744FFC0F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220307174739.55899-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20220307174739.55899-1-maciej.fijalkowski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3523080a-655d-4d25-e43f-08da0575a3f6
x-ms-traffictypediagnostic: BYAPR11MB3670:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB36708780E934427286819589FC0F9@BYAPR11MB3670.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jU69+l5CReQSadSA1Pqr61OWr1tMAeddI5TuCweiUr/81lKltv3FFVXXqPlP7aix5AZ+3Nq6iH42L5XlDAjMzwrr9xig4rk8j2tE2AsPCCSd/xdiaZ+MQ7s3qL0WM98lsTagEueOmRFdSe+RV6o42t4FN87oQQpxhXBouSUTru+zzI5aFlRDKjf4q63lhllyK/P7LXnWIk6InOaej076eOr8/lk26+A59+APJ3Cy4wqWAY8L7m8Ywv9IXYBTMU2kCmLQSd+S4wqiOg1xVJVTgQis6PiIGIazIlj+yT8wWHdClWHPNDkYcXbdcy26ldILFHwvTIOwejGloqeDfGfRRANlVgsrCqnV/k0RzW7sx3ExOMcC7phTK0tKoh6qDrGY03Jp54WnGOFa3lXvGc1D160jN8YGFoR6eV4N+qRmSfLtMAHSCaVWvGNzOmIKH70LHoIarXgFnl0ZulraSFDZIbUqazXncvYey1Cv87wGix+Pg52M2W5beBEggTza1lsnn+0EMxX2XAGJsjt5qKDTqzTd2DMO9xn8qYAvmogiK9DsmHbZgUU3p79KYQGB+T1xZIBuS+g9DUWyenVVLkdUoSZWRtUkCVT148l4BwJ9kt9P6Q4w0dyu5i9vl+dTByNpSzykZBTiIvGRva561pnSwEFuI1igPhl0W0qpulpnH02HI7y0olbIGYNR8sLmB4zivtLavdZnCggJVNd+0/l7fA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(186003)(122000001)(71200400001)(38070700005)(107886003)(86362001)(6506007)(7696005)(2906002)(53546011)(9686003)(82960400001)(38100700002)(508600001)(76116006)(4326008)(8676002)(66946007)(66476007)(66556008)(66446008)(64756008)(5660300002)(52536014)(8936002)(55016003)(33656002)(83380400001)(110136005)(54906003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kbhirwPictLTD2BrJqpUTdXs7k1/MBVeIo4Ek3v6zV0/WqVRuNqU9anQzG8v?=
 =?us-ascii?Q?977xNF+cpoKhR12c+cXTYOe5Wv/bdH3fer8tvcF00yDcbmZWr5M3/7o2EhI9?=
 =?us-ascii?Q?tVxob8f9w6MhMLB8tPhMs8GB4b2Yak3n3YfqcO9SEc+OEHCTnd+dBYw8Y+xr?=
 =?us-ascii?Q?aeGtM5w9wu1OuXyBoxt7cj7AVrCzJTRQXZHCeeZQAWNJ8r23DaFFJ0GzJHbl?=
 =?us-ascii?Q?RAHWrA7bo/9cYAEG9w92YPDuOi2W0aCwCj7cMUiiB/xb84xQGe7kXhG1LrkF?=
 =?us-ascii?Q?WLbJOMCr58zNt7awmpyrmvnK7vJUuP8A30uz6Y65OlVodqv5tgYbvS3eo36/?=
 =?us-ascii?Q?YmjClqpH29kDfbms5NkJ66l1E3olXpsjLuOnQAnPDOPl22N7kc3JY1yh4jn8?=
 =?us-ascii?Q?GyVc7y+6/NEnM+IS+m0Hk1VqJX/o7YtZ33In+8+/yCnxaGsjmffRA5YE9qrK?=
 =?us-ascii?Q?7PezUhcJSpHCpaVNOOPxSWTu3P1dK/kHsPbFbuhFm4vfuAGz01d+zqgVJiIl?=
 =?us-ascii?Q?Atk1bdXeUfyU8u86gFJCyQQyK7SW/8p5IbvLhqgz2Tbu1ZfZ7S+Uwn+GEZTR?=
 =?us-ascii?Q?D0yl6J2MKU6GtJqYFwIJUSLVp7E8xi9xau+/XZMwDSpcwR6sIvpbUYIYrQUb?=
 =?us-ascii?Q?0LrKC+O6WF2lXfnkSewBJAk+1UcS4z6Q8bw4c52OtywJnN/zfAX2mr7kALcN?=
 =?us-ascii?Q?wgHgc8PaiQ/AUSzzVsBuuEC/lOvQ7Pw9ssJxPi4R5BzuuJr/aBr2bbr3/4VB?=
 =?us-ascii?Q?2Z1DAUGod6HdQgU0ME2FZYEiRNL/yNf2jOPwPJq0tsvhOxlK0toil+nyrCv2?=
 =?us-ascii?Q?Aqm5KR5YZsPfmdj5aOX8xHcPtGCv6h4zvvxlifQmZprmG6Ai/wkFXttltBqD?=
 =?us-ascii?Q?gY82N+zcRvNn0550C7gzTyzZyI7rbT9lsCDCK5omsnjxlQtIfyqipa+qvc+K?=
 =?us-ascii?Q?Lyi86F7qe633Rzqdc7MCc+TQVDCt0Zmuuu1oCvXzpJPMSa/EE9paEVQBCzZ5?=
 =?us-ascii?Q?abUhlIzUjNsVbJl/5kRLaFZgWrwf52djD6d1iEgoTR/t1kr7Gqk/U8Prp9vG?=
 =?us-ascii?Q?NQVcw7I2D0vPir2f7ZuwrFRzM/jvYMV9qly7otUsxnKQxBVlavsoPu6cxZmU?=
 =?us-ascii?Q?zzLMgYhpBNN/6BOKMg1CgpRlGYVc8oRx3Js3BFAnCRGDqz3SJf+b4aV1qFwR?=
 =?us-ascii?Q?uEQjVPDsw5DJqNcS+qRn51EYfntzVGZ16IT/HbHCtORDAk3jY+bhc44Zuy1K?=
 =?us-ascii?Q?c4KCVPNnv4KOXMxIhpOLM8fT0a1twY9sKhFuyE9HVrCexbim7oZUEHsT81H5?=
 =?us-ascii?Q?+XGVcR/JNcpR3Ojx3AjtAw5SU4/4HuGva21hF0CIKsEZHR6fcpCferag1uq7?=
 =?us-ascii?Q?JTdewjs7VjM6d2Y1M3M0aPOALEv5wLKZl/Er8GTrR2pVnwxO5BiQFRAlBrCv?=
 =?us-ascii?Q?Lqmi9S+Z2wN9CIWDgm0wdZ8IrLqUpw/0?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3523080a-655d-4d25-e43f-08da0575a3f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2022 04:46:44.5275 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2gvaoU1etculdBjlEc6pjW5qRsSYZfPAgs1u/TUpBY8dzzjT8QAxIfNevOs5pHqDNHFILMLd7zuPEEnX6hZ9EQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3670
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-net] ice: fix NULL pointer
 dereference in ice_update_vsi_tx_ring_stats()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Maciej Fijalkowski
> Sent: Monday, March 7, 2022 11:18 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; dan.carpenter@oracle.com; kuba@kernel.org;
> bpf@vger.kernel.org; davem@davemloft.net; Karlsson, Magnus
> <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-net] ice: fix NULL pointer dereference
> in ice_update_vsi_tx_ring_stats()
> 
> It is possible to do NULL pointer dereference in routine that updates Tx ring
> stats. Currently only stats and bytes are updated when ring pointer is valid,
> but later on ring is accessed to propagate gathered Tx stats onto VSI stats.
> 
> Change the existing logic to move to next ring when ring is NULL.
> 
> Fixes: e72bba21355d ("ice: split ice_ring onto Tx/Rx separate structs")
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
