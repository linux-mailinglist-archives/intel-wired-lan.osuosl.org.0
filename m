Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337146D6CBF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 20:57:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3AF440B3A;
	Tue,  4 Apr 2023 18:57:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3AF440B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680634667;
	bh=hJH3dO00bruoE1VzYlAPAUaZfDX1bU9x1J0EajQvY4k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lWCoZ+HSZXEJJBD0IdAgo7DoVbQVv8QhzxqcreKISUqwVkvr0zwLIbBXl/Wh37i+H
	 zQCyNOYcRlGDDVoqcMJLqw86WEysPljY51ZH3b7FB3R7Yf87YfQGQ3GS56ZCcqPDPF
	 au5pdS/FVn/qk2zrOc64P3qdv4GiKfmKGeedGqJTtv6gqcA1uadT30lkNJndm8AVL4
	 dZ1Gz48aJdS4pcBowz8AkjocrK0FDZRLgHD6aT9m8sIs6/ZeRqHJ7JIqSkUlyDeGBQ
	 +mzGlnRNHjphL/E6+E3CyGwXIpirsJiV4whkk7g8R0A6KmlfFk85STimjuXIxtwu0z
	 ttIh6kCHDhb5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Brv12lRzYb_Y; Tue,  4 Apr 2023 18:57:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E39B401DF;
	Tue,  4 Apr 2023 18:57:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E39B401DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9C2A1BF360
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 18:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A134560AD1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 18:33:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A134560AD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 51recN3qFD0b for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 18:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9228060AB7
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9228060AB7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 18:33:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="322656702"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="322656702"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 11:33:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="751009898"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="751009898"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 04 Apr 2023 11:33:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 11:33:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 11:33:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 11:33:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VH6JLApWL2JF86nHTMnaS6xH9iI6h0/1aCblZ9DstiWj0c89Ws3dYmUgn6sbDh1MAvl5KNVHmT/ocgk7IE95G5LPLPqNFv0VOojTTRVUc/zHPj7O+45yjRsGhHBU0Rnsg9EofFggSGHcXnwP7EX79KjrHmcQzG5b1AJ/yjFSnvySqESYb6Orihx6rcutuE9H9EvCVn0m436M7GOsOzHVJdzN4YTyQ4y6BUmwR2b4H7y1w9i0vJijo4Hj5BYKLXryEoAMTTLNTxnynP0+qmSDdHJjLGVLii0E4VbjP8SwGNs5uFiJ68KCJ41u7sD5qdyzql2sh0F/trk1507dWYRgIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yaTqhHXxzncW2qG7rF4RJ6JkxyfPCIUy7dAubfO4uSc=;
 b=GyY52/jYHVpTUYJbGbZh6t0GcrosqYCQXazHVBK9vkSh5chwy5iuo+zzRktDW4fJ72Z6DIasND9OcC5ObdCDhfiUqyq7chTaok/PoeVhhFxsfAlZG6YZ49fCmx8qFbEPEwHeyYRoo2J822KWd3N70lbkMdm/PthUfuPhwyCUdWN00gWy+FXmcD0niEVAOwTNTK6TVK28hEcP5Ifg//QKhgXHVizm/Vj30azkZdU5+w+VUVW/4fVXSZp9usyLJaGHrH9Nf+AUSO7INhyIjgSPeAeua1DNFcnep3mEMDsey0+6KiN+FcGW3hjOa1MsDYOekQrEWhWdVLBlO6kqXp5Yqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by DS0PR11MB7803.namprd11.prod.outlook.com (2603:10b6:8:f5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Tue, 4 Apr
 2023 18:33:42 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a%9]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 18:33:42 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: identify aRFS flows using L3/L4
 dissector info
Thread-Index: AQHZVslsRkfKpOjagkGidGpt6BDC3q8bmSfA
Date: Tue, 4 Apr 2023 18:33:42 +0000
Message-ID: <BN9PR11MB5354D28115F05784F1BEE9A780939@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230314230401.44098-1-ahmed.zaki@intel.com>
In-Reply-To: <20230314230401.44098-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|DS0PR11MB7803:EE_
x-ms-office365-filtering-correlation-id: 62f5a1c4-120a-452c-f28a-08db353b1dd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Trylm80BrJfkUckQf3dPTArZ5Y5ZxYpYW7uxHwpgzwnewszBLWN7C25J8TGzLFPMyLXHx0vQYYznjx1lYSezYfMIuTNqjyVJ2SK6nQ/PaVBDdg/EUXubBZMpp9kPaosSwLWImXKKDr6/1Ad/3rlh9Vof6Sys1oXdf/Cv4Bo7SiVxLyjEwCrzu0Wq5gcCGmJs+uU83HQF3c44aEd7bs82Y+wKwRMeMAaOtL2xNhKBd3z+fN4Vd39t+EzhzyayOk4PEjRqGv/GATTh3qRejOTDjW1YK9Z0NPQD2oDfhD/ZjlAyq53F2+Ndlbpa/9dpCgpQvMCjAzM72fB2KdIvHguTVxRBh4LABslU0BsInUwrFazUYoDcMVQMn2CFxKdRX2ANYFW0D9I4XB6VhqCUjYEvqszsfyWQWrognrQzcaHO0j25uGatCrqgo3+52xZnuCdxF5N93xe4JMc/topDXW740OCE5SRuS6ZQfiyB2YkLU3emj42CWdpXjmWSflC4Z4mIRKbiQSN+myuENLlC6ynVzpkWw7JIRPUyflMJPvMhLzazTMWd6lo55r+Q4uH7cTuimBHBeJ7ISJv/39I3b/TuAPb3glhSCjzJFqVzgNzUyzD8aEAuD2QaoOHtOAQOgsSD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(366004)(39860400002)(136003)(396003)(451199021)(55016003)(66476007)(478600001)(316002)(8676002)(76116006)(66446008)(64756008)(66556008)(66946007)(8936002)(110136005)(52536014)(38100700002)(41300700001)(5660300002)(122000001)(82960400001)(83380400001)(53546011)(186003)(71200400001)(6506007)(9686003)(26005)(86362001)(2906002)(33656002)(38070700005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vOUQsmMqTx9YPHg7LVmDot5ibh/WH4IDQwAQ9oGRHMvlyhpH1geuGHj/ahq1?=
 =?us-ascii?Q?kJiWEHPZKbnBvXl0OQRvLaokNQygJpW1MFTyN6u172bNePEx/xC4KliO82uR?=
 =?us-ascii?Q?HuvQOu0b/AFBwSeyZ8MNJg5V4jK/yPuWHWo/MSlVx24deI8fw3rftC5Q0/Cn?=
 =?us-ascii?Q?h+Y3/09ztAf7rfZh4tHz7cZSpJojOPhv93yOXCjkHsZ0bQNkkodvb6iofzM9?=
 =?us-ascii?Q?kvw5RxdYhXMuTQxkGSLNErOhHNbpgxJxZpwx9vATRgVgWfNJW4N3auIymCHA?=
 =?us-ascii?Q?2q88n/m+5u1U05XTaEKM3+QP3D2qofRcldhj5B2vy+b9G97MOxna3O5z+2Qx?=
 =?us-ascii?Q?IsgLKaYiUkRfLzZu3GU51+mkiXcUzqffmsTOg3g2BN/4DYXw5nYlLV1/atIs?=
 =?us-ascii?Q?P8QkwpFTlGs0+P2pX3F6IYRT5MZ4CpK7xEcdpMHBlAKajLEF5ArMH05EMFcb?=
 =?us-ascii?Q?upLAQGw505vMYoC2rFryRijmpSGbhPUktCkgxdktHKqk2qxUE4x8dvQ41cF7?=
 =?us-ascii?Q?wku9pMK/zrTZyD55d+KAXanLyzuByNUrJhCm/Tp7R4+6O/nnanE/Jvb6+gGO?=
 =?us-ascii?Q?96pIjSAwRjjf4cZcAjimVzxlYNDHTpxm8hTkPfgdnz+VS0BIvpDc9e3xdjlB?=
 =?us-ascii?Q?AONFukPsYHh0tRxye0Lu/FfH49Y4SRYAKUWrOu/WTvvq+4SgMDhAzLF3SYjB?=
 =?us-ascii?Q?rlU7RxAFptjfU7I7cU2xvSTmBshOYhhsuQLxGOZowwylrZ1aHEeMURF+XHEA?=
 =?us-ascii?Q?W2lrJ2ZZGDqyFazn8yhlFAn4CjLSL0/kjMdZawqUwvZMJwGmMta7x9QAZXAB?=
 =?us-ascii?Q?lfSzhStz4PFHZynJvmNr7sME4/3DC3u1Y1lz/GKVdfloCNa9ww3QeDj5fHnn?=
 =?us-ascii?Q?vF0yM03U5hcBcc0g4kMRKFJnDkSiU7myPWVkiUoXG+H3E16x/7FveZWfnrha?=
 =?us-ascii?Q?w1GtTtlTq21m92I1MslBXz5xuWx67l4xdbd9/h9U2I9m8L9E0YHx/qmBYu1U?=
 =?us-ascii?Q?CEabAH/C8agwegO+HhnG+5xTqDsMTzJ9KptwYJzYC7B+fEeB2gFBGD8RXudI?=
 =?us-ascii?Q?o2fd262QxYUuHVkw0bma0OkXXaAv5xUqIwHefEHPDmqihljn9hzyLQfD4T6X?=
 =?us-ascii?Q?doLkFW+H07mcDyZYGQe6GUeWGN5SeKclEl4/AQZ6w1ycmxyc0UHFw4EhuEYT?=
 =?us-ascii?Q?G1MuaWpl0jpDM0iKSa06iUiyrJU/tkfKQZuY0rod2yW+tq3QY7hn8F9mZyPI?=
 =?us-ascii?Q?EnlA4E+8zU7KjWJv/em+B6Hva+zsP7y5QQMv7Q6WHGVVDvNoxGuWu8ppqq+D?=
 =?us-ascii?Q?NMHEicHmq+fkq37ZXl7uQy/Ap0gFQbUsFJjlwmIGXpjVewV933md7SzUfXEs?=
 =?us-ascii?Q?3TXc2uf62OXCqRPXiFs7EuLyF3QJmduN6J73r4rPPGFe6Uy2vyk/3CkJYi7E?=
 =?us-ascii?Q?eOIOP98x8FhYWQjXffT2dEo/oduLSs3dQaRN1DyusCBxQ+gYxxTWRfUIE087?=
 =?us-ascii?Q?Z93IkIOq3dfXXm3pb57QPIoBL8h6oCr80TFZYJNKuMUrLqZ4Leb5yjDR9/fP?=
 =?us-ascii?Q?oZYPxXDinf9kWhVmRreOd5cYaHN/IwEAq2O3zl9c?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62f5a1c4-120a-452c-f28a-08db353b1dd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 18:33:42.2527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wes0N67vWmQKojPNJn/5+498T5+itoyDW4NhRSjnoANNs+9zH0pm87PfQnPWol8fYxW+/i51DGish0Y7TnBgMOZE8NGMMxPzCikXdT+P+UA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7803
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 04 Apr 2023 18:57:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680633225; x=1712169225;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EIZqzA2wcTNmZRCCi/as2m8knkJjW1QPijx77rSc1Lk=;
 b=a5SC6VLwcgIX5Qwrg8qegZjjLrXMygsNN36/2Dg0/oEwf7hbu14miPxK
 JlF+cYr8uiVjXVgqPV7BJisC4MV/1Aq97wmOAVDFJ2F6JdpTUwJ3UlOMD
 RxkcZ4gnFBixNih2PN2dXfiKx09TrW3SKCocFogfjCMokUf4e5Wb03yVq
 ES8Qd46yze2VhTwyJ5EBDybxmu6FERqwrWRkY3NLxq0LVziTcmuNZu86+
 biPoVjJEuhaMnETB9vI5WeC/W1afVM+/6CAryJa9gywg+KNqr3g4L6maU
 qabBzGEaQSvBDERNvJJyGrOZuta1Y0TusmQgP4JUzUwtOMXUpVkezbTI/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a5SC6VLw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: identify aRFS flows using L3/L4
 dissector info
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Zaki, Ahmed
> Sent: Wednesday, March 15, 2023 4:34 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] ice: identify aRFS flows using L3/L4 dissector info
>
> The flow ID passed to ice_rx_flow_steer() is computed like this:
>
>   flow_id = skb_get_hash(skb) & flow_table->mask;
>
> With smaller aRFS tables (for example, size 256) and higher number of flows, there is a good chance of flow ID collisions where two or more different flows are using the same flow ID. This results in the aRFS destination queue constantly changing for all flows sharing that ID.
>
> Use the full L3/L4 flow dissector info to identify the steered flow instead of the passed flow ID.
>
> Fixes: 28bf26724fdb ("ice: Implement aRFS")
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_arfs.c | 44 +++++++++++++++++++++--
>  1 file changed, 41 insertions(+), 3 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
