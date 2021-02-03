Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B79E30E313
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Feb 2021 20:08:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D066123504;
	Wed,  3 Feb 2021 19:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Edp9Mk6JAHZd; Wed,  3 Feb 2021 19:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E43DB204C5;
	Wed,  3 Feb 2021 19:08:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A26AB1BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 19:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9DEBB867F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 19:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id azCVSvG0nPc2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Feb 2021 19:00:08 +0000 (UTC)
X-Greylist: delayed 02:01:07 by SQLgrey-1.7.6
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2102.outbound.protection.outlook.com [40.107.20.102])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C03A86A72
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 19:00:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RnW2Z0hHB8oyTUex7giX/GkWupxG9nlrjvBX6ledntbWwmxSb8KdGevbrjKs9cIP97Dti2JrjvTYq/SOGONvPag2p9RJcDxIv5zFzwNm8sQDexIZV7VWudUKPyuAKmPW2uXMq5u9n/Rz8rtCWIFm5SVHz+BDLgPm2ziwnARx5jL+KzYqnNoFP2Rlat+1kisJQqLZbxZWi05XtskLt6kGhcfDubWpAGY35aKsANa5mlGdjquHotgMTt2iN1HiGnEph9/OrGqqdeoJVcFTFg9MrBUnmvf4dLBziU8Iq3Zd899TaZf3zUS1WLRF7nVE6Kq2R+8C+v6SkfEBC4zLsdy//w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEv59ga6x10whQelJ4QhS4w0C4OJZtE1OO6zBWTWI00=;
 b=XYK1MMyzWsWXFHCTHKarfBD7wi7Uw/fLlEvAXOjB7llAfEYzKfmTePREvGn0ZgvFgXCUeUykJmUu2a+M7Kco07tt+q8741b1kr9h2LGjRUqPcmYea7zSt8onBgVb95VHs0RAMTOhapNjts7axGPyIJDw0dVWhEgrlRQjNACIodeKcMx0Gz1m5S024Pp6pUyh2AmSKeU0n6cqpyMf3xsaVN+Jt+TJmNxDTniilRfYr+jAlQgTaxFxJkJ0aZ7ZnTbQpso5cdyZqKgGAQ0sBxdUrvBYMzGQds97//5Qly53Ix7ZPglp0udwHgRnHyzteJyblYhTytDMeVYIkSdas+jrZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=criteo.com; dmarc=pass action=none header.from=criteo.com;
 dkim=pass header.d=criteo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=criteo.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEv59ga6x10whQelJ4QhS4w0C4OJZtE1OO6zBWTWI00=;
 b=nUgg6jiwoinM7WZUSTvkclZmG4uPw6WA/7HOXoLpQHgM5htM6WZYr/mpi9pjMEnN1TGxzrfjbi04pCX3csHNu2pYQ94ymrCWpQHgN88R9auqmfeZEyDL/ic0ASzFZFthA9IzmEjE0woGrYZFD7Ly0x+BFSMDCSq68P5pTZdXf+0=
Received: from DB8PR04MB6460.eurprd04.prod.outlook.com (2603:10a6:10:10f::27)
 by DB7PR04MB5212.eurprd04.prod.outlook.com (2603:10a6:10:20::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.24; Wed, 3 Feb
 2021 15:25:20 +0000
Received: from DB8PR04MB6460.eurprd04.prod.outlook.com
 ([fe80::54c3:1438:a735:fbd9]) by DB8PR04MB6460.eurprd04.prod.outlook.com
 ([fe80::54c3:1438:a735:fbd9%7]) with mapi id 15.20.3805.027; Wed, 3 Feb 2021
 15:25:20 +0000
From: Pierre Cheynier <p.cheynier@criteo.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [5.10] i40e/udp_tunnel: RTNL: assertion failed
 at net/ipv4/udp_tunnel_nic.c
Thread-Index: AQHW9mMY04hDD4/GNkeljus5vphnq6o/gv8AgAUiwUSAAG7wgIABbtmAgAAHK7A=
Date: Wed, 3 Feb 2021 15:25:20 +0000
Message-ID: <DB8PR04MB646092D87F51C2ACD180841EEAB49@DB8PR04MB6460.eurprd04.prod.outlook.com>
References: <DB8PR04MB6460F61AE67E17CC9189D067EAB99@DB8PR04MB6460.eurprd04.prod.outlook.com>
 <20210129192750.7b2d8b25@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <DB8PR04MB6460DD3585CE95CB77A2B650EAB59@DB8PR04MB6460.eurprd04.prod.outlook.com>
 <20210202083035.3d54f97c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>,
 <DM5PR11MB1705DDAEC74CA8918438EBA599B49@DM5PR11MB1705.namprd11.prod.outlook.com>
In-Reply-To: <DM5PR11MB1705DDAEC74CA8918438EBA599B49@DM5PR11MB1705.namprd11.prod.outlook.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=criteo.com;
x-originating-ip: [2a02:8428:563:1201:cf2d:ab43:77bb:deb7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40b431c3-8e54-4285-2a84-08d8c857eb12
x-ms-traffictypediagnostic: DB7PR04MB5212:
x-microsoft-antispam-prvs: <DB7PR04MB5212927CCC17F4CF92B4F212EAB49@DB7PR04MB5212.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N2eoS6R4NFzGhKIINuMzrL6f/Ugt04T3ay915AhCvJyTD9J1HOybO9ORr9cnz9S4iHHC3p5+08MAuaohQA5LV+STctGTJ9FspPHtkfArPkkFfOSIYC1qmrvDIn5CFFPSxwMKX95FZ+9EuaihExE4GoyoldbdIjH6IjsDOLOp/yWmoprWNiXyoy9e3LLYfLbbgRnQGThvOHXL4YzFwWpd98cW41fnXNU7izr6iJQmW1pframoXnhg+eR6RoRGaFED6pKZE7oPajCdVPLkxtwMqpm4Yjd0kDCliSg41o38bAUhtYAEr7nLjpz1ql1CSlXSXTZnmRtxbsayqRQpQKBlYTqh8ADFMTWNVSU+13f9O3je4IuxisFOcEoekutTfJSIvonloe6mRf2K1Xj58OciQHAYlFNWuX7B0QAEVf5AWCxbbnYsoJMaaWLYjiPwuMAFv7JL4dpicAt8fee8y0YGehn5Ph6XFtPvBxLW/jhcBuquQvRARWoE/l/olJ1x9Igik7HhsdLXYi/nSlfsWS4LaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6460.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(366004)(136003)(39850400004)(396003)(86362001)(186003)(6506007)(4744005)(8936002)(478600001)(91956017)(64756008)(76116006)(66556008)(2906002)(66476007)(83380400001)(110136005)(66446008)(71200400001)(33656002)(5660300002)(66946007)(8676002)(52536014)(55016002)(54906003)(7696005)(316002)(4326008)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?CM+8h5c/yzWWa7+IvNjETz6WBWF3jA82pxbSlXyzDjk1Wp4Z68Uk1IDZP/?=
 =?iso-8859-1?Q?rYZ7sK8ap4hqlr/yjz2BaCntkvFAA8WZ1Hgtp81zixE9pLYO9aavreNso9?=
 =?iso-8859-1?Q?u12Qs0gz5Y8Wo90DQHbWEy3xMXdB2uhLlcPAuKiAc6JQ5ei1uzy77OEheD?=
 =?iso-8859-1?Q?p5tmPmN9nbaVQT4hWTedAITLdn+aA10Bk0DAyiqQCL8JjfjcIieBd4ms24?=
 =?iso-8859-1?Q?dglt8yOVt/WvAEraaicT2BujDVfL78u3dwetyF3npm6fXIlwb7xazZu4T7?=
 =?iso-8859-1?Q?0Mq0RHEOJhEl/nDZUy7TUxc6fcmSt+Q1eW2cHUMPoSb2KmOT5HNaPCmJ3F?=
 =?iso-8859-1?Q?OaydLYJsPgNjy5Gj4rnu9A5DNbdWPFc4TEInCzg/onj8ygOVZoGngg3pfZ?=
 =?iso-8859-1?Q?0Pcy/odk5Smi+ZYz1jjrXL+lZy5M3ogLgO2wjkUlkRpgyILCiPs/qbvBeW?=
 =?iso-8859-1?Q?3TJftiAQwmSydoZqWBwx0fwejpDZm3cX9zvnIkSlEJ+Zm7OwoMbOmrjPhD?=
 =?iso-8859-1?Q?P+B8jJcHvm1LJ9wYHGFt7xOKdjcgUeRUHvr8qcn3JKMNtkKvDFXodb1uft?=
 =?iso-8859-1?Q?eenKbJ+qQU2fzkb+Tins9ZVsDqgPxA2k0opygrSG1kpZ1KYXArPLUAlJGQ?=
 =?iso-8859-1?Q?3PaaHyJlksLWvwsPxIDKIaLyiGLpJx+T6MeWU5wwjEq8TBdzD+oxA2buoD?=
 =?iso-8859-1?Q?XBbPe24wTC6k8dHBLUQ9YV6OF7Uq5dq3qmZQu0Lvi+B3j4geBt0l+1WXWA?=
 =?iso-8859-1?Q?V/AxdO4sbqX12nNNlGp1ZMeD8vpSAKA/IHCRsPOk44k2WbEbf8K0jIUUxU?=
 =?iso-8859-1?Q?hktV4dxUILjBj13L9geZEY9XI6shcWTaOZ5mkClSIhiLp3lyrEKgwohoP3?=
 =?iso-8859-1?Q?9TNiT6SmP2N+Q1UXTmLeISAgDx8MHaNNl+8lTXCf1A6oDxTmTkG5/a0cUH?=
 =?iso-8859-1?Q?Hg1SK2Alp+zA+/SLB5ekVrYaasLuaBjdAI5Ujv9lssSqCH+A5J919aE4vg?=
 =?iso-8859-1?Q?c1FN90eNBZdAp2kKtgfTgEiKTnl5zBi4tB/s2OY5zA9BXWAdV/VeAs1ZN7?=
 =?iso-8859-1?Q?znekmZm9s53m1iNDtpyUdRxt+Pvbo7j5mQyR2eUq4A/HL25JqhxYojs/9X?=
 =?iso-8859-1?Q?gdwgLCDbKF26duIQMgzBMgPDX1QgxwvQU1BrV0x5ItHMxnCf7o?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: criteo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6460.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40b431c3-8e54-4285-2a84-08d8c857eb12
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2021 15:25:20.3701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2a35d8fd-574d-48e3-927c-8c398e225a01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WjPAuRgReUPuNh8oC9in9uK7FOXhhAlk0RBbDrKHzONBUs32X08GQ9XkjhqrGpe9ERRA6SduSbu0e+Usu85+KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5212
X-Mailman-Approved-At: Wed, 03 Feb 2021 19:08:49 +0000
Subject: Re: [Intel-wired-lan] [5.10] i40e/udp_tunnel: RTNL: assertion
 failed at net/ipv4/udp_tunnel_nic.c
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On Wed, 3 Feb 2021 15:23:54 +0100 Sokolowski, Jan wrote:

> It has been mentioned that the error only appeared recently, after upgrade to 5.10.X. What's the last known working configuration it was tested on? A bisection could help us investigate.

I unfortunately moved from one LTS to another, meaning I was in 5.4 before, and this UDP tunnel offloading feature landed in 5.9 as far as I know.

Maybe Jakub can give pointers to specific 5.9 or 5.10 kernel versions I can eventually try, so that I can help refine where this was introduced (or if it was present from the start)?

--
Pierre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
