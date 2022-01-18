Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59399492D00
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 19:11:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B521E40146;
	Tue, 18 Jan 2022 18:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qzJkg8298zGy; Tue, 18 Jan 2022 18:11:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 503E840105;
	Tue, 18 Jan 2022 18:11:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F4CA1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 18:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BE8282503
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 18:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lvMyvbZUim6U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jan 2022 18:10:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BFCB81C20
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642529454; x=1674065454;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EtGeZuJG330SffdXTYALR4rpP0GsoWilG02pHiF438g=;
 b=haw4yhk2D9yhw2yz2YB958VBN1BZlXya9EZvCEejHpl2+91+DZNHSdjZ
 F5qKVxqLg2ZbDZx1itANQ4sdNhgtH/oOvbjtkGNAECZH6td1NOYTcJLWP
 r8C6yPTEnLAzpVpuORTTXfZVqtMaberKVK0P+EuUA1q5CT3T/+Ra9G3VJ
 ZTcWQDE2cdQ8RZGJobUx8HNFx1vnZSFEoJZ7SbTko8JZG6822V6tkxDQT
 uWF1BobEv2OQp7Oyp2WEMS7GDCbPu/utAwS13P0EODKzlW7woppnnaJHy
 ehSKJewVC/OvPG91bv3ASWwAO7zWoOKv9Cjl1B+S09e+EyT1Si836ZD95 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="269264347"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="269264347"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 10:10:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="492751197"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 18 Jan 2022 10:10:53 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 10:10:52 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 18 Jan 2022 10:10:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 18 Jan 2022 10:10:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CAyzuGUbi24q4TLsXoG7V4bJOehBbpvcH29F73eycSPF6LSRE9rFqkAmXSqPPfq/BT8jFWYm789A1klxhBYxqxaYmMiKbysvyE8LMWz9vEbe1iNK0HWGnTyDIEzthNMYgGTlm95/e8AET3gJHm/EloKWmRDRX/DfNF23iVsmXyjV5f8K1KjFA96IdBNPNzSNQxwnV+Zv+yrlONye9fYSJ4nIaEbiOoIyTTzcfbCPXpYp32i8xA8aXSutP25k6ts/pCAQyikKjCcowdPnJC7ykhsazoTY9M5jtkdNqm02yap7IpqwZfQ1YNXZgq0O3hAVcbq27iBEq9t6UX03XIu4eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JMLoGYbrsdt32vN49gQMBkmRlr+wNyURHLOA5GHbNAc=;
 b=SHF+5cTZqPdT7S70msLD3L98Jl4Gk4BUsz2JhOr/nXRCpfuA9qlFlMQQb+2wW6c3dbnqHZWDH/Ej1Kkj6YqfI8jXFOSn4GdKQmw0LuZ5VcIGVo2cdfDye8731ytlIicxV/0FxJq5X2xtkS4CpMv9z/yQ/M+OUWM/o36+dEtQN56MV4WEUaQT3GKoJcH6vAw3+N/9E6hxTTDNxr7IaH9YYjxo173x7s75MROBsj+cUkz+q38DCy0X0idvbQ5vdaScuwwVlWFTSY1oflW4fDxg8apxhaYTpSmTN3PGlHIEFyy1LC+vFQ1i7rYutPZxPRILVRT61m45JHifVUNVwTCmSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MN2PR11MB4256.namprd11.prod.outlook.com (2603:10b6:208:17b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Tue, 18 Jan
 2022 18:10:50 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%5]) with mapi id 15.20.4888.014; Tue, 18 Jan 2022
 18:10:50 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] iavf: Fix promiscuous mode
 configuration flow messages
Thread-Index: AQHX7BX5AyBzqxrQGESmwWTY2el7L6xpVOxQ
Date: Tue, 18 Jan 2022 18:10:50 +0000
Message-ID: <DM8PR11MB5621C55A3A72E439B83B2774AB589@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211208092859.1876593-1-karen.sornek@intel.com>
In-Reply-To: <20211208092859.1876593-1-karen.sornek@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6eaf68c-df62-400a-b9a9-08d9daaddc2e
x-ms-traffictypediagnostic: MN2PR11MB4256:EE_
x-microsoft-antispam-prvs: <MN2PR11MB4256C4D5694CCC689A91AD95AB589@MN2PR11MB4256.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xgKXLhxrTEyO8xYnwkV2CCbulf2ZVo2AIAnpN3I0srnWPSlOIRpup4FRb5EwpzztjpXqiBlM8Q/FlaoDZu5Kw5dgeEV6JsA1kXUVCd24sO0E9hqDbW248vVmnr7B5nMKXf5t8+K28XEr3JNNHR0vGj0+i/xs+3o69E1Q6Le2TU+Op3+kwO0B7lPcDQTEFjEb2HhwbVqGXa0HMexTq8/jp9RDJRsVvwCzDtvvEWhtjxWHFXmDaq+qQGjydnKWAir46wi2Hc+W2fmunMJpDTXoToK8eQcFH5N5AZj35B5k1yxYxvr+EK9qqt/3r95R0wLWBK44rQOtwq2LEuQSeR+qZg5BMejNIb5Yk62nMbSKxtSM8b8JL7jA9hIsAFxnAnvzW60+WduQH7J0HMvHrmUK8CfBtsR37VtnU7mE59YDbcRPDqe8vVBp9afiBVUqmf+s/W5QwigcBuBCgnwtjtH1oOcGOhp3yiPJVIpvwMZ7er8WXP6EJalDnVDlYDxB0N2j5JJfMXjzNw9wZyzu6NZzDs2gtVUIlZJaeYsxM/73B67XKf++fvrjgO6bYz7vC3oSt24gksphBeo+4Ywsp5uBLQtHDEKyIe/CFfA50wUx+2lzn5s0CmelhP3XDtsT7L4w1DxhZgXQRXK+/2NnfJVMPTBDBwJG28KEFgSyDTQiriXTkF79gNngYZd1hwJ2ivX19D9oNtFvTYzqqmdF7PKKLg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(110136005)(86362001)(83380400001)(82960400001)(316002)(38100700002)(122000001)(38070700005)(71200400001)(33656002)(8676002)(76116006)(7696005)(66946007)(508600001)(66476007)(66556008)(64756008)(66446008)(26005)(15650500001)(2906002)(6506007)(53546011)(186003)(9686003)(8936002)(107886003)(4326008)(55016003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?dFKPv46l9adKnCBbu8E/uL5eJrHzrgBJXhc19f637OE3o/vlhPiA5bn6Se?=
 =?iso-8859-2?Q?wnCSSYKvhNXJ3vOWVRYcn3GNRYiR7XNdcfzu+aJC6545AAkbFAmnVvRCM3?=
 =?iso-8859-2?Q?2hSRoPBqsLGbI8QaX/6aw/pN87RDvYp1gFyT5mhCe4aDKzzyqT2vgMaXXy?=
 =?iso-8859-2?Q?uqPrzHKmTsgR7V1of0ql6IIpPTCoaOCQx03L6w7MXo5w4FwXDsQl832+eQ?=
 =?iso-8859-2?Q?6rcoJme4HtuDw7zSjOx5l+xTc7R9bXEcv3Dt3Jtes67ma7vOFCs79+LHNv?=
 =?iso-8859-2?Q?Nt715f954F4rHBLdbMzUcVvhWbOcg1yK745rRI7Uyziic8B+ModpW1pbSV?=
 =?iso-8859-2?Q?zExmqrVsit7HwDmx0misfGQl9NK0+isnf/BK1nK/9XPJUUpcdqANJxiHOo?=
 =?iso-8859-2?Q?Yf4rjjernT7V26QBrYllmcWSUX5snPpQ/bGGKZqij/72fqg9IgRh3/vG/z?=
 =?iso-8859-2?Q?2NQyJdFGr0NekzvivLeA66ePVa64fGJqjrwIBY0VYmg1VNOCWjsgrBFAVu?=
 =?iso-8859-2?Q?HjAAcq4t373Tbat0JvAiFOh7s8ovkKchv6ThT3C0dFGfDIh9UV56V2vERi?=
 =?iso-8859-2?Q?mmonRO+RmcRt/SOLIFDkxJ3DeWkWiGI63ROzBtHSXvjXarSl5N5SDdkBLb?=
 =?iso-8859-2?Q?i0LDkqx+hyR55QI4kPQDVCkfUxiT3d53Q8QjX6VENBtJIIHBMJEZchB83H?=
 =?iso-8859-2?Q?FZ2yM8r+ANupT8U52MSp834ksxo5fRa3fSbSHHiNYzc0/v6otD/z+/pkRC?=
 =?iso-8859-2?Q?3mUuuGHteY0R4U1rRSythzN44ObnoU9xbaMd8LLr0v17mDmZM2RSucikke?=
 =?iso-8859-2?Q?gM3dioERqppk3p/J69M81Jsu5B94fcJHKWodaRePMt/zE2AAr6RiyNXgwr?=
 =?iso-8859-2?Q?unkEyuCTQW9fbnAbNK1v2LxLEH8kC0bZclsgIUJPfeFRG40XC6mscPTX1L?=
 =?iso-8859-2?Q?8u7FmbMPyZGM8fGqOqr2EZnusYhBqvtRr/kMbumbzSVjz1NqT41QmcPSgy?=
 =?iso-8859-2?Q?mtOla/CaJhfV7WTCY+LhDuVtqmM55LuUSoj1EZX86VaddZ2SFGN3hVJtuz?=
 =?iso-8859-2?Q?sSViS7mdJZ5s9DCkH97X2gCwMsLNw77K/Vw2YxkZriS/pdh4VB9ymwy/tO?=
 =?iso-8859-2?Q?h+JmGrXRrn5Bub0RyP+cAj7UvSIAvqysZWaQ9VbU4NXp2/oMfjOZcFaMTB?=
 =?iso-8859-2?Q?QWlAPmXe32xHgfW7jPS1mtNNcnIujxETQ2SBz0lE3CHjdtCVhzyRND7l/t?=
 =?iso-8859-2?Q?1v646lWYXiR3KchXIp6NU+VLzLBmsB/vkuKz4nRJISq7NpF1XGBr2Jmf9a?=
 =?iso-8859-2?Q?eTyWdorQ8pT0O8X1rkZOveXvnTXqT/d4LDlQAUW+LbZ4+j9lleV9bPpi9r?=
 =?iso-8859-2?Q?f6psgRBuEWKSjWTQy1yEP3Z3QJ2XTrefGFOEEM0zGPffLzzgqzPh2NEOYn?=
 =?iso-8859-2?Q?V9SA++2GDdTyW/bqydJ7sQTeINVvJmEjO+Rah8Q7gxbtQnZO3Jy80vRAey?=
 =?iso-8859-2?Q?QTXI//RJGgADASwTQ2wMnvdZhg7I2czlVxSkGjA1xr3Cucgjpvz17JFjnp?=
 =?iso-8859-2?Q?gg9w656RRTKGzNjU/gfALwyG6a9c0j1UGtdVusBrL7Y43yDB+fzzj5audK?=
 =?iso-8859-2?Q?RXfJ2fALZAYA+iUZ0jzJl5+NXWBtuLCtyJgtYynKbOOGVYCLzbp0RqFqSS?=
 =?iso-8859-2?Q?uDJUBUcBE0+ugtWMDeS5pnAtGJU3lcqye9Da0s/tIdAOVEn1U8pBWI7uBi?=
 =?iso-8859-2?Q?qiCA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6eaf68c-df62-400a-b9a9-08d9daaddc2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2022 18:10:50.6945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KsxxXX6FPc9+vT0+HoeiTUD6LNX8cpeM5htGIQvT/H9GvrCkeeOT4PQEsjdr5SrdB8S9lPVLPkW3JNoH02wUAVW0TCitgYL4IsgyNZeFfHk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4256
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Fix promiscuous mode
 configuration flow messages
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sornek, Karen
> Sent: =B6roda, 8 grudnia 2021 10:29
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] iavf: Fix promiscuous mode
> configuration flow messages
> =

> From: Karen Sornek <karen.sornek@intel.com>
> =

> Currently when configuring promiscuous mode on the AVF we detect a
> change in the netdev->flags. We use IFF_PROMISC and IFF_ALLMULTI to
> determine whether or not we need to request/release promiscuous mode
> and/or multicast promiscuous mode. The problem is that the AQ calls for
> setting/clearing promiscuous/multicast mode are treated separately. This
> leads to a case where we can trigger two promiscuous mode AQ calls in a r=
ow
> with the incorrect state. To fix this make a few changes.
> =

> Use IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE instead of the previous
> IAVF_FLAG_AQ_[REQUEST|RELEASE]_[PROMISC|ALLMULTI] flags.
> =

> In iavf_set_rx_mode() detect if there is a change in the
> netdev->flags in comparison with adapter->flags and set the
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE aq_required bit. Then in
> iavf_process_aq_command() only check for
> IAVF_FLAG_CONFIGURE_PROMISC_MODE and call iavf_set_promiscuous()
> if it's set.
> =

> In iavf_set_promiscuous() check again to see which (if any) promiscuous
> mode bits have changed when comparing the netdev->flags with the
> adapter->flags. Use this to set the flags which get sent to the PF driver.
> =

> Add a spinlock that is used for updating current_netdev_promisc_flags and
> only allows one promiscuous mode AQ at a time.
> =

> [1] Fixes the fact that we will only have one AQ call in the aq_required =
queue
> at any one time.
> =

> [2] Streamlines the change in promiscuous mode to only set one AQ required
> bit.
> =

> [3] This allows us to keep track of the current state of the flags and al=
so
> makes it so we can take the most recent netdev->flags promiscuous mode
> state.
> =

> [4] This fixes the problem where a change in the netdev->flags can cause
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE to be set in
> iavf_set_rx_mode(), but cleared in iavf_set_promiscuous() before the
> change is ever made via AQ call.
> =

> Fixes: 47d3483988f6 ("i40evf: Add driver support for promiscuous mode")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
> v3: Previous version had applying issue
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 16 +++--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 45 +++++--------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 66 ++++++++++++++-----
>  3 files changed, 75 insertions(+), 52 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 4d62231ec6b5..14e120a82b1c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h

I am not able to force the promiscuous message correctly
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
