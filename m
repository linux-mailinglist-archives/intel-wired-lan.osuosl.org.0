Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B13492A8BC0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Nov 2020 02:01:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BF87867FB;
	Fri,  6 Nov 2020 01:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OcOiyQ2h+CIk; Fri,  6 Nov 2020 01:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 27204867F1;
	Fri,  6 Nov 2020 01:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 16B7F1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Nov 2020 01:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE8362746F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Nov 2020 01:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yQ1dOJn0Y7IT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Nov 2020 01:01:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 496892741E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Nov 2020 01:01:32 +0000 (UTC)
IronPort-SDR: UeJiONNSSYVJgj/U/LaHJ/316OqsKbSfxBPmaz8xVomUALzhwcX8kp2GCVmhvhcgKxkpqto3QT
 BVFB2w2ZLrOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="169633925"
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="169633925"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 17:01:31 -0800
IronPort-SDR: Q7oVMUStYBkM/rrXf3umiNveU0JEOi+59a9Lnp2EN8RO4pErt1L2Tr5pGj3AYv0iIa1V/RoSYv
 CPYM3wk/tWUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="354513819"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 05 Nov 2020 17:01:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 17:01:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 17:01:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 5 Nov 2020 17:01:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 5 Nov 2020 17:01:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TdMX5uH9JQXiAg2IG5R9EQJWmiNaLbWJ1TERdQGG1IOSgbIqpeK3HOxMsuPWF/x0cyqrIDP2ysVxRdHd//m5CXn2iN2r2EMYejriyyOzVGnidLUTeX2Xr/8OGb44zZ9Gdy59PG5VX9NrMyp39USSjBa21wp3P+iqb8BhuMlCKEz3hOhQDOhYUBVUycrZQCmTtJCO99FXB+zHIMkHtXoJ+F8VRDag2vuYNL9p7Yvd7VIhbCx0Y2iBfGkR1s5EV2klQCpu6ogbiXk0IP3HvDGPTaKxDrGOhdTjOxBZ8OCmFFDnUYwYTTbsxskNtHBoosSN/8V7fgbvm2/TCihLorXGaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZkdy8eAjjiCoFdlo42X3i5BxXQNapS2NlmNj9A1FSI=;
 b=byAROX1hn52QRURxdlci/ol1mxObK5lwoY3/W2BL501w0KXv9fKxSnML7jpW8q0JM99EM1xOvILIt5MOCQLHHSeAPPeFKVCOW5MCD+xZT8eQNoDP/hQ1iGCnU1L/o5t8Z5qSm1UOgNpWD4kbDQbuQ0Dz7EZEp5/Yd732hqcsZH6w15fifA8PtR8KitocGBeVcJUW3sbiPNcBjoGhjcpYlzxNc+tuZSZ3+eKal5A7v4TWfbM0bSUYQwNUyXrKiDxhObt4fV/xuwF/2u6jrWmY2YcaeLtGYxszbWud5pE7KvMq6NQ4/s1UAI/X606pVqtgNU35o+PBSQ324U4MAILi7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZkdy8eAjjiCoFdlo42X3i5BxXQNapS2NlmNj9A1FSI=;
 b=tYsfO6SA6goFTVeEqorIoC2FRtw7C0abeOoEZ925q+qJsUMrA4aTZrTd6512UvQ/CvUJkX8eNiyNgxyRtcxPhQItbYGOvGVrgisL6kMNmXKev3RuWvtnrVDADLVxqrT4bJNJrOCZiW5ARjpBWnielIYI70zf3pEF/zC/8EooSfg=
Received: from BYAPR11MB2549.namprd11.prod.outlook.com (2603:10b6:a02:c4::33)
 by BYAPR11MB2615.namprd11.prod.outlook.com (2603:10b6:a02:c3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.30; Fri, 6 Nov
 2020 01:01:13 +0000
Received: from BYAPR11MB2549.namprd11.prod.outlook.com
 ([fe80::2cd2:d609:5fb7:4d27]) by BYAPR11MB2549.namprd11.prod.outlook.com
 ([fe80::2cd2:d609:5fb7:4d27%5]) with mapi id 15.20.3499.032; Fri, 6 Nov 2020
 01:01:13 +0000
From: "Guedes, Andre" <andre.guedes@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 1/9] igc: Fix igc_ptp_rx_pktstamp()
Thread-Index: AQHWsUMKl4/GjHlf/E6DH0Ned5dqdKm4k6yMgAG6coA=
Date: Fri, 6 Nov 2020 01:01:13 +0000
Message-ID: <E144BE99-6924-41B6-A7DD-915133B44C43@intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-2-andre.guedes@intel.com>
 <20201102175617.GI6427@ranger.igk.intel.com>
 <160444679837.10323.6569127492617330628@anemani-mobl2.amr.corp.intel.com>
 <20201104222608.GB39754@ranger.igk.intel.com>
In-Reply-To: <20201104222608.GB39754@ranger.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.190.105.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee82a583-e44e-4d77-f79d-08d881ef7533
x-ms-traffictypediagnostic: BYAPR11MB2615:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB26155F30AA2BD43C78EFBA3898ED0@BYAPR11MB2615.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FWiC/Z5l4/U+D2SbmDLqMUWisJLWhbaud+Fs5bTO5MlvKeDbJ/dIfMKf/oMROzRBFxyjBfiA6dMQ5G3OXShKmK1qoZd0CEEQJ02oliYOdK5miwlevD3qsldNoch5IxiHXi53Q0AZC91xXGndkEynGDx9hX1Q1lfb3VTxMkrMf2D5Zh4fLrYatQ0QUTLd9KpDzZJGUh+s2KgM+/1qBoIkUONFQCUQLSo1WPZkhYot8nkjoyqv7EsuN14na5aAGN48VUNNn0ZaKNFGvpe9p7KDziUJz/S0biGGi7scH6ORigqNviegns89KJY2BiBy3Xy3Bj7G+AL/UYgw1/M88jSeUA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2549.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(366004)(346002)(39860400002)(136003)(66476007)(66556008)(36756003)(6636002)(6862004)(6486002)(64756008)(4326008)(5660300002)(76116006)(86362001)(66446008)(66946007)(478600001)(91956017)(316002)(8936002)(8676002)(186003)(83380400001)(53546011)(6512007)(37006003)(71200400001)(6506007)(33656002)(2616005)(26005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: C4loqq/i/IQjVO84vpfo0x0GcCGs10t1sP7x+xnrYdY47FV8PnKLOvF0qoG8LLmUnfjEvMAliM3t/Sgt1HQVkpiEG4+r1wOwBH55O+8NWdCG3HPNdK4UvdiYrFL6/gkVep/AEWkUpv3KA4LZ3hlShYYzoe5A2jKo2gZu9KbmxZMECg7YmPBO8kRvaQDyPAJiLjwwEy8qNrhMfJOwtzIMUgoGgv/P6v3iEf+iYar3KYqJDhJv/4zSf7KB4ntLl+MB+DLmM7GR6sPRWOZiuGpCSwkv3g4ajVxmjfmIAMcwe1uI/gWN5OmLCteunI86a6GSRgqHqSOGcz2ULgJbq6IocU70YqzDSeZx+2vEoeFgIU+jU5Ch284ZlqKVXbD3lj7lL5LN/Ib1iOwxfc8kCJl1sbXJSpmGUT1b7qIrOjmsUXNgffn8A2L/TIiMo/168ZZibZNFTPaPZkMgE7nQ7SyT7YmIjzzXT+PVoJo+E3VT1MF/DYj/5NGvUue6DwRrRIwaz+bjDVQATKaSvlNSnpkClQpIeIW50P5kTBl2jJITsi80VxRwcTtQiShbpwKu70+GLNcph7YvtkuS9qGNtpJI+nV9GaDuTwITd23K89qxTNitMpQv8kO/8btUNSkkB+MXUWZvX4dZQEoRR1cLi+Icrw==
Content-ID: <6666A623C17E074DB24B161091DBA1A0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2549.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee82a583-e44e-4d77-f79d-08d881ef7533
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2020 01:01:13.5392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tXwS8S0cvk4pB5GWCxMjFi7WU6lvnvA5dPlGHbi0w3XSYTQS7VCwZbKD5i9dk307+qGsCO0qy6zI7O41gq0UGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2615
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 1/9] igc: Fix igc_ptp_rx_pktstamp()
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> On Nov 4, 2020, at 2:26 PM, Fijalkowski, Maciej <maciej.fijalkowski@intel.com> wrote:
> 
>>>> 
>>>> +     /* Adjust timestamp for the RX latency based on link speed */
>>>> +     switch (adapter->link_speed) {
>>>> +     case SPEED_10:
>>>> +             adjust = IGC_I225_RX_LATENCY_10;
>>>> +             break;
>>>> +     case SPEED_100:
>>>> +             adjust = IGC_I225_RX_LATENCY_100;
>>>> +             break;
>>>> +     case SPEED_1000:
>>>> +             adjust = IGC_I225_RX_LATENCY_1000;
>>>> +             break;
>>>> +     case SPEED_2500:
>>>> +             adjust = IGC_I225_RX_LATENCY_2500;
>>>> +             break;
>>>> +     default:
>>>> +             adjust = 0;
>>>> +             netdev_warn_once(adapter->netdev, "Imprecise timestamp\n");
>>> 
>>> How is timestamp related to link speed? I mean, this warning is telling me
>>> that there is something wrong with the timestamp that hw put onto frame,
>>> not that link speed is cranky.
>> 
>> The timestamp is sampled at the beginning of the packet. Although the timestamp
>> logic is located as close as possible to the PHY interface, there is a latency
>> between the moment the PHY received the first bit of the packet and the moment
>> the timestamp logic samples. That latency depends on the link speed and is
>> specified in the datasheet so software can adjust it.
> 
> Thanks for that explanation! I meant that warning should say something
> like "wrong link speed, can not adjust timestamp", but OTOH I have a
> feeling that all of the speeds that this HW supports are handled in this
> switch statement, so probably arguing about that warning is pointless? :)

For TSN use cases, timestamp precision is very important. If, for any reason, adapter->link_speed is off, we want to at least log that information.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
