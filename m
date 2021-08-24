Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A79EA3F62A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 18:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 469FF60B91;
	Tue, 24 Aug 2021 16:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V5Dy8zLIfGq6; Tue, 24 Aug 2021 16:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE44D60BA2;
	Tue, 24 Aug 2021 16:25:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1EE71BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9FD0980CCF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12-7W4sSMeO1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 16:25:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E76EF80C12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:25:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="278360109"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="278360109"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 09:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="526684326"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Aug 2021 09:25:09 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 24 Aug 2021 09:25:09 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 24 Aug 2021 09:25:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 24 Aug 2021 09:25:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 24 Aug 2021 09:25:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9ExhOnmr4iknLbPNpFoNmmT+WcykK4RiTmWfxumIO/wW/FdY8xsbpSl/Y+2gAc6vGeKNcIXfiR5MTcIRT3Zo/OgMFevRlA5ZQOg3TZDZrunCY7iNPwt865t2gkknbcLfqMz/mSjx6wd0oc8KM0DhU3Cz2cUfY51vebyJtEo3HyRfb3ujI0ermHtbG9f+TQzLNQlspeQvwenTvI+4rYrZ+s71LwAmFd6bvlBXa+0xjNpm/WKfsdsubvDMWSMsezOme7woVOdhxqO6cMmJeZXQJ7YA7vUPujyhTA080Rf4CGAYUt6fHe1QNAj8abBkEqx1e8pIBXfiaCAz4e3Nr/tdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ptu8jf2Vv3IkN7brkmWMTFBgZ2135iEtYjkj3Nqs8M=;
 b=fuYMdx8lpV6LhwT5SeRCPGZghxyf9i+xx88a2CXxKAlzls4ouqmQjEUtKUtcP8Ez7PcdgKbc02kKaY8IWF7mFEyT1wDim5b/RQadpQo9uPZWjGoOd19BV826vfq15O3sR/0GCvRIBWgG8E/zZHg60C6XDmAz497zHdsb9xlRAoywBuDSFfPlxDyzJxiVkdxD+t8mb4vX4/TVlcHAGWYvGsJdml6Ue5LKUwJ9W08IA/6Z5DwDVrQ8DOlmRkG2lx6WaDcnUDDW1haD0RWkEATJ/8uQfK1wMf/1RdGcTU4CEfvRorm//QEoVHUClLC/W74u7zCkyphDKG6bchcghnZEQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ptu8jf2Vv3IkN7brkmWMTFBgZ2135iEtYjkj3Nqs8M=;
 b=J+5hQdOAlFx+1PiYC6Fu82h4jNJNIQHCXtBV3AwY7gRtES3oh4BAYBISzDI9Kv8YOkK0yeFPLuAUfgzg74T5WTIOpRQoUURhN14EcNyUMWvvDGmN2Wm9b2EkLUf98yEwwaxEpX1Pn9v5zUYCIW0mqR5B9ZOGf8Am3nt9cdMTUts=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3847.namprd11.prod.outlook.com (2603:10b6:a03:b1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Tue, 24 Aug
 2021 16:25:05 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4436.024; Tue, 24 Aug 2021
 16:25:05 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 01/13] ice: fix Tx queue
 iteration for Tx timestamp enablement
Thread-Index: AQHXmHrhHKNWURK600KUwXlgLAZ9vquC2BeQ
Date: Tue, 24 Aug 2021 16:25:05 +0000
Message-ID: <BYAPR11MB336796DF0021B5BEE9AB2E80FCC59@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
 <20210824000158.1928482-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210824000158.1928482-2-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63e97577-c90c-49ea-0608-08d9671bbb95
x-ms-traffictypediagnostic: BYAPR11MB3847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB384733B3600E82FC1AC1F616FCC59@BYAPR11MB3847.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v/OSDILXKJ/qUvyyEsM/ZMX3k0gn4TAsjP3+S2eGxO+X+3hjU4G6pOtAkTTtcwC+tiW/dgnRdXiiV3DoeAMJffFA6sT8q6RY9G6RICHbcGg7GCzuzZO8uavUGQUsNzB4Q9N8lqvmpOstAUqGNhLnc/c/mSd1uv/IKCqMHKqpjus2TjkSEoKELrbu1mxpPY8GTe/laZ97M8556xbhwBXe5pc0KGHrEHXjLFx/Oms/NkxkpXhHLo2t0KMuEccVmqzR7SMtSuCiJDVXvCnoNnXwmA7i6wIyoac4UaZlp+2DwQAL20gEY476T5v6V29XY/e1j6S1R64EW2LnEms3/tVJWZ6tg7qnQkXFUwzU5knSu3wJg/HqNlc/GXgnsrBQdiCmJW4aWRMXPEQqCGVmdjTmjYJSrY+owoFA77hv40xmbj/8MrVeFny1Ckk01DCFxeOBQe6uDDGA44fcIIp01spBq+vy+IablraYbvW7xySY6erFDxWkzaiTKtrM58zbDg2sc51AuUESdis7ATuGWZp+x4XvZJmTJ+e5PLultRj0N5SZgiaA/VPk8P0ggyElYEe0MGqfARSE5gZH3a5DBRYbGhh0zf5XodGBa1UZg/++ynQLq8ieEj+go3vBjiWdL9kLQbeJ+b9UJublFoIE6lJKxxq/5OOITO98MCj75GmDliMGzlMwQ591vBIsBDDcI2x6mZNKY71+PLtaGyWzsZKYkw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(376002)(346002)(396003)(366004)(110136005)(478600001)(71200400001)(52536014)(83380400001)(2906002)(8936002)(6506007)(53546011)(33656002)(38100700002)(86362001)(7696005)(66446008)(186003)(66946007)(38070700005)(122000001)(66476007)(64756008)(66556008)(76116006)(55016002)(9686003)(5660300002)(26005)(316002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eyM6LtFhS6ZVKFE3rgrljbhuKZvd2KlxSYM/oZC//QKmTV9Ysq7r3Ee3tqcx?=
 =?us-ascii?Q?a4p5EpFYHSQqNGl2951MuhKSC1QbBpjC2Dfnps9SPUvHOM3hgi7JNCuCFnXI?=
 =?us-ascii?Q?WHc57mLSFabEW1xOgflsjjvAej9zL+/sfB/YXqt97sRESsY+lQIH+vN9STdA?=
 =?us-ascii?Q?nDSBEF1xEiLtgxNYM56GSlqQ6Y2tmRUuSsRjewsr5QlR0FUXC6vns7NqAUj9?=
 =?us-ascii?Q?h378sjLAHYZpcPR5AjyZ+8VMig/eywtWJeehDO1iIE1eR7gnKGx1U5hpRQq8?=
 =?us-ascii?Q?uLFit0dsvIEqczsMKSpcpJb5S2u0BRlzGS+o3S92B19Ne1U4hG06xwtolNaj?=
 =?us-ascii?Q?0aAG2aFrWDctRP4/C/04W/YT9R+frasjDRNa1ujw9AEUKX7qFEAKjTgx1WK9?=
 =?us-ascii?Q?uZqanGJZpyRQ0uw+Lkbru0MSxvkdEJ0Tp1Ya5J9xWtWbzMeySqJTOgIE/dR5?=
 =?us-ascii?Q?64uJIDGOWsNp3bgSpHMAdQEfMmHtSU3Yy5oUQE4P5B1sV18vVtJiwFy81i9j?=
 =?us-ascii?Q?2m2tTas0Fgus/0h9YybCVC9ccDjpO2B1YG5QSbSKaZodSE7y77Y5y+GDm82u?=
 =?us-ascii?Q?RbkFn4EVyhjRngNPuojt3jRr0NwWekcrqexidhxMBfBkjGuG0Uh9bknd9Y8N?=
 =?us-ascii?Q?9te8edSln0N3Eueq8Dl+/XTyvxAQTzWVuL9YJTD/cXp2voPglSy/KZ8Jdgf1?=
 =?us-ascii?Q?xoBQvzCrUFeIjjBhTTwQ7Jwelh/iBpV3P/1D+MMVV8+pSNYOYF2zw1WT86Ei?=
 =?us-ascii?Q?UlafKboLn3gdRRE1h+r8VE9cq56TJ6TWEkdsOn/6tv3otEorHN9aNBe350bQ?=
 =?us-ascii?Q?Kb8C49fG0tBX66Uj7X5oAuv/V2Nq04NSxdqGz4X08CdCxioDvI2PBEGmQJF3?=
 =?us-ascii?Q?yBK778CEAmkO9t/UAIQP7ESGo2ZEyN0C6nHlMqOPlIopNaifZ8F8hMDq64hS?=
 =?us-ascii?Q?1/gTZw7dmD7WYsM8+N4nygrQEMI4nxr5IAjr4E32Yc/dJ4GXnnd72JyLrQPC?=
 =?us-ascii?Q?SB7hXDZFcPGb5g2TAUmwChPNgmEZgkgqMdFOq9ZpjojRdB6rOc7TeFCu+cjk?=
 =?us-ascii?Q?huD1BdyIOw1dksyBvsNHrqyFGTsoHqYLpEGkb1bR0FLBsvp5n73ME9ogAbT4?=
 =?us-ascii?Q?6ChlmzoeZc/Wpt3hJYrFp9jlSUoCs9+mSquw+OsrurfzNOPam1C138QZO8uk?=
 =?us-ascii?Q?bBDIXOKSBxAqQGOYCg3NccwzBT9rqxscJMEHO9nebg2v0EIfKpMKlzuoTWXZ?=
 =?us-ascii?Q?+E7ejS8Wd5TjlaJNtEhPT45R/HZbj57HYgWRitFb5hZstJWKS8bz7V5WiUeZ?=
 =?us-ascii?Q?UP64se+4NFn0JSv3Y3at3ebw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63e97577-c90c-49ea-0608-08d9671bbb95
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2021 16:25:05.7080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FW+etVaPBwsas8j3FmD0ZHUW6U50cb6LmoAk0uS+yEBct42N5Pcr+a3zJiYngnHjb2Ks5OZRf4Et0zkI/zxn7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 01/13] ice: fix Tx queue
 iteration for Tx timestamp enablement
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
> Sent: Tuesday, August 24, 2021 5:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue v4 01/13] ice: fix Tx queue iteration
> for Tx timestamp enablement
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The driver accidentally copied the ice_for_each_rxq iterator when
> implementing enablement of the ptp_tx bit for the Tx rings. We still load the
> Tx rings and set the ptp_tx field, but we iterate over the count of the
> num_rxq.
> 
> If the number of Tx and Rx queues differ, this could either cause a buffer
> overrun when accessing the tx_rings list if num_txq is greater than num_rxq,
> or it could cause us to fail to enable Tx timestamps for some rings.
> 
> This was not noticed originally as we generally have the same number of Tx
> and Rx queues.
> 
> Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
