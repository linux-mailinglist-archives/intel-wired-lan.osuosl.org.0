Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7770408556
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Sep 2021 09:28:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D8456061B;
	Mon, 13 Sep 2021 07:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uNtOg3gqGeXM; Mon, 13 Sep 2021 07:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78ADE60619;
	Mon, 13 Sep 2021 07:28:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB8FC1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 07:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7EAC400E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 07:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iYe2e43D91zL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Sep 2021 07:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E383740025
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 07:28:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="243914080"
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="243914080"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 00:28:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="543038815"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Sep 2021 00:28:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 00:28:17 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 00:28:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 13 Sep 2021 00:28:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 13 Sep 2021 00:28:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJ0/EFvzrMfBT5tGiVTbXNDMyMJlaSH57K4puWn3LxLkv7LcSELWoZkqbBWA5Zki2gX8+cAfGHb7ThfRoIt0LpAeeO3mJn/gAkB0+gx+LVSSvqsbOG9OwlfVN9QgxS4CN6MTSbg13SQCnbuYOl5zDYoVJjgVO2JukO1ekxs/uPDU3+dHeRh4G66NHwDNbWQdwaMKayrxnetWZNi4FU962pYzEbrBrlH7vuajGncvVk5TlLD7UeA+Vl8pc6bcfOG80bLIbeHAm4gcEsOfkX1t68ybQdezTpOzUChgggWZ38oSQhwtEE9dZTTmcqT4fNJdrDdM5t84PztTLjHh2zrVJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=TIMk7cw20DdkLhhGpDbZiXMxazr7iwXMLjVJNgoz52o=;
 b=j/BcBunl+luF/p0TrocRdxfid7vWgQQKbCcSsuf+3Gm5JxgA7EaQRDMHkpTPVkkpuocW3SPEtnVVedC2vIm4AIRWv0I5GE69Iub9Egi7xgJhrhsegMxqQ0EApZoWF18V4BFQ4wDn3JzCttqWUSQC8I8HlM2f/nVjDF608ZbC5qRQnDhwGpL1Zhqlioe+eh/R6JGy9A6YT/03ozzmHlawBHLHfvzhO0GT5Ixfy/8tLK+eNIFemMhXQIjYHh4eQQwTF8PyyrjYcH/gambv7OZpAawKwm1MFd6T8h4DyA+GuheLb3B85EQYj7224NNz5g0cc3izX2iO8Oak1yxHzOLcIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TIMk7cw20DdkLhhGpDbZiXMxazr7iwXMLjVJNgoz52o=;
 b=x0qdHXJbbygXnAlVDf6/ih0REVPzVCOx2CWEyrLmAzWclVOfQ6ZZo24Qgw1LtaRk4ywtbkd+65U3YJqz3A1spfZQaNu0IbLR8Fk4esJZoLqgPO/tgkAqyUvKY3uuXzx0ci0YdndM+98UNPo+yCh8F6/KvI5hNqzXbNt83OP3zuM=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2695.namprd11.prod.outlook.com (2603:10b6:a02:c0::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Mon, 13 Sep
 2021 07:28:15 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4500.018; Mon, 13 Sep 2021
 07:28:15 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-nex6] ice: Fix newline at the end
 of NL_SET_ERR_MSG_MOD
Thread-Index: AQHXmlO36aCbZ72dFEuYF+VJrdj8fKuhrNyA
Date: Mon, 13 Sep 2021 07:28:15 +0000
Message-ID: <BYAPR11MB33676A44E99223F4C851DE5EFCD99@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210826082333.12293-1-wojciech.drewek@intel.com>
In-Reply-To: <20210826082333.12293-1-wojciech.drewek@intel.com>
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
x-ms-office365-filtering-correlation-id: 54b3e901-0bff-4547-9d78-08d976880ceb
x-ms-traffictypediagnostic: BYAPR11MB2695:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2695498EE43FA00C9853C775FCD99@BYAPR11MB2695.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7nDzpvfh/Mlk07cJrqUF10W8mY0cxq+/TF6M6cKzWAROysBRSNfGP1rbc3Fvbv0hTPnfuUt1s6wBgy/KByr161PEr/r9KcRzsGQMo/dP3VfzyP/0IhWmQ1S9TAePMTlysf0r3KbiCgJxJjRQntVTTcaU2mkTvQ9lASgcjtxKDf+45DCF03E8tb24tZmGUVefYZqDPFLJ7xYndGUX6AIaXdvCh6lHOcEg9CcYW/hqyuqe/iOAlAfJhSqE0Of4mzD4DHhulx0Xvh3BOuSA21C0a2Y45HkUKV0A4Ef+yFL8HQM6d3s1vwpE9uLqiizODVbhIBlUIlAKz/BA0guWW03G2mvzZnH4pLPFUwt2FRxdymtdc/QzXaLfLhQz8appb/qrngrbWqlShwgQG4ABcN9IhrqcDgrRJ2UYA217eSRD5IXIUuNwu79HQsAe41xqWM6rGTzPByxOjLIoDrul4W5Im2hJ36qffe8zOpA+TBqNmtz72t4o+N9uqbRvFUQdtZSnxnVIimo/hu25/RBzQog1wTbrDSbsv+PSTjrJcNdSz9wAQb4RtmqeCNn2Hf8gfkEFaYytGfiWS/KqmyvUgjx9+5lvm8CfFWIwxrZLnoQnBEWMR25cBKIkiuJxCkJ0j6zSRJEJFAqSM1sGSdi7FurFLy1bnlaGhClVZJzgxOQvR3H8rle1Uenifii8lQEp8nhIDX8KHvwwWnlFkQNUfSqAeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(38100700002)(4744005)(316002)(86362001)(6506007)(53546011)(52536014)(38070700005)(55016002)(5660300002)(7696005)(83380400001)(478600001)(110136005)(8936002)(8676002)(66946007)(71200400001)(66556008)(66446008)(66476007)(64756008)(26005)(9686003)(186003)(2906002)(122000001)(33656002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7aglvkZCOlp7UIXLJhWHjl2tJIP/Qf8KS08Jul3X3dfeD9ggp370b6urF8/W?=
 =?us-ascii?Q?cfQPtIhFtWJaHX4OnJDjN6rQ1Q9yCQNWcnLrP5YUa0osWphYy4aXcBieFXlm?=
 =?us-ascii?Q?ft/1y5FSFP924uh6iLuRHcq9TC0E6EJ0O6Sla3/FP/9teWFBEwSW/5W5wuiB?=
 =?us-ascii?Q?7Tt7UgMgxkiq0/2kQ7okeDnE3Xaz78UT+yc1TYS7kZN37wwZnBFO8Y9UTaq6?=
 =?us-ascii?Q?zFDR/6jFIhld64HSNIG5t/syS2CQRnyeacfFAVb5EC/7XHmngIgs1IC5BVg1?=
 =?us-ascii?Q?wDwpmq4vIaOEb91kFOwOtwzg0n3z9rxBeeXOxyIzlEhUlt9GpRgOKfT0rO5W?=
 =?us-ascii?Q?j9JQppchZHjAWwHrir1yKq9pEsSs8rvmHIm3bUM5h3T0qzHkr1RWfTOokFMW?=
 =?us-ascii?Q?7KIxfanx62mzJFewyvSFdFarFU3Io1I9njtp/Zlv/TLG5Wo3F/2jGVZkLkVd?=
 =?us-ascii?Q?Kf+9AdnRMLywRKdwo0kPPm80NkwyPwASNTP7rNZWATTu7fFQk0BBxWM3z++q?=
 =?us-ascii?Q?28kn5TzgptNvlxjImNlHyQ3TPRwZgW0VKunNnL5e0DEzfMBaz4XM7wHMrxkw?=
 =?us-ascii?Q?TI8jhr5EaDgSD9JlJDebotA8fKAZv4vwrwIdz5GndXu3QiPlHoOyP4b4ynq9?=
 =?us-ascii?Q?SK9OrJje2KgM0YKwl/5Wo/QrCVbtMfMkOTmIrrnO7z9aAwUT1uWlrGDkkh2T?=
 =?us-ascii?Q?aGU74WEkh90XEyklGmECIvBWE7dXsFmmwVL+Xho6KJ3TNh0fVcNfyk5fcFQT?=
 =?us-ascii?Q?Nxzc2LbxTK44sBNJIVdNjlNafLhZxcbC58pHd59xx6Oxx6GOmQPQp1B08KOu?=
 =?us-ascii?Q?Ds7nJhaudVVEGk+F5Te5/tNnDWXqyTD5IXWYnUsppf1E0h8mK533WkTG54wO?=
 =?us-ascii?Q?hceyAlMFZlEcd+stmiPZEFeeJLIXtwHc64WpeFDqt18Bfce7FWLhynzl30E9?=
 =?us-ascii?Q?PgPwIpecCb3W4qKoFPnH4CqV54v/V/1ijZ3J0u3YHwhVb8pLzyLs/JdmrIpQ?=
 =?us-ascii?Q?828POcRXRz0epgP3Was1cIu/93fgID4zAf6u7FZJEsndyqZc4PyBPYXvmOVy?=
 =?us-ascii?Q?+fBAt5/TTnYj50yBLgMSEXTDMRL76/CkOV8m1b5bBYfHmDWaKM84g9uAAvSN?=
 =?us-ascii?Q?II0fqegARcvpMyp16KAORz5tZoZveqOXtEdEGJ6Q6wVwFG/psrIecszTPsRV?=
 =?us-ascii?Q?ySOZwFPG41VxBglYbRj50H9uiu32A8CRTtAQusaahn8r9eai0QYqZBEQPOHi?=
 =?us-ascii?Q?+7jTOta0aAA4DQPWyF9nQRbd0ON1QspIEyUo35sMkkwXfD+Yu+bvfzrKectK?=
 =?us-ascii?Q?WV2NGMmwSe2KqJKmp4g6kyqg?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54b3e901-0bff-4547-9d78-08d976880ceb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2021 07:28:15.2794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aXo8EwTxoyCcpCO8Cbm7XAuooh1CoNyNct09fuPXckitJlxzoEWmE1dCEtY73R9nxW6w8i4BAzqYavYs1PbjHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2695
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-nex6] ice: Fix newline at the end
 of NL_SET_ERR_MSG_MOD
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
> Wojciech Drewek
> Sent: Thursday, August 26, 2021 1:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-nex6] ice: Fix newline at the end of
> NL_SET_ERR_MSG_MOD
> 
> Newline character is not needed at the end of NL_SET_ERR_MSG_MOD.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
