Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A137B65108E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 17:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D50140299;
	Mon, 19 Dec 2022 16:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D50140299
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671467690;
	bh=MzVx4ctwTJKrH07lWZqXKWXwPPqyZBqdbUq3mX5qbzk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7itLTGSUK71NOTCeaLgcLfegKq/wXEo+VV7tWfFP7vVqt9BrVdOoOERH1S0fSpJiJ
	 ocVLdv2tO28Y2bQZH3x/WHL58gypssP8ja/6I5n6BGdaWLee4zDgJ0bB94ctTPrq2Q
	 noDXs26gEo8n0KOCG5IdTbXA4vX0SMzvLmnhFVpf5PvCDK3UmQ5zCbzeln96Llq9cZ
	 ZyA38L1U7Ek94y+wMx3haRt6ShJz3YmUwGZUScwUrYNyWyBomu2owt9G/bvqZwci+h
	 VD4PlQ+C89cu8tvgmbfTXTKB53sUqjXFhFji0CIfgnsXXQVXKsxshoDYSiTkEhwxld
	 /U0bgxvGZ2DAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TLBwuuv2aAnQ; Mon, 19 Dec 2022 16:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 257AA40207;
	Mon, 19 Dec 2022 16:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 257AA40207
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD06C1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:19:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97F6160B4D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97F6160B4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bjIDIjoAIcTw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 08:19:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58A496060A
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58A496060A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:19:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="383641416"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="383641416"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 00:19:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="713935166"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="713935166"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 19 Dec 2022 00:19:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 00:19:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 00:19:11 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 00:19:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jy5uiQXu35LYbTQ5Mq+6xuI9OQG6Sd8zhcJUURolbK4+HBrk7RWTxPlYP4dqLCJQhBHBOfK0MJbpIjwronyIxPaFV8hTXBbBfU0Xtkx+3QhZZNJ4TEX/0w4BcwntL6qQkcpCWOhXWuq4IiaTlbyPlpqVG/PzlRs9Zkm7wCGMHVEumC+LALznDUuVq8InviBB6/xIj8/Hqzy7FqltUdeVFn6U18fSDDJUpg2uFKIm3giMMlg6ynPmSgYNagpmTNwgqh0F+G2izTBKdkaMRis9sE8pRHiGMlw8SDwum300wfEEYQgEjumNx6GvVt9fSsYmxjHuWur3vyEafE9vo/H1bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NSeLaB7jPIx1wSlxK2moT/SM2pC4nfbMxhYYA1k5QT8=;
 b=eEcEIpkSq/8xwSwNbNSU4jdL5n/Be5BYutsNaISpLrCpreftUYDnl/qwtGg07rmBekQJhzPqmsqu+DNV8/lH+fK4zMzcCv+Idm8zUP0KtKJB/ZNXqkesxKsJdOTBKiSpqejt0a7/Vbie6ZsrrKF0ZF6G9ehM4nKEkU0vKStCUEdCgzfKqmrhV4YtWlOB6MCa0y9gVwrzzsXDIWnEVStuXxvuCATovniySf3wT/NShv+mzbhgZ1xrjPpASPe0Q7tNbd3TbfckAapTbODl2SvERiyHkLXIMcFhGUdCOnBmGuaDeCnrJYLmGvHhwsWqHjlEIX+fIhBY0pbdqyMgzzCchg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:388::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Mon, 19 Dec
 2022 08:19:08 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::3128:22f2:78db:a20b]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::3128:22f2:78db:a20b%5]) with mapi id 15.20.5924.011; Mon, 19 Dec 2022
 08:19:08 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "'Gerasymenko, Anatolii'" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 1/2] ice: Add 'Execute
 Pending LLDP MIB' Admin Queue command
Thread-Index: AQHYt7Ivt3kZzRJahEu2dGNtkzEEPa51kd2w
Date: Mon, 19 Dec 2022 08:19:08 +0000
Message-ID: <BN9PR11MB5354D37BD5FD3B52208D5D6C80E59@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20220824120728.1384453-1-anatolii.gerasymenko@intel.com>
 <20220824120728.1384453-2-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220824120728.1384453-2-anatolii.gerasymenko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|DM4PR11MB5501:EE_
x-ms-office365-filtering-correlation-id: 047531d4-ede6-4e4f-e5a5-08dae199b39f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6RmIMPAua3YvVU7I3n1MqqHfT+2UtwRjgVZko8PPnhAhTw08SZPP0rYNNRDaPfoPjSrID3guWqrcD2MBTB9/EAPygJp4om7qbdQVyx6C/WyMrJ2M6bJlj/4p5huu4G5oou2v/kXAoXL0tBP3cMkUTO0U8dSPR8Mm76vLBGJpqG4g2OZo99UJTWXWWgUPr7ssA1plHACN2xLCnQHkBXA6BQ1hOQ2NS9IdFsoTowyUX7SOnmw7ajpZeCjr0p0twYV4BsmB4CP/o+54gAbVZ44s80CuxaVzpF5v0dEDcTwf8kmYUD3Vf5llOnXVGJffbo4BxbKbKhonDbpdSFVBzSNBRkBtqGYL8iGbKCzeAVUS3skuaN4ohpqKJSA+iacL6/Gp92heb+mmJshtAv9CYRw+yTlmFp/7d38qVaOKdcxqipztKz3h5oyJriOdLWW7nR2HMxfrJDQxRpJuviHBSunYM/LpM0R1FdcmWCTHcCefZhfQ4Osw57jhPZ0IEnDaEFjeQOmVgRig9hYciD8521bbKk4/en/EpIJ5k8QmSO0bhlHtSeZ+76jAen13LsuJn57U+3ewVHQ2/IoS8cUWEXRD3AALCl+29NTnW4H/nQla1aovg5d8P6Y+NHYbJxXnrpUAGP9HK1oLK9pW4UR3KB/f3adTOJHS+IxWTIETUxAIShDpm43Nj4ntnp8LAaSI0TlJD//nlZjep3WjMND/0R0l5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(136003)(39860400002)(396003)(451199015)(8676002)(5660300002)(4326008)(110136005)(54906003)(52536014)(76116006)(66556008)(66946007)(66446008)(2906002)(64756008)(66476007)(71200400001)(478600001)(6506007)(9686003)(186003)(107886003)(26005)(41300700001)(7696005)(53546011)(86362001)(55016003)(83380400001)(82960400001)(38070700005)(8936002)(316002)(38100700002)(33656002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qWI5h0i2up3wbKZSlsiVLaDzHg6uxLP7HNhwFXG8Zvy2EFjcCdE8S8bm4DTc?=
 =?us-ascii?Q?5fdWVJFTCTnuCYfgUY32s60OvP9KhF1+XXWKZHRRK3rHXeevL2xl/Ai0iF5W?=
 =?us-ascii?Q?sVRVgnHYtfnbiD+Vlnj676k8vPzg69JW6GloeVHa5He33JVsL7aPOgT2GG2n?=
 =?us-ascii?Q?L8jtHecxBeXaOzPe05Ynd09hTT6OKT6WSY6s+2M8Qnz3xnDLTblnUIYxYCs8?=
 =?us-ascii?Q?ru8W8GfR8JZHyzcTzDK0MUqgABLOdLZZltIiLBVP+scm9Y+fcGd7D+iwwP85?=
 =?us-ascii?Q?TIE/QLcY0/WHde/FFrmNDWLbujW0PeQ7L0Kp6UfR3sxsGYCT4I4GAhZ3Nxcg?=
 =?us-ascii?Q?m6Ia1RiGiHO6WC59XlImnt4SVr8oYk8zcxK9M+sN8U+iU/gmm03eBUTHL3b3?=
 =?us-ascii?Q?8/VIXhZjXYgAWIuOsQ1mzp72kzAlAvZoEz1UxSZKa24RPoa0pQaO2P1T2ZZR?=
 =?us-ascii?Q?Jq2Ca0o10yLPMsfkln9VYfd5LN3BOPo9I36/BbAaJJuNRdpFgxI7S1LZ2B4n?=
 =?us-ascii?Q?YcrHWUmYp8CuO6lNN0wDkOrU6tQ+gEi8DFm6TvCiABUQDSO82y7Oc94rQP9e?=
 =?us-ascii?Q?d9QIyCOevjrUcpYIQTfl6qPUnkB54cdfPKN46JQgbk0nnOIoLxFe3dJBXTuJ?=
 =?us-ascii?Q?N1N7f7PseSZGDof4fRCkEmMIbX1D1y2zWJxixjbOrj8slwV54ya6CEjgKH6A?=
 =?us-ascii?Q?/f7tetAnrGVgwentZ4Bb806VY9nBXlXQg7hNFprcQFgf6bSB6d+LdUbuXrsq?=
 =?us-ascii?Q?SWk4Oxb+qmYBLOkwIKBgDT+aGOfMJ36GICz7yReLzDspsSv+5lVsI0Rfn6ug?=
 =?us-ascii?Q?4nha7QD21IYt4I/5lUU7kEMbNBfGH+bNRenpt1TTVdD6spzntZMvtBIMSKGg?=
 =?us-ascii?Q?tEpVP1+IyP9KjIknunilz8uH5S9thgFroeWa2m0r7TrTCsTbzIT6lT/I3pOl?=
 =?us-ascii?Q?R6VDdjuVLAKPKfTrcsF2sgrvJRe6jb0p3Ou6ulR+pfT5SgDiKQ2FSutUyXC5?=
 =?us-ascii?Q?N7h6kVQanq5QinZoF65rMhmoe4uTl4KwZ9k3sDFClSr/VYxrReZfCy5nZU7K?=
 =?us-ascii?Q?dpcZSI6dCk547UFX1Mz4rwU9XRkSQRz2fRpT8kyBbx6ZFiYL4Y0t+GjP7UVx?=
 =?us-ascii?Q?ITkzqr0GMTrjPTrsr+PRSNHzM1/z+Mttt0xAwhMyzc4TqrPB6XdNRWJboe0V?=
 =?us-ascii?Q?M9ESiAepscQL9u6mvpVPhfUjHNABr2QVE6w1Bxtkh8R3WAcMrpRP1/xXg/+t?=
 =?us-ascii?Q?TSGnG5iM9C+dE7ArAQL97LN9a4pbbSreHK/24hDg80HRd4HHfvhvlzRwSXV4?=
 =?us-ascii?Q?XLgzrC80BriuQGo6NpcGkn5N+R7OIwx5Kbd1rLSnwbimyq9iC5Zq33nh7fx5?=
 =?us-ascii?Q?b2t9ntf8ZEnLYFZuk2Wr8fFlS2Cz/uUFbwDeORXOzLtI8DpoRAAs6qBfQSsq?=
 =?us-ascii?Q?Yo0lO/2p1wyOM9YED3DvxqUJt4mOPcTcuVlnvtJCXK3e7s7zpMje1WY14JYm?=
 =?us-ascii?Q?ymrjqH8x9RRw+eXNtAoYFE4NnIRepBN93ZTV/c/ZdTC6kOhFBKu1SdyYAqv0?=
 =?us-ascii?Q?fYHj8cJIxbDn3ThJsiJ1YJNTKspyGdCWq3fvdWYTMndhl58Zb7HPhWsYU0Yd?=
 =?us-ascii?Q?PA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 047531d4-ede6-4e4f-e5a5-08dae199b39f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2022 08:19:08.6036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pvYFCoYgnzDqKUkPNRlFlFG6T/puCtr1OBcxntAM0DbJ+epLAUp2L+UbfHQ3AC9Csng1WoYiZhRv1Rogg+HcdhWs3fshN6YWXX9oEGJOJQ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5501
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 19 Dec 2022 16:34:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671437953; x=1702973953;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VQ8lwxSTm5vY2EYU14wpb/q5VvNz/Asn5tE2py5RT8c=;
 b=EH2TVldH6IFWzVtsPmvfr7Iify7rn/M8gJpkKqmj6VwbUVjvOb7Z891Z
 T9b5FGy56bD+57TG5FP6liWsZdSoKrcq95+b1prf1tAlfHeRFhSOxGcmY
 jKeC9yrq4W4deg769geYjXRq2Omk+/Augx5+KOPB2yio4jaDFwNU2Myd1
 3K3OpLN4Qd4vL5Zouf4Wq/Bmq7IgqpzuIFuwk3CrzFW1h1GPOb2YJpUO+
 5AlDRAApKFu3bO4v5r3Bi1X7EnnvfAFvWa4XIGpsVyBdsr4LuffkE4VI0
 Fqto9ftFku2pXH8aaWyZSSSH25ln5EG6xy2G5HijNTxx4X/lnV1M3PON7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EH2TVldH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] ice: Add 'Execute
 Pending LLDP MIB' Admin Queue command
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
Cc: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>, "Ostrowska,
 Karen" <karen.ostrowska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Gerasymenko, Anatolii
> Sent: Wednesday, August 24, 2022 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>; Sornek, Karen <karen.sornek@intel.com>; Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4 1/2] ice: Add 'Execute Pending LLDP MIB' Admin Queue command
>
> From: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>
>
> In DCB Willing Mode (FW managed LLDP), when the link partner changes configuration which requires fewer TCs, the TCs that are no longer needed are suspended by EMP FW, removed, and never resumed. This occurs before a MIB change event is indicated to SW. The permanent suspension and removal of these TC nodes in the scheduler prevents RDMA from being able to destroy QPs associated with this TC, requiring a CORE reset to recover.
>
> A new DCBX configuration change flow is defined to allow SW driver and other SW components (RDMA) to properly adjust to the configuration changes before they are taking effect in HW. This flow includes a two-way handshake between EMP FW<->LAN SW<->RDMA SW.
>
> List of changes:
> - Add 'Execute Pending LLDP MIB' AQC.
> - Add 'Pending Event Enable' bit.
> - Add additional logic to ignore Pending Event Enable' request
  while 'LLDP MIB Chnage' event is disabled.
> - Add 'Execute Pending LLDP MIB' AQC sending function to FW,
  which is needed to take place MIB Event change.
>
> Signed-off-by: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>
> Co-developed-by: Karen Sornek <karen.sornek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> Co-developed-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
> v4: Fix incorrect defines for DCBx IEEE and CEE modes
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h    | 18 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_common.c    | 13 +++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h    |  1 +
>  drivers/net/ethernet/intel/ice/ice_dcb.c       |  3 +++
>  4 files changed, 33 insertions(+), 2 deletions(-)
>
Tested-by: Arpana Arland < arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
