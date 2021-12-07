Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6798B46B867
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 11:04:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20D078194C;
	Tue,  7 Dec 2021 10:04:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12kgCFccdnqT; Tue,  7 Dec 2021 10:04:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03E45819BC;
	Tue,  7 Dec 2021 10:04:39 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C2251BF2AB
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 10:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A2886073D
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 10:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 75x6bMDFSMJy for <intel-wired-lan@osuosl.org>;
 Tue,  7 Dec 2021 10:04:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB9A1606BA
 for <intel-wired-lan@osuosl.org>; Tue,  7 Dec 2021 10:04:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261609987"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="261609987"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 02:04:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515212570"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2021 02:04:32 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 02:04:32 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 02:04:32 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 02:04:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJaawjkeLOfY4YjMtHVDP4FH8vnD4YhtKfyecPC9NGOJ2NhLuN1t3euga/vpX4K7ssFIctzTiJyP3m/7PLP8olMBIhc7YPEPiwQIkbqXfzWz397eloUuKDLfhrOWP8Gf7Kfh31f6tygplzRO5hn1EP7ro80SqoWChBYABZwwzU5k0OiZ3zpW2bOnHm9jg3WYi3zouTLpJ3eM78VfqdlETzPQrNc3c58bmwDbJ3xCJ1T/H0ppq0PeeULY5BpcD5K8HtmljP5skO2fJ4h4OqGVWkzTS7NtG89t6K9G81M/++GpIX0h2Oc1/3GTwMTg/fEPGz3N/vepk2dz9a7WJ59wRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KREJSeL0xM3JPNzGRY50AdPmFvIfWotH7fqInvp9lpk=;
 b=XZbrIMZUf/RCdsqn3FoHe67NumtDaJ7cEF898mFx+/Oeth8yvQEscTB8RFSalS0Lp/1eCRqm9AS6Q8s8e/vChB98NNOU27IWgqEicdVjonAFQ3kFXEXCBD5G0LO9FHR+v8971oOcFsoi5lif7Sg9xUTtxnRIObyKW5YBQhdXYWLIx7YgKcqWV863CTNITxIl6VFtigtVoJEpwWsnll55YGe7J3Z9DVbKp7nNJZ1VdjOdgeLgYRcLoIEuIfOG7t1FYPSCh8dZaN4gsZvpg5qU5K9IlwDC4QXOEuxEo8xlsZtY6euG4Im9A7tbl7A/s0IZ6No4oSNH/6QPmJkgfeAv8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KREJSeL0xM3JPNzGRY50AdPmFvIfWotH7fqInvp9lpk=;
 b=KoRr4LJSCUzUwOCLgbVy4SDQs+quGBEK+RKXwdIhzqyRitccUM2+mk9wROxxT5UOLNMLEy7kYL4ri53Nq6LdAVrwC/sLFutMC1HLOh/agSyy2BESYG/1qLDLK6oUR9/o0eCVtBx3L/bRpSHVM9oMc/P7fXOTOz96+TWIHGeaZsE=
Received: from SN6PR11MB3374.namprd11.prod.outlook.com (2603:10b6:805:c5::21)
 by SN6PR11MB3119.namprd11.prod.outlook.com (2603:10b6:805:cc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 7 Dec
 2021 10:04:31 +0000
Received: from SN6PR11MB3374.namprd11.prod.outlook.com
 ([fe80::80f9:777e:bb24:8db4]) by SN6PR11MB3374.namprd11.prod.outlook.com
 ([fe80::80f9:777e:bb24:8db4%6]) with mapi id 15.20.4755.021; Tue, 7 Dec 2021
 10:04:31 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Fix problems with DSCP
 QoS implementation
Thread-Index: AQHXv6hP4X+UT0oQkEKCd7uVZ1747awnJC5A
Date: Tue, 7 Dec 2021 10:04:31 +0000
Message-ID: <SN6PR11MB337477F0E24BB6FA755AAC9AFC6E9@SN6PR11MB3374.namprd11.prod.outlook.com>
References: <20211012203121.85155-1-david.m.ertman@intel.com>
In-Reply-To: <20211012203121.85155-1-david.m.ertman@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69f8e6bc-d43f-47b6-cc3e-08d9b968f67f
x-ms-traffictypediagnostic: SN6PR11MB3119:EE_
x-microsoft-antispam-prvs: <SN6PR11MB31198D1274B57B9FB198CC83FC6E9@SN6PR11MB3119.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: COhvJb8uZXxfQjA9GP0BO5Gm4u2qpJ939/utZm+xiSfRzAYWxii+Eo3X7wDiQCGtrmCKGyzTU7a3Sih5lQk7mOQ1U27Fwjhk6LmIgSPxHAu5D3SbOIUdWLd8DCiNdR2kSHH2XK7lrmTnlXK9JiDbg98rgy3sgJkgXc2uG+fH+5Hxq/8MAMjZ2HwMUBbOOHrVooySVemvf+QzJeTaCrK2HdGxu3zEo+eb3UnD6kpptCxCapwi9qUPGz1ePkTxFG0wYK+U/hvAdWyUc9CO69hOGiAOi7TAzlECNu9ZqAnOqS5+Ipy2zOFOen4SuhAqv058ElL6hqxOkPGTEa9d01JXItzngQ4PrH5s1t740/DA5IJXs4kv+ZnBauvHeSwme01d9CwbSK8zk61Q+qQ8kk2a1W16jWZV5i6dYgSjGOgQExpBmK5Iv/TMr7irEty8KJ+ZqEPu6njclhGAM1ZRKjFQHp8sk2jTQ6zBjJKxvAGhuwmOYwqrABo48n6zQ6G4vguM82eUDz5GEeNKiaYLx1C0ROGLIsZfGBopfG8IEacBf5k7XKxO9eecMgFgwSuSK7yqpfIzFe79P2NdGGks2xbe8Bp8pcvYCPjKiqDtyBTZB1o6XE9saRvpehww9UctpO1DJIl49Lmv89GWMSQIomD+Rr7yp652BtSQl7d3vPu83ueQPOty8hPh/Ku4PZ2TGqvccZEdoCSCYer/5JkJdOa/VA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3374.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(7696005)(66556008)(64756008)(76116006)(86362001)(66946007)(5660300002)(8676002)(66446008)(6506007)(53546011)(83380400001)(33656002)(52536014)(82960400001)(8936002)(71200400001)(110136005)(508600001)(316002)(186003)(9686003)(55016003)(38100700002)(38070700005)(26005)(122000001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H+C5zE+OS7akvMvJ5C/cuoK8e+yC3ywbSI+YSeEQJZhdYFwdzQUU3gbQrAkw?=
 =?us-ascii?Q?2NUoSh42wVO6bMs2alg0EgQupby+r88NRk5sHL7uoCaevFYYcduYIFHE6UvX?=
 =?us-ascii?Q?5Rq+8ML256VFoewMTgnOUujPz8vU/Efluq2Wi7DZacVa+/5l42Rubbn1MUE1?=
 =?us-ascii?Q?9P7IfjsSS2XwGHJfIEx2oCIdLMBlDHRS/fCR2dGhxA+ZUovrqiCtdLqMEuf+?=
 =?us-ascii?Q?m94SDBIVuuxzUnrb6owUiHwkvSgwi2hwkVYMxi0obtvcYeylnwqGoJ3gR8kW?=
 =?us-ascii?Q?mnYg1uuXx7W4Dp4Dg/mmmPv9dya9iXbH2f6Q4VcJM7VJkOB/2LHeBCrN2iBZ?=
 =?us-ascii?Q?JpravZpefJfnO+cXeAyCGJlA+cu88EQHdzxs2bvra5nED3GYEFxC8jrvGEiu?=
 =?us-ascii?Q?Vu3H4xZXio57fo/WwG9tNqby1bLaA556a3teplKP208mgZ6erqKXHBTnjQ9o?=
 =?us-ascii?Q?BWC4GZdC+T4/KiSjLAKtqTIzNlBAaEzQZ1MnMtG4pxc1d9PGAx0Tne0sOK8f?=
 =?us-ascii?Q?pkv5Tfiw6DK7vavA7cLxH6gcQYQ1KAEGM/bIXsq5j3w/AZj3u8h/bL2/f8gL?=
 =?us-ascii?Q?Kh9DDMnBtB44Zi10A7StvTEcwcEufBNuUJD1ngFVOmGD70L5dKbHhMSKXCd8?=
 =?us-ascii?Q?nZAY8eode6qvV6ZgI6c7fFokcIhnSV3aGCXVT3WrYboTL8A2Ge6sC6Pw63ro?=
 =?us-ascii?Q?p65eevy/DWBIAGnCv7QSK909EEy8UgINKOgNljzhbK+p68sOygAj6Fx94TzK?=
 =?us-ascii?Q?PMh08szjzLOrWLV80duIQtL4BJGHGJTli73RIADqNo4RuEUH6A02arlJWPEX?=
 =?us-ascii?Q?EOn9ojWfeUVQuE3viSDL72jCbfKV8Ywk5BgeEmu48OgGKBlUEuep6Wh/mHHO?=
 =?us-ascii?Q?/CDUw+tqjGNap8K18j+uq16FTIwrTSk5i0s2CLZvuek+QbZuwQyt+xmqODgf?=
 =?us-ascii?Q?AWNqG9JKGs0xpgOtC7dBIY00pfCc78LEDdSiDj2O1jQ34N1s/VY1aiyi5vMv?=
 =?us-ascii?Q?WDmMxeoMMNsY/csiVwUSc1hwP36A9QeK7/lhhGnjW1eEWhHCZjeJkJMS/RtJ?=
 =?us-ascii?Q?+uAP8mNs+OViBmNs8xtb17yZa3XF7bia8TQg9CVFDGlEO93CUSzpv21Ca1Su?=
 =?us-ascii?Q?y4fclFAs+8OyKaU7QIFNg0TiV8r1LvBz383g3efWBA+lrxZqxpoHUGg41GYe?=
 =?us-ascii?Q?GMiI8MyaSfa1RXi7SNNpOPYWHSZF9jL1/QdLXZTLU1z4PXUWXP2e8I1ksv6J?=
 =?us-ascii?Q?YJnvkpkvxguE5jP9zdaYrICqZDwUbA56B+6sIv+EjAW4qqfowoEnmI8bBXE1?=
 =?us-ascii?Q?FGJYeuexnZiQLAMwomPEKxpxetYHRX/GrjYWxfwBJuKsa6gBZJ929s+BY7qX?=
 =?us-ascii?Q?t2oLyBlKOBE0EtP9BXl7n5fAs8bzR6CXY2IQeG/CgERyd5wIDIqwldWj1id1?=
 =?us-ascii?Q?SZP7f08WxqWw0dFPRYNVjtcfxp+Y2v+gBxCwBGON0FTN1Wut0zcGTTcN7k5a?=
 =?us-ascii?Q?a2RcctUZyQDbNnuuuiUm0E5pyRp4ppBKemw9hvq9YFvrKKupcPtyz1NS0TUn?=
 =?us-ascii?Q?MPkfwdfuE1i1jp1ZcO4MuC90n5HGiSJD8P3tieYiJ8CjYKXDyq5pCB2f1XNp?=
 =?us-ascii?Q?Wg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3374.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69f8e6bc-d43f-47b6-cc3e-08d9b968f67f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 10:04:31.1464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vo/GAmP0zmsp0O1nyYluw7KegFXY0d2u2rvUl8hvm6tdBGOyvGPSGmfO6Sc90XKQRoIhZOQ0LpxwHlvo90vD2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3119
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix problems with DSCP
 QoS implementation
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Dave
> Ertman
> Sent: Wednesday, October 13, 2021 2:01 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix problems with DSCP QoS
> implementation
> 
> The patch that implemented DSCP QoS implementation removed a bandwidth
> check that was used to check for a specific condition caused by some corner
> cases.  This check should not of been removed.
> 
> The same patch also added a check for when the DCBx state could be changed
> in relation to DSCP, but the check was erroneously added nested in a check for
> CEE mode, which made the check useless.
> 
> Fix these problems by re-adding the bandwidth check and relocating the DSCP
> mode check earlier in the function that changes DCBx state in the driver.
> 
> Fixes: 2a87bd73e5 ("ice: Add DSCP support")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
